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
; shader hash: b40de9916dfbf284cdd695fa42e3a051
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
;                                   texture    byte         r/o     T21     t10,space1     1
;                                   texture    byte         r/o     T22      t1,space1     1
;                                   texture     f32          1d     T23     t32,space2     1
;                                   texture     f32     2darray     T24      t8,space2     1
;                                   texture     f32          2d     T25      t1,space2     1
;                                   texture     f32          2d     T26      t2,space2     1
;                                   texture     f32          2d     T27      t3,space2     1
;                                   texture     f32          2d     T28      t4,space2     1
;                                   textureunorm_f32     2darray     T29     t80,space2     1
;                                   texture    byte         r/o     T30     t67,space1     1
;                                   texture     f32          2d     T31      t7,space2     1
;                                   texture     f32          2d     T32      t6,space2     1
;                                   texture     f32          2d     T33      t5,space2     1
;                                   texture     f32          2d     T34     t38,space2     1
;                                   texture    byte         r/o     T35     t12,space1     1
;                                   texture    byte         r/o     T36     t13,space1     1
;                                   texture     f32          1d     T37     t30,space2     1
;                                   texture     f32          3d     T38     t44,space2     1
;                                   texture     f32          3d     T39     t45,space2     1
;                                   texture     f32     2darray     T40     t47,space2     1
;                                   textureunorm_f32     2darray     T41     t85,space2     1
;                                   texture     f32          2d     T42     t83,space2     1
;                                   texture     f32          2d     T43     t86,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x i32], align 4
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = alloca [12 x float], align 4
  %100 = alloca [12 x float], align 4
  %101 = alloca [3 x float], align 4
  %102 = alloca [3 x float], align 4
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = fmul fast float %106, %95
  %108 = fmul fast float %106, %96
  %109 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %110 = bitcast float %109 to i32
  %111 = ashr i32 %110, 1
  %112 = sub nsw i32 1597250115, %111
  %113 = bitcast i32 %112 to float
  %114 = fmul fast float %113, %86
  %115 = fmul fast float %113, %87
  %116 = fmul fast float %113, %88
  %117 = fmul fast float %87, %84
  %118 = fmul fast float %88, %83
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %88, %82
  %121 = fmul fast float %86, %84
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %86, %83
  %124 = fmul fast float %87, %82
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %119, %85
  %127 = fmul fast float %122, %85
  %128 = fmul fast float %125, %85
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = fcmp fast une float %130, 0.000000e+00
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %135 = fmul fast float %107, 2.000000e+00
  %136 = fmul fast float %135, %133
  %137 = fmul fast float %108, 2.000000e+00
  %138 = fmul fast float %137, %134
  %139 = fsub fast float 1.000000e+00, %136
  %140 = fsub fast float 1.000000e+00, %138
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = select i1 %131, float %142, float %146
  %150 = select i1 %131, float %143, float %147
  %151 = select i1 %131, float %144, float %148
  %152 = fmul fast float %149, %139
  %153 = fmul fast float %150, %139
  %154 = fmul fast float %151, %139
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = select i1 %131, float %156, float %160
  %164 = select i1 %131, float %157, float %161
  %165 = select i1 %131, float %158, float %162
  %166 = fmul fast float %163, %140
  %167 = fmul fast float %164, %140
  %168 = fmul fast float %165, %140
  %169 = fadd fast float %166, %152
  %170 = fadd fast float %167, %153
  %171 = fadd fast float %168, %154
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = select i1 %131, float %173, float %177
  %181 = select i1 %131, float %174, float %178
  %182 = select i1 %131, float %175, float %179
  %183 = fadd fast float %169, %180
  %184 = fadd fast float %170, %181
  %185 = fadd fast float %171, %182
  %186 = fmul fast float %183, %98
  %187 = fmul fast float %184, %98
  %188 = fmul fast float %185, %98
  %189 = shl i32 %52, 5
  %190 = add i32 %189, 4194304
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = extractvalue %dx.types.ResRet.i32 %191, 1
  %194 = extractvalue %dx.types.ResRet.i32 %191, 2
  %195 = extractvalue %dx.types.ResRet.i32 %191, 3
  %196 = fmul fast float %107, 5.000000e-01
  %197 = fmul fast float %108, 5.000000e-01
  %198 = fptosi float %196 to i32
  %199 = fptosi float %197 to i32
  %200 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %198, i32 %199, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = lshr i32 %201, 18
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F4C00EBA0000000
  %205 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %206 = fadd fast float %205, -1.000000e+00
  %207 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %208 = extractvalue %dx.types.Dimensions %207, 0
  %209 = sitofp i32 %208 to float
  %210 = extractvalue %dx.types.Dimensions %207, 1
  %211 = sitofp i32 %210 to float
  %212 = fcmp fast oge float %196, %209
  %213 = fcmp fast oge float %197, %211
  %214 = or i1 %212, %213
  %215 = select i1 %214, float 0x4197782600000000, float %206
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %219 = fmul fast float %217, %107
  %220 = fmul fast float %218, %108
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = and i32 %222, 114688
  %224 = icmp ne i32 %223, 0
  %225 = select i1 %224, float %219, float 0.000000e+00
  %226 = select i1 %224, float %220, float 0.000000e+00
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %46, float %225, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fmul fast float %228, 2.550000e+02
  %230 = fptoui float %229 to i32
  %231 = select i1 %224, i32 %230, i32 0
  %232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.i32 %232, 3
  %234 = and i32 %233, 3
  %235 = icmp ne i32 %234, 0
  %236 = and i32 %233, 4
  %237 = icmp ne i32 %236, 0
  %238 = and i1 %235, %237
  br i1 %238, label %239, label %248

; <label>:239                                     ; preds = %0
  %240 = fmul fast float %134, %108
  %241 = fmul fast float %133, %107
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %241, float %240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fsub fast float 1.000000e+00, %243
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fcmp fast olt float %244, %246
  br label %251

; <label>:248                                     ; preds = %0
  %249 = icmp eq i32 %236, 0
  %250 = and i1 %235, %249
  br label %251

; <label>:251                                     ; preds = %248, %239
  %252 = phi i1 [ %247, %239 ], [ %250, %248 ]
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fmul fast float %254, 0x3FE3C6EF40000000
  %256 = frem fast float %107, 2.560000e+02
  %257 = frem fast float %108, 2.560000e+02
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %258, i32 %259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fadd fast float %261, %255
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = add i32 %51, 156
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %276 = add i32 %51, 216
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %290 = add i32 %51, 36
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %51, 288
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %301, 0x3F50624DE0000000
  %305 = fmul fast float %303, 0x3F50624DE0000000
  %306 = mul i32 %53, 100
  %307 = add i32 %306, 28
  %308 = add i32 %306, 40
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %51, 172
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %51, 232
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %51, 52
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %51, 304
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %362 = and i32 %310, 1
  %363 = icmp ne i32 %362, 0
  %364 = select i1 %363, float %355, float %316
  %365 = select i1 %363, float %358, float %319
  %366 = select i1 %363, float %361, float %322
  %367 = add i32 %306, 44
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = fmul fast float %369, %364
  %371 = fmul fast float %369, %365
  %372 = fmul fast float %369, %366
  %373 = add i32 %306, 48
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = shl i32 %375, 4
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %375, 7
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %375, 22
  %383 = shl nuw nsw i32 %382, 5
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = and i32 %310, 8
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %386, float %378, float %328
  %388 = select i1 %386, float %381, float %332
  %389 = select i1 %386, float %384, float %336
  %390 = add i32 %306, 52
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = and i32 %310, 2
  %398 = icmp ne i32 %397, 0
  %399 = select i1 %398, float %394, float %341
  %400 = select i1 %398, float %396, float %343
  %401 = add i32 %306, 56
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = and i32 %310, 4
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %405, float %348
  %411 = fmul float %410, 0x3F50624DE0000000
  %412 = select i1 %409, float %407, float %350
  %413 = fmul float %412, 0x3F50624DE0000000
  %414 = add i32 %306, 60
  %415 = add i32 %306, 32
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = add i32 %51, 188
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = shl i32 %420, 4
  %422 = and i32 %421, 32752
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %420, 7
  %425 = and i32 %424, 32752
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = lshr i32 %420, 22
  %428 = shl nuw nsw i32 %427, 5
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = add i32 %51, 248
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 255
  %434 = uitofp i32 %433 to float
  %435 = fmul fast float %434, 0x3F70101020000000
  %436 = lshr i32 %432, 8
  %437 = and i32 %436, 255
  %438 = uitofp i32 %437 to float
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = lshr i32 %432, 16
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %442, 0x3F70101020000000
  %444 = add i32 %51, 68
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %446, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = add i32 %51, 320
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 65535
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %453, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = shl i32 %459, 4
  %461 = and i32 %460, 32752
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %459, 7
  %464 = and i32 %463, 32752
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %459, 22
  %467 = shl nuw nsw i32 %466, 5
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = and i32 %417, 1
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %462, float %423
  %472 = select i1 %470, float %465, float %426
  %473 = select i1 %470, float %468, float %429
  %474 = add i32 %306, 64
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = fmul fast float %476, %471
  %478 = fmul fast float %476, %472
  %479 = fmul fast float %476, %473
  %480 = add i32 %306, 68
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = shl i32 %482, 4
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %482, 7
  %487 = and i32 %486, 32752
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %482, 22
  %490 = shl nuw nsw i32 %489, 5
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = and i32 %417, 8
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %485, float %435
  %495 = select i1 %493, float %488, float %439
  %496 = select i1 %493, float %491, float %443
  %497 = add i32 %306, 72
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 65535
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %499, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = and i32 %417, 2
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %501, float %448
  %507 = select i1 %505, float %503, float %450
  %508 = add i32 %306, 76
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 65535
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %510, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = and i32 %417, 4
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %512, float %455
  %518 = fmul float %517, 0x3F50624DE0000000
  %519 = select i1 %516, float %514, float %457
  %520 = fmul float %519, 0x3F50624DE0000000
  %521 = add i32 %306, 80
  %522 = add i32 %306, 36
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = add i32 %51, 204
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = shl i32 %527, 4
  %529 = and i32 %528, 32752
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %527, 7
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %527, 22
  %535 = shl nuw nsw i32 %534, 5
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = add i32 %51, 264
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 255
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101020000000
  %543 = lshr i32 %539, 8
  %544 = and i32 %543, 255
  %545 = uitofp i32 %544 to float
  %546 = fmul fast float %545, 0x3F70101020000000
  %547 = lshr i32 %539, 16
  %548 = and i32 %547, 255
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %549, 0x3F70101020000000
  %551 = add i32 %51, 84
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %51, 336
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %560, 16
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = shl i32 %566, 4
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %566, 7
  %571 = and i32 %570, 32752
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %566, 22
  %574 = shl nuw nsw i32 %573, 5
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = and i32 %524, 1
  %577 = icmp ne i32 %576, 0
  %578 = select i1 %577, float %569, float %530
  %579 = select i1 %577, float %572, float %533
  %580 = select i1 %577, float %575, float %536
  %581 = add i32 %306, 84
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = fmul fast float %583, %578
  %585 = fmul fast float %583, %579
  %586 = fmul fast float %583, %580
  %587 = add i32 %306, 88
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = shl i32 %589, 4
  %591 = and i32 %590, 32752
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %589, 7
  %594 = and i32 %593, 32752
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %589, 22
  %597 = shl nuw nsw i32 %596, 5
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = and i32 %524, 8
  %600 = icmp ne i32 %599, 0
  %601 = select i1 %600, float %592, float %542
  %602 = select i1 %600, float %595, float %546
  %603 = select i1 %600, float %598, float %550
  %604 = add i32 %306, 92
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %606, 16
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = and i32 %524, 2
  %612 = icmp ne i32 %611, 0
  %613 = select i1 %612, float %608, float %555
  %614 = select i1 %612, float %610, float %557
  %615 = add i32 %306, 96
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = and i32 %617, 65535
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %617, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %524, 4
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %623, float %619, float %562
  %625 = fmul float %624, 0x3F50624DE0000000
  %626 = select i1 %623, float %621, float %564
  %627 = fmul float %626, 0x3F50624DE0000000
  %628 = add i32 %51, 348
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 32
  %632 = icmp eq i32 %631, 0
  %633 = and i32 %630, 64
  %634 = icmp eq i32 %633, 0
  %635 = and i32 %630, 128
  %636 = icmp eq i32 %635, 0
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 2
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %656, label %641

; <label>:641                                     ; preds = %251
  %642 = add i32 %51, 508
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %646, %dx.types.Handle %104, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = fmul fast float %651, %91
  %653 = fmul fast float %648, %92
  %654 = fmul fast float %649, %93
  %655 = fmul fast float %650, %94
  br label %656

; <label>:656                                     ; preds = %641, %251
  %657 = phi float [ %94, %251 ], [ %655, %641 ]
  %658 = phi float [ %93, %251 ], [ %654, %641 ]
  %659 = phi float [ %92, %251 ], [ %653, %641 ]
  %660 = phi float [ %91, %251 ], [ %652, %641 ]
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 2
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %684, label %665

; <label>:665                                     ; preds = %656
  %666 = add i32 %51, 44
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 1
  %670 = icmp ne i32 %669, 0
  %671 = select i1 %670, float %659, float 1.000000e+00
  %672 = add i32 %51, 60
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 1
  %676 = icmp ne i32 %675, 0
  %677 = select i1 %676, float %658, float 1.000000e+00
  %678 = add i32 %51, 76
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 1
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %682, float %657, float 1.000000e+00
  br label %684

; <label>:684                                     ; preds = %665, %656
  %685 = phi float [ %657, %656 ], [ %683, %665 ]
  %686 = phi float [ %658, %656 ], [ %677, %665 ]
  %687 = phi float [ %659, %656 ], [ %671, %665 ]
  %688 = lshr i32 %662, 20
  %689 = and i32 %688, 3
  %690 = add nuw nsw i32 %689, 1
  %691 = add i32 %51, 24
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %51, 28
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = or i32 %696, %693
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %1326, label %699

; <label>:699                                     ; preds = %684
  %700 = and i32 %693, 262144
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %701, float %57, float 1.000000e+00
  %703 = select i1 %701, float %58, float 0.000000e+00
  %704 = select i1 %701, float %59, float 0.000000e+00
  %705 = select i1 %701, float %60, float 1.000000e+00
  %706 = select i1 %701, float %61, float %89
  %707 = select i1 %701, float %62, float %90
  %708 = add i32 %51, 284
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = lshr i32 %710, 16
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = fmul fast float %712, 0x3F50624DE0000000
  %714 = add i32 %51, 88
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = lshr i32 %716, 16
  %718 = and i32 %717, 255
  %719 = lshr i32 %716, 24
  %720 = add i32 %51, 292
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %722, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = add i32 %51, 32
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 22
  %731 = shl nuw nsw i32 %730, 5
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = shl i32 %729, 4
  %734 = and i32 %733, 32752
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = lshr i32 %729, 7
  %737 = and i32 %736, 32752
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %741 = fmul fast float %740, 1.000000e+03
  %742 = fmul fast float %304, %741
  %743 = call float @dx.op.unary.f32(i32 22, float %742)  ; Frc(value)
  %744 = fadd fast float %743, %294
  %745 = fmul fast float %305, %741
  %746 = call float @dx.op.unary.f32(i32 22, float %745)  ; Frc(value)
  %747 = fadd fast float %746, %296
  %748 = fmul fast float %713, %741
  %749 = call float @dx.op.unary.f32(i32 22, float %748)  ; Frc(value)
  %750 = fmul fast float %749, 0x401921FB60000000
  %751 = fadd fast float %750, %732
  %752 = call float @dx.op.unary.f32(i32 13, float %751)  ; Sin(value)
  %753 = call float @dx.op.unary.f32(i32 12, float %751)  ; Cos(value)
  %754 = fsub fast float -0.000000e+00, %752
  %755 = fadd fast float %706, -5.000000e-01
  %756 = fadd fast float %707, -5.000000e-01
  %757 = fmul fast float %724, %755
  %758 = fmul fast float %726, %756
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fmul fast float %735, %759
  %762 = fmul fast float %738, %760
  %763 = fmul fast float %753, %761
  %764 = call float @dx.op.tertiary.f32(i32 46, float %754, float %762, float %763)  ; FMad(a,b,c)
  %765 = fmul fast float %752, %761
  %766 = call float @dx.op.tertiary.f32(i32 46, float %753, float %762, float %765)  ; FMad(a,b,c)
  %767 = fadd fast float %744, %764
  %768 = fadd fast float %747, %766
  %769 = icmp ugt i32 %718, 1
  %770 = icmp ugt i32 %716, 33554431
  %771 = or i1 %770, %769
  br i1 %771, label %772, label %797

; <label>:772                                     ; preds = %699
  %773 = add i32 %51, 228
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = lshr i32 %775, 16
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = fmul fast float %740, %777
  %779 = call float @dx.op.unary.f32(i32 22, float %778)  ; Frc(value)
  %780 = mul nuw nsw i32 %718, %719
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %779, %781
  %783 = call float @dx.op.unary.f32(i32 27, float %782)  ; Round_ni(value)
  %784 = fptoui float %783 to i32
  %785 = urem i32 %784, %718
  %786 = udiv i32 %784, %719
  %787 = call float @dx.op.unary.f32(i32 22, float %767)  ; Frc(value)
  %788 = call float @dx.op.unary.f32(i32 22, float %768)  ; Frc(value)
  %789 = uitofp i32 %785 to float
  %790 = uitofp i32 %786 to float
  %791 = fadd fast float %787, %789
  %792 = fadd fast float %788, %790
  %793 = uitofp i32 %718 to float
  %794 = uitofp i32 %719 to float
  %795 = fdiv fast float %791, %793
  %796 = fdiv fast float %792, %794
  br label %797

; <label>:797                                     ; preds = %772, %699
  %798 = phi float [ %795, %772 ], [ %767, %699 ]
  %799 = phi float [ %796, %772 ], [ %768, %699 ]
  %800 = and i32 %693, 256
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %848, label %802

; <label>:802                                     ; preds = %797
  %803 = add i32 %51, 440
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = add i32 %805, 0
  %807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %806, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %808 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %807, %dx.types.Handle %104, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = add i32 %51, 100
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = shl i32 %812, 4
  %814 = and i32 %813, 32752
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %812, 7
  %817 = and i32 %816, 32752
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = fsub fast float 1.000000e+00, %660
  %820 = call float @dx.op.binary.f32(i32 35, float %819, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %821 = bitcast float %660 to i32
  %822 = sitofp i32 %821 to float
  %823 = fadd fast float %822, 0xC1CFBF8940000000
  %824 = fmul fast float %818, %823
  %825 = fadd fast float %824, 0x41CFBF8940000000
  %826 = fptosi float %825 to i32
  %827 = bitcast i32 %826 to float
  %828 = bitcast float %820 to i32
  %829 = sitofp i32 %828 to float
  %830 = fadd fast float %829, 0xC1CFBF8940000000
  %831 = fmul fast float %830, %818
  %832 = fadd fast float %831, 0x41CFBF8940000000
  %833 = fptosi float %832 to i32
  %834 = bitcast i32 %833 to float
  %835 = fmul fast float %827, %815
  %836 = fmul fast float %834, %815
  %837 = fsub fast float %820, %835
  %838 = fadd fast float %836, %820
  %839 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %840 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %841 = fsub fast float %809, %839
  %842 = fsub fast float %840, %839
  %843 = bitcast float %842 to i32
  %844 = sub nsw i32 2129859010, %843
  %845 = bitcast i32 %844 to float
  %846 = fmul fast float %845, %841
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br label %848

; <label>:848                                     ; preds = %802, %797
  %849 = phi float [ %847, %802 ], [ %660, %797 ]
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 128
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %870, label %854

; <label>:854                                     ; preds = %848
  %855 = add i32 %51, 424
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = add i32 %857, 0
  %859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %858, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %860 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %859, %dx.types.Handle %104, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 524288
  %865 = icmp ne i32 %864, 0
  %866 = fcmp fast ogt float %861, 0x3FE0101020000000
  %867 = select i1 %866, float 1.000000e+00, float 0.000000e+00
  %868 = select i1 %865, float %867, float %861
  %869 = fmul fast float %868, %849
  br label %870

; <label>:870                                     ; preds = %854, %848
  %871 = phi float [ %869, %854 ], [ %849, %848 ]
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 16
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %1074, label %876

; <label>:876                                     ; preds = %870
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = add i32 %51, 376
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = add i32 %881, 0
  %883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %882, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %883, %dx.types.Handle %103, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = extractvalue %dx.types.ResRet.f32 %884, 3
  %889 = and i32 %878, 255
  %890 = uitofp i32 %889 to float
  %891 = lshr i32 %878, 8
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %888, %890
  %895 = fadd fast float %894, %893
  %896 = fmul fast float %895, 0x3F70101000000000
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = and i32 %898, 512
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %909, label %901

; <label>:901                                     ; preds = %876
  %902 = add i32 %51, 460
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %904, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %104, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  br label %909

; <label>:909                                     ; preds = %901, %876
  %910 = phi float [ %908, %901 ], [ 1.000000e+00, %876 ]
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 33554432
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %1021, label %915

; <label>:915                                     ; preds = %909
  %916 = add i32 %51, 224
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 65535
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = lshr i32 %918, 16
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = add i32 %51, 228
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 65535
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 24
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, 0x3F70101020000000
  %933 = and i32 %929, 255
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %934, 0x3F70101020000000
  %936 = lshr i32 %929, 8
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F70101020000000
  %940 = lshr i32 %929, 16
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = add i32 %51, 220
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = lshr i32 %946, 24
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3F70101020000000
  %950 = and i32 %946, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = lshr i32 %946, 8
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = lshr i32 %946, 16
  %958 = and i32 %957, 255
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = bitcast float %885 to i32
  %962 = ashr i32 %961, 1
  %963 = sub nsw i32 1597463174, %962
  %964 = bitcast i32 %963 to float
  %965 = fmul fast float %885, 5.000000e-01
  %966 = fmul fast float %964, %964
  %967 = fmul fast float %966, %965
  %968 = fsub fast float 1.500000e+00, %967
  %969 = fmul fast float %964, %885
  %970 = fmul fast float %969, %968
  %971 = bitcast float %886 to i32
  %972 = ashr i32 %971, 1
  %973 = sub nsw i32 1597463174, %972
  %974 = bitcast i32 %973 to float
  %975 = fmul fast float %886, 5.000000e-01
  %976 = fmul fast float %974, %974
  %977 = fmul fast float %976, %975
  %978 = fsub fast float 1.500000e+00, %977
  %979 = fmul fast float %974, %886
  %980 = fmul fast float %979, %978
  %981 = bitcast float %887 to i32
  %982 = ashr i32 %981, 1
  %983 = sub nsw i32 1597463174, %982
  %984 = bitcast i32 %983 to float
  %985 = fmul fast float %887, 5.000000e-01
  %986 = fmul fast float %984, %984
  %987 = fmul fast float %986, %985
  %988 = fsub fast float 1.500000e+00, %987
  %989 = fmul fast float %984, %887
  %990 = fmul fast float %989, %988
  %991 = fsub fast float %970, %952
  %992 = fsub fast float %980, %956
  %993 = fsub fast float %990, %960
  %994 = fmul fast float %991, %920
  %995 = fmul fast float %992, %922
  %996 = fmul fast float %993, %927
  %997 = fadd fast float %994, %935
  %998 = fadd fast float %995, %939
  %999 = fadd fast float %996, %943
  %1000 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %1001 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1002 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1003 = fmul fast float %1000, %1000
  %1004 = fmul fast float %1001, %1001
  %1005 = fmul fast float %1002, %1002
  %1006 = fsub fast float %1003, %885
  %1007 = fsub fast float %1004, %886
  %1008 = fsub fast float %1005, %887
  %1009 = fmul fast float %1006, %910
  %1010 = fmul fast float %1007, %910
  %1011 = fmul fast float %1008, %910
  %1012 = fadd fast float %1009, %885
  %1013 = fadd fast float %1010, %886
  %1014 = fadd fast float %1011, %887
  %1015 = fadd fast float %932, %896
  %1016 = fsub fast float %1015, %949
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1018 = fsub fast float %1017, %896
  %1019 = fmul fast float %1018, %910
  %1020 = fadd fast float %1019, %896
  br label %1074

; <label>:1021                                    ; preds = %909
  %1022 = and i32 %912, 134217728
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1058, label %1024

; <label>:1024                                    ; preds = %1021
  %1025 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %1026 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %1027 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1028 = fadd fast float %1025, -5.000000e-01
  %1029 = fadd fast float %1026, -5.000000e-01
  %1030 = fadd fast float %1027, -5.000000e-01
  %1031 = fmul fast float %1028, %910
  %1032 = fmul fast float %1029, %910
  %1033 = fmul fast float %1030, %910
  %1034 = fadd fast float %1031, 5.000000e-01
  %1035 = fadd fast float %1032, 5.000000e-01
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = call float @dx.op.unary.f32(i32 24, float %885)  ; Sqrt(value)
  %1038 = call float @dx.op.unary.f32(i32 24, float %886)  ; Sqrt(value)
  %1039 = call float @dx.op.unary.f32(i32 24, float %887)  ; Sqrt(value)
  %1040 = fmul fast float %1034, 2.000000e+00
  %1041 = fsub fast float 1.000000e+00, %1040
  %1042 = fmul fast float %1041, %1037
  %1043 = fadd fast float %1042, %1040
  %1044 = fmul fast float %1043, %1037
  %1045 = fmul fast float %1035, 2.000000e+00
  %1046 = fsub fast float 1.000000e+00, %1045
  %1047 = fmul fast float %1046, %1038
  %1048 = fadd fast float %1047, %1045
  %1049 = fmul fast float %1048, %1038
  %1050 = fmul fast float %1036, 2.000000e+00
  %1051 = fsub fast float 1.000000e+00, %1050
  %1052 = fmul fast float %1051, %1039
  %1053 = fadd fast float %1052, %1050
  %1054 = fmul fast float %1053, %1039
  %1055 = fmul fast float %1044, %1044
  %1056 = fmul fast float %1049, %1049
  %1057 = fmul fast float %1054, %1054
  br label %1074

; <label>:1058                                    ; preds = %1021
  %1059 = fmul fast float %281, %281
  %1060 = fmul fast float %285, %285
  %1061 = fmul fast float %289, %289
  %1062 = fadd fast float %1059, -1.000000e+00
  %1063 = fadd fast float %1060, -1.000000e+00
  %1064 = fadd fast float %1061, -1.000000e+00
  %1065 = fmul fast float %910, %1062
  %1066 = fmul fast float %910, %1063
  %1067 = fmul fast float %910, %1064
  %1068 = fadd fast float %1065, 1.000000e+00
  %1069 = fadd fast float %1066, 1.000000e+00
  %1070 = fadd fast float %1067, 1.000000e+00
  %1071 = fmul fast float %1068, %885
  %1072 = fmul fast float %1069, %886
  %1073 = fmul fast float %1070, %887
  br label %1074

; <label>:1074                                    ; preds = %1058, %1024, %915, %870
  %1075 = phi float [ %1020, %915 ], [ %896, %1024 ], [ %896, %1058 ], [ 0x3FA23C0BE0000000, %870 ]
  %1076 = phi float [ %1012, %915 ], [ %1055, %1024 ], [ %1071, %1058 ], [ 1.000000e+00, %870 ]
  %1077 = phi float [ %1013, %915 ], [ %1056, %1024 ], [ %1072, %1058 ], [ 1.000000e+00, %870 ]
  %1078 = phi float [ %1014, %915 ], [ %1057, %1024 ], [ %1073, %1058 ], [ 1.000000e+00, %870 ]
  %1079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.i32 %1079, 1
  %1081 = and i32 %1080, 1
  %1082 = icmp ne i32 %1081, 0
  %1083 = add i32 %51, 356
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 32
  %1087 = icmp ne i32 %1086, 0
  %1088 = and i1 %1082, %1087
  %1089 = select i1 %1088, float 1.000000e+00, float %1076
  %1090 = select i1 %1088, float 0x3FD3333340000000, float %1077
  %1091 = select i1 %1088, float 0x3FD3333340000000, float %1078
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 32
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1168, label %1096

; <label>:1096                                    ; preds = %1074
  %1097 = add i32 %51, 92
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %51, 392
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %103, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = and i32 %1099, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1099, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = lshr i32 %1099, 16
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101000000000
  %1119 = fmul fast float %1106, %1111
  %1120 = fadd fast float %1119, %1114
  %1121 = fmul fast float %1120, 0x3F70101000000000
  %1122 = fadd fast float %1107, -5.000000e-01
  %1123 = fadd fast float %1109, -5.000000e-01
  %1124 = fmul fast float %1122, %1118
  %1125 = fmul fast float %1123, %1118
  %1126 = fadd fast float %1124, 5.000000e-01
  %1127 = fadd fast float %1125, 5.000000e-01
  %1128 = fmul fast float %1126, 2.000000e+00
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = fmul fast float %1127, 2.000000e+00
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = fadd fast float %1129, %1131
  %1133 = fmul fast float %1132, 5.000000e-01
  %1134 = fsub fast float %1129, %1131
  %1135 = fmul fast float %1134, 5.000000e-01
  %1136 = call float @dx.op.unary.f32(i32 6, float %1133)  ; FAbs(value)
  %1137 = fsub fast float 1.000000e+00, %1136
  %1138 = call float @dx.op.unary.f32(i32 6, float %1135)  ; FAbs(value)
  %1139 = fsub fast float %1137, %1138
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1135, float %1139, float %1133, float %1135, float %1139)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = call float @dx.op.unary.f32(i32 25, float %1140)  ; Rsqrt(value)
  %1142 = fmul fast float %1133, %1141
  %1143 = fmul fast float %1135, %1141
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 67108864
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1164, label %1148

; <label>:1148                                    ; preds = %1096
  %1149 = add i32 %51, 280
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 65535
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 65535
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = lshr i32 %1151, 16
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fsub fast float %1121, %1159
  %1161 = fmul fast float %1160, %1153
  %1162 = fadd fast float %1161, %1157
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  br label %1164

; <label>:1164                                    ; preds = %1148, %1096
  %1165 = phi float [ %1163, %1148 ], [ %1121, %1096 ]
  %1166 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float %702, float %703)  ; Dot2(ax,ay,bx,by)
  %1167 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float %704, float %705)  ; Dot2(ax,ay,bx,by)
  br label %1168

; <label>:1168                                    ; preds = %1164, %1074
  %1169 = phi float [ %1165, %1164 ], [ 0x3FD6666660000000, %1074 ]
  %1170 = phi float [ %1166, %1164 ], [ 0.000000e+00, %1074 ]
  %1171 = phi float [ %1167, %1164 ], [ 0.000000e+00, %1074 ]
  %1172 = phi float [ %1108, %1164 ], [ 1.000000e+00, %1074 ]
  %1173 = add i32 %51, 160
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = lshr i32 %1175, 22
  %1177 = shl nuw nsw i32 %1176, 5
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 64
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1216, label %1183

; <label>:1183                                    ; preds = %1168
  %1184 = add i32 %51, 408
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %1186, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 131072
  %1192 = icmp eq i32 %1191, 0
  %1193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1188, %dx.types.Handle %103, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = fmul fast float %1194, %269
  %1198 = fmul fast float %1195, %272
  %1199 = fmul fast float %1196, %275
  br i1 %1192, label %1206, label %1200

; <label>:1200                                    ; preds = %1183
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = fmul fast float %1202, %1197
  %1204 = fmul fast float %1202, %1198
  %1205 = fmul fast float %1202, %1199
  br label %1206

; <label>:1206                                    ; preds = %1200, %1183
  %1207 = phi float [ %1203, %1200 ], [ %1197, %1183 ]
  %1208 = phi float [ %1204, %1200 ], [ %1198, %1183 ]
  %1209 = phi float [ %1205, %1200 ], [ %1199, %1183 ]
  %1210 = fmul fast float %1207, %1178
  %1211 = select i1 %252, float %1210, float %1207
  %1212 = call float @dx.op.dot3.f32(i32 55, float %1211, float %1208, float %1209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = select i1 %252, float 0.000000e+00, float %1207
  %1214 = select i1 %252, float %1212, float %1208
  %1215 = select i1 %252, float 0.000000e+00, float %1209
  br label %1216

; <label>:1216                                    ; preds = %1206, %1168
  %1217 = phi float [ %1213, %1206 ], [ 0.000000e+00, %1168 ]
  %1218 = phi float [ %1214, %1206 ], [ 0.000000e+00, %1168 ]
  %1219 = phi float [ %1215, %1206 ], [ 0.000000e+00, %1168 ]
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 1024
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1254, label %1224

; <label>:1224                                    ; preds = %1216
  %1225 = add i32 %51, 152
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = lshr i32 %1227, 8
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = lshr i32 %1227, 16
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = fmul fast float %1230, %1230
  %1240 = fmul fast float %1234, %1234
  %1241 = fmul fast float %1238, %1238
  %1242 = add i32 %51, 476
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %1244, 0
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1246, %dx.types.Handle %104, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = fmul fast float %1239, %1248
  %1252 = fmul fast float %1240, %1249
  %1253 = fmul fast float %1241, %1250
  br label %1254

; <label>:1254                                    ; preds = %1224, %1216
  %1255 = phi float [ %1251, %1224 ], [ 0.000000e+00, %1216 ]
  %1256 = phi float [ %1252, %1224 ], [ 0.000000e+00, %1216 ]
  %1257 = phi float [ %1253, %1224 ], [ 0.000000e+00, %1216 ]
  %1258 = fcmp fast ogt float %1255, 0.000000e+00
  %1259 = fcmp fast ogt float %1256, 0.000000e+00
  %1260 = fcmp fast ogt float %1257, 0.000000e+00
  %1261 = call float @dx.op.unary.f32(i32 23, float %1255)  ; Log(value)
  %1262 = call float @dx.op.unary.f32(i32 23, float %1256)  ; Log(value)
  %1263 = call float @dx.op.unary.f32(i32 23, float %1257)  ; Log(value)
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = lshr i32 %1265, 7
  %1267 = and i32 %1266, 32752
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = fmul fast float %1261, 0xBFE62E4300000000
  %1270 = fmul fast float %1269, %1268
  %1271 = fmul fast float %1262, 0xBFE62E4300000000
  %1272 = fmul fast float %1271, %1268
  %1273 = fmul fast float %1263, 0xBFE62E4300000000
  %1274 = fmul fast float %1273, %1268
  %1275 = select i1 %1258, float %1270, float 1.270000e+02
  %1276 = select i1 %1259, float %1272, float 1.270000e+02
  %1277 = select i1 %1260, float %1274, float 1.270000e+02
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 10240
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1326, label %1282

; <label>:1282                                    ; preds = %1254
  %1283 = add i32 %51, 492
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = add i32 %1285, 0
  %1287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1287, %dx.types.Handle %104, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 1
  %1290 = extractvalue %dx.types.ResRet.f32 %1288, 3
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 1048576
  %1294 = icmp ne i32 %1293, 0
  %1295 = and i32 %1292, 8192
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1312, label %1297

; <label>:1297                                    ; preds = %1282
  %1298 = extractvalue %dx.types.ResRet.f32 %1288, 2
  %1299 = select i1 %1294, float %1298, float %1289
  %1300 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1301 = select i1 %1294, float %1300, float %1289
  %1302 = add i32 %51, 96
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = lshr i32 %1304, 16
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F80101020000000
  %1309 = fmul fast float %1308, %1301
  %1310 = fmul fast float %1308, %1289
  %1311 = fmul fast float %1308, %1299
  br label %1312

; <label>:1312                                    ; preds = %1297, %1282
  %1313 = phi float [ %1309, %1297 ], [ 0.000000e+00, %1282 ]
  %1314 = phi float [ %1310, %1297 ], [ 0.000000e+00, %1282 ]
  %1315 = phi float [ %1311, %1297 ], [ 0.000000e+00, %1282 ]
  %1316 = and i32 %1292, 2048
  %1317 = icmp eq i32 %1316, 0
  br i1 %1317, label %1326, label %1318

; <label>:1318                                    ; preds = %1312
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = shl i32 %1320, 4
  %1322 = and i32 %1321, 32752
  %1323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1322)  ; LegacyF16ToF32(value)
  %1324 = fmul fast float %1323, %1290
  %1325 = call float @dx.op.binary.f32(i32 35, float %1324, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1326

; <label>:1326                                    ; preds = %1318, %1312, %1254, %684
  %1327 = phi float [ 0.000000e+00, %684 ], [ %1170, %1312 ], [ %1170, %1254 ], [ %1170, %1318 ]
  %1328 = phi float [ 0.000000e+00, %684 ], [ %1171, %1312 ], [ %1171, %1254 ], [ %1171, %1318 ]
  %1329 = phi float [ 0.000000e+00, %684 ], [ %1089, %1312 ], [ %1089, %1254 ], [ %1089, %1318 ]
  %1330 = phi float [ 0.000000e+00, %684 ], [ %1090, %1312 ], [ %1090, %1254 ], [ %1090, %1318 ]
  %1331 = phi float [ 0.000000e+00, %684 ], [ %1091, %1312 ], [ %1091, %1254 ], [ %1091, %1318 ]
  %1332 = phi float [ 0.000000e+00, %684 ], [ %1217, %1312 ], [ %1217, %1254 ], [ %1217, %1318 ]
  %1333 = phi float [ 0.000000e+00, %684 ], [ %1218, %1312 ], [ %1218, %1254 ], [ %1218, %1318 ]
  %1334 = phi float [ 0.000000e+00, %684 ], [ %1219, %1312 ], [ %1219, %1254 ], [ %1219, %1318 ]
  %1335 = phi float [ 0.000000e+00, %684 ], [ %1313, %1312 ], [ 0.000000e+00, %1254 ], [ %1313, %1318 ]
  %1336 = phi float [ 0.000000e+00, %684 ], [ %1314, %1312 ], [ 0.000000e+00, %1254 ], [ %1314, %1318 ]
  %1337 = phi float [ 0.000000e+00, %684 ], [ %1315, %1312 ], [ 0.000000e+00, %1254 ], [ %1315, %1318 ]
  %1338 = phi float [ 0.000000e+00, %684 ], [ %1275, %1312 ], [ %1275, %1254 ], [ %1275, %1318 ]
  %1339 = phi float [ 0.000000e+00, %684 ], [ %1276, %1312 ], [ %1276, %1254 ], [ %1276, %1318 ]
  %1340 = phi float [ 0.000000e+00, %684 ], [ %1277, %1312 ], [ %1277, %1254 ], [ %1277, %1318 ]
  %1341 = phi float [ 0.000000e+00, %684 ], [ %1075, %1312 ], [ %1075, %1254 ], [ %1075, %1318 ]
  %1342 = phi float [ 0.000000e+00, %684 ], [ %871, %1312 ], [ %871, %1254 ], [ %871, %1318 ]
  %1343 = phi float [ 0.000000e+00, %684 ], [ %1169, %1312 ], [ %1169, %1254 ], [ %1169, %1318 ]
  %1344 = phi float [ 0.000000e+00, %684 ], [ %1172, %1312 ], [ %1172, %1254 ], [ %1172, %1318 ]
  %1345 = phi float [ 0.000000e+00, %684 ], [ 0x3F70101020000000, %1312 ], [ 0x3F70101020000000, %1254 ], [ %1325, %1318 ]
  br i1 %632, label %2251, label %1346

; <label>:1346                                    ; preds = %1326
  %1347 = icmp ult i32 %690, 2
  %1348 = add i32 %51, 40
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = add i32 %51, 44
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1351, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = or i32 %1353, %1350
  %1355 = icmp eq i32 %1354, 0
  br i1 %1355, label %2251, label %1356

; <label>:1356                                    ; preds = %1346
  %1357 = and i32 %1350, 262144
  %1358 = icmp ne i32 %1357, 0
  %1359 = select i1 %1358, float %57, float 1.000000e+00
  %1360 = select i1 %1358, float %58, float 0.000000e+00
  %1361 = select i1 %1358, float %59, float 0.000000e+00
  %1362 = select i1 %1358, float %60, float 1.000000e+00
  %1363 = select i1 %1358, float %61, float %89
  %1364 = select i1 %1358, float %62, float %90
  %1365 = add i32 %51, 300
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = lshr i32 %1367, 16
  %1369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1368)  ; LegacyF16ToF32(value)
  %1370 = fmul fast float %1369, 0x3F50624DE0000000
  %1371 = add i32 %51, 104
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = lshr i32 %1373, 16
  %1375 = and i32 %1374, 255
  %1376 = lshr i32 %1373, 24
  %1377 = add i32 %51, 308
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %1379, 65535
  %1381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1380)  ; LegacyF16ToF32(value)
  %1382 = lshr i32 %1379, 16
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = add i32 %51, 48
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = lshr i32 %1386, 22
  %1388 = shl nuw nsw i32 %1387, 5
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = shl i32 %1386, 4
  %1391 = and i32 %1390, 32752
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1386, 7
  %1394 = and i32 %1393, 32752
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 3
  %1398 = fmul fast float %1397, 1.000000e+03
  %1399 = fmul fast float %1398, %411
  %1400 = call float @dx.op.unary.f32(i32 22, float %1399)  ; Frc(value)
  %1401 = fadd fast float %1400, %399
  %1402 = fmul fast float %1398, %413
  %1403 = call float @dx.op.unary.f32(i32 22, float %1402)  ; Frc(value)
  %1404 = fadd fast float %1403, %400
  %1405 = fmul fast float %1370, %1398
  %1406 = call float @dx.op.unary.f32(i32 22, float %1405)  ; Frc(value)
  %1407 = fmul fast float %1406, 0x401921FB60000000
  %1408 = fadd fast float %1407, %1389
  %1409 = call float @dx.op.unary.f32(i32 13, float %1408)  ; Sin(value)
  %1410 = call float @dx.op.unary.f32(i32 12, float %1408)  ; Cos(value)
  %1411 = fsub fast float -0.000000e+00, %1409
  %1412 = fadd fast float %1363, -5.000000e-01
  %1413 = fadd fast float %1364, -5.000000e-01
  %1414 = fmul fast float %1381, %1412
  %1415 = fmul fast float %1383, %1413
  %1416 = fadd fast float %1414, 5.000000e-01
  %1417 = fadd fast float %1415, 5.000000e-01
  %1418 = fmul fast float %1392, %1416
  %1419 = fmul fast float %1395, %1417
  %1420 = fmul fast float %1410, %1418
  %1421 = call float @dx.op.tertiary.f32(i32 46, float %1411, float %1419, float %1420)  ; FMad(a,b,c)
  %1422 = fmul fast float %1409, %1418
  %1423 = call float @dx.op.tertiary.f32(i32 46, float %1410, float %1419, float %1422)  ; FMad(a,b,c)
  %1424 = fadd fast float %1401, %1421
  %1425 = fadd fast float %1404, %1423
  %1426 = icmp ugt i32 %1375, 1
  %1427 = icmp ugt i32 %1373, 33554431
  %1428 = or i1 %1427, %1426
  br i1 %1428, label %1429, label %1454

; <label>:1429                                    ; preds = %1356
  %1430 = add i32 %51, 244
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = lshr i32 %1432, 16
  %1434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1433)  ; LegacyF16ToF32(value)
  %1435 = fmul fast float %1397, %1434
  %1436 = call float @dx.op.unary.f32(i32 22, float %1435)  ; Frc(value)
  %1437 = mul nuw nsw i32 %1375, %1376
  %1438 = uitofp i32 %1437 to float
  %1439 = fmul fast float %1436, %1438
  %1440 = call float @dx.op.unary.f32(i32 27, float %1439)  ; Round_ni(value)
  %1441 = fptoui float %1440 to i32
  %1442 = urem i32 %1441, %1375
  %1443 = udiv i32 %1441, %1376
  %1444 = call float @dx.op.unary.f32(i32 22, float %1424)  ; Frc(value)
  %1445 = call float @dx.op.unary.f32(i32 22, float %1425)  ; Frc(value)
  %1446 = uitofp i32 %1442 to float
  %1447 = uitofp i32 %1443 to float
  %1448 = fadd fast float %1444, %1446
  %1449 = fadd fast float %1445, %1447
  %1450 = uitofp i32 %1375 to float
  %1451 = uitofp i32 %1376 to float
  %1452 = fdiv fast float %1448, %1450
  %1453 = fdiv fast float %1449, %1451
  br label %1454

; <label>:1454                                    ; preds = %1429, %1356
  %1455 = phi float [ %1452, %1429 ], [ %1424, %1356 ]
  %1456 = phi float [ %1453, %1429 ], [ %1425, %1356 ]
  %1457 = and i32 %1350, 256
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1505, label %1459

; <label>:1459                                    ; preds = %1454
  %1460 = add i32 %51, 444
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %1462, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1464, %dx.types.Handle %104, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  %1467 = add i32 %51, 116
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = shl i32 %1469, 4
  %1471 = and i32 %1470, 32752
  %1472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1471)  ; LegacyF16ToF32(value)
  %1473 = lshr i32 %1469, 7
  %1474 = and i32 %1473, 32752
  %1475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1474)  ; LegacyF16ToF32(value)
  %1476 = fsub fast float 1.000000e+00, %687
  %1477 = call float @dx.op.binary.f32(i32 35, float %1476, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1478 = bitcast float %687 to i32
  %1479 = sitofp i32 %1478 to float
  %1480 = fadd fast float %1479, 0xC1CFBF8940000000
  %1481 = fmul fast float %1475, %1480
  %1482 = fadd fast float %1481, 0x41CFBF8940000000
  %1483 = fptosi float %1482 to i32
  %1484 = bitcast i32 %1483 to float
  %1485 = bitcast float %1477 to i32
  %1486 = sitofp i32 %1485 to float
  %1487 = fadd fast float %1486, 0xC1CFBF8940000000
  %1488 = fmul fast float %1487, %1475
  %1489 = fadd fast float %1488, 0x41CFBF8940000000
  %1490 = fptosi float %1489 to i32
  %1491 = bitcast i32 %1490 to float
  %1492 = fmul fast float %1484, %1472
  %1493 = fmul fast float %1491, %1472
  %1494 = fsub fast float %1477, %1492
  %1495 = fadd fast float %1493, %1477
  %1496 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1497 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1498 = fsub fast float %1466, %1496
  %1499 = fsub fast float %1497, %1496
  %1500 = bitcast float %1499 to i32
  %1501 = sub nsw i32 2129859010, %1500
  %1502 = bitcast i32 %1501 to float
  %1503 = fmul fast float %1502, %1498
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  br label %1505

; <label>:1505                                    ; preds = %1459, %1454
  %1506 = phi float [ %1504, %1459 ], [ %687, %1454 ]
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 128
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1527, label %1511

; <label>:1511                                    ; preds = %1505
  %1512 = add i32 %51, 428
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = add i32 %1514, 0
  %1516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1516, %dx.types.Handle %104, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 0
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 524288
  %1522 = icmp ne i32 %1521, 0
  %1523 = fcmp fast ogt float %1518, 0x3FE0101020000000
  %1524 = select i1 %1523, float 1.000000e+00, float 0.000000e+00
  %1525 = select i1 %1522, float %1524, float %1518
  %1526 = fmul fast float %1525, %1506
  br label %1527

; <label>:1527                                    ; preds = %1511, %1505
  %1528 = phi float [ %1526, %1511 ], [ %1506, %1505 ]
  %1529 = fcmp fast ult float %1528, 0x3F70101020000000
  br i1 %1529, label %2251, label %1530

; <label>:1530                                    ; preds = %1527
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 16
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1733, label %1535

; <label>:1535                                    ; preds = %1530
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %51, 380
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = add i32 %1540, 0
  %1542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1542, %dx.types.Handle %103, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.f32 %1543, 1
  %1546 = extractvalue %dx.types.ResRet.f32 %1543, 2
  %1547 = extractvalue %dx.types.ResRet.f32 %1543, 3
  %1548 = and i32 %1537, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = lshr i32 %1537, 8
  %1551 = and i32 %1550, 255
  %1552 = uitofp i32 %1551 to float
  %1553 = fmul fast float %1547, %1549
  %1554 = fadd fast float %1553, %1552
  %1555 = fmul fast float %1554, 0x3F70101000000000
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 512
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1568, label %1560

; <label>:1560                                    ; preds = %1535
  %1561 = add i32 %51, 464
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1563, 0
  %1565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1565, %dx.types.Handle %104, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  br label %1568

; <label>:1568                                    ; preds = %1560, %1535
  %1569 = phi float [ %1567, %1560 ], [ 1.000000e+00, %1535 ]
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 33554432
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1680, label %1574

; <label>:1574                                    ; preds = %1568
  %1575 = add i32 %51, 240
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 65535
  %1579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1578)  ; LegacyF16ToF32(value)
  %1580 = lshr i32 %1577, 16
  %1581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1580)  ; LegacyF16ToF32(value)
  %1582 = add i32 %51, 244
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 65535
  %1586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1585)  ; LegacyF16ToF32(value)
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = lshr i32 %1588, 24
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = and i32 %1588, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = fmul fast float %1593, 0x3F70101020000000
  %1595 = lshr i32 %1588, 8
  %1596 = and i32 %1595, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = fmul fast float %1597, 0x3F70101020000000
  %1599 = lshr i32 %1588, 16
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = add i32 %51, 236
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 24
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = and i32 %1605, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = fmul fast float %1610, 0x3F70101020000000
  %1612 = lshr i32 %1605, 8
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = lshr i32 %1605, 16
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = bitcast float %1544 to i32
  %1621 = ashr i32 %1620, 1
  %1622 = sub nsw i32 1597463174, %1621
  %1623 = bitcast i32 %1622 to float
  %1624 = fmul fast float %1544, 5.000000e-01
  %1625 = fmul fast float %1623, %1623
  %1626 = fmul fast float %1625, %1624
  %1627 = fsub fast float 1.500000e+00, %1626
  %1628 = fmul fast float %1623, %1544
  %1629 = fmul fast float %1628, %1627
  %1630 = bitcast float %1545 to i32
  %1631 = ashr i32 %1630, 1
  %1632 = sub nsw i32 1597463174, %1631
  %1633 = bitcast i32 %1632 to float
  %1634 = fmul fast float %1545, 5.000000e-01
  %1635 = fmul fast float %1633, %1633
  %1636 = fmul fast float %1635, %1634
  %1637 = fsub fast float 1.500000e+00, %1636
  %1638 = fmul fast float %1633, %1545
  %1639 = fmul fast float %1638, %1637
  %1640 = bitcast float %1546 to i32
  %1641 = ashr i32 %1640, 1
  %1642 = sub nsw i32 1597463174, %1641
  %1643 = bitcast i32 %1642 to float
  %1644 = fmul fast float %1546, 5.000000e-01
  %1645 = fmul fast float %1643, %1643
  %1646 = fmul fast float %1645, %1644
  %1647 = fsub fast float 1.500000e+00, %1646
  %1648 = fmul fast float %1643, %1546
  %1649 = fmul fast float %1648, %1647
  %1650 = fsub fast float %1629, %1611
  %1651 = fsub fast float %1639, %1615
  %1652 = fsub fast float %1649, %1619
  %1653 = fmul fast float %1650, %1579
  %1654 = fmul fast float %1651, %1581
  %1655 = fmul fast float %1652, %1586
  %1656 = fadd fast float %1653, %1594
  %1657 = fadd fast float %1654, %1598
  %1658 = fadd fast float %1655, %1602
  %1659 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1660 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1661 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1662 = fmul fast float %1659, %1659
  %1663 = fmul fast float %1660, %1660
  %1664 = fmul fast float %1661, %1661
  %1665 = fsub fast float %1662, %1544
  %1666 = fsub fast float %1663, %1545
  %1667 = fsub fast float %1664, %1546
  %1668 = fmul fast float %1665, %1569
  %1669 = fmul fast float %1666, %1569
  %1670 = fmul fast float %1667, %1569
  %1671 = fadd fast float %1668, %1544
  %1672 = fadd fast float %1669, %1545
  %1673 = fadd fast float %1670, %1546
  %1674 = fadd fast float %1591, %1555
  %1675 = fsub fast float %1674, %1608
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = fsub fast float %1676, %1555
  %1678 = fmul fast float %1677, %1569
  %1679 = fadd fast float %1678, %1555
  br label %1733

; <label>:1680                                    ; preds = %1568
  %1681 = and i32 %1571, 134217728
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1717, label %1683

; <label>:1683                                    ; preds = %1680
  %1684 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %1685 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %1686 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %1687 = fadd fast float %1684, -5.000000e-01
  %1688 = fadd fast float %1685, -5.000000e-01
  %1689 = fadd fast float %1686, -5.000000e-01
  %1690 = fmul fast float %1687, %1569
  %1691 = fmul fast float %1688, %1569
  %1692 = fmul fast float %1689, %1569
  %1693 = fadd fast float %1690, 5.000000e-01
  %1694 = fadd fast float %1691, 5.000000e-01
  %1695 = fadd fast float %1692, 5.000000e-01
  %1696 = call float @dx.op.unary.f32(i32 24, float %1544)  ; Sqrt(value)
  %1697 = call float @dx.op.unary.f32(i32 24, float %1545)  ; Sqrt(value)
  %1698 = call float @dx.op.unary.f32(i32 24, float %1546)  ; Sqrt(value)
  %1699 = fmul fast float %1693, 2.000000e+00
  %1700 = fsub fast float 1.000000e+00, %1699
  %1701 = fmul fast float %1700, %1696
  %1702 = fadd fast float %1701, %1699
  %1703 = fmul fast float %1702, %1696
  %1704 = fmul fast float %1694, 2.000000e+00
  %1705 = fsub fast float 1.000000e+00, %1704
  %1706 = fmul fast float %1705, %1697
  %1707 = fadd fast float %1706, %1704
  %1708 = fmul fast float %1707, %1697
  %1709 = fmul fast float %1695, 2.000000e+00
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = fmul fast float %1710, %1698
  %1712 = fadd fast float %1711, %1709
  %1713 = fmul fast float %1712, %1698
  %1714 = fmul fast float %1703, %1703
  %1715 = fmul fast float %1708, %1708
  %1716 = fmul fast float %1713, %1713
  br label %1733

; <label>:1717                                    ; preds = %1680
  %1718 = fmul fast float %387, %387
  %1719 = fmul fast float %388, %388
  %1720 = fmul fast float %389, %389
  %1721 = fadd fast float %1718, -1.000000e+00
  %1722 = fadd fast float %1719, -1.000000e+00
  %1723 = fadd fast float %1720, -1.000000e+00
  %1724 = fmul fast float %1569, %1721
  %1725 = fmul fast float %1569, %1722
  %1726 = fmul fast float %1569, %1723
  %1727 = fadd fast float %1724, 1.000000e+00
  %1728 = fadd fast float %1725, 1.000000e+00
  %1729 = fadd fast float %1726, 1.000000e+00
  %1730 = fmul fast float %1727, %1544
  %1731 = fmul fast float %1728, %1545
  %1732 = fmul fast float %1729, %1546
  br label %1733

; <label>:1733                                    ; preds = %1717, %1683, %1574, %1530
  %1734 = phi float [ %1679, %1574 ], [ %1555, %1683 ], [ %1555, %1717 ], [ 0x3FA23C0BE0000000, %1530 ]
  %1735 = phi float [ %1671, %1574 ], [ %1714, %1683 ], [ %1730, %1717 ], [ 1.000000e+00, %1530 ]
  %1736 = phi float [ %1672, %1574 ], [ %1715, %1683 ], [ %1731, %1717 ], [ 1.000000e+00, %1530 ]
  %1737 = phi float [ %1673, %1574 ], [ %1716, %1683 ], [ %1732, %1717 ], [ 1.000000e+00, %1530 ]
  %1738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1739 = extractvalue %dx.types.CBufRet.i32 %1738, 1
  %1740 = and i32 %1739, 1
  %1741 = icmp ne i32 %1740, 0
  %1742 = add i32 %51, 356
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 32
  %1746 = icmp ne i32 %1745, 0
  %1747 = and i1 %1741, %1746
  %1748 = select i1 %1747, float 1.000000e+00, float %1735
  %1749 = select i1 %1747, float 0x3FD3333340000000, float %1736
  %1750 = select i1 %1747, float 0x3FD3333340000000, float %1737
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 32
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1827, label %1755

; <label>:1755                                    ; preds = %1733
  %1756 = add i32 %51, 108
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = add i32 %51, 396
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = add i32 %1761, 0
  %1763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1763, %dx.types.Handle %103, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.ResRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.ResRet.f32 %1764, 2
  %1768 = extractvalue %dx.types.ResRet.f32 %1764, 3
  %1769 = and i32 %1758, 255
  %1770 = uitofp i32 %1769 to float
  %1771 = lshr i32 %1758, 8
  %1772 = and i32 %1771, 255
  %1773 = uitofp i32 %1772 to float
  %1774 = lshr i32 %1758, 16
  %1775 = and i32 %1774, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = fmul fast float %1776, 0x3F70101000000000
  %1778 = fmul fast float %1765, %1770
  %1779 = fadd fast float %1778, %1773
  %1780 = fmul fast float %1779, 0x3F70101000000000
  %1781 = fadd fast float %1766, -5.000000e-01
  %1782 = fadd fast float %1768, -5.000000e-01
  %1783 = fmul fast float %1781, %1777
  %1784 = fmul fast float %1782, %1777
  %1785 = fadd fast float %1783, 5.000000e-01
  %1786 = fadd fast float %1784, 5.000000e-01
  %1787 = fmul fast float %1785, 2.000000e+00
  %1788 = fadd fast float %1787, -1.000000e+00
  %1789 = fmul fast float %1786, 2.000000e+00
  %1790 = fadd fast float %1789, -1.000000e+00
  %1791 = fadd fast float %1788, %1790
  %1792 = fmul fast float %1791, 5.000000e-01
  %1793 = fsub fast float %1788, %1790
  %1794 = fmul fast float %1793, 5.000000e-01
  %1795 = call float @dx.op.unary.f32(i32 6, float %1792)  ; FAbs(value)
  %1796 = fsub fast float 1.000000e+00, %1795
  %1797 = call float @dx.op.unary.f32(i32 6, float %1794)  ; FAbs(value)
  %1798 = fsub fast float %1796, %1797
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1792, float %1794, float %1798, float %1792, float %1794, float %1798)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = call float @dx.op.unary.f32(i32 25, float %1799)  ; Rsqrt(value)
  %1801 = fmul fast float %1792, %1800
  %1802 = fmul fast float %1794, %1800
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 67108864
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1823, label %1807

; <label>:1807                                    ; preds = %1755
  %1808 = add i32 %51, 296
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 65535
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 65535
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = lshr i32 %1810, 16
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = fsub fast float %1780, %1818
  %1820 = fmul fast float %1819, %1812
  %1821 = fadd fast float %1820, %1816
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  br label %1823

; <label>:1823                                    ; preds = %1807, %1755
  %1824 = phi float [ %1822, %1807 ], [ %1780, %1755 ]
  %1825 = call float @dx.op.dot2.f32(i32 54, float %1801, float %1802, float %1359, float %1360)  ; Dot2(ax,ay,bx,by)
  %1826 = call float @dx.op.dot2.f32(i32 54, float %1801, float %1802, float %1361, float %1362)  ; Dot2(ax,ay,bx,by)
  br label %1827

; <label>:1827                                    ; preds = %1823, %1733
  %1828 = phi float [ %1824, %1823 ], [ 0x3FD6666660000000, %1733 ]
  %1829 = phi float [ %1825, %1823 ], [ 0.000000e+00, %1733 ]
  %1830 = phi float [ %1826, %1823 ], [ 0.000000e+00, %1733 ]
  %1831 = phi float [ %1767, %1823 ], [ 1.000000e+00, %1733 ]
  %1832 = add i32 %51, 176
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = lshr i32 %1834, 22
  %1836 = shl nuw nsw i32 %1835, 5
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 64
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %1875, label %1842

; <label>:1842                                    ; preds = %1827
  %1843 = add i32 %51, 412
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = add i32 %1845, 0
  %1847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 131072
  %1851 = icmp eq i32 %1850, 0
  %1852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1847, %dx.types.Handle %103, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1853 = extractvalue %dx.types.ResRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.ResRet.f32 %1852, 1
  %1855 = extractvalue %dx.types.ResRet.f32 %1852, 2
  %1856 = fmul fast float %370, %1853
  %1857 = fmul fast float %371, %1854
  %1858 = fmul fast float %372, %1855
  br i1 %1851, label %1865, label %1859

; <label>:1859                                    ; preds = %1842
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = fmul fast float %1861, %1856
  %1863 = fmul fast float %1861, %1857
  %1864 = fmul fast float %1861, %1858
  br label %1865

; <label>:1865                                    ; preds = %1859, %1842
  %1866 = phi float [ %1862, %1859 ], [ %1856, %1842 ]
  %1867 = phi float [ %1863, %1859 ], [ %1857, %1842 ]
  %1868 = phi float [ %1864, %1859 ], [ %1858, %1842 ]
  %1869 = fmul fast float %1866, %1837
  %1870 = select i1 %252, float %1869, float %1866
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1870, float %1867, float %1868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = select i1 %252, float 0.000000e+00, float %1866
  %1873 = select i1 %252, float %1871, float %1867
  %1874 = select i1 %252, float 0.000000e+00, float %1868
  br label %1875

; <label>:1875                                    ; preds = %1865, %1827
  %1876 = phi float [ %1872, %1865 ], [ 0.000000e+00, %1827 ]
  %1877 = phi float [ %1873, %1865 ], [ 0.000000e+00, %1827 ]
  %1878 = phi float [ %1874, %1865 ], [ 0.000000e+00, %1827 ]
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 1024
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %1913, label %1883

; <label>:1883                                    ; preds = %1875
  %1884 = add i32 %51, 168
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 255
  %1888 = uitofp i32 %1887 to float
  %1889 = fmul fast float %1888, 0x3F70101020000000
  %1890 = lshr i32 %1886, 8
  %1891 = and i32 %1890, 255
  %1892 = uitofp i32 %1891 to float
  %1893 = fmul fast float %1892, 0x3F70101020000000
  %1894 = lshr i32 %1886, 16
  %1895 = and i32 %1894, 255
  %1896 = uitofp i32 %1895 to float
  %1897 = fmul fast float %1896, 0x3F70101020000000
  %1898 = fmul fast float %1889, %1889
  %1899 = fmul fast float %1893, %1893
  %1900 = fmul fast float %1897, %1897
  %1901 = add i32 %51, 480
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = add i32 %1903, 0
  %1905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1905, %dx.types.Handle %104, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = fmul fast float %1898, %1907
  %1911 = fmul fast float %1899, %1908
  %1912 = fmul fast float %1900, %1909
  br label %1913

; <label>:1913                                    ; preds = %1883, %1875
  %1914 = phi float [ %1910, %1883 ], [ 0.000000e+00, %1875 ]
  %1915 = phi float [ %1911, %1883 ], [ 0.000000e+00, %1875 ]
  %1916 = phi float [ %1912, %1883 ], [ 0.000000e+00, %1875 ]
  %1917 = fcmp fast ogt float %1914, 0.000000e+00
  %1918 = fcmp fast ogt float %1915, 0.000000e+00
  %1919 = fcmp fast ogt float %1916, 0.000000e+00
  %1920 = call float @dx.op.unary.f32(i32 23, float %1914)  ; Log(value)
  %1921 = call float @dx.op.unary.f32(i32 23, float %1915)  ; Log(value)
  %1922 = call float @dx.op.unary.f32(i32 23, float %1916)  ; Log(value)
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = lshr i32 %1924, 7
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = fmul fast float %1920, 0xBFE62E4300000000
  %1929 = fmul fast float %1928, %1927
  %1930 = fmul fast float %1921, 0xBFE62E4300000000
  %1931 = fmul fast float %1930, %1927
  %1932 = fmul fast float %1922, 0xBFE62E4300000000
  %1933 = fmul fast float %1932, %1927
  %1934 = select i1 %1917, float %1929, float 1.270000e+02
  %1935 = select i1 %1918, float %1931, float 1.270000e+02
  %1936 = select i1 %1919, float %1933, float 1.270000e+02
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = and i32 %1938, 10240
  %1940 = icmp eq i32 %1939, 0
  br i1 %1940, label %1985, label %1941

; <label>:1941                                    ; preds = %1913
  %1942 = add i32 %51, 496
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = add i32 %1944, 0
  %1946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1946, %dx.types.Handle %104, float %1455, float %1456, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 1
  %1949 = extractvalue %dx.types.ResRet.f32 %1947, 3
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = and i32 %1951, 1048576
  %1953 = icmp ne i32 %1952, 0
  %1954 = and i32 %1951, 8192
  %1955 = icmp eq i32 %1954, 0
  br i1 %1955, label %1971, label %1956

; <label>:1956                                    ; preds = %1941
  %1957 = extractvalue %dx.types.ResRet.f32 %1947, 2
  %1958 = select i1 %1953, float %1957, float %1948
  %1959 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1960 = select i1 %1953, float %1959, float %1948
  %1961 = add i32 %51, 112
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = lshr i32 %1963, 16
  %1965 = and i32 %1964, 255
  %1966 = uitofp i32 %1965 to float
  %1967 = fmul fast float %1966, 0x3F80101020000000
  %1968 = fmul fast float %1967, %1960
  %1969 = fmul fast float %1967, %1948
  %1970 = fmul fast float %1967, %1958
  br label %1971

; <label>:1971                                    ; preds = %1956, %1941
  %1972 = phi float [ %1968, %1956 ], [ 0.000000e+00, %1941 ]
  %1973 = phi float [ %1969, %1956 ], [ 0.000000e+00, %1941 ]
  %1974 = phi float [ %1970, %1956 ], [ 0.000000e+00, %1941 ]
  %1975 = and i32 %1951, 2048
  %1976 = icmp eq i32 %1975, 0
  br i1 %1976, label %1985, label %1977

; <label>:1977                                    ; preds = %1971
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = shl i32 %1979, 4
  %1981 = and i32 %1980, 32752
  %1982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1981)  ; LegacyF16ToF32(value)
  %1983 = fmul fast float %1982, %1949
  %1984 = call float @dx.op.binary.f32(i32 35, float %1983, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1985

; <label>:1985                                    ; preds = %1977, %1971, %1913
  %1986 = phi float [ %1972, %1977 ], [ %1972, %1971 ], [ 0.000000e+00, %1913 ]
  %1987 = phi float [ %1973, %1977 ], [ %1973, %1971 ], [ 0.000000e+00, %1913 ]
  %1988 = phi float [ %1974, %1977 ], [ %1974, %1971 ], [ 0.000000e+00, %1913 ]
  %1989 = phi float [ %1984, %1977 ], [ 0x3F70101020000000, %1971 ], [ 0x3F70101020000000, %1913 ]
  br i1 %1347, label %1990, label %2025

; <label>:1990                                    ; preds = %1985
  %1991 = fmul fast float %1989, 2.000000e+00
  %1992 = fcmp fast olt float %1934, 1.270000e+02
  %1993 = fcmp fast olt float %1935, 1.270000e+02
  %1994 = fcmp fast olt float %1936, 1.270000e+02
  %1995 = fmul fast float %1934, 0xBFF7154760000000
  %1996 = fmul fast float %1995, %1991
  %1997 = fmul fast float %1935, 0xBFF7154760000000
  %1998 = fmul fast float %1997, %1991
  %1999 = fmul fast float %1936, 0xBFF7154760000000
  %2000 = fmul fast float %1999, %1991
  %2001 = call float @dx.op.unary.f32(i32 21, float %1996)  ; Exp(value)
  %2002 = call float @dx.op.unary.f32(i32 21, float %1998)  ; Exp(value)
  %2003 = call float @dx.op.unary.f32(i32 21, float %2000)  ; Exp(value)
  %2004 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2005 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2006 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2007 = fadd fast float %2004, -1.000000e+00
  %2008 = select i1 %1992, float %2007, float -1.000000e+00
  %2009 = fadd fast float %2005, -1.000000e+00
  %2010 = select i1 %1993, float %2009, float -1.000000e+00
  %2011 = fadd fast float %2006, -1.000000e+00
  %2012 = select i1 %1994, float %2011, float -1.000000e+00
  %2013 = fmul fast float %2008, %1528
  %2014 = fmul fast float %2010, %1528
  %2015 = fmul fast float %2012, %1528
  %2016 = fadd fast float %2013, 1.000000e+00
  %2017 = fadd fast float %2014, 1.000000e+00
  %2018 = fadd fast float %2015, 1.000000e+00
  %2019 = fmul fast float %2016, %1329
  %2020 = fmul fast float %2017, %1330
  %2021 = fmul fast float %2018, %1331
  %2022 = fmul fast float %2016, %1332
  %2023 = fmul fast float %2017, %1333
  %2024 = fmul fast float %2018, %1334
  br label %2025

; <label>:2025                                    ; preds = %1990, %1985
  %2026 = phi float [ %2019, %1990 ], [ %1329, %1985 ]
  %2027 = phi float [ %2020, %1990 ], [ %1330, %1985 ]
  %2028 = phi float [ %2021, %1990 ], [ %1331, %1985 ]
  %2029 = phi float [ %2022, %1990 ], [ %1332, %1985 ]
  %2030 = phi float [ %2023, %1990 ], [ %1333, %1985 ]
  %2031 = phi float [ %2024, %1990 ], [ %1334, %1985 ]
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = and i32 %2033, 3
  %2035 = icmp eq i32 %2034, 3
  br i1 %2035, label %2111, label %2036

; <label>:2036                                    ; preds = %2025
  %2037 = and i32 %2033, 16
  %2038 = icmp ne i32 %2037, 0
  %2039 = select i1 %2038, float %1528, float 0.000000e+00
  %2040 = icmp eq i32 %2034, 0
  br i1 %2040, label %2041, label %2066

; <label>:2041                                    ; preds = %2036
  %2042 = and i32 %2033, 64
  %2043 = icmp ne i32 %2042, 0
  %2044 = select i1 %2043, float %1528, float 0.000000e+00
  %2045 = fsub fast float %1748, %2026
  %2046 = fsub fast float %1749, %2027
  %2047 = fsub fast float %1750, %2028
  %2048 = fmul fast float %2039, %2045
  %2049 = fmul fast float %2039, %2046
  %2050 = fmul fast float %2039, %2047
  %2051 = fadd fast float %2048, %2026
  %2052 = fadd fast float %2049, %2027
  %2053 = fadd fast float %2050, %2028
  %2054 = fsub fast float %1734, %1341
  %2055 = fmul fast float %2039, %2054
  %2056 = fadd fast float %2055, %1341
  %2057 = fsub fast float %1876, %2029
  %2058 = fsub fast float %1877, %2030
  %2059 = fsub fast float %1878, %2031
  %2060 = fmul fast float %2044, %2057
  %2061 = fmul fast float %2044, %2058
  %2062 = fmul fast float %2044, %2059
  %2063 = fadd fast float %2060, %2029
  %2064 = fadd fast float %2061, %2030
  %2065 = fadd fast float %2062, %2031
  br label %2111

; <label>:2066                                    ; preds = %2036
  %2067 = icmp eq i32 %2034, 1
  br i1 %2067, label %2068, label %2081

; <label>:2068                                    ; preds = %2066
  %2069 = fadd fast float %1748, -1.000000e+00
  %2070 = fadd fast float %1749, -1.000000e+00
  %2071 = fadd fast float %1750, -1.000000e+00
  %2072 = fmul fast float %2039, %2069
  %2073 = fmul fast float %2039, %2070
  %2074 = fmul fast float %2039, %2071
  %2075 = fadd fast float %2072, 1.000000e+00
  %2076 = fadd fast float %2073, 1.000000e+00
  %2077 = fadd fast float %2074, 1.000000e+00
  %2078 = fmul fast float %2075, %2026
  %2079 = fmul fast float %2076, %2027
  %2080 = fmul fast float %2077, %2028
  br label %2111

; <label>:2081                                    ; preds = %2066
  %2082 = icmp eq i32 %2034, 2
  br i1 %2082, label %2083, label %2111

; <label>:2083                                    ; preds = %2081
  %2084 = call float @dx.op.unary.f32(i32 24, float %1748)  ; Sqrt(value)
  %2085 = call float @dx.op.unary.f32(i32 24, float %1749)  ; Sqrt(value)
  %2086 = call float @dx.op.unary.f32(i32 24, float %1750)  ; Sqrt(value)
  %2087 = fadd fast float %2084, -5.000000e-01
  %2088 = fadd fast float %2085, -5.000000e-01
  %2089 = fadd fast float %2086, -5.000000e-01
  %2090 = fmul fast float %2087, %2039
  %2091 = fmul fast float %2088, %2039
  %2092 = fmul fast float %2089, %2039
  %2093 = fadd fast float %2090, 5.000000e-01
  %2094 = fadd fast float %2091, 5.000000e-01
  %2095 = fadd fast float %2092, 5.000000e-01
  %2096 = fmul fast float %2093, 2.000000e+00
  %2097 = fsub fast float 1.000000e+00, %2096
  %2098 = fmul fast float %2097, %2026
  %2099 = fadd fast float %2098, %2096
  %2100 = fmul fast float %2099, %2026
  %2101 = fmul fast float %2094, 2.000000e+00
  %2102 = fsub fast float 1.000000e+00, %2101
  %2103 = fmul fast float %2102, %2027
  %2104 = fadd fast float %2103, %2101
  %2105 = fmul fast float %2104, %2027
  %2106 = fmul fast float %2095, 2.000000e+00
  %2107 = fsub fast float 1.000000e+00, %2106
  %2108 = fmul fast float %2107, %2028
  %2109 = fadd fast float %2108, %2106
  %2110 = fmul fast float %2109, %2028
  br label %2111

; <label>:2111                                    ; preds = %2083, %2081, %2068, %2041, %2025
  %2112 = phi float [ %2026, %2025 ], [ %2100, %2083 ], [ %2026, %2081 ], [ %2078, %2068 ], [ %2051, %2041 ]
  %2113 = phi float [ %2027, %2025 ], [ %2105, %2083 ], [ %2027, %2081 ], [ %2079, %2068 ], [ %2052, %2041 ]
  %2114 = phi float [ %2028, %2025 ], [ %2110, %2083 ], [ %2028, %2081 ], [ %2080, %2068 ], [ %2053, %2041 ]
  %2115 = phi float [ %2029, %2025 ], [ %2029, %2083 ], [ %2029, %2081 ], [ %2029, %2068 ], [ %2063, %2041 ]
  %2116 = phi float [ %2030, %2025 ], [ %2030, %2083 ], [ %2030, %2081 ], [ %2030, %2068 ], [ %2064, %2041 ]
  %2117 = phi float [ %2031, %2025 ], [ %2031, %2083 ], [ %2031, %2081 ], [ %2031, %2068 ], [ %2065, %2041 ]
  %2118 = phi float [ %1341, %2025 ], [ %1341, %2083 ], [ %1341, %2081 ], [ %1341, %2068 ], [ %2056, %2041 ]
  %2119 = and i32 %2033, 12
  %2120 = icmp eq i32 %2119, 12
  br i1 %2120, label %2251, label %2121

; <label>:2121                                    ; preds = %2111
  %2122 = and i32 %2033, 2097184
  %2123 = icmp eq i32 %2122, 2097184
  %2124 = select i1 %2123, float %1528, float 0.000000e+00
  %2125 = and i32 %2033, 4194336
  %2126 = icmp eq i32 %2125, 4194336
  %2127 = select i1 %2126, float %1528, float 0.000000e+00
  %2128 = and i32 %2033, 8388640
  %2129 = icmp eq i32 %2128, 8388640
  %2130 = select i1 %2129, float %1528, float 0.000000e+00
  %2131 = and i32 %2033, 1024
  %2132 = icmp ne i32 %2131, 0
  %2133 = select i1 %2132, float %1528, float 0.000000e+00
  %2134 = and i32 %2033, 2048
  %2135 = icmp ne i32 %2134, 0
  %2136 = select i1 %2135, float %1528, float 0.000000e+00
  %2137 = and i32 %2033, 8192
  %2138 = icmp ne i32 %2137, 0
  %2139 = select i1 %2138, float %1528, float 0.000000e+00
  %2140 = icmp eq i32 %2119, 0
  br i1 %2140, label %2141, label %2175

; <label>:2141                                    ; preds = %2121
  %2142 = fsub fast float %1829, %1327
  %2143 = fsub fast float %1830, %1328
  %2144 = fmul fast float %2124, %2142
  %2145 = fmul fast float %2124, %2143
  %2146 = fadd fast float %2144, %1327
  %2147 = fadd fast float %2145, %1328
  %2148 = fsub fast float %1831, %1344
  %2149 = fmul fast float %2127, %2148
  %2150 = fadd fast float %2149, %1344
  %2151 = fsub fast float %1828, %1343
  %2152 = fmul fast float %2130, %2151
  %2153 = fadd fast float %2152, %1343
  %2154 = fsub fast float %1934, %1338
  %2155 = fsub fast float %1935, %1339
  %2156 = fsub fast float %1936, %1340
  %2157 = fmul fast float %2133, %2154
  %2158 = fmul fast float %2133, %2155
  %2159 = fmul fast float %2133, %2156
  %2160 = fadd fast float %2157, %1338
  %2161 = fadd fast float %2158, %1339
  %2162 = fadd fast float %2159, %1340
  %2163 = fsub fast float %1989, %1345
  %2164 = fmul fast float %2136, %2163
  %2165 = fadd fast float %2164, %1345
  %2166 = fsub fast float %1986, %1335
  %2167 = fsub fast float %1987, %1336
  %2168 = fsub fast float %1988, %1337
  %2169 = fmul fast float %2139, %2166
  %2170 = fmul fast float %2139, %2167
  %2171 = fmul fast float %2139, %2168
  %2172 = fadd fast float %2169, %1335
  %2173 = fadd fast float %2170, %1336
  %2174 = fadd fast float %2171, %1337
  br label %2251

; <label>:2175                                    ; preds = %2121
  %2176 = icmp eq i32 %2119, 4
  br i1 %2176, label %2177, label %2223

; <label>:2177                                    ; preds = %2175
  %2178 = fmul fast float %2124, %1829
  %2179 = fmul fast float %2124, %1830
  %2180 = fadd fast float %2178, %1327
  %2181 = fadd fast float %2179, %1328
  %2182 = call float @dx.op.binary.f32(i32 36, float %1344, float %1831)  ; FMin(a,b)
  %2183 = fsub fast float %2182, %1344
  %2184 = fmul fast float %2183, %2127
  %2185 = fadd fast float %2184, %1344
  %2186 = fadd fast float %1828, %1343
  %2187 = fmul fast float %2186, 0x3FF337FAE0000000
  %2188 = fmul fast float %1343, %1343
  %2189 = fmul fast float %1828, %1828
  %2190 = fadd fast float %2189, %2188
  %2191 = fmul fast float %2190, 0x3FE5152B00000000
  %2192 = fmul fast float %1343, 0xBFCC1F85E0000000
  %2193 = fmul fast float %2192, %1828
  %2194 = fadd fast float %2193, 0xBFE1363700000000
  %2195 = fadd fast float %2194, %2187
  %2196 = fsub fast float %2195, %2191
  %2197 = fmul fast float %2186, 0x3FBA6F0D00000000
  %2198 = fmul fast float %2190, 0x3FD0432880000000
  %2199 = fmul fast float %1343, 0xBFEF110800000000
  %2200 = fmul fast float %2199, %1828
  %2201 = fadd fast float %2200, 1.000000e+00
  %2202 = fsub fast float %2201, %2197
  %2203 = fadd fast float %2202, %2198
  %2204 = fdiv fast float %2196, %2203
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fsub fast float %2205, %1343
  %2207 = fmul fast float %2206, %2130
  %2208 = fadd fast float %2207, %1343
  %2209 = fmul fast float %2133, %1934
  %2210 = fmul fast float %2133, %1935
  %2211 = fmul fast float %2133, %1936
  %2212 = fadd fast float %2209, %1338
  %2213 = fadd fast float %2210, %1339
  %2214 = fadd fast float %2211, %1340
  %2215 = fmul fast float %2136, %1989
  %2216 = fadd fast float %2215, %1345
  %2217 = fmul fast float %2139, %1986
  %2218 = fmul fast float %2139, %1987
  %2219 = fmul fast float %2139, %1988
  %2220 = fadd fast float %2217, %1335
  %2221 = fadd fast float %2218, %1336
  %2222 = fadd fast float %2219, %1337
  br label %2251

; <label>:2223                                    ; preds = %2175
  %2224 = icmp eq i32 %2119, 8
  br i1 %2224, label %2225, label %2251

; <label>:2225                                    ; preds = %2223
  %2226 = fmul fast float %2124, %1829
  %2227 = fmul fast float %2124, %1830
  %2228 = fadd fast float %2226, %1327
  %2229 = fadd fast float %2227, %1328
  %2230 = call float @dx.op.binary.f32(i32 36, float %1344, float %1831)  ; FMin(a,b)
  %2231 = fsub fast float %2230, %1344
  %2232 = fmul fast float %2231, %2127
  %2233 = fadd fast float %2232, %1344
  %2234 = fsub fast float %1828, %1343
  %2235 = fmul fast float %2130, %2234
  %2236 = fadd fast float %2235, %1343
  %2237 = fmul fast float %2133, %1934
  %2238 = fmul fast float %2133, %1935
  %2239 = fmul fast float %2133, %1936
  %2240 = fadd fast float %2237, %1338
  %2241 = fadd fast float %2238, %1339
  %2242 = fadd fast float %2239, %1340
  %2243 = fmul fast float %2136, %1989
  %2244 = fadd fast float %2243, %1345
  %2245 = fmul fast float %2139, %1986
  %2246 = fmul fast float %2139, %1987
  %2247 = fmul fast float %2139, %1988
  %2248 = fadd fast float %2245, %1335
  %2249 = fadd fast float %2246, %1336
  %2250 = fadd fast float %2247, %1337
  br label %2251

; <label>:2251                                    ; preds = %2225, %2223, %2177, %2141, %2111, %1527, %1346, %1326
  %2252 = phi float [ %1327, %2111 ], [ %1327, %1527 ], [ %1327, %1326 ], [ %2228, %2225 ], [ %1327, %2223 ], [ %2180, %2177 ], [ %2146, %2141 ], [ %1327, %1346 ]
  %2253 = phi float [ %1328, %2111 ], [ %1328, %1527 ], [ %1328, %1326 ], [ %2229, %2225 ], [ %1328, %2223 ], [ %2181, %2177 ], [ %2147, %2141 ], [ %1328, %1346 ]
  %2254 = phi float [ %2112, %2111 ], [ %1329, %1527 ], [ %1329, %1326 ], [ %2112, %2225 ], [ %2112, %2223 ], [ %2112, %2177 ], [ %2112, %2141 ], [ %1329, %1346 ]
  %2255 = phi float [ %2113, %2111 ], [ %1330, %1527 ], [ %1330, %1326 ], [ %2113, %2225 ], [ %2113, %2223 ], [ %2113, %2177 ], [ %2113, %2141 ], [ %1330, %1346 ]
  %2256 = phi float [ %2114, %2111 ], [ %1331, %1527 ], [ %1331, %1326 ], [ %2114, %2225 ], [ %2114, %2223 ], [ %2114, %2177 ], [ %2114, %2141 ], [ %1331, %1346 ]
  %2257 = phi float [ %2115, %2111 ], [ %1332, %1527 ], [ %1332, %1326 ], [ %2115, %2225 ], [ %2115, %2223 ], [ %2115, %2177 ], [ %2115, %2141 ], [ %1332, %1346 ]
  %2258 = phi float [ %2116, %2111 ], [ %1333, %1527 ], [ %1333, %1326 ], [ %2116, %2225 ], [ %2116, %2223 ], [ %2116, %2177 ], [ %2116, %2141 ], [ %1333, %1346 ]
  %2259 = phi float [ %2117, %2111 ], [ %1334, %1527 ], [ %1334, %1326 ], [ %2117, %2225 ], [ %2117, %2223 ], [ %2117, %2177 ], [ %2117, %2141 ], [ %1334, %1346 ]
  %2260 = phi float [ %1335, %2111 ], [ %1335, %1527 ], [ %1335, %1326 ], [ %2248, %2225 ], [ %1335, %2223 ], [ %2220, %2177 ], [ %2172, %2141 ], [ %1335, %1346 ]
  %2261 = phi float [ %1336, %2111 ], [ %1336, %1527 ], [ %1336, %1326 ], [ %2249, %2225 ], [ %1336, %2223 ], [ %2221, %2177 ], [ %2173, %2141 ], [ %1336, %1346 ]
  %2262 = phi float [ %1337, %2111 ], [ %1337, %1527 ], [ %1337, %1326 ], [ %2250, %2225 ], [ %1337, %2223 ], [ %2222, %2177 ], [ %2174, %2141 ], [ %1337, %1346 ]
  %2263 = phi float [ %1338, %2111 ], [ %1338, %1527 ], [ %1338, %1326 ], [ %2240, %2225 ], [ %1338, %2223 ], [ %2212, %2177 ], [ %2160, %2141 ], [ %1338, %1346 ]
  %2264 = phi float [ %1339, %2111 ], [ %1339, %1527 ], [ %1339, %1326 ], [ %2241, %2225 ], [ %1339, %2223 ], [ %2213, %2177 ], [ %2161, %2141 ], [ %1339, %1346 ]
  %2265 = phi float [ %1340, %2111 ], [ %1340, %1527 ], [ %1340, %1326 ], [ %2242, %2225 ], [ %1340, %2223 ], [ %2214, %2177 ], [ %2162, %2141 ], [ %1340, %1346 ]
  %2266 = phi float [ %2118, %2111 ], [ %1341, %1527 ], [ %1341, %1326 ], [ %2118, %2225 ], [ %2118, %2223 ], [ %2118, %2177 ], [ %2118, %2141 ], [ %1341, %1346 ]
  %2267 = phi float [ %1343, %2111 ], [ %1343, %1527 ], [ %1343, %1326 ], [ %2236, %2225 ], [ %1343, %2223 ], [ %2208, %2177 ], [ %2153, %2141 ], [ %1343, %1346 ]
  %2268 = phi float [ %1344, %2111 ], [ %1344, %1527 ], [ %1344, %1326 ], [ %2233, %2225 ], [ %1344, %2223 ], [ %2185, %2177 ], [ %2150, %2141 ], [ %1344, %1346 ]
  %2269 = phi float [ %1345, %2111 ], [ %1345, %1527 ], [ %1345, %1326 ], [ %2244, %2225 ], [ %1345, %2223 ], [ %2216, %2177 ], [ %2165, %2141 ], [ %1345, %1346 ]
  br i1 %634, label %3175, label %2270

; <label>:2270                                    ; preds = %2251
  %2271 = icmp ult i32 %690, 3
  %2272 = add i32 %51, 56
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = add i32 %51, 60
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = or i32 %2277, %2274
  %2279 = icmp eq i32 %2278, 0
  br i1 %2279, label %3175, label %2280

; <label>:2280                                    ; preds = %2270
  %2281 = and i32 %2274, 262144
  %2282 = icmp ne i32 %2281, 0
  %2283 = select i1 %2282, float %57, float 1.000000e+00
  %2284 = select i1 %2282, float %58, float 0.000000e+00
  %2285 = select i1 %2282, float %59, float 0.000000e+00
  %2286 = select i1 %2282, float %60, float 1.000000e+00
  %2287 = select i1 %2282, float %61, float %89
  %2288 = select i1 %2282, float %62, float %90
  %2289 = add i32 %51, 316
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = lshr i32 %2291, 16
  %2293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2292)  ; LegacyF16ToF32(value)
  %2294 = fmul fast float %2293, 0x3F50624DE0000000
  %2295 = add i32 %51, 120
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = lshr i32 %2297, 16
  %2299 = and i32 %2298, 255
  %2300 = lshr i32 %2297, 24
  %2301 = add i32 %51, 324
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 65535
  %2305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2304)  ; LegacyF16ToF32(value)
  %2306 = lshr i32 %2303, 16
  %2307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2306)  ; LegacyF16ToF32(value)
  %2308 = add i32 %51, 64
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = lshr i32 %2310, 22
  %2312 = shl nuw nsw i32 %2311, 5
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = shl i32 %2310, 4
  %2315 = and i32 %2314, 32752
  %2316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2315)  ; LegacyF16ToF32(value)
  %2317 = lshr i32 %2310, 7
  %2318 = and i32 %2317, 32752
  %2319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2318)  ; LegacyF16ToF32(value)
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 3
  %2322 = fmul fast float %2321, 1.000000e+03
  %2323 = fmul fast float %2322, %518
  %2324 = call float @dx.op.unary.f32(i32 22, float %2323)  ; Frc(value)
  %2325 = fadd fast float %2324, %506
  %2326 = fmul fast float %2322, %520
  %2327 = call float @dx.op.unary.f32(i32 22, float %2326)  ; Frc(value)
  %2328 = fadd fast float %2327, %507
  %2329 = fmul fast float %2294, %2322
  %2330 = call float @dx.op.unary.f32(i32 22, float %2329)  ; Frc(value)
  %2331 = fmul fast float %2330, 0x401921FB60000000
  %2332 = fadd fast float %2331, %2313
  %2333 = call float @dx.op.unary.f32(i32 13, float %2332)  ; Sin(value)
  %2334 = call float @dx.op.unary.f32(i32 12, float %2332)  ; Cos(value)
  %2335 = fsub fast float -0.000000e+00, %2333
  %2336 = fadd fast float %2287, -5.000000e-01
  %2337 = fadd fast float %2288, -5.000000e-01
  %2338 = fmul fast float %2305, %2336
  %2339 = fmul fast float %2307, %2337
  %2340 = fadd fast float %2338, 5.000000e-01
  %2341 = fadd fast float %2339, 5.000000e-01
  %2342 = fmul fast float %2316, %2340
  %2343 = fmul fast float %2319, %2341
  %2344 = fmul fast float %2334, %2342
  %2345 = call float @dx.op.tertiary.f32(i32 46, float %2335, float %2343, float %2344)  ; FMad(a,b,c)
  %2346 = fmul fast float %2333, %2342
  %2347 = call float @dx.op.tertiary.f32(i32 46, float %2334, float %2343, float %2346)  ; FMad(a,b,c)
  %2348 = fadd fast float %2325, %2345
  %2349 = fadd fast float %2328, %2347
  %2350 = icmp ugt i32 %2299, 1
  %2351 = icmp ugt i32 %2297, 33554431
  %2352 = or i1 %2351, %2350
  br i1 %2352, label %2353, label %2378

; <label>:2353                                    ; preds = %2280
  %2354 = add i32 %51, 260
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = lshr i32 %2356, 16
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = fmul fast float %2321, %2358
  %2360 = call float @dx.op.unary.f32(i32 22, float %2359)  ; Frc(value)
  %2361 = mul nuw nsw i32 %2299, %2300
  %2362 = uitofp i32 %2361 to float
  %2363 = fmul fast float %2360, %2362
  %2364 = call float @dx.op.unary.f32(i32 27, float %2363)  ; Round_ni(value)
  %2365 = fptoui float %2364 to i32
  %2366 = urem i32 %2365, %2299
  %2367 = udiv i32 %2365, %2300
  %2368 = call float @dx.op.unary.f32(i32 22, float %2348)  ; Frc(value)
  %2369 = call float @dx.op.unary.f32(i32 22, float %2349)  ; Frc(value)
  %2370 = uitofp i32 %2366 to float
  %2371 = uitofp i32 %2367 to float
  %2372 = fadd fast float %2368, %2370
  %2373 = fadd fast float %2369, %2371
  %2374 = uitofp i32 %2299 to float
  %2375 = uitofp i32 %2300 to float
  %2376 = fdiv fast float %2372, %2374
  %2377 = fdiv fast float %2373, %2375
  br label %2378

; <label>:2378                                    ; preds = %2353, %2280
  %2379 = phi float [ %2376, %2353 ], [ %2348, %2280 ]
  %2380 = phi float [ %2377, %2353 ], [ %2349, %2280 ]
  %2381 = and i32 %2274, 256
  %2382 = icmp eq i32 %2381, 0
  br i1 %2382, label %2429, label %2383

; <label>:2383                                    ; preds = %2378
  %2384 = add i32 %51, 448
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = add i32 %2386, 0
  %2388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2388, %dx.types.Handle %104, float %2379, float %2380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = add i32 %51, 132
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = shl i32 %2393, 4
  %2395 = and i32 %2394, 32752
  %2396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2395)  ; LegacyF16ToF32(value)
  %2397 = lshr i32 %2393, 7
  %2398 = and i32 %2397, 32752
  %2399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2398)  ; LegacyF16ToF32(value)
  %2400 = fsub fast float 1.000000e+00, %686
  %2401 = call float @dx.op.binary.f32(i32 35, float %2400, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2402 = bitcast float %686 to i32
  %2403 = sitofp i32 %2402 to float
  %2404 = fadd fast float %2403, 0xC1CFBF8940000000
  %2405 = fmul fast float %2399, %2404
  %2406 = fadd fast float %2405, 0x41CFBF8940000000
  %2407 = fptosi float %2406 to i32
  %2408 = bitcast i32 %2407 to float
  %2409 = bitcast float %2401 to i32
  %2410 = sitofp i32 %2409 to float
  %2411 = fadd fast float %2410, 0xC1CFBF8940000000
  %2412 = fmul fast float %2411, %2399
  %2413 = fadd fast float %2412, 0x41CFBF8940000000
  %2414 = fptosi float %2413 to i32
  %2415 = bitcast i32 %2414 to float
  %2416 = fmul fast float %2408, %2396
  %2417 = fmul fast float %2415, %2396
  %2418 = fsub fast float %2401, %2416
  %2419 = fadd fast float %2417, %2401
  %2420 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2421 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2422 = fsub fast float %2390, %2420
  %2423 = fsub fast float %2421, %2420
  %2424 = bitcast float %2423 to i32
  %2425 = sub nsw i32 2129859010, %2424
  %2426 = bitcast i32 %2425 to float
  %2427 = fmul fast float %2426, %2422
  %2428 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  br label %2429

; <label>:2429                                    ; preds = %2383, %2378
  %2430 = phi float [ %2428, %2383 ], [ %686, %2378 ]
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = and i32 %2432, 128
  %2434 = icmp eq i32 %2433, 0
  br i1 %2434, label %2451, label %2435

; <label>:2435                                    ; preds = %2429
  %2436 = add i32 %51, 432
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = add i32 %2438, 0
  %2440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2440, %dx.types.Handle %104, float %2379, float %2380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = and i32 %2444, 524288
  %2446 = icmp ne i32 %2445, 0
  %2447 = fcmp fast ogt float %2442, 0x3FE0101020000000
  %2448 = select i1 %2447, float 1.000000e+00, float 0.000000e+00
  %2449 = select i1 %2446, float %2448, float %2442
  %2450 = fmul fast float %2449, %2430
  br label %2451

; <label>:2451                                    ; preds = %2435, %2429
  %2452 = phi float [ %2450, %2435 ], [ %2430, %2429 ]
  %2453 = fcmp fast ult float %2452, 0x3F70101020000000
  br i1 %2453, label %3175, label %2454

; <label>:2454                                    ; preds = %2451
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = and i32 %2456, 16
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2657, label %2459

; <label>:2459                                    ; preds = %2454
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = add i32 %51, 384
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = add i32 %2464, 0
  %2466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2466, %dx.types.Handle %103, float %2379, float %2380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2468 = extractvalue %dx.types.ResRet.f32 %2467, 0
  %2469 = extractvalue %dx.types.ResRet.f32 %2467, 1
  %2470 = extractvalue %dx.types.ResRet.f32 %2467, 2
  %2471 = extractvalue %dx.types.ResRet.f32 %2467, 3
  %2472 = and i32 %2461, 255
  %2473 = uitofp i32 %2472 to float
  %2474 = lshr i32 %2461, 8
  %2475 = and i32 %2474, 255
  %2476 = uitofp i32 %2475 to float
  %2477 = fmul fast float %2471, %2473
  %2478 = fadd fast float %2477, %2476
  %2479 = fmul fast float %2478, 0x3F70101000000000
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 512
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2492, label %2484

; <label>:2484                                    ; preds = %2459
  %2485 = add i32 %51, 468
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = add i32 %2487, 0
  %2489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2489, %dx.types.Handle %104, float %2379, float %2380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  br label %2492

; <label>:2492                                    ; preds = %2484, %2459
  %2493 = phi float [ %2491, %2484 ], [ 1.000000e+00, %2459 ]
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 33554432
  %2497 = icmp eq i32 %2496, 0
  br i1 %2497, label %2604, label %2498

; <label>:2498                                    ; preds = %2492
  %2499 = add i32 %51, 256
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 65535
  %2503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2502)  ; LegacyF16ToF32(value)
  %2504 = lshr i32 %2501, 16
  %2505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2504)  ; LegacyF16ToF32(value)
  %2506 = add i32 %51, 260
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 65535
  %2510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2509)  ; LegacyF16ToF32(value)
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = lshr i32 %2512, 24
  %2514 = uitofp i32 %2513 to float
  %2515 = fmul fast float %2514, 0x3F70101020000000
  %2516 = and i32 %2512, 255
  %2517 = uitofp i32 %2516 to float
  %2518 = fmul fast float %2517, 0x3F70101020000000
  %2519 = lshr i32 %2512, 8
  %2520 = and i32 %2519, 255
  %2521 = uitofp i32 %2520 to float
  %2522 = fmul fast float %2521, 0x3F70101020000000
  %2523 = lshr i32 %2512, 16
  %2524 = and i32 %2523, 255
  %2525 = uitofp i32 %2524 to float
  %2526 = fmul fast float %2525, 0x3F70101020000000
  %2527 = add i32 %51, 252
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = lshr i32 %2529, 24
  %2531 = uitofp i32 %2530 to float
  %2532 = fmul fast float %2531, 0x3F70101020000000
  %2533 = and i32 %2529, 255
  %2534 = uitofp i32 %2533 to float
  %2535 = fmul fast float %2534, 0x3F70101020000000
  %2536 = lshr i32 %2529, 8
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = fmul fast float %2538, 0x3F70101020000000
  %2540 = lshr i32 %2529, 16
  %2541 = and i32 %2540, 255
  %2542 = uitofp i32 %2541 to float
  %2543 = fmul fast float %2542, 0x3F70101020000000
  %2544 = bitcast float %2468 to i32
  %2545 = ashr i32 %2544, 1
  %2546 = sub nsw i32 1597463174, %2545
  %2547 = bitcast i32 %2546 to float
  %2548 = fmul fast float %2468, 5.000000e-01
  %2549 = fmul fast float %2547, %2547
  %2550 = fmul fast float %2549, %2548
  %2551 = fsub fast float 1.500000e+00, %2550
  %2552 = fmul fast float %2547, %2468
  %2553 = fmul fast float %2552, %2551
  %2554 = bitcast float %2469 to i32
  %2555 = ashr i32 %2554, 1
  %2556 = sub nsw i32 1597463174, %2555
  %2557 = bitcast i32 %2556 to float
  %2558 = fmul fast float %2469, 5.000000e-01
  %2559 = fmul fast float %2557, %2557
  %2560 = fmul fast float %2559, %2558
  %2561 = fsub fast float 1.500000e+00, %2560
  %2562 = fmul fast float %2557, %2469
  %2563 = fmul fast float %2562, %2561
  %2564 = bitcast float %2470 to i32
  %2565 = ashr i32 %2564, 1
  %2566 = sub nsw i32 1597463174, %2565
  %2567 = bitcast i32 %2566 to float
  %2568 = fmul fast float %2470, 5.000000e-01
  %2569 = fmul fast float %2567, %2567
  %2570 = fmul fast float %2569, %2568
  %2571 = fsub fast float 1.500000e+00, %2570
  %2572 = fmul fast float %2567, %2470
  %2573 = fmul fast float %2572, %2571
  %2574 = fsub fast float %2553, %2535
  %2575 = fsub fast float %2563, %2539
  %2576 = fsub fast float %2573, %2543
  %2577 = fmul fast float %2574, %2503
  %2578 = fmul fast float %2575, %2505
  %2579 = fmul fast float %2576, %2510
  %2580 = fadd fast float %2577, %2518
  %2581 = fadd fast float %2578, %2522
  %2582 = fadd fast float %2579, %2526
  %2583 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2584 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2585 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2586 = fmul fast float %2583, %2583
  %2587 = fmul fast float %2584, %2584
  %2588 = fmul fast float %2585, %2585
  %2589 = fsub fast float %2586, %2468
  %2590 = fsub fast float %2587, %2469
  %2591 = fsub fast float %2588, %2470
  %2592 = fmul fast float %2589, %2493
  %2593 = fmul fast float %2590, %2493
  %2594 = fmul fast float %2591, %2493
  %2595 = fadd fast float %2592, %2468
  %2596 = fadd fast float %2593, %2469
  %2597 = fadd fast float %2594, %2470
  %2598 = fadd fast float %2515, %2479
  %2599 = fsub fast float %2598, %2532
  %2600 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2601 = fsub fast float %2600, %2479
  %2602 = fmul fast float %2601, %2493
  %2603 = fadd fast float %2602, %2479
  br label %2657

; <label>:2604                                    ; preds = %2492
  %2605 = and i32 %2495, 134217728
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2641, label %2607

; <label>:2607                                    ; preds = %2604
  %2608 = call float @dx.op.unary.f32(i32 24, float %494)  ; Sqrt(value)
  %2609 = call float @dx.op.unary.f32(i32 24, float %495)  ; Sqrt(value)
  %2610 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %2611 = fadd fast float %2608, -5.000000e-01
  %2612 = fadd fast float %2609, -5.000000e-01
  %2613 = fadd fast float %2610, -5.000000e-01
  %2614 = fmul fast float %2611, %2493
  %2615 = fmul fast float %2612, %2493
  %2616 = fmul fast float %2613, %2493
  %2617 = fadd fast float %2614, 5.000000e-01
  %2618 = fadd fast float %2615, 5.000000e-01
  %2619 = fadd fast float %2616, 5.000000e-01
  %2620 = call float @dx.op.unary.f32(i32 24, float %2468)  ; Sqrt(value)
  %2621 = call float @dx.op.unary.f32(i32 24, float %2469)  ; Sqrt(value)
  %2622 = call float @dx.op.unary.f32(i32 24, float %2470)  ; Sqrt(value)
  %2623 = fmul fast float %2617, 2.000000e+00
  %2624 = fsub fast float 1.000000e+00, %2623
  %2625 = fmul fast float %2624, %2620
  %2626 = fadd fast float %2625, %2623
  %2627 = fmul fast float %2626, %2620
  %2628 = fmul fast float %2618, 2.000000e+00
  %2629 = fsub fast float 1.000000e+00, %2628
  %2630 = fmul fast float %2629, %2621
  %2631 = fadd fast float %2630, %2628
  %2632 = fmul fast float %2631, %2621
  %2633 = fmul fast float %2619, 2.000000e+00
  %2634 = fsub fast float 1.000000e+00, %2633
  %2635 = fmul fast float %2634, %2622
  %2636 = fadd fast float %2635, %2633
  %2637 = fmul fast float %2636, %2622
  %2638 = fmul fast float %2627, %2627
  %2639 = fmul fast float %2632, %2632
  %2640 = fmul fast float %2637, %2637
  br label %2657

; <label>:2641                                    ; preds = %2604
  %2642 = fmul fast float %494, %494
  %2643 = fmul fast float %495, %495
  %2644 = fmul fast float %496, %496
  %2645 = fadd fast float %2642, -1.000000e+00
  %2646 = fadd fast float %2643, -1.000000e+00
  %2647 = fadd fast float %2644, -1.000000e+00
  %2648 = fmul fast float %2493, %2645
  %2649 = fmul fast float %2493, %2646
  %2650 = fmul fast float %2493, %2647
  %2651 = fadd fast float %2648, 1.000000e+00
  %2652 = fadd fast float %2649, 1.000000e+00
  %2653 = fadd fast float %2650, 1.000000e+00
  %2654 = fmul fast float %2651, %2468
  %2655 = fmul fast float %2652, %2469
  %2656 = fmul fast float %2653, %2470
  br label %2657

; <label>:2657                                    ; preds = %2641, %2607, %2498, %2454
  %2658 = phi float [ %2603, %2498 ], [ %2479, %2607 ], [ %2479, %2641 ], [ 0x3FA23C0BE0000000, %2454 ]
  %2659 = phi float [ %2595, %2498 ], [ %2638, %2607 ], [ %2654, %2641 ], [ 1.000000e+00, %2454 ]
  %2660 = phi float [ %2596, %2498 ], [ %2639, %2607 ], [ %2655, %2641 ], [ 1.000000e+00, %2454 ]
  %2661 = phi float [ %2597, %2498 ], [ %2640, %2607 ], [ %2656, %2641 ], [ 1.000000e+00, %2454 ]
  %2662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.i32 %2662, 1
  %2664 = and i32 %2663, 1
  %2665 = icmp ne i32 %2664, 0
  %2666 = add i32 %51, 356
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 32
  %2670 = icmp ne i32 %2669, 0
  %2671 = and i1 %2665, %2670
  %2672 = select i1 %2671, float 1.000000e+00, float %2659
  %2673 = select i1 %2671, float 0x3FD3333340000000, float %2660
  %2674 = select i1 %2671, float 0x3FD3333340000000, float %2661
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %2676, 32
  %2678 = icmp eq i32 %2677, 0
  br i1 %2678, label %2751, label %2679

; <label>:2679                                    ; preds = %2657
  %2680 = add i32 %51, 124
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2680, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = add i32 %51, 400
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = add i32 %2685, 0
  %2687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2687, %dx.types.Handle %103, float %2379, float %2380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.ResRet.f32 %2688, 1
  %2691 = extractvalue %dx.types.ResRet.f32 %2688, 2
  %2692 = extractvalue %dx.types.ResRet.f32 %2688, 3
  %2693 = and i32 %2682, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = lshr i32 %2682, 8
  %2696 = and i32 %2695, 255
  %2697 = uitofp i32 %2696 to float
  %2698 = lshr i32 %2682, 16
  %2699 = and i32 %2698, 255
  %2700 = uitofp i32 %2699 to float
  %2701 = fmul fast float %2700, 0x3F70101000000000
  %2702 = fmul fast float %2689, %2694
  %2703 = fadd fast float %2702, %2697
  %2704 = fmul fast float %2703, 0x3F70101000000000
  %2705 = fadd fast float %2690, -5.000000e-01
  %2706 = fadd fast float %2692, -5.000000e-01
  %2707 = fmul fast float %2705, %2701
  %2708 = fmul fast float %2706, %2701
  %2709 = fadd fast float %2707, 5.000000e-01
  %2710 = fadd fast float %2708, 5.000000e-01
  %2711 = fmul fast float %2709, 2.000000e+00
  %2712 = fadd fast float %2711, -1.000000e+00
  %2713 = fmul fast float %2710, 2.000000e+00
  %2714 = fadd fast float %2713, -1.000000e+00
  %2715 = fadd fast float %2712, %2714
  %2716 = fmul fast float %2715, 5.000000e-01
  %2717 = fsub fast float %2712, %2714
  %2718 = fmul fast float %2717, 5.000000e-01
  %2719 = call float @dx.op.unary.f32(i32 6, float %2716)  ; FAbs(value)
  %2720 = fsub fast float 1.000000e+00, %2719
  %2721 = call float @dx.op.unary.f32(i32 6, float %2718)  ; FAbs(value)
  %2722 = fsub fast float %2720, %2721
  %2723 = call float @dx.op.dot3.f32(i32 55, float %2716, float %2718, float %2722, float %2716, float %2718, float %2722)  ; Dot3(ax,ay,az,bx,by,bz)
  %2724 = call float @dx.op.unary.f32(i32 25, float %2723)  ; Rsqrt(value)
  %2725 = fmul fast float %2716, %2724
  %2726 = fmul fast float %2718, %2724
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %2728, 67108864
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2747, label %2731

; <label>:2731                                    ; preds = %2679
  %2732 = add i32 %51, 312
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %2734, 65535
  %2736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2735)  ; LegacyF16ToF32(value)
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 65535
  %2740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2739)  ; LegacyF16ToF32(value)
  %2741 = lshr i32 %2734, 16
  %2742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2741)  ; LegacyF16ToF32(value)
  %2743 = fsub fast float %2704, %2742
  %2744 = fmul fast float %2743, %2736
  %2745 = fadd fast float %2744, %2740
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  br label %2747

; <label>:2747                                    ; preds = %2731, %2679
  %2748 = phi float [ %2746, %2731 ], [ %2704, %2679 ]
  %2749 = call float @dx.op.dot2.f32(i32 54, float %2725, float %2726, float %2283, float %2284)  ; Dot2(ax,ay,bx,by)
  %2750 = call float @dx.op.dot2.f32(i32 54, float %2725, float %2726, float %2285, float %2286)  ; Dot2(ax,ay,bx,by)
  br label %2751

; <label>:2751                                    ; preds = %2747, %2657
  %2752 = phi float [ %2748, %2747 ], [ 0x3FD6666660000000, %2657 ]
  %2753 = phi float [ %2749, %2747 ], [ 0.000000e+00, %2657 ]
  %2754 = phi float [ %2750, %2747 ], [ 0.000000e+00, %2657 ]
  %2755 = phi float [ %2691, %2747 ], [ 1.000000e+00, %2657 ]
  %2756 = add i32 %51, 192
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = lshr i32 %2758, 22
  %2760 = shl nuw nsw i32 %2759, 5
  %2761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2760)  ; LegacyF16ToF32(value)
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = and i32 %2763, 64
  %2765 = icmp eq i32 %2764, 0
  br i1 %2765, label %2799, label %2766

; <label>:2766                                    ; preds = %2751
  %2767 = add i32 %51, 416
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = add i32 %2769, 0
  %2771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 131072
  %2775 = icmp eq i32 %2774, 0
  %2776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2771, %dx.types.Handle %103, float %2379, float %2380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 0
  %2778 = extractvalue %dx.types.ResRet.f32 %2776, 1
  %2779 = extractvalue %dx.types.ResRet.f32 %2776, 2
  %2780 = fmul fast float %477, %2777
  %2781 = fmul fast float %478, %2778
  %2782 = fmul fast float %479, %2779
  br i1 %2775, label %2789, label %2783

; <label>:2783                                    ; preds = %2766
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = fmul fast float %2785, %2780
  %2787 = fmul fast float %2785, %2781
  %2788 = fmul fast float %2785, %2782
  br label %2789

; <label>:2789                                    ; preds = %2783, %2766
  %2790 = phi float [ %2786, %2783 ], [ %2780, %2766 ]
  %2791 = phi float [ %2787, %2783 ], [ %2781, %2766 ]
  %2792 = phi float [ %2788, %2783 ], [ %2782, %2766 ]
  %2793 = fmul fast float %2790, %2761
  %2794 = select i1 %252, float %2793, float %2790
  %2795 = call float @dx.op.dot3.f32(i32 55, float %2794, float %2791, float %2792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2796 = select i1 %252, float 0.000000e+00, float %2790
  %2797 = select i1 %252, float %2795, float %2791
  %2798 = select i1 %252, float 0.000000e+00, float %2792
  br label %2799

; <label>:2799                                    ; preds = %2789, %2751
  %2800 = phi float [ %2796, %2789 ], [ 0.000000e+00, %2751 ]
  %2801 = phi float [ %2797, %2789 ], [ 0.000000e+00, %2751 ]
  %2802 = phi float [ %2798, %2789 ], [ 0.000000e+00, %2751 ]
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = and i32 %2804, 1024
  %2806 = icmp eq i32 %2805, 0
  br i1 %2806, label %2837, label %2807

; <label>:2807                                    ; preds = %2799
  %2808 = add i32 %51, 184
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = and i32 %2810, 255
  %2812 = uitofp i32 %2811 to float
  %2813 = fmul fast float %2812, 0x3F70101020000000
  %2814 = lshr i32 %2810, 8
  %2815 = and i32 %2814, 255
  %2816 = uitofp i32 %2815 to float
  %2817 = fmul fast float %2816, 0x3F70101020000000
  %2818 = lshr i32 %2810, 16
  %2819 = and i32 %2818, 255
  %2820 = uitofp i32 %2819 to float
  %2821 = fmul fast float %2820, 0x3F70101020000000
  %2822 = fmul fast float %2813, %2813
  %2823 = fmul fast float %2817, %2817
  %2824 = fmul fast float %2821, %2821
  %2825 = add i32 %51, 484
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %2827, 0
  %2829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2829, %dx.types.Handle %104, float %2379, float %2380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.ResRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.ResRet.f32 %2830, 2
  %2834 = fmul fast float %2822, %2831
  %2835 = fmul fast float %2823, %2832
  %2836 = fmul fast float %2824, %2833
  br label %2837

; <label>:2837                                    ; preds = %2807, %2799
  %2838 = phi float [ %2834, %2807 ], [ 0.000000e+00, %2799 ]
  %2839 = phi float [ %2835, %2807 ], [ 0.000000e+00, %2799 ]
  %2840 = phi float [ %2836, %2807 ], [ 0.000000e+00, %2799 ]
  %2841 = fcmp fast ogt float %2838, 0.000000e+00
  %2842 = fcmp fast ogt float %2839, 0.000000e+00
  %2843 = fcmp fast ogt float %2840, 0.000000e+00
  %2844 = call float @dx.op.unary.f32(i32 23, float %2838)  ; Log(value)
  %2845 = call float @dx.op.unary.f32(i32 23, float %2839)  ; Log(value)
  %2846 = call float @dx.op.unary.f32(i32 23, float %2840)  ; Log(value)
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = lshr i32 %2848, 7
  %2850 = and i32 %2849, 32752
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = fmul fast float %2844, 0xBFE62E4300000000
  %2853 = fmul fast float %2852, %2851
  %2854 = fmul fast float %2845, 0xBFE62E4300000000
  %2855 = fmul fast float %2854, %2851
  %2856 = fmul fast float %2846, 0xBFE62E4300000000
  %2857 = fmul fast float %2856, %2851
  %2858 = select i1 %2841, float %2853, float 1.270000e+02
  %2859 = select i1 %2842, float %2855, float 1.270000e+02
  %2860 = select i1 %2843, float %2857, float 1.270000e+02
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = and i32 %2862, 10240
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %2909, label %2865

; <label>:2865                                    ; preds = %2837
  %2866 = add i32 %51, 500
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = add i32 %2868, 0
  %2870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2870, %dx.types.Handle %104, float %2379, float %2380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2872 = extractvalue %dx.types.ResRet.f32 %2871, 1
  %2873 = extractvalue %dx.types.ResRet.f32 %2871, 3
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 1048576
  %2877 = icmp ne i32 %2876, 0
  %2878 = and i32 %2875, 8192
  %2879 = icmp eq i32 %2878, 0
  br i1 %2879, label %2895, label %2880

; <label>:2880                                    ; preds = %2865
  %2881 = extractvalue %dx.types.ResRet.f32 %2871, 2
  %2882 = select i1 %2877, float %2881, float %2872
  %2883 = extractvalue %dx.types.ResRet.f32 %2871, 0
  %2884 = select i1 %2877, float %2883, float %2872
  %2885 = add i32 %51, 128
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = lshr i32 %2887, 16
  %2889 = and i32 %2888, 255
  %2890 = uitofp i32 %2889 to float
  %2891 = fmul fast float %2890, 0x3F80101020000000
  %2892 = fmul fast float %2891, %2884
  %2893 = fmul fast float %2891, %2872
  %2894 = fmul fast float %2891, %2882
  br label %2895

; <label>:2895                                    ; preds = %2880, %2865
  %2896 = phi float [ %2892, %2880 ], [ 0.000000e+00, %2865 ]
  %2897 = phi float [ %2893, %2880 ], [ 0.000000e+00, %2865 ]
  %2898 = phi float [ %2894, %2880 ], [ 0.000000e+00, %2865 ]
  %2899 = and i32 %2875, 2048
  %2900 = icmp eq i32 %2899, 0
  br i1 %2900, label %2909, label %2901

; <label>:2901                                    ; preds = %2895
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = shl i32 %2903, 4
  %2905 = and i32 %2904, 32752
  %2906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2905)  ; LegacyF16ToF32(value)
  %2907 = fmul fast float %2906, %2873
  %2908 = call float @dx.op.binary.f32(i32 35, float %2907, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2909

; <label>:2909                                    ; preds = %2901, %2895, %2837
  %2910 = phi float [ %2896, %2901 ], [ %2896, %2895 ], [ 0.000000e+00, %2837 ]
  %2911 = phi float [ %2897, %2901 ], [ %2897, %2895 ], [ 0.000000e+00, %2837 ]
  %2912 = phi float [ %2898, %2901 ], [ %2898, %2895 ], [ 0.000000e+00, %2837 ]
  %2913 = phi float [ %2908, %2901 ], [ 0x3F70101020000000, %2895 ], [ 0x3F70101020000000, %2837 ]
  br i1 %2271, label %2914, label %2949

; <label>:2914                                    ; preds = %2909
  %2915 = fmul fast float %2913, 2.000000e+00
  %2916 = fcmp fast olt float %2858, 1.270000e+02
  %2917 = fcmp fast olt float %2859, 1.270000e+02
  %2918 = fcmp fast olt float %2860, 1.270000e+02
  %2919 = fmul fast float %2858, 0xBFF7154760000000
  %2920 = fmul fast float %2919, %2915
  %2921 = fmul fast float %2859, 0xBFF7154760000000
  %2922 = fmul fast float %2921, %2915
  %2923 = fmul fast float %2860, 0xBFF7154760000000
  %2924 = fmul fast float %2923, %2915
  %2925 = call float @dx.op.unary.f32(i32 21, float %2920)  ; Exp(value)
  %2926 = call float @dx.op.unary.f32(i32 21, float %2922)  ; Exp(value)
  %2927 = call float @dx.op.unary.f32(i32 21, float %2924)  ; Exp(value)
  %2928 = call float @dx.op.unary.f32(i32 7, float %2925)  ; Saturate(value)
  %2929 = call float @dx.op.unary.f32(i32 7, float %2926)  ; Saturate(value)
  %2930 = call float @dx.op.unary.f32(i32 7, float %2927)  ; Saturate(value)
  %2931 = fadd fast float %2928, -1.000000e+00
  %2932 = select i1 %2916, float %2931, float -1.000000e+00
  %2933 = fadd fast float %2929, -1.000000e+00
  %2934 = select i1 %2917, float %2933, float -1.000000e+00
  %2935 = fadd fast float %2930, -1.000000e+00
  %2936 = select i1 %2918, float %2935, float -1.000000e+00
  %2937 = fmul fast float %2932, %2452
  %2938 = fmul fast float %2934, %2452
  %2939 = fmul fast float %2936, %2452
  %2940 = fadd fast float %2937, 1.000000e+00
  %2941 = fadd fast float %2938, 1.000000e+00
  %2942 = fadd fast float %2939, 1.000000e+00
  %2943 = fmul fast float %2940, %2254
  %2944 = fmul fast float %2941, %2255
  %2945 = fmul fast float %2942, %2256
  %2946 = fmul fast float %2940, %2257
  %2947 = fmul fast float %2941, %2258
  %2948 = fmul fast float %2942, %2259
  br label %2949

; <label>:2949                                    ; preds = %2914, %2909
  %2950 = phi float [ %2943, %2914 ], [ %2254, %2909 ]
  %2951 = phi float [ %2944, %2914 ], [ %2255, %2909 ]
  %2952 = phi float [ %2945, %2914 ], [ %2256, %2909 ]
  %2953 = phi float [ %2946, %2914 ], [ %2257, %2909 ]
  %2954 = phi float [ %2947, %2914 ], [ %2258, %2909 ]
  %2955 = phi float [ %2948, %2914 ], [ %2259, %2909 ]
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 3
  %2959 = icmp eq i32 %2958, 3
  br i1 %2959, label %3035, label %2960

; <label>:2960                                    ; preds = %2949
  %2961 = and i32 %2957, 16
  %2962 = icmp ne i32 %2961, 0
  %2963 = select i1 %2962, float %2452, float 0.000000e+00
  %2964 = icmp eq i32 %2958, 0
  br i1 %2964, label %2965, label %2990

; <label>:2965                                    ; preds = %2960
  %2966 = and i32 %2957, 64
  %2967 = icmp ne i32 %2966, 0
  %2968 = select i1 %2967, float %2452, float 0.000000e+00
  %2969 = fsub fast float %2672, %2950
  %2970 = fsub fast float %2673, %2951
  %2971 = fsub fast float %2674, %2952
  %2972 = fmul fast float %2963, %2969
  %2973 = fmul fast float %2963, %2970
  %2974 = fmul fast float %2963, %2971
  %2975 = fadd fast float %2972, %2950
  %2976 = fadd fast float %2973, %2951
  %2977 = fadd fast float %2974, %2952
  %2978 = fsub fast float %2658, %2266
  %2979 = fmul fast float %2963, %2978
  %2980 = fadd fast float %2979, %2266
  %2981 = fsub fast float %2800, %2953
  %2982 = fsub fast float %2801, %2954
  %2983 = fsub fast float %2802, %2955
  %2984 = fmul fast float %2968, %2981
  %2985 = fmul fast float %2968, %2982
  %2986 = fmul fast float %2968, %2983
  %2987 = fadd fast float %2984, %2953
  %2988 = fadd fast float %2985, %2954
  %2989 = fadd fast float %2986, %2955
  br label %3035

; <label>:2990                                    ; preds = %2960
  %2991 = icmp eq i32 %2958, 1
  br i1 %2991, label %2992, label %3005

; <label>:2992                                    ; preds = %2990
  %2993 = fadd fast float %2672, -1.000000e+00
  %2994 = fadd fast float %2673, -1.000000e+00
  %2995 = fadd fast float %2674, -1.000000e+00
  %2996 = fmul fast float %2963, %2993
  %2997 = fmul fast float %2963, %2994
  %2998 = fmul fast float %2963, %2995
  %2999 = fadd fast float %2996, 1.000000e+00
  %3000 = fadd fast float %2997, 1.000000e+00
  %3001 = fadd fast float %2998, 1.000000e+00
  %3002 = fmul fast float %2999, %2950
  %3003 = fmul fast float %3000, %2951
  %3004 = fmul fast float %3001, %2952
  br label %3035

; <label>:3005                                    ; preds = %2990
  %3006 = icmp eq i32 %2958, 2
  br i1 %3006, label %3007, label %3035

; <label>:3007                                    ; preds = %3005
  %3008 = call float @dx.op.unary.f32(i32 24, float %2672)  ; Sqrt(value)
  %3009 = call float @dx.op.unary.f32(i32 24, float %2673)  ; Sqrt(value)
  %3010 = call float @dx.op.unary.f32(i32 24, float %2674)  ; Sqrt(value)
  %3011 = fadd fast float %3008, -5.000000e-01
  %3012 = fadd fast float %3009, -5.000000e-01
  %3013 = fadd fast float %3010, -5.000000e-01
  %3014 = fmul fast float %3011, %2963
  %3015 = fmul fast float %3012, %2963
  %3016 = fmul fast float %3013, %2963
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fadd fast float %3015, 5.000000e-01
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fmul fast float %3017, 2.000000e+00
  %3021 = fsub fast float 1.000000e+00, %3020
  %3022 = fmul fast float %3021, %2950
  %3023 = fadd fast float %3022, %3020
  %3024 = fmul fast float %3023, %2950
  %3025 = fmul fast float %3018, 2.000000e+00
  %3026 = fsub fast float 1.000000e+00, %3025
  %3027 = fmul fast float %3026, %2951
  %3028 = fadd fast float %3027, %3025
  %3029 = fmul fast float %3028, %2951
  %3030 = fmul fast float %3019, 2.000000e+00
  %3031 = fsub fast float 1.000000e+00, %3030
  %3032 = fmul fast float %3031, %2952
  %3033 = fadd fast float %3032, %3030
  %3034 = fmul fast float %3033, %2952
  br label %3035

; <label>:3035                                    ; preds = %3007, %3005, %2992, %2965, %2949
  %3036 = phi float [ %2950, %2949 ], [ %3024, %3007 ], [ %2950, %3005 ], [ %3002, %2992 ], [ %2975, %2965 ]
  %3037 = phi float [ %2951, %2949 ], [ %3029, %3007 ], [ %2951, %3005 ], [ %3003, %2992 ], [ %2976, %2965 ]
  %3038 = phi float [ %2952, %2949 ], [ %3034, %3007 ], [ %2952, %3005 ], [ %3004, %2992 ], [ %2977, %2965 ]
  %3039 = phi float [ %2953, %2949 ], [ %2953, %3007 ], [ %2953, %3005 ], [ %2953, %2992 ], [ %2987, %2965 ]
  %3040 = phi float [ %2954, %2949 ], [ %2954, %3007 ], [ %2954, %3005 ], [ %2954, %2992 ], [ %2988, %2965 ]
  %3041 = phi float [ %2955, %2949 ], [ %2955, %3007 ], [ %2955, %3005 ], [ %2955, %2992 ], [ %2989, %2965 ]
  %3042 = phi float [ %2266, %2949 ], [ %2266, %3007 ], [ %2266, %3005 ], [ %2266, %2992 ], [ %2980, %2965 ]
  %3043 = and i32 %2957, 12
  %3044 = icmp eq i32 %3043, 12
  br i1 %3044, label %3175, label %3045

; <label>:3045                                    ; preds = %3035
  %3046 = and i32 %2957, 2097184
  %3047 = icmp eq i32 %3046, 2097184
  %3048 = select i1 %3047, float %2452, float 0.000000e+00
  %3049 = and i32 %2957, 4194336
  %3050 = icmp eq i32 %3049, 4194336
  %3051 = select i1 %3050, float %2452, float 0.000000e+00
  %3052 = and i32 %2957, 8388640
  %3053 = icmp eq i32 %3052, 8388640
  %3054 = select i1 %3053, float %2452, float 0.000000e+00
  %3055 = and i32 %2957, 1024
  %3056 = icmp ne i32 %3055, 0
  %3057 = select i1 %3056, float %2452, float 0.000000e+00
  %3058 = and i32 %2957, 2048
  %3059 = icmp ne i32 %3058, 0
  %3060 = select i1 %3059, float %2452, float 0.000000e+00
  %3061 = and i32 %2957, 8192
  %3062 = icmp ne i32 %3061, 0
  %3063 = select i1 %3062, float %2452, float 0.000000e+00
  %3064 = icmp eq i32 %3043, 0
  br i1 %3064, label %3065, label %3099

; <label>:3065                                    ; preds = %3045
  %3066 = fsub fast float %2753, %2252
  %3067 = fsub fast float %2754, %2253
  %3068 = fmul fast float %3048, %3066
  %3069 = fmul fast float %3048, %3067
  %3070 = fadd fast float %3068, %2252
  %3071 = fadd fast float %3069, %2253
  %3072 = fsub fast float %2755, %2268
  %3073 = fmul fast float %3051, %3072
  %3074 = fadd fast float %3073, %2268
  %3075 = fsub fast float %2752, %2267
  %3076 = fmul fast float %3054, %3075
  %3077 = fadd fast float %3076, %2267
  %3078 = fsub fast float %2858, %2263
  %3079 = fsub fast float %2859, %2264
  %3080 = fsub fast float %2860, %2265
  %3081 = fmul fast float %3057, %3078
  %3082 = fmul fast float %3057, %3079
  %3083 = fmul fast float %3057, %3080
  %3084 = fadd fast float %3081, %2263
  %3085 = fadd fast float %3082, %2264
  %3086 = fadd fast float %3083, %2265
  %3087 = fsub fast float %2913, %2269
  %3088 = fmul fast float %3060, %3087
  %3089 = fadd fast float %3088, %2269
  %3090 = fsub fast float %2910, %2260
  %3091 = fsub fast float %2911, %2261
  %3092 = fsub fast float %2912, %2262
  %3093 = fmul fast float %3063, %3090
  %3094 = fmul fast float %3063, %3091
  %3095 = fmul fast float %3063, %3092
  %3096 = fadd fast float %3093, %2260
  %3097 = fadd fast float %3094, %2261
  %3098 = fadd fast float %3095, %2262
  br label %3175

; <label>:3099                                    ; preds = %3045
  %3100 = icmp eq i32 %3043, 4
  br i1 %3100, label %3101, label %3147

; <label>:3101                                    ; preds = %3099
  %3102 = fmul fast float %3048, %2753
  %3103 = fmul fast float %3048, %2754
  %3104 = fadd fast float %3102, %2252
  %3105 = fadd fast float %3103, %2253
  %3106 = call float @dx.op.binary.f32(i32 36, float %2268, float %2755)  ; FMin(a,b)
  %3107 = fsub fast float %3106, %2268
  %3108 = fmul fast float %3107, %3051
  %3109 = fadd fast float %3108, %2268
  %3110 = fadd fast float %2752, %2267
  %3111 = fmul fast float %3110, 0x3FF337FAE0000000
  %3112 = fmul fast float %2267, %2267
  %3113 = fmul fast float %2752, %2752
  %3114 = fadd fast float %3113, %3112
  %3115 = fmul fast float %3114, 0x3FE5152B00000000
  %3116 = fmul fast float %2267, 0xBFCC1F85E0000000
  %3117 = fmul fast float %3116, %2752
  %3118 = fadd fast float %3117, 0xBFE1363700000000
  %3119 = fadd fast float %3118, %3111
  %3120 = fsub fast float %3119, %3115
  %3121 = fmul fast float %3110, 0x3FBA6F0D00000000
  %3122 = fmul fast float %3114, 0x3FD0432880000000
  %3123 = fmul fast float %2267, 0xBFEF110800000000
  %3124 = fmul fast float %3123, %2752
  %3125 = fadd fast float %3124, 1.000000e+00
  %3126 = fsub fast float %3125, %3121
  %3127 = fadd fast float %3126, %3122
  %3128 = fdiv fast float %3120, %3127
  %3129 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  %3130 = fsub fast float %3129, %2267
  %3131 = fmul fast float %3130, %3054
  %3132 = fadd fast float %3131, %2267
  %3133 = fmul fast float %3057, %2858
  %3134 = fmul fast float %3057, %2859
  %3135 = fmul fast float %3057, %2860
  %3136 = fadd fast float %3133, %2263
  %3137 = fadd fast float %3134, %2264
  %3138 = fadd fast float %3135, %2265
  %3139 = fmul fast float %3060, %2913
  %3140 = fadd fast float %3139, %2269
  %3141 = fmul fast float %3063, %2910
  %3142 = fmul fast float %3063, %2911
  %3143 = fmul fast float %3063, %2912
  %3144 = fadd fast float %3141, %2260
  %3145 = fadd fast float %3142, %2261
  %3146 = fadd fast float %3143, %2262
  br label %3175

; <label>:3147                                    ; preds = %3099
  %3148 = icmp eq i32 %3043, 8
  br i1 %3148, label %3149, label %3175

; <label>:3149                                    ; preds = %3147
  %3150 = fmul fast float %3048, %2753
  %3151 = fmul fast float %3048, %2754
  %3152 = fadd fast float %3150, %2252
  %3153 = fadd fast float %3151, %2253
  %3154 = call float @dx.op.binary.f32(i32 36, float %2268, float %2755)  ; FMin(a,b)
  %3155 = fsub fast float %3154, %2268
  %3156 = fmul fast float %3155, %3051
  %3157 = fadd fast float %3156, %2268
  %3158 = fsub fast float %2752, %2267
  %3159 = fmul fast float %3054, %3158
  %3160 = fadd fast float %3159, %2267
  %3161 = fmul fast float %3057, %2858
  %3162 = fmul fast float %3057, %2859
  %3163 = fmul fast float %3057, %2860
  %3164 = fadd fast float %3161, %2263
  %3165 = fadd fast float %3162, %2264
  %3166 = fadd fast float %3163, %2265
  %3167 = fmul fast float %3060, %2913
  %3168 = fadd fast float %3167, %2269
  %3169 = fmul fast float %3063, %2910
  %3170 = fmul fast float %3063, %2911
  %3171 = fmul fast float %3063, %2912
  %3172 = fadd fast float %3169, %2260
  %3173 = fadd fast float %3170, %2261
  %3174 = fadd fast float %3171, %2262
  br label %3175

; <label>:3175                                    ; preds = %3149, %3147, %3101, %3065, %3035, %2451, %2270, %2251
  %3176 = phi float [ %2252, %3035 ], [ %2252, %2451 ], [ %2252, %2251 ], [ %3152, %3149 ], [ %2252, %3147 ], [ %3104, %3101 ], [ %3070, %3065 ], [ %2252, %2270 ]
  %3177 = phi float [ %2253, %3035 ], [ %2253, %2451 ], [ %2253, %2251 ], [ %3153, %3149 ], [ %2253, %3147 ], [ %3105, %3101 ], [ %3071, %3065 ], [ %2253, %2270 ]
  %3178 = phi float [ %3036, %3035 ], [ %2254, %2451 ], [ %2254, %2251 ], [ %3036, %3149 ], [ %3036, %3147 ], [ %3036, %3101 ], [ %3036, %3065 ], [ %2254, %2270 ]
  %3179 = phi float [ %3037, %3035 ], [ %2255, %2451 ], [ %2255, %2251 ], [ %3037, %3149 ], [ %3037, %3147 ], [ %3037, %3101 ], [ %3037, %3065 ], [ %2255, %2270 ]
  %3180 = phi float [ %3038, %3035 ], [ %2256, %2451 ], [ %2256, %2251 ], [ %3038, %3149 ], [ %3038, %3147 ], [ %3038, %3101 ], [ %3038, %3065 ], [ %2256, %2270 ]
  %3181 = phi float [ %3039, %3035 ], [ %2257, %2451 ], [ %2257, %2251 ], [ %3039, %3149 ], [ %3039, %3147 ], [ %3039, %3101 ], [ %3039, %3065 ], [ %2257, %2270 ]
  %3182 = phi float [ %3040, %3035 ], [ %2258, %2451 ], [ %2258, %2251 ], [ %3040, %3149 ], [ %3040, %3147 ], [ %3040, %3101 ], [ %3040, %3065 ], [ %2258, %2270 ]
  %3183 = phi float [ %3041, %3035 ], [ %2259, %2451 ], [ %2259, %2251 ], [ %3041, %3149 ], [ %3041, %3147 ], [ %3041, %3101 ], [ %3041, %3065 ], [ %2259, %2270 ]
  %3184 = phi float [ %2260, %3035 ], [ %2260, %2451 ], [ %2260, %2251 ], [ %3172, %3149 ], [ %2260, %3147 ], [ %3144, %3101 ], [ %3096, %3065 ], [ %2260, %2270 ]
  %3185 = phi float [ %2261, %3035 ], [ %2261, %2451 ], [ %2261, %2251 ], [ %3173, %3149 ], [ %2261, %3147 ], [ %3145, %3101 ], [ %3097, %3065 ], [ %2261, %2270 ]
  %3186 = phi float [ %2262, %3035 ], [ %2262, %2451 ], [ %2262, %2251 ], [ %3174, %3149 ], [ %2262, %3147 ], [ %3146, %3101 ], [ %3098, %3065 ], [ %2262, %2270 ]
  %3187 = phi float [ %2263, %3035 ], [ %2263, %2451 ], [ %2263, %2251 ], [ %3164, %3149 ], [ %2263, %3147 ], [ %3136, %3101 ], [ %3084, %3065 ], [ %2263, %2270 ]
  %3188 = phi float [ %2264, %3035 ], [ %2264, %2451 ], [ %2264, %2251 ], [ %3165, %3149 ], [ %2264, %3147 ], [ %3137, %3101 ], [ %3085, %3065 ], [ %2264, %2270 ]
  %3189 = phi float [ %2265, %3035 ], [ %2265, %2451 ], [ %2265, %2251 ], [ %3166, %3149 ], [ %2265, %3147 ], [ %3138, %3101 ], [ %3086, %3065 ], [ %2265, %2270 ]
  %3190 = phi float [ %3042, %3035 ], [ %2266, %2451 ], [ %2266, %2251 ], [ %3042, %3149 ], [ %3042, %3147 ], [ %3042, %3101 ], [ %3042, %3065 ], [ %2266, %2270 ]
  %3191 = phi float [ %2267, %3035 ], [ %2267, %2451 ], [ %2267, %2251 ], [ %3160, %3149 ], [ %2267, %3147 ], [ %3132, %3101 ], [ %3077, %3065 ], [ %2267, %2270 ]
  %3192 = phi float [ %2268, %3035 ], [ %2268, %2451 ], [ %2268, %2251 ], [ %3157, %3149 ], [ %2268, %3147 ], [ %3109, %3101 ], [ %3074, %3065 ], [ %2268, %2270 ]
  %3193 = phi float [ %2269, %3035 ], [ %2269, %2451 ], [ %2269, %2251 ], [ %3168, %3149 ], [ %2269, %3147 ], [ %3140, %3101 ], [ %3089, %3065 ], [ %2269, %2270 ]
  br i1 %636, label %4099, label %3194

; <label>:3194                                    ; preds = %3175
  %3195 = icmp ult i32 %690, 4
  %3196 = add i32 %51, 72
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = add i32 %51, 76
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = or i32 %3201, %3198
  %3203 = icmp eq i32 %3202, 0
  br i1 %3203, label %4099, label %3204

; <label>:3204                                    ; preds = %3194
  %3205 = and i32 %3198, 262144
  %3206 = icmp ne i32 %3205, 0
  %3207 = select i1 %3206, float %57, float 1.000000e+00
  %3208 = select i1 %3206, float %58, float 0.000000e+00
  %3209 = select i1 %3206, float %59, float 0.000000e+00
  %3210 = select i1 %3206, float %60, float 1.000000e+00
  %3211 = select i1 %3206, float %61, float %89
  %3212 = select i1 %3206, float %62, float %90
  %3213 = add i32 %51, 332
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = lshr i32 %3215, 16
  %3217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3216)  ; LegacyF16ToF32(value)
  %3218 = fmul fast float %3217, 0x3F50624DE0000000
  %3219 = add i32 %51, 136
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = lshr i32 %3221, 16
  %3223 = and i32 %3222, 255
  %3224 = lshr i32 %3221, 24
  %3225 = add i32 %51, 340
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 65535
  %3229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3228)  ; LegacyF16ToF32(value)
  %3230 = lshr i32 %3227, 16
  %3231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3230)  ; LegacyF16ToF32(value)
  %3232 = add i32 %51, 80
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = lshr i32 %3234, 22
  %3236 = shl nuw nsw i32 %3235, 5
  %3237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3236)  ; LegacyF16ToF32(value)
  %3238 = shl i32 %3234, 4
  %3239 = and i32 %3238, 32752
  %3240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3239)  ; LegacyF16ToF32(value)
  %3241 = lshr i32 %3234, 7
  %3242 = and i32 %3241, 32752
  %3243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3242)  ; LegacyF16ToF32(value)
  %3244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.f32 %3244, 3
  %3246 = fmul fast float %3245, 1.000000e+03
  %3247 = fmul fast float %3246, %625
  %3248 = call float @dx.op.unary.f32(i32 22, float %3247)  ; Frc(value)
  %3249 = fadd fast float %3248, %613
  %3250 = fmul fast float %3246, %627
  %3251 = call float @dx.op.unary.f32(i32 22, float %3250)  ; Frc(value)
  %3252 = fadd fast float %3251, %614
  %3253 = fmul fast float %3218, %3246
  %3254 = call float @dx.op.unary.f32(i32 22, float %3253)  ; Frc(value)
  %3255 = fmul fast float %3254, 0x401921FB60000000
  %3256 = fadd fast float %3255, %3237
  %3257 = call float @dx.op.unary.f32(i32 13, float %3256)  ; Sin(value)
  %3258 = call float @dx.op.unary.f32(i32 12, float %3256)  ; Cos(value)
  %3259 = fsub fast float -0.000000e+00, %3257
  %3260 = fadd fast float %3211, -5.000000e-01
  %3261 = fadd fast float %3212, -5.000000e-01
  %3262 = fmul fast float %3229, %3260
  %3263 = fmul fast float %3231, %3261
  %3264 = fadd fast float %3262, 5.000000e-01
  %3265 = fadd fast float %3263, 5.000000e-01
  %3266 = fmul fast float %3240, %3264
  %3267 = fmul fast float %3243, %3265
  %3268 = fmul fast float %3258, %3266
  %3269 = call float @dx.op.tertiary.f32(i32 46, float %3259, float %3267, float %3268)  ; FMad(a,b,c)
  %3270 = fmul fast float %3257, %3266
  %3271 = call float @dx.op.tertiary.f32(i32 46, float %3258, float %3267, float %3270)  ; FMad(a,b,c)
  %3272 = fadd fast float %3249, %3269
  %3273 = fadd fast float %3252, %3271
  %3274 = icmp ugt i32 %3223, 1
  %3275 = icmp ugt i32 %3221, 33554431
  %3276 = or i1 %3275, %3274
  br i1 %3276, label %3277, label %3302

; <label>:3277                                    ; preds = %3204
  %3278 = add i32 %51, 276
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = lshr i32 %3280, 16
  %3282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3281)  ; LegacyF16ToF32(value)
  %3283 = fmul fast float %3245, %3282
  %3284 = call float @dx.op.unary.f32(i32 22, float %3283)  ; Frc(value)
  %3285 = mul nuw nsw i32 %3223, %3224
  %3286 = uitofp i32 %3285 to float
  %3287 = fmul fast float %3284, %3286
  %3288 = call float @dx.op.unary.f32(i32 27, float %3287)  ; Round_ni(value)
  %3289 = fptoui float %3288 to i32
  %3290 = urem i32 %3289, %3223
  %3291 = udiv i32 %3289, %3224
  %3292 = call float @dx.op.unary.f32(i32 22, float %3272)  ; Frc(value)
  %3293 = call float @dx.op.unary.f32(i32 22, float %3273)  ; Frc(value)
  %3294 = uitofp i32 %3290 to float
  %3295 = uitofp i32 %3291 to float
  %3296 = fadd fast float %3292, %3294
  %3297 = fadd fast float %3293, %3295
  %3298 = uitofp i32 %3223 to float
  %3299 = uitofp i32 %3224 to float
  %3300 = fdiv fast float %3296, %3298
  %3301 = fdiv fast float %3297, %3299
  br label %3302

; <label>:3302                                    ; preds = %3277, %3204
  %3303 = phi float [ %3300, %3277 ], [ %3272, %3204 ]
  %3304 = phi float [ %3301, %3277 ], [ %3273, %3204 ]
  %3305 = and i32 %3198, 256
  %3306 = icmp eq i32 %3305, 0
  br i1 %3306, label %3353, label %3307

; <label>:3307                                    ; preds = %3302
  %3308 = add i32 %51, 452
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = add i32 %3310, 0
  %3312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3312, %dx.types.Handle %104, float %3303, float %3304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = add i32 %51, 148
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = shl i32 %3317, 4
  %3319 = and i32 %3318, 32752
  %3320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3319)  ; LegacyF16ToF32(value)
  %3321 = lshr i32 %3317, 7
  %3322 = and i32 %3321, 32752
  %3323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3322)  ; LegacyF16ToF32(value)
  %3324 = fsub fast float 1.000000e+00, %685
  %3325 = call float @dx.op.binary.f32(i32 35, float %3324, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3326 = bitcast float %685 to i32
  %3327 = sitofp i32 %3326 to float
  %3328 = fadd fast float %3327, 0xC1CFBF8940000000
  %3329 = fmul fast float %3323, %3328
  %3330 = fadd fast float %3329, 0x41CFBF8940000000
  %3331 = fptosi float %3330 to i32
  %3332 = bitcast i32 %3331 to float
  %3333 = bitcast float %3325 to i32
  %3334 = sitofp i32 %3333 to float
  %3335 = fadd fast float %3334, 0xC1CFBF8940000000
  %3336 = fmul fast float %3335, %3323
  %3337 = fadd fast float %3336, 0x41CFBF8940000000
  %3338 = fptosi float %3337 to i32
  %3339 = bitcast i32 %3338 to float
  %3340 = fmul fast float %3332, %3320
  %3341 = fmul fast float %3339, %3320
  %3342 = fsub fast float %3325, %3340
  %3343 = fadd fast float %3341, %3325
  %3344 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3345 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3346 = fsub fast float %3314, %3344
  %3347 = fsub fast float %3345, %3344
  %3348 = bitcast float %3347 to i32
  %3349 = sub nsw i32 2129859010, %3348
  %3350 = bitcast i32 %3349 to float
  %3351 = fmul fast float %3350, %3346
  %3352 = call float @dx.op.unary.f32(i32 7, float %3351)  ; Saturate(value)
  br label %3353

; <label>:3353                                    ; preds = %3307, %3302
  %3354 = phi float [ %3352, %3307 ], [ %685, %3302 ]
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = and i32 %3356, 128
  %3358 = icmp eq i32 %3357, 0
  br i1 %3358, label %3375, label %3359

; <label>:3359                                    ; preds = %3353
  %3360 = add i32 %51, 436
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = add i32 %3362, 0
  %3364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3364, %dx.types.Handle %104, float %3303, float %3304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 0
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, 524288
  %3370 = icmp ne i32 %3369, 0
  %3371 = fcmp fast ogt float %3366, 0x3FE0101020000000
  %3372 = select i1 %3371, float 1.000000e+00, float 0.000000e+00
  %3373 = select i1 %3370, float %3372, float %3366
  %3374 = fmul fast float %3373, %3354
  br label %3375

; <label>:3375                                    ; preds = %3359, %3353
  %3376 = phi float [ %3374, %3359 ], [ %3354, %3353 ]
  %3377 = fcmp fast ult float %3376, 0x3F70101020000000
  br i1 %3377, label %4099, label %3378

; <label>:3378                                    ; preds = %3375
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = and i32 %3380, 16
  %3382 = icmp eq i32 %3381, 0
  br i1 %3382, label %3581, label %3383

; <label>:3383                                    ; preds = %3378
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = add i32 %51, 388
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = add i32 %3388, 0
  %3390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3391 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3390, %dx.types.Handle %103, float %3303, float %3304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = extractvalue %dx.types.ResRet.f32 %3391, 3
  %3396 = and i32 %3385, 255
  %3397 = uitofp i32 %3396 to float
  %3398 = lshr i32 %3385, 8
  %3399 = and i32 %3398, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = fmul fast float %3395, %3397
  %3402 = fadd fast float %3401, %3400
  %3403 = fmul fast float %3402, 0x3F70101000000000
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 512
  %3407 = icmp eq i32 %3406, 0
  br i1 %3407, label %3416, label %3408

; <label>:3408                                    ; preds = %3383
  %3409 = add i32 %51, 472
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = add i32 %3411, 0
  %3413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3413, %dx.types.Handle %104, float %3303, float %3304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  br label %3416

; <label>:3416                                    ; preds = %3408, %3383
  %3417 = phi float [ %3415, %3408 ], [ 1.000000e+00, %3383 ]
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 33554432
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3528, label %3422

; <label>:3422                                    ; preds = %3416
  %3423 = add i32 %51, 272
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 65535
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = lshr i32 %3425, 16
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = add i32 %51, 276
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 65535
  %3434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3433)  ; LegacyF16ToF32(value)
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = lshr i32 %3436, 24
  %3438 = uitofp i32 %3437 to float
  %3439 = fmul fast float %3438, 0x3F70101020000000
  %3440 = and i32 %3436, 255
  %3441 = uitofp i32 %3440 to float
  %3442 = fmul fast float %3441, 0x3F70101020000000
  %3443 = lshr i32 %3436, 8
  %3444 = and i32 %3443, 255
  %3445 = uitofp i32 %3444 to float
  %3446 = fmul fast float %3445, 0x3F70101020000000
  %3447 = lshr i32 %3436, 16
  %3448 = and i32 %3447, 255
  %3449 = uitofp i32 %3448 to float
  %3450 = fmul fast float %3449, 0x3F70101020000000
  %3451 = add i32 %51, 268
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = lshr i32 %3453, 24
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3455, 0x3F70101020000000
  %3457 = and i32 %3453, 255
  %3458 = uitofp i32 %3457 to float
  %3459 = fmul fast float %3458, 0x3F70101020000000
  %3460 = lshr i32 %3453, 8
  %3461 = and i32 %3460, 255
  %3462 = uitofp i32 %3461 to float
  %3463 = fmul fast float %3462, 0x3F70101020000000
  %3464 = lshr i32 %3453, 16
  %3465 = and i32 %3464, 255
  %3466 = uitofp i32 %3465 to float
  %3467 = fmul fast float %3466, 0x3F70101020000000
  %3468 = bitcast float %3392 to i32
  %3469 = ashr i32 %3468, 1
  %3470 = sub nsw i32 1597463174, %3469
  %3471 = bitcast i32 %3470 to float
  %3472 = fmul fast float %3392, 5.000000e-01
  %3473 = fmul fast float %3471, %3471
  %3474 = fmul fast float %3473, %3472
  %3475 = fsub fast float 1.500000e+00, %3474
  %3476 = fmul fast float %3471, %3392
  %3477 = fmul fast float %3476, %3475
  %3478 = bitcast float %3393 to i32
  %3479 = ashr i32 %3478, 1
  %3480 = sub nsw i32 1597463174, %3479
  %3481 = bitcast i32 %3480 to float
  %3482 = fmul fast float %3393, 5.000000e-01
  %3483 = fmul fast float %3481, %3481
  %3484 = fmul fast float %3483, %3482
  %3485 = fsub fast float 1.500000e+00, %3484
  %3486 = fmul fast float %3481, %3393
  %3487 = fmul fast float %3486, %3485
  %3488 = bitcast float %3394 to i32
  %3489 = ashr i32 %3488, 1
  %3490 = sub nsw i32 1597463174, %3489
  %3491 = bitcast i32 %3490 to float
  %3492 = fmul fast float %3394, 5.000000e-01
  %3493 = fmul fast float %3491, %3491
  %3494 = fmul fast float %3493, %3492
  %3495 = fsub fast float 1.500000e+00, %3494
  %3496 = fmul fast float %3491, %3394
  %3497 = fmul fast float %3496, %3495
  %3498 = fsub fast float %3477, %3459
  %3499 = fsub fast float %3487, %3463
  %3500 = fsub fast float %3497, %3467
  %3501 = fmul fast float %3498, %3427
  %3502 = fmul fast float %3499, %3429
  %3503 = fmul fast float %3500, %3434
  %3504 = fadd fast float %3501, %3442
  %3505 = fadd fast float %3502, %3446
  %3506 = fadd fast float %3503, %3450
  %3507 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3508 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3509 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3510 = fmul fast float %3507, %3507
  %3511 = fmul fast float %3508, %3508
  %3512 = fmul fast float %3509, %3509
  %3513 = fsub fast float %3510, %3392
  %3514 = fsub fast float %3511, %3393
  %3515 = fsub fast float %3512, %3394
  %3516 = fmul fast float %3513, %3417
  %3517 = fmul fast float %3514, %3417
  %3518 = fmul fast float %3515, %3417
  %3519 = fadd fast float %3516, %3392
  %3520 = fadd fast float %3517, %3393
  %3521 = fadd fast float %3518, %3394
  %3522 = fadd fast float %3439, %3403
  %3523 = fsub fast float %3522, %3456
  %3524 = call float @dx.op.unary.f32(i32 7, float %3523)  ; Saturate(value)
  %3525 = fsub fast float %3524, %3403
  %3526 = fmul fast float %3525, %3417
  %3527 = fadd fast float %3526, %3403
  br label %3581

; <label>:3528                                    ; preds = %3416
  %3529 = and i32 %3419, 134217728
  %3530 = icmp eq i32 %3529, 0
  br i1 %3530, label %3565, label %3531

; <label>:3531                                    ; preds = %3528
  %3532 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %3533 = call float @dx.op.unary.f32(i32 24, float %602)  ; Sqrt(value)
  %3534 = call float @dx.op.unary.f32(i32 24, float %603)  ; Sqrt(value)
  %3535 = fadd fast float %3532, -5.000000e-01
  %3536 = fadd fast float %3533, -5.000000e-01
  %3537 = fadd fast float %3534, -5.000000e-01
  %3538 = fmul fast float %3535, %3417
  %3539 = fmul fast float %3536, %3417
  %3540 = fmul fast float %3537, %3417
  %3541 = fadd fast float %3538, 5.000000e-01
  %3542 = fadd fast float %3539, 5.000000e-01
  %3543 = fadd fast float %3540, 5.000000e-01
  %3544 = call float @dx.op.unary.f32(i32 24, float %3392)  ; Sqrt(value)
  %3545 = call float @dx.op.unary.f32(i32 24, float %3393)  ; Sqrt(value)
  %3546 = call float @dx.op.unary.f32(i32 24, float %3394)  ; Sqrt(value)
  %3547 = fmul fast float %3541, 2.000000e+00
  %3548 = fsub fast float 1.000000e+00, %3547
  %3549 = fmul fast float %3548, %3544
  %3550 = fadd fast float %3549, %3547
  %3551 = fmul fast float %3550, %3544
  %3552 = fmul fast float %3542, 2.000000e+00
  %3553 = fsub fast float 1.000000e+00, %3552
  %3554 = fmul fast float %3553, %3545
  %3555 = fadd fast float %3554, %3552
  %3556 = fmul fast float %3555, %3545
  %3557 = fmul fast float %3543, 2.000000e+00
  %3558 = fsub fast float 1.000000e+00, %3557
  %3559 = fmul fast float %3558, %3546
  %3560 = fadd fast float %3559, %3557
  %3561 = fmul fast float %3560, %3546
  %3562 = fmul fast float %3551, %3551
  %3563 = fmul fast float %3556, %3556
  %3564 = fmul fast float %3561, %3561
  br label %3581

; <label>:3565                                    ; preds = %3528
  %3566 = fmul fast float %601, %601
  %3567 = fmul fast float %602, %602
  %3568 = fmul fast float %603, %603
  %3569 = fadd fast float %3566, -1.000000e+00
  %3570 = fadd fast float %3567, -1.000000e+00
  %3571 = fadd fast float %3568, -1.000000e+00
  %3572 = fmul fast float %3417, %3569
  %3573 = fmul fast float %3417, %3570
  %3574 = fmul fast float %3417, %3571
  %3575 = fadd fast float %3572, 1.000000e+00
  %3576 = fadd fast float %3573, 1.000000e+00
  %3577 = fadd fast float %3574, 1.000000e+00
  %3578 = fmul fast float %3575, %3392
  %3579 = fmul fast float %3576, %3393
  %3580 = fmul fast float %3577, %3394
  br label %3581

; <label>:3581                                    ; preds = %3565, %3531, %3422, %3378
  %3582 = phi float [ %3527, %3422 ], [ %3403, %3531 ], [ %3403, %3565 ], [ 0x3FA23C0BE0000000, %3378 ]
  %3583 = phi float [ %3519, %3422 ], [ %3562, %3531 ], [ %3578, %3565 ], [ 1.000000e+00, %3378 ]
  %3584 = phi float [ %3520, %3422 ], [ %3563, %3531 ], [ %3579, %3565 ], [ 1.000000e+00, %3378 ]
  %3585 = phi float [ %3521, %3422 ], [ %3564, %3531 ], [ %3580, %3565 ], [ 1.000000e+00, %3378 ]
  %3586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.i32 %3586, 1
  %3588 = and i32 %3587, 1
  %3589 = icmp ne i32 %3588, 0
  %3590 = add i32 %51, 356
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = and i32 %3592, 32
  %3594 = icmp ne i32 %3593, 0
  %3595 = and i1 %3589, %3594
  %3596 = select i1 %3595, float 1.000000e+00, float %3583
  %3597 = select i1 %3595, float 0x3FD3333340000000, float %3584
  %3598 = select i1 %3595, float 0x3FD3333340000000, float %3585
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = and i32 %3600, 32
  %3602 = icmp eq i32 %3601, 0
  br i1 %3602, label %3675, label %3603

; <label>:3603                                    ; preds = %3581
  %3604 = add i32 %51, 140
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %51, 404
  %3608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.i32 %3608, 0
  %3610 = add i32 %3609, 0
  %3611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3611, %dx.types.Handle %103, float %3303, float %3304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = and i32 %3606, 255
  %3618 = uitofp i32 %3617 to float
  %3619 = lshr i32 %3606, 8
  %3620 = and i32 %3619, 255
  %3621 = uitofp i32 %3620 to float
  %3622 = lshr i32 %3606, 16
  %3623 = and i32 %3622, 255
  %3624 = uitofp i32 %3623 to float
  %3625 = fmul fast float %3624, 0x3F70101000000000
  %3626 = fmul fast float %3613, %3618
  %3627 = fadd fast float %3626, %3621
  %3628 = fmul fast float %3627, 0x3F70101000000000
  %3629 = fadd fast float %3614, -5.000000e-01
  %3630 = fadd fast float %3616, -5.000000e-01
  %3631 = fmul fast float %3629, %3625
  %3632 = fmul fast float %3630, %3625
  %3633 = fadd fast float %3631, 5.000000e-01
  %3634 = fadd fast float %3632, 5.000000e-01
  %3635 = fmul fast float %3633, 2.000000e+00
  %3636 = fadd fast float %3635, -1.000000e+00
  %3637 = fmul fast float %3634, 2.000000e+00
  %3638 = fadd fast float %3637, -1.000000e+00
  %3639 = fadd fast float %3636, %3638
  %3640 = fmul fast float %3639, 5.000000e-01
  %3641 = fsub fast float %3636, %3638
  %3642 = fmul fast float %3641, 5.000000e-01
  %3643 = call float @dx.op.unary.f32(i32 6, float %3640)  ; FAbs(value)
  %3644 = fsub fast float 1.000000e+00, %3643
  %3645 = call float @dx.op.unary.f32(i32 6, float %3642)  ; FAbs(value)
  %3646 = fsub fast float %3644, %3645
  %3647 = call float @dx.op.dot3.f32(i32 55, float %3640, float %3642, float %3646, float %3640, float %3642, float %3646)  ; Dot3(ax,ay,az,bx,by,bz)
  %3648 = call float @dx.op.unary.f32(i32 25, float %3647)  ; Rsqrt(value)
  %3649 = fmul fast float %3640, %3648
  %3650 = fmul fast float %3642, %3648
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = and i32 %3652, 67108864
  %3654 = icmp eq i32 %3653, 0
  br i1 %3654, label %3671, label %3655

; <label>:3655                                    ; preds = %3603
  %3656 = add i32 %51, 328
  %3657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.i32 %3657, 0
  %3659 = and i32 %3658, 65535
  %3660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3659)  ; LegacyF16ToF32(value)
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, 65535
  %3664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3663)  ; LegacyF16ToF32(value)
  %3665 = lshr i32 %3658, 16
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = fsub fast float %3628, %3666
  %3668 = fmul fast float %3667, %3660
  %3669 = fadd fast float %3668, %3664
  %3670 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  br label %3671

; <label>:3671                                    ; preds = %3655, %3603
  %3672 = phi float [ %3670, %3655 ], [ %3628, %3603 ]
  %3673 = call float @dx.op.dot2.f32(i32 54, float %3649, float %3650, float %3207, float %3208)  ; Dot2(ax,ay,bx,by)
  %3674 = call float @dx.op.dot2.f32(i32 54, float %3649, float %3650, float %3209, float %3210)  ; Dot2(ax,ay,bx,by)
  br label %3675

; <label>:3675                                    ; preds = %3671, %3581
  %3676 = phi float [ %3672, %3671 ], [ 0x3FD6666660000000, %3581 ]
  %3677 = phi float [ %3673, %3671 ], [ 0.000000e+00, %3581 ]
  %3678 = phi float [ %3674, %3671 ], [ 0.000000e+00, %3581 ]
  %3679 = phi float [ %3615, %3671 ], [ 1.000000e+00, %3581 ]
  %3680 = add i32 %51, 208
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = lshr i32 %3682, 22
  %3684 = shl nuw nsw i32 %3683, 5
  %3685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3684)  ; LegacyF16ToF32(value)
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = and i32 %3687, 64
  %3689 = icmp eq i32 %3688, 0
  br i1 %3689, label %3723, label %3690

; <label>:3690                                    ; preds = %3675
  %3691 = add i32 %51, 420
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = add i32 %3693, 0
  %3695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.i32 %3696, 0
  %3698 = and i32 %3697, 131072
  %3699 = icmp eq i32 %3698, 0
  %3700 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3695, %dx.types.Handle %103, float %3303, float %3304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3701 = extractvalue %dx.types.ResRet.f32 %3700, 0
  %3702 = extractvalue %dx.types.ResRet.f32 %3700, 1
  %3703 = extractvalue %dx.types.ResRet.f32 %3700, 2
  %3704 = fmul fast float %584, %3701
  %3705 = fmul fast float %585, %3702
  %3706 = fmul fast float %586, %3703
  br i1 %3699, label %3713, label %3707

; <label>:3707                                    ; preds = %3690
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = fmul fast float %3709, %3704
  %3711 = fmul fast float %3709, %3705
  %3712 = fmul fast float %3709, %3706
  br label %3713

; <label>:3713                                    ; preds = %3707, %3690
  %3714 = phi float [ %3710, %3707 ], [ %3704, %3690 ]
  %3715 = phi float [ %3711, %3707 ], [ %3705, %3690 ]
  %3716 = phi float [ %3712, %3707 ], [ %3706, %3690 ]
  %3717 = fmul fast float %3714, %3685
  %3718 = select i1 %252, float %3717, float %3714
  %3719 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3715, float %3716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3720 = select i1 %252, float 0.000000e+00, float %3714
  %3721 = select i1 %252, float %3719, float %3715
  %3722 = select i1 %252, float 0.000000e+00, float %3716
  br label %3723

; <label>:3723                                    ; preds = %3713, %3675
  %3724 = phi float [ %3720, %3713 ], [ 0.000000e+00, %3675 ]
  %3725 = phi float [ %3721, %3713 ], [ 0.000000e+00, %3675 ]
  %3726 = phi float [ %3722, %3713 ], [ 0.000000e+00, %3675 ]
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = and i32 %3728, 1024
  %3730 = icmp eq i32 %3729, 0
  br i1 %3730, label %3761, label %3731

; <label>:3731                                    ; preds = %3723
  %3732 = add i32 %51, 200
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = and i32 %3734, 255
  %3736 = uitofp i32 %3735 to float
  %3737 = fmul fast float %3736, 0x3F70101020000000
  %3738 = lshr i32 %3734, 8
  %3739 = and i32 %3738, 255
  %3740 = uitofp i32 %3739 to float
  %3741 = fmul fast float %3740, 0x3F70101020000000
  %3742 = lshr i32 %3734, 16
  %3743 = and i32 %3742, 255
  %3744 = uitofp i32 %3743 to float
  %3745 = fmul fast float %3744, 0x3F70101020000000
  %3746 = fmul fast float %3737, %3737
  %3747 = fmul fast float %3741, %3741
  %3748 = fmul fast float %3745, %3745
  %3749 = add i32 %51, 488
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = add i32 %3751, 0
  %3753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3754 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3753, %dx.types.Handle %104, float %3303, float %3304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3755 = extractvalue %dx.types.ResRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.ResRet.f32 %3754, 1
  %3757 = extractvalue %dx.types.ResRet.f32 %3754, 2
  %3758 = fmul fast float %3746, %3755
  %3759 = fmul fast float %3747, %3756
  %3760 = fmul fast float %3748, %3757
  br label %3761

; <label>:3761                                    ; preds = %3731, %3723
  %3762 = phi float [ %3758, %3731 ], [ 0.000000e+00, %3723 ]
  %3763 = phi float [ %3759, %3731 ], [ 0.000000e+00, %3723 ]
  %3764 = phi float [ %3760, %3731 ], [ 0.000000e+00, %3723 ]
  %3765 = fcmp fast ogt float %3762, 0.000000e+00
  %3766 = fcmp fast ogt float %3763, 0.000000e+00
  %3767 = fcmp fast ogt float %3764, 0.000000e+00
  %3768 = call float @dx.op.unary.f32(i32 23, float %3762)  ; Log(value)
  %3769 = call float @dx.op.unary.f32(i32 23, float %3763)  ; Log(value)
  %3770 = call float @dx.op.unary.f32(i32 23, float %3764)  ; Log(value)
  %3771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.i32 %3771, 0
  %3773 = lshr i32 %3772, 7
  %3774 = and i32 %3773, 32752
  %3775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3774)  ; LegacyF16ToF32(value)
  %3776 = fmul fast float %3768, 0xBFE62E4300000000
  %3777 = fmul fast float %3776, %3775
  %3778 = fmul fast float %3769, 0xBFE62E4300000000
  %3779 = fmul fast float %3778, %3775
  %3780 = fmul fast float %3770, 0xBFE62E4300000000
  %3781 = fmul fast float %3780, %3775
  %3782 = select i1 %3765, float %3777, float 1.270000e+02
  %3783 = select i1 %3766, float %3779, float 1.270000e+02
  %3784 = select i1 %3767, float %3781, float 1.270000e+02
  %3785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.i32 %3785, 0
  %3787 = and i32 %3786, 10240
  %3788 = icmp eq i32 %3787, 0
  br i1 %3788, label %3833, label %3789

; <label>:3789                                    ; preds = %3761
  %3790 = add i32 %51, 504
  %3791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3790, i32 undef)  ; BufferLoad(srv,index,wot)
  %3792 = extractvalue %dx.types.ResRet.i32 %3791, 0
  %3793 = add i32 %3792, 0
  %3794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3794, %dx.types.Handle %104, float %3303, float %3304, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.i32 %3798, 0
  %3800 = and i32 %3799, 1048576
  %3801 = icmp ne i32 %3800, 0
  %3802 = and i32 %3799, 8192
  %3803 = icmp eq i32 %3802, 0
  br i1 %3803, label %3819, label %3804

; <label>:3804                                    ; preds = %3789
  %3805 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3806 = select i1 %3801, float %3805, float %3796
  %3807 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3808 = select i1 %3801, float %3807, float %3796
  %3809 = add i32 %51, 144
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = lshr i32 %3811, 16
  %3813 = and i32 %3812, 255
  %3814 = uitofp i32 %3813 to float
  %3815 = fmul fast float %3814, 0x3F80101020000000
  %3816 = fmul fast float %3815, %3808
  %3817 = fmul fast float %3815, %3796
  %3818 = fmul fast float %3815, %3806
  br label %3819

; <label>:3819                                    ; preds = %3804, %3789
  %3820 = phi float [ %3816, %3804 ], [ 0.000000e+00, %3789 ]
  %3821 = phi float [ %3817, %3804 ], [ 0.000000e+00, %3789 ]
  %3822 = phi float [ %3818, %3804 ], [ 0.000000e+00, %3789 ]
  %3823 = and i32 %3799, 2048
  %3824 = icmp eq i32 %3823, 0
  br i1 %3824, label %3833, label %3825

; <label>:3825                                    ; preds = %3819
  %3826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.i32 %3826, 0
  %3828 = shl i32 %3827, 4
  %3829 = and i32 %3828, 32752
  %3830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3829)  ; LegacyF16ToF32(value)
  %3831 = fmul fast float %3830, %3797
  %3832 = call float @dx.op.binary.f32(i32 35, float %3831, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3833

; <label>:3833                                    ; preds = %3825, %3819, %3761
  %3834 = phi float [ %3820, %3825 ], [ %3820, %3819 ], [ 0.000000e+00, %3761 ]
  %3835 = phi float [ %3821, %3825 ], [ %3821, %3819 ], [ 0.000000e+00, %3761 ]
  %3836 = phi float [ %3822, %3825 ], [ %3822, %3819 ], [ 0.000000e+00, %3761 ]
  %3837 = phi float [ %3832, %3825 ], [ 0x3F70101020000000, %3819 ], [ 0x3F70101020000000, %3761 ]
  br i1 %3195, label %3838, label %3873

; <label>:3838                                    ; preds = %3833
  %3839 = fmul fast float %3837, 2.000000e+00
  %3840 = fcmp fast olt float %3782, 1.270000e+02
  %3841 = fcmp fast olt float %3783, 1.270000e+02
  %3842 = fcmp fast olt float %3784, 1.270000e+02
  %3843 = fmul fast float %3782, 0xBFF7154760000000
  %3844 = fmul fast float %3843, %3839
  %3845 = fmul fast float %3783, 0xBFF7154760000000
  %3846 = fmul fast float %3845, %3839
  %3847 = fmul fast float %3784, 0xBFF7154760000000
  %3848 = fmul fast float %3847, %3839
  %3849 = call float @dx.op.unary.f32(i32 21, float %3844)  ; Exp(value)
  %3850 = call float @dx.op.unary.f32(i32 21, float %3846)  ; Exp(value)
  %3851 = call float @dx.op.unary.f32(i32 21, float %3848)  ; Exp(value)
  %3852 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3853 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3854 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3855 = fadd fast float %3852, -1.000000e+00
  %3856 = select i1 %3840, float %3855, float -1.000000e+00
  %3857 = fadd fast float %3853, -1.000000e+00
  %3858 = select i1 %3841, float %3857, float -1.000000e+00
  %3859 = fadd fast float %3854, -1.000000e+00
  %3860 = select i1 %3842, float %3859, float -1.000000e+00
  %3861 = fmul fast float %3856, %3376
  %3862 = fmul fast float %3858, %3376
  %3863 = fmul fast float %3860, %3376
  %3864 = fadd fast float %3861, 1.000000e+00
  %3865 = fadd fast float %3862, 1.000000e+00
  %3866 = fadd fast float %3863, 1.000000e+00
  %3867 = fmul fast float %3864, %3178
  %3868 = fmul fast float %3865, %3179
  %3869 = fmul fast float %3866, %3180
  %3870 = fmul fast float %3864, %3181
  %3871 = fmul fast float %3865, %3182
  %3872 = fmul fast float %3866, %3183
  br label %3873

; <label>:3873                                    ; preds = %3838, %3833
  %3874 = phi float [ %3867, %3838 ], [ %3178, %3833 ]
  %3875 = phi float [ %3868, %3838 ], [ %3179, %3833 ]
  %3876 = phi float [ %3869, %3838 ], [ %3180, %3833 ]
  %3877 = phi float [ %3870, %3838 ], [ %3181, %3833 ]
  %3878 = phi float [ %3871, %3838 ], [ %3182, %3833 ]
  %3879 = phi float [ %3872, %3838 ], [ %3183, %3833 ]
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = and i32 %3881, 3
  %3883 = icmp eq i32 %3882, 3
  br i1 %3883, label %3959, label %3884

; <label>:3884                                    ; preds = %3873
  %3885 = and i32 %3881, 16
  %3886 = icmp ne i32 %3885, 0
  %3887 = select i1 %3886, float %3376, float 0.000000e+00
  %3888 = icmp eq i32 %3882, 0
  br i1 %3888, label %3889, label %3914

; <label>:3889                                    ; preds = %3884
  %3890 = and i32 %3881, 64
  %3891 = icmp ne i32 %3890, 0
  %3892 = select i1 %3891, float %3376, float 0.000000e+00
  %3893 = fsub fast float %3596, %3874
  %3894 = fsub fast float %3597, %3875
  %3895 = fsub fast float %3598, %3876
  %3896 = fmul fast float %3887, %3893
  %3897 = fmul fast float %3887, %3894
  %3898 = fmul fast float %3887, %3895
  %3899 = fadd fast float %3896, %3874
  %3900 = fadd fast float %3897, %3875
  %3901 = fadd fast float %3898, %3876
  %3902 = fsub fast float %3582, %3190
  %3903 = fmul fast float %3887, %3902
  %3904 = fadd fast float %3903, %3190
  %3905 = fsub fast float %3724, %3877
  %3906 = fsub fast float %3725, %3878
  %3907 = fsub fast float %3726, %3879
  %3908 = fmul fast float %3892, %3905
  %3909 = fmul fast float %3892, %3906
  %3910 = fmul fast float %3892, %3907
  %3911 = fadd fast float %3908, %3877
  %3912 = fadd fast float %3909, %3878
  %3913 = fadd fast float %3910, %3879
  br label %3959

; <label>:3914                                    ; preds = %3884
  %3915 = icmp eq i32 %3882, 1
  br i1 %3915, label %3916, label %3929

; <label>:3916                                    ; preds = %3914
  %3917 = fadd fast float %3596, -1.000000e+00
  %3918 = fadd fast float %3597, -1.000000e+00
  %3919 = fadd fast float %3598, -1.000000e+00
  %3920 = fmul fast float %3887, %3917
  %3921 = fmul fast float %3887, %3918
  %3922 = fmul fast float %3887, %3919
  %3923 = fadd fast float %3920, 1.000000e+00
  %3924 = fadd fast float %3921, 1.000000e+00
  %3925 = fadd fast float %3922, 1.000000e+00
  %3926 = fmul fast float %3923, %3874
  %3927 = fmul fast float %3924, %3875
  %3928 = fmul fast float %3925, %3876
  br label %3959

; <label>:3929                                    ; preds = %3914
  %3930 = icmp eq i32 %3882, 2
  br i1 %3930, label %3931, label %3959

; <label>:3931                                    ; preds = %3929
  %3932 = call float @dx.op.unary.f32(i32 24, float %3596)  ; Sqrt(value)
  %3933 = call float @dx.op.unary.f32(i32 24, float %3597)  ; Sqrt(value)
  %3934 = call float @dx.op.unary.f32(i32 24, float %3598)  ; Sqrt(value)
  %3935 = fadd fast float %3932, -5.000000e-01
  %3936 = fadd fast float %3933, -5.000000e-01
  %3937 = fadd fast float %3934, -5.000000e-01
  %3938 = fmul fast float %3935, %3887
  %3939 = fmul fast float %3936, %3887
  %3940 = fmul fast float %3937, %3887
  %3941 = fadd fast float %3938, 5.000000e-01
  %3942 = fadd fast float %3939, 5.000000e-01
  %3943 = fadd fast float %3940, 5.000000e-01
  %3944 = fmul fast float %3941, 2.000000e+00
  %3945 = fsub fast float 1.000000e+00, %3944
  %3946 = fmul fast float %3945, %3874
  %3947 = fadd fast float %3946, %3944
  %3948 = fmul fast float %3947, %3874
  %3949 = fmul fast float %3942, 2.000000e+00
  %3950 = fsub fast float 1.000000e+00, %3949
  %3951 = fmul fast float %3950, %3875
  %3952 = fadd fast float %3951, %3949
  %3953 = fmul fast float %3952, %3875
  %3954 = fmul fast float %3943, 2.000000e+00
  %3955 = fsub fast float 1.000000e+00, %3954
  %3956 = fmul fast float %3955, %3876
  %3957 = fadd fast float %3956, %3954
  %3958 = fmul fast float %3957, %3876
  br label %3959

; <label>:3959                                    ; preds = %3931, %3929, %3916, %3889, %3873
  %3960 = phi float [ %3874, %3873 ], [ %3948, %3931 ], [ %3874, %3929 ], [ %3926, %3916 ], [ %3899, %3889 ]
  %3961 = phi float [ %3875, %3873 ], [ %3953, %3931 ], [ %3875, %3929 ], [ %3927, %3916 ], [ %3900, %3889 ]
  %3962 = phi float [ %3876, %3873 ], [ %3958, %3931 ], [ %3876, %3929 ], [ %3928, %3916 ], [ %3901, %3889 ]
  %3963 = phi float [ %3877, %3873 ], [ %3877, %3931 ], [ %3877, %3929 ], [ %3877, %3916 ], [ %3911, %3889 ]
  %3964 = phi float [ %3878, %3873 ], [ %3878, %3931 ], [ %3878, %3929 ], [ %3878, %3916 ], [ %3912, %3889 ]
  %3965 = phi float [ %3879, %3873 ], [ %3879, %3931 ], [ %3879, %3929 ], [ %3879, %3916 ], [ %3913, %3889 ]
  %3966 = phi float [ %3190, %3873 ], [ %3190, %3931 ], [ %3190, %3929 ], [ %3190, %3916 ], [ %3904, %3889 ]
  %3967 = and i32 %3881, 12
  %3968 = icmp eq i32 %3967, 12
  br i1 %3968, label %4099, label %3969

; <label>:3969                                    ; preds = %3959
  %3970 = and i32 %3881, 2097184
  %3971 = icmp eq i32 %3970, 2097184
  %3972 = select i1 %3971, float %3376, float 0.000000e+00
  %3973 = and i32 %3881, 4194336
  %3974 = icmp eq i32 %3973, 4194336
  %3975 = select i1 %3974, float %3376, float 0.000000e+00
  %3976 = and i32 %3881, 8388640
  %3977 = icmp eq i32 %3976, 8388640
  %3978 = select i1 %3977, float %3376, float 0.000000e+00
  %3979 = and i32 %3881, 1024
  %3980 = icmp ne i32 %3979, 0
  %3981 = select i1 %3980, float %3376, float 0.000000e+00
  %3982 = and i32 %3881, 2048
  %3983 = icmp ne i32 %3982, 0
  %3984 = select i1 %3983, float %3376, float 0.000000e+00
  %3985 = and i32 %3881, 8192
  %3986 = icmp ne i32 %3985, 0
  %3987 = select i1 %3986, float %3376, float 0.000000e+00
  %3988 = icmp eq i32 %3967, 0
  br i1 %3988, label %3989, label %4023

; <label>:3989                                    ; preds = %3969
  %3990 = fsub fast float %3677, %3176
  %3991 = fsub fast float %3678, %3177
  %3992 = fmul fast float %3972, %3990
  %3993 = fmul fast float %3972, %3991
  %3994 = fadd fast float %3992, %3176
  %3995 = fadd fast float %3993, %3177
  %3996 = fsub fast float %3679, %3192
  %3997 = fmul fast float %3975, %3996
  %3998 = fadd fast float %3997, %3192
  %3999 = fsub fast float %3676, %3191
  %4000 = fmul fast float %3978, %3999
  %4001 = fadd fast float %4000, %3191
  %4002 = fsub fast float %3782, %3187
  %4003 = fsub fast float %3783, %3188
  %4004 = fsub fast float %3784, %3189
  %4005 = fmul fast float %3981, %4002
  %4006 = fmul fast float %3981, %4003
  %4007 = fmul fast float %3981, %4004
  %4008 = fadd fast float %4005, %3187
  %4009 = fadd fast float %4006, %3188
  %4010 = fadd fast float %4007, %3189
  %4011 = fsub fast float %3837, %3193
  %4012 = fmul fast float %3984, %4011
  %4013 = fadd fast float %4012, %3193
  %4014 = fsub fast float %3834, %3184
  %4015 = fsub fast float %3835, %3185
  %4016 = fsub fast float %3836, %3186
  %4017 = fmul fast float %3987, %4014
  %4018 = fmul fast float %3987, %4015
  %4019 = fmul fast float %3987, %4016
  %4020 = fadd fast float %4017, %3184
  %4021 = fadd fast float %4018, %3185
  %4022 = fadd fast float %4019, %3186
  br label %4099

; <label>:4023                                    ; preds = %3969
  %4024 = icmp eq i32 %3967, 4
  br i1 %4024, label %4025, label %4071

; <label>:4025                                    ; preds = %4023
  %4026 = fmul fast float %3972, %3677
  %4027 = fmul fast float %3972, %3678
  %4028 = fadd fast float %4026, %3176
  %4029 = fadd fast float %4027, %3177
  %4030 = call float @dx.op.binary.f32(i32 36, float %3192, float %3679)  ; FMin(a,b)
  %4031 = fsub fast float %4030, %3192
  %4032 = fmul fast float %4031, %3975
  %4033 = fadd fast float %4032, %3192
  %4034 = fadd fast float %3676, %3191
  %4035 = fmul fast float %4034, 0x3FF337FAE0000000
  %4036 = fmul fast float %3191, %3191
  %4037 = fmul fast float %3676, %3676
  %4038 = fadd fast float %4037, %4036
  %4039 = fmul fast float %4038, 0x3FE5152B00000000
  %4040 = fmul fast float %3191, 0xBFCC1F85E0000000
  %4041 = fmul fast float %4040, %3676
  %4042 = fadd fast float %4041, 0xBFE1363700000000
  %4043 = fadd fast float %4042, %4035
  %4044 = fsub fast float %4043, %4039
  %4045 = fmul fast float %4034, 0x3FBA6F0D00000000
  %4046 = fmul fast float %4038, 0x3FD0432880000000
  %4047 = fmul fast float %3191, 0xBFEF110800000000
  %4048 = fmul fast float %4047, %3676
  %4049 = fadd fast float %4048, 1.000000e+00
  %4050 = fsub fast float %4049, %4045
  %4051 = fadd fast float %4050, %4046
  %4052 = fdiv fast float %4044, %4051
  %4053 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4054 = fsub fast float %4053, %3191
  %4055 = fmul fast float %4054, %3978
  %4056 = fadd fast float %4055, %3191
  %4057 = fmul fast float %3981, %3782
  %4058 = fmul fast float %3981, %3783
  %4059 = fmul fast float %3981, %3784
  %4060 = fadd fast float %4057, %3187
  %4061 = fadd fast float %4058, %3188
  %4062 = fadd fast float %4059, %3189
  %4063 = fmul fast float %3984, %3837
  %4064 = fadd fast float %4063, %3193
  %4065 = fmul fast float %3987, %3834
  %4066 = fmul fast float %3987, %3835
  %4067 = fmul fast float %3987, %3836
  %4068 = fadd fast float %4065, %3184
  %4069 = fadd fast float %4066, %3185
  %4070 = fadd fast float %4067, %3186
  br label %4099

; <label>:4071                                    ; preds = %4023
  %4072 = icmp eq i32 %3967, 8
  br i1 %4072, label %4073, label %4099

; <label>:4073                                    ; preds = %4071
  %4074 = fmul fast float %3972, %3677
  %4075 = fmul fast float %3972, %3678
  %4076 = fadd fast float %4074, %3176
  %4077 = fadd fast float %4075, %3177
  %4078 = call float @dx.op.binary.f32(i32 36, float %3192, float %3679)  ; FMin(a,b)
  %4079 = fsub fast float %4078, %3192
  %4080 = fmul fast float %4079, %3975
  %4081 = fadd fast float %4080, %3192
  %4082 = fsub fast float %3676, %3191
  %4083 = fmul fast float %3978, %4082
  %4084 = fadd fast float %4083, %3191
  %4085 = fmul fast float %3981, %3782
  %4086 = fmul fast float %3981, %3783
  %4087 = fmul fast float %3981, %3784
  %4088 = fadd fast float %4085, %3187
  %4089 = fadd fast float %4086, %3188
  %4090 = fadd fast float %4087, %3189
  %4091 = fmul fast float %3984, %3837
  %4092 = fadd fast float %4091, %3193
  %4093 = fmul fast float %3987, %3834
  %4094 = fmul fast float %3987, %3835
  %4095 = fmul fast float %3987, %3836
  %4096 = fadd fast float %4093, %3184
  %4097 = fadd fast float %4094, %3185
  %4098 = fadd fast float %4095, %3186
  br label %4099

; <label>:4099                                    ; preds = %4073, %4071, %4025, %3989, %3959, %3375, %3194, %3175
  %4100 = phi float [ %3176, %3959 ], [ %3176, %3375 ], [ %3176, %3175 ], [ %3176, %3194 ], [ %3994, %3989 ], [ %4028, %4025 ], [ %3176, %4071 ], [ %4076, %4073 ]
  %4101 = phi float [ %3177, %3959 ], [ %3177, %3375 ], [ %3177, %3175 ], [ %3177, %3194 ], [ %3995, %3989 ], [ %4029, %4025 ], [ %3177, %4071 ], [ %4077, %4073 ]
  %4102 = phi float [ %3960, %3959 ], [ %3178, %3375 ], [ %3178, %3175 ], [ %3178, %3194 ], [ %3960, %3989 ], [ %3960, %4025 ], [ %3960, %4071 ], [ %3960, %4073 ]
  %4103 = phi float [ %3961, %3959 ], [ %3179, %3375 ], [ %3179, %3175 ], [ %3179, %3194 ], [ %3961, %3989 ], [ %3961, %4025 ], [ %3961, %4071 ], [ %3961, %4073 ]
  %4104 = phi float [ %3962, %3959 ], [ %3180, %3375 ], [ %3180, %3175 ], [ %3180, %3194 ], [ %3962, %3989 ], [ %3962, %4025 ], [ %3962, %4071 ], [ %3962, %4073 ]
  %4105 = phi float [ %3963, %3959 ], [ %3181, %3375 ], [ %3181, %3175 ], [ %3181, %3194 ], [ %3963, %3989 ], [ %3963, %4025 ], [ %3963, %4071 ], [ %3963, %4073 ]
  %4106 = phi float [ %3964, %3959 ], [ %3182, %3375 ], [ %3182, %3175 ], [ %3182, %3194 ], [ %3964, %3989 ], [ %3964, %4025 ], [ %3964, %4071 ], [ %3964, %4073 ]
  %4107 = phi float [ %3965, %3959 ], [ %3183, %3375 ], [ %3183, %3175 ], [ %3183, %3194 ], [ %3965, %3989 ], [ %3965, %4025 ], [ %3965, %4071 ], [ %3965, %4073 ]
  %4108 = phi float [ %3184, %3959 ], [ %3184, %3375 ], [ %3184, %3175 ], [ %3184, %3194 ], [ %4020, %3989 ], [ %4068, %4025 ], [ %3184, %4071 ], [ %4096, %4073 ]
  %4109 = phi float [ %3185, %3959 ], [ %3185, %3375 ], [ %3185, %3175 ], [ %3185, %3194 ], [ %4021, %3989 ], [ %4069, %4025 ], [ %3185, %4071 ], [ %4097, %4073 ]
  %4110 = phi float [ %3186, %3959 ], [ %3186, %3375 ], [ %3186, %3175 ], [ %3186, %3194 ], [ %4022, %3989 ], [ %4070, %4025 ], [ %3186, %4071 ], [ %4098, %4073 ]
  %4111 = phi float [ %3187, %3959 ], [ %3187, %3375 ], [ %3187, %3175 ], [ %3187, %3194 ], [ %4008, %3989 ], [ %4060, %4025 ], [ %3187, %4071 ], [ %4088, %4073 ]
  %4112 = phi float [ %3188, %3959 ], [ %3188, %3375 ], [ %3188, %3175 ], [ %3188, %3194 ], [ %4009, %3989 ], [ %4061, %4025 ], [ %3188, %4071 ], [ %4089, %4073 ]
  %4113 = phi float [ %3189, %3959 ], [ %3189, %3375 ], [ %3189, %3175 ], [ %3189, %3194 ], [ %4010, %3989 ], [ %4062, %4025 ], [ %3189, %4071 ], [ %4090, %4073 ]
  %4114 = phi float [ %3966, %3959 ], [ %3190, %3375 ], [ %3190, %3175 ], [ %3190, %3194 ], [ %3966, %3989 ], [ %3966, %4025 ], [ %3966, %4071 ], [ %3966, %4073 ]
  %4115 = phi float [ %3191, %3959 ], [ %3191, %3375 ], [ %3191, %3175 ], [ %3191, %3194 ], [ %4001, %3989 ], [ %4056, %4025 ], [ %3191, %4071 ], [ %4084, %4073 ]
  %4116 = phi float [ %3192, %3959 ], [ %3192, %3375 ], [ %3192, %3175 ], [ %3192, %3194 ], [ %3998, %3989 ], [ %4033, %4025 ], [ %3192, %4071 ], [ %4081, %4073 ]
  %4117 = phi float [ %3193, %3959 ], [ %3193, %3375 ], [ %3193, %3175 ], [ %3193, %3194 ], [ %4013, %3989 ], [ %4064, %4025 ], [ %3193, %4071 ], [ %4092, %4073 ]
  %4118 = and i32 %192, 65535
  %4119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4118)  ; LegacyF16ToF32(value)
  %4120 = lshr i32 %192, 16
  %4121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4120)  ; LegacyF16ToF32(value)
  %4122 = and i32 %193, 65535
  %4123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4122)  ; LegacyF16ToF32(value)
  %4124 = fmul fast float %4119, %4102
  %4125 = fmul fast float %4121, %4103
  %4126 = fmul fast float %4123, %4104
  %4127 = shl i32 %194, 4
  %4128 = and i32 %4127, 32752
  %4129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4128)  ; LegacyF16ToF32(value)
  %4130 = lshr i32 %194, 7
  %4131 = and i32 %4130, 32752
  %4132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4131)  ; LegacyF16ToF32(value)
  %4133 = lshr i32 %194, 22
  %4134 = shl nuw nsw i32 %4133, 5
  %4135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4134)  ; LegacyF16ToF32(value)
  %4136 = and i32 %195, 65535
  %4137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4136)  ; LegacyF16ToF32(value)
  %4138 = fmul fast float %4129, %4105
  %4139 = fmul fast float %4138, %4137
  %4140 = fmul fast float %4132, %4106
  %4141 = fmul fast float %4140, %4137
  %4142 = fmul fast float %4135, %4107
  %4143 = fmul fast float %4142, %4137
  %4144 = call float @dx.op.dot2.f32(i32 54, float %4100, float %4101, float %4100, float %4101)  ; Dot2(ax,ay,bx,by)
  %4145 = fmul fast float %4144, 0x3FE3333340000000
  %4146 = fsub fast float 1.000000e+00, %4145
  %4147 = call float @dx.op.dot3.f32(i32 55, float %4100, float %4101, float %4146, float %4100, float %4101, float %4146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4148 = call float @dx.op.unary.f32(i32 25, float %4147)  ; Rsqrt(value)
  %4149 = fmul fast float %4148, %4100
  %4150 = fmul fast float %4148, %4101
  %4151 = fmul fast float %4146, %4148
  %4152 = fmul fast float %4151, %114
  %4153 = fmul fast float %4151, %115
  %4154 = fmul fast float %4151, %116
  %4155 = fmul fast float %4149, %82
  %4156 = fmul fast float %4149, %83
  %4157 = fmul fast float %4149, %84
  %4158 = fadd fast float %4152, %4155
  %4159 = fadd fast float %4153, %4156
  %4160 = fadd fast float %4154, %4157
  %4161 = fmul fast float %126, %4150
  %4162 = fmul fast float %127, %4150
  %4163 = fmul fast float %128, %4150
  %4164 = fadd fast float %4158, %4161
  %4165 = fadd fast float %4159, %4162
  %4166 = fadd fast float %4160, %4163
  %4167 = call float @dx.op.dot3.f32(i32 55, float %4164, float %4165, float %4166, float %4164, float %4165, float %4166)  ; Dot3(ax,ay,az,bx,by,bz)
  %4168 = call float @dx.op.unary.f32(i32 25, float %4167)  ; Rsqrt(value)
  %4169 = fmul fast float %4164, %4168
  %4170 = fmul fast float %4165, %4168
  %4171 = fmul fast float %4166, %4168
  %4172 = fadd fast float %4114, 0xBFB99999A0000000
  %4173 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4174 = fmul fast float %4173, 0x3FF1C71C80000000
  %4175 = call float @dx.op.binary.f32(i32 36, float %4114, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4176 = fsub fast float 1.000000e+00, %4174
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = fmul fast float %4177, %4124
  %4179 = fmul fast float %4177, %4125
  %4180 = fmul fast float %4177, %4126
  %4181 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4182 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4184 = fmul fast float %4174, %4124
  %4185 = fmul fast float %4174, %4125
  %4186 = fmul fast float %4174, %4126
  %4187 = fadd fast float %4184, %4175
  %4188 = fadd fast float %4185, %4175
  %4189 = fadd fast float %4186, %4175
  %4190 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4191 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = and i32 %4195, 1
  %4197 = icmp eq i32 %4196, 0
  br i1 %4197, label %4212, label %4198

; <label>:4198                                    ; preds = %4099
  %4199 = call float @dx.op.binary.f32(i32 35, float %4182, float %4183)  ; FMax(a,b)
  %4200 = call float @dx.op.binary.f32(i32 35, float %4181, float %4199)  ; FMax(a,b)
  %4201 = fcmp fast ogt float %4200, 0.000000e+00
  %4202 = bitcast float %4200 to i32
  %4203 = sub nsw i32 2129859010, %4202
  %4204 = bitcast i32 %4203 to float
  %4205 = select i1 %4201, float %4204, float 0.000000e+00
  %4206 = fmul fast float %4181, %4108
  %4207 = fmul fast float %4182, %4109
  %4208 = fmul fast float %4183, %4110
  %4209 = fmul fast float %4206, %4205
  %4210 = fmul fast float %4207, %4205
  %4211 = fmul fast float %4208, %4205
  br label %4212

; <label>:4212                                    ; preds = %4198, %4099
  %4213 = phi float [ %4209, %4198 ], [ %4108, %4099 ]
  %4214 = phi float [ %4210, %4198 ], [ %4109, %4099 ]
  %4215 = phi float [ %4211, %4198 ], [ %4110, %4099 ]
  %4216 = call float @dx.op.binary.f32(i32 36, float %4111, float 1.270000e+02)  ; FMin(a,b)
  %4217 = call float @dx.op.binary.f32(i32 36, float %4112, float 1.270000e+02)  ; FMin(a,b)
  %4218 = call float @dx.op.binary.f32(i32 36, float %4113, float 1.270000e+02)  ; FMin(a,b)
  %4219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.i32 %4219, 3
  %4221 = and i32 %4220, 8
  %4222 = icmp ne i32 %4221, 0
  %4223 = call float @dx.op.binary.f32(i32 35, float %4181, float %4124)  ; FMax(a,b)
  %4224 = call float @dx.op.binary.f32(i32 35, float %4182, float %4124)  ; FMax(a,b)
  %4225 = call float @dx.op.binary.f32(i32 35, float %4183, float %4124)  ; FMax(a,b)
  %4226 = call float @dx.op.dot3.f32(i32 55, float %4181, float %4182, float %4183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4227 = select i1 %252, float %4124, float %4181
  %4228 = select i1 %252, float %4226, float %4182
  %4229 = select i1 %252, float 1.000000e+00, float %4183
  %4230 = select i1 %4222, float %4223, float %4227
  %4231 = select i1 %4222, float %4224, float %4228
  %4232 = select i1 %4222, float %4225, float %4229
  %4233 = call float @dx.op.dot3.f32(i32 55, float %4213, float %4214, float %4215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4234 = select i1 %252, float %4233, float %4213
  %4235 = select i1 %252, float %4233, float %4214
  %4236 = select i1 %252, float %4233, float %4215
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.CBufRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.CBufRet.f32 %4237, 2
  %4241 = fadd fast float %4238, %186
  %4242 = fadd fast float %4239, %187
  %4243 = fadd fast float %4240, %188
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 0
  %4246 = extractvalue %dx.types.CBufRet.f32 %4244, 1
  %4247 = fsub fast float %4241, %4245
  %4248 = fsub fast float %4242, %4246
  %4249 = fmul fast float %4247, %4247
  %4250 = fmul fast float %4248, %4248
  %4251 = fadd fast float %4249, %4250
  %4252 = call float @dx.op.unary.f32(i32 24, float %4251)  ; Sqrt(value)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4244, 2
  %4254 = fcmp fast olt float %4252, %4253
  br i1 %4254, label %4255, label %4322

; <label>:4255                                    ; preds = %4212
  %4256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4256, 0
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 0
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.CBufRet.f32 %4256, 1
  %4263 = extractvalue %dx.types.CBufRet.f32 %4258, 1
  %4264 = extractvalue %dx.types.CBufRet.f32 %4260, 1
  %4265 = extractvalue %dx.types.CBufRet.f32 %4256, 3
  %4266 = extractvalue %dx.types.CBufRet.f32 %4258, 3
  %4267 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4268 = fadd fast float %4265, %4241
  %4269 = fadd fast float %4266, %4242
  %4270 = fadd fast float %4267, %4243
  %4271 = fmul fast float %4268, %4257
  %4272 = call float @dx.op.tertiary.f32(i32 46, float %4269, float %4259, float %4271)  ; FMad(a,b,c)
  %4273 = call float @dx.op.tertiary.f32(i32 46, float %4270, float %4261, float %4272)  ; FMad(a,b,c)
  %4274 = fmul fast float %4268, %4262
  %4275 = call float @dx.op.tertiary.f32(i32 46, float %4269, float %4263, float %4274)  ; FMad(a,b,c)
  %4276 = call float @dx.op.tertiary.f32(i32 46, float %4270, float %4264, float %4275)  ; FMad(a,b,c)
  %4277 = fsub fast float %4273, %4265
  %4278 = fsub fast float %4276, %4266
  %4279 = fsub fast float %4277, %4245
  %4280 = fadd fast float %4279, %4253
  %4281 = fsub fast float %4278, %4246
  %4282 = fadd fast float %4281, %4253
  %4283 = extractvalue %dx.types.CBufRet.f32 %4244, 3
  %4284 = fmul fast float %4280, %4283
  %4285 = fmul fast float %4282, %4283
  %4286 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4288 = fsub fast float 1.000000e+00, %4286
  %4289 = fsub fast float 1.000000e+00, %4287
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %4288, float %4289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = fcmp fast ugt float %4291, 0.000000e+00
  br i1 %4292, label %4293, label %4596

; <label>:4293                                    ; preds = %4255
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 2
  %4296 = fmul fast float %4295, %4291
  %4297 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4298 = fadd fast float %4297, %4296
  %4299 = extractvalue %dx.types.CBufRet.f32 %4260, 2
  %4300 = fadd fast float %4298, %4267
  %4301 = fmul fast float %4273, %4261
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4276, float %4264, float %4301)  ; FMad(a,b,c)
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4299, float %4302)  ; FMad(a,b,c)
  %4304 = fsub fast float %4303, %4267
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4307 = fsub fast float %4304, %4306
  %4308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %4288, float %4289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4309 = extractvalue %dx.types.ResRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.ResRet.f32 %4308, 1
  %4311 = extractvalue %dx.types.ResRet.f32 %4308, 2
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %4288, float %4289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.ResRet.f32 %4312, 1
  %4315 = extractvalue %dx.types.ResRet.f32 %4312, 2
  %4316 = fadd fast float %4313, %4309
  %4317 = fmul fast float %4316, 0x3F847AE140000000
  %4318 = fadd fast float %4314, %4310
  %4319 = fmul fast float %4318, 0x3F847AE140000000
  %4320 = fadd fast float %4315, %4311
  %4321 = fmul fast float %4320, 0x3F847AE140000000
  br label %4596

; <label>:4322                                    ; preds = %4212
  %4323 = and i32 %231, 1
  %4324 = icmp eq i32 %4323, 0
  br i1 %4324, label %4596, label %4325

; <label>:4325                                    ; preds = %4322
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 0
  %4332 = extractvalue %dx.types.CBufRet.f32 %4326, 1
  %4333 = extractvalue %dx.types.CBufRet.f32 %4328, 1
  %4334 = extractvalue %dx.types.CBufRet.f32 %4330, 1
  %4335 = extractvalue %dx.types.CBufRet.f32 %4326, 3
  %4336 = extractvalue %dx.types.CBufRet.f32 %4328, 3
  %4337 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4338 = fadd fast float %4335, %4241
  %4339 = fadd fast float %4336, %4242
  %4340 = fadd fast float %4337, %4243
  %4341 = fmul fast float %4338, %4327
  %4342 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4329, float %4341)  ; FMad(a,b,c)
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4331, float %4342)  ; FMad(a,b,c)
  %4344 = fmul fast float %4338, %4332
  %4345 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4333, float %4344)  ; FMad(a,b,c)
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4334, float %4345)  ; FMad(a,b,c)
  %4347 = fsub fast float %4343, %4335
  %4348 = fsub fast float %4346, %4336
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.CBufRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4353 = extractvalue %dx.types.CBufRet.f32 %4349, 3
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 3
  %4356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.i32 %4356, 0
  %4358 = extractvalue %dx.types.CBufRet.i32 %4356, 1
  %4359 = udiv i32 %4358, %4357
  %4360 = fsub fast float %4347, %4350
  %4361 = fsub fast float %4348, %4351
  %4362 = call float @dx.op.binary.f32(i32 35, float %4360, float 0.000000e+00)  ; FMax(a,b)
  %4363 = call float @dx.op.binary.f32(i32 35, float %4361, float 0.000000e+00)  ; FMax(a,b)
  %4364 = call float @dx.op.binary.f32(i32 36, float %4362, float %4352)  ; FMin(a,b)
  %4365 = call float @dx.op.binary.f32(i32 36, float %4363, float %4353)  ; FMin(a,b)
  %4366 = add i32 %4357, -1
  %4367 = add i32 %4359, -1
  %4368 = fmul fast float %4364, %4355
  %4369 = fmul fast float %4365, %4355
  %4370 = fptoui float %4368 to i32
  %4371 = fptoui float %4369 to i32
  %4372 = call i32 @dx.op.binary.i32(i32 40, i32 %4370, i32 %4366)  ; UMin(a,b)
  %4373 = call i32 @dx.op.binary.i32(i32 40, i32 %4371, i32 %4367)  ; UMin(a,b)
  %4374 = mul i32 %4373, %4357
  %4375 = add i32 %4374, %4372
  %4376 = shl i32 %4375, 2
  %4377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.i32 %4377, 0
  %4379 = icmp eq i32 %4378, -1
  br i1 %4379, label %4596, label %4380

; <label>:4380                                    ; preds = %4325
  %4381 = mul i32 %4378, 148
  %4382 = add i32 %4381, 4
  %4383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = add i32 %4381, 8
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = add i32 %4381, 36
  %4389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = add i32 %4381, 60
  %4392 = add i32 %4381, 92
  %4393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.i32 %4393, 0
  %4395 = add i32 %4381, 116
  %4396 = fsub fast float %4347, %4384
  %4397 = fsub fast float %4348, %4387
  %4398 = fmul fast float %4355, %4396
  %4399 = fmul fast float %4355, %4397
  %4400 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4402 = fsub fast float 1.000000e+00, %4401
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 2
  %4405 = call float @dx.op.unary.f32(i32 83, float %4400)  ; DerivCoarseX(value)
  %4406 = call float @dx.op.unary.f32(i32 83, float %4402)  ; DerivCoarseX(value)
  %4407 = call float @dx.op.unary.f32(i32 84, float %4400)  ; DerivCoarseY(value)
  %4408 = call float @dx.op.unary.f32(i32 84, float %4402)  ; DerivCoarseY(value)
  %4409 = fmul fast float %4405, %4404
  %4410 = fmul fast float %4406, %4404
  %4411 = fmul fast float %4407, %4404
  %4412 = fmul fast float %4408, %4404
  %4413 = call float @dx.op.dot2.f32(i32 54, float %4411, float %4412, float %4411, float %4412)  ; Dot2(ax,ay,bx,by)
  %4414 = call float @dx.op.dot2.f32(i32 54, float %4409, float %4410, float %4409, float %4410)  ; Dot2(ax,ay,bx,by)
  %4415 = call float @dx.op.binary.f32(i32 35, float %4414, float %4413)  ; FMax(a,b)
  %4416 = call float @dx.op.unary.f32(i32 23, float %4415)  ; Log(value)
  %4417 = fmul fast float %4416, 5.000000e-01
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 1
  %4420 = fadd fast float %4419, %4417
  %4421 = call float @dx.op.binary.f32(i32 35, float %4420, float 0.000000e+00)  ; FMax(a,b)
  %4422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4422, 3
  %4424 = fadd fast float %4423, %4421
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 3
  %4427 = fadd fast float %4424, %4426
  %4428 = add i32 %4394, 0
  %4429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4428, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4430 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4429, i32 0)  ; GetDimensions(handle,mipLevel)
  %4431 = extractvalue %dx.types.Dimensions %4430, 0
  %4432 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4431)  ; FirstbitLo(value)
  %4433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.i32 %4433, 1
  %4435 = sub nsw i32 %4434, %4432
  %4436 = sitofp i32 %4435 to float
  %4437 = fsub fast float %4427, %4436
  %4438 = call float @dx.op.binary.f32(i32 35, float %4437, float 0.000000e+00)  ; FMax(a,b)
  %4439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4429, %dx.types.Handle %43, float %4400, float %4402, float %4390, float undef, i32 0, i32 0, i32 undef, float %4438)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = fcmp ule float %4440, 0x3FE0101020000000
  %4442 = extractvalue %dx.types.CBufRet.i32 %4433, 0
  %4443 = and i32 %4442, 128
  %4444 = icmp ne i32 %4443, 0
  %4445 = and i1 %4441, %4444
  br i1 %4445, label %4596, label %4446

; <label>:4446                                    ; preds = %4380
  %4447 = add i32 %4381, 20
  %4448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = add i32 %4381, 24
  %4451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4450, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = add i32 %4381, 40
  %4454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = add i32 %4381, 96
  %4457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.i32 %4457, 0
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4461 = fmul fast float %4460, %4400
  %4462 = fmul fast float %4460, %4402
  %4463 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4464 = fadd fast float %4461, %4463
  %4465 = fadd fast float %4462, %4463
  %4466 = add i32 %4458, 0
  %4467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4466, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4468 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4467, i32 0)  ; GetDimensions(handle,mipLevel)
  %4469 = extractvalue %dx.types.Dimensions %4468, 0
  %4470 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4469)  ; FirstbitLo(value)
  %4471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.i32 %4471, 1
  %4473 = sub nsw i32 %4472, %4470
  %4474 = sitofp i32 %4473 to float
  %4475 = fsub fast float %4424, %4474
  %4476 = call float @dx.op.binary.f32(i32 35, float %4475, float 0.000000e+00)  ; FMax(a,b)
  %4477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4467, %dx.types.Handle %43, float %4464, float %4465, float %4455, float undef, i32 0, i32 0, i32 undef, float %4476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = fmul fast float %4478, %4449
  %4480 = fadd fast float %4479, %4452
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 3
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4489 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4490 = fadd fast float %4486, %4347
  %4491 = fadd fast float %4488, %4348
  %4492 = fadd fast float %4480, %4489
  %4493 = fmul fast float %4490, %4482
  %4494 = call float @dx.op.tertiary.f32(i32 46, float %4491, float %4483, float %4493)  ; FMad(a,b,c)
  %4495 = call float @dx.op.tertiary.f32(i32 46, float %4492, float %4484, float %4494)  ; FMad(a,b,c)
  %4496 = fsub fast float %4495, %4489
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4499 = fsub fast float %4496, %4498
  %4500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4501 = extractvalue %dx.types.CBufRet.i32 %4500, 0
  %4502 = call i32 @dx.op.binary.i32(i32 40, i32 %4378, i32 %4501)  ; UMin(a,b)
  %4503 = mul i32 %4502, 36
  %4504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.i32 %4504, 0
  %4506 = add i32 %4503, 4
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = fmul fast float %4508, %4400
  %4510 = fmul fast float %4508, %4402
  %4511 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4512 = fadd fast float %4509, %4511
  %4513 = fadd fast float %4510, %4511
  %4514 = icmp eq i32 %4505, 0
  br i1 %4514, label %4583, label %4515

; <label>:4515                                    ; preds = %4446
  br label %4516

; <label>:4516                                    ; preds = %4573, %4515
  %4517 = phi float [ %4574, %4573 ], [ 0.000000e+00, %4515 ]
  %4518 = phi float [ %4575, %4573 ], [ 0.000000e+00, %4515 ]
  %4519 = phi float [ %4576, %4573 ], [ 0.000000e+00, %4515 ]
  %4520 = phi float [ %4577, %4573 ], [ 0.000000e+00, %4515 ]
  %4521 = phi float [ %4578, %4573 ], [ 0.000000e+00, %4515 ]
  %4522 = phi float [ %4579, %4573 ], [ 0.000000e+00, %4515 ]
  %4523 = phi i32 [ %4580, %4573 ], [ 0, %4515 ]
  %4524 = shl i32 %4523, 2
  %4525 = add i32 %4391, %4524
  %4526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4525, i32 undef)  ; BufferLoad(srv,index,wot)
  %4527 = extractvalue %dx.types.ResRet.f32 %4526, 0
  %4528 = add i32 %4395, %4524
  %4529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4530 = extractvalue %dx.types.ResRet.i32 %4529, 0
  %4531 = add i32 %4530, 0
  %4532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4531, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4533 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4532, i32 0)  ; GetDimensions(handle,mipLevel)
  %4534 = extractvalue %dx.types.Dimensions %4533, 0
  %4535 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4534)  ; FirstbitLo(value)
  %4536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.i32 %4536, 1
  %4538 = sub nsw i32 %4537, %4535
  %4539 = sitofp i32 %4538 to float
  %4540 = fsub fast float %4424, %4539
  %4541 = call float @dx.op.binary.f32(i32 35, float %4540, float 0.000000e+00)  ; FMax(a,b)
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4532, %dx.types.Handle %43, float %4512, float %4513, float %4527, float undef, i32 0, i32 0, i32 undef, float %4541)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = fcmp fast ogt float %4543, 0.000000e+00
  br i1 %4544, label %4545, label %4573

; <label>:4545                                    ; preds = %4516
  %4546 = add i32 %4506, %4524
  %4547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.i32 %4547, 0
  %4549 = and i32 %4548, 32767
  %4550 = mul nuw nsw i32 %4549, 928
  %4551 = add nuw nsw i32 %4550, 48
  %4552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4551, i32 undef)  ; BufferLoad(srv,index,wot)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.ResRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.ResRet.f32 %4552, 2
  %4556 = add nuw nsw i32 %4550, 60
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = fmul fast float %4553, %4543
  %4562 = fmul fast float %4554, %4543
  %4563 = fmul fast float %4555, %4543
  %4564 = fadd fast float %4561, %4517
  %4565 = fadd fast float %4562, %4518
  %4566 = fadd fast float %4563, %4519
  %4567 = fmul fast float %4558, %4543
  %4568 = fmul fast float %4559, %4543
  %4569 = fmul fast float %4560, %4543
  %4570 = fadd fast float %4567, %4520
  %4571 = fadd fast float %4568, %4521
  %4572 = fadd fast float %4569, %4522
  br label %4573

; <label>:4573                                    ; preds = %4545, %4516
  %4574 = phi float [ %4564, %4545 ], [ %4517, %4516 ]
  %4575 = phi float [ %4565, %4545 ], [ %4518, %4516 ]
  %4576 = phi float [ %4566, %4545 ], [ %4519, %4516 ]
  %4577 = phi float [ %4570, %4545 ], [ %4520, %4516 ]
  %4578 = phi float [ %4571, %4545 ], [ %4521, %4516 ]
  %4579 = phi float [ %4572, %4545 ], [ %4522, %4516 ]
  %4580 = add nuw i32 %4523, 1
  %4581 = icmp eq i32 %4580, %4505
  br i1 %4581, label %4582, label %4516

; <label>:4582                                    ; preds = %4573
  br label %4583

; <label>:4583                                    ; preds = %4582, %4446
  %4584 = phi float [ 0.000000e+00, %4446 ], [ %4574, %4582 ]
  %4585 = phi float [ 0.000000e+00, %4446 ], [ %4575, %4582 ]
  %4586 = phi float [ 0.000000e+00, %4446 ], [ %4576, %4582 ]
  %4587 = phi float [ 0.000000e+00, %4446 ], [ %4577, %4582 ]
  %4588 = phi float [ 0.000000e+00, %4446 ], [ %4578, %4582 ]
  %4589 = phi float [ 0.000000e+00, %4446 ], [ %4579, %4582 ]
  %4590 = fadd fast float %4587, %4584
  %4591 = fmul fast float %4590, 0x3F847AE140000000
  %4592 = fadd fast float %4588, %4585
  %4593 = fmul fast float %4592, 0x3F847AE140000000
  %4594 = fadd fast float %4589, %4586
  %4595 = fmul fast float %4594, 0x3F847AE140000000
  br label %4596

; <label>:4596                                    ; preds = %4583, %4380, %4325, %4322, %4293, %4255
  %4597 = phi float [ %4307, %4293 ], [ -1.310720e+05, %4255 ], [ %4499, %4583 ], [ -1.310720e+05, %4325 ], [ -1.310720e+05, %4380 ], [ -1.310720e+05, %4322 ]
  %4598 = phi float [ %4317, %4293 ], [ 0.000000e+00, %4255 ], [ %4591, %4583 ], [ 0.000000e+00, %4325 ], [ 0.000000e+00, %4380 ], [ 0.000000e+00, %4322 ]
  %4599 = phi float [ %4319, %4293 ], [ 0.000000e+00, %4255 ], [ %4593, %4583 ], [ 0.000000e+00, %4325 ], [ 0.000000e+00, %4380 ], [ 0.000000e+00, %4322 ]
  %4600 = phi float [ %4321, %4293 ], [ 0.000000e+00, %4255 ], [ %4595, %4583 ], [ 0.000000e+00, %4325 ], [ 0.000000e+00, %4380 ], [ 0.000000e+00, %4322 ]
  %4601 = phi i1 [ true, %4293 ], [ false, %4255 ], [ true, %4583 ], [ false, %4325 ], [ false, %4380 ], [ false, %4322 ]
  %4602 = and i32 %231, 3
  %4603 = icmp eq i32 %4602, 1
  %4604 = select i1 %4603, float 1.000000e+00, float 0.000000e+00
  %4605 = fsub fast float %4597, %188
  %4606 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4607 = select i1 %4601, float %4606, float 1.000000e+00
  %4608 = fmul fast float %4607, %4604
  %4609 = icmp eq i32 %4602, 3
  %4610 = select i1 %4609, float 1.000000e+00, float %4608
  %4611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4610)  ; FMax(a,b)
  %4612 = fcmp fast olt float %4610, 1.000000e+00
  %4613 = fcmp uge float %67, 0.000000e+00
  %4614 = and i1 %4613, %4612
  br i1 %4614, label %4615, label %4625

; <label>:4615                                    ; preds = %4596
  %4616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = fadd fast float %4617, %4611
  %4621 = fcmp ule float %66, 0.000000e+00
  %4622 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4623 = select i1 %4621, float %4622, float 1.000000e+00
  %4624 = fmul fast float %4623, %4619
  br label %4625

; <label>:4625                                    ; preds = %4615, %4596
  %4626 = phi float [ %4620, %4615 ], [ %4611, %4596 ]
  %4627 = phi float [ %4618, %4615 ], [ 0.000000e+00, %4596 ]
  %4628 = phi float [ %4624, %4615 ], [ 0.000000e+00, %4596 ]
  %4629 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4631 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4632 = fcmp fast une float %4630, 0.000000e+00
  %4633 = fcmp fast une float %4631, 0.000000e+00
  %4634 = or i1 %4632, %4633
  br i1 %4634, label %4635, label %5210

; <label>:4635                                    ; preds = %4625
  br i1 %4632, label %4636, label %4909

; <label>:4636                                    ; preds = %4635
  %4637 = call float @dx.op.unary.f32(i32 23, float %4116)  ; Log(value)
  %4638 = fmul fast float %4637, 4.000000e+00
  %4639 = call float @dx.op.unary.f32(i32 21, float %4638)  ; Exp(value)
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 0
  %4642 = fmul fast float %4641, %54
  %4643 = fmul fast float %4641, %55
  %4644 = fmul fast float %4641, %56
  %4645 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4646 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4647 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4648 = call float @dx.op.unary.f32(i32 23, float %4645)  ; Log(value)
  %4649 = call float @dx.op.unary.f32(i32 23, float %4646)  ; Log(value)
  %4650 = call float @dx.op.unary.f32(i32 23, float %4647)  ; Log(value)
  %4651 = fmul fast float %4648, 4.000000e+00
  %4652 = fmul fast float %4649, 4.000000e+00
  %4653 = fmul fast float %4650, 4.000000e+00
  %4654 = call float @dx.op.unary.f32(i32 21, float %4651)  ; Exp(value)
  %4655 = call float @dx.op.unary.f32(i32 21, float %4652)  ; Exp(value)
  %4656 = call float @dx.op.unary.f32(i32 21, float %4653)  ; Exp(value)
  %4657 = fadd fast float %4655, %4654
  %4658 = fadd fast float %4657, %4656
  %4659 = fdiv fast float 1.000000e+00, %4658
  %4660 = fmul fast float %4659, %4654
  %4661 = fcmp fast ogt float %63, 0.000000e+00
  %4662 = fcmp fast ogt float %64, 0.000000e+00
  %4663 = fcmp fast ogt float %65, 0.000000e+00
  %4664 = fcmp fast olt float %63, 0.000000e+00
  %4665 = fcmp fast olt float %64, 0.000000e+00
  %4666 = fcmp fast olt float %65, 0.000000e+00
  %4667 = zext i1 %4661 to i32
  %4668 = zext i1 %4662 to i32
  %4669 = zext i1 %4663 to i32
  %4670 = zext i1 %4664 to i32
  %4671 = zext i1 %4665 to i32
  %4672 = zext i1 %4666 to i32
  %4673 = sub nsw i32 %4667, %4670
  %4674 = sub nsw i32 %4668, %4671
  %4675 = sub nsw i32 %4669, %4672
  %4676 = call float @dx.op.unary.f32(i32 83, float %4642)  ; DerivCoarseX(value)
  %4677 = call float @dx.op.unary.f32(i32 83, float %4643)  ; DerivCoarseX(value)
  %4678 = call float @dx.op.unary.f32(i32 83, float %4644)  ; DerivCoarseX(value)
  %4679 = call float @dx.op.unary.f32(i32 84, float %4642)  ; DerivCoarseY(value)
  %4680 = call float @dx.op.unary.f32(i32 84, float %4643)  ; DerivCoarseY(value)
  %4681 = call float @dx.op.unary.f32(i32 84, float %4644)  ; DerivCoarseY(value)
  %4682 = fcmp fast ole float %263, %4660
  %4683 = fmul fast float %4659, %4657
  %4684 = fcmp fast ole float %263, %4683
  %4685 = select i1 %4684, float %4644, float %4642
  %4686 = select i1 %4684, float %4642, float %4643
  %4687 = select i1 %4682, float %4643, float %4685
  %4688 = select i1 %4682, float %4644, float %4686
  %4689 = select i1 %4684, float %4678, float %4676
  %4690 = select i1 %4684, float %4676, float %4677
  %4691 = select i1 %4682, float %4677, float %4689
  %4692 = select i1 %4682, float %4678, float %4690
  %4693 = select i1 %4684, float %4681, float %4679
  %4694 = select i1 %4684, float %4679, float %4680
  %4695 = select i1 %4682, float %4680, float %4693
  %4696 = select i1 %4682, float %4681, float %4694
  %4697 = call float @dx.op.unary.f32(i32 27, float %4687)  ; Round_ni(value)
  %4698 = call float @dx.op.unary.f32(i32 27, float %4688)  ; Round_ni(value)
  %4699 = fptosi float %4697 to i32
  %4700 = fptosi float %4698 to i32
  %4701 = xor i32 %4700, %4699
  %4702 = sitofp i32 %4701 to float
  %4703 = fptosi float %4702 to i32
  %4704 = sitofp i32 %4703 to float
  %4705 = fmul fast float %4704, 0x3FE3C6EF40000000
  %4706 = frem fast float %4697, 2.560000e+02
  %4707 = frem fast float %4698, 2.560000e+02
  %4708 = fptoui float %4706 to i32
  %4709 = fptoui float %4707 to i32
  %4710 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4708, i32 %4709, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4711 = extractvalue %dx.types.ResRet.f32 %4710, 0
  %4712 = extractvalue %dx.types.ResRet.f32 %4710, 1
  %4713 = extractvalue %dx.types.ResRet.f32 %4710, 2
  %4714 = fadd fast float %4711, %4705
  %4715 = fadd fast float %4712, %4705
  %4716 = fadd fast float %4713, %4705
  %4717 = call float @dx.op.unary.f32(i32 22, float %4714)  ; Frc(value)
  %4718 = call float @dx.op.unary.f32(i32 22, float %4715)  ; Frc(value)
  %4719 = call float @dx.op.unary.f32(i32 22, float %4716)  ; Frc(value)
  %4720 = fmul fast float %4719, 0x401921FB60000000
  %4721 = call float @dx.op.unary.f32(i32 13, float %4720)  ; Sin(value)
  %4722 = call float @dx.op.unary.f32(i32 12, float %4720)  ; Cos(value)
  %4723 = fsub fast float -0.000000e+00, %4722
  %4724 = fmul fast float %4722, %4687
  %4725 = call float @dx.op.tertiary.f32(i32 46, float %4721, float %4688, float %4724)  ; FMad(a,b,c)
  %4726 = fmul fast float %4721, %4687
  %4727 = call float @dx.op.tertiary.f32(i32 46, float %4723, float %4688, float %4726)  ; FMad(a,b,c)
  %4728 = fadd fast float %4725, %4717
  %4729 = fadd fast float %4727, %4718
  %4730 = extractvalue %dx.types.CBufRet.f32 %4640, 3
  %4731 = bitcast float %4730 to i32
  %4732 = icmp eq i32 %4731, 0
  br i1 %4732, label %4771, label %4733

; <label>:4733                                    ; preds = %4636
  %4734 = add i32 %4731, 0
  %4735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4736 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4735, %dx.types.Handle %104, float %4728, float %4729, float undef, float undef, i32 0, i32 0, i32 undef, float %4691, float %4692, float undef, float %4695, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4737 = extractvalue %dx.types.ResRet.f32 %4736, 0
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4740 = extractvalue %dx.types.CBufRet.f32 %4738, 2
  %4741 = fsub fast float 1.000000e+00, %4630
  %4742 = call float @dx.op.binary.f32(i32 35, float %4741, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4743 = bitcast float %4630 to i32
  %4744 = sitofp i32 %4743 to float
  %4745 = fadd fast float %4744, 0xC1CFBF8940000000
  %4746 = fmul fast float %4740, %4745
  %4747 = fadd fast float %4746, 0x41CFBF8940000000
  %4748 = fptosi float %4747 to i32
  %4749 = bitcast i32 %4748 to float
  %4750 = bitcast float %4742 to i32
  %4751 = sitofp i32 %4750 to float
  %4752 = fadd fast float %4751, 0xC1CFBF8940000000
  %4753 = fmul fast float %4752, %4740
  %4754 = fadd fast float %4753, 0x41CFBF8940000000
  %4755 = fptosi float %4754 to i32
  %4756 = bitcast i32 %4755 to float
  %4757 = fmul fast float %4749, %4739
  %4758 = fmul fast float %4756, %4739
  %4759 = fsub fast float %4742, %4757
  %4760 = fadd fast float %4758, %4742
  %4761 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4762 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4763 = fsub fast float %4737, %4761
  %4764 = fsub fast float %4762, %4761
  %4765 = bitcast float %4764 to i32
  %4766 = sub nsw i32 2129859010, %4765
  %4767 = bitcast i32 %4766 to float
  %4768 = fmul fast float %4767, %4763
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = fcmp fast olt float %4769, 0x3F70101020000000
  br i1 %4770, label %4909, label %4771

; <label>:4771                                    ; preds = %4733, %4636
  %4772 = phi float [ %4769, %4733 ], [ %4630, %4636 ]
  %4773 = fmul fast float %4772, %4639
  %4774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.i32 %4774, 1
  %4776 = extractvalue %dx.types.CBufRet.i32 %4774, 0
  %4777 = add i32 %4776, 0
  %4778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4778, %dx.types.Handle %103, float %4728, float %4729, float undef, float undef, i32 0, i32 0, i32 undef, float %4691, float %4692, float undef, float %4695, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4783 = extractvalue %dx.types.ResRet.f32 %4779, 3
  %4784 = and i32 %4775, 255
  %4785 = uitofp i32 %4784 to float
  %4786 = lshr i32 %4775, 8
  %4787 = and i32 %4786, 255
  %4788 = uitofp i32 %4787 to float
  %4789 = fmul fast float %4783, %4785
  %4790 = fadd fast float %4789, %4788
  %4791 = fmul fast float %4790, 0x3F70101000000000
  %4792 = fadd fast float %4791, 0xBFB99999A0000000
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = fmul fast float %4793, 0x3FF1C71C80000000
  %4795 = call float @dx.op.binary.f32(i32 36, float %4791, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4796 = fsub fast float 1.000000e+00, %4794
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = fmul fast float %4797, %4780
  %4799 = fmul fast float %4797, %4781
  %4800 = fmul fast float %4797, %4782
  %4801 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4804 = fmul fast float %4794, %4780
  %4805 = fmul fast float %4794, %4781
  %4806 = fmul fast float %4794, %4782
  %4807 = fadd fast float %4804, %4795
  %4808 = fadd fast float %4805, %4795
  %4809 = fadd fast float %4806, %4795
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4812 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.i32 %4813, 3
  %4815 = extractvalue %dx.types.CBufRet.i32 %4813, 2
  %4816 = add i32 %4815, 0
  %4817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4818 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4817, %dx.types.Handle %103, float %4728, float %4729, float undef, float undef, i32 0, i32 0, i32 undef, float %4691, float %4692, float undef, float %4695, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.ResRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.ResRet.f32 %4818, 2
  %4822 = extractvalue %dx.types.ResRet.f32 %4818, 3
  %4823 = and i32 %4814, 255
  %4824 = uitofp i32 %4823 to float
  %4825 = lshr i32 %4814, 8
  %4826 = and i32 %4825, 255
  %4827 = uitofp i32 %4826 to float
  %4828 = lshr i32 %4814, 16
  %4829 = and i32 %4828, 255
  %4830 = uitofp i32 %4829 to float
  %4831 = fmul fast float %4830, 0x3F70101000000000
  %4832 = fmul fast float %4819, %4824
  %4833 = fadd fast float %4832, %4827
  %4834 = fmul fast float %4833, 0x3F70101000000000
  %4835 = fadd fast float %4820, -5.000000e-01
  %4836 = fadd fast float %4822, -5.000000e-01
  %4837 = fmul fast float %4835, %4831
  %4838 = fmul fast float %4836, %4831
  %4839 = fadd fast float %4837, 5.000000e-01
  %4840 = fadd fast float %4838, 5.000000e-01
  %4841 = fmul fast float %4839, 2.000000e+00
  %4842 = fadd fast float %4841, -1.000000e+00
  %4843 = fmul fast float %4840, 2.000000e+00
  %4844 = fadd fast float %4843, -1.000000e+00
  %4845 = fadd fast float %4842, %4844
  %4846 = fmul fast float %4845, 5.000000e-01
  %4847 = fsub fast float %4842, %4844
  %4848 = fmul fast float %4847, 5.000000e-01
  %4849 = call float @dx.op.unary.f32(i32 6, float %4846)  ; FAbs(value)
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = call float @dx.op.unary.f32(i32 6, float %4848)  ; FAbs(value)
  %4852 = fsub fast float %4850, %4851
  %4853 = call float @dx.op.dot3.f32(i32 55, float %4846, float %4848, float %4852, float %4846, float %4848, float %4852)  ; Dot3(ax,ay,az,bx,by,bz)
  %4854 = call float @dx.op.unary.f32(i32 25, float %4853)  ; Rsqrt(value)
  %4855 = fmul fast float %4846, %4854
  %4856 = fmul fast float %4848, %4854
  %4857 = select i1 %4684, i32 %4674, i32 %4675
  %4858 = select i1 %4682, i32 %4673, i32 %4857
  %4859 = sitofp i32 %4858 to float
  %4860 = fmul fast float %4852, %4859
  %4861 = fmul fast float %4860, %4854
  %4862 = select i1 %4684, float %4861, float %4856
  %4863 = select i1 %4684, float %4856, float %4861
  %4864 = select i1 %4682, float %4861, float %4855
  %4865 = select i1 %4682, float %4856, float %4862
  %4866 = select i1 %4682, float %4855, float %4863
  %4867 = fsub fast float %4801, %4230
  %4868 = fsub fast float %4802, %4231
  %4869 = fsub fast float %4803, %4232
  %4870 = fmul fast float %4867, %4773
  %4871 = fmul fast float %4868, %4773
  %4872 = fmul fast float %4869, %4773
  %4873 = fadd fast float %4870, %4230
  %4874 = fadd fast float %4871, %4231
  %4875 = fadd fast float %4872, %4232
  %4876 = fsub fast float %4810, %4190
  %4877 = fsub fast float %4811, %4191
  %4878 = fsub fast float %4812, %4192
  %4879 = fmul fast float %4876, %4773
  %4880 = fmul fast float %4877, %4773
  %4881 = fmul fast float %4878, %4773
  %4882 = fadd fast float %4879, %4190
  %4883 = fadd fast float %4880, %4191
  %4884 = fadd fast float %4881, %4192
  %4885 = fadd fast float %4864, %4169
  %4886 = fadd fast float %4865, %4170
  %4887 = fadd fast float %4866, %4171
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = call float @dx.op.unary.f32(i32 25, float %4888)  ; Rsqrt(value)
  %4890 = fmul fast float %4885, %4889
  %4891 = fmul fast float %4886, %4889
  %4892 = fmul fast float %4887, %4889
  %4893 = fsub fast float %4890, %4169
  %4894 = fsub fast float %4891, %4170
  %4895 = fsub fast float %4892, %4171
  %4896 = fmul fast float %4893, %4773
  %4897 = fmul fast float %4894, %4773
  %4898 = fmul fast float %4895, %4773
  %4899 = fadd fast float %4896, %4169
  %4900 = fadd fast float %4897, %4170
  %4901 = fadd fast float %4898, %4171
  %4902 = call float @dx.op.binary.f32(i32 36, float %4116, float %4821)  ; FMin(a,b)
  %4903 = fsub fast float %4902, %4116
  %4904 = fmul fast float %4903, %4773
  %4905 = fadd fast float %4904, %4116
  %4906 = fsub fast float %4834, %4193
  %4907 = fmul fast float %4906, %4773
  %4908 = fadd fast float %4907, %4193
  br label %4909

; <label>:4909                                    ; preds = %4771, %4733, %4635
  %4910 = phi float [ %4873, %4771 ], [ %4230, %4733 ], [ %4230, %4635 ]
  %4911 = phi float [ %4874, %4771 ], [ %4231, %4733 ], [ %4231, %4635 ]
  %4912 = phi float [ %4875, %4771 ], [ %4232, %4733 ], [ %4232, %4635 ]
  %4913 = phi float [ %4899, %4771 ], [ %4169, %4733 ], [ %4169, %4635 ]
  %4914 = phi float [ %4900, %4771 ], [ %4170, %4733 ], [ %4170, %4635 ]
  %4915 = phi float [ %4901, %4771 ], [ %4171, %4733 ], [ %4171, %4635 ]
  %4916 = phi float [ %4882, %4771 ], [ %4190, %4733 ], [ %4190, %4635 ]
  %4917 = phi float [ %4883, %4771 ], [ %4191, %4733 ], [ %4191, %4635 ]
  %4918 = phi float [ %4884, %4771 ], [ %4192, %4733 ], [ %4192, %4635 ]
  %4919 = phi float [ %4908, %4771 ], [ %4193, %4733 ], [ %4193, %4635 ]
  %4920 = phi float [ %4905, %4771 ], [ %4116, %4733 ], [ %4116, %4635 ]
  br i1 %4633, label %4921, label %5210

; <label>:4921                                    ; preds = %4909
  %4922 = call float @dx.op.unary.f32(i32 23, float %4920)  ; Log(value)
  %4923 = fmul fast float %4922, 4.000000e+00
  %4924 = call float @dx.op.unary.f32(i32 21, float %4923)  ; Exp(value)
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 0
  %4927 = fmul fast float %4926, %54
  %4928 = fmul fast float %4926, %55
  %4929 = fmul fast float %4926, %56
  %4930 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4931 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4932 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4933 = call float @dx.op.unary.f32(i32 23, float %4930)  ; Log(value)
  %4934 = call float @dx.op.unary.f32(i32 23, float %4931)  ; Log(value)
  %4935 = call float @dx.op.unary.f32(i32 23, float %4932)  ; Log(value)
  %4936 = fmul fast float %4933, 4.000000e+00
  %4937 = fmul fast float %4934, 4.000000e+00
  %4938 = fmul fast float %4935, 4.000000e+00
  %4939 = call float @dx.op.unary.f32(i32 21, float %4936)  ; Exp(value)
  %4940 = call float @dx.op.unary.f32(i32 21, float %4937)  ; Exp(value)
  %4941 = call float @dx.op.unary.f32(i32 21, float %4938)  ; Exp(value)
  %4942 = fadd fast float %4940, %4939
  %4943 = fadd fast float %4942, %4941
  %4944 = fdiv fast float 1.000000e+00, %4943
  %4945 = fmul fast float %4944, %4939
  %4946 = fcmp fast ogt float %63, 0.000000e+00
  %4947 = fcmp fast ogt float %64, 0.000000e+00
  %4948 = fcmp fast ogt float %65, 0.000000e+00
  %4949 = fcmp fast olt float %63, 0.000000e+00
  %4950 = fcmp fast olt float %64, 0.000000e+00
  %4951 = fcmp fast olt float %65, 0.000000e+00
  %4952 = zext i1 %4946 to i32
  %4953 = zext i1 %4947 to i32
  %4954 = zext i1 %4948 to i32
  %4955 = zext i1 %4949 to i32
  %4956 = zext i1 %4950 to i32
  %4957 = zext i1 %4951 to i32
  %4958 = sub nsw i32 %4952, %4955
  %4959 = sub nsw i32 %4953, %4956
  %4960 = sub nsw i32 %4954, %4957
  %4961 = call float @dx.op.unary.f32(i32 83, float %4927)  ; DerivCoarseX(value)
  %4962 = call float @dx.op.unary.f32(i32 83, float %4928)  ; DerivCoarseX(value)
  %4963 = call float @dx.op.unary.f32(i32 83, float %4929)  ; DerivCoarseX(value)
  %4964 = call float @dx.op.unary.f32(i32 84, float %4927)  ; DerivCoarseY(value)
  %4965 = call float @dx.op.unary.f32(i32 84, float %4928)  ; DerivCoarseY(value)
  %4966 = call float @dx.op.unary.f32(i32 84, float %4929)  ; DerivCoarseY(value)
  %4967 = fcmp fast ole float %263, %4945
  %4968 = fmul fast float %4944, %4942
  %4969 = fcmp fast ole float %263, %4968
  %4970 = select i1 %4969, float %4929, float %4927
  %4971 = select i1 %4969, float %4927, float %4928
  %4972 = select i1 %4967, float %4928, float %4970
  %4973 = select i1 %4967, float %4929, float %4971
  %4974 = select i1 %4969, float %4963, float %4961
  %4975 = select i1 %4969, float %4961, float %4962
  %4976 = select i1 %4967, float %4962, float %4974
  %4977 = select i1 %4967, float %4963, float %4975
  %4978 = select i1 %4969, float %4966, float %4964
  %4979 = select i1 %4969, float %4964, float %4965
  %4980 = select i1 %4967, float %4965, float %4978
  %4981 = select i1 %4967, float %4966, float %4979
  %4982 = call float @dx.op.unary.f32(i32 27, float %4972)  ; Round_ni(value)
  %4983 = call float @dx.op.unary.f32(i32 27, float %4973)  ; Round_ni(value)
  %4984 = fptosi float %4982 to i32
  %4985 = fptosi float %4983 to i32
  %4986 = xor i32 %4985, %4984
  %4987 = sitofp i32 %4986 to float
  %4988 = fptosi float %4987 to i32
  %4989 = sitofp i32 %4988 to float
  %4990 = fmul fast float %4989, 0x3FE3C6EF40000000
  %4991 = frem fast float %4982, 2.560000e+02
  %4992 = frem fast float %4983, 2.560000e+02
  %4993 = fptoui float %4991 to i32
  %4994 = fptoui float %4992 to i32
  %4995 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4993, i32 %4994, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4999 = fadd fast float %4996, %4990
  %5000 = fadd fast float %4997, %4990
  %5001 = fadd fast float %4998, %4990
  %5002 = call float @dx.op.unary.f32(i32 22, float %4999)  ; Frc(value)
  %5003 = call float @dx.op.unary.f32(i32 22, float %5000)  ; Frc(value)
  %5004 = call float @dx.op.unary.f32(i32 22, float %5001)  ; Frc(value)
  %5005 = fmul fast float %5004, 0x401921FB60000000
  %5006 = call float @dx.op.unary.f32(i32 13, float %5005)  ; Sin(value)
  %5007 = call float @dx.op.unary.f32(i32 12, float %5005)  ; Cos(value)
  %5008 = fsub fast float -0.000000e+00, %5007
  %5009 = fmul fast float %5007, %4972
  %5010 = call float @dx.op.tertiary.f32(i32 46, float %5006, float %4973, float %5009)  ; FMad(a,b,c)
  %5011 = fmul fast float %5006, %4972
  %5012 = call float @dx.op.tertiary.f32(i32 46, float %5008, float %4973, float %5011)  ; FMad(a,b,c)
  %5013 = fadd fast float %5010, %5002
  %5014 = fadd fast float %5012, %5003
  %5015 = extractvalue %dx.types.CBufRet.f32 %4925, 3
  %5016 = bitcast float %5015 to i32
  %5017 = icmp eq i32 %5016, 0
  br i1 %5017, label %5056, label %5018

; <label>:5018                                    ; preds = %4921
  %5019 = add i32 %5016, 0
  %5020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5021 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5020, %dx.types.Handle %104, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 undef, float %4976, float %4977, float undef, float %4980, float %4981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5022 = extractvalue %dx.types.ResRet.f32 %5021, 0
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 1
  %5025 = extractvalue %dx.types.CBufRet.f32 %5023, 2
  %5026 = fsub fast float 1.000000e+00, %4631
  %5027 = call float @dx.op.binary.f32(i32 35, float %5026, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5028 = bitcast float %4631 to i32
  %5029 = sitofp i32 %5028 to float
  %5030 = fadd fast float %5029, 0xC1CFBF8940000000
  %5031 = fmul fast float %5025, %5030
  %5032 = fadd fast float %5031, 0x41CFBF8940000000
  %5033 = fptosi float %5032 to i32
  %5034 = bitcast i32 %5033 to float
  %5035 = bitcast float %5027 to i32
  %5036 = sitofp i32 %5035 to float
  %5037 = fadd fast float %5036, 0xC1CFBF8940000000
  %5038 = fmul fast float %5037, %5025
  %5039 = fadd fast float %5038, 0x41CFBF8940000000
  %5040 = fptosi float %5039 to i32
  %5041 = bitcast i32 %5040 to float
  %5042 = fmul fast float %5034, %5024
  %5043 = fmul fast float %5041, %5024
  %5044 = fsub fast float %5027, %5042
  %5045 = fadd fast float %5043, %5027
  %5046 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5047 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5048 = fsub fast float %5022, %5046
  %5049 = fsub fast float %5047, %5046
  %5050 = bitcast float %5049 to i32
  %5051 = sub nsw i32 2129859010, %5050
  %5052 = bitcast i32 %5051 to float
  %5053 = fmul fast float %5052, %5048
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fcmp fast olt float %5054, 0x3F70101020000000
  br i1 %5055, label %5210, label %5056

; <label>:5056                                    ; preds = %5018, %4921
  %5057 = phi float [ %5054, %5018 ], [ %4631, %4921 ]
  %5058 = fmul fast float %5057, %4924
  %5059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.i32 %5059, 1
  %5061 = extractvalue %dx.types.CBufRet.i32 %5059, 0
  %5062 = add i32 %5061, 0
  %5063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5064 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5063, %dx.types.Handle %103, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 undef, float %4976, float %4977, float undef, float %4980, float %4981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.ResRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5064, 2
  %5068 = extractvalue %dx.types.ResRet.f32 %5064, 3
  %5069 = and i32 %5060, 255
  %5070 = uitofp i32 %5069 to float
  %5071 = lshr i32 %5060, 8
  %5072 = and i32 %5071, 255
  %5073 = uitofp i32 %5072 to float
  %5074 = fmul fast float %5068, %5070
  %5075 = fadd fast float %5074, %5073
  %5076 = fmul fast float %5075, 0x3F70101000000000
  %5077 = fadd fast float %5076, 0xBFB99999A0000000
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %5078, 0x3FF1C71C80000000
  %5080 = call float @dx.op.binary.f32(i32 36, float %5076, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5081 = fsub fast float 1.000000e+00, %5079
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = fmul fast float %5082, %5065
  %5084 = fmul fast float %5082, %5066
  %5085 = fmul fast float %5082, %5067
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = fmul fast float %5079, %5065
  %5090 = fmul fast float %5079, %5066
  %5091 = fmul fast float %5079, %5067
  %5092 = fadd fast float %5089, %5080
  %5093 = fadd fast float %5090, %5080
  %5094 = fadd fast float %5091, %5080
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.i32 %5098, 3
  %5100 = extractvalue %dx.types.CBufRet.i32 %5098, 2
  %5101 = add i32 %5100, 0
  %5102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5103 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5102, %dx.types.Handle %103, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 undef, float %4976, float %4977, float undef, float %4980, float %4981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5104 = extractvalue %dx.types.ResRet.f32 %5103, 0
  %5105 = extractvalue %dx.types.ResRet.f32 %5103, 1
  %5106 = extractvalue %dx.types.ResRet.f32 %5103, 2
  %5107 = extractvalue %dx.types.ResRet.f32 %5103, 3
  %5108 = and i32 %5099, 255
  %5109 = uitofp i32 %5108 to float
  %5110 = lshr i32 %5099, 8
  %5111 = and i32 %5110, 255
  %5112 = uitofp i32 %5111 to float
  %5113 = lshr i32 %5099, 16
  %5114 = and i32 %5113, 255
  %5115 = uitofp i32 %5114 to float
  %5116 = fmul fast float %5115, 0x3F70101000000000
  %5117 = fmul fast float %5104, %5109
  %5118 = fadd fast float %5117, %5112
  %5119 = fmul fast float %5118, 0x3F70101000000000
  %5120 = fadd fast float %5105, -5.000000e-01
  %5121 = fadd fast float %5107, -5.000000e-01
  %5122 = fmul fast float %5120, %5116
  %5123 = fmul fast float %5121, %5116
  %5124 = fadd fast float %5122, 5.000000e-01
  %5125 = fadd fast float %5123, 5.000000e-01
  %5126 = fmul fast float %5124, 2.000000e+00
  %5127 = fadd fast float %5126, -1.000000e+00
  %5128 = fmul fast float %5125, 2.000000e+00
  %5129 = fadd fast float %5128, -1.000000e+00
  %5130 = fadd fast float %5127, %5129
  %5131 = fmul fast float %5130, 5.000000e-01
  %5132 = fsub fast float %5127, %5129
  %5133 = fmul fast float %5132, 5.000000e-01
  %5134 = call float @dx.op.unary.f32(i32 6, float %5131)  ; FAbs(value)
  %5135 = fsub fast float 1.000000e+00, %5134
  %5136 = call float @dx.op.unary.f32(i32 6, float %5133)  ; FAbs(value)
  %5137 = fsub fast float %5135, %5136
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5133, float %5137, float %5131, float %5133, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 25, float %5138)  ; Rsqrt(value)
  %5140 = fmul fast float %5131, %5139
  %5141 = fmul fast float %5133, %5139
  %5142 = select i1 %4969, i32 %4959, i32 %4960
  %5143 = select i1 %4967, i32 %4958, i32 %5142
  %5144 = sitofp i32 %5143 to float
  %5145 = fmul fast float %5137, %5144
  %5146 = fmul fast float %5145, %5139
  %5147 = select i1 %4969, float %5146, float %5141
  %5148 = select i1 %4969, float %5141, float %5146
  %5149 = select i1 %4967, float %5146, float %5140
  %5150 = select i1 %4967, float %5141, float %5147
  %5151 = select i1 %4967, float %5140, float %5148
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5154 = fptoui float %5153 to i32
  %5155 = add i32 %5154, 0
  %5156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5157 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5156, %dx.types.Handle %103, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 undef, float %4976, float %4977, float undef, float %4980, float %4981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5158 = extractvalue %dx.types.ResRet.f32 %5157, 0
  %5159 = fsub fast float %5086, %4910
  %5160 = fsub fast float %5087, %4911
  %5161 = fsub fast float %5088, %4912
  %5162 = fmul fast float %5159, %5058
  %5163 = fmul fast float %5160, %5058
  %5164 = fmul fast float %5161, %5058
  %5165 = fadd fast float %5162, %4910
  %5166 = fadd fast float %5163, %4911
  %5167 = fadd fast float %5164, %4912
  %5168 = fsub fast float %5095, %4916
  %5169 = fsub fast float %5096, %4917
  %5170 = fsub fast float %5097, %4918
  %5171 = fmul fast float %5168, %5058
  %5172 = fmul fast float %5169, %5058
  %5173 = fmul fast float %5170, %5058
  %5174 = fadd fast float %5171, %4916
  %5175 = fadd fast float %5172, %4917
  %5176 = fadd fast float %5173, %4918
  %5177 = fadd fast float %5149, %4913
  %5178 = fadd fast float %5150, %4914
  %5179 = fadd fast float %5151, %4915
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5178, float %5179, float %5177, float %5178, float %5179)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = call float @dx.op.unary.f32(i32 25, float %5180)  ; Rsqrt(value)
  %5182 = fmul fast float %5181, %5177
  %5183 = fmul fast float %5181, %5178
  %5184 = fmul fast float %5181, %5179
  %5185 = fsub fast float %5182, %4913
  %5186 = fsub fast float %5183, %4914
  %5187 = fsub fast float %5184, %4915
  %5188 = fmul fast float %5185, %5058
  %5189 = fmul fast float %5186, %5058
  %5190 = fmul fast float %5187, %5058
  %5191 = fadd fast float %5188, %4913
  %5192 = fadd fast float %5189, %4914
  %5193 = fadd fast float %5190, %4915
  %5194 = call float @dx.op.binary.f32(i32 36, float %4920, float %5106)  ; FMin(a,b)
  %5195 = fsub fast float %5194, %4920
  %5196 = fmul fast float %5195, %5058
  %5197 = fadd fast float %5196, %4920
  %5198 = fsub fast float %5119, %4919
  %5199 = fmul fast float %5198, %5058
  %5200 = fadd fast float %5199, %4919
  %5201 = fsub fast float %5158, %4234
  %5202 = fsub fast float %5158, %4235
  %5203 = fsub fast float %5158, %4236
  %5204 = fmul fast float %5201, %5058
  %5205 = fmul fast float %5202, %5058
  %5206 = fmul fast float %5203, %5058
  %5207 = fadd fast float %5204, %4234
  %5208 = fadd fast float %5205, %4235
  %5209 = fadd fast float %5206, %4236
  br label %5210

; <label>:5210                                    ; preds = %5056, %5018, %4909, %4625
  %5211 = phi float [ %5165, %5056 ], [ %4910, %5018 ], [ %4910, %4909 ], [ %4230, %4625 ]
  %5212 = phi float [ %5166, %5056 ], [ %4911, %5018 ], [ %4911, %4909 ], [ %4231, %4625 ]
  %5213 = phi float [ %5167, %5056 ], [ %4912, %5018 ], [ %4912, %4909 ], [ %4232, %4625 ]
  %5214 = phi float [ %5191, %5056 ], [ %4913, %5018 ], [ %4913, %4909 ], [ %4169, %4625 ]
  %5215 = phi float [ %5192, %5056 ], [ %4914, %5018 ], [ %4914, %4909 ], [ %4170, %4625 ]
  %5216 = phi float [ %5193, %5056 ], [ %4915, %5018 ], [ %4915, %4909 ], [ %4171, %4625 ]
  %5217 = phi float [ %5174, %5056 ], [ %4916, %5018 ], [ %4916, %4909 ], [ %4190, %4625 ]
  %5218 = phi float [ %5175, %5056 ], [ %4917, %5018 ], [ %4917, %4909 ], [ %4191, %4625 ]
  %5219 = phi float [ %5176, %5056 ], [ %4918, %5018 ], [ %4918, %4909 ], [ %4192, %4625 ]
  %5220 = phi float [ %5207, %5056 ], [ %4234, %5018 ], [ %4234, %4909 ], [ %4234, %4625 ]
  %5221 = phi float [ %5208, %5056 ], [ %4235, %5018 ], [ %4235, %4909 ], [ %4235, %4625 ]
  %5222 = phi float [ %5209, %5056 ], [ %4236, %5018 ], [ %4236, %4909 ], [ %4236, %4625 ]
  %5223 = phi float [ %5200, %5056 ], [ %4919, %5018 ], [ %4919, %4909 ], [ %4193, %4625 ]
  %5224 = phi float [ %5197, %5056 ], [ %4920, %5018 ], [ %4920, %4909 ], [ %4116, %4625 ]
  %5225 = fcmp fast une float %4629, 0.000000e+00
  br i1 %5225, label %5226, label %5395

; <label>:5226                                    ; preds = %5210
  %5227 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %186, float %187, float %188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = call float @dx.op.unary.f32(i32 25, float %5227)  ; Rsqrt(value)
  %5229 = fmul fast float %186, %5228
  %5230 = fsub fast float -0.000000e+00, %5229
  %5231 = fmul fast float %187, %5228
  %5232 = fsub fast float -0.000000e+00, %5231
  %5233 = fmul fast float %188, %5228
  %5234 = fsub fast float -0.000000e+00, %5233
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5232, float %5234, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fmul fast float %4629, 2.500000e+00
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %4629, 0x4013FFFFE0000000
  %5239 = fadd fast float %5238, 0xBFFFFFFFE0000000
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = fmul fast float %4629, 0x4004000020000000
  %5242 = fadd fast float %5241, 0xBFF8000040000000
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %4172, 1.000000e+01
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fmul fast float %5245, 2.000000e+00
  %5247 = fsub fast float 3.000000e+00, %5246
  %5248 = fmul fast float %5245, %5245
  %5249 = fmul fast float %5248, %5247
  %5250 = fsub fast float 1.000000e+00, %5249
  %5251 = fsub fast float 0x3FE3333340000000, %5223
  %5252 = fmul fast float %5251, 0x400AAAAAA0000000
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fmul fast float %5250, %5253
  %5255 = fmul fast float %5211, 0x3FEA2B8620000000
  %5256 = fmul fast float %5212, 0x3FEA2B8620000000
  %5257 = fmul fast float %5213, 0x3FEA2B8620000000
  %5258 = fadd fast float %5255, 0x3FC81DFBA0000000
  %5259 = fmul fast float %5258, %5211
  %5260 = fadd fast float %5259, 0x3F910E6020000000
  %5261 = fadd fast float %5256, 0x3FC81DFBA0000000
  %5262 = fmul fast float %5261, %5212
  %5263 = fadd fast float %5262, 0x3F910E6020000000
  %5264 = fadd fast float %5257, 0x3FC81DFBA0000000
  %5265 = fmul fast float %5264, %5213
  %5266 = fadd fast float %5265, 0x3F910E6020000000
  %5267 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5269 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5270 = fsub fast float %5267, %5211
  %5271 = fsub fast float %5268, %5212
  %5272 = fsub fast float %5269, %5213
  %5273 = fmul fast float %5270, %5237
  %5274 = fmul fast float %5273, %5254
  %5275 = fmul fast float %5271, %5237
  %5276 = fmul fast float %5275, %5254
  %5277 = fmul fast float %5272, %5237
  %5278 = fmul fast float %5277, %5254
  %5279 = fadd fast float %5274, %5211
  %5280 = fadd fast float %5276, %5212
  %5281 = fadd fast float %5278, %5213
  %5282 = fmul fast float %5224, %5224
  %5283 = fmul fast float %5282, %5282
  %5284 = fadd fast float %5240, 1.000000e+00
  %5285 = fsub fast float %5284, %5254
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5289 = fsub fast float 1.000000e+00, %5283
  %5290 = call float @dx.op.binary.f32(i32 36, float %5286, float %5289)  ; FMin(a,b)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5292 = call float @dx.op.binary.f32(i32 35, float %5290, float %5291)  ; FMax(a,b)
  %5293 = fadd fast float %5288, 0xBFE4CCCCC0000000
  %5294 = fmul fast float %5293, 0x4006DB6DA0000000
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = fmul fast float %5295, 2.000000e+00
  %5297 = fsub fast float 3.000000e+00, %5296
  %5298 = bitcast float %5217 to i32
  %5299 = ashr i32 %5298, 1
  %5300 = add nsw i32 %5299, 532487669
  %5301 = bitcast i32 %5300 to float
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = bitcast float %5302 to i32
  %5304 = sub nsw i32 2129859010, %5303
  %5305 = bitcast i32 %5304 to float
  %5306 = fmul fast float %5305, 2.000000e+00
  %5307 = bitcast float %5218 to i32
  %5308 = ashr i32 %5307, 1
  %5309 = add nsw i32 %5308, 532487669
  %5310 = bitcast i32 %5309 to float
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = bitcast float %5311 to i32
  %5313 = sub nsw i32 2129859010, %5312
  %5314 = bitcast i32 %5313 to float
  %5315 = fmul fast float %5314, 2.000000e+00
  %5316 = bitcast float %5219 to i32
  %5317 = ashr i32 %5316, 1
  %5318 = add nsw i32 %5317, 532487669
  %5319 = bitcast i32 %5318 to float
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = bitcast float %5320 to i32
  %5322 = sub nsw i32 2129859010, %5321
  %5323 = bitcast i32 %5322 to float
  %5324 = fmul fast float %5323, 2.000000e+00
  %5325 = fsub fast float 0x4002A9FBE0000000, %5306
  %5326 = fadd fast float %5306, 0x3FD54FDF00000000
  %5327 = bitcast float %5326 to i32
  %5328 = sub nsw i32 2129859010, %5327
  %5329 = bitcast i32 %5328 to float
  %5330 = fmul fast float %5329, %5325
  %5331 = fmul fast float %5330, %5330
  %5332 = fsub fast float 0x4002A9FBE0000000, %5315
  %5333 = fadd fast float %5315, 0x3FD54FDF00000000
  %5334 = bitcast float %5333 to i32
  %5335 = sub nsw i32 2129859010, %5334
  %5336 = bitcast i32 %5335 to float
  %5337 = fmul fast float %5336, %5332
  %5338 = fmul fast float %5337, %5337
  %5339 = fsub fast float 0x4002A9FBE0000000, %5324
  %5340 = fadd fast float %5324, 0x3FD54FDF00000000
  %5341 = bitcast float %5340 to i32
  %5342 = sub nsw i32 2129859010, %5341
  %5343 = bitcast i32 %5342 to float
  %5344 = fmul fast float %5343, %5339
  %5345 = fmul fast float %5344, %5344
  %5346 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5331)  ; FMax(a,b)
  %5347 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5338)  ; FMax(a,b)
  %5348 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5345)  ; FMax(a,b)
  %5349 = fsub fast float 1.000000e+00, %5235
  %5350 = fadd fast float %5349, %5250
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = fsub fast float 1.000000e+00, %4610
  %5353 = fmul fast float %5292, %5352
  %5354 = fmul fast float %5295, %5295
  %5355 = fmul fast float %5354, %5353
  %5356 = fmul fast float %5355, %5297
  %5357 = fmul fast float %5352, 0xBFE99999A0000000
  %5358 = fmul fast float %5357, %5237
  %5359 = fmul fast float %5358, %5254
  %5360 = fadd fast float %5359, 1.000000e+00
  %5361 = fadd fast float %5223, -1.000000e+00
  %5362 = fmul fast float %5360, %5361
  %5363 = fadd fast float %5362, 1.000000e+00
  %5364 = fsub fast float %5346, %5217
  %5365 = fsub fast float %5347, %5218
  %5366 = fsub fast float %5348, %5219
  %5367 = fmul fast float %5356, %5364
  %5368 = fmul fast float %5356, %5365
  %5369 = fmul fast float %5356, %5366
  %5370 = fadd fast float %5367, %5217
  %5371 = fadd fast float %5368, %5218
  %5372 = fadd fast float %5369, %5219
  %5373 = fsub fast float %114, %5214
  %5374 = fsub fast float %115, %5215
  %5375 = fsub fast float %116, %5216
  %5376 = fmul fast float %5356, %5373
  %5377 = fmul fast float %5356, %5374
  %5378 = fmul fast float %5356, %5375
  %5379 = fadd fast float %5376, %5214
  %5380 = fadd fast float %5377, %5215
  %5381 = fadd fast float %5378, %5216
  %5382 = fmul fast float %5356, %5351
  %5383 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = fmul fast float %5382, %5384
  %5386 = fadd fast float %5385, %5383
  %5387 = fsub fast float 1.000000e+00, %5224
  %5388 = fmul fast float %5356, %5387
  %5389 = fadd fast float %5388, %5224
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5379, float %5380, float %5381, float %5379, float %5380, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.unary.f32(i32 25, float %5390)  ; Rsqrt(value)
  %5392 = fmul fast float %5379, %5391
  %5393 = fmul fast float %5380, %5391
  %5394 = fmul fast float %5381, %5391
  br label %5395

; <label>:5395                                    ; preds = %5226, %5210
  %5396 = phi float [ %5279, %5226 ], [ %5211, %5210 ]
  %5397 = phi float [ %5280, %5226 ], [ %5212, %5210 ]
  %5398 = phi float [ %5281, %5226 ], [ %5213, %5210 ]
  %5399 = phi float [ %5392, %5226 ], [ %5214, %5210 ]
  %5400 = phi float [ %5393, %5226 ], [ %5215, %5210 ]
  %5401 = phi float [ %5394, %5226 ], [ %5216, %5210 ]
  %5402 = phi float [ %5370, %5226 ], [ %5217, %5210 ]
  %5403 = phi float [ %5371, %5226 ], [ %5218, %5210 ]
  %5404 = phi float [ %5372, %5226 ], [ %5219, %5210 ]
  %5405 = phi float [ %5386, %5226 ], [ %5223, %5210 ]
  %5406 = phi float [ %5389, %5226 ], [ %5224, %5210 ]
  %5407 = icmp eq i32 %53, 0
  br i1 %5407, label %5438, label %5408

; <label>:5408                                    ; preds = %5395
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5412 = fmul fast float %5410, %107
  %5413 = fmul fast float %5411, %108
  %5414 = fmul fast float %5412, 1.024000e+03
  %5415 = fmul fast float %5413, 1.024000e+03
  %5416 = fadd fast float %5414, -5.120000e+02
  %5417 = fadd fast float %5415, -5.120000e+02
  %5418 = fmul fast float %5412, 0x4081BEDF00000000
  %5419 = fadd fast float %5418, 0xC071BEDF00000000
  %5420 = call float @dx.op.unary.f32(i32 22, float %5419)  ; Frc(value)
  %5421 = fmul fast float %5416, %5420
  %5422 = fadd fast float %5421, %5417
  %5423 = fmul fast float %5413, 0x4073BEBE20000000
  %5424 = fadd fast float %5423, 0xC063BEBE20000000
  %5425 = call float @dx.op.unary.f32(i32 22, float %5424)  ; Frc(value)
  %5426 = fmul fast float %5417, %5425
  %5427 = fadd fast float %5426, %5416
  %5428 = fmul fast float %5422, %5427
  %5429 = call float @dx.op.unary.f32(i32 22, float %5428)  ; Frc(value)
  %5430 = add i32 %306, 12
  %5431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.i32 %5431, 0
  %5433 = and i32 %5432, 255
  %5434 = uitofp i32 %5433 to float
  %5435 = fmul fast float %5434, 0x3F70101020000000
  %5436 = fcmp fast olt float %5429, %5435
  br i1 %5436, label %5437, label %5438

; <label>:5437                                    ; preds = %5408
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5438

; <label>:5438                                    ; preds = %5437, %5408, %5395
  %5439 = fsub fast float -0.000000e+00, %188
  %5440 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %186, float %187, float %188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5441 = call float @dx.op.unary.f32(i32 25, float %5440)  ; Rsqrt(value)
  %5442 = fmul fast float %5441, %186
  %5443 = fmul fast float %5441, %187
  %5444 = fmul fast float %5441, %188
  %5445 = fsub fast float -0.000000e+00, %5442
  %5446 = fsub fast float -0.000000e+00, %5443
  %5447 = fsub fast float -0.000000e+00, %5444
  %5448 = select i1 %252, float 0.000000e+00, float %5404
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5400, float %5401, float %5445, float %5446, float %5447)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = fmul fast float %5451, 2.000000e+00
  %5453 = fmul fast float %5452, %5399
  %5454 = fmul fast float %5452, %5400
  %5455 = fmul fast float %5452, %5401
  %5456 = fsub fast float %5442, %5453
  %5457 = fsub fast float %5443, %5454
  %5458 = fsub fast float %5444, %5455
  %5459 = call float @dx.op.binary.f32(i32 36, float %5406, float 1.000000e+00)  ; FMin(a,b)
  %5460 = fsub fast float 1.000000e+00, %5406
  %5461 = bitcast float %5460 to i32
  %5462 = sub nsw i32 2129859010, %5461
  %5463 = bitcast i32 %5462 to float
  %5464 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5465 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = fcmp fast oeq float %5465, 0.000000e+00
  %5467 = fcmp fast oeq float %5464, 0.000000e+00
  %5468 = or i1 %5467, %5466
  br i1 %5468, label %5498, label %5469

; <label>:5469                                    ; preds = %5438
  %5470 = fsub fast float -0.000000e+00, %81
  %5471 = fsub fast float -0.000000e+00, %79
  %5472 = call float @dx.op.unary.f32(i32 24, float %5465)  ; Sqrt(value)
  %5473 = fdiv fast float %5472, %5464
  %5474 = fcmp fast ogt float %5473, 0x3FFB6F8900000000
  %5475 = select i1 %5474, float 0x3FFB6F8900000000, float %5473
  %5476 = fmul fast float %5475, 0x3FE8A23460000000
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = call float @dx.op.binary.f32(i32 35, float %5475, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5479 = fmul fast float %5477, %5464
  %5480 = fmul fast float %5478, 0x3FF279A740000000
  %5481 = fadd fast float %5480, -1.000000e+00
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %80, float %5470, float %5471, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 25, float %5482)  ; Rsqrt(value)
  %5484 = fmul fast float %5483, %5470
  %5485 = fmul fast float %5483, %5471
  %5486 = fmul fast float %5483, %80
  %5487 = fmul fast float %5481, %5481
  %5488 = fsub fast float 1.000000e+00, %5487
  %5489 = fmul fast float %5478, 0x40005F8BE0000000
  %5490 = fsub fast float 0x400C5BF8A0000000, %5489
  %5491 = fdiv fast float %5479, %5490
  %5492 = fmul fast float %5491, 0x3FEE31C3C0000000
  %5493 = fmul fast float %5492, %5488
  %5494 = fmul fast float %5478, 0x3FDACB7480000000
  %5495 = fadd fast float %5494, 0xBFD7347680000000
  %5496 = fmul fast float %5495, %5491
  %5497 = fmul fast float %5496, %5488
  br label %5498

; <label>:5498                                    ; preds = %5469, %5438
  %5499 = phi float [ %5484, %5469 ], [ 0.000000e+00, %5438 ]
  %5500 = phi float [ %5485, %5469 ], [ 0.000000e+00, %5438 ]
  %5501 = phi float [ %5486, %5469 ], [ 0.000000e+00, %5438 ]
  %5502 = phi float [ %5493, %5469 ], [ 0.000000e+00, %5438 ]
  %5503 = phi float [ %5497, %5469 ], [ 0.000000e+00, %5438 ]
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5501, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fmul fast float %5504, 0x3FDF454380000000
  %5506 = fmul fast float %5504, %5504
  %5507 = fmul fast float %5506, 0x3FEE471020000000
  %5508 = fadd fast float %5507, 0xBFD42F6020000000
  %5509 = fmul fast float %5464, 0x3FD20DD760000000
  %5510 = fmul fast float %5508, %5503
  %5511 = fadd fast float %5510, %5509
  %5512 = fmul fast float %5505, %5502
  %5513 = fadd fast float %5511, %5512
  %5514 = fsub fast float %5511, %5512
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5501, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fmul fast float %5515, 0x3FDF454380000000
  %5517 = fmul fast float %5515, %5515
  %5518 = fmul fast float %5517, 0x3FEE471020000000
  %5519 = fadd fast float %5518, 0xBFD42F6020000000
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5502, float %5503, float 0x3FD20DD760000000, float %5516, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5522 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = fcmp fast oeq float %5522, 0.000000e+00
  %5524 = fcmp fast oeq float %5521, 0.000000e+00
  %5525 = or i1 %5524, %5523
  br i1 %5525, label %5555, label %5526

; <label>:5526                                    ; preds = %5498
  %5527 = fsub fast float -0.000000e+00, %77
  %5528 = fsub fast float -0.000000e+00, %75
  %5529 = call float @dx.op.unary.f32(i32 24, float %5522)  ; Sqrt(value)
  %5530 = fdiv fast float %5529, %5521
  %5531 = fcmp fast ogt float %5530, 0x3FFB6F8900000000
  %5532 = select i1 %5531, float 0x3FFB6F8900000000, float %5530
  %5533 = fmul fast float %5532, 0x3FE8A23460000000
  %5534 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5535 = call float @dx.op.binary.f32(i32 35, float %5532, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5536 = fmul fast float %5534, %5521
  %5537 = fmul fast float %5535, 0x3FF279A740000000
  %5538 = fadd fast float %5537, -1.000000e+00
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5528, float %76, float %5527, float %5528, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.unary.f32(i32 25, float %5539)  ; Rsqrt(value)
  %5541 = fmul fast float %5540, %5527
  %5542 = fmul fast float %5540, %5528
  %5543 = fmul fast float %5540, %76
  %5544 = fmul fast float %5538, %5538
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5535, 0x40005F8BE0000000
  %5547 = fsub fast float 0x400C5BF8A0000000, %5546
  %5548 = fdiv fast float %5536, %5547
  %5549 = fmul fast float %5548, 0x3FEE31C3C0000000
  %5550 = fmul fast float %5549, %5545
  %5551 = fmul fast float %5535, 0x3FDACB7480000000
  %5552 = fadd fast float %5551, 0xBFD7347680000000
  %5553 = fmul fast float %5552, %5548
  %5554 = fmul fast float %5553, %5545
  br label %5555

; <label>:5555                                    ; preds = %5526, %5498
  %5556 = phi float [ %5541, %5526 ], [ 0.000000e+00, %5498 ]
  %5557 = phi float [ %5542, %5526 ], [ 0.000000e+00, %5498 ]
  %5558 = phi float [ %5543, %5526 ], [ 0.000000e+00, %5498 ]
  %5559 = phi float [ %5550, %5526 ], [ 0.000000e+00, %5498 ]
  %5560 = phi float [ %5554, %5526 ], [ 0.000000e+00, %5498 ]
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5558, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = fmul fast float %5561, 0x3FDF454380000000
  %5563 = fmul fast float %5561, %5561
  %5564 = fmul fast float %5563, 0x3FEE471020000000
  %5565 = fadd fast float %5564, 0xBFD42F6020000000
  %5566 = fmul fast float %5521, 0x3FD20DD760000000
  %5567 = fmul fast float %5565, %5560
  %5568 = fadd fast float %5567, %5566
  %5569 = fmul fast float %5562, %5559
  %5570 = fadd fast float %5568, %5569
  %5571 = fsub fast float %5568, %5569
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5558, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = fmul fast float %5572, 0x3FDF454380000000
  %5574 = fmul fast float %5572, %5572
  %5575 = fmul fast float %5574, 0x3FEE471020000000
  %5576 = fadd fast float %5575, 0xBFD42F6020000000
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5521, float %5559, float %5560, float 0x3FD20DD760000000, float %5573, float %5576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5579 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5580 = fcmp fast oeq float %5579, 0.000000e+00
  %5581 = fcmp fast oeq float %5578, 0.000000e+00
  %5582 = or i1 %5581, %5580
  br i1 %5582, label %5612, label %5583

; <label>:5583                                    ; preds = %5555
  %5584 = fsub fast float -0.000000e+00, %73
  %5585 = fsub fast float -0.000000e+00, %71
  %5586 = call float @dx.op.unary.f32(i32 24, float %5579)  ; Sqrt(value)
  %5587 = fdiv fast float %5586, %5578
  %5588 = fcmp fast ogt float %5587, 0x3FFB6F8900000000
  %5589 = select i1 %5588, float 0x3FFB6F8900000000, float %5587
  %5590 = fmul fast float %5589, 0x3FE8A23460000000
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = call float @dx.op.binary.f32(i32 35, float %5589, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5593 = fmul fast float %5591, %5578
  %5594 = fmul fast float %5592, 0x3FF279A740000000
  %5595 = fadd fast float %5594, -1.000000e+00
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %72, float %5584, float %5585, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = call float @dx.op.unary.f32(i32 25, float %5596)  ; Rsqrt(value)
  %5598 = fmul fast float %5597, %5584
  %5599 = fmul fast float %5597, %5585
  %5600 = fmul fast float %5597, %72
  %5601 = fmul fast float %5595, %5595
  %5602 = fsub fast float 1.000000e+00, %5601
  %5603 = fmul fast float %5592, 0x40005F8BE0000000
  %5604 = fsub fast float 0x400C5BF8A0000000, %5603
  %5605 = fdiv fast float %5593, %5604
  %5606 = fmul fast float %5605, 0x3FEE31C3C0000000
  %5607 = fmul fast float %5606, %5602
  %5608 = fmul fast float %5592, 0x3FDACB7480000000
  %5609 = fadd fast float %5608, 0xBFD7347680000000
  %5610 = fmul fast float %5609, %5605
  %5611 = fmul fast float %5610, %5602
  br label %5612

; <label>:5612                                    ; preds = %5583, %5555
  %5613 = phi float [ %5598, %5583 ], [ 0.000000e+00, %5555 ]
  %5614 = phi float [ %5599, %5583 ], [ 0.000000e+00, %5555 ]
  %5615 = phi float [ %5600, %5583 ], [ 0.000000e+00, %5555 ]
  %5616 = phi float [ %5607, %5583 ], [ 0.000000e+00, %5555 ]
  %5617 = phi float [ %5611, %5583 ], [ 0.000000e+00, %5555 ]
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fmul fast float %5618, 0x3FDF454380000000
  %5620 = fmul fast float %5618, %5618
  %5621 = fmul fast float %5620, 0x3FEE471020000000
  %5622 = fadd fast float %5621, 0xBFD42F6020000000
  %5623 = fmul fast float %5578, 0x3FD20DD760000000
  %5624 = fmul fast float %5622, %5617
  %5625 = fadd fast float %5624, %5623
  %5626 = fmul fast float %5619, %5616
  %5627 = fadd fast float %5625, %5626
  %5628 = fsub fast float %5625, %5626
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fmul fast float %5629, 0x3FDF454380000000
  %5631 = fmul fast float %5629, %5629
  %5632 = fmul fast float %5631, 0x3FEE471020000000
  %5633 = fadd fast float %5632, 0xBFD42F6020000000
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5616, float %5617, float 0x3FD20DD760000000, float %5630, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = call float @dx.op.binary.f32(i32 35, float %5513, float 0.000000e+00)  ; FMax(a,b)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5637 = call float @dx.op.binary.f32(i32 35, float %5627, float 0.000000e+00)  ; FMax(a,b)
  %5638 = call float @dx.op.binary.f32(i32 35, float %5514, float 0.000000e+00)  ; FMax(a,b)
  %5639 = call float @dx.op.binary.f32(i32 35, float %5571, float 0.000000e+00)  ; FMax(a,b)
  %5640 = call float @dx.op.binary.f32(i32 35, float %5628, float 0.000000e+00)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 35, float %5520, float 0.000000e+00)  ; FMax(a,b)
  %5642 = call float @dx.op.binary.f32(i32 35, float %5577, float 0.000000e+00)  ; FMax(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5634, float 0.000000e+00)  ; FMax(a,b)
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = call float @dx.op.binary.f32(i32 36, float %5396, float %5645)  ; FMin(a,b)
  %5647 = fsub fast float 1.000000e+00, %5459
  %5648 = fmul fast float %5646, %5647
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = bitcast float %5649 to i32
  %5651 = sub nsw i32 2129859010, %5650
  %5652 = bitcast i32 %5651 to float
  %5653 = call float @dx.op.binary.f32(i32 36, float %5397, float %5645)  ; FMin(a,b)
  %5654 = fmul fast float %5653, %5647
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = call float @dx.op.binary.f32(i32 36, float %5398, float %5645)  ; FMin(a,b)
  %5660 = fmul fast float %5659, %5647
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5635, %5459
  %5666 = fmul fast float %5665, %5652
  %5667 = fmul fast float %5636, %5459
  %5668 = fmul fast float %5667, %5658
  %5669 = fmul fast float %5637, %5459
  %5670 = fmul fast float %5669, %5664
  %5671 = call float @dx.op.binary.f32(i32 36, float %5402, float %5645)  ; FMin(a,b)
  %5672 = fmul fast float %5671, %5647
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = call float @dx.op.binary.f32(i32 36, float %5403, float %5645)  ; FMin(a,b)
  %5678 = fmul fast float %5677, %5647
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = bitcast float %5679 to i32
  %5681 = sub nsw i32 2129859010, %5680
  %5682 = bitcast i32 %5681 to float
  %5683 = call float @dx.op.binary.f32(i32 36, float %5448, float %5645)  ; FMin(a,b)
  %5684 = fmul fast float %5683, %5647
  %5685 = fsub fast float 1.000000e+00, %5684
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = bitcast i32 %5687 to float
  %5689 = fmul fast float %5641, %5459
  %5690 = fmul fast float %5689, %5676
  %5691 = fmul fast float %5642, %5459
  %5692 = fmul fast float %5691, %5682
  %5693 = fmul fast float %5643, %5459
  %5694 = fmul fast float %5693, %5688
  %5695 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5668, float %5670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5696 = select i1 %252, float 0.000000e+00, float %5666
  %5697 = select i1 %252, float %5695, float %5668
  %5698 = select i1 %252, float 0.000000e+00, float %5670
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5639, float %5640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = select i1 %252, float 0.000000e+00, float %5638
  %5701 = select i1 %252, float %5699, float %5639
  %5702 = select i1 %252, float 0.000000e+00, float %5640
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5690, float %5692, float %5694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = select i1 %252, float 0.000000e+00, float %5690
  %5705 = select i1 %252, float %5703, float %5692
  %5706 = select i1 %252, float 0.000000e+00, float %5694
  %5707 = fmul fast float %4117, %4117
  %5708 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5709 = fmul fast float %5450, 9.843750e-01
  %5710 = fmul fast float %5405, 9.843750e-01
  %5711 = fadd fast float %5709, 7.812500e-03
  %5712 = fadd fast float %5710, 7.812500e-03
  %5713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %5711, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5714 = extractvalue %dx.types.ResRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.ResRet.f32 %5713, 1
  %5716 = extractvalue %dx.types.ResRet.f32 %5713, 2
  %5717 = extractvalue %dx.types.ResRet.f32 %5713, 3
  %5718 = fsub fast float 1.000000e+00, %5708
  %5719 = fsub fast float %5716, %5714
  %5720 = fsub fast float %5717, %5715
  %5721 = fmul fast float %5719, %5718
  %5722 = fmul fast float %5720, %5718
  %5723 = fadd fast float %5721, %5714
  %5724 = fadd fast float %5722, %5715
  %5725 = fmul fast float %5723, %5402
  %5726 = fmul fast float %5723, %5403
  %5727 = fmul fast float %5723, %5448
  %5728 = fadd fast float %5725, %5724
  %5729 = fadd fast float %5726, %5724
  %5730 = fadd fast float %5727, %5724
  %5731 = call float @dx.op.binary.f32(i32 35, float %5729, float %5730)  ; FMax(a,b)
  %5732 = call float @dx.op.binary.f32(i32 35, float %5728, float %5731)  ; FMax(a,b)
  %5733 = fsub fast float 1.000000e+00, %5732
  %5734 = call float @dx.op.binary.f32(i32 35, float %5450, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5735 = fdiv fast float %4117, %5734
  %5736 = fcmp fast olt float %4216, 1.270000e+02
  %5737 = fcmp fast olt float %4217, 1.270000e+02
  %5738 = fcmp fast olt float %4218, 1.270000e+02
  %5739 = fmul fast float %4216, 0xBFF7154760000000
  %5740 = fmul fast float %5739, %5735
  %5741 = fmul fast float %4217, 0xBFF7154760000000
  %5742 = fmul fast float %5741, %5735
  %5743 = fmul fast float %4218, 0xBFF7154760000000
  %5744 = fmul fast float %5743, %5735
  %5745 = call float @dx.op.unary.f32(i32 21, float %5740)  ; Exp(value)
  %5746 = call float @dx.op.unary.f32(i32 21, float %5742)  ; Exp(value)
  %5747 = call float @dx.op.unary.f32(i32 21, float %5744)  ; Exp(value)
  %5748 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5749 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  %5750 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5751 = select i1 %5736, float %5748, float 0.000000e+00
  %5752 = select i1 %5737, float %5749, float 0.000000e+00
  %5753 = select i1 %5738, float %5750, float 0.000000e+00
  %5754 = fmul fast float %5751, %5733
  %5755 = fmul fast float %5752, %5733
  %5756 = fmul fast float %5753, %5733
  %5757 = fadd fast float %5754, -1.000000e+00
  %5758 = fadd fast float %5755, -1.000000e+00
  %5759 = fadd fast float %5756, -1.000000e+00
  %5760 = fmul fast float %5757, %1342
  %5761 = fmul fast float %5758, %1342
  %5762 = fmul fast float %5759, %1342
  %5763 = fmul fast float %5728, %5704
  %5764 = fmul fast float %5729, %5705
  %5765 = fmul fast float %5730, %5706
  %5766 = fadd fast float %5763, %4139
  %5767 = fmul fast float %5766, %1342
  %5768 = fadd fast float %5764, %4141
  %5769 = fmul fast float %5768, %1342
  %5770 = fadd fast float %5765, %4143
  %5771 = fmul fast float %5770, %1342
  %5772 = fmul fast float %5403, 0x4012D0A400000000
  %5773 = fadd fast float %5762, 1.000000e+00
  %5774 = fadd fast float %5761, 1.000000e+00
  %5775 = fadd fast float %5760, 1.000000e+00
  %5776 = fmul fast float %5733, %5698
  %5777 = fmul fast float %5733, %5697
  %5778 = fmul fast float %5733, %5696
  %5779 = fsub fast float 1.000000e+00, %5405
  %5780 = fmul fast float %5779, %1342
  %5781 = fsub fast float 1.000000e+00, %5780
  %5782 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5783 = fsub fast float 1.000000e+00, %5782
  %5784 = fadd fast float %5772, 0x3FDB6377A0000000
  %5785 = fmul fast float %5783, %5784
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = fadd fast float %5785, %5786
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = call float @dx.op.binary.f32(i32 35, float %5788, float 0x3F847AE140000000)  ; FMax(a,b)
  %5790 = fmul fast float %5789, %5789
  %5791 = fmul fast float %5790, %5790
  %5792 = fmul fast float %5791, 0xC00A935000000000
  %5793 = call float @dx.op.unary.f32(i32 21, float %5792)  ; Exp(value)
  %5794 = fsub fast float 1.000000e+00, %5793
  %5795 = fmul fast float %5775, %5700
  %5796 = fmul fast float %5795, %5794
  %5797 = fmul fast float %5774, %5701
  %5798 = fmul fast float %5797, %5794
  %5799 = fmul fast float %5773, %5702
  %5800 = fmul fast float %5799, %5794
  %5801 = fadd fast float %5796, %5778
  %5802 = fmul fast float %5801, %1342
  %5803 = fadd fast float %5798, %5777
  %5804 = fmul fast float %5803, %1342
  %5805 = fadd fast float %5800, %5776
  %5806 = fmul fast float %5805, %1342
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 3
  %5809 = fcmp fast oeq float %5808, 0.000000e+00
  br i1 %5809, label %6931, label %5810

; <label>:5810                                    ; preds = %5612
  %5811 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5812 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5813 = extractvalue %dx.types.CBufRet.f32 %5807, 2
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.CBufRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.CBufRet.f32 %5814, 2
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.CBufRet.f32 %5818, 1
  %5821 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %5817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = select i1 %252, float %5819, float %5815
  %5823 = select i1 %252, float %5821, float %5816
  %5824 = select i1 %252, float %5820, float %5817
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5827 = fmul fast float %5826, %114
  %5828 = fmul fast float %5826, %115
  %5829 = fmul fast float %5826, %116
  %5830 = fadd fast float %5827, %186
  %5831 = fadd fast float %5828, %187
  %5832 = fadd fast float %5829, %188
  %5833 = fcmp fast olt float %5808, 0.000000e+00
  br i1 %5833, label %6473, label %5834

; <label>:5834                                    ; preds = %5810
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5837 = extractvalue %dx.types.CBufRet.f32 %5835, 1
  %5838 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5839 = extractvalue %dx.types.CBufRet.f32 %5835, 3
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5843 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5844 = extractvalue %dx.types.CBufRet.f32 %5840, 3
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5849 = extractvalue %dx.types.CBufRet.f32 %5845, 3
  %5850 = fmul fast float %5836, %5830
  %5851 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5837, float %5850)  ; FMad(a,b,c)
  %5852 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5838, float %5851)  ; FMad(a,b,c)
  %5853 = fadd fast float %5852, %5839
  %5854 = fmul fast float %5841, %5830
  %5855 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5842, float %5854)  ; FMad(a,b,c)
  %5856 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5843, float %5855)  ; FMad(a,b,c)
  %5857 = fadd fast float %5856, %5844
  %5858 = fmul fast float %5846, %5830
  %5859 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5847, float %5858)  ; FMad(a,b,c)
  %5860 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5848, float %5859)  ; FMad(a,b,c)
  %5861 = fadd fast float %5860, %5849
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 0
  %5864 = fcmp fast une float %5863, 0.000000e+00
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 0
  %5867 = extractvalue %dx.types.CBufRet.f32 %5865, 1
  %5868 = extractvalue %dx.types.CBufRet.f32 %5865, 3
  %5869 = fmul fast float %5868, %5853
  %5870 = fmul fast float %5868, %5857
  %5871 = fadd fast float %5869, %5866
  %5872 = fadd fast float %5870, %5867
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %5877 = fmul fast float %5876, %5853
  %5878 = fmul fast float %5876, %5857
  %5879 = fadd fast float %5877, %5874
  %5880 = fadd fast float %5878, %5875
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5883 = fsub fast float %5882, %5861
  %5884 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5885 = fmul fast float %5883, %5884
  %5886 = fsub fast float 1.000000e+00, %5885
  %5887 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  br i1 %5864, label %5948, label %5888

; <label>:5888                                    ; preds = %5834
  %5889 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5892 = fadd fast float %5891, %5889
  %5893 = fcmp fast ogt float %5892, 0.000000e+00
  br i1 %5893, label %5894, label %5918

; <label>:5894                                    ; preds = %5888
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %5897 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5898 = fsub fast float %5879, %5896
  %5899 = fsub fast float %5880, %5897
  %5900 = fcmp fast olt float %5898, 0.000000e+00
  %5901 = fcmp fast olt float %5899, 0.000000e+00
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.CBufRet.f32 %5902, 2
  %5906 = extractvalue %dx.types.CBufRet.f32 %5902, 3
  %5907 = select i1 %5900, float %5903, float %5905
  %5908 = select i1 %5901, float %5904, float %5906
  %5909 = fmul fast float %5907, %5898
  %5910 = fmul fast float %5908, %5899
  %5911 = call float @dx.op.unary.f32(i32 6, float %5909)  ; FAbs(value)
  %5912 = call float @dx.op.unary.f32(i32 6, float %5910)  ; FAbs(value)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5914 = call float @dx.op.binary.f32(i32 35, float %5911, float %5912)  ; FMax(a,b)
  %5915 = fsub fast float %5913, %5914
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = fmul fast float %5916, %5887
  br label %5918

; <label>:5918                                    ; preds = %5894, %5888
  %5919 = phi float [ %5917, %5894 ], [ 0.000000e+00, %5888 ]
  %5920 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5921 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5922 = fadd fast float %5921, %5920
  %5923 = fcmp fast ogt float %5922, 0.000000e+00
  br i1 %5923, label %5924, label %5948

; <label>:5924                                    ; preds = %5918
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5928 = fsub fast float %5871, %5926
  %5929 = fsub fast float %5872, %5927
  %5930 = fcmp fast olt float %5928, 0.000000e+00
  %5931 = fcmp fast olt float %5929, 0.000000e+00
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5936 = extractvalue %dx.types.CBufRet.f32 %5932, 3
  %5937 = select i1 %5930, float %5933, float %5935
  %5938 = select i1 %5931, float %5934, float %5936
  %5939 = fmul fast float %5937, %5928
  %5940 = fmul fast float %5938, %5929
  %5941 = call float @dx.op.unary.f32(i32 6, float %5939)  ; FAbs(value)
  %5942 = call float @dx.op.unary.f32(i32 6, float %5940)  ; FAbs(value)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5944 = call float @dx.op.binary.f32(i32 35, float %5941, float %5942)  ; FMax(a,b)
  %5945 = fsub fast float %5943, %5944
  %5946 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5947 = fmul fast float %5946, %5887
  br label %5948

; <label>:5948                                    ; preds = %5924, %5918, %5834
  %5949 = phi float [ 0.000000e+00, %5834 ], [ %5947, %5924 ], [ 0.000000e+00, %5918 ]
  %5950 = phi float [ 0.000000e+00, %5834 ], [ %5919, %5924 ], [ %5919, %5918 ]
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 1
  %5953 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.CBufRet.f32 %5954, 1
  %5957 = fsub fast float %5853, %5955
  %5958 = fsub fast float %5857, %5956
  %5959 = fcmp fast olt float %5957, 0.000000e+00
  %5960 = fcmp fast olt float %5958, 0.000000e+00
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.CBufRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.CBufRet.f32 %5961, 2
  %5965 = extractvalue %dx.types.CBufRet.f32 %5961, 3
  %5966 = select i1 %5959, float %5962, float %5964
  %5967 = select i1 %5960, float %5963, float %5965
  %5968 = fmul fast float %5966, %5957
  %5969 = fmul fast float %5967, %5958
  %5970 = call float @dx.op.unary.f32(i32 6, float %5968)  ; FAbs(value)
  %5971 = call float @dx.op.unary.f32(i32 6, float %5969)  ; FAbs(value)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5973 = call float @dx.op.binary.f32(i32 35, float %5970, float %5971)  ; FMax(a,b)
  %5974 = fsub fast float %5972, %5973
  %5975 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5976 = call float @dx.op.binary.f32(i32 36, float %5975, float %5953)  ; FMin(a,b)
  %5977 = fmul fast float %5976, %5887
  %5978 = fsub fast float %5949, %5977
  %5979 = fsub fast float %5950, %5949
  %5980 = fsub fast float %5979, %5977
  %5981 = call float @dx.op.binary.f32(i32 35, float %5949, float %5950)  ; FMax(a,b)
  %5982 = call float @dx.op.binary.f32(i32 35, float %5977, float %5981)  ; FMax(a,b)
  %5983 = fcmp fast olt float %5982, 1.000000e+00
  br i1 %5983, label %5984, label %6382, !dx.controlflow.hints !94

; <label>:5984                                    ; preds = %5948
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5987 = fcmp fast une float %5986, 0.000000e+00
  br i1 %5987, label %5988, label %6382, !dx.controlflow.hints !95

; <label>:5988                                    ; preds = %5984
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.CBufRet.f32 %5989, 2
  %5993 = extractvalue %dx.types.CBufRet.f32 %5989, 3
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 0
  %5996 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5997 = extractvalue %dx.types.CBufRet.f32 %5994, 2
  %5998 = extractvalue %dx.types.CBufRet.f32 %5994, 3
  %5999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6000 = extractvalue %dx.types.CBufRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.CBufRet.f32 %5999, 1
  %6002 = extractvalue %dx.types.CBufRet.f32 %5999, 2
  %6003 = extractvalue %dx.types.CBufRet.f32 %5999, 3
  %6004 = fmul fast float %5990, %5830
  %6005 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5991, float %6004)  ; FMad(a,b,c)
  %6006 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5992, float %6005)  ; FMad(a,b,c)
  %6007 = fadd fast float %6006, %5993
  %6008 = fmul fast float %5995, %5830
  %6009 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5996, float %6008)  ; FMad(a,b,c)
  %6010 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5997, float %6009)  ; FMad(a,b,c)
  %6011 = fadd fast float %6010, %5998
  %6012 = fmul fast float %6000, %5830
  %6013 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %6001, float %6012)  ; FMad(a,b,c)
  %6014 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %6002, float %6013)  ; FMad(a,b,c)
  %6015 = fadd fast float %6014, %6003
  %6016 = fcmp fast oge float %6007, 1.000000e+00
  %6017 = fcmp fast oge float %6011, 1.000000e+00
  %6018 = or i1 %6016, %6017
  %6019 = fcmp fast olt float %6007, 0.000000e+00
  %6020 = fcmp fast olt float %6011, 0.000000e+00
  %6021 = or i1 %6019, %6020
  %6022 = or i1 %6018, %6021
  br i1 %6022, label %6382, label %6023, !dx.controlflow.hints !96

; <label>:6023                                    ; preds = %5988
  %6024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.f32 %6024, 0
  %6026 = extractvalue %dx.types.CBufRet.f32 %6024, 1
  %6027 = extractvalue %dx.types.CBufRet.f32 %6024, 2
  %6028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.i32 %6028, 2
  %6030 = uitofp i32 %6029 to float
  %6031 = extractvalue %dx.types.CBufRet.i32 %6028, 3
  %6032 = uitofp i32 %6031 to float
  %6033 = extractvalue %dx.types.CBufRet.f32 %6024, 3
  %6034 = fmul fast float %6033, 2.000000e+00
  %6035 = fsub fast float %6007, %6025
  %6036 = fsub fast float %6011, %6026
  %6037 = fmul fast float %6034, %6035
  %6038 = fmul fast float %6034, %6036
  %6039 = fdiv fast float 1.000000e+00, %5813
  %6040 = fmul fast float %6038, %6039
  %6041 = call float @dx.op.unary.f32(i32 6, float %6040)  ; FAbs(value)
  %6042 = fmul fast float %6027, %5832
  %6043 = fmul fast float %6042, %6034
  %6044 = call float @dx.op.unary.f32(i32 6, float %6043)  ; FAbs(value)
  %6045 = call float @dx.op.unary.f32(i32 6, float %6037)  ; FAbs(value)
  %6046 = call float @dx.op.binary.f32(i32 35, float %6044, float %6041)  ; FMax(a,b)
  %6047 = call float @dx.op.binary.f32(i32 35, float %6045, float %6046)  ; FMax(a,b)
  %6048 = fmul fast float %6047, 2.000000e+00
  %6049 = call float @dx.op.unary.f32(i32 23, float %6048)  ; Log(value)
  %6050 = call float @dx.op.binary.f32(i32 35, float %6049, float %6030)  ; FMax(a,b)
  %6051 = call float @dx.op.unary.f32(i32 22, float %6050)  ; Frc(value)
  %6052 = fadd fast float %6051, 0xBFEA666660000000
  %6053 = fmul fast float %6052, 8.000000e+00
  %6054 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  %6055 = call float @dx.op.unary.f32(i32 27, float %6050)  ; Round_ni(value)
  %6056 = fadd fast float %6055, %6054
  %6057 = call float @dx.op.binary.f32(i32 36, float %6056, float %6032)  ; FMin(a,b)
  %6058 = call float @dx.op.unary.f32(i32 27, float %6057)  ; Round_ni(value)
  %6059 = fsub fast float -0.000000e+00, %6058
  %6060 = call float @dx.op.unary.f32(i32 21, float %6059)  ; Exp(value)
  %6061 = fmul fast float %6060, %6034
  %6062 = fmul fast float %6061, %6007
  %6063 = fmul fast float %6061, %6011
  %6064 = fmul fast float %6062, 2.500000e-01
  %6065 = fmul fast float %6063, 2.500000e-01
  %6066 = fadd fast float %6064, 5.000000e-01
  %6067 = fadd fast float %6065, 5.000000e-01
  %6068 = fsub fast float %6032, %6030
  %6069 = fptoui float %6068 to i32
  %6070 = add i32 %6069, 320
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %6070)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6073 = extractvalue %dx.types.CBufRet.f32 %6071, 1
  %6074 = fcmp fast une float %6057, %6032
  %6075 = fsub fast float %6007, %6072
  %6076 = fsub fast float %6011, %6073
  %6077 = call float @dx.op.unary.f32(i32 6, float %6075)  ; FAbs(value)
  %6078 = call float @dx.op.unary.f32(i32 6, float %6076)  ; FAbs(value)
  %6079 = fmul fast float %6077, %6061
  %6080 = fmul fast float %6078, %6061
  %6081 = fcmp fast olt float %6079, 1.000000e+00
  %6082 = fcmp fast olt float %6080, 1.000000e+00
  %6083 = and i1 %6081, %6082
  %6084 = or i1 %6074, %6083
  br i1 %6084, label %6085, label %6382, !dx.controlflow.hints !97

; <label>:6085                                    ; preds = %6023
  %6086 = fmul fast float %6063, 5.000000e-01
  %6087 = fmul fast float %6062, 5.000000e-01
  %6088 = fadd fast float %6086, 5.000000e-01
  %6089 = fadd fast float %6087, 5.000000e-01
  %6090 = sitofp i32 %6029 to float
  %6091 = fsub fast float %6057, %6090
  %6092 = call float @dx.op.unary.f32(i32 27, float %6091)  ; Round_ni(value)
  %6093 = call float @dx.op.unary.f32(i32 22, float %6057)  ; Frc(value)
  %6094 = call float @dx.op.unary.f32(i32 22, float %6089)  ; Frc(value)
  %6095 = call float @dx.op.unary.f32(i32 22, float %6088)  ; Frc(value)
  %6096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %6094, float %6095, float %6092, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6097 = extractvalue %dx.types.ResRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.ResRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.ResRet.f32 %6096, 2
  %6100 = extractvalue %dx.types.ResRet.f32 %6096, 3
  %6101 = fcmp fast ogt float %6093, 0.000000e+00
  br i1 %6101, label %6102, label %6123, !dx.controlflow.hints !98

; <label>:6102                                    ; preds = %6085
  %6103 = fadd fast float %6092, 1.000000e+00
  %6104 = call float @dx.op.unary.f32(i32 22, float %6066)  ; Frc(value)
  %6105 = call float @dx.op.unary.f32(i32 22, float %6067)  ; Frc(value)
  %6106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %6104, float %6105, float %6103, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6107 = extractvalue %dx.types.ResRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.ResRet.f32 %6106, 1
  %6109 = extractvalue %dx.types.ResRet.f32 %6106, 2
  %6110 = extractvalue %dx.types.ResRet.f32 %6106, 3
  %6111 = fsub fast float %6107, %6097
  %6112 = fsub fast float %6108, %6098
  %6113 = fsub fast float %6109, %6099
  %6114 = fsub fast float %6110, %6100
  %6115 = fmul fast float %6111, %6093
  %6116 = fmul fast float %6112, %6093
  %6117 = fmul fast float %6113, %6093
  %6118 = fmul fast float %6114, %6093
  %6119 = fadd fast float %6115, %6097
  %6120 = fadd fast float %6116, %6098
  %6121 = fadd fast float %6117, %6099
  %6122 = fadd fast float %6118, %6100
  br label %6123

; <label>:6123                                    ; preds = %6102, %6085
  %6124 = phi float [ %6119, %6102 ], [ %6097, %6085 ]
  %6125 = phi float [ %6120, %6102 ], [ %6098, %6085 ]
  %6126 = phi float [ %6121, %6102 ], [ %6099, %6085 ]
  %6127 = phi float [ %6122, %6102 ], [ %6100, %6085 ]
  %6128 = fadd fast float %6124, -5.000000e-01
  %6129 = fadd fast float %6126, -5.000000e-01
  %6130 = fmul fast float %6128, 0xBFD5555560000000
  %6131 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6129, float %6130)  ; FMad(a,b,c)
  %6132 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6125, float 0.000000e+00)  ; FMad(a,b,c)
  %6133 = fadd fast float %6132, %6127
  %6134 = fmul fast float %6128, -7.500000e-01
  %6135 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6129, float %6134)  ; FMad(a,b,c)
  %6136 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6125, float 0.000000e+00)  ; FMad(a,b,c)
  %6137 = fadd fast float %6136, %6127
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.CBufRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6144 = extractvalue %dx.types.CBufRet.f32 %6140, 3
  %6145 = fsub fast float %6141, %6131
  %6146 = fsub fast float %6142, %6133
  %6147 = fsub fast float %6143, %6135
  %6148 = fsub fast float %6144, %6137
  %6149 = fmul fast float %6145, %6139
  %6150 = fmul fast float %6146, %6139
  %6151 = fmul fast float %6147, %6139
  %6152 = fmul fast float %6148, %6139
  %6153 = fadd fast float %6149, %6131
  %6154 = fadd fast float %6150, %6133
  %6155 = fadd fast float %6151, %6135
  %6156 = fadd fast float %6152, %6137
  %6157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6158 = extractvalue %dx.types.ResRet.i32 %6157, 0
  %6159 = and i32 %6158, 536870911
  %6160 = uitofp i32 %6159 to float
  %6161 = fmul fast float %6160, %6007
  %6162 = fmul fast float %6160, %6011
  %6163 = fptoui float %6161 to i32
  %6164 = fptoui float %6162 to i32
  %6165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6166 = extractvalue %dx.types.ResRet.i32 %6165, 0
  %6167 = and i32 %6166, 31
  %6168 = lshr i32 %6163, %6167
  %6169 = lshr i32 %6164, %6167
  %6170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6171 = extractvalue %dx.types.ResRet.i32 %6170, 0
  %6172 = and i32 %6171, 31
  %6173 = shl i32 1, %6172
  %6174 = call i32 @dx.op.binary.i32(i32 40, i32 %6173, i32 4)  ; UMin(a,b)
  %6175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.i32 %6175, 0
  %6177 = extractvalue %dx.types.ResRet.i32 %6175, 1
  %6178 = icmp eq i32 %6174, 0
  br i1 %6178, label %6220, label %6179

; <label>:6179                                    ; preds = %6123
  br label %6180

; <label>:6180                                    ; preds = %6208, %6179
  %6181 = phi i32 [ %6211, %6208 ], [ 0, %6179 ]
  %6182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6183 = extractvalue %dx.types.ResRet.i32 %6182, 0
  %6184 = lshr i32 %6183, 16
  %6185 = and i32 %6184, 31
  %6186 = shl i32 %6169, %6185
  %6187 = add i32 %6186, %6168
  %6188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6189 = extractvalue %dx.types.ResRet.i32 %6188, 0
  %6190 = and i32 %6189, 31
  %6191 = shl i32 %6187, %6190
  %6192 = add i32 %6191, %6181
  %6193 = shl i32 %6192, 2
  %6194 = add i32 %6193, 32
  %6195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6194, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.i32 %6195, 0
  %6197 = icmp slt i32 %6196, 0
  %6198 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6181
  %6199 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6181
  %6200 = bitcast float* %6198 to i32*
  %6201 = bitcast float* %6199 to i32*
  br i1 %6197, label %6202, label %6208

; <label>:6202                                    ; preds = %6180
  %6203 = and i32 %6196, 1073741823
  %6204 = add nuw nsw i32 %6203, 20
  %6205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6204, i32 undef)  ; BufferLoad(srv,index,wot)
  %6206 = extractvalue %dx.types.ResRet.i32 %6205, 0
  %6207 = extractvalue %dx.types.ResRet.i32 %6205, 1
  br label %6208

; <label>:6208                                    ; preds = %6202, %6180
  %6209 = phi i32 [ %6206, %6202 ], [ %6176, %6180 ]
  %6210 = phi i32 [ %6207, %6202 ], [ %6177, %6180 ]
  store i32 %6209, i32* %6200, align 4
  store i32 %6210, i32* %6201, align 4
  %6211 = add nuw i32 %6181, 1
  %6212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.i32 %6212, 2
  %6214 = icmp eq i32 %6213, 0
  %6215 = icmp ugt i32 %6196, -1073741825
  %6216 = and i1 %6215, %6214
  %6217 = icmp ult i32 %6211, %6174
  %6218 = and i1 %6216, %6217
  br i1 %6218, label %6180, label %6219

; <label>:6219                                    ; preds = %6208
  br label %6220

; <label>:6220                                    ; preds = %6219, %6123
  %6221 = phi i32 [ 0, %6123 ], [ %6211, %6219 ]
  %6222 = extractvalue %dx.types.CBufRet.f32 %5985, 2
  %6223 = fptoui float %6222 to i32
  %6224 = icmp eq i32 %6223, 0
  br i1 %6224, label %6276, label %6225

; <label>:6225                                    ; preds = %6220
  br label %6226

; <label>:6226                                    ; preds = %6271, %6225
  %6227 = phi i32 [ %6272, %6271 ], [ %6221, %6225 ]
  %6228 = phi i32 [ %6273, %6271 ], [ 0, %6225 ]
  %6229 = lshr i32 %6228, 2
  %6230 = and i32 %6228, 3
  %6231 = add nuw nsw i32 %6229, 83
  %6232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %6231)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.i32 %6232, 0
  %6234 = extractvalue %dx.types.CBufRet.i32 %6232, 1
  %6235 = extractvalue %dx.types.CBufRet.i32 %6232, 2
  %6236 = extractvalue %dx.types.CBufRet.i32 %6232, 3
  %6237 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %6233, i32* %6237, align 4
  %6238 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %6234, i32* %6238, align 4
  %6239 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %6235, i32* %6239, align 4
  %6240 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %6236, i32* %6240, align 4
  %6241 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %6230
  %6242 = load i32, i32* %6241, align 4, !tbaa !99, !noalias !103
  %6243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6244 = extractvalue %dx.types.ResRet.i32 %6243, 0
  %6245 = lshr i32 %6244, 16
  %6246 = and i32 %6245, 31
  %6247 = shl i32 %6169, %6246
  %6248 = add i32 %6247, %6168
  %6249 = shl i32 %6248, 2
  %6250 = add i32 %6249, %6242
  %6251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.i32 %6251, 0
  %6253 = icmp eq i32 %6252, 0
  br i1 %6253, label %6271, label %6254

; <label>:6254                                    ; preds = %6226
  %6255 = icmp slt i32 %6252, 0
  %6256 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6227
  %6257 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6227
  %6258 = bitcast float* %6256 to i32*
  %6259 = bitcast float* %6257 to i32*
  br i1 %6255, label %6260, label %6267

; <label>:6260                                    ; preds = %6254
  %6261 = and i32 %6252, 1073741823
  %6262 = add i32 %6242, 20
  %6263 = add i32 %6262, %6261
  %6264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6263, i32 undef)  ; BufferLoad(srv,index,wot)
  %6265 = extractvalue %dx.types.ResRet.i32 %6264, 0
  %6266 = extractvalue %dx.types.ResRet.i32 %6264, 1
  br label %6267

; <label>:6267                                    ; preds = %6260, %6254
  %6268 = phi i32 [ %6265, %6260 ], [ %6176, %6254 ]
  %6269 = phi i32 [ %6266, %6260 ], [ %6177, %6254 ]
  store i32 %6268, i32* %6258, align 4
  store i32 %6269, i32* %6259, align 4
  %6270 = add i32 %6227, 1
  br label %6271

; <label>:6271                                    ; preds = %6267, %6226
  %6272 = phi i32 [ %6227, %6226 ], [ %6270, %6267 ]
  %6273 = add nuw i32 %6228, 1
  %6274 = icmp eq i32 %6273, %6223
  br i1 %6274, label %6275, label %6226

; <label>:6275                                    ; preds = %6271
  br label %6276

; <label>:6276                                    ; preds = %6275, %6220
  %6277 = phi i32 [ %6221, %6220 ], [ %6272, %6275 ]
  %6278 = icmp eq i32 %6277, 1
  %6279 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %6280 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %6278, label %6281, label %6284

; <label>:6281                                    ; preds = %6276
  %6282 = load float, float* %6279, align 4
  %6283 = load float, float* %6280, align 4
  br label %6311

; <label>:6284                                    ; preds = %6276
  %6285 = load float, float* %6279, align 4
  %6286 = load float, float* %6280, align 4
  %6287 = fdiv fast float 1.000000e+00, %6286
  %6288 = fsub fast float %6285, %6287
  %6289 = icmp ugt i32 %6277, 1
  br i1 %6289, label %6290, label %6306

; <label>:6290                                    ; preds = %6284
  br label %6291

; <label>:6291                                    ; preds = %6291, %6290
  %6292 = phi float [ %6301, %6291 ], [ %6288, %6290 ]
  %6293 = phi float [ %6302, %6291 ], [ %6285, %6290 ]
  %6294 = phi i32 [ %6303, %6291 ], [ 1, %6290 ]
  %6295 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6294
  %6296 = load float, float* %6295, align 4
  %6297 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6294
  %6298 = load float, float* %6297, align 4
  %6299 = fdiv fast float 1.000000e+00, %6298
  %6300 = fsub fast float %6296, %6299
  %6301 = call float @dx.op.binary.f32(i32 36, float %6292, float %6300)  ; FMin(a,b)
  %6302 = call float @dx.op.binary.f32(i32 35, float %6293, float %6296)  ; FMax(a,b)
  %6303 = add nuw i32 %6294, 1
  %6304 = icmp eq i32 %6303, %6277
  br i1 %6304, label %6305, label %6291

; <label>:6305                                    ; preds = %6291
  br label %6306

; <label>:6306                                    ; preds = %6305, %6284
  %6307 = phi float [ %6288, %6284 ], [ %6301, %6305 ]
  %6308 = phi float [ %6285, %6284 ], [ %6302, %6305 ]
  %6309 = fsub fast float %6308, %6307
  %6310 = fdiv fast float 1.000000e+00, %6309
  br label %6311

; <label>:6311                                    ; preds = %6306, %6281
  %6312 = phi float [ %6282, %6281 ], [ %6308, %6306 ]
  %6313 = phi float [ %6283, %6281 ], [ %6310, %6306 ]
  %6314 = fadd fast float %6015, %6312
  %6315 = fmul fast float %6314, %6313
  %6316 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6317 = fmul fast float %6316, 2.000000e+00
  %6318 = fsub fast float 1.000000e+00, %6317
  %6319 = fmul fast float %6153, %6153
  %6320 = fsub fast float %6154, %6319
  %6321 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6320)  ; FMax(a,b)
  %6322 = fdiv fast float 1.000000e+00, %6321
  %6323 = fmul fast float %6154, %6153
  %6324 = fsub fast float %6155, %6323
  %6325 = fsub fast float %6318, %6153
  %6326 = fmul fast float %6318, %6318
  %6327 = fsub fast float %6326, %6154
  %6328 = fmul fast float %6322, %6324
  %6329 = fmul fast float %6328, %6325
  %6330 = fsub fast float %6327, %6329
  %6331 = fmul fast float %6154, %6154
  %6332 = fsub fast float %6156, %6331
  %6333 = fmul fast float %6324, %6324
  %6334 = fmul fast float %6333, %6322
  %6335 = fsub fast float %6332, %6334
  %6336 = fdiv fast float %6330, %6335
  %6337 = fmul fast float %6336, %6324
  %6338 = fsub fast float %6325, %6337
  %6339 = fmul fast float %6338, %6322
  %6340 = fmul fast float %6339, %6153
  %6341 = fsub fast float 1.000000e+00, %6340
  %6342 = fmul fast float %6336, %6154
  %6343 = fsub fast float %6341, %6342
  %6344 = fmul fast float %6339, %6339
  %6345 = fmul fast float %6336, 4.000000e+00
  %6346 = fmul fast float %6345, %6343
  %6347 = fsub fast float %6344, %6346
  %6348 = call float @dx.op.unary.f32(i32 24, float %6347)  ; Sqrt(value)
  %6349 = fcmp fast oge float %6339, 0.000000e+00
  %6350 = fsub fast float -0.000000e+00, %6348
  %6351 = select i1 %6349, float %6350, float %6348
  %6352 = fsub fast float %6351, %6339
  %6353 = fdiv fast float %6352, %6336
  %6354 = fdiv fast float %6343, %6352
  %6355 = fmul fast float %6353, 5.000000e-01
  %6356 = fmul fast float %6354, 2.000000e+00
  %6357 = select i1 %6349, float %6355, float %6356
  %6358 = select i1 %6349, float %6356, float %6355
  %6359 = call float @dx.op.binary.f32(i32 35, float %6357, float %6358)  ; FMax(a,b)
  %6360 = call float @dx.op.binary.f32(i32 36, float %6357, float %6358)  ; FMin(a,b)
  %6361 = fcmp fast ogt float %6318, %6359
  %6362 = fsub fast float %6318, %6360
  %6363 = fsub fast float %6318, %6359
  %6364 = fsub fast float %6359, %6360
  %6365 = select i1 %6361, float %6363, float %6364
  %6366 = fmul float %6362, %6365
  %6367 = select i1 %6361, float %6360, float %6318
  %6368 = fcmp fast ogt float %6318, %6360
  %6369 = fmul fast float %6367, %6359
  %6370 = fadd fast float %6367, %6359
  %6371 = fmul fast float %6370, %6153
  %6372 = fadd fast float %6369, %6154
  %6373 = fsub fast float %6372, %6371
  %6374 = fdiv fast float %6373, %6366
  %6375 = select i1 %6368, float %6374, float 0.000000e+00
  %6376 = fsub fast float 1.000000e+00, %6375
  %6377 = select i1 %6361, float %6376, float %6375
  %6378 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6138, 3
  %6380 = fmul fast float %6379, %6378
  %6381 = fsub fast float 1.000000e+00, %6380
  br label %6382

; <label>:6382                                    ; preds = %6311, %6023, %5988, %5984, %5948
  %6383 = phi float [ 1.000000e+00, %5948 ], [ %6381, %6311 ], [ 1.000000e+00, %5988 ], [ 1.000000e+00, %6023 ], [ 1.000000e+00, %5984 ]
  %6384 = fcmp fast ogt float %5980, 0.000000e+00
  br i1 %6384, label %6385, label %6393, !dx.controlflow.hints !112

; <label>:6385                                    ; preds = %6382
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6388 = fadd fast float %6387, %5861
  %6389 = call float @dx.op.binary.f32(i32 35, float %6388, float 0.000000e+00)  ; FMax(a,b)
  %6390 = fadd fast float %6389, 0x3F10000000000000
  %6391 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %5879, float %5880, float undef, float undef, i32 0, i32 0, i32 undef, float %6390)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6392 = extractvalue %dx.types.ResRet.f32 %6391, 0
  br label %6393

; <label>:6393                                    ; preds = %6385, %6382
  %6394 = phi float [ %6392, %6385 ], [ 1.000000e+00, %6382 ]
  %6395 = fcmp fast ogt float %5978, 0.000000e+00
  br i1 %6395, label %6396, label %6404, !dx.controlflow.hints !113

; <label>:6396                                    ; preds = %6393
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 1
  %6399 = fadd fast float %6398, %5861
  %6400 = call float @dx.op.binary.f32(i32 35, float %6399, float 0.000000e+00)  ; FMax(a,b)
  %6401 = fadd fast float %6400, 0x3F10000000000000
  %6402 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %5871, float %5872, float undef, float undef, i32 0, i32 0, i32 undef, float %6401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6403 = extractvalue %dx.types.ResRet.f32 %6402, 0
  br label %6404

; <label>:6404                                    ; preds = %6396, %6393
  %6405 = phi float [ %6403, %6396 ], [ 1.000000e+00, %6393 ]
  %6406 = fcmp fast ogt float %5977, 0.000000e+00
  br i1 %6406, label %6407, label %6419, !dx.controlflow.hints !114

; <label>:6407                                    ; preds = %6404
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = fadd fast float %6409, %5861
  %6411 = call float @dx.op.binary.f32(i32 35, float %6410, float 0.000000e+00)  ; FMax(a,b)
  %6412 = fadd fast float %6411, 0x3F10000000000000
  br i1 %5864, label %6413, label %6416, !dx.controlflow.hints !115

; <label>:6413                                    ; preds = %6407
  %6414 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %5853, float %5857, float undef, float undef, i32 0, i32 0, i32 undef, float %6412)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6415 = extractvalue %dx.types.ResRet.f32 %6414, 0
  br label %6419

; <label>:6416                                    ; preds = %6407
  %6417 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %5853, float %5857, float undef, float undef, i32 0, i32 0, i32 undef, float %6412)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6418 = extractvalue %dx.types.ResRet.f32 %6417, 0
  br label %6419

; <label>:6419                                    ; preds = %6416, %6413, %6404
  %6420 = phi float [ %6415, %6413 ], [ %6418, %6416 ], [ 1.000000e+00, %6404 ]
  %6421 = fsub fast float %6394, %6383
  %6422 = fmul fast float %6421, %5950
  %6423 = fadd fast float %6422, %6383
  %6424 = fsub fast float %6405, %6423
  %6425 = fmul fast float %6424, %5949
  %6426 = fadd fast float %6425, %6423
  %6427 = fsub fast float %6420, %6426
  %6428 = fmul fast float %6427, %5977
  %6429 = fadd fast float %6428, %6426
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 2
  %6432 = fcmp fast ogt float %6431, 0.000000e+00
  br i1 %6432, label %6433, label %6473, !dx.controlflow.hints !116

; <label>:6433                                    ; preds = %6419
  %6434 = fcmp fast ugt float %6431, 0.000000e+00
  br i1 %6434, label %6435, label %6470

; <label>:6435                                    ; preds = %6433
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6440 = extractvalue %dx.types.CBufRet.f32 %6436, 3
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 0
  %6443 = extractvalue %dx.types.CBufRet.f32 %6441, 1
  %6444 = extractvalue %dx.types.CBufRet.f32 %6441, 2
  %6445 = extractvalue %dx.types.CBufRet.f32 %6441, 3
  %6446 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6447 = extractvalue %dx.types.CBufRet.f32 %6430, 1
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 0
  %6450 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6451 = extractvalue %dx.types.CBufRet.f32 %6448, 2
  %6452 = fadd fast float %6449, %5830
  %6453 = fadd fast float %6450, %5831
  %6454 = fadd fast float %6451, %5832
  %6455 = fmul fast float %6452, %6437
  %6456 = call float @dx.op.tertiary.f32(i32 46, float %6438, float %6453, float %6455)  ; FMad(a,b,c)
  %6457 = call float @dx.op.tertiary.f32(i32 46, float %6439, float %6454, float %6456)  ; FMad(a,b,c)
  %6458 = fadd fast float %6457, %6440
  %6459 = fmul fast float %6452, %6442
  %6460 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %6453, float %6459)  ; FMad(a,b,c)
  %6461 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %6454, float %6460)  ; FMad(a,b,c)
  %6462 = fadd fast float %6461, %6445
  %6463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %6458, float %6462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6464 = extractvalue %dx.types.ResRet.f32 %6463, 0
  %6465 = fmul fast float %6464, %6447
  %6466 = fadd fast float %6465, %6446
  %6467 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6468 = fmul fast float %6467, %6431
  %6469 = fsub fast float 1.000000e+00, %6468
  br label %6470

; <label>:6470                                    ; preds = %6435, %6433
  %6471 = phi float [ %6469, %6435 ], [ 1.000000e+00, %6433 ]
  %6472 = fmul fast float %6471, %6429
  br label %6473

; <label>:6473                                    ; preds = %6470, %6419, %5810
  %6474 = phi float [ 1.000000e+00, %5810 ], [ %6472, %6470 ], [ %6429, %6419 ]
  %6475 = call float @dx.op.binary.f32(i32 36, float %6474, float %6474)  ; FMin(a,b)
  %6476 = call float @dx.op.binary.f32(i32 36, float %6474, float %6475)  ; FMin(a,b)
  %6477 = fcmp fast ogt float %6476, 0.000000e+00
  br i1 %6477, label %6478, label %6638, !dx.controlflow.hints !117

; <label>:6478                                    ; preds = %6473
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.CBufRet.f32 %6479, 3
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6493 = extractvalue %dx.types.CBufRet.f32 %6489, 3
  %6494 = fmul fast float %6480, %5830
  %6495 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %6481, float %6494)  ; FMad(a,b,c)
  %6496 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %6482, float %6495)  ; FMad(a,b,c)
  %6497 = fadd fast float %6496, %6483
  %6498 = fmul fast float %6485, %5830
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %6486, float %6498)  ; FMad(a,b,c)
  %6500 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %6487, float %6499)  ; FMad(a,b,c)
  %6501 = fadd fast float %6500, %6488
  %6502 = fmul fast float %6490, %5830
  %6503 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %6491, float %6502)  ; FMad(a,b,c)
  %6504 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %6492, float %6503)  ; FMad(a,b,c)
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.CBufRet.f32 %6505, 1
  %6508 = extractvalue %dx.types.CBufRet.f32 %6505, 3
  %6509 = fmul fast float %6508, %6497
  %6510 = fmul fast float %6508, %6501
  %6511 = fadd fast float %6509, %6506
  %6512 = fadd fast float %6510, %6507
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 0
  %6515 = extractvalue %dx.types.CBufRet.f32 %6513, 1
  %6516 = fsub fast float %6511, %6514
  %6517 = fsub fast float %6512, %6515
  %6518 = fcmp fast olt float %6516, 0.000000e+00
  %6519 = fcmp fast olt float %6517, 0.000000e+00
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6525 = select i1 %6518, float %6521, float %6523
  %6526 = select i1 %6519, float %6522, float %6524
  %6527 = fmul fast float %6525, %6516
  %6528 = fmul fast float %6526, %6517
  %6529 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6530 = call float @dx.op.unary.f32(i32 6, float %6528)  ; FAbs(value)
  %6531 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %6532 = call float @dx.op.binary.f32(i32 35, float %6529, float %6530)  ; FMax(a,b)
  %6533 = fsub fast float %6531, %6532
  %6534 = call float @dx.op.unary.f32(i32 7, float %6533)  ; Saturate(value)
  %6535 = fcmp fast ogt float %6534, 0.000000e+00
  br i1 %6535, label %6536, label %6577, !dx.controlflow.hints !118

; <label>:6536                                    ; preds = %6478
  %6537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %6511, float %6512, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 1
  %6539 = fcmp fast ogt float %6538, 0.000000e+00
  br i1 %6539, label %6540, label %6572

; <label>:6540                                    ; preds = %6536
  %6541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %6511, float %6512, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6542 = extractvalue %dx.types.ResRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.ResRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.ResRet.f32 %6541, 2
  %6545 = extractvalue %dx.types.ResRet.f32 %6541, 3
  %6546 = fsub fast float 1.000000e+00, %6493
  %6547 = fsub fast float %6546, %6504
  %6548 = fmul fast float %6547, 0x400921FB60000000
  %6549 = fadd fast float %6548, 0x3FF921FB60000000
  %6550 = call float @dx.op.unary.f32(i32 13, float %6549)  ; Sin(value)
  %6551 = fadd fast float %6550, -1.000000e+00
  %6552 = fmul fast float %6551, 0x3FD45F3060000000
  %6553 = fmul fast float %6547, 0x401921FB60000000
  %6554 = fadd fast float %6553, 0x400921FB60000000
  %6555 = call float @dx.op.unary.f32(i32 13, float %6554)  ; Sin(value)
  %6556 = fadd fast float %6555, 0x3E7777A5C0000000
  %6557 = fmul fast float %6556, 0x3FC45F3060000000
  %6558 = fmul fast float %6547, 0x4022D97C80000000
  %6559 = fadd fast float %6558, 0x4012D97C80000000
  %6560 = call float @dx.op.unary.f32(i32 13, float %6559)  ; Sin(value)
  %6561 = fadd fast float %6560, 1.000000e+00
  %6562 = fmul fast float %6561, 0x3FBB2995E0000000
  %6563 = fmul fast float %6547, 0x402921FB60000000
  %6564 = fadd fast float %6563, 0x401921FB60000000
  %6565 = call float @dx.op.unary.f32(i32 13, float %6564)  ; Sin(value)
  %6566 = fadd fast float %6565, 0xBE8777A5C0000000
  %6567 = fmul fast float %6566, 0x3FB45F3060000000
  %6568 = call float @dx.op.dot4.f32(i32 56, float %6542, float %6543, float %6544, float %6545, float %6552, float %6557, float %6562, float %6567)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6569 = fmul fast float %6568, 0xBFF7154760000000
  %6570 = call float @dx.op.unary.f32(i32 21, float %6569)  ; Exp(value)
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  br label %6572

; <label>:6572                                    ; preds = %6540, %6536
  %6573 = phi float [ %6571, %6540 ], [ 1.000000e+00, %6536 ]
  %6574 = fadd fast float %6573, -1.000000e+00
  %6575 = fmul fast float %6574, %6534
  %6576 = fadd fast float %6575, 1.000000e+00
  br label %6577

; <label>:6577                                    ; preds = %6572, %6478
  %6578 = phi float [ %6576, %6572 ], [ 1.000000e+00, %6478 ]
  %6579 = fmul fast float %6578, %6474
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6582 = extractvalue %dx.types.CBufRet.f32 %6580, 1
  %6583 = extractvalue %dx.types.CBufRet.f32 %6580, 2
  %6584 = fadd fast float %6581, %186
  %6585 = fadd fast float %6582, %187
  %6586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6587 = extractvalue %dx.types.CBufRet.f32 %6586, 1
  %6588 = fsub fast float -0.000000e+00, %6584
  %6589 = fsub fast float -0.000000e+00, %6585
  %6590 = fsub fast float %5439, %6583
  %6591 = fadd fast float %6590, %6587
  %6592 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6588, float %6589, float %6591)  ; Dot3(ax,ay,az,bx,by,bz)
  %6593 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %6594 = fdiv fast float 1.000000e+00, %6593
  %6595 = fmul fast float %6594, %6592
  %6596 = fmul fast float %5811, %6595
  %6597 = fmul fast float %5812, %6595
  %6598 = fadd fast float %6596, %6584
  %6599 = fadd fast float %6597, %6585
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = fsub fast float %6598, %6601
  %6604 = fsub fast float %6599, %6602
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6608 = fmul fast float %6603, %6606
  %6609 = fmul fast float %6604, %6607
  %6610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.i32 %6610, 3
  %6612 = icmp eq i32 %6611, 0
  br i1 %6612, label %6618, label %6613

; <label>:6613                                    ; preds = %6577
  %6614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %6608, float %6609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  br label %6623

; <label>:6618                                    ; preds = %6577
  %6619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %6608, float %6609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6620 = extractvalue %dx.types.ResRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.ResRet.f32 %6619, 1
  %6622 = extractvalue %dx.types.ResRet.f32 %6619, 2
  br label %6623

; <label>:6623                                    ; preds = %6618, %6613
  %6624 = phi float [ %6615, %6613 ], [ %6620, %6618 ]
  %6625 = phi float [ %6616, %6613 ], [ %6621, %6618 ]
  %6626 = phi float [ %6617, %6613 ], [ %6622, %6618 ]
  %6627 = extractvalue %dx.types.CBufRet.f32 %6586, 2
  %6628 = fmul fast float %6627, %6624
  %6629 = extractvalue %dx.types.CBufRet.f32 %6586, 0
  %6630 = fsub fast float %6595, %6629
  %6631 = fsub fast float %6630, %6628
  %6632 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6631)  ; FMax(a,b)
  %6633 = fmul fast float %6632, %6625
  %6634 = call float @dx.op.binary.f32(i32 36, float %6626, float %6633)  ; FMin(a,b)
  %6635 = fmul fast float %6634, 0xBFF7154760000000
  %6636 = call float @dx.op.unary.f32(i32 21, float %6635)  ; Exp(value)
  %6637 = fmul fast float %6579, %6636
  br label %6638

; <label>:6638                                    ; preds = %6623, %6473
  %6639 = phi float [ %6637, %6623 ], [ %6474, %6473 ]
  %6640 = call float @dx.op.binary.f32(i32 36, float %6639, float %6639)  ; FMin(a,b)
  %6641 = call float @dx.op.binary.f32(i32 36, float %6639, float %6640)  ; FMin(a,b)
  %6642 = fcmp fast ogt float %6641, 0.000000e+00
  br i1 %6642, label %6643, label %6931, !dx.controlflow.hints !119

; <label>:6643                                    ; preds = %6638
  %6644 = fmul fast float %6639, %5822
  %6645 = fmul fast float %6639, %5823
  %6646 = fmul fast float %6639, %5824
  %6647 = fsub fast float %188, %4597
  %6648 = fcmp fast ogt float %6647, 0.000000e+00
  %6649 = fmul fast float %5811, 5.120000e+02
  %6650 = fmul fast float %5812, 5.120000e+02
  %6651 = fmul fast float %5813, 5.120000e+02
  %6652 = fadd fast float %6651, %188
  %6653 = fsub fast float %4597, %6652
  %6654 = fmul fast float %6653, 2.000000e+00
  %6655 = fadd fast float %6654, %6652
  %6656 = select i1 %6648, float %6655, float %6652
  %6657 = fsub fast float %6656, %188
  %6658 = call float @dx.op.dot3.f32(i32 55, float %6649, float %6650, float %6657, float %6649, float %6650, float %6657)  ; Dot3(ax,ay,az,bx,by,bz)
  %6659 = call float @dx.op.unary.f32(i32 25, float %6658)  ; Rsqrt(value)
  %6660 = fmul fast float %6659, %6649
  %6661 = fmul fast float %6659, %6650
  %6662 = fmul fast float %6659, %6657
  %6663 = fsub fast float %4597, %188
  %6664 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6663)  ; Dot3(ax,ay,az,bx,by,bz)
  %6665 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6660, float %6661, float %6662)  ; Dot3(ax,ay,az,bx,by,bz)
  %6666 = fdiv fast float 1.000000e+00, %6665
  %6667 = fmul fast float %6666, %6664
  %6668 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6647, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6669 = fcmp fast ogt float %6668, 0.000000e+00
  %6670 = fcmp fast olt float %6668, 0.000000e+00
  %6671 = zext i1 %6669 to i32
  %6672 = zext i1 %6670 to i32
  %6673 = sub nsw i32 %6671, %6672
  %6674 = sitofp i32 %6673 to float
  %6675 = fsub fast float %6656, %4597
  %6676 = call float @dx.op.dot3.f32(i32 55, float %6649, float %6650, float %6675, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6677 = fcmp fast ogt float %6676, 0.000000e+00
  %6678 = fcmp fast olt float %6676, 0.000000e+00
  %6679 = zext i1 %6677 to i32
  %6680 = zext i1 %6678 to i32
  %6681 = sub nsw i32 %6679, %6680
  %6682 = sitofp i32 %6681 to float
  %6683 = fcmp fast une float %6674, %6682
  br i1 %6683, label %6684, label %6694

; <label>:6684                                    ; preds = %6643
  %6685 = fmul fast float %6667, %6662
  %6686 = fmul fast float %6667, %6661
  %6687 = fmul fast float %6667, %6660
  %6688 = fmul fast float %6687, %6687
  %6689 = fmul fast float %6686, %6686
  %6690 = fadd fast float %6688, %6689
  %6691 = fmul fast float %6685, %6685
  %6692 = fadd fast float %6690, %6691
  %6693 = call float @dx.op.unary.f32(i32 24, float %6692)  ; Sqrt(value)
  br label %6704

; <label>:6694                                    ; preds = %6643
  %6695 = icmp slt i32 %6673, 0
  br i1 %6695, label %6696, label %6704

; <label>:6696                                    ; preds = %6694
  %6697 = fsub fast float %188, %6656
  %6698 = fmul fast float %6649, %6649
  %6699 = fmul fast float %6650, %6650
  %6700 = fadd fast float %6698, %6699
  %6701 = fmul fast float %6697, %6697
  %6702 = fadd fast float %6700, %6701
  %6703 = call float @dx.op.unary.f32(i32 24, float %6702)  ; Sqrt(value)
  br label %6704

; <label>:6704                                    ; preds = %6696, %6694, %6684
  %6705 = phi float [ %6693, %6684 ], [ %6703, %6696 ], [ 0.000000e+00, %6694 ]
  %6706 = fsub fast float -0.000000e+00, %6705
  %6707 = select i1 %6648, float -0.000000e+00, float %6706
  %6708 = fmul fast float %4598, 0x3FF7154760000000
  %6709 = fmul fast float %6708, %6707
  %6710 = fmul fast float %4599, 0x3FF7154760000000
  %6711 = fmul fast float %6710, %6707
  %6712 = fmul fast float %4600, 0x3FF7154760000000
  %6713 = fmul fast float %6712, %6707
  %6714 = call float @dx.op.unary.f32(i32 21, float %6709)  ; Exp(value)
  %6715 = call float @dx.op.unary.f32(i32 21, float %6711)  ; Exp(value)
  %6716 = call float @dx.op.unary.f32(i32 21, float %6713)  ; Exp(value)
  %6717 = call float @dx.op.unary.f32(i32 7, float %6714)  ; Saturate(value)
  %6718 = call float @dx.op.unary.f32(i32 7, float %6715)  ; Saturate(value)
  %6719 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6720 = fmul fast float %6644, %6717
  %6721 = fmul fast float %6645, %6718
  %6722 = fmul fast float %6646, %6719
  %6723 = fsub fast float %5811, %5442
  %6724 = fsub fast float %5812, %5443
  %6725 = fsub fast float %5813, %5444
  %6726 = call float @dx.op.dot3.f32(i32 55, float %6723, float %6724, float %6725, float %6723, float %6724, float %6725)  ; Dot3(ax,ay,az,bx,by,bz)
  %6727 = call float @dx.op.unary.f32(i32 25, float %6726)  ; Rsqrt(value)
  %6728 = fmul fast float %6727, %6723
  %6729 = fmul fast float %6727, %6724
  %6730 = fmul fast float %6727, %6725
  %6731 = call float @dx.op.dot3.f32(i32 55, float %5811, float %5812, float %5813, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %6732 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5446, float %5447, float %6728, float %6729, float %6730)  ; Dot3(ax,ay,az,bx,by,bz)
  %6733 = call float @dx.op.unary.f32(i32 7, float %6731)  ; Saturate(value)
  %6734 = fmul fast float %6733, %6733
  %6735 = fmul fast float %6734, %5463
  %6736 = call float @dx.op.unary.f32(i32 7, float %6735)  ; Saturate(value)
  %6737 = fmul fast float %6736, %6733
  %6738 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5400, float %5401, float %6728, float %6729, float %6730)  ; Dot3(ax,ay,az,bx,by,bz)
  %6739 = fmul fast float %6738, %6738
  %6740 = call float @dx.op.unary.f32(i32 6, float %6731)  ; FAbs(value)
  %6741 = call float @dx.op.binary.f32(i32 35, float %5779, float 0x3F847AE140000000)  ; FMax(a,b)
  %6742 = fmul fast float %6741, %6741
  %6743 = fmul fast float %6742, %6742
  %6744 = fsub fast float 1.000000e+00, %6743
  %6745 = fmul fast float %5450, %5450
  %6746 = fmul fast float %6745, %6744
  %6747 = fadd fast float %6746, %6743
  %6748 = bitcast float %6747 to i32
  %6749 = ashr i32 %6748, 1
  %6750 = add nsw i32 %6749, 532487669
  %6751 = bitcast i32 %6750 to float
  %6752 = fadd fast float %6751, %5450
  %6753 = fmul fast float %6743, %6739
  %6754 = fsub fast float 1.000000e+00, %6739
  %6755 = fadd fast float %6754, %6753
  %6756 = fmul fast float %6740, %6740
  %6757 = fmul fast float %6756, %6744
  %6758 = fadd fast float %6757, %6743
  %6759 = bitcast float %6758 to i32
  %6760 = ashr i32 %6759, 1
  %6761 = add nsw i32 %6760, 532487669
  %6762 = bitcast i32 %6761 to float
  %6763 = fadd fast float %6762, %6740
  %6764 = fmul fast float %6755, %6755
  %6765 = fmul fast float %6764, %6752
  %6766 = fmul fast float %6765, %6763
  %6767 = fdiv fast float 0x3FF0A00000000000, %6766
  %6768 = fmul fast float %6767, %6743
  %6769 = fmul fast float %5708, 0x3FF9999980000000
  %6770 = fsub fast float 5.000000e+00, %6769
  %6771 = call float @dx.op.unary.f32(i32 6, float %6732)  ; FAbs(value)
  %6772 = fsub fast float 1.000000e+00, %6771
  %6773 = fmul fast float %5708, 0x41D9660740000000
  %6774 = fadd fast float %6773, 0xC1EFBF8940000000
  %6775 = bitcast float %6772 to i32
  %6776 = sitofp i32 %6775 to float
  %6777 = fmul fast float %6776, %6770
  %6778 = fadd fast float %6774, %6777
  %6779 = fptosi float %6778 to i32
  %6780 = bitcast i32 %6779 to float
  %6781 = fsub fast float 1.000000e+00, %5402
  %6782 = fsub fast float 1.000000e+00, %5403
  %6783 = fsub fast float 1.000000e+00, %5448
  %6784 = fmul fast float %6780, %6781
  %6785 = fmul fast float %6780, %6782
  %6786 = fmul fast float %6780, %6783
  %6787 = fadd fast float %6784, %5402
  %6788 = fadd fast float %6785, %5403
  %6789 = fadd fast float %6786, %5448
  %6790 = fmul fast float %6731, 9.843750e-01
  %6791 = fadd fast float %6790, 7.812500e-03
  %6792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %6791, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.ResRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.ResRet.f32 %6792, 2
  %6796 = extractvalue %dx.types.ResRet.f32 %6792, 3
  %6797 = fsub fast float %6795, %6793
  %6798 = fsub fast float %6796, %6794
  %6799 = fmul fast float %6797, %5718
  %6800 = fmul fast float %6798, %5718
  %6801 = fadd fast float %6799, %6793
  %6802 = fadd fast float %6800, %6794
  %6803 = fmul fast float %6801, %5402
  %6804 = fmul fast float %6801, %5403
  %6805 = fmul fast float %6801, %5448
  %6806 = fadd fast float %6803, %6802
  %6807 = fadd fast float %6804, %6802
  %6808 = fadd fast float %6805, %6802
  %6809 = call float @dx.op.binary.f32(i32 35, float %6807, float %6808)  ; FMax(a,b)
  %6810 = call float @dx.op.binary.f32(i32 35, float %6806, float %6809)  ; FMax(a,b)
  %6811 = fsub fast float 1.000000e+00, %6810
  %6812 = call float @dx.op.binary.f32(i32 35, float %6740, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6813 = fdiv fast float %4117, %6812
  %6814 = fmul fast float %5739, %6813
  %6815 = fmul fast float %5741, %6813
  %6816 = fmul fast float %5743, %6813
  %6817 = call float @dx.op.unary.f32(i32 21, float %6814)  ; Exp(value)
  %6818 = call float @dx.op.unary.f32(i32 21, float %6815)  ; Exp(value)
  %6819 = call float @dx.op.unary.f32(i32 21, float %6816)  ; Exp(value)
  %6820 = call float @dx.op.unary.f32(i32 7, float %6817)  ; Saturate(value)
  %6821 = call float @dx.op.unary.f32(i32 7, float %6818)  ; Saturate(value)
  %6822 = call float @dx.op.unary.f32(i32 7, float %6819)  ; Saturate(value)
  %6823 = select i1 %5736, float %6820, float 0.000000e+00
  %6824 = select i1 %5737, float %6821, float 0.000000e+00
  %6825 = select i1 %5738, float %6822, float 0.000000e+00
  %6826 = fsub fast float -0.000000e+00, %5399
  %6827 = fsub fast float -0.000000e+00, %5400
  %6828 = fsub fast float -0.000000e+00, %5401
  %6829 = call float @dx.op.dot3.f32(i32 55, float %5811, float %5812, float %5813, float %6826, float %6827, float %6828)  ; Dot3(ax,ay,az,bx,by,bz)
  %6830 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  %6831 = fmul fast float %6830, 9.843750e-01
  %6832 = fadd fast float %6831, 7.812500e-03
  %6833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %6832, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6834 = extractvalue %dx.types.ResRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.ResRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.ResRet.f32 %6833, 2
  %6837 = extractvalue %dx.types.ResRet.f32 %6833, 3
  %6838 = fsub fast float %6836, %6834
  %6839 = fsub fast float %6837, %6835
  %6840 = fmul fast float %6838, %5718
  %6841 = fmul fast float %6839, %5718
  %6842 = fadd fast float %6840, %6834
  %6843 = fadd fast float %6841, %6835
  %6844 = fmul fast float %6842, %5402
  %6845 = fmul fast float %6842, %5403
  %6846 = fmul fast float %6842, %5448
  %6847 = fadd fast float %6844, %6843
  %6848 = fadd fast float %6845, %6843
  %6849 = fadd fast float %6846, %6843
  %6850 = call float @dx.op.binary.f32(i32 35, float %6848, float %6849)  ; FMax(a,b)
  %6851 = call float @dx.op.binary.f32(i32 35, float %6847, float %6850)  ; FMax(a,b)
  %6852 = fsub fast float 1.000000e+00, %6851
  %6853 = fmul fast float %5779, %5784
  %6854 = fadd fast float %5786, %6853
  %6855 = call float @dx.op.unary.f32(i32 7, float %6854)  ; Saturate(value)
  %6856 = fsub fast float %5811, %5456
  %6857 = fsub fast float %5812, %5457
  %6858 = fsub fast float %5813, %5458
  %6859 = call float @dx.op.dot3.f32(i32 55, float %6856, float %6857, float %6858, float %6856, float %6857, float %6858)  ; Dot3(ax,ay,az,bx,by,bz)
  %6860 = call float @dx.op.unary.f32(i32 25, float %6859)  ; Rsqrt(value)
  %6861 = fmul fast float %6860, %6856
  %6862 = fmul fast float %6860, %6857
  %6863 = fmul fast float %6860, %6858
  %6864 = call float @dx.op.dot3.f32(i32 55, float %6826, float %6827, float %6828, float %6861, float %6862, float %6863)  ; Dot3(ax,ay,az,bx,by,bz)
  %6865 = fmul fast float %6864, %6864
  %6866 = call float @dx.op.unary.f32(i32 6, float %6830)  ; FAbs(value)
  %6867 = call float @dx.op.binary.f32(i32 35, float %6855, float 0x3F847AE140000000)  ; FMax(a,b)
  %6868 = fmul fast float %6867, %6867
  %6869 = fmul fast float %6868, %6868
  %6870 = fsub fast float 1.000000e+00, %6869
  %6871 = fmul fast float %6745, %6870
  %6872 = fadd fast float %6871, %6869
  %6873 = bitcast float %6872 to i32
  %6874 = ashr i32 %6873, 1
  %6875 = add nsw i32 %6874, 532487669
  %6876 = bitcast i32 %6875 to float
  %6877 = fadd fast float %6876, %5450
  %6878 = fmul fast float %6869, %6865
  %6879 = fsub fast float 1.000000e+00, %6865
  %6880 = fadd fast float %6879, %6878
  %6881 = fmul fast float %6866, %6866
  %6882 = fmul fast float %6881, %6870
  %6883 = fadd fast float %6882, %6869
  %6884 = bitcast float %6883 to i32
  %6885 = ashr i32 %6884, 1
  %6886 = add nsw i32 %6885, 532487669
  %6887 = bitcast i32 %6886 to float
  %6888 = fadd fast float %6887, %6866
  %6889 = fmul fast float %6880, %6880
  %6890 = fmul fast float %6889, %6877
  %6891 = fmul fast float %6890, %6888
  %6892 = fdiv fast float 0x3FF0A00000000000, %6891
  %6893 = fmul fast float %6892, %6869
  %6894 = fmul fast float %6830, %6823
  %6895 = fmul fast float %6830, %6824
  %6896 = fmul fast float %6830, %6825
  %6897 = fmul fast float %6894, %6852
  %6898 = fmul fast float %6897, %6893
  %6899 = fmul fast float %6895, %6852
  %6900 = fmul fast float %6899, %6893
  %6901 = fmul fast float %6896, %6852
  %6902 = fmul fast float %6901, %6893
  %6903 = fmul fast float %6768, %6737
  %6904 = fmul fast float %6903, %6787
  %6905 = fmul fast float %6903, %6788
  %6906 = fmul fast float %6903, %6789
  %6907 = fmul fast float %6737, %6720
  %6908 = fmul fast float %6907, %6811
  %6909 = fmul fast float %6737, %6721
  %6910 = fmul fast float %6909, %6811
  %6911 = fmul fast float %6737, %6722
  %6912 = fmul fast float %6911, %6811
  %6913 = fadd fast float %6898, %6904
  %6914 = fadd fast float %6900, %6905
  %6915 = fadd fast float %6902, %6906
  %6916 = fmul fast float %6913, %6720
  %6917 = fmul fast float %6914, %6721
  %6918 = fmul fast float %6915, %6722
  %6919 = fadd fast float %6908, %5801
  %6920 = fmul fast float %6919, %1342
  %6921 = fadd fast float %6910, %5803
  %6922 = fmul fast float %6921, %1342
  %6923 = fadd fast float %6912, %5805
  %6924 = fmul fast float %6923, %1342
  %6925 = fadd fast float %6916, %5766
  %6926 = fmul fast float %6925, %1342
  %6927 = fadd fast float %6917, %5768
  %6928 = fmul fast float %6927, %1342
  %6929 = fadd fast float %6918, %5770
  %6930 = fmul fast float %6929, %1342
  br label %6931

; <label>:6931                                    ; preds = %6704, %6638, %5612
  %6932 = phi float [ %5767, %5612 ], [ %5767, %6638 ], [ %6926, %6704 ]
  %6933 = phi float [ %5769, %5612 ], [ %5769, %6638 ], [ %6928, %6704 ]
  %6934 = phi float [ %5771, %5612 ], [ %5771, %6638 ], [ %6930, %6704 ]
  %6935 = phi float [ %5802, %5612 ], [ %5802, %6638 ], [ %6920, %6704 ]
  %6936 = phi float [ %5804, %5612 ], [ %5804, %6638 ], [ %6922, %6704 ]
  %6937 = phi float [ %5806, %5612 ], [ %5806, %6638 ], [ %6924, %6704 ]
  %6938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.i32 %6938, 0
  %6940 = icmp eq i32 %6939, 0
  br i1 %6940, label %7615, label %6941

; <label>:6941                                    ; preds = %6931
  %6942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6942, 2
  %6944 = extractvalue %dx.types.CBufRet.f32 %6942, 3
  %6945 = fmul fast float %6943, %107
  %6946 = fmul fast float %6944, %108
  %6947 = fptoui float %6945 to i32
  %6948 = fptoui float %6946 to i32
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.CBufRet.f32 %6949, 2
  %6952 = extractvalue %dx.types.CBufRet.f32 %6949, 3
  %6953 = fadd fast float %98, -4.000000e+00
  %6954 = call float @dx.op.binary.f32(i32 35, float %6953, float 0.000000e+00)  ; FMax(a,b)
  %6955 = fadd fast float %6954, %6950
  %6956 = fmul fast float %6955, %6951
  %6957 = call float @dx.op.unary.f32(i32 23, float %6956)  ; Log(value)
  %6958 = fmul fast float %6957, %6952
  %6959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6960 = extractvalue %dx.types.CBufRet.f32 %6959, 2
  %6961 = fmul fast float %6958, %6960
  %6962 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  %6963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.i32 %6963, 1
  %6965 = add i32 %6964, -1
  %6966 = uitofp i32 %6964 to float
  %6967 = fmul fast float %6966, %6962
  %6968 = fptoui float %6967 to i32
  %6969 = call i32 @dx.op.binary.i32(i32 40, i32 %6968, i32 %6965)  ; UMin(a,b)
  %6970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6971 = extractvalue %dx.types.CBufRet.i32 %6970, 2
  %6972 = extractvalue %dx.types.CBufRet.i32 %6970, 3
  %6973 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6948, i32 %6971, i32 %6947)  ; UMad(a,b,c)
  %6974 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6969, i32 %6972, i32 %6973)  ; UMad(a,b,c)
  %6975 = add nsw i32 %6939, -1
  %6976 = call i32 @dx.op.binary.i32(i32 37, i32 %6975, i32 0)  ; IMax(a,b)
  %6977 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6978 = fptoui float %6977 to i32
  %6979 = lshr i32 %6978, 5
  %6980 = call i32 @dx.op.binary.i32(i32 40, i32 %6979, i32 8191)  ; UMin(a,b)
  %6981 = shl i32 %6980, 2
  %6982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6981, i32 undef)  ; BufferLoad(srv,index,wot)
  %6983 = extractvalue %dx.types.ResRet.i32 %6982, 0
  %6984 = lshr i32 %6983, 16
  %6985 = and i32 %6983, 65535
  %6986 = lshr i32 %6983, 21
  %6987 = lshr i32 %6985, 5
  %6988 = call i32 @dx.op.binary.i32(i32 40, i32 %6987, i32 %6976)  ; UMin(a,b)
  %6989 = icmp ugt i32 %6986, %6988
  br i1 %6989, label %7615, label %6990

; <label>:6990                                    ; preds = %6941
  br label %6991

; <label>:6991                                    ; preds = %7605, %6990
  %6992 = phi i32 [ %7612, %7605 ], [ %6986, %6990 ]
  %6993 = phi float [ %7606, %7605 ], [ %6932, %6990 ]
  %6994 = phi float [ %7607, %7605 ], [ %6933, %6990 ]
  %6995 = phi float [ %7608, %7605 ], [ %6934, %6990 ]
  %6996 = phi float [ %7609, %7605 ], [ %6935, %6990 ]
  %6997 = phi float [ %7610, %7605 ], [ %6936, %6990 ]
  %6998 = phi float [ %7611, %7605 ], [ %6937, %6990 ]
  %6999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7000 = extractvalue %dx.types.CBufRet.i32 %6999, 0
  %7001 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6974, i32 %7000, i32 %6992)  ; UMad(a,b,c)
  %7002 = shl i32 %7001, 2
  %7003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7002, i32 undef)  ; BufferLoad(srv,index,wot)
  %7004 = extractvalue %dx.types.ResRet.i32 %7003, 0
  %7005 = shl i32 %6992, 5
  %7006 = sub nsw i32 %6984, %7005
  %7007 = call i32 @dx.op.binary.i32(i32 37, i32 %7006, i32 0)  ; IMax(a,b)
  %7008 = call i32 @dx.op.binary.i32(i32 38, i32 %7007, i32 31)  ; IMin(a,b)
  %7009 = sub nsw i32 1, %6984
  %7010 = add nsw i32 %7009, %6985
  %7011 = call i32 @dx.op.binary.i32(i32 37, i32 %7010, i32 0)  ; IMax(a,b)
  %7012 = call i32 @dx.op.binary.i32(i32 38, i32 %7011, i32 32)  ; IMin(a,b)
  %7013 = and i32 %7012, 31
  %7014 = shl i32 -1, %7013
  %7015 = xor i32 %7014, -1
  %7016 = and i32 %7008, 31
  %7017 = shl i32 %7015, %7016
  %7018 = icmp eq i32 %7012, 32
  %7019 = select i1 %7018, i32 -1, i32 %7017
  %7020 = and i32 %7019, %7004
  %7021 = icmp eq i32 %7020, 0
  br i1 %7021, label %7605, label %7022

; <label>:7022                                    ; preds = %6991
  br label %7023

; <label>:7023                                    ; preds = %7158, %7022
  %7024 = phi i32 [ %7035, %7158 ], [ %7020, %7022 ]
  %7025 = phi float [ %7159, %7158 ], [ %6993, %7022 ]
  %7026 = phi float [ %7160, %7158 ], [ %6994, %7022 ]
  %7027 = phi float [ %7161, %7158 ], [ %6995, %7022 ]
  %7028 = phi float [ %7162, %7158 ], [ %6996, %7022 ]
  %7029 = phi float [ %7163, %7158 ], [ %6997, %7022 ]
  %7030 = phi float [ %7164, %7158 ], [ %6998, %7022 ]
  %7031 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7024)  ; FirstbitLo(value)
  %7032 = add i32 %7031, %7005
  %7033 = and i32 %7031, 31
  %7034 = shl i32 1, %7033
  %7035 = xor i32 %7034, %7024
  %7036 = mul i32 %7032, 112
  %7037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7036, i32 undef)  ; BufferLoad(srv,index,wot)
  %7038 = extractvalue %dx.types.ResRet.f32 %7037, 0
  %7039 = extractvalue %dx.types.ResRet.f32 %7037, 1
  %7040 = extractvalue %dx.types.ResRet.f32 %7037, 2
  %7041 = or i32 %7036, 12
  %7042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7041, i32 undef)  ; BufferLoad(srv,index,wot)
  %7043 = extractvalue %dx.types.ResRet.f32 %7042, 0
  %7044 = add i32 %7036, 16
  %7045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7044, i32 undef)  ; BufferLoad(srv,index,wot)
  %7046 = extractvalue %dx.types.ResRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.ResRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.ResRet.f32 %7045, 2
  %7049 = add i32 %7036, 28
  %7050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7049, i32 undef)  ; BufferLoad(srv,index,wot)
  %7051 = extractvalue %dx.types.ResRet.i32 %7050, 0
  %7052 = add i32 %7036, 44
  %7053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7052, i32 undef)  ; BufferLoad(srv,index,wot)
  %7054 = extractvalue %dx.types.ResRet.f32 %7053, 0
  %7055 = add i32 %7036, 48
  %7056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7055, i32 undef)  ; BufferLoad(srv,index,wot)
  %7057 = extractvalue %dx.types.ResRet.f32 %7056, 0
  %7058 = extractvalue %dx.types.ResRet.f32 %7056, 1
  %7059 = extractvalue %dx.types.ResRet.f32 %7056, 2
  %7060 = extractvalue %dx.types.ResRet.f32 %7056, 3
  %7061 = add i32 %7036, 64
  %7062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7061, i32 undef)  ; BufferLoad(srv,index,wot)
  %7063 = extractvalue %dx.types.ResRet.f32 %7062, 0
  %7064 = extractvalue %dx.types.ResRet.f32 %7062, 1
  %7065 = extractvalue %dx.types.ResRet.f32 %7062, 2
  %7066 = extractvalue %dx.types.ResRet.f32 %7062, 3
  %7067 = add i32 %7036, 80
  %7068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7067, i32 undef)  ; BufferLoad(srv,index,wot)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 1
  %7070 = extractvalue %dx.types.ResRet.f32 %7068, 2
  %7071 = add i32 %7036, 92
  %7072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7071, i32 undef)  ; BufferLoad(srv,index,wot)
  %7073 = extractvalue %dx.types.ResRet.i32 %7072, 0
  %7074 = call float @dx.op.dot3.f32(i32 55, float %7038, float %7039, float %7040, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7075 = select i1 %252, float %7069, float %7038
  %7076 = select i1 %252, float %7074, float %7039
  %7077 = select i1 %252, float %7070, float %7040
  %7078 = and i32 %7073, 65535
  %7079 = uitofp i32 %7078 to float
  %7080 = lshr i32 %7073, 16
  %7081 = uitofp i32 %7080 to float
  %7082 = and i32 %7051, 65535
  %7083 = and i32 %7051, 50331648
  %7084 = icmp slt i32 %7051, 0
  %7085 = icmp eq i32 %7083, 33554432
  %7086 = fsub fast float %7057, %186
  %7087 = fsub fast float %7058, %187
  %7088 = fsub fast float %7059, %188
  %7089 = call float @dx.op.dot3.f32(i32 55, float %7086, float %7087, float %7088, float %7086, float %7087, float %7088)  ; Dot3(ax,ay,az,bx,by,bz)
  %7090 = call float @dx.op.unary.f32(i32 24, float %7089)  ; Sqrt(value)
  %7091 = fdiv fast float 1.000000e+00, %7090
  %7092 = fmul fast float %7091, %7086
  %7093 = fmul fast float %7091, %7087
  %7094 = fmul fast float %7091, %7088
  %7095 = fadd fast float %7090, %7043
  %7096 = fdiv fast float 1.000000e+00, %7095
  %7097 = fmul float %7054, %7096
  %7098 = fmul float %7097, %7097
  %7099 = call float @dx.op.unary.f32(i32 7, float %7098)  ; Saturate(value)
  br i1 %7085, label %7100, label %7121

; <label>:7100                                    ; preds = %7023
  %7101 = fmul fast float %7065, %7046
  %7102 = fmul fast float %7065, %7047
  %7103 = fmul fast float %7065, %7048
  %7104 = fadd fast float %7086, %7101
  %7105 = fadd fast float %7087, %7102
  %7106 = fadd fast float %7088, %7103
  %7107 = call float @dx.op.dot3.f32(i32 55, float %7104, float %7105, float %7106, float %7104, float %7105, float %7106)  ; Dot3(ax,ay,az,bx,by,bz)
  %7108 = call float @dx.op.unary.f32(i32 25, float %7107)  ; Rsqrt(value)
  %7109 = fmul fast float %7108, %7104
  %7110 = fmul fast float %7108, %7105
  %7111 = fmul fast float %7108, %7106
  %7112 = fsub fast float %186, %7057
  %7113 = fsub fast float %187, %7058
  %7114 = fsub fast float %188, %7059
  %7115 = fsub fast float -0.000000e+00, %7112
  %7116 = fsub fast float -0.000000e+00, %7113
  %7117 = fsub fast float -0.000000e+00, %7114
  %7118 = call float @dx.op.dot3.f32(i32 55, float %7115, float %7116, float %7117, float %7046, float %7047, float %7048)  ; Dot3(ax,ay,az,bx,by,bz)
  %7119 = fcmp fast ogt float %7118, 0.000000e+00
  %7120 = uitofp i1 %7119 to float
  br label %7121

; <label>:7121                                    ; preds = %7100, %7023
  %7122 = phi float [ %7120, %7100 ], [ 1.000000e+00, %7023 ]
  %7123 = phi float [ %7109, %7100 ], [ %7092, %7023 ]
  %7124 = phi float [ %7110, %7100 ], [ %7093, %7023 ]
  %7125 = phi float [ %7111, %7100 ], [ %7094, %7023 ]
  %7126 = call float @dx.op.dot3.f32(i32 55, float %7046, float %7047, float %7048, float %7123, float %7124, float %7125)  ; Dot3(ax,ay,az,bx,by,bz)
  %7127 = fmul fast float %7126, %7126
  %7128 = call float @dx.op.unary.f32(i32 7, float %7127)  ; Saturate(value)
  %7129 = fsub fast float 1.000000e+00, %7128
  %7130 = fmul fast float %7129, 5.000000e-01
  %7131 = fcmp fast ogt float %7126, 0.000000e+00
  %7132 = fsub fast float 1.000000e+00, %7130
  %7133 = select i1 %7131, float %7130, float %7132
  %7134 = fmul fast float %7133, %7081
  %7135 = fadd fast float %7134, %7079
  %7136 = fmul fast float %7135, 0x3EF0001000000000
  %7137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %7136, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7138 = extractvalue %dx.types.ResRet.f32 %7137, 0
  %7139 = fmul fast float %7126, %7063
  %7140 = fadd fast float %7139, %7064
  %7141 = call float @dx.op.unary.f32(i32 7, float %7140)  ; Saturate(value)
  %7142 = select i1 %7085, float 1.000000e+00, float %7141
  %7143 = select i1 %7085, float %7141, float 1.000000e+00
  %7144 = fmul fast float %7090, %7060
  %7145 = fsub fast float 1.000000e+00, %7144
  %7146 = fmul fast float %7145, %7066
  %7147 = call float @dx.op.unary.f32(i32 7, float %7146)  ; Saturate(value)
  %7148 = fmul fast float %7147, %7143
  %7149 = fmul fast float %7148, 2.000000e+00
  %7150 = fsub fast float 3.000000e+00, %7149
  %7151 = fmul fast float %7138, %7122
  %7152 = fmul fast float %7148, %7148
  %7153 = fmul fast float %7152, %7151
  %7154 = fmul fast float %7153, %7150
  %7155 = call float @dx.op.binary.f32(i32 36, float %7154, float %7154)  ; FMin(a,b)
  %7156 = call float @dx.op.binary.f32(i32 36, float %7154, float %7155)  ; FMin(a,b)
  %7157 = fcmp fast ogt float %7156, 0.000000e+00
  br i1 %7157, label %7166, label %7158, !dx.controlflow.hints !120

; <label>:7158                                    ; preds = %7573, %7266, %7121
  %7159 = phi float [ %7025, %7266 ], [ %7025, %7121 ], [ %7601, %7573 ]
  %7160 = phi float [ %7026, %7266 ], [ %7026, %7121 ], [ %7602, %7573 ]
  %7161 = phi float [ %7027, %7266 ], [ %7027, %7121 ], [ %7603, %7573 ]
  %7162 = phi float [ %7028, %7266 ], [ %7028, %7121 ], [ %7595, %7573 ]
  %7163 = phi float [ %7029, %7266 ], [ %7029, %7121 ], [ %7596, %7573 ]
  %7164 = phi float [ %7030, %7266 ], [ %7030, %7121 ], [ %7597, %7573 ]
  %7165 = icmp eq i32 %7024, %7034
  br i1 %7165, label %7604, label %7023

; <label>:7166                                    ; preds = %7121
  %7167 = icmp eq i32 %7082, 255
  br i1 %7167, label %7266, label %7168, !dx.controlflow.hints !121

; <label>:7168                                    ; preds = %7166
  %7169 = mul nuw nsw i32 %7082, 176
  %7170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7169, i32 undef)  ; BufferLoad(srv,index,wot)
  %7171 = extractvalue %dx.types.ResRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.ResRet.f32 %7170, 1
  %7173 = extractvalue %dx.types.ResRet.f32 %7170, 2
  %7174 = extractvalue %dx.types.ResRet.f32 %7170, 3
  %7175 = add nuw nsw i32 %7169, 16
  %7176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7175, i32 undef)  ; BufferLoad(srv,index,wot)
  %7177 = extractvalue %dx.types.ResRet.f32 %7176, 0
  %7178 = extractvalue %dx.types.ResRet.f32 %7176, 1
  %7179 = add nuw nsw i32 %7169, 32
  %7180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7179, i32 undef)  ; BufferLoad(srv,index,wot)
  %7181 = extractvalue %dx.types.ResRet.f32 %7180, 0
  %7182 = extractvalue %dx.types.ResRet.f32 %7180, 1
  %7183 = extractvalue %dx.types.ResRet.f32 %7180, 2
  %7184 = add nuw nsw i32 %7169, 48
  %7185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7184, i32 undef)  ; BufferLoad(srv,index,wot)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.ResRet.f32 %7185, 2
  %7189 = extractvalue %dx.types.ResRet.f32 %7185, 3
  %7190 = add nuw nsw i32 %7169, 64
  %7191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7190, i32 undef)  ; BufferLoad(srv,index,wot)
  %7192 = extractvalue %dx.types.ResRet.f32 %7191, 0
  %7193 = extractvalue %dx.types.ResRet.f32 %7191, 1
  %7194 = extractvalue %dx.types.ResRet.f32 %7191, 2
  %7195 = extractvalue %dx.types.ResRet.f32 %7191, 3
  %7196 = add nuw nsw i32 %7169, 80
  %7197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7196, i32 undef)  ; BufferLoad(srv,index,wot)
  %7198 = extractvalue %dx.types.ResRet.f32 %7197, 0
  %7199 = extractvalue %dx.types.ResRet.f32 %7197, 1
  %7200 = extractvalue %dx.types.ResRet.f32 %7197, 2
  %7201 = extractvalue %dx.types.ResRet.f32 %7197, 3
  %7202 = add nuw nsw i32 %7169, 96
  %7203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7202, i32 undef)  ; BufferLoad(srv,index,wot)
  %7204 = extractvalue %dx.types.ResRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.ResRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.ResRet.f32 %7203, 2
  %7207 = extractvalue %dx.types.ResRet.f32 %7203, 3
  %7208 = bitcast float %7178 to i32
  %7209 = fmul fast float %7183, %114
  %7210 = fmul fast float %7183, %115
  %7211 = fmul fast float %7183, %116
  %7212 = fadd fast float %7209, %186
  %7213 = fadd fast float %7210, %187
  %7214 = fadd fast float %7211, %188
  %7215 = fmul fast float %7212, %7186
  %7216 = call float @dx.op.tertiary.f32(i32 46, float %7213, float %7192, float %7215)  ; FMad(a,b,c)
  %7217 = call float @dx.op.tertiary.f32(i32 46, float %7214, float %7198, float %7216)  ; FMad(a,b,c)
  %7218 = fadd fast float %7217, %7204
  %7219 = fmul fast float %7212, %7187
  %7220 = call float @dx.op.tertiary.f32(i32 46, float %7213, float %7193, float %7219)  ; FMad(a,b,c)
  %7221 = call float @dx.op.tertiary.f32(i32 46, float %7214, float %7199, float %7220)  ; FMad(a,b,c)
  %7222 = fadd fast float %7221, %7205
  %7223 = fmul fast float %7212, %7188
  %7224 = call float @dx.op.tertiary.f32(i32 46, float %7213, float %7194, float %7223)  ; FMad(a,b,c)
  %7225 = call float @dx.op.tertiary.f32(i32 46, float %7214, float %7200, float %7224)  ; FMad(a,b,c)
  %7226 = fadd fast float %7225, %7206
  %7227 = fmul fast float %7212, %7189
  %7228 = call float @dx.op.tertiary.f32(i32 46, float %7213, float %7195, float %7227)  ; FMad(a,b,c)
  %7229 = call float @dx.op.tertiary.f32(i32 46, float %7214, float %7201, float %7228)  ; FMad(a,b,c)
  %7230 = fadd fast float %7229, %7207
  %7231 = fdiv fast float %7218, %7230
  %7232 = fdiv fast float %7222, %7230
  %7233 = fdiv fast float %7226, %7230
  %7234 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7233)  ; FMax(a,b)
  %7235 = fmul fast float %263, 0x401921FB60000000
  %7236 = call float @dx.op.unary.f32(i32 13, float %7235)  ; Sin(value)
  %7237 = call float @dx.op.unary.f32(i32 12, float %7235)  ; Cos(value)
  %7238 = fsub fast float -0.000000e+00, %7236
  %7239 = fmul fast float %7173, 5.000000e-01
  %7240 = call float @dx.op.dot2.f32(i32 54, float %263, float %263, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7241 = call float @dx.op.unary.f32(i32 22, float %7240)  ; Frc(value)
  %7242 = fmul fast float %7241, 0x404A7DD040000000
  %7243 = call float @dx.op.unary.f32(i32 22, float %7242)  ; Frc(value)
  %7244 = fmul fast float %7243, %7182
  %7245 = fadd fast float %7244, %7239
  %7246 = call float @dx.op.tertiary.f32(i32 46, float %7245, float %7238, float 0.000000e+00)  ; FMad(a,b,c)
  %7247 = call float @dx.op.tertiary.f32(i32 46, float %7245, float %7237, float 0.000000e+00)  ; FMad(a,b,c)
  %7248 = fadd fast float %7246, %7231
  %7249 = fadd fast float %7247, %7232
  %7250 = fmul fast float %7248, %7177
  %7251 = fmul fast float %7249, %7177
  %7252 = call float @dx.op.binary.f32(i32 35, float %7250, float %7173)  ; FMax(a,b)
  %7253 = call float @dx.op.binary.f32(i32 35, float %7251, float %7173)  ; FMax(a,b)
  %7254 = call float @dx.op.binary.f32(i32 36, float %7252, float %7174)  ; FMin(a,b)
  %7255 = call float @dx.op.binary.f32(i32 36, float %7253, float %7174)  ; FMin(a,b)
  %7256 = fadd fast float %7254, %7171
  %7257 = fadd fast float %7255, %7172
  %7258 = uitofp i32 %7208 to float
  %7259 = fadd fast float %7234, %7181
  %7260 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %47, float %7256, float %7257, float %7258, float undef, i32 0, i32 0, i32 undef, float %7259)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = fadd fast float %7261, -1.000000e+00
  %7263 = fmul fast float %7262, %7142
  %7264 = fadd fast float %7263, 1.000000e+00
  %7265 = fmul fast float %7264, %7154
  br label %7266

; <label>:7266                                    ; preds = %7168, %7166
  %7267 = phi float [ %7265, %7168 ], [ %7154, %7166 ]
  %7268 = call float @dx.op.binary.f32(i32 36, float %7267, float %7267)  ; FMin(a,b)
  %7269 = call float @dx.op.binary.f32(i32 36, float %7267, float %7268)  ; FMin(a,b)
  %7270 = fcmp fast ogt float %7269, 0.000000e+00
  br i1 %7270, label %7271, label %7158, !dx.controlflow.hints !122

; <label>:7271                                    ; preds = %7266
  %7272 = fmul fast float %7267, %7075
  %7273 = fmul fast float %7267, %7076
  %7274 = fmul fast float %7267, %7077
  %7275 = fsub fast float %7059, %4597
  %7276 = fcmp fast ogt float %7275, 0.000000e+00
  %7277 = fsub fast float %188, %4597
  %7278 = fcmp fast ogt float %7277, 0.000000e+00
  %7279 = xor i1 %7278, %7276
  %7280 = fsub fast float %4597, %7059
  %7281 = fmul fast float %7280, 2.000000e+00
  %7282 = fadd fast float %7281, %7059
  %7283 = select i1 %7279, float %7059, float %7282
  %7284 = fsub fast float %7283, %188
  %7285 = call float @dx.op.dot3.f32(i32 55, float %7086, float %7087, float %7284, float %7086, float %7087, float %7284)  ; Dot3(ax,ay,az,bx,by,bz)
  %7286 = call float @dx.op.unary.f32(i32 25, float %7285)  ; Rsqrt(value)
  %7287 = fmul fast float %7286, %7086
  %7288 = fmul fast float %7286, %7087
  %7289 = fmul fast float %7286, %7284
  %7290 = fsub fast float %4597, %188
  %7291 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7290)  ; Dot3(ax,ay,az,bx,by,bz)
  %7292 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7287, float %7288, float %7289)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = fdiv fast float 1.000000e+00, %7292
  %7294 = fmul fast float %7293, %7291
  %7295 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7277, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7296 = fcmp fast ogt float %7295, 0.000000e+00
  %7297 = fcmp fast olt float %7295, 0.000000e+00
  %7298 = zext i1 %7296 to i32
  %7299 = zext i1 %7297 to i32
  %7300 = sub nsw i32 %7298, %7299
  %7301 = sitofp i32 %7300 to float
  %7302 = fsub fast float %7283, %4597
  %7303 = call float @dx.op.dot3.f32(i32 55, float %7086, float %7087, float %7302, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7304 = fcmp fast ogt float %7303, 0.000000e+00
  %7305 = fcmp fast olt float %7303, 0.000000e+00
  %7306 = zext i1 %7304 to i32
  %7307 = zext i1 %7305 to i32
  %7308 = sub nsw i32 %7306, %7307
  %7309 = sitofp i32 %7308 to float
  %7310 = fcmp fast une float %7301, %7309
  br i1 %7310, label %7311, label %7321

; <label>:7311                                    ; preds = %7271
  %7312 = fmul fast float %7294, %7289
  %7313 = fmul fast float %7294, %7288
  %7314 = fmul fast float %7294, %7287
  %7315 = fmul fast float %7314, %7314
  %7316 = fmul fast float %7313, %7313
  %7317 = fadd fast float %7315, %7316
  %7318 = fmul fast float %7312, %7312
  %7319 = fadd fast float %7317, %7318
  %7320 = call float @dx.op.unary.f32(i32 24, float %7319)  ; Sqrt(value)
  br label %7333

; <label>:7321                                    ; preds = %7271
  %7322 = icmp slt i32 %7300, 0
  br i1 %7322, label %7323, label %7333

; <label>:7323                                    ; preds = %7321
  %7324 = fsub fast float %186, %7057
  %7325 = fsub fast float %187, %7058
  %7326 = fsub fast float %188, %7283
  %7327 = fmul fast float %7324, %7324
  %7328 = fmul fast float %7325, %7325
  %7329 = fadd fast float %7327, %7328
  %7330 = fmul fast float %7326, %7326
  %7331 = fadd fast float %7329, %7330
  %7332 = call float @dx.op.unary.f32(i32 24, float %7331)  ; Sqrt(value)
  br label %7333

; <label>:7333                                    ; preds = %7323, %7321, %7311
  %7334 = phi float [ %7320, %7311 ], [ %7332, %7323 ], [ 0.000000e+00, %7321 ]
  %7335 = and i1 %7278, %7276
  %7336 = fsub fast float -0.000000e+00, %7334
  %7337 = select i1 %7335, float -0.000000e+00, float %7336
  %7338 = fmul fast float %4598, 0x3FF7154760000000
  %7339 = fmul fast float %7338, %7337
  %7340 = fmul fast float %4599, 0x3FF7154760000000
  %7341 = fmul fast float %7340, %7337
  %7342 = fmul fast float %4600, 0x3FF7154760000000
  %7343 = fmul fast float %7342, %7337
  %7344 = call float @dx.op.unary.f32(i32 21, float %7339)  ; Exp(value)
  %7345 = call float @dx.op.unary.f32(i32 21, float %7341)  ; Exp(value)
  %7346 = call float @dx.op.unary.f32(i32 21, float %7343)  ; Exp(value)
  %7347 = call float @dx.op.unary.f32(i32 7, float %7344)  ; Saturate(value)
  %7348 = call float @dx.op.unary.f32(i32 7, float %7345)  ; Saturate(value)
  %7349 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7350 = fmul fast float %7272, %7347
  %7351 = fmul fast float %7273, %7348
  %7352 = fmul fast float %7274, %7349
  %7353 = fsub fast float %7092, %5442
  %7354 = fsub fast float %7093, %5443
  %7355 = fsub fast float %7094, %5444
  %7356 = call float @dx.op.dot3.f32(i32 55, float %7353, float %7354, float %7355, float %7353, float %7354, float %7355)  ; Dot3(ax,ay,az,bx,by,bz)
  %7357 = call float @dx.op.unary.f32(i32 25, float %7356)  ; Rsqrt(value)
  %7358 = fmul fast float %7357, %7353
  %7359 = fmul fast float %7357, %7354
  %7360 = fmul fast float %7357, %7355
  %7361 = call float @dx.op.dot3.f32(i32 55, float %7092, float %7093, float %7094, float %5399, float %5400, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %7362 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5446, float %5447, float %7358, float %7359, float %7360)  ; Dot3(ax,ay,az,bx,by,bz)
  %7363 = call float @dx.op.unary.f32(i32 7, float %7361)  ; Saturate(value)
  %7364 = fmul fast float %7363, %7099
  %7365 = fmul fast float %7363, %7363
  %7366 = fmul fast float %7365, %5463
  %7367 = call float @dx.op.unary.f32(i32 7, float %7366)  ; Saturate(value)
  %7368 = fmul fast float %7364, %7367
  %7369 = bitcast float %7089 to i32
  %7370 = ashr i32 %7369, 1
  %7371 = sub nsw i32 1597463007, %7370
  %7372 = bitcast i32 %7371 to float
  %7373 = fmul fast float %7372, %7086
  %7374 = fmul fast float %7372, %7087
  %7375 = fmul fast float %7372, %7088
  %7376 = fsub fast float %7373, %5442
  %7377 = fsub fast float %7374, %5443
  %7378 = fsub fast float %7375, %5444
  %7379 = call float @dx.op.dot3.f32(i32 55, float %7376, float %7377, float %7378, float %7376, float %7377, float %7378)  ; Dot3(ax,ay,az,bx,by,bz)
  %7380 = call float @dx.op.unary.f32(i32 25, float %7379)  ; Rsqrt(value)
  %7381 = fmul fast float %7376, %7380
  %7382 = fmul fast float %7377, %7380
  %7383 = fmul fast float %7378, %7380
  %7384 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5400, float %5401, float %7381, float %7382, float %7383)  ; Dot3(ax,ay,az,bx,by,bz)
  %7385 = fmul fast float %7384, %7384
  %7386 = call float @dx.op.unary.f32(i32 6, float %7361)  ; FAbs(value)
  %7387 = call float @dx.op.binary.f32(i32 35, float %5779, float 0x3F847AE140000000)  ; FMax(a,b)
  %7388 = fmul fast float %7387, %7387
  %7389 = fmul fast float %7388, %7388
  %7390 = fsub fast float 1.000000e+00, %7389
  %7391 = fmul fast float %5450, %5450
  %7392 = fmul fast float %7391, %7390
  %7393 = fadd fast float %7392, %7389
  %7394 = bitcast float %7393 to i32
  %7395 = ashr i32 %7394, 1
  %7396 = add nsw i32 %7395, 532487669
  %7397 = bitcast i32 %7396 to float
  %7398 = fadd fast float %7397, %5450
  %7399 = fmul fast float %7389, %7385
  %7400 = fsub fast float 1.000000e+00, %7385
  %7401 = fadd fast float %7400, %7399
  %7402 = fmul fast float %7386, %7386
  %7403 = fmul fast float %7402, %7390
  %7404 = fadd fast float %7403, %7389
  %7405 = bitcast float %7404 to i32
  %7406 = ashr i32 %7405, 1
  %7407 = add nsw i32 %7406, 532487669
  %7408 = bitcast i32 %7407 to float
  %7409 = fadd fast float %7408, %7386
  %7410 = fmul fast float %7401, %7401
  %7411 = fmul fast float %7410, %7398
  %7412 = fmul fast float %7411, %7409
  %7413 = fdiv fast float 1.000000e+00, %7412
  %7414 = bitcast float %7389 to i32
  %7415 = sitofp i32 %7414 to float
  %7416 = fmul fast float %7415, 0x3FE7F73180000000
  %7417 = fadd fast float %7416, 0x41AFE27C40000000
  %7418 = fptosi float %7417 to i32
  %7419 = bitcast i32 %7418 to float
  %7420 = fmul fast float %7054, 0x3FD80E9D60000000
  %7421 = fmul fast float %7420, %7372
  %7422 = fadd fast float %7419, %7421
  %7423 = bitcast float %7422 to i32
  %7424 = sub nsw i32 2129859010, %7423
  %7425 = bitcast i32 %7424 to float
  %7426 = fmul fast float %7389, %7413
  %7427 = fmul fast float %7426, %7419
  %7428 = fmul fast float %7427, %7425
  %7429 = fmul fast float %5708, 0x3FF9999980000000
  %7430 = fsub fast float 5.000000e+00, %7429
  %7431 = call float @dx.op.unary.f32(i32 6, float %7362)  ; FAbs(value)
  %7432 = fsub fast float 1.000000e+00, %7431
  %7433 = fmul fast float %5708, 0x41D9660740000000
  %7434 = fadd fast float %7433, 0xC1EFBF8940000000
  %7435 = bitcast float %7432 to i32
  %7436 = sitofp i32 %7435 to float
  %7437 = fmul fast float %7436, %7430
  %7438 = fadd fast float %7434, %7437
  %7439 = fptosi float %7438 to i32
  %7440 = bitcast i32 %7439 to float
  %7441 = fsub fast float 1.000000e+00, %5402
  %7442 = fsub fast float 1.000000e+00, %5403
  %7443 = fsub fast float 1.000000e+00, %5448
  %7444 = fmul fast float %7440, %7441
  %7445 = fmul fast float %7440, %7442
  %7446 = fmul fast float %7440, %7443
  %7447 = fadd fast float %7444, %5402
  %7448 = fadd fast float %7445, %5403
  %7449 = fadd fast float %7446, %5448
  %7450 = fmul fast float %7361, 9.843750e-01
  %7451 = fadd fast float %7450, 7.812500e-03
  %7452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %7451, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7453 = extractvalue %dx.types.ResRet.f32 %7452, 0
  %7454 = extractvalue %dx.types.ResRet.f32 %7452, 1
  %7455 = extractvalue %dx.types.ResRet.f32 %7452, 2
  %7456 = extractvalue %dx.types.ResRet.f32 %7452, 3
  %7457 = fsub fast float %7455, %7453
  %7458 = fsub fast float %7456, %7454
  %7459 = fmul fast float %7457, %5718
  %7460 = fmul fast float %7458, %5718
  %7461 = fadd fast float %7459, %7453
  %7462 = fadd fast float %7460, %7454
  %7463 = fmul fast float %7461, %5402
  %7464 = fmul fast float %7461, %5403
  %7465 = fmul fast float %7461, %5448
  %7466 = fadd fast float %7463, %7462
  %7467 = fadd fast float %7464, %7462
  %7468 = fadd fast float %7465, %7462
  %7469 = call float @dx.op.binary.f32(i32 35, float %7467, float %7468)  ; FMax(a,b)
  %7470 = call float @dx.op.binary.f32(i32 35, float %7466, float %7469)  ; FMax(a,b)
  %7471 = fsub fast float 1.000000e+00, %7470
  %7472 = call float @dx.op.binary.f32(i32 35, float %7386, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7473 = fdiv fast float %4117, %7472
  %7474 = fsub fast float -0.000000e+00, %5399
  %7475 = fsub fast float -0.000000e+00, %5400
  %7476 = fsub fast float -0.000000e+00, %5401
  %7477 = call float @dx.op.dot3.f32(i32 55, float %7092, float %7093, float %7094, float %7474, float %7475, float %7476)  ; Dot3(ax,ay,az,bx,by,bz)
  %7478 = call float @dx.op.unary.f32(i32 7, float %7477)  ; Saturate(value)
  %7479 = fmul fast float %7478, 9.843750e-01
  %7480 = fadd fast float %7479, 7.812500e-03
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %7480, float %5712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.ResRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.ResRet.f32 %7481, 2
  %7485 = extractvalue %dx.types.ResRet.f32 %7481, 3
  %7486 = fsub fast float %7484, %7482
  %7487 = fsub fast float %7485, %7483
  %7488 = fmul fast float %7486, %5718
  %7489 = fmul fast float %7487, %5718
  %7490 = fadd fast float %7488, %7482
  %7491 = fadd fast float %7489, %7483
  %7492 = fmul fast float %5779, %5784
  %7493 = fadd fast float %5786, %7492
  %7494 = call float @dx.op.unary.f32(i32 7, float %7493)  ; Saturate(value)
  %7495 = fsub fast float %7373, %5456
  %7496 = fsub fast float %7374, %5457
  %7497 = fsub fast float %7375, %5458
  %7498 = call float @dx.op.dot3.f32(i32 55, float %7495, float %7496, float %7497, float %7495, float %7496, float %7497)  ; Dot3(ax,ay,az,bx,by,bz)
  %7499 = call float @dx.op.unary.f32(i32 25, float %7498)  ; Rsqrt(value)
  %7500 = fmul fast float %7495, %7499
  %7501 = fmul fast float %7496, %7499
  %7502 = fmul fast float %7497, %7499
  %7503 = call float @dx.op.dot3.f32(i32 55, float %7474, float %7475, float %7476, float %7500, float %7501, float %7502)  ; Dot3(ax,ay,az,bx,by,bz)
  %7504 = fmul fast float %7503, %7503
  %7505 = call float @dx.op.unary.f32(i32 6, float %7478)  ; FAbs(value)
  %7506 = call float @dx.op.binary.f32(i32 35, float %7494, float 0x3F847AE140000000)  ; FMax(a,b)
  %7507 = fmul fast float %7506, %7506
  %7508 = fmul fast float %7507, %7507
  %7509 = fsub fast float 1.000000e+00, %7508
  %7510 = fmul fast float %7508, %7504
  %7511 = fsub fast float 1.000000e+00, %7504
  %7512 = fadd fast float %7511, %7510
  %7513 = bitcast float %7508 to i32
  %7514 = sitofp i32 %7513 to float
  %7515 = fmul fast float %7514, 0x3FE7F73180000000
  %7516 = fadd fast float %7515, 0x41AFE27C40000000
  %7517 = fptosi float %7516 to i32
  %7518 = bitcast i32 %7517 to float
  br i1 %7084, label %7519, label %7573

; <label>:7519                                    ; preds = %7333
  %7520 = fmul fast float %7512, %7512
  %7521 = fmul fast float %7391, %7509
  %7522 = fadd fast float %7521, %7508
  %7523 = bitcast float %7522 to i32
  %7524 = ashr i32 %7523, 1
  %7525 = add nsw i32 %7524, 532487669
  %7526 = bitcast i32 %7525 to float
  %7527 = fadd fast float %7526, %5450
  %7528 = fmul fast float %7520, %7527
  %7529 = fmul fast float %7505, %7505
  %7530 = fmul fast float %7529, %7509
  %7531 = fadd fast float %7530, %7508
  %7532 = bitcast float %7531 to i32
  %7533 = ashr i32 %7532, 1
  %7534 = add nsw i32 %7533, 532487669
  %7535 = bitcast i32 %7534 to float
  %7536 = fadd fast float %7535, %7505
  %7537 = fmul fast float %7528, %7536
  %7538 = fdiv fast float 1.000000e+00, %7537
  %7539 = fmul fast float %7508, %7538
  %7540 = fmul fast float %7539, %7518
  %7541 = fadd fast float %7518, %7421
  %7542 = bitcast float %7541 to i32
  %7543 = sub nsw i32 2129859010, %7542
  %7544 = bitcast i32 %7543 to float
  %7545 = fmul fast float %7540, %7544
  %7546 = fmul fast float %7490, %5402
  %7547 = fadd fast float %7546, %7491
  %7548 = fmul fast float %7490, %5403
  %7549 = fadd fast float %7548, %7491
  %7550 = fmul fast float %7490, %5448
  %7551 = fadd fast float %7550, %7491
  %7552 = call float @dx.op.binary.f32(i32 35, float %7549, float %7551)  ; FMax(a,b)
  %7553 = call float @dx.op.binary.f32(i32 35, float %7547, float %7552)  ; FMax(a,b)
  %7554 = fsub fast float 1.000000e+00, %7553
  %7555 = fmul fast float %7478, %7099
  %7556 = fmul fast float %5743, %7473
  %7557 = call float @dx.op.unary.f32(i32 21, float %7556)  ; Exp(value)
  %7558 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7559 = select i1 %5738, float %7558, float 0.000000e+00
  %7560 = fmul fast float %5741, %7473
  %7561 = call float @dx.op.unary.f32(i32 21, float %7560)  ; Exp(value)
  %7562 = call float @dx.op.unary.f32(i32 7, float %7561)  ; Saturate(value)
  %7563 = select i1 %5737, float %7562, float 0.000000e+00
  %7564 = fmul fast float %5739, %7473
  %7565 = call float @dx.op.unary.f32(i32 21, float %7564)  ; Exp(value)
  %7566 = call float @dx.op.unary.f32(i32 7, float %7565)  ; Saturate(value)
  %7567 = select i1 %5736, float %7566, float 0.000000e+00
  %7568 = fmul fast float %7554, %7555
  %7569 = fmul fast float %7568, %7545
  %7570 = fmul fast float %7569, %7567
  %7571 = fmul fast float %7569, %7563
  %7572 = fmul fast float %7569, %7559
  br label %7573

; <label>:7573                                    ; preds = %7519, %7333
  %7574 = phi float [ %7570, %7519 ], [ 0.000000e+00, %7333 ]
  %7575 = phi float [ %7571, %7519 ], [ 0.000000e+00, %7333 ]
  %7576 = phi float [ %7572, %7519 ], [ 0.000000e+00, %7333 ]
  %7577 = fmul fast float %7447, %7368
  %7578 = fmul fast float %7577, %7428
  %7579 = fmul fast float %7448, %7368
  %7580 = fmul fast float %7579, %7428
  %7581 = fmul fast float %7449, %7368
  %7582 = fmul fast float %7581, %7428
  %7583 = fadd fast float %7574, %7578
  %7584 = fadd fast float %7575, %7580
  %7585 = fadd fast float %7576, %7582
  %7586 = fmul fast float %7350, %1342
  %7587 = fmul fast float %7586, %7368
  %7588 = fmul fast float %7587, %7471
  %7589 = fmul fast float %7351, %1342
  %7590 = fmul fast float %7589, %7368
  %7591 = fmul fast float %7590, %7471
  %7592 = fmul fast float %7352, %1342
  %7593 = fmul fast float %7592, %7368
  %7594 = fmul fast float %7593, %7471
  %7595 = fadd fast float %7588, %7028
  %7596 = fadd fast float %7591, %7029
  %7597 = fadd fast float %7594, %7030
  %7598 = fmul fast float %7586, %7583
  %7599 = fmul fast float %7589, %7584
  %7600 = fmul fast float %7592, %7585
  %7601 = fadd fast float %7598, %7025
  %7602 = fadd fast float %7599, %7026
  %7603 = fadd fast float %7600, %7027
  br label %7158

; <label>:7604                                    ; preds = %7158
  br label %7605

; <label>:7605                                    ; preds = %7604, %6991
  %7606 = phi float [ %6993, %6991 ], [ %7159, %7604 ]
  %7607 = phi float [ %6994, %6991 ], [ %7160, %7604 ]
  %7608 = phi float [ %6995, %6991 ], [ %7161, %7604 ]
  %7609 = phi float [ %6996, %6991 ], [ %7162, %7604 ]
  %7610 = phi float [ %6997, %6991 ], [ %7163, %7604 ]
  %7611 = phi float [ %6998, %6991 ], [ %7164, %7604 ]
  %7612 = add i32 %6992, 1
  %7613 = icmp ugt i32 %7612, %6988
  br i1 %7613, label %7614, label %6991

; <label>:7614                                    ; preds = %7605
  br label %7615

; <label>:7615                                    ; preds = %7614, %6941, %6931
  %7616 = phi float [ %6932, %6931 ], [ %6932, %6941 ], [ %7606, %7614 ]
  %7617 = phi float [ %6933, %6931 ], [ %6933, %6941 ], [ %7607, %7614 ]
  %7618 = phi float [ %6934, %6931 ], [ %6934, %6941 ], [ %7608, %7614 ]
  %7619 = phi float [ %6935, %6931 ], [ %6935, %6941 ], [ %7609, %7614 ]
  %7620 = phi float [ %6936, %6931 ], [ %6936, %6941 ], [ %7610, %7614 ]
  %7621 = phi float [ %6937, %6931 ], [ %6937, %6941 ], [ %7611, %7614 ]
  %7622 = fmul fast float %1342, %5760
  %7623 = fsub fast float -0.000000e+00, %7622
  %7624 = fmul fast float %1342, %5761
  %7625 = fsub fast float -0.000000e+00, %7624
  %7626 = fmul fast float %1342, %5762
  %7627 = fsub fast float -0.000000e+00, %7626
  %7628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7629 = extractvalue %dx.types.CBufRet.f32 %7628, 3
  %7630 = fmul fast float %7619, %5396
  %7631 = fmul fast float %7620, %5397
  %7632 = fmul fast float %7621, %5398
  %7633 = fcmp fast ogt float %98, %215
  %7634 = and i1 %7633, %4603
  %7635 = or i1 %4609, %7634
  %7636 = icmp eq i32 %4602, 2
  %7637 = fcmp fast ole float %98, %215
  %7638 = and i1 %7637, %7636
  %7639 = or i1 %7638, %7635
  br i1 %7634, label %7640, label %7897

; <label>:7640                                    ; preds = %7615
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 2
  %7643 = extractvalue %dx.types.CBufRet.f32 %7641, 3
  %7644 = fmul fast float %7642, %107
  %7645 = fmul fast float %7643, %108
  %7646 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7647 = call float @dx.op.unary.f32(i32 7, float %7645)  ; Saturate(value)
  %7648 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %7646, float %7647, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7649 = extractvalue %dx.types.ResRet.f32 %7648, 0
  %7650 = extractvalue %dx.types.ResRet.f32 %7648, 1
  %7651 = extractvalue %dx.types.ResRet.f32 %7648, 2
  %7652 = extractvalue %dx.types.ResRet.f32 %7648, 3
  %7653 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %7646, float %7647, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7654 = extractvalue %dx.types.ResRet.f32 %7653, 0
  %7655 = extractvalue %dx.types.ResRet.f32 %7653, 1
  %7656 = extractvalue %dx.types.ResRet.f32 %7653, 2
  %7657 = extractvalue %dx.types.ResRet.f32 %7653, 3
  %7658 = call float @dx.op.binary.f32(i32 35, float %7650, float %7651)  ; FMax(a,b)
  %7659 = call float @dx.op.binary.f32(i32 35, float %7649, float %7658)  ; FMax(a,b)
  %7660 = call float @dx.op.binary.f32(i32 35, float %7659, float %7652)  ; FMax(a,b)
  %7661 = call float @dx.op.binary.f32(i32 36, float %7655, float %7656)  ; FMin(a,b)
  %7662 = call float @dx.op.binary.f32(i32 36, float %7654, float %7661)  ; FMin(a,b)
  %7663 = call float @dx.op.binary.f32(i32 36, float %7662, float %7657)  ; FMin(a,b)
  %7664 = fmul fast float %7660, 2.550000e+02
  %7665 = fadd fast float %7664, 0x3F70101020000000
  %7666 = fptoui float %7665 to i32
  %7667 = fmul fast float %7663, 2.550000e+02
  %7668 = fadd fast float %7667, 0x3F70101020000000
  %7669 = fptoui float %7668 to i32
  %7670 = icmp ult i32 %7666, %7669
  br i1 %7670, label %7671, label %7839

; <label>:7671                                    ; preds = %7640
  %7672 = fcmp fast ogt float %97, 9.843750e-01
  %7673 = fadd fast float %98, -4.000000e+00
  %7674 = select i1 %7672, float -4.000000e+00, float %7673
  %7675 = call float @dx.op.binary.f32(i32 35, float %7674, float 0.000000e+00)  ; FMax(a,b)
  %7676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7677 = extractvalue %dx.types.CBufRet.f32 %7676, 0
  %7678 = fadd fast float %7677, %7675
  %7679 = extractvalue %dx.types.CBufRet.f32 %7676, 2
  %7680 = fmul fast float %7678, %7679
  %7681 = call float @dx.op.unary.f32(i32 23, float %7680)  ; Log(value)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7676, 3
  %7683 = fmul fast float %7682, %7681
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 2
  %7686 = fmul fast float %7683, %7685
  %7687 = call float @dx.op.unary.f32(i32 7, float %7686)  ; Saturate(value)
  %7688 = uitofp i32 %7666 to float
  %7689 = uitofp i32 %7669 to float
  %7690 = fadd fast float %7688, 5.000000e-01
  %7691 = fadd fast float %7689, 5.000000e-01
  %7692 = fmul fast float %7685, %7690
  %7693 = fmul fast float %7685, %7691
  %7694 = fadd fast float %7692, 0x3F0FFB4800000000
  %7695 = fadd fast float %7693, 0xBF0FFB4800000000
  %7696 = call float @dx.op.binary.f32(i32 35, float %7687, float %7694)  ; FMax(a,b)
  %7697 = call float @dx.op.binary.f32(i32 36, float %7696, float %7695)  ; FMin(a,b)
  %7698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7699 = extractvalue %dx.types.CBufRet.f32 %7698, 1
  %7700 = extractvalue %dx.types.CBufRet.f32 %7698, 2
  %7701 = extractvalue %dx.types.CBufRet.f32 %7698, 0
  %7702 = fmul fast float %7699, %7697
  %7703 = fadd fast float %7701, %7702
  %7704 = fadd fast float %7701, %7700
  %7705 = fsub fast float %7699, %7700
  %7706 = fadd fast float %7705, %7701
  %7707 = call float @dx.op.binary.f32(i32 35, float %7703, float %7704)  ; FMax(a,b)
  %7708 = call float @dx.op.binary.f32(i32 36, float %7707, float %7706)  ; FMin(a,b)
  %7709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %7646, float %7647, float %7708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7710 = extractvalue %dx.types.ResRet.f32 %7709, 0
  %7711 = extractvalue %dx.types.ResRet.f32 %7709, 1
  %7712 = extractvalue %dx.types.ResRet.f32 %7709, 2
  %7713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.i32 %7713, 0
  %7715 = extractvalue %dx.types.CBufRet.i32 %7713, 1
  %7716 = uitofp i32 %7714 to float
  %7717 = uitofp i32 %7715 to float
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 0
  %7720 = extractvalue %dx.types.CBufRet.f32 %7718, 1
  %7721 = fmul fast float %7716, %7646
  %7722 = fmul fast float %7717, %7647
  %7723 = fadd fast float %7721, -5.000000e-01
  %7724 = fadd fast float %7722, -5.000000e-01
  %7725 = call float @dx.op.unary.f32(i32 22, float %7723)  ; Frc(value)
  %7726 = call float @dx.op.unary.f32(i32 22, float %7724)  ; Frc(value)
  %7727 = fmul fast float %7725, %7725
  %7728 = fmul fast float %7727, %7725
  %7729 = fsub fast float 3.000000e+00, %7725
  %7730 = fmul fast float %7727, %7729
  %7731 = fmul fast float %7725, 3.000000e+00
  %7732 = fmul fast float %7728, 3.000000e+00
  %7733 = fmul fast float %7727, 6.000000e+00
  %7734 = fsub fast float %7732, %7733
  %7735 = fadd fast float %7734, 4.000000e+00
  %7736 = fmul fast float %7735, 0x3FC5555560000000
  %7737 = fmul fast float %7728, -3.000000e+00
  %7738 = fadd fast float %7727, %7725
  %7739 = fmul fast float %7738, 3.000000e+00
  %7740 = fadd fast float %7737, 1.000000e+00
  %7741 = fadd fast float %7740, %7739
  %7742 = fmul fast float %7728, 0x3FC5555560000000
  %7743 = fmul fast float %7726, %7726
  %7744 = fmul fast float %7743, %7726
  %7745 = fsub fast float 3.000000e+00, %7726
  %7746 = fmul fast float %7743, %7745
  %7747 = fmul fast float %7726, 3.000000e+00
  %7748 = fmul fast float %7744, 3.000000e+00
  %7749 = fmul fast float %7743, 6.000000e+00
  %7750 = fsub fast float %7748, %7749
  %7751 = fadd fast float %7750, 4.000000e+00
  %7752 = fmul fast float %7751, 0x3FC5555560000000
  %7753 = fmul fast float %7744, -3.000000e+00
  %7754 = fadd fast float %7743, %7726
  %7755 = fmul fast float %7754, 3.000000e+00
  %7756 = fadd fast float %7753, 1.000000e+00
  %7757 = fadd fast float %7756, %7755
  %7758 = fmul fast float %7744, 0x3FC5555560000000
  %7759 = fadd fast float %7725, 1.000000e+00
  %7760 = fsub fast float 1.000000e+00, %7731
  %7761 = fadd fast float %7760, %7730
  %7762 = fadd fast float %7761, %7735
  %7763 = fmul fast float %7762, 0x3FC5555560000000
  %7764 = fdiv fast float %7736, %7763
  %7765 = fsub fast float %7759, %7764
  %7766 = fsub fast float 1.000000e+00, %7725
  %7767 = fadd fast float %7741, %7728
  %7768 = fmul fast float %7767, 0x3FC5555560000000
  %7769 = fdiv fast float %7742, %7768
  %7770 = fadd fast float %7766, %7769
  %7771 = fadd fast float %7726, 1.000000e+00
  %7772 = fsub fast float 1.000000e+00, %7747
  %7773 = fadd fast float %7772, %7746
  %7774 = fadd fast float %7773, %7751
  %7775 = fmul fast float %7774, 0x3FC5555560000000
  %7776 = fdiv fast float %7752, %7775
  %7777 = fsub fast float %7771, %7776
  %7778 = fsub fast float 1.000000e+00, %7726
  %7779 = fadd fast float %7757, %7744
  %7780 = fmul fast float %7779, 0x3FC5555560000000
  %7781 = fdiv fast float %7758, %7780
  %7782 = fadd fast float %7781, %7778
  %7783 = fmul fast float %7765, %7719
  %7784 = fsub fast float %7646, %7783
  %7785 = fmul fast float %7770, %7719
  %7786 = fadd fast float %7785, %7646
  %7787 = fmul fast float %7782, %7720
  %7788 = fadd fast float %7787, %7647
  %7789 = fmul fast float %7777, %7720
  %7790 = fsub fast float %7647, %7789
  %7791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7784, float %7790, float %7708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7792 = extractvalue %dx.types.ResRet.f32 %7791, 0
  %7793 = extractvalue %dx.types.ResRet.f32 %7791, 1
  %7794 = extractvalue %dx.types.ResRet.f32 %7791, 2
  %7795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7786, float %7790, float %7708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7796 = extractvalue %dx.types.ResRet.f32 %7795, 0
  %7797 = extractvalue %dx.types.ResRet.f32 %7795, 1
  %7798 = extractvalue %dx.types.ResRet.f32 %7795, 2
  %7799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7784, float %7788, float %7708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = extractvalue %dx.types.ResRet.f32 %7799, 1
  %7802 = extractvalue %dx.types.ResRet.f32 %7799, 2
  %7803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7786, float %7788, float %7708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7804 = extractvalue %dx.types.ResRet.f32 %7803, 0
  %7805 = extractvalue %dx.types.ResRet.f32 %7803, 1
  %7806 = extractvalue %dx.types.ResRet.f32 %7803, 2
  %7807 = fsub fast float %7800, %7792
  %7808 = fsub fast float %7801, %7793
  %7809 = fsub fast float %7802, %7794
  %7810 = fmul fast float %7807, %7780
  %7811 = fmul fast float %7808, %7780
  %7812 = fmul fast float %7809, %7780
  %7813 = fadd fast float %7810, %7792
  %7814 = fadd fast float %7811, %7793
  %7815 = fadd fast float %7812, %7794
  %7816 = fsub fast float %7804, %7796
  %7817 = fsub fast float %7805, %7797
  %7818 = fsub fast float %7806, %7798
  %7819 = fmul fast float %7816, %7780
  %7820 = fmul fast float %7817, %7780
  %7821 = fmul fast float %7818, %7780
  %7822 = fsub fast float %7796, %7813
  %7823 = fadd fast float %7822, %7819
  %7824 = fsub fast float %7797, %7814
  %7825 = fadd fast float %7824, %7820
  %7826 = fsub fast float %7798, %7815
  %7827 = fadd fast float %7826, %7821
  %7828 = fmul fast float %7823, %7768
  %7829 = fmul fast float %7825, %7768
  %7830 = fmul fast float %7827, %7768
  %7831 = fadd fast float %7828, %7813
  %7832 = fadd fast float %7829, %7814
  %7833 = fadd fast float %7830, %7815
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 1
  %7836 = fmul fast float %7831, %7835
  %7837 = fmul fast float %7832, %7835
  %7838 = fmul fast float %7833, %7835
  br label %7839

; <label>:7839                                    ; preds = %7671, %7640
  %7840 = phi float [ %7710, %7671 ], [ 1.000000e+00, %7640 ]
  %7841 = phi float [ %7711, %7671 ], [ 1.000000e+00, %7640 ]
  %7842 = phi float [ %7712, %7671 ], [ 1.000000e+00, %7640 ]
  %7843 = phi float [ %7836, %7671 ], [ 0.000000e+00, %7640 ]
  %7844 = phi float [ %7837, %7671 ], [ 0.000000e+00, %7640 ]
  %7845 = phi float [ %7838, %7671 ], [ 0.000000e+00, %7640 ]
  %7846 = fmul fast float %7843, %7623
  %7847 = fmul fast float %7844, %7625
  %7848 = fmul fast float %7845, %7627
  %7849 = call float @dx.op.dot3.f32(i32 55, float %7840, float %7841, float %7842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7850 = call float @dx.op.dot3.f32(i32 55, float %7846, float %7847, float %7848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7851 = select i1 %252, float %7849, float %7840
  %7852 = select i1 %252, float %7849, float %7841
  %7853 = select i1 %252, float 1.000000e+00, float %7842
  %7854 = select i1 %252, float %7850, float %7846
  %7855 = select i1 %252, float 0.000000e+00, float %7847
  %7856 = select i1 %252, float 0.000000e+00, float %7848
  %7857 = fmul fast float %7851, %7630
  %7858 = fmul fast float %7852, %7631
  %7859 = fmul fast float %7853, %7632
  %7860 = fadd fast float %7857, %7854
  %7861 = fadd fast float %7858, %7855
  %7862 = fadd fast float %7856, %7859
  %7863 = fmul fast float %7851, %7616
  %7864 = fmul fast float %7852, %7617
  %7865 = fmul fast float %7853, %7618
  %7866 = fmul fast float %135, %7642
  %7867 = fmul fast float %137, %7643
  %7868 = fsub fast float 1.000000e+00, %7866
  %7869 = fsub fast float 1.000000e+00, %7867
  %7870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7871 = extractvalue %dx.types.CBufRet.f32 %7870, 0
  %7872 = extractvalue %dx.types.CBufRet.f32 %7870, 1
  %7873 = extractvalue %dx.types.CBufRet.f32 %7870, 2
  %7874 = fmul fast float %7868, %7871
  %7875 = fmul fast float %7868, %7872
  %7876 = fmul fast float %7868, %7873
  %7877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7878 = extractvalue %dx.types.CBufRet.f32 %7877, 0
  %7879 = extractvalue %dx.types.CBufRet.f32 %7877, 1
  %7880 = extractvalue %dx.types.CBufRet.f32 %7877, 2
  %7881 = fmul fast float %7869, %7878
  %7882 = fmul fast float %7869, %7879
  %7883 = fmul fast float %7869, %7880
  %7884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7884, 0
  %7886 = extractvalue %dx.types.CBufRet.f32 %7884, 1
  %7887 = extractvalue %dx.types.CBufRet.f32 %7884, 2
  %7888 = fadd fast float %7881, %7885
  %7889 = fadd fast float %7888, %7874
  %7890 = fadd fast float %7882, %7886
  %7891 = fadd fast float %7890, %7875
  %7892 = fadd fast float %7883, %7887
  %7893 = fadd fast float %7892, %7876
  %7894 = fmul fast float %7889, %215
  %7895 = fmul fast float %7891, %215
  %7896 = fmul fast float %7893, %215
  br label %7897

; <label>:7897                                    ; preds = %7839, %7615
  %7898 = phi float [ %7894, %7839 ], [ %186, %7615 ]
  %7899 = phi float [ %7895, %7839 ], [ %187, %7615 ]
  %7900 = phi float [ %7896, %7839 ], [ %188, %7615 ]
  %7901 = phi float [ %215, %7839 ], [ %98, %7615 ]
  %7902 = phi float [ %7860, %7839 ], [ %7630, %7615 ]
  %7903 = phi float [ %7861, %7839 ], [ %7631, %7615 ]
  %7904 = phi float [ %7862, %7839 ], [ %7632, %7615 ]
  %7905 = phi float [ %7863, %7839 ], [ %7616, %7615 ]
  %7906 = phi float [ %7864, %7839 ], [ %7617, %7615 ]
  %7907 = phi float [ %7865, %7839 ], [ %7618, %7615 ]
  br i1 %7639, label %9060, label %7908

; <label>:7908                                    ; preds = %7897
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = extractvalue %dx.types.CBufRet.f32 %7909, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7909, 3
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 0
  %7916 = extractvalue %dx.types.CBufRet.f32 %7914, 1
  %7917 = extractvalue %dx.types.CBufRet.f32 %7914, 2
  %7918 = extractvalue %dx.types.CBufRet.f32 %7914, 3
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7922 = extractvalue %dx.types.CBufRet.f32 %7919, 2
  %7923 = extractvalue %dx.types.CBufRet.f32 %7919, 3
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 0
  %7926 = extractvalue %dx.types.CBufRet.f32 %7924, 1
  %7927 = extractvalue %dx.types.CBufRet.f32 %7924, 2
  %7928 = extractvalue %dx.types.CBufRet.f32 %7924, 3
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7932 = extractvalue %dx.types.CBufRet.f32 %7931, 3
  %7933 = extractvalue %dx.types.CBufRet.f32 %7931, 0
  %7934 = extractvalue %dx.types.CBufRet.f32 %7931, 1
  %7935 = extractvalue %dx.types.CBufRet.f32 %7931, 2
  %7936 = fcmp fast olt float %7935, -5.000000e-01
  %7937 = call float @dx.op.dot3.f32(i32 55, float %7898, float %7899, float %7900, float %7898, float %7899, float %7900)  ; Dot3(ax,ay,az,bx,by,bz)
  %7938 = call float @dx.op.unary.f32(i32 25, float %7937)  ; Rsqrt(value)
  %7939 = fmul fast float %7938, %7937
  %7940 = fmul fast float %7938, %7898
  %7941 = fmul fast float %7938, %7899
  %7942 = fmul fast float %7938, %7900
  %7943 = fadd fast float %7939, %7913
  %7944 = call float @dx.op.dot3.f32(i32 55, float %7940, float %7941, float %7942, float %7910, float %7911, float %7912)  ; Dot3(ax,ay,az,bx,by,bz)
  %7945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.i32 %7945, 1
  %7947 = and i32 %7946, 1
  %7948 = icmp ne i32 %7947, 0
  %7949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7950 = extractvalue %dx.types.CBufRet.f32 %7949, 2
  %7951 = fcmp fast ogt float %7950, 0.000000e+00
  %7952 = and i1 %7948, %7951
  br i1 %7952, label %7953, label %8359, !dx.controlflow.hints !123

; <label>:7953                                    ; preds = %7908
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 3
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 2
  %7958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7958, 2
  %7960 = fsub fast float %7957, %7959
  %7961 = and i32 %7946, 2
  %7962 = extractvalue %dx.types.CBufRet.i32 %7945, 0
  %7963 = call i32 @dx.op.binary.i32(i32 40, i32 %7962, i32 3)  ; UMin(a,b)
  %7964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.f32 %7964, 0
  %7966 = extractvalue %dx.types.CBufRet.f32 %7964, 1
  %7967 = extractvalue %dx.types.CBufRet.f32 %7958, 0
  %7968 = extractvalue %dx.types.CBufRet.f32 %7958, 1
  %7969 = fsub fast float %7965, %7967
  %7970 = fsub fast float %7966, %7968
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 0
  %7973 = fcmp fast ogt float %7972, 0.000000e+00
  %7974 = fsub fast float -0.000000e+00, %7969
  %7975 = fsub fast float -0.000000e+00, %7970
  %7976 = call float @dx.op.dot2.f32(i32 54, float %7940, float %7941, float %7940, float %7941)  ; Dot2(ax,ay,bx,by)
  %7977 = call float @dx.op.dot2.f32(i32 54, float %7940, float %7941, float %7974, float %7975)  ; Dot2(ax,ay,bx,by)
  %7978 = fmul fast float %7977, 2.000000e+00
  %7979 = call float @dx.op.dot2.f32(i32 54, float %7974, float %7975, float %7974, float %7975)  ; Dot2(ax,ay,bx,by)
  %7980 = fmul fast float %7972, %7972
  %7981 = fsub fast float %7979, %7980
  %7982 = fmul fast float %7978, %7978
  %7983 = fmul fast float %7976, 4.000000e+00
  %7984 = fmul fast float %7983, %7981
  %7985 = fsub fast float %7982, %7984
  %7986 = fcmp fast ogt float %7985, 0.000000e+00
  br i1 %7986, label %7987, label %8002

; <label>:7987                                    ; preds = %7953
  %7988 = fcmp fast ogt float %7978, 0.000000e+00
  %7989 = call float @dx.op.unary.f32(i32 24, float %7985)  ; Sqrt(value)
  %7990 = fsub fast float -0.000000e+00, %7989
  %7991 = select i1 %7988, float %7989, float %7990
  %7992 = fadd fast float %7991, %7978
  %7993 = fmul float %7992, -5.000000e-01
  %7994 = fdiv fast float %7993, %7976
  %7995 = call float @dx.op.binary.f32(i32 35, float %7994, float 0.000000e+00)  ; FMax(a,b)
  %7996 = call float @dx.op.binary.f32(i32 36, float %7939, float %7995)  ; FMin(a,b)
  %7997 = fdiv fast float %7981, %7993
  %7998 = call float @dx.op.binary.f32(i32 35, float %7997, float 0.000000e+00)  ; FMax(a,b)
  %7999 = call float @dx.op.binary.f32(i32 36, float %7939, float %7998)  ; FMin(a,b)
  %8000 = call float @dx.op.binary.f32(i32 36, float %7996, float %7999)  ; FMin(a,b)
  %8001 = call float @dx.op.binary.f32(i32 35, float %7996, float %7999)  ; FMax(a,b)
  br label %8002

; <label>:8002                                    ; preds = %7987, %7953
  %8003 = phi float [ %8001, %7987 ], [ -1.000000e+00, %7953 ]
  %8004 = phi float [ %8000, %7987 ], [ -1.000000e+00, %7953 ]
  %8005 = phi i1 [ true, %7987 ], [ false, %7953 ]
  %8006 = and i1 %7973, %8005
  br i1 %8006, label %8007, label %8009

; <label>:8007                                    ; preds = %8002
  %8008 = fcmp fast oeq float %8004, %8003
  br i1 %8008, label %8312, label %8010

; <label>:8009                                    ; preds = %8002
  br i1 %7973, label %8312, label %8010

; <label>:8010                                    ; preds = %8009, %8007
  %8011 = phi float [ %7939, %8009 ], [ %8003, %8007 ]
  %8012 = phi float [ 0.000000e+00, %8009 ], [ %8004, %8007 ]
  %8013 = icmp ne i32 %7961, 0
  %8014 = fmul fast float %8011, %7942
  %8015 = fadd fast float %8014, %7955
  %8016 = fmul fast float %8015, %8011
  %8017 = select i1 %8013, float 0.000000e+00, float %8016
  %8018 = fcmp fast oeq float %7942, 0.000000e+00
  %8019 = fdiv fast float %7960, %7942
  %8020 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8019)  ; FMax(a,b)
  %8021 = select i1 %8018, float %8011, float %8020
  %8022 = call float @dx.op.binary.f32(i32 36, float %8011, float %8021)  ; FMin(a,b)
  %8023 = fcmp fast ogt float %7942, 0.000000e+00
  %8024 = fcmp fast olt float %7960, 0.000000e+00
  br i1 %8023, label %8025, label %8082

; <label>:8025                                    ; preds = %8010
  %8026 = icmp eq i32 %7961, 0
  br i1 %8024, label %8027, label %8071

; <label>:8027                                    ; preds = %8025
  %8028 = select i1 %8026, float %8011, float 0.000000e+00
  %8029 = fsub fast float -0.000000e+00, %8028
  %8030 = call float @dx.op.unary.f32(i32 6, float %8029)  ; FAbs(value)
  %8031 = fmul fast float %8028, %7942
  %8032 = fadd fast float %8031, %7955
  %8033 = fmul fast float %8030, %8032
  %8034 = fsub fast float %8017, %8033
  %8035 = fsub fast float %8011, %8030
  %8036 = select i1 %8026, float %8035, float 0.000000e+00
  %8037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8038 = extractvalue %dx.types.CBufRet.f32 %8037, 0
  %8039 = extractvalue %dx.types.CBufRet.f32 %8037, 1
  %8040 = extractvalue %dx.types.CBufRet.f32 %8037, 2
  %8041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8042 = extractvalue %dx.types.CBufRet.f32 %8041, 0
  %8043 = extractvalue %dx.types.CBufRet.f32 %8041, 1
  %8044 = extractvalue %dx.types.CBufRet.f32 %8041, 2
  %8045 = extractvalue %dx.types.CBufRet.f32 %8041, 3
  %8046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8047 = extractvalue %dx.types.CBufRet.f32 %8046, 3
  %8048 = call float @dx.op.binary.f32(i32 36, float %8034, float %8047)  ; FMin(a,b)
  %8049 = fmul fast float %8045, %8036
  %8050 = call float @dx.op.unary.f32(i32 7, float %8049)  ; Saturate(value)
  %8051 = fsub fast float %8042, %8038
  %8052 = fsub fast float %8043, %8039
  %8053 = fsub fast float %8044, %8040
  %8054 = fmul fast float %8050, %8051
  %8055 = fmul fast float %8050, %8052
  %8056 = fmul fast float %8050, %8053
  %8057 = fadd fast float %8054, %8038
  %8058 = fadd fast float %8055, %8039
  %8059 = fadd fast float %8056, %8040
  %8060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8061 = extractvalue %dx.types.CBufRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.CBufRet.f32 %8060, 1
  %8063 = fadd fast float %8062, %8061
  %8064 = call float @dx.op.unary.f32(i32 7, float %8063)  ; Saturate(value)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8060, 2
  %8066 = extractvalue %dx.types.CBufRet.f32 %8060, 3
  %8067 = fadd fast float %8066, %8065
  %8068 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8069 = fmul fast float %8064, %8048
  %8070 = fmul fast float %8069, %8068
  br label %8312

; <label>:8071                                    ; preds = %8025
  br i1 %8026, label %8072, label %8093

; <label>:8072                                    ; preds = %8071
  %8073 = call float @dx.op.binary.f32(i32 36, float %8022, float %8012)  ; FMin(a,b)
  %8074 = fsub fast float %8022, %8073
  %8075 = fsub fast float %8074, %8011
  %8076 = call float @dx.op.unary.f32(i32 6, float %8075)  ; FAbs(value)
  %8077 = fadd fast float %8074, %8011
  %8078 = fmul fast float %8077, %7942
  %8079 = fadd fast float %8078, %7955
  %8080 = fmul fast float %8079, %8076
  %8081 = fsub fast float %8017, %8080
  br label %8093

; <label>:8082                                    ; preds = %8010
  br i1 %8024, label %8083, label %8093

; <label>:8083                                    ; preds = %8082
  %8084 = call float @dx.op.binary.f32(i32 35, float %8012, float %8022)  ; FMax(a,b)
  %8085 = icmp eq i32 %7961, 0
  %8086 = select i1 %8085, float %8022, float 0.000000e+00
  %8087 = fsub fast float -0.000000e+00, %8086
  %8088 = call float @dx.op.unary.f32(i32 6, float %8087)  ; FAbs(value)
  %8089 = fmul fast float %8086, %7942
  %8090 = fadd fast float %8089, %7955
  %8091 = fmul fast float %8088, %8090
  %8092 = fsub fast float %8017, %8091
  br label %8093

; <label>:8093                                    ; preds = %8083, %8082, %8072, %8071
  %8094 = phi float [ %8012, %8071 ], [ %8012, %8072 ], [ %8084, %8083 ], [ %8012, %8082 ]
  %8095 = phi float [ 0.000000e+00, %8071 ], [ %8076, %8072 ], [ %8088, %8083 ], [ 0.000000e+00, %8082 ]
  %8096 = phi float [ %8017, %8071 ], [ %8081, %8072 ], [ %8092, %8083 ], [ %8017, %8082 ]
  %8097 = phi float [ %8022, %8071 ], [ %8022, %8072 ], [ %8011, %8083 ], [ %8011, %8082 ]
  %8098 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8098, align 4, !tbaa !124, !noalias !126
  %8099 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8099, align 4, !tbaa !124, !noalias !126
  %8100 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8100, align 4, !tbaa !124, !noalias !126
  %8101 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %8101, align 4, !tbaa !124, !noalias !126
  %8102 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %8102, align 4, !tbaa !124, !noalias !126
  %8103 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %8103, align 4, !tbaa !124, !noalias !126
  %8104 = icmp sgt i32 %7963, 0
  br i1 %8104, label %8105, label %8166

; <label>:8105                                    ; preds = %8093
  br label %8106

; <label>:8106                                    ; preds = %8155, %8105
  %8107 = phi i32 [ %8156, %8155 ], [ 0, %8105 ]
  %8108 = phi i32 [ %8157, %8155 ], [ 0, %8105 ]
  %8109 = add nuw i32 %8108, 171
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8109)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8113, 1
  %8116 = fsub fast float %8111, %8114
  %8117 = fsub fast float %8112, %8115
  %8118 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %8119 = fsub fast float -0.000000e+00, %8116
  %8120 = fsub fast float -0.000000e+00, %8117
  %8121 = call float @dx.op.dot2.f32(i32 54, float %7940, float %7941, float %8119, float %8120)  ; Dot2(ax,ay,bx,by)
  %8122 = fmul fast float %8121, 2.000000e+00
  %8123 = call float @dx.op.dot2.f32(i32 54, float %8119, float %8120, float %8119, float %8120)  ; Dot2(ax,ay,bx,by)
  %8124 = fmul fast float %8118, %8118
  %8125 = fsub fast float %8123, %8124
  %8126 = fmul fast float %8122, %8122
  %8127 = fmul fast float %7983, %8125
  %8128 = fsub fast float %8126, %8127
  %8129 = fcmp fast ogt float %8128, 0.000000e+00
  br i1 %8129, label %8130, label %8145

; <label>:8130                                    ; preds = %8106
  %8131 = fcmp fast ogt float %8122, 0.000000e+00
  %8132 = call float @dx.op.unary.f32(i32 24, float %8128)  ; Sqrt(value)
  %8133 = fsub fast float -0.000000e+00, %8132
  %8134 = select i1 %8131, float %8132, float %8133
  %8135 = fadd fast float %8134, %8122
  %8136 = fmul float %8135, -5.000000e-01
  %8137 = fdiv fast float %8136, %7976
  %8138 = call float @dx.op.binary.f32(i32 35, float %8137, float 0.000000e+00)  ; FMax(a,b)
  %8139 = call float @dx.op.binary.f32(i32 36, float %8011, float %8138)  ; FMin(a,b)
  %8140 = fdiv fast float %8125, %8136
  %8141 = call float @dx.op.binary.f32(i32 35, float %8140, float 0.000000e+00)  ; FMax(a,b)
  %8142 = call float @dx.op.binary.f32(i32 36, float %8011, float %8141)  ; FMin(a,b)
  %8143 = call float @dx.op.binary.f32(i32 36, float %8139, float %8142)  ; FMin(a,b)
  %8144 = call float @dx.op.binary.f32(i32 35, float %8139, float %8142)  ; FMax(a,b)
  br label %8145

; <label>:8145                                    ; preds = %8130, %8106
  %8146 = phi float [ %8144, %8130 ], [ -1.000000e+00, %8106 ]
  %8147 = phi float [ %8143, %8130 ], [ -1.000000e+00, %8106 ]
  %8148 = phi i1 [ true, %8130 ], [ false, %8106 ]
  br i1 %8148, label %8149, label %8155

; <label>:8149                                    ; preds = %8145
  %8150 = call float @dx.op.binary.f32(i32 35, float %8094, float %8147)  ; FMax(a,b)
  %8151 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8108
  store float %8150, float* %8151, align 4, !tbaa !124, !noalias !126
  %8152 = call float @dx.op.binary.f32(i32 35, float %8094, float %8146)  ; FMax(a,b)
  %8153 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8108
  store float %8152, float* %8153, align 4, !tbaa !124, !noalias !126
  %8154 = add nsw i32 %8107, 1
  br label %8155

; <label>:8155                                    ; preds = %8149, %8145
  %8156 = phi i32 [ %8154, %8149 ], [ %8107, %8145 ]
  %8157 = add nuw nsw i32 %8108, 1
  %8158 = icmp eq i32 %8157, %7963
  br i1 %8158, label %8159, label %8106

; <label>:8159                                    ; preds = %8155
  %8160 = load float, float* %8100, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %8161 = load float, float* %8099, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %8162 = load float, float* %8098, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %8163 = load float, float* %8103, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %8164 = load float, float* %8102, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %8165 = load float, float* %8101, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %8166

; <label>:8166                                    ; preds = %8159, %8093
  %8167 = phi float [ -1.000000e+00, %8093 ], [ %8165, %8159 ]
  %8168 = phi float [ -1.000000e+00, %8093 ], [ %8164, %8159 ]
  %8169 = phi float [ -1.000000e+00, %8093 ], [ %8163, %8159 ]
  %8170 = phi float [ -1.000000e+00, %8093 ], [ %8162, %8159 ]
  %8171 = phi float [ -1.000000e+00, %8093 ], [ %8161, %8159 ]
  %8172 = phi float [ -1.000000e+00, %8093 ], [ %8160, %8159 ]
  %8173 = phi i32 [ 0, %8093 ], [ %8156, %8159 ]
  %8174 = call float @dx.op.binary.f32(i32 36, float %8171, float %8172)  ; FMin(a,b)
  %8175 = call float @dx.op.binary.f32(i32 36, float %8170, float %8174)  ; FMin(a,b)
  %8176 = call float @dx.op.binary.f32(i32 35, float %8170, float %8171)  ; FMax(a,b)
  %8177 = call float @dx.op.binary.f32(i32 36, float %8176, float %8172)  ; FMin(a,b)
  %8178 = call float @dx.op.binary.f32(i32 36, float %8170, float %8171)  ; FMin(a,b)
  %8179 = call float @dx.op.binary.f32(i32 35, float %8178, float %8177)  ; FMax(a,b)
  %8180 = call float @dx.op.binary.f32(i32 35, float %8171, float %8172)  ; FMax(a,b)
  %8181 = call float @dx.op.binary.f32(i32 35, float %8170, float %8180)  ; FMax(a,b)
  store float %8175, float* %8098, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %8179, float* %8099, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %8181, float* %8100, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %8182 = call float @dx.op.binary.f32(i32 36, float %8168, float %8169)  ; FMin(a,b)
  %8183 = call float @dx.op.binary.f32(i32 36, float %8167, float %8182)  ; FMin(a,b)
  %8184 = call float @dx.op.binary.f32(i32 35, float %8167, float %8168)  ; FMax(a,b)
  %8185 = call float @dx.op.binary.f32(i32 36, float %8184, float %8169)  ; FMin(a,b)
  %8186 = call float @dx.op.binary.f32(i32 36, float %8167, float %8168)  ; FMin(a,b)
  %8187 = call float @dx.op.binary.f32(i32 35, float %8186, float %8185)  ; FMax(a,b)
  %8188 = call float @dx.op.binary.f32(i32 35, float %8168, float %8169)  ; FMax(a,b)
  %8189 = call float @dx.op.binary.f32(i32 35, float %8167, float %8188)  ; FMax(a,b)
  store float %8183, float* %8101, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %8187, float* %8102, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %8189, float* %8103, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %8190 = sub nsw i32 3, %8173
  %8191 = icmp sgt i32 %8190, 2
  br i1 %8191, label %8192, label %8230

; <label>:8192                                    ; preds = %8166
  %8193 = icmp eq i32 %7961, 0
  %8194 = fsub fast float %8011, %8095
  %8195 = select i1 %8193, float %8194, float %8095
  %8196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.f32 %8196, 0
  %8198 = extractvalue %dx.types.CBufRet.f32 %8196, 1
  %8199 = extractvalue %dx.types.CBufRet.f32 %8196, 2
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 0
  %8202 = extractvalue %dx.types.CBufRet.f32 %8200, 1
  %8203 = extractvalue %dx.types.CBufRet.f32 %8200, 2
  %8204 = extractvalue %dx.types.CBufRet.f32 %8200, 3
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 3
  %8207 = call float @dx.op.binary.f32(i32 36, float %8096, float %8206)  ; FMin(a,b)
  %8208 = fmul fast float %8204, %8195
  %8209 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8210 = fsub fast float %8201, %8197
  %8211 = fsub fast float %8202, %8198
  %8212 = fsub fast float %8203, %8199
  %8213 = fmul fast float %8209, %8210
  %8214 = fmul fast float %8209, %8211
  %8215 = fmul fast float %8209, %8212
  %8216 = fadd fast float %8213, %8197
  %8217 = fadd fast float %8214, %8198
  %8218 = fadd fast float %8215, %8199
  %8219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8219, 0
  %8221 = extractvalue %dx.types.CBufRet.f32 %8219, 1
  %8222 = fadd fast float %8221, %8220
  %8223 = call float @dx.op.unary.f32(i32 7, float %8222)  ; Saturate(value)
  %8224 = extractvalue %dx.types.CBufRet.f32 %8219, 2
  %8225 = extractvalue %dx.types.CBufRet.f32 %8219, 3
  %8226 = fadd fast float %8225, %8224
  %8227 = call float @dx.op.unary.f32(i32 7, float %8226)  ; Saturate(value)
  %8228 = fmul fast float %8223, %8207
  %8229 = fmul fast float %8228, %8227
  br label %8312

; <label>:8230                                    ; preds = %8166
  %8231 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8190
  %8232 = load float, float* %8231, align 4, !tbaa !124, !noalias !126
  %8233 = fcmp fast olt float %8232, %8097
  %8234 = icmp sgt i32 %8173, 0
  %8235 = and i1 %8234, %8233
  br i1 %8235, label %8236, label %8273

; <label>:8236                                    ; preds = %8230
  br label %8237

; <label>:8237                                    ; preds = %8266, %8236
  %8238 = phi float [ %8267, %8266 ], [ %8095, %8236 ]
  %8239 = phi float [ %8268, %8266 ], [ %8096, %8236 ]
  %8240 = phi float [ %8248, %8266 ], [ %8232, %8236 ]
  %8241 = phi i32 [ %8245, %8266 ], [ %8190, %8236 ]
  %8242 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8241
  %8243 = load float, float* %8242, align 4, !tbaa !124, !noalias !126
  %8244 = icmp slt i32 %8241, 2
  %8245 = add nsw i32 %8241, 1
  %8246 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8245
  %8247 = load float, float* %8246, align 4, !tbaa !124, !noalias !126
  %8248 = select i1 %8244, float %8247, float %8011
  %8249 = call float @dx.op.binary.f32(i32 36, float %8248, float %8243)  ; FMin(a,b)
  %8250 = call float @dx.op.binary.f32(i32 36, float %8097, float %8249)  ; FMin(a,b)
  %8251 = icmp eq i32 %7961, 0
  %8252 = fadd fast float %8250, %8240
  %8253 = fmul fast float %8252, %7942
  %8254 = fadd fast float %8253, %7955
  br i1 %8251, label %8260, label %8255

; <label>:8255                                    ; preds = %8237
  %8256 = fsub fast float %8250, %8240
  %8257 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8256)  ; FMax(a,b)
  %8258 = fmul fast float %8257, %8254
  %8259 = fadd fast float %8258, %8239
  br label %8266

; <label>:8260                                    ; preds = %8237
  %8261 = fsub fast float %8240, %8250
  %8262 = call float @dx.op.unary.f32(i32 6, float %8261)  ; FAbs(value)
  %8263 = fadd fast float %8262, %8238
  %8264 = fmul fast float %8262, %8254
  %8265 = fsub fast float %8239, %8264
  br label %8266

; <label>:8266                                    ; preds = %8260, %8255
  %8267 = phi float [ %8257, %8255 ], [ %8263, %8260 ]
  %8268 = phi float [ %8259, %8255 ], [ %8265, %8260 ]
  %8269 = fcmp fast olt float %8248, %8097
  %8270 = icmp slt i32 %8245, 3
  %8271 = and i1 %8270, %8269
  br i1 %8271, label %8237, label %8272

; <label>:8272                                    ; preds = %8266
  br label %8273

; <label>:8273                                    ; preds = %8272, %8230
  %8274 = phi float [ %8095, %8230 ], [ %8267, %8272 ]
  %8275 = phi float [ %8096, %8230 ], [ %8268, %8272 ]
  %8276 = fsub fast float %8011, %8274
  %8277 = select i1 %8013, float %8274, float %8276
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.CBufRet.f32 %8278, 1
  %8281 = extractvalue %dx.types.CBufRet.f32 %8278, 2
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8284 = extractvalue %dx.types.CBufRet.f32 %8282, 1
  %8285 = extractvalue %dx.types.CBufRet.f32 %8282, 2
  %8286 = extractvalue %dx.types.CBufRet.f32 %8282, 3
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 3
  %8289 = call float @dx.op.binary.f32(i32 36, float %8275, float %8288)  ; FMin(a,b)
  %8290 = fmul fast float %8286, %8277
  %8291 = call float @dx.op.unary.f32(i32 7, float %8290)  ; Saturate(value)
  %8292 = fsub fast float %8283, %8279
  %8293 = fsub fast float %8284, %8280
  %8294 = fsub fast float %8285, %8281
  %8295 = fmul fast float %8291, %8292
  %8296 = fmul fast float %8291, %8293
  %8297 = fmul fast float %8291, %8294
  %8298 = fadd fast float %8295, %8279
  %8299 = fadd fast float %8296, %8280
  %8300 = fadd fast float %8297, %8281
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 0
  %8303 = extractvalue %dx.types.CBufRet.f32 %8301, 1
  %8304 = fadd fast float %8303, %8302
  %8305 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8301, 2
  %8307 = extractvalue %dx.types.CBufRet.f32 %8301, 3
  %8308 = fadd fast float %8307, %8306
  %8309 = call float @dx.op.unary.f32(i32 7, float %8308)  ; Saturate(value)
  %8310 = fmul fast float %8305, %8289
  %8311 = fmul fast float %8310, %8309
  br label %8312

; <label>:8312                                    ; preds = %8273, %8192, %8027, %8009, %8007
  %8313 = phi float [ %8036, %8027 ], [ %8195, %8192 ], [ %8277, %8273 ], [ 0.000000e+00, %8007 ], [ 0.000000e+00, %8009 ]
  %8314 = phi float [ %8070, %8027 ], [ %8229, %8192 ], [ %8311, %8273 ], [ 0.000000e+00, %8007 ], [ 0.000000e+00, %8009 ]
  %8315 = phi float [ %8057, %8027 ], [ %8216, %8192 ], [ %8298, %8273 ], [ 0.000000e+00, %8007 ], [ 0.000000e+00, %8009 ]
  %8316 = phi float [ %8058, %8027 ], [ %8217, %8192 ], [ %8299, %8273 ], [ 0.000000e+00, %8007 ], [ 0.000000e+00, %8009 ]
  %8317 = phi float [ %8059, %8027 ], [ %8218, %8192 ], [ %8300, %8273 ], [ 0.000000e+00, %8007 ], [ 0.000000e+00, %8009 ]
  %8318 = fmul fast float %7950, %8314
  %8319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8320 = extractvalue %dx.types.CBufRet.f32 %8319, 2
  %8321 = fsub fast float %7957, %8320
  %8322 = fcmp fast olt float %8318, -2.000000e+01
  %8323 = call float @dx.op.unary.f32(i32 21, float %8318)  ; Exp(value)
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 2
  %8326 = extractvalue %dx.types.CBufRet.f32 %8324, 3
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 2
  %8329 = fmul fast float %8326, %8321
  %8330 = call float @dx.op.unary.f32(i32 7, float %8329)  ; Saturate(value)
  %8331 = fsub fast float 1.000000e+00, %8330
  %8332 = fmul fast float %7942, 5.000000e-01
  %8333 = fadd fast float %8332, 5.000000e-01
  %8334 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8335 = fsub fast float 1.000000e+00, %8334
  %8336 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8331)  ; FMax(a,b)
  %8337 = fdiv fast float %8335, %8336
  %8338 = fsub fast float %8321, %7900
  %8339 = call float @dx.op.unary.f32(i32 6, float %8338)  ; FAbs(value)
  %8340 = fmul fast float %8339, %8325
  %8341 = call float @dx.op.unary.f32(i32 7, float %8337)  ; Saturate(value)
  %8342 = fsub fast float 1.000000e+00, %8340
  %8343 = fmul fast float %8342, %8341
  %8344 = fadd fast float %8343, %8340
  %8345 = fmul fast float %8328, %8321
  %8346 = call float @dx.op.unary.f32(i32 7, float %8345)  ; Saturate(value)
  %8347 = fsub fast float 1.000000e+00, %8344
  %8348 = fmul fast float %8347, %8346
  %8349 = fadd fast float %8348, %8344
  %8350 = call float @dx.op.unary.f32(i32 7, float %8349)  ; Saturate(value)
  %8351 = fadd fast float %8323, -1.000000e+00
  %8352 = select i1 %8322, float -1.000000e+00, float %8351
  %8353 = fmul fast float %8350, %8352
  %8354 = fadd fast float %8353, 1.000000e+00
  %8355 = fsub fast float -0.000000e+00, %8353
  %8356 = fmul fast float %8315, %8355
  %8357 = fmul fast float %8316, %8355
  %8358 = fmul fast float %8317, %8355
  br label %8359

; <label>:8359                                    ; preds = %8312, %7908
  %8360 = phi float [ %8313, %8312 ], [ 0.000000e+00, %7908 ]
  %8361 = phi float [ %8354, %8312 ], [ 1.000000e+00, %7908 ]
  %8362 = phi float [ %8356, %8312 ], [ 0.000000e+00, %7908 ]
  %8363 = phi float [ %8357, %8312 ], [ 0.000000e+00, %7908 ]
  %8364 = phi float [ %8358, %8312 ], [ 0.000000e+00, %7908 ]
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 1
  %8367 = fsub fast float 1.000000e+00, %8361
  %8368 = fmul fast float %8367, %7943
  %8369 = fmul fast float %8368, %8366
  %8370 = fsub fast float %7943, %8369
  br i1 %7936, label %8371, label %8400, !dx.controlflow.hints !162

; <label>:8371                                    ; preds = %8359
  %8372 = fmul fast float %7944, %7933
  %8373 = fadd fast float %8372, %7934
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = fmul fast float %7915, %8370
  %8376 = fsub fast float -0.000000e+00, %8375
  %8377 = fmul fast float %7916, %8370
  %8378 = fsub fast float -0.000000e+00, %8377
  %8379 = call float @dx.op.unary.f32(i32 21, float %8376)  ; Exp(value)
  %8380 = call float @dx.op.unary.f32(i32 21, float %8378)  ; Exp(value)
  %8381 = call float @dx.op.binary.f32(i32 35, float %7923, float %8379)  ; FMax(a,b)
  %8382 = call float @dx.op.binary.f32(i32 35, float %7923, float %8380)  ; FMax(a,b)
  %8383 = fsub fast float %8382, %8381
  %8384 = fmul fast float %8383, %8374
  %8385 = fadd fast float %8384, %8381
  %8386 = call float @dx.op.unary.f32(i32 7, float %8385)  ; Saturate(value)
  %8387 = fsub fast float %7920, %7925
  %8388 = fsub fast float %7921, %7926
  %8389 = fsub fast float %7922, %7927
  %8390 = fmul fast float %8374, %8387
  %8391 = fmul fast float %8374, %8388
  %8392 = fmul fast float %8374, %8389
  %8393 = fadd fast float %8390, %7925
  %8394 = fadd fast float %8391, %7926
  %8395 = fadd fast float %8392, %7927
  %8396 = fsub fast float 1.000000e+00, %8386
  %8397 = fmul fast float %8396, %8393
  %8398 = fmul fast float %8396, %8394
  %8399 = fmul fast float %8396, %8395
  br label %8459

; <label>:8400                                    ; preds = %8359
  %8401 = fmul fast float %8370, %7932
  %8402 = call float @dx.op.unary.f32(i32 7, float %8401)  ; Saturate(value)
  %8403 = fsub fast float 2.000000e+00, %8402
  %8404 = fmul fast float %8402, 9.921875e-01
  %8405 = fmul fast float %8404, %8403
  %8406 = fadd fast float %8405, 3.906250e-03
  %8407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %8406, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = fsub fast float %8402, %8408
  %8410 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8409)  ; FMax(a,b)
  %8411 = fmul fast float %7918, %7900
  %8412 = call float @dx.op.unary.f32(i32 6, float %8411)  ; FAbs(value)
  %8413 = fcmp fast ogt float %8412, 0x3EB0C6F7A0000000
  br i1 %8413, label %8414, label %8420, !dx.controlflow.hints !163

; <label>:8414                                    ; preds = %8400
  %8415 = fmul fast float %8411, 0xBFF7154760000000
  %8416 = call float @dx.op.unary.f32(i32 21, float %8415)  ; Exp(value)
  %8417 = fsub fast float 1.000000e+00, %8416
  %8418 = fdiv fast float %8417, %8411
  %8419 = fmul fast float %8418, %7928
  br label %8420

; <label>:8420                                    ; preds = %8414, %8400
  %8421 = phi float [ %8419, %8414 ], [ %7928, %8400 ]
  %8422 = fadd fast float %8421, %7930
  %8423 = fmul fast float %8422, %8410
  %8424 = fmul fast float %7915, %8423
  %8425 = fsub fast float -0.000000e+00, %8424
  %8426 = fmul fast float %7916, %8423
  %8427 = fsub fast float -0.000000e+00, %8426
  %8428 = fmul fast float %7917, %8423
  %8429 = fsub fast float -0.000000e+00, %8428
  %8430 = call float @dx.op.unary.f32(i32 21, float %8425)  ; Exp(value)
  %8431 = call float @dx.op.unary.f32(i32 21, float %8427)  ; Exp(value)
  %8432 = call float @dx.op.unary.f32(i32 21, float %8429)  ; Exp(value)
  %8433 = fmul fast float %7944, %7944
  %8434 = fadd fast float %8433, 1.000000e+00
  %8435 = fmul fast float %8434, 0x3FAE8EC8A0000000
  %8436 = fmul fast float %8435, %7925
  %8437 = fmul fast float %8435, %7926
  %8438 = fmul fast float %8435, %7927
  %8439 = fmul fast float %7944, %7923
  %8440 = fsub fast float 1.000000e+00, %8439
  %8441 = fmul fast float %7923, %7923
  %8442 = fsub fast float 1.000000e+00, %8441
  %8443 = fmul fast float %8442, 0x3FB45F3060000000
  %8444 = fmul fast float %8440, %8440
  %8445 = fdiv fast float 1.000000e+00, %8444
  %8446 = fmul fast float %8443, %8445
  %8447 = fmul fast float %8446, %7920
  %8448 = fmul fast float %8446, %7921
  %8449 = fmul fast float %8446, %7922
  %8450 = fadd fast float %8447, %8436
  %8451 = fadd fast float %8448, %8437
  %8452 = fadd fast float %8449, %8438
  %8453 = fsub fast float 1.000000e+00, %8430
  %8454 = fsub fast float 1.000000e+00, %8431
  %8455 = fsub fast float 1.000000e+00, %8432
  %8456 = fmul fast float %8450, %8453
  %8457 = fmul fast float %8451, %8454
  %8458 = fmul fast float %8452, %8455
  br label %8459

; <label>:8459                                    ; preds = %8420, %8371
  %8460 = phi float [ %8397, %8371 ], [ %8456, %8420 ]
  %8461 = phi float [ %8398, %8371 ], [ %8457, %8420 ]
  %8462 = phi float [ %8399, %8371 ], [ %8458, %8420 ]
  %8463 = phi float [ %8386, %8371 ], [ %8430, %8420 ]
  %8464 = phi float [ %8386, %8371 ], [ %8431, %8420 ]
  %8465 = phi float [ %8386, %8371 ], [ %8432, %8420 ]
  br i1 %7952, label %8466, label %8664, !dx.controlflow.hints !164

; <label>:8466                                    ; preds = %8459
  %8467 = extractvalue %dx.types.CBufRet.f32 %8365, 0
  %8468 = fmul fast float %8467, %8367
  %8469 = fsub fast float %8362, %8460
  %8470 = fsub fast float %8363, %8461
  %8471 = fsub fast float %8364, %8462
  %8472 = fmul fast float %8468, %8469
  %8473 = fmul fast float %8468, %8470
  %8474 = fmul fast float %8468, %8471
  %8475 = fadd fast float %8472, %8460
  %8476 = fadd fast float %8473, %8461
  %8477 = fadd fast float %8474, %8462
  %8478 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8463)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8464)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8465)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8361)  ; FMax(a,b)
  %8482 = call float @dx.op.binary.f32(i32 35, float %8360, float %8370)  ; FMax(a,b)
  %8483 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8482)  ; FMax(a,b)
  %8484 = fdiv fast float %8360, %8483
  %8485 = call float @dx.op.unary.f32(i32 7, float %8484)  ; Saturate(value)
  %8486 = fdiv fast float %8370, %8483
  %8487 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8488 = fcmp fast une float %8481, 1.000000e+00
  br i1 %8488, label %8489, label %8502, !dx.controlflow.hints !165

; <label>:8489                                    ; preds = %8466
  %8490 = call float @dx.op.unary.f32(i32 23, float %8481)  ; Log(value)
  %8491 = fmul fast float %8490, 0x3FE62E4300000000
  %8492 = fmul fast float %8362, %8491
  %8493 = fsub fast float -0.000000e+00, %8492
  %8494 = fmul fast float %8363, %8491
  %8495 = fsub fast float -0.000000e+00, %8494
  %8496 = fmul fast float %8364, %8491
  %8497 = fsub fast float -0.000000e+00, %8496
  %8498 = fsub fast float 1.000000e+00, %8481
  %8499 = fdiv fast float %8493, %8498
  %8500 = fdiv fast float %8495, %8498
  %8501 = fdiv fast float %8497, %8498
  br label %8502

; <label>:8502                                    ; preds = %8489, %8466
  %8503 = phi float [ %8499, %8489 ], [ %8362, %8466 ]
  %8504 = phi float [ %8500, %8489 ], [ %8363, %8466 ]
  %8505 = phi float [ %8501, %8489 ], [ %8364, %8466 ]
  %8506 = phi float [ %8491, %8489 ], [ 0.000000e+00, %8466 ]
  %8507 = fcmp fast une float %8478, 1.000000e+00
  br i1 %8507, label %8508, label %8515, !dx.controlflow.hints !166

; <label>:8508                                    ; preds = %8502
  %8509 = call float @dx.op.unary.f32(i32 23, float %8478)  ; Log(value)
  %8510 = fmul fast float %8509, 0x3FE62E4300000000
  %8511 = fmul fast float %8475, %8510
  %8512 = fsub fast float -0.000000e+00, %8511
  %8513 = fsub fast float 1.000000e+00, %8478
  %8514 = fdiv fast float %8512, %8513
  br label %8515

; <label>:8515                                    ; preds = %8508, %8502
  %8516 = phi float [ %8514, %8508 ], [ %8475, %8502 ]
  %8517 = phi float [ %8510, %8508 ], [ 0.000000e+00, %8502 ]
  %8518 = fcmp fast une float %8479, 1.000000e+00
  br i1 %8518, label %8519, label %8526, !dx.controlflow.hints !166

; <label>:8519                                    ; preds = %8515
  %8520 = call float @dx.op.unary.f32(i32 23, float %8479)  ; Log(value)
  %8521 = fmul fast float %8520, 0x3FE62E4300000000
  %8522 = fmul fast float %8476, %8521
  %8523 = fsub fast float -0.000000e+00, %8522
  %8524 = fsub fast float 1.000000e+00, %8479
  %8525 = fdiv fast float %8523, %8524
  br label %8526

; <label>:8526                                    ; preds = %8519, %8515
  %8527 = phi float [ %8525, %8519 ], [ %8476, %8515 ]
  %8528 = phi float [ %8521, %8519 ], [ 0.000000e+00, %8515 ]
  %8529 = fcmp fast une float %8480, 1.000000e+00
  br i1 %8529, label %8530, label %8537, !dx.controlflow.hints !166

; <label>:8530                                    ; preds = %8526
  %8531 = call float @dx.op.unary.f32(i32 23, float %8480)  ; Log(value)
  %8532 = fmul fast float %8531, 0x3FE62E4300000000
  %8533 = fmul fast float %8477, %8532
  %8534 = fsub fast float -0.000000e+00, %8533
  %8535 = fsub fast float 1.000000e+00, %8480
  %8536 = fdiv fast float %8534, %8535
  br label %8537

; <label>:8537                                    ; preds = %8530, %8526
  %8538 = phi float [ %8536, %8530 ], [ %8477, %8526 ]
  %8539 = phi float [ %8532, %8530 ], [ 0.000000e+00, %8526 ]
  %8540 = fmul fast float %8503, %8487
  %8541 = fmul fast float %8504, %8487
  %8542 = fmul fast float %8505, %8487
  %8543 = fmul fast float %8506, %8487
  %8544 = fmul fast float %8516, %8485
  %8545 = fmul fast float %8527, %8485
  %8546 = fmul fast float %8538, %8485
  %8547 = fmul fast float %8517, %8485
  %8548 = fmul fast float %8528, %8485
  %8549 = fmul fast float %8539, %8485
  %8550 = fadd fast float %8544, %8540
  %8551 = fadd fast float %8545, %8541
  %8552 = fadd fast float %8546, %8542
  %8553 = fadd fast float %8547, %8543
  %8554 = fadd fast float %8548, %8543
  %8555 = fadd fast float %8549, %8543
  %8556 = fcmp fast une float %8553, 0.000000e+00
  br i1 %8556, label %8557, label %8564, !dx.controlflow.hints !167

; <label>:8557                                    ; preds = %8537
  %8558 = fmul fast float %8553, 0x3FF7154760000000
  %8559 = call float @dx.op.unary.f32(i32 21, float %8558)  ; Exp(value)
  %8560 = fsub fast float 1.000000e+00, %8559
  %8561 = fmul fast float %8550, %8560
  %8562 = fsub fast float -0.000000e+00, %8561
  %8563 = fdiv fast float %8562, %8553
  br label %8564

; <label>:8564                                    ; preds = %8557, %8537
  %8565 = phi float [ %8559, %8557 ], [ 1.000000e+00, %8537 ]
  %8566 = phi float [ %8563, %8557 ], [ %8550, %8537 ]
  %8567 = fcmp fast une float %8554, 0.000000e+00
  br i1 %8567, label %8568, label %8575, !dx.controlflow.hints !167

; <label>:8568                                    ; preds = %8564
  %8569 = fmul fast float %8554, 0x3FF7154760000000
  %8570 = call float @dx.op.unary.f32(i32 21, float %8569)  ; Exp(value)
  %8571 = fsub fast float 1.000000e+00, %8570
  %8572 = fmul fast float %8551, %8571
  %8573 = fsub fast float -0.000000e+00, %8572
  %8574 = fdiv fast float %8573, %8554
  br label %8575

; <label>:8575                                    ; preds = %8568, %8564
  %8576 = phi float [ %8570, %8568 ], [ 1.000000e+00, %8564 ]
  %8577 = phi float [ %8574, %8568 ], [ %8551, %8564 ]
  %8578 = fcmp fast une float %8555, 0.000000e+00
  br i1 %8578, label %8579, label %8586, !dx.controlflow.hints !167

; <label>:8579                                    ; preds = %8575
  %8580 = fmul fast float %8555, 0x3FF7154760000000
  %8581 = call float @dx.op.unary.f32(i32 21, float %8580)  ; Exp(value)
  %8582 = fsub fast float 1.000000e+00, %8581
  %8583 = fmul fast float %8552, %8582
  %8584 = fsub fast float -0.000000e+00, %8583
  %8585 = fdiv fast float %8584, %8555
  br label %8586

; <label>:8586                                    ; preds = %8579, %8575
  %8587 = phi float [ %8581, %8579 ], [ 1.000000e+00, %8575 ]
  %8588 = phi float [ %8585, %8579 ], [ %8552, %8575 ]
  %8589 = fcmp fast ogt float %8485, %8487
  br i1 %8589, label %8590, label %8610

; <label>:8590                                    ; preds = %8586
  %8591 = fsub fast float 1.000000e+00, %8487
  %8592 = fmul fast float %8503, %8591
  %8593 = fmul fast float %8504, %8591
  %8594 = fmul fast float %8505, %8591
  %8595 = fmul fast float %8506, %8591
  %8596 = fcmp fast une float %8595, 0.000000e+00
  br i1 %8596, label %8597, label %8648, !dx.controlflow.hints !168

; <label>:8597                                    ; preds = %8590
  %8598 = fmul fast float %8595, 0x3FF7154760000000
  %8599 = call float @dx.op.unary.f32(i32 21, float %8598)  ; Exp(value)
  %8600 = fsub fast float 1.000000e+00, %8599
  %8601 = fmul fast float %8592, %8600
  %8602 = fsub fast float -0.000000e+00, %8601
  %8603 = fmul fast float %8593, %8600
  %8604 = fsub fast float -0.000000e+00, %8603
  %8605 = fmul fast float %8594, %8600
  %8606 = fsub fast float -0.000000e+00, %8605
  %8607 = fdiv fast float %8602, %8595
  %8608 = fdiv fast float %8604, %8595
  %8609 = fdiv fast float %8606, %8595
  br label %8648

; <label>:8610                                    ; preds = %8586
  %8611 = fsub fast float 1.000000e+00, %8485
  %8612 = fmul fast float %8516, %8611
  %8613 = fmul fast float %8527, %8611
  %8614 = fmul fast float %8538, %8611
  %8615 = fmul fast float %8517, %8611
  %8616 = fmul fast float %8528, %8611
  %8617 = fmul fast float %8539, %8611
  %8618 = fcmp fast une float %8615, 0.000000e+00
  br i1 %8618, label %8619, label %8626, !dx.controlflow.hints !167

; <label>:8619                                    ; preds = %8610
  %8620 = fmul fast float %8615, 0x3FF7154760000000
  %8621 = call float @dx.op.unary.f32(i32 21, float %8620)  ; Exp(value)
  %8622 = fsub fast float 1.000000e+00, %8621
  %8623 = fmul fast float %8612, %8622
  %8624 = fsub fast float -0.000000e+00, %8623
  %8625 = fdiv fast float %8624, %8615
  br label %8626

; <label>:8626                                    ; preds = %8619, %8610
  %8627 = phi float [ %8625, %8619 ], [ %8612, %8610 ]
  %8628 = phi float [ %8621, %8619 ], [ 1.000000e+00, %8610 ]
  %8629 = fcmp fast une float %8616, 0.000000e+00
  br i1 %8629, label %8630, label %8637, !dx.controlflow.hints !167

; <label>:8630                                    ; preds = %8626
  %8631 = fmul fast float %8616, 0x3FF7154760000000
  %8632 = call float @dx.op.unary.f32(i32 21, float %8631)  ; Exp(value)
  %8633 = fsub fast float 1.000000e+00, %8632
  %8634 = fmul fast float %8613, %8633
  %8635 = fsub fast float -0.000000e+00, %8634
  %8636 = fdiv fast float %8635, %8616
  br label %8637

; <label>:8637                                    ; preds = %8630, %8626
  %8638 = phi float [ %8636, %8630 ], [ %8613, %8626 ]
  %8639 = phi float [ %8632, %8630 ], [ 1.000000e+00, %8626 ]
  %8640 = fcmp fast une float %8617, 0.000000e+00
  br i1 %8640, label %8641, label %8648, !dx.controlflow.hints !167

; <label>:8641                                    ; preds = %8637
  %8642 = fmul fast float %8617, 0x3FF7154760000000
  %8643 = call float @dx.op.unary.f32(i32 21, float %8642)  ; Exp(value)
  %8644 = fsub fast float 1.000000e+00, %8643
  %8645 = fmul fast float %8614, %8644
  %8646 = fsub fast float -0.000000e+00, %8645
  %8647 = fdiv fast float %8646, %8617
  br label %8648

; <label>:8648                                    ; preds = %8641, %8637, %8597, %8590
  %8649 = phi float [ %8647, %8641 ], [ %8609, %8597 ], [ %8594, %8590 ], [ %8614, %8637 ]
  %8650 = phi float [ %8638, %8641 ], [ %8608, %8597 ], [ %8593, %8590 ], [ %8638, %8637 ]
  %8651 = phi float [ %8627, %8641 ], [ %8607, %8597 ], [ %8592, %8590 ], [ %8627, %8637 ]
  %8652 = phi float [ %8643, %8641 ], [ %8599, %8597 ], [ 1.000000e+00, %8590 ], [ 1.000000e+00, %8637 ]
  %8653 = phi float [ %8639, %8641 ], [ %8599, %8597 ], [ 1.000000e+00, %8590 ], [ %8639, %8637 ]
  %8654 = phi float [ %8628, %8641 ], [ %8599, %8597 ], [ 1.000000e+00, %8590 ], [ %8628, %8637 ]
  %8655 = fmul fast float %8654, %8566
  %8656 = fmul fast float %8653, %8577
  %8657 = fmul fast float %8652, %8588
  %8658 = fadd fast float %8655, %8651
  %8659 = fadd fast float %8656, %8650
  %8660 = fadd fast float %8657, %8649
  %8661 = fmul fast float %8654, %8565
  %8662 = fmul fast float %8653, %8576
  %8663 = fmul fast float %8652, %8587
  br label %8664

; <label>:8664                                    ; preds = %8648, %8459
  %8665 = phi float [ %8663, %8648 ], [ %8465, %8459 ]
  %8666 = phi float [ %8662, %8648 ], [ %8464, %8459 ]
  %8667 = phi float [ %8661, %8648 ], [ %8463, %8459 ]
  %8668 = phi float [ %8660, %8648 ], [ %8462, %8459 ]
  %8669 = phi float [ %8659, %8648 ], [ %8461, %8459 ]
  %8670 = phi float [ %8658, %8648 ], [ %8460, %8459 ]
  %8671 = fmul fast float %8670, %7623
  %8672 = fmul fast float %8669, %7625
  %8673 = fmul fast float %8668, %7627
  %8674 = call float @dx.op.dot3.f32(i32 55, float %8667, float %8666, float %8665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8675 = call float @dx.op.dot3.f32(i32 55, float %8671, float %8672, float %8673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8676 = select i1 %252, float %8674, float %8667
  %8677 = select i1 %252, float %8674, float %8666
  %8678 = select i1 %252, float 1.000000e+00, float %8665
  %8679 = select i1 %252, float %8675, float %8671
  %8680 = select i1 %252, float 0.000000e+00, float %8672
  %8681 = select i1 %252, float 0.000000e+00, float %8673
  %8682 = fmul fast float %8676, %7902
  %8683 = fmul fast float %8677, %7903
  %8684 = fmul fast float %8678, %7904
  %8685 = fadd fast float %8682, %8679
  %8686 = fadd fast float %8683, %8680
  %8687 = fadd fast float %8681, %8684
  %8688 = fmul fast float %8676, %7905
  %8689 = fmul fast float %8677, %7906
  %8690 = fmul fast float %8678, %7907
  %8691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.i32 %8691, 0
  %8693 = icmp eq i32 %8692, 0
  br i1 %8693, label %9060, label %8694, !dx.controlflow.hints !169

; <label>:8694                                    ; preds = %8664
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8697 = extractvalue %dx.types.CBufRet.f32 %8695, 3
  %8698 = fmul fast float %8696, %107
  %8699 = fmul fast float %8697, %108
  %8700 = fmul fast float %8698, 2.000000e+00
  %8701 = fmul fast float %8699, 2.000000e+00
  %8702 = fsub fast float 1.000000e+00, %8700
  %8703 = fsub fast float 1.000000e+00, %8701
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 0
  %8706 = extractvalue %dx.types.CBufRet.f32 %8704, 1
  %8707 = extractvalue %dx.types.CBufRet.f32 %8704, 2
  %8708 = fmul fast float %8702, %8705
  %8709 = fmul fast float %8702, %8706
  %8710 = fmul fast float %8702, %8707
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 0
  %8713 = extractvalue %dx.types.CBufRet.f32 %8711, 1
  %8714 = extractvalue %dx.types.CBufRet.f32 %8711, 2
  %8715 = fmul fast float %8703, %8712
  %8716 = fmul fast float %8703, %8713
  %8717 = fmul fast float %8703, %8714
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 0
  %8720 = extractvalue %dx.types.CBufRet.f32 %8718, 1
  %8721 = extractvalue %dx.types.CBufRet.f32 %8718, 2
  %8722 = fadd fast float %8715, %8719
  %8723 = fadd fast float %8722, %8708
  %8724 = fadd fast float %8716, %8720
  %8725 = fadd fast float %8724, %8709
  %8726 = fadd fast float %8717, %8721
  %8727 = fadd fast float %8726, %8710
  %8728 = fmul fast float %8723, %7901
  %8729 = fmul fast float %8725, %7901
  %8730 = fmul fast float %8727, %7901
  %8731 = fmul fast float %8728, %8728
  %8732 = fmul fast float %8729, %8729
  %8733 = fadd fast float %8731, %8732
  %8734 = fmul fast float %8730, %8730
  %8735 = fadd fast float %8733, %8734
  %8736 = call float @dx.op.unary.f32(i32 24, float %8735)  ; Sqrt(value)
  %8737 = extractvalue %dx.types.CBufRet.f32 %7628, 0
  %8738 = fsub fast float %8736, %8737
  %8739 = extractvalue %dx.types.CBufRet.f32 %7628, 2
  %8740 = fmul fast float %8738, %8739
  %8741 = call float @dx.op.unary.f32(i32 7, float %8740)  ; Saturate(value)
  %8742 = fadd fast float %8741, -5.000000e-01
  %8743 = fmul fast float %8742, 2.000000e+00
  %8744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8745 = extractvalue %dx.types.CBufRet.f32 %8744, 2
  %8746 = call float @dx.op.binary.f32(i32 36, float %8745, float %8743)  ; FMin(a,b)
  %8747 = fsub fast float -0.000000e+00, %8745
  %8748 = fcmp fast ogt float %8746, %8747
  br i1 %8748, label %8749, label %9060, !dx.controlflow.hints !170

; <label>:8749                                    ; preds = %8694
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 3
  %8752 = fcmp fast ogt float %8751, 0.000000e+00
  br i1 %8752, label %8753, label %8828, !dx.controlflow.hints !171

; <label>:8753                                    ; preds = %8749
  %8754 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8755 = extractvalue %dx.types.Dimensions %8754, 0
  %8756 = sitofp i32 %8755 to float
  %8757 = extractvalue %dx.types.Dimensions %8754, 1
  %8758 = sitofp i32 %8757 to float
  %8759 = fmul fast float %8698, %8756
  %8760 = fmul fast float %8699, %8758
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 1
  %8763 = fsub fast float -0.000000e+00, %8762
  %8764 = fptoui float %8763 to i32
  %8765 = fptoui float %8759 to i32
  %8766 = fptoui float %8760 to i32
  %8767 = and i32 %8764, 31
  %8768 = lshr i32 %8765, %8767
  %8769 = lshr i32 %8766, %8767
  %8770 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8764, i32 %8768, i32 %8769, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8771 = extractvalue %dx.types.ResRet.f32 %8770, 0
  %8772 = fcmp fast olt float %8771, -1.000000e+00
  %8773 = fcmp fast ogt float %8771, -1.000000e+00
  %8774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8774, 1
  %8776 = select i1 %8773, float %8775, float 1.000000e+00
  %8777 = fadd fast float %8771, 1.000000e+00
  %8778 = fmul fast float %8776, %8777
  %8779 = call float @dx.op.unary.f32(i32 6, float %8778)  ; FAbs(value)
  %8780 = extractvalue %dx.types.CBufRet.f32 %8774, 3
  %8781 = fcmp fast oge float %8779, %8780
  %8782 = select i1 %8781, float 0x4197782600000000, float %8779
  %8783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8784 = extractvalue %dx.types.CBufRet.f32 %8783, 0
  %8785 = extractvalue %dx.types.CBufRet.f32 %8783, 1
  %8786 = extractvalue %dx.types.CBufRet.f32 %8783, 2
  %8787 = select i1 %8772, float %8784, float %8705
  %8788 = select i1 %8772, float %8785, float %8706
  %8789 = select i1 %8772, float %8786, float %8707
  %8790 = fmul fast float %8787, %8702
  %8791 = fmul fast float %8788, %8702
  %8792 = fmul fast float %8789, %8702
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %8795 = extractvalue %dx.types.CBufRet.f32 %8793, 1
  %8796 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %8797 = select i1 %8772, float %8794, float %8712
  %8798 = select i1 %8772, float %8795, float %8713
  %8799 = select i1 %8772, float %8796, float %8714
  %8800 = fmul fast float %8797, %8703
  %8801 = fmul fast float %8798, %8703
  %8802 = fmul fast float %8799, %8703
  %8803 = fadd fast float %8800, %8790
  %8804 = fadd fast float %8801, %8791
  %8805 = fadd fast float %8802, %8792
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = extractvalue %dx.types.CBufRet.f32 %8806, 2
  %8810 = select i1 %8772, float %8807, float %8719
  %8811 = select i1 %8772, float %8808, float %8720
  %8812 = select i1 %8772, float %8809, float %8721
  %8813 = fadd fast float %8803, %8810
  %8814 = fadd fast float %8804, %8811
  %8815 = fadd fast float %8805, %8812
  %8816 = fmul fast float %8813, %8782
  %8817 = fmul fast float %8814, %8782
  %8818 = fmul fast float %8815, %8782
  %8819 = fmul fast float %8816, %8816
  %8820 = fmul fast float %8817, %8817
  %8821 = fadd fast float %8819, %8820
  %8822 = fmul fast float %8818, %8818
  %8823 = fadd fast float %8821, %8822
  %8824 = call float @dx.op.unary.f32(i32 24, float %8823)  ; Sqrt(value)
  %8825 = fsub fast float %8824, %8737
  %8826 = fmul fast float %8825, %8739
  %8827 = call float @dx.op.unary.f32(i32 7, float %8826)  ; Saturate(value)
  br label %8828

; <label>:8828                                    ; preds = %8753, %8749
  %8829 = phi float [ %8827, %8753 ], [ 1.000000e+00, %8749 ]
  %8830 = fmul fast float %8746, 5.000000e-01
  %8831 = fadd fast float %8830, 5.000000e-01
  %8832 = call float @dx.op.unary.f32(i32 22, float %8831)  ; Frc(value)
  %8833 = call float @dx.op.unary.f32(i32 27, float %8832)  ; Round_ni(value)
  %8834 = call float @dx.op.unary.f32(i32 22, float %8832)  ; Frc(value)
  %8835 = fmul fast float %8834, 2.000000e+00
  %8836 = fadd fast float %8835, -1.000000e+00
  %8837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %8698, float %8699, float %8833, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8838 = extractvalue %dx.types.ResRet.f32 %8837, 0
  %8839 = extractvalue %dx.types.ResRet.f32 %8837, 1
  %8840 = extractvalue %dx.types.ResRet.f32 %8837, 2
  %8841 = extractvalue %dx.types.ResRet.f32 %8837, 3
  %8842 = fadd fast float %8838, -5.000000e-01
  %8843 = fadd fast float %8840, -5.000000e-01
  %8844 = fmul fast float %8842, 0xBFD5555560000000
  %8845 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8843, float %8844)  ; FMad(a,b,c)
  %8846 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8839, float 0.000000e+00)  ; FMad(a,b,c)
  %8847 = fadd fast float %8846, %8841
  %8848 = fmul fast float %8842, -7.500000e-01
  %8849 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8843, float %8848)  ; FMad(a,b,c)
  %8850 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8839, float 0.000000e+00)  ; FMad(a,b,c)
  %8851 = fadd fast float %8850, %8841
  %8852 = call float @dx.op.binary.f32(i32 35, float %8845, float -1.000000e+00)  ; FMax(a,b)
  %8853 = call float @dx.op.binary.f32(i32 35, float %8847, float -1.000000e+00)  ; FMax(a,b)
  %8854 = call float @dx.op.binary.f32(i32 35, float %8849, float -1.000000e+00)  ; FMax(a,b)
  %8855 = call float @dx.op.binary.f32(i32 35, float %8851, float -1.000000e+00)  ; FMax(a,b)
  %8856 = call float @dx.op.binary.f32(i32 36, float %8852, float 1.000000e+00)  ; FMin(a,b)
  %8857 = call float @dx.op.binary.f32(i32 36, float %8853, float 1.000000e+00)  ; FMin(a,b)
  %8858 = call float @dx.op.binary.f32(i32 36, float %8854, float 1.000000e+00)  ; FMin(a,b)
  %8859 = call float @dx.op.binary.f32(i32 36, float %8855, float 1.000000e+00)  ; FMin(a,b)
  %8860 = fcmp fast olt float %8856, 0x3FEFFF8020000000
  br i1 %8860, label %8861, label %8976, !dx.controlflow.hints !172

; <label>:8861                                    ; preds = %8828
  %8862 = extractvalue %dx.types.CBufRet.f32 %8744, 3
  %8863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8864 = extractvalue %dx.types.CBufRet.f32 %8863, 0
  %8865 = extractvalue %dx.types.CBufRet.f32 %8863, 1
  %8866 = extractvalue %dx.types.CBufRet.f32 %8863, 2
  %8867 = extractvalue %dx.types.CBufRet.f32 %8863, 3
  %8868 = fsub fast float %8864, %8856
  %8869 = fsub fast float %8865, %8857
  %8870 = fsub fast float %8866, %8858
  %8871 = fsub fast float %8867, %8859
  %8872 = fmul fast float %8868, %8862
  %8873 = fmul fast float %8869, %8862
  %8874 = fmul fast float %8870, %8862
  %8875 = fmul fast float %8871, %8862
  %8876 = fadd fast float %8872, %8856
  %8877 = fadd fast float %8873, %8857
  %8878 = fsub fast float -0.000000e+00, %8877
  %8879 = fadd fast float %8874, %8858
  %8880 = fadd fast float %8875, %8859
  %8881 = fmul fast float %8876, %8876
  %8882 = fsub fast float %8877, %8881
  %8883 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8882)  ; FMax(a,b)
  %8884 = fdiv fast float 1.000000e+00, %8883
  %8885 = fmul fast float %8877, %8876
  %8886 = fsub fast float %8879, %8885
  %8887 = fsub fast float %8836, %8876
  %8888 = fmul fast float %8836, %8836
  %8889 = fsub fast float %8888, %8877
  %8890 = fmul fast float %8887, %8884
  %8891 = fmul fast float %8890, %8886
  %8892 = fsub fast float %8889, %8891
  %8893 = fmul fast float %8877, %8877
  %8894 = fsub fast float %8880, %8893
  %8895 = fmul fast float %8886, %8886
  %8896 = fmul fast float %8895, %8884
  %8897 = fsub fast float %8894, %8896
  %8898 = fdiv fast float %8892, %8897
  %8899 = fmul fast float %8886, %8898
  %8900 = fsub fast float %8887, %8899
  %8901 = fmul fast float %8900, %8884
  %8902 = fmul fast float %8901, %8876
  %8903 = fsub fast float 1.000000e+00, %8902
  %8904 = fmul fast float %8877, %8898
  %8905 = fsub fast float %8903, %8904
  %8906 = fmul fast float %8901, %8901
  %8907 = fmul fast float %8898, 4.000000e+00
  %8908 = fmul fast float %8907, %8905
  %8909 = fsub fast float %8906, %8908
  %8910 = call float @dx.op.unary.f32(i32 24, float %8909)  ; Sqrt(value)
  %8911 = fcmp fast oge float %8901, 0.000000e+00
  %8912 = fsub fast float -0.000000e+00, %8910
  %8913 = select i1 %8911, float %8912, float %8910
  %8914 = fsub fast float %8913, %8901
  %8915 = fdiv fast float %8914, %8898
  %8916 = fdiv fast float %8905, %8914
  %8917 = fmul fast float %8915, 5.000000e-01
  %8918 = fmul fast float %8916, 2.000000e+00
  %8919 = select i1 %8911, float %8917, float %8918
  %8920 = select i1 %8911, float %8918, float %8917
  %8921 = call float @dx.op.binary.f32(i32 35, float %8919, float %8920)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 36, float %8919, float %8920)  ; FMin(a,b)
  %8923 = fcmp fast ogt float %8836, %8922
  br i1 %8923, label %8924, label %8934

; <label>:8924                                    ; preds = %8861
  %8925 = fsub fast float %8836, %8922
  %8926 = fsub fast float %8921, %8922
  %8927 = fmul fast float %8925, %8926
  %8928 = fmul fast float %8921, %8836
  %8929 = fadd fast float %8921, %8836
  %8930 = fmul fast float %8929, %8876
  %8931 = fadd fast float %8928, %8877
  %8932 = fsub fast float %8931, %8930
  %8933 = fdiv fast float %8932, %8927
  br label %8934

; <label>:8934                                    ; preds = %8924, %8861
  %8935 = phi float [ %8933, %8924 ], [ 0.000000e+00, %8861 ]
  %8936 = fcmp fast ogt float %8836, %8921
  %8937 = fsub fast float %8836, %8921
  br i1 %8936, label %8938, label %8948

; <label>:8938                                    ; preds = %8934
  %8939 = fsub fast float %8921, %8922
  %8940 = fmul fast float %8939, %8937
  %8941 = fmul fast float %8922, %8836
  %8942 = fadd fast float %8922, %8836
  %8943 = fmul fast float %8942, %8876
  %8944 = fsub fast float %8878, %8941
  %8945 = fadd fast float %8944, %8943
  %8946 = fdiv fast float %8945, %8940
  %8947 = fadd fast float %8946, %8935
  br label %8948

; <label>:8948                                    ; preds = %8938, %8934
  %8949 = phi float [ %8947, %8938 ], [ %8935, %8934 ]
  %8950 = fsub fast float %8836, %8922
  %8951 = fmul fast float %8950, %8937
  %8952 = fmul fast float %8922, %8921
  %8953 = fadd fast float %8922, %8921
  %8954 = fmul fast float %8953, %8876
  %8955 = fadd fast float %8952, %8877
  %8956 = fsub fast float %8955, %8954
  %8957 = fdiv fast float %8956, %8951
  %8958 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  %8959 = fcmp fast oeq float %7629, 0.000000e+00
  %8960 = extractvalue %dx.types.CBufRet.f32 %8744, 0
  %8961 = fcmp fast oeq float %8960, 0.000000e+00
  %8962 = or i1 %8959, %8961
  %8963 = fmul fast float %8960, 2.000000e+00
  %8964 = fadd fast float %8745, %8746
  %8965 = fdiv fast float %8964, %8963
  %8966 = call float @dx.op.unary.f32(i32 7, float %8965)  ; Saturate(value)
  %8967 = fmul fast float %8966, 2.000000e+00
  %8968 = fsub fast float 3.000000e+00, %8967
  %8969 = fmul fast float %8966, %8966
  %8970 = fmul fast float %8969, %8968
  %8971 = select i1 %8962, float 1.000000e+00, float %8970
  %8972 = fmul fast float %8957, %7629
  %8973 = fadd fast float %8958, %8972
  %8974 = call float @dx.op.unary.f32(i32 7, float %8973)  ; Saturate(value)
  %8975 = fmul fast float %8971, %8974
  br label %8976

; <label>:8976                                    ; preds = %8948, %8828
  %8977 = phi float [ %8975, %8948 ], [ 0.000000e+00, %8828 ]
  %8978 = fsub fast float 1.000000e+00, %8977
  %8979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %8698, float %8699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8980 = extractvalue %dx.types.ResRet.f32 %8979, 0
  %8981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8982 = extractvalue %dx.types.CBufRet.i32 %8981, 2
  %8983 = icmp eq i32 %8982, 0
  br i1 %8983, label %8989, label %8984

; <label>:8984                                    ; preds = %8976
  %8985 = call float @dx.op.unary.f32(i32 7, float %8977)  ; Saturate(value)
  %8986 = fadd fast float %8980, -1.000000e+00
  %8987 = fmul fast float %8985, %8986
  %8988 = fadd fast float %8987, 1.000000e+00
  br label %8989

; <label>:8989                                    ; preds = %8984, %8976
  %8990 = phi float [ %8988, %8984 ], [ %8978, %8976 ]
  br i1 %8752, label %8991, label %9009

; <label>:8991                                    ; preds = %8989
  %8992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8993 = extractvalue %dx.types.CBufRet.f32 %8992, 1
  %8994 = fsub fast float %8829, %8993
  %8995 = call float @dx.op.unary.f32(i32 7, float %8994)  ; Saturate(value)
  %8996 = fsub fast float %8829, %8751
  %8997 = call float @dx.op.unary.f32(i32 7, float %8996)  ; Saturate(value)
  %8998 = fsub fast float %8995, %8997
  %8999 = fsub fast float %8831, %8997
  %9000 = fdiv fast float %8999, %8998
  %9001 = call float @dx.op.unary.f32(i32 7, float %9000)  ; Saturate(value)
  %9002 = fmul fast float %9001, 2.000000e+00
  %9003 = fsub fast float 3.000000e+00, %9002
  %9004 = fsub fast float %8980, %8990
  %9005 = fmul fast float %9001, %9001
  %9006 = fmul fast float %9005, %9004
  %9007 = fmul fast float %9006, %9003
  %9008 = fadd fast float %9007, %8990
  br label %9009

; <label>:9009                                    ; preds = %8991, %8989
  %9010 = phi float [ %9008, %8991 ], [ %8990, %8989 ]
  %9011 = call float @dx.op.binary.f32(i32 35, float %8980, float %9010)  ; FMax(a,b)
  %9012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.i32 %9012, 2
  %9014 = and i32 %9013, 1
  %9015 = icmp eq i32 %9014, 0
  %9016 = fcmp fast une float %9011, 1.000000e+00
  %9017 = and i1 %9016, %9015
  br i1 %9017, label %9018, label %9037

; <label>:9018                                    ; preds = %9009
  %9019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %8698, float %8699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9020 = extractvalue %dx.types.ResRet.f32 %9019, 0
  %9021 = extractvalue %dx.types.ResRet.f32 %9019, 1
  %9022 = extractvalue %dx.types.ResRet.f32 %9019, 2
  %9023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9024 = extractvalue %dx.types.CBufRet.f32 %9023, 1
  %9025 = fmul fast float %9024, %9020
  %9026 = fmul fast float %9024, %9021
  %9027 = fmul fast float %9024, %9022
  %9028 = fcmp fast ogt float %8980, 0x3FEFFF2E40000000
  %9029 = fsub fast float 1.000000e+00, %9011
  %9030 = fsub fast float 1.000000e+00, %8980
  %9031 = fdiv fast float %9029, %9030
  %9032 = call float @dx.op.unary.f32(i32 7, float %9031)  ; Saturate(value)
  %9033 = select i1 %9028, float 0.000000e+00, float %9032
  %9034 = fmul fast float %9025, %9033
  %9035 = fmul fast float %9026, %9033
  %9036 = fmul fast float %9027, %9033
  br label %9037

; <label>:9037                                    ; preds = %9018, %9009
  %9038 = phi float [ 0.000000e+00, %9009 ], [ %9034, %9018 ]
  %9039 = phi float [ 0.000000e+00, %9009 ], [ %9035, %9018 ]
  %9040 = phi float [ 0.000000e+00, %9009 ], [ %9036, %9018 ]
  %9041 = fmul fast float %9038, %7623
  %9042 = fmul fast float %9039, %7625
  %9043 = fmul fast float %9040, %7627
  %9044 = call float @dx.op.dot3.f32(i32 55, float %9011, float %9011, float %9011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9045 = call float @dx.op.dot3.f32(i32 55, float %9041, float %9042, float %9043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9046 = select i1 %252, float %9044, float %9011
  %9047 = select i1 %252, float 1.000000e+00, float %9011
  %9048 = select i1 %252, float %9045, float %9041
  %9049 = select i1 %252, float 0.000000e+00, float %9042
  %9050 = select i1 %252, float 0.000000e+00, float %9043
  %9051 = fmul fast float %9046, %8685
  %9052 = fmul fast float %9046, %8686
  %9053 = fmul fast float %9047, %8687
  %9054 = fadd fast float %9051, %9048
  %9055 = fadd fast float %9052, %9049
  %9056 = fadd fast float %9050, %9053
  %9057 = fmul fast float %9046, %8688
  %9058 = fmul fast float %9046, %8689
  %9059 = fmul fast float %9047, %8690
  br label %9060

; <label>:9060                                    ; preds = %9037, %8694, %8664, %7897
  %9061 = phi float [ %7902, %7897 ], [ %8685, %8664 ], [ %9054, %9037 ], [ %8685, %8694 ]
  %9062 = phi float [ %7903, %7897 ], [ %8686, %8664 ], [ %9055, %9037 ], [ %8686, %8694 ]
  %9063 = phi float [ %7904, %7897 ], [ %8687, %8664 ], [ %9056, %9037 ], [ %8687, %8694 ]
  %9064 = phi float [ %7905, %7897 ], [ %8688, %8664 ], [ %9057, %9037 ], [ %8688, %8694 ]
  %9065 = phi float [ %7906, %7897 ], [ %8689, %8664 ], [ %9058, %9037 ], [ %8689, %8694 ]
  %9066 = phi float [ %7907, %7897 ], [ %8690, %8664 ], [ %9059, %9037 ], [ %8690, %8694 ]
  %9067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9068 = extractvalue %dx.types.CBufRet.f32 %9067, 2
  %9069 = extractvalue %dx.types.CBufRet.f32 %9067, 3
  %9070 = fmul fast float %9068, %107
  %9071 = fmul fast float %9069, %108
  %9072 = call float @dx.op.unary.f32(i32 7, float %9070)  ; Saturate(value)
  %9073 = call float @dx.op.unary.f32(i32 7, float %9071)  ; Saturate(value)
  %9074 = select i1 %7639, i32 2, i32 0
  %9075 = or i32 %9074, 1
  %9076 = uitofp i32 %9075 to float
  %9077 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %9072, float %9073, float %9076, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9078 = extractvalue %dx.types.ResRet.f32 %9077, 0
  %9079 = extractvalue %dx.types.ResRet.f32 %9077, 1
  %9080 = extractvalue %dx.types.ResRet.f32 %9077, 2
  %9081 = extractvalue %dx.types.ResRet.f32 %9077, 3
  %9082 = add nuw nsw i32 %9074, 2
  %9083 = uitofp i32 %9082 to float
  %9084 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %9072, float %9073, float %9083, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9085 = extractvalue %dx.types.ResRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.ResRet.f32 %9084, 1
  %9087 = extractvalue %dx.types.ResRet.f32 %9084, 2
  %9088 = extractvalue %dx.types.ResRet.f32 %9084, 3
  %9089 = call float @dx.op.binary.f32(i32 35, float %9079, float %9080)  ; FMax(a,b)
  %9090 = call float @dx.op.binary.f32(i32 35, float %9078, float %9089)  ; FMax(a,b)
  %9091 = call float @dx.op.binary.f32(i32 35, float %9090, float %9081)  ; FMax(a,b)
  %9092 = call float @dx.op.binary.f32(i32 36, float %9086, float %9087)  ; FMin(a,b)
  %9093 = call float @dx.op.binary.f32(i32 36, float %9085, float %9092)  ; FMin(a,b)
  %9094 = call float @dx.op.binary.f32(i32 36, float %9093, float %9088)  ; FMin(a,b)
  %9095 = fmul fast float %9091, 2.550000e+02
  %9096 = fadd fast float %9095, 0x3F70101020000000
  %9097 = fptoui float %9096 to i32
  %9098 = fmul fast float %9094, 2.550000e+02
  %9099 = fadd fast float %9098, 0x3F70101020000000
  %9100 = fptoui float %9099 to i32
  %9101 = icmp ult i32 %9097, %9100
  br i1 %9101, label %9102, label %9271

; <label>:9102                                    ; preds = %9060
  %9103 = fcmp fast ogt float %97, 9.843750e-01
  %9104 = fadd fast float %7901, -4.000000e+00
  %9105 = select i1 %9103, float -4.000000e+00, float %9104
  %9106 = call float @dx.op.binary.f32(i32 35, float %9105, float 0.000000e+00)  ; FMax(a,b)
  %9107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9108 = extractvalue %dx.types.CBufRet.f32 %9107, 0
  %9109 = fadd fast float %9108, %9106
  %9110 = extractvalue %dx.types.CBufRet.f32 %9107, 2
  %9111 = fmul fast float %9109, %9110
  %9112 = call float @dx.op.unary.f32(i32 23, float %9111)  ; Log(value)
  %9113 = extractvalue %dx.types.CBufRet.f32 %9107, 3
  %9114 = fmul fast float %9113, %9112
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9117 = fmul fast float %9114, %9116
  %9118 = call float @dx.op.unary.f32(i32 7, float %9117)  ; Saturate(value)
  %9119 = uitofp i32 %9097 to float
  %9120 = uitofp i32 %9100 to float
  %9121 = fadd fast float %9119, 5.000000e-01
  %9122 = fadd fast float %9120, 5.000000e-01
  %9123 = fmul fast float %9116, %9121
  %9124 = fmul fast float %9116, %9122
  %9125 = fadd fast float %9123, 0x3F0FFB4800000000
  %9126 = fadd fast float %9124, 0xBF0FFB4800000000
  %9127 = call float @dx.op.binary.f32(i32 35, float %9118, float %9125)  ; FMax(a,b)
  %9128 = call float @dx.op.binary.f32(i32 36, float %9127, float %9126)  ; FMin(a,b)
  %9129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9130 = extractvalue %dx.types.CBufRet.f32 %9129, 1
  %9131 = extractvalue %dx.types.CBufRet.f32 %9129, 2
  %9132 = extractvalue %dx.types.CBufRet.f32 %9129, 0
  %9133 = select i1 %7639, float %9132, float 0.000000e+00
  %9134 = fmul fast float %9130, %9128
  %9135 = fadd fast float %9133, %9134
  %9136 = fadd fast float %9133, %9131
  %9137 = fsub fast float %9130, %9131
  %9138 = fadd fast float %9137, %9133
  %9139 = call float @dx.op.binary.f32(i32 35, float %9135, float %9136)  ; FMax(a,b)
  %9140 = call float @dx.op.binary.f32(i32 36, float %9139, float %9138)  ; FMin(a,b)
  %9141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %9072, float %9073, float %9140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9142 = extractvalue %dx.types.ResRet.f32 %9141, 0
  %9143 = extractvalue %dx.types.ResRet.f32 %9141, 1
  %9144 = extractvalue %dx.types.ResRet.f32 %9141, 2
  %9145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9146 = extractvalue %dx.types.CBufRet.i32 %9145, 0
  %9147 = extractvalue %dx.types.CBufRet.i32 %9145, 1
  %9148 = uitofp i32 %9146 to float
  %9149 = uitofp i32 %9147 to float
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 0
  %9152 = extractvalue %dx.types.CBufRet.f32 %9150, 1
  %9153 = fmul fast float %9148, %9072
  %9154 = fmul fast float %9149, %9073
  %9155 = fadd fast float %9153, -5.000000e-01
  %9156 = fadd fast float %9154, -5.000000e-01
  %9157 = call float @dx.op.unary.f32(i32 22, float %9155)  ; Frc(value)
  %9158 = call float @dx.op.unary.f32(i32 22, float %9156)  ; Frc(value)
  %9159 = fmul fast float %9157, %9157
  %9160 = fmul fast float %9159, %9157
  %9161 = fsub fast float 3.000000e+00, %9157
  %9162 = fmul fast float %9159, %9161
  %9163 = fmul fast float %9157, 3.000000e+00
  %9164 = fmul fast float %9160, 3.000000e+00
  %9165 = fmul fast float %9159, 6.000000e+00
  %9166 = fsub fast float %9164, %9165
  %9167 = fadd fast float %9166, 4.000000e+00
  %9168 = fmul fast float %9167, 0x3FC5555560000000
  %9169 = fmul fast float %9160, -3.000000e+00
  %9170 = fadd fast float %9159, %9157
  %9171 = fmul fast float %9170, 3.000000e+00
  %9172 = fadd fast float %9169, 1.000000e+00
  %9173 = fadd fast float %9172, %9171
  %9174 = fmul fast float %9160, 0x3FC5555560000000
  %9175 = fmul fast float %9158, %9158
  %9176 = fmul fast float %9175, %9158
  %9177 = fsub fast float 3.000000e+00, %9158
  %9178 = fmul fast float %9175, %9177
  %9179 = fmul fast float %9158, 3.000000e+00
  %9180 = fmul fast float %9176, 3.000000e+00
  %9181 = fmul fast float %9175, 6.000000e+00
  %9182 = fsub fast float %9180, %9181
  %9183 = fadd fast float %9182, 4.000000e+00
  %9184 = fmul fast float %9183, 0x3FC5555560000000
  %9185 = fmul fast float %9176, -3.000000e+00
  %9186 = fadd fast float %9175, %9158
  %9187 = fmul fast float %9186, 3.000000e+00
  %9188 = fadd fast float %9185, 1.000000e+00
  %9189 = fadd fast float %9188, %9187
  %9190 = fmul fast float %9176, 0x3FC5555560000000
  %9191 = fadd fast float %9157, 1.000000e+00
  %9192 = fsub fast float 1.000000e+00, %9163
  %9193 = fadd fast float %9192, %9162
  %9194 = fadd fast float %9193, %9167
  %9195 = fmul fast float %9194, 0x3FC5555560000000
  %9196 = fdiv fast float %9168, %9195
  %9197 = fsub fast float %9191, %9196
  %9198 = fsub fast float 1.000000e+00, %9157
  %9199 = fadd fast float %9173, %9160
  %9200 = fmul fast float %9199, 0x3FC5555560000000
  %9201 = fdiv fast float %9174, %9200
  %9202 = fadd fast float %9198, %9201
  %9203 = fadd fast float %9158, 1.000000e+00
  %9204 = fsub fast float 1.000000e+00, %9179
  %9205 = fadd fast float %9204, %9178
  %9206 = fadd fast float %9205, %9183
  %9207 = fmul fast float %9206, 0x3FC5555560000000
  %9208 = fdiv fast float %9184, %9207
  %9209 = fsub fast float %9203, %9208
  %9210 = fsub fast float 1.000000e+00, %9158
  %9211 = fadd fast float %9189, %9176
  %9212 = fmul fast float %9211, 0x3FC5555560000000
  %9213 = fdiv fast float %9190, %9212
  %9214 = fadd fast float %9213, %9210
  %9215 = fmul fast float %9197, %9151
  %9216 = fsub fast float %9072, %9215
  %9217 = fmul fast float %9202, %9151
  %9218 = fadd fast float %9217, %9072
  %9219 = fmul fast float %9214, %9152
  %9220 = fadd fast float %9219, %9073
  %9221 = fmul fast float %9209, %9152
  %9222 = fsub fast float %9073, %9221
  %9223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %9216, float %9222, float %9140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9224 = extractvalue %dx.types.ResRet.f32 %9223, 0
  %9225 = extractvalue %dx.types.ResRet.f32 %9223, 1
  %9226 = extractvalue %dx.types.ResRet.f32 %9223, 2
  %9227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %9218, float %9222, float %9140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9228 = extractvalue %dx.types.ResRet.f32 %9227, 0
  %9229 = extractvalue %dx.types.ResRet.f32 %9227, 1
  %9230 = extractvalue %dx.types.ResRet.f32 %9227, 2
  %9231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %9216, float %9220, float %9140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9232 = extractvalue %dx.types.ResRet.f32 %9231, 0
  %9233 = extractvalue %dx.types.ResRet.f32 %9231, 1
  %9234 = extractvalue %dx.types.ResRet.f32 %9231, 2
  %9235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %9218, float %9220, float %9140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9236 = extractvalue %dx.types.ResRet.f32 %9235, 0
  %9237 = extractvalue %dx.types.ResRet.f32 %9235, 1
  %9238 = extractvalue %dx.types.ResRet.f32 %9235, 2
  %9239 = fsub fast float %9232, %9224
  %9240 = fsub fast float %9233, %9225
  %9241 = fsub fast float %9234, %9226
  %9242 = fmul fast float %9239, %9212
  %9243 = fmul fast float %9240, %9212
  %9244 = fmul fast float %9241, %9212
  %9245 = fadd fast float %9242, %9224
  %9246 = fadd fast float %9243, %9225
  %9247 = fadd fast float %9244, %9226
  %9248 = fsub fast float %9236, %9228
  %9249 = fsub fast float %9237, %9229
  %9250 = fsub fast float %9238, %9230
  %9251 = fmul fast float %9248, %9212
  %9252 = fmul fast float %9249, %9212
  %9253 = fmul fast float %9250, %9212
  %9254 = fsub fast float %9228, %9245
  %9255 = fadd fast float %9254, %9251
  %9256 = fsub fast float %9229, %9246
  %9257 = fadd fast float %9256, %9252
  %9258 = fsub fast float %9230, %9247
  %9259 = fadd fast float %9258, %9253
  %9260 = fmul fast float %9255, %9200
  %9261 = fmul fast float %9257, %9200
  %9262 = fmul fast float %9259, %9200
  %9263 = fadd fast float %9260, %9245
  %9264 = fadd fast float %9261, %9246
  %9265 = fadd fast float %9262, %9247
  %9266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9267 = extractvalue %dx.types.CBufRet.f32 %9266, 1
  %9268 = fmul fast float %9263, %9267
  %9269 = fmul fast float %9264, %9267
  %9270 = fmul fast float %9265, %9267
  br label %9271

; <label>:9271                                    ; preds = %9102, %9060
  %9272 = phi float [ %9142, %9102 ], [ 1.000000e+00, %9060 ]
  %9273 = phi float [ %9143, %9102 ], [ 1.000000e+00, %9060 ]
  %9274 = phi float [ %9144, %9102 ], [ 1.000000e+00, %9060 ]
  %9275 = phi float [ %9268, %9102 ], [ 0.000000e+00, %9060 ]
  %9276 = phi float [ %9269, %9102 ], [ 0.000000e+00, %9060 ]
  %9277 = phi float [ %9270, %9102 ], [ 0.000000e+00, %9060 ]
  %9278 = fmul fast float %9275, %7623
  %9279 = fmul fast float %9276, %7625
  %9280 = fmul fast float %9277, %7627
  %9281 = call float @dx.op.dot3.f32(i32 55, float %9272, float %9273, float %9274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9282 = call float @dx.op.dot3.f32(i32 55, float %9278, float %9279, float %9280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9283 = select i1 %252, float %9281, float %9272
  %9284 = select i1 %252, float %9281, float %9273
  %9285 = select i1 %252, float %9282, float %9278
  %9286 = select i1 %252, float 0.000000e+00, float %9279
  %9287 = fadd fast float %9064, %9061
  %9288 = fmul fast float %9283, %9287
  %9289 = fadd fast float %9288, %9285
  %9290 = fadd fast float %9065, %9062
  %9291 = fmul fast float %9284, %9290
  %9292 = fadd fast float %9291, %9286
  %9293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9294 = extractvalue %dx.types.CBufRet.f32 %9293, 0
  br i1 %252, label %9295, label %9298

; <label>:9295                                    ; preds = %9271
  %9296 = fadd fast float %9289, %9292
  %9297 = fmul fast float %9294, %9296
  br label %9324

; <label>:9298                                    ; preds = %9271
  %9299 = fadd fast float %9066, %9063
  %9300 = fmul fast float %9274, %9299
  %9301 = fadd fast float %9300, %9280
  %9302 = fmul fast float %9294, %9289
  %9303 = fmul fast float %9294, %9292
  %9304 = fmul fast float %9294, %9301
  %9305 = call float @dx.op.binary.f32(i32 35, float %9303, float %9304)  ; FMax(a,b)
  %9306 = call float @dx.op.binary.f32(i32 35, float %9302, float %9305)  ; FMax(a,b)
  %9307 = call float @dx.op.binary.f32(i32 35, float %7625, float %7627)  ; FMax(a,b)
  %9308 = call float @dx.op.binary.f32(i32 35, float %7623, float %9307)  ; FMax(a,b)
  %9309 = call float @dx.op.binary.f32(i32 35, float %9306, float %9308)  ; FMax(a,b)
  %9310 = fcmp fast ugt float %9309, 0x3F10000000000000
  br i1 %9310, label %9312, label %9311

; <label>:9311                                    ; preds = %9298
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9312

; <label>:9312                                    ; preds = %9311, %9298
  %9313 = add i32 %51, 356
  %9314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %9313, i32 undef)  ; BufferLoad(srv,index,wot)
  %9315 = extractvalue %dx.types.ResRet.i32 %9314, 0
  %9316 = and i32 %9315, 32
  %9317 = icmp eq i32 %9316, 0
  br i1 %9317, label %9324, label %9318

; <label>:9318                                    ; preds = %9312
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 0
  %9321 = fmul fast float %9320, 0x3FE99999A0000000
  %9322 = fadd fast float %9320, %9302
  %9323 = fadd fast float %9321, %9304
  br label %9324

; <label>:9324                                    ; preds = %9318, %9312, %9295
  %9325 = phi float [ 0.000000e+00, %9295 ], [ %7625, %9318 ], [ %7625, %9312 ]
  %9326 = phi float [ 0.000000e+00, %9295 ], [ %7627, %9318 ], [ %7627, %9312 ]
  %9327 = phi float [ %9297, %9295 ], [ %9322, %9318 ], [ %9302, %9312 ]
  %9328 = phi float [ 0.000000e+00, %9295 ], [ %9303, %9318 ], [ %9303, %9312 ]
  %9329 = phi float [ 0.000000e+00, %9295 ], [ %9323, %9318 ], [ %9304, %9312 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9330 = call float @dx.op.binary.f32(i32 36, float %9327, float 3.225500e+04)  ; FMin(a,b)
  %9331 = call float @dx.op.binary.f32(i32 36, float %9328, float 3.225500e+04)  ; FMin(a,b)
  %9332 = call float @dx.op.binary.f32(i32 36, float %9329, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9330)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9333 = call float @dx.op.binary.f32(i32 36, float %7623, float 3.225500e+04)  ; FMin(a,b)
  %9334 = call float @dx.op.binary.f32(i32 36, float %9325, float 3.225500e+04)  ; FMin(a,b)
  %9335 = call float @dx.op.binary.f32(i32 36, float %9326, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9334)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9335)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!64}
!dx.entryPoints = !{!65}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !53, !56}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
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
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !38}
!38 = !{i32 0, i32 14}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !38}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!53 = !{!54, !55}
!54 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!55 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!56 = !{!57, !58, !59, !60, !61, !62, !63}
!57 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!58 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!59 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!60 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!61 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!62 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!63 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!64 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!65 = !{void ()* @ps_main, !"ps_main", !66, !4, !93}
!66 = !{!67, !89, null}
!67 = !{!68, !71, !72, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88}
!68 = !{i32 0, !"SV_Position", i8 9, i8 3, !69, i8 4, i32 1, i8 4, i32 0, i8 0, !70}
!69 = !{i32 0}
!70 = !{i32 3, i32 15}
!71 = !{i32 1, !"COLOR", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 1, i8 0, !70}
!72 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 2, i8 0, !73}
!73 = !{i32 3, i32 3}
!74 = !{i32 3, !"NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 3, i8 0, !75}
!75 = !{i32 3, i32 7}
!76 = !{i32 4, !"TANGENT", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 4, i8 0, !70}
!77 = !{i32 5, !"SH_RED", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 5, i8 0, !70}
!78 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 6, i8 0, !70}
!79 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 7, i8 0, !70}
!80 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 8, i8 0, !75}
!81 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 9, i8 0, !70}
!82 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 2, i32 10, i8 0, !73}
!83 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 11, i8 0, !70}
!84 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 12, i8 0, !75}
!85 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !69, i8 1, i32 1, i8 2, i32 13, i8 0, !73}
!86 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !69, i8 1, i32 1, i8 4, i32 14, i8 0, !87}
!87 = !{i32 3, i32 1}
!88 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !69, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!89 = !{!90, !91}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!91 = !{i32 1, !"SV_Target", i8 9, i8 16, !92, i8 0, i32 1, i8 4, i32 1, i8 0, !70}
!92 = !{i32 1}
!93 = !{i32 0, i64 16}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !106, !108, !110}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !101, i64 0}
!126 = !{!127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!127 = distinct !{!127, !128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!128 = distinct !{!128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!129 = distinct !{!129, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!130 = distinct !{!130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!131 = distinct !{!131, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

