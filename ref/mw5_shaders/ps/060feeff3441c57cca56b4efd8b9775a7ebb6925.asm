;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
; ENTITY_IDS               0   xy         12     NONE    uint   xy  
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
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
; shader hash: 689def7d98b36184fef8a24a7cb6a72d
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
; COMP_FACTOR              0                 linear       
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
;                                   texture    byte         r/o     T44     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = alloca [12 x float], align 4
  %98 = alloca [12 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fmul fast float %104, %93
  %106 = fmul fast float %104, %94
  %107 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %108 = bitcast float %107 to i32
  %109 = ashr i32 %108, 1
  %110 = sub nsw i32 1597250115, %109
  %111 = bitcast i32 %110 to float
  %112 = fmul fast float %111, %84
  %113 = fmul fast float %111, %85
  %114 = fmul fast float %111, %86
  %115 = fmul fast float %85, %82
  %116 = fmul fast float %86, %81
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %86, %80
  %119 = fmul fast float %84, %82
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %84, %81
  %122 = fmul fast float %85, %80
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %117, %83
  %125 = fmul fast float %120, %83
  %126 = fmul fast float %123, %83
  %127 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %128 = bitcast float %127 to i32
  %129 = ashr i32 %128, 1
  %130 = sub nsw i32 1597250115, %129
  %131 = bitcast i32 %130 to float
  %132 = fmul fast float %131, %73
  %133 = fmul fast float %131, %74
  %134 = fmul fast float %131, %75
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = fcmp fast une float %136, 0.000000e+00
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %105, 2.000000e+00
  %142 = fmul fast float %141, %139
  %143 = fmul fast float %106, 2.000000e+00
  %144 = fmul fast float %143, %140
  %145 = fsub fast float 1.000000e+00, %142
  %146 = fsub fast float 1.000000e+00, %144
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = select i1 %137, float %148, float %152
  %156 = select i1 %137, float %149, float %153
  %157 = select i1 %137, float %150, float %154
  %158 = fmul fast float %155, %145
  %159 = fmul fast float %156, %145
  %160 = fmul fast float %157, %145
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = select i1 %137, float %162, float %166
  %170 = select i1 %137, float %163, float %167
  %171 = select i1 %137, float %164, float %168
  %172 = fmul fast float %169, %146
  %173 = fmul fast float %170, %146
  %174 = fmul fast float %171, %146
  %175 = fadd fast float %172, %158
  %176 = fadd fast float %173, %159
  %177 = fadd fast float %174, %160
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = select i1 %137, float %179, float %183
  %187 = select i1 %137, float %180, float %184
  %188 = select i1 %137, float %181, float %185
  %189 = fadd fast float %175, %186
  %190 = fadd fast float %176, %187
  %191 = fadd fast float %177, %188
  %192 = fmul fast float %189, %96
  %193 = fmul fast float %190, %96
  %194 = fmul fast float %191, %96
  %195 = shl i32 %53, 5
  %196 = add i32 %195, 4194304
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = extractvalue %dx.types.ResRet.i32 %197, 1
  %200 = extractvalue %dx.types.ResRet.i32 %197, 2
  %201 = extractvalue %dx.types.ResRet.i32 %197, 3
  %202 = add i32 %195, 4194320
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = extractvalue %dx.types.ResRet.i32 %203, 1
  %206 = bitcast i32 %204 to float
  %207 = bitcast i32 %205 to float
  %208 = fptoui float %105 to i32
  %209 = fptoui float %106 to i32
  %210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.i32 %210, 1
  %212 = shl i32 %211, 2
  %213 = extractvalue %dx.types.CBufRet.i32 %210, 3
  %214 = lshr i32 %209, 2
  %215 = extractvalue %dx.types.CBufRet.i32 %210, 2
  %216 = mul i32 %215, %214
  %217 = lshr i32 %208, 3
  %218 = add i32 %213, %217
  %219 = add i32 %218, %212
  %220 = add i32 %219, %216
  %221 = shl i32 %220, 2
  %222 = shl i32 %209, 3
  %223 = and i32 %222, 24
  %224 = and i32 %208, 7
  %225 = or i32 %223, %224
  %226 = shl i32 1, %225
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, %226
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %232, label %231

; <label>:231                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %232

; <label>:232                                     ; preds = %231, %0
  %233 = fmul fast float %105, 5.000000e-01
  %234 = fmul fast float %106, 5.000000e-01
  %235 = fptosi float %233 to i32
  %236 = fptosi float %234 to i32
  %237 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %235, i32 %236, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = lshr i32 %238, 18
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F4C00EBA0000000
  %242 = call float @dx.op.unary.f32(i32 21, float %241)  ; Exp(value)
  %243 = fadd fast float %242, -1.000000e+00
  %244 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %245 = extractvalue %dx.types.Dimensions %244, 0
  %246 = sitofp i32 %245 to float
  %247 = extractvalue %dx.types.Dimensions %244, 1
  %248 = sitofp i32 %247 to float
  %249 = fcmp fast oge float %233, %246
  %250 = fcmp fast oge float %234, %248
  %251 = or i1 %249, %250
  %252 = select i1 %251, float 0x4197782600000000, float %243
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 3
  %256 = fmul fast float %254, %105
  %257 = fmul fast float %255, %106
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 114688
  %261 = icmp ne i32 %260, 0
  %262 = select i1 %261, float %256, float 0.000000e+00
  %263 = select i1 %261, float %257, float 0.000000e+00
  %264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %47, float %262, float %263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = fmul fast float %265, 2.550000e+02
  %267 = fptoui float %266 to i32
  %268 = select i1 %261, i32 %267, i32 0
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.i32 %270, 3
  %272 = and i32 %271, 3
  %273 = icmp ne i32 %272, 0
  %274 = and i32 %271, 4
  %275 = icmp ne i32 %274, 0
  %276 = and i1 %273, %275
  br i1 %276, label %277, label %288

; <label>:277                                     ; preds = %232
  %278 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %279 = fmul fast float %278, %106
  %280 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %281 = fmul fast float %280, %105
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %46, float %281, float %279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fsub fast float 1.000000e+00, %283
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = fcmp fast olt float %284, %286
  br label %291

; <label>:288                                     ; preds = %232
  %289 = icmp eq i32 %274, 0
  %290 = and i1 %273, %289
  br label %291

; <label>:291                                     ; preds = %288, %277
  %292 = phi i1 [ %287, %277 ], [ %290, %288 ]
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %295 = fmul fast float %294, 0x3FE3C6EF40000000
  %296 = frem fast float %105, 2.560000e+02
  %297 = frem fast float %106, 2.560000e+02
  %298 = fptoui float %296 to i32
  %299 = fptoui float %297 to i32
  %300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %298, i32 %299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fadd fast float %301, %295
  %303 = call float @dx.op.unary.f32(i32 22, float %302)  ; Frc(value)
  %304 = add i32 %52, 156
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %52, 216
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %52, 36
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %52, 288
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = mul i32 %54, 100
  %347 = add i32 %346, 28
  %348 = add i32 %346, 40
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = add i32 %52, 172
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = shl i32 %353, 4
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %353, 7
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %353, 22
  %361 = shl nuw nsw i32 %360, 5
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = add i32 %52, 232
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = lshr i32 %365, 8
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %365, 16
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = add i32 %52, 52
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %379, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = add i32 %52, 304
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %402 = and i32 %350, 1
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %395, float %356
  %405 = select i1 %403, float %398, float %359
  %406 = select i1 %403, float %401, float %362
  %407 = add i32 %346, 44
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = fmul fast float %409, %404
  %411 = fmul fast float %409, %405
  %412 = fmul fast float %409, %406
  %413 = add i32 %346, 48
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = shl i32 %415, 4
  %417 = and i32 %416, 32752
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %415, 7
  %420 = and i32 %419, 32752
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %415, 22
  %423 = shl nuw nsw i32 %422, 5
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = and i32 %350, 8
  %426 = icmp ne i32 %425, 0
  %427 = select i1 %426, float %418, float %368
  %428 = select i1 %426, float %421, float %372
  %429 = select i1 %426, float %424, float %376
  %430 = add i32 %346, 52
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 65535
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %432, 16
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = and i32 %350, 2
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %434, float %381
  %440 = select i1 %438, float %436, float %383
  %441 = add i32 %346, 56
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 65535
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %443, 16
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = and i32 %350, 4
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %449, float %445, float %388
  %451 = fmul float %450, 0x3F50624DE0000000
  %452 = select i1 %449, float %447, float %390
  %453 = fmul float %452, 0x3F50624DE0000000
  %454 = add i32 %346, 60
  %455 = add i32 %346, 32
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = add i32 %52, 188
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = shl i32 %460, 4
  %462 = and i32 %461, 32752
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %460, 7
  %465 = and i32 %464, 32752
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = lshr i32 %460, 22
  %468 = shl nuw nsw i32 %467, 5
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = add i32 %52, 248
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 255
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %474, 0x3F70101020000000
  %476 = lshr i32 %472, 8
  %477 = and i32 %476, 255
  %478 = uitofp i32 %477 to float
  %479 = fmul fast float %478, 0x3F70101020000000
  %480 = lshr i32 %472, 16
  %481 = and i32 %480, 255
  %482 = uitofp i32 %481 to float
  %483 = fmul fast float %482, 0x3F70101020000000
  %484 = add i32 %52, 68
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 65535
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %486, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = add i32 %52, 320
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 65535
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = lshr i32 %493, 16
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = shl i32 %499, 4
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %499, 7
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 22
  %507 = shl nuw nsw i32 %506, 5
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = and i32 %457, 1
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %502, float %463
  %512 = select i1 %510, float %505, float %466
  %513 = select i1 %510, float %508, float %469
  %514 = add i32 %346, 64
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = fmul fast float %516, %511
  %518 = fmul fast float %516, %512
  %519 = fmul fast float %516, %513
  %520 = add i32 %346, 68
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = shl i32 %522, 4
  %524 = and i32 %523, 32752
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = lshr i32 %522, 7
  %527 = and i32 %526, 32752
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %522, 22
  %530 = shl nuw nsw i32 %529, 5
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = and i32 %457, 8
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %533, float %525, float %475
  %535 = select i1 %533, float %528, float %479
  %536 = select i1 %533, float %531, float %483
  %537 = add i32 %346, 72
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 65535
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %539, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = and i32 %457, 2
  %545 = icmp ne i32 %544, 0
  %546 = select i1 %545, float %541, float %488
  %547 = select i1 %545, float %543, float %490
  %548 = add i32 %346, 76
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %550, 16
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = and i32 %457, 4
  %556 = icmp ne i32 %555, 0
  %557 = select i1 %556, float %552, float %495
  %558 = fmul float %557, 0x3F50624DE0000000
  %559 = select i1 %556, float %554, float %497
  %560 = fmul float %559, 0x3F50624DE0000000
  %561 = add i32 %346, 80
  %562 = add i32 %346, 36
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = add i32 %52, 204
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = shl i32 %567, 4
  %569 = and i32 %568, 32752
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %567, 7
  %572 = and i32 %571, 32752
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %567, 22
  %575 = shl nuw nsw i32 %574, 5
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = add i32 %52, 264
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = lshr i32 %579, 8
  %584 = and i32 %583, 255
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = lshr i32 %579, 16
  %588 = and i32 %587, 255
  %589 = uitofp i32 %588 to float
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = add i32 %52, 84
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %593, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = add i32 %52, 336
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 65535
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = lshr i32 %600, 16
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = shl i32 %606, 4
  %608 = and i32 %607, 32752
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = lshr i32 %606, 7
  %611 = and i32 %610, 32752
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %606, 22
  %614 = shl nuw nsw i32 %613, 5
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = and i32 %564, 1
  %617 = icmp ne i32 %616, 0
  %618 = select i1 %617, float %609, float %570
  %619 = select i1 %617, float %612, float %573
  %620 = select i1 %617, float %615, float %576
  %621 = add i32 %346, 84
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = fmul fast float %623, %618
  %625 = fmul fast float %623, %619
  %626 = fmul fast float %623, %620
  %627 = add i32 %346, 88
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = shl i32 %629, 4
  %631 = and i32 %630, 32752
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %629, 7
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %629, 22
  %637 = shl nuw nsw i32 %636, 5
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = and i32 %564, 8
  %640 = icmp ne i32 %639, 0
  %641 = select i1 %640, float %632, float %582
  %642 = select i1 %640, float %635, float %586
  %643 = select i1 %640, float %638, float %590
  %644 = add i32 %346, 92
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = and i32 %646, 65535
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = lshr i32 %646, 16
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = and i32 %564, 2
  %652 = icmp ne i32 %651, 0
  %653 = select i1 %652, float %648, float %595
  %654 = select i1 %652, float %650, float %597
  %655 = add i32 %346, 96
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 65535
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = lshr i32 %657, 16
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = and i32 %564, 4
  %663 = icmp ne i32 %662, 0
  %664 = select i1 %663, float %659, float %602
  %665 = fmul float %664, 0x3F50624DE0000000
  %666 = select i1 %663, float %661, float %604
  %667 = fmul float %666, 0x3F50624DE0000000
  %668 = add i32 %52, 348
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 32
  %672 = icmp eq i32 %671, 0
  %673 = and i32 %670, 64
  %674 = icmp eq i32 %673, 0
  %675 = and i32 %670, 128
  %676 = icmp eq i32 %675, 0
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 2
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %696, label %681

; <label>:681                                     ; preds = %291
  %682 = add i32 %52, 540
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = add i32 %684, 0
  %686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %686, %dx.types.Handle %102, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  %692 = fmul fast float %691, %89
  %693 = fmul fast float %688, %90
  %694 = fmul fast float %689, %91
  %695 = fmul fast float %690, %92
  br label %696

; <label>:696                                     ; preds = %681, %291
  %697 = phi float [ %92, %291 ], [ %695, %681 ]
  %698 = phi float [ %91, %291 ], [ %694, %681 ]
  %699 = phi float [ %90, %291 ], [ %693, %681 ]
  %700 = phi float [ %89, %291 ], [ %692, %681 ]
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 2
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %724, label %705

; <label>:705                                     ; preds = %696
  %706 = add i32 %52, 44
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = and i32 %708, 1
  %710 = icmp ne i32 %709, 0
  %711 = select i1 %710, float %699, float 1.000000e+00
  %712 = add i32 %52, 60
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 1
  %716 = icmp ne i32 %715, 0
  %717 = select i1 %716, float %698, float 1.000000e+00
  %718 = add i32 %52, 76
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 1
  %722 = icmp ne i32 %721, 0
  %723 = select i1 %722, float %697, float 1.000000e+00
  br label %724

; <label>:724                                     ; preds = %705, %696
  %725 = phi float [ %697, %696 ], [ %723, %705 ]
  %726 = phi float [ %698, %696 ], [ %717, %705 ]
  %727 = phi float [ %699, %696 ], [ %711, %705 ]
  %728 = lshr i32 %702, 20
  %729 = and i32 %728, 3
  %730 = add nuw nsw i32 %729, 1
  %731 = add i32 %52, 24
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %52, 28
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = or i32 %736, %733
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %1352, label %739

; <label>:739                                     ; preds = %724
  %740 = and i32 %733, 262144
  %741 = icmp ne i32 %740, 0
  %742 = select i1 %741, float %59, float 1.000000e+00
  %743 = select i1 %741, float %60, float 0.000000e+00
  %744 = select i1 %741, float %61, float 0.000000e+00
  %745 = select i1 %741, float %62, float 1.000000e+00
  %746 = select i1 %741, float %63, float %87
  %747 = select i1 %741, float %64, float %88
  %748 = add i32 %52, 284
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = lshr i32 %750, 16
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = fmul fast float %752, 0x3F50624DE0000000
  %754 = add i32 %52, 88
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = lshr i32 %756, 16
  %758 = and i32 %757, 255
  %759 = lshr i32 %756, 24
  %760 = add i32 %52, 292
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 65535
  %764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %763)  ; LegacyF16ToF32(value)
  %765 = lshr i32 %762, 16
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = add i32 %52, 32
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = lshr i32 %769, 22
  %771 = shl nuw nsw i32 %770, 5
  %772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %771)  ; LegacyF16ToF32(value)
  %773 = shl i32 %769, 4
  %774 = and i32 %773, 32752
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = lshr i32 %769, 7
  %777 = and i32 %776, 32752
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %781 = fmul fast float %780, 1.000000e+03
  %782 = fmul fast float %344, %781
  %783 = call float @dx.op.unary.f32(i32 22, float %782)  ; Frc(value)
  %784 = fadd fast float %783, %334
  %785 = fmul fast float %345, %781
  %786 = call float @dx.op.unary.f32(i32 22, float %785)  ; Frc(value)
  %787 = fadd fast float %786, %336
  %788 = fmul fast float %753, %781
  %789 = call float @dx.op.unary.f32(i32 22, float %788)  ; Frc(value)
  %790 = fmul fast float %789, 0x401921FB60000000
  %791 = fadd fast float %790, %772
  %792 = call float @dx.op.unary.f32(i32 13, float %791)  ; Sin(value)
  %793 = call float @dx.op.unary.f32(i32 12, float %791)  ; Cos(value)
  %794 = fsub fast float -0.000000e+00, %792
  %795 = fadd fast float %746, -5.000000e-01
  %796 = fadd fast float %747, -5.000000e-01
  %797 = fmul fast float %764, %795
  %798 = fmul fast float %766, %796
  %799 = fadd fast float %797, 5.000000e-01
  %800 = fadd fast float %798, 5.000000e-01
  %801 = fmul fast float %775, %799
  %802 = fmul fast float %778, %800
  %803 = fmul fast float %793, %801
  %804 = call float @dx.op.tertiary.f32(i32 46, float %794, float %802, float %803)  ; FMad(a,b,c)
  %805 = fmul fast float %792, %801
  %806 = call float @dx.op.tertiary.f32(i32 46, float %793, float %802, float %805)  ; FMad(a,b,c)
  %807 = fadd fast float %784, %804
  %808 = fadd fast float %787, %806
  %809 = icmp ugt i32 %758, 1
  %810 = icmp ugt i32 %756, 33554431
  %811 = or i1 %810, %809
  br i1 %811, label %812, label %837

; <label>:812                                     ; preds = %739
  %813 = add i32 %52, 228
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = lshr i32 %815, 16
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = fmul fast float %780, %817
  %819 = call float @dx.op.unary.f32(i32 22, float %818)  ; Frc(value)
  %820 = mul nuw nsw i32 %758, %759
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %819, %821
  %823 = call float @dx.op.unary.f32(i32 27, float %822)  ; Round_ni(value)
  %824 = fptoui float %823 to i32
  %825 = urem i32 %824, %758
  %826 = udiv i32 %824, %759
  %827 = call float @dx.op.unary.f32(i32 22, float %807)  ; Frc(value)
  %828 = call float @dx.op.unary.f32(i32 22, float %808)  ; Frc(value)
  %829 = uitofp i32 %825 to float
  %830 = uitofp i32 %826 to float
  %831 = fadd fast float %827, %829
  %832 = fadd fast float %828, %830
  %833 = uitofp i32 %758 to float
  %834 = uitofp i32 %759 to float
  %835 = fdiv fast float %831, %833
  %836 = fdiv fast float %832, %834
  br label %837

; <label>:837                                     ; preds = %812, %739
  %838 = phi float [ %835, %812 ], [ %807, %739 ]
  %839 = phi float [ %836, %812 ], [ %808, %739 ]
  %840 = and i32 %733, 256
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %888, label %842

; <label>:842                                     ; preds = %837
  %843 = add i32 %52, 472
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = add i32 %845, 0
  %847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %848 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %847, %dx.types.Handle %102, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = add i32 %52, 100
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = shl i32 %852, 4
  %854 = and i32 %853, 32752
  %855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %854)  ; LegacyF16ToF32(value)
  %856 = lshr i32 %852, 7
  %857 = and i32 %856, 32752
  %858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %857)  ; LegacyF16ToF32(value)
  %859 = fsub fast float 1.000000e+00, %700
  %860 = call float @dx.op.binary.f32(i32 35, float %859, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %861 = bitcast float %700 to i32
  %862 = sitofp i32 %861 to float
  %863 = fadd fast float %862, 0xC1CFBF8940000000
  %864 = fmul fast float %858, %863
  %865 = fadd fast float %864, 0x41CFBF8940000000
  %866 = fptosi float %865 to i32
  %867 = bitcast i32 %866 to float
  %868 = bitcast float %860 to i32
  %869 = sitofp i32 %868 to float
  %870 = fadd fast float %869, 0xC1CFBF8940000000
  %871 = fmul fast float %870, %858
  %872 = fadd fast float %871, 0x41CFBF8940000000
  %873 = fptosi float %872 to i32
  %874 = bitcast i32 %873 to float
  %875 = fmul fast float %867, %855
  %876 = fmul fast float %874, %855
  %877 = fsub fast float %860, %875
  %878 = fadd fast float %876, %860
  %879 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %880 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %881 = fsub fast float %849, %879
  %882 = fsub fast float %880, %879
  %883 = bitcast float %882 to i32
  %884 = sub nsw i32 2129859010, %883
  %885 = bitcast i32 %884 to float
  %886 = fmul fast float %885, %881
  %887 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  br label %888

; <label>:888                                     ; preds = %842, %837
  %889 = phi float [ %887, %842 ], [ %700, %837 ]
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = and i32 %891, 128
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %910, label %894

; <label>:894                                     ; preds = %888
  %895 = add i32 %52, 456
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = add i32 %897, 0
  %899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %899, %dx.types.Handle %102, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = and i32 %903, 524288
  %905 = icmp ne i32 %904, 0
  %906 = fcmp fast ogt float %901, 0x3FE0101020000000
  %907 = select i1 %906, float 1.000000e+00, float 0.000000e+00
  %908 = select i1 %905, float %907, float %901
  %909 = fmul fast float %908, %889
  br label %910

; <label>:910                                     ; preds = %894, %888
  %911 = phi float [ %909, %894 ], [ %889, %888 ]
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 16
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %1114, label %916

; <label>:916                                     ; preds = %910
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = add i32 %52, 408
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %921, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %101, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = extractvalue %dx.types.ResRet.f32 %924, 1
  %927 = extractvalue %dx.types.ResRet.f32 %924, 2
  %928 = extractvalue %dx.types.ResRet.f32 %924, 3
  %929 = and i32 %918, 255
  %930 = uitofp i32 %929 to float
  %931 = lshr i32 %918, 8
  %932 = and i32 %931, 255
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %928, %930
  %935 = fadd fast float %934, %933
  %936 = fmul fast float %935, 0x3F70101000000000
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = and i32 %938, 512
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %949, label %941

; <label>:941                                     ; preds = %916
  %942 = add i32 %52, 492
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = add i32 %944, 0
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %946, %dx.types.Handle %102, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  br label %949

; <label>:949                                     ; preds = %941, %916
  %950 = phi float [ %948, %941 ], [ 1.000000e+00, %916 ]
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 33554432
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %1061, label %955

; <label>:955                                     ; preds = %949
  %956 = add i32 %52, 224
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = and i32 %958, 65535
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = lshr i32 %958, 16
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = add i32 %52, 228
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 65535
  %967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %966)  ; LegacyF16ToF32(value)
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = lshr i32 %969, 24
  %971 = uitofp i32 %970 to float
  %972 = fmul fast float %971, 0x3F70101020000000
  %973 = and i32 %969, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = lshr i32 %969, 8
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = lshr i32 %969, 16
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101020000000
  %984 = add i32 %52, 220
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = lshr i32 %986, 24
  %988 = uitofp i32 %987 to float
  %989 = fmul fast float %988, 0x3F70101020000000
  %990 = and i32 %986, 255
  %991 = uitofp i32 %990 to float
  %992 = fmul fast float %991, 0x3F70101020000000
  %993 = lshr i32 %986, 8
  %994 = and i32 %993, 255
  %995 = uitofp i32 %994 to float
  %996 = fmul fast float %995, 0x3F70101020000000
  %997 = lshr i32 %986, 16
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = fmul fast float %999, 0x3F70101020000000
  %1001 = bitcast float %925 to i32
  %1002 = ashr i32 %1001, 1
  %1003 = sub nsw i32 1597463174, %1002
  %1004 = bitcast i32 %1003 to float
  %1005 = fmul fast float %925, 5.000000e-01
  %1006 = fmul fast float %1004, %1004
  %1007 = fmul fast float %1006, %1005
  %1008 = fsub fast float 1.500000e+00, %1007
  %1009 = fmul fast float %1004, %925
  %1010 = fmul fast float %1009, %1008
  %1011 = bitcast float %926 to i32
  %1012 = ashr i32 %1011, 1
  %1013 = sub nsw i32 1597463174, %1012
  %1014 = bitcast i32 %1013 to float
  %1015 = fmul fast float %926, 5.000000e-01
  %1016 = fmul fast float %1014, %1014
  %1017 = fmul fast float %1016, %1015
  %1018 = fsub fast float 1.500000e+00, %1017
  %1019 = fmul fast float %1014, %926
  %1020 = fmul fast float %1019, %1018
  %1021 = bitcast float %927 to i32
  %1022 = ashr i32 %1021, 1
  %1023 = sub nsw i32 1597463174, %1022
  %1024 = bitcast i32 %1023 to float
  %1025 = fmul fast float %927, 5.000000e-01
  %1026 = fmul fast float %1024, %1024
  %1027 = fmul fast float %1026, %1025
  %1028 = fsub fast float 1.500000e+00, %1027
  %1029 = fmul fast float %1024, %927
  %1030 = fmul fast float %1029, %1028
  %1031 = fsub fast float %1010, %992
  %1032 = fsub fast float %1020, %996
  %1033 = fsub fast float %1030, %1000
  %1034 = fmul fast float %1031, %960
  %1035 = fmul fast float %1032, %962
  %1036 = fmul fast float %1033, %967
  %1037 = fadd fast float %1034, %975
  %1038 = fadd fast float %1035, %979
  %1039 = fadd fast float %1036, %983
  %1040 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1041 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1042 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1043 = fmul fast float %1040, %1040
  %1044 = fmul fast float %1041, %1041
  %1045 = fmul fast float %1042, %1042
  %1046 = fsub fast float %1043, %925
  %1047 = fsub fast float %1044, %926
  %1048 = fsub fast float %1045, %927
  %1049 = fmul fast float %1046, %950
  %1050 = fmul fast float %1047, %950
  %1051 = fmul fast float %1048, %950
  %1052 = fadd fast float %1049, %925
  %1053 = fadd fast float %1050, %926
  %1054 = fadd fast float %1051, %927
  %1055 = fadd fast float %972, %936
  %1056 = fsub fast float %1055, %989
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1058 = fsub fast float %1057, %936
  %1059 = fmul fast float %1058, %950
  %1060 = fadd fast float %1059, %936
  br label %1114

; <label>:1061                                    ; preds = %949
  %1062 = and i32 %952, 134217728
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1098, label %1064

; <label>:1064                                    ; preds = %1061
  %1065 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %1066 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1067 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1068 = fadd fast float %1065, -5.000000e-01
  %1069 = fadd fast float %1066, -5.000000e-01
  %1070 = fadd fast float %1067, -5.000000e-01
  %1071 = fmul fast float %1068, %950
  %1072 = fmul fast float %1069, %950
  %1073 = fmul fast float %1070, %950
  %1074 = fadd fast float %1071, 5.000000e-01
  %1075 = fadd fast float %1072, 5.000000e-01
  %1076 = fadd fast float %1073, 5.000000e-01
  %1077 = call float @dx.op.unary.f32(i32 24, float %925)  ; Sqrt(value)
  %1078 = call float @dx.op.unary.f32(i32 24, float %926)  ; Sqrt(value)
  %1079 = call float @dx.op.unary.f32(i32 24, float %927)  ; Sqrt(value)
  %1080 = fmul fast float %1074, 2.000000e+00
  %1081 = fsub fast float 1.000000e+00, %1080
  %1082 = fmul fast float %1081, %1077
  %1083 = fadd fast float %1082, %1080
  %1084 = fmul fast float %1083, %1077
  %1085 = fmul fast float %1075, 2.000000e+00
  %1086 = fsub fast float 1.000000e+00, %1085
  %1087 = fmul fast float %1086, %1078
  %1088 = fadd fast float %1087, %1085
  %1089 = fmul fast float %1088, %1078
  %1090 = fmul fast float %1076, 2.000000e+00
  %1091 = fsub fast float 1.000000e+00, %1090
  %1092 = fmul fast float %1091, %1079
  %1093 = fadd fast float %1092, %1090
  %1094 = fmul fast float %1093, %1079
  %1095 = fmul fast float %1084, %1084
  %1096 = fmul fast float %1089, %1089
  %1097 = fmul fast float %1094, %1094
  br label %1114

; <label>:1098                                    ; preds = %1061
  %1099 = fmul fast float %321, %321
  %1100 = fmul fast float %325, %325
  %1101 = fmul fast float %329, %329
  %1102 = fadd fast float %1099, -1.000000e+00
  %1103 = fadd fast float %1100, -1.000000e+00
  %1104 = fadd fast float %1101, -1.000000e+00
  %1105 = fmul fast float %950, %1102
  %1106 = fmul fast float %950, %1103
  %1107 = fmul fast float %950, %1104
  %1108 = fadd fast float %1105, 1.000000e+00
  %1109 = fadd fast float %1106, 1.000000e+00
  %1110 = fadd fast float %1107, 1.000000e+00
  %1111 = fmul fast float %1108, %925
  %1112 = fmul fast float %1109, %926
  %1113 = fmul fast float %1110, %927
  br label %1114

; <label>:1114                                    ; preds = %1098, %1064, %955, %910
  %1115 = phi float [ %1060, %955 ], [ %936, %1064 ], [ %936, %1098 ], [ 0x3FA23C0BE0000000, %910 ]
  %1116 = phi float [ %1052, %955 ], [ %1095, %1064 ], [ %1111, %1098 ], [ 1.000000e+00, %910 ]
  %1117 = phi float [ %1053, %955 ], [ %1096, %1064 ], [ %1112, %1098 ], [ 1.000000e+00, %910 ]
  %1118 = phi float [ %1054, %955 ], [ %1097, %1064 ], [ %1113, %1098 ], [ 1.000000e+00, %910 ]
  %1119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.i32 %1119, 1
  %1121 = and i32 %1120, 1
  %1122 = icmp ne i32 %1121, 0
  %1123 = add i32 %52, 356
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = and i32 %1125, 32
  %1127 = icmp ne i32 %1126, 0
  %1128 = and i1 %1122, %1127
  %1129 = select i1 %1128, float 1.000000e+00, float %1116
  %1130 = select i1 %1128, float 0x3FD3333340000000, float %1117
  %1131 = select i1 %1128, float 0x3FD3333340000000, float %1118
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 32
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1208, label %1136

; <label>:1136                                    ; preds = %1114
  %1137 = add i32 %52, 92
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %52, 424
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = add i32 %1142, 0
  %1144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1144, %dx.types.Handle %101, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1149 = extractvalue %dx.types.ResRet.f32 %1145, 3
  %1150 = and i32 %1139, 255
  %1151 = uitofp i32 %1150 to float
  %1152 = lshr i32 %1139, 8
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = lshr i32 %1139, 16
  %1156 = and i32 %1155, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3F70101000000000
  %1159 = fmul fast float %1146, %1151
  %1160 = fadd fast float %1159, %1154
  %1161 = fmul fast float %1160, 0x3F70101000000000
  %1162 = fadd fast float %1147, -5.000000e-01
  %1163 = fadd fast float %1149, -5.000000e-01
  %1164 = fmul fast float %1162, %1158
  %1165 = fmul fast float %1163, %1158
  %1166 = fadd fast float %1164, 5.000000e-01
  %1167 = fadd fast float %1165, 5.000000e-01
  %1168 = fmul fast float %1166, 2.000000e+00
  %1169 = fadd fast float %1168, -1.000000e+00
  %1170 = fmul fast float %1167, 2.000000e+00
  %1171 = fadd fast float %1170, -1.000000e+00
  %1172 = fadd fast float %1169, %1171
  %1173 = fmul fast float %1172, 5.000000e-01
  %1174 = fsub fast float %1169, %1171
  %1175 = fmul fast float %1174, 5.000000e-01
  %1176 = call float @dx.op.unary.f32(i32 6, float %1173)  ; FAbs(value)
  %1177 = fsub fast float 1.000000e+00, %1176
  %1178 = call float @dx.op.unary.f32(i32 6, float %1175)  ; FAbs(value)
  %1179 = fsub fast float %1177, %1178
  %1180 = call float @dx.op.dot3.f32(i32 55, float %1173, float %1175, float %1179, float %1173, float %1175, float %1179)  ; Dot3(ax,ay,az,bx,by,bz)
  %1181 = call float @dx.op.unary.f32(i32 25, float %1180)  ; Rsqrt(value)
  %1182 = fmul fast float %1173, %1181
  %1183 = fmul fast float %1175, %1181
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 67108864
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1204, label %1188

; <label>:1188                                    ; preds = %1136
  %1189 = add i32 %52, 280
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = and i32 %1191, 65535
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 65535
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = lshr i32 %1191, 16
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = fsub fast float %1161, %1199
  %1201 = fmul fast float %1200, %1193
  %1202 = fadd fast float %1201, %1197
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  br label %1204

; <label>:1204                                    ; preds = %1188, %1136
  %1205 = phi float [ %1203, %1188 ], [ %1161, %1136 ]
  %1206 = call float @dx.op.dot2.f32(i32 54, float %1182, float %1183, float %742, float %743)  ; Dot2(ax,ay,bx,by)
  %1207 = call float @dx.op.dot2.f32(i32 54, float %1182, float %1183, float %744, float %745)  ; Dot2(ax,ay,bx,by)
  br label %1208

; <label>:1208                                    ; preds = %1204, %1114
  %1209 = phi float [ %1205, %1204 ], [ 0x3FD6666660000000, %1114 ]
  %1210 = phi float [ %1206, %1204 ], [ 0.000000e+00, %1114 ]
  %1211 = phi float [ %1207, %1204 ], [ 0.000000e+00, %1114 ]
  %1212 = phi float [ %1148, %1204 ], [ 1.000000e+00, %1114 ]
  %1213 = add i32 %52, 160
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = lshr i32 %1215, 22
  %1217 = shl nuw nsw i32 %1216, 5
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 64
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1256, label %1223

; <label>:1223                                    ; preds = %1208
  %1224 = add i32 %52, 440
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %1226, 0
  %1228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 131072
  %1232 = icmp eq i32 %1231, 0
  %1233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1228, %dx.types.Handle %101, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  %1237 = fmul fast float %1234, %309
  %1238 = fmul fast float %1235, %312
  %1239 = fmul fast float %1236, %315
  br i1 %1232, label %1246, label %1240

; <label>:1240                                    ; preds = %1223
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = fmul fast float %1242, %1237
  %1244 = fmul fast float %1242, %1238
  %1245 = fmul fast float %1242, %1239
  br label %1246

; <label>:1246                                    ; preds = %1240, %1223
  %1247 = phi float [ %1243, %1240 ], [ %1237, %1223 ]
  %1248 = phi float [ %1244, %1240 ], [ %1238, %1223 ]
  %1249 = phi float [ %1245, %1240 ], [ %1239, %1223 ]
  %1250 = fmul fast float %1247, %1218
  %1251 = select i1 %292, float %1250, float %1247
  %1252 = call float @dx.op.dot3.f32(i32 55, float %1251, float %1248, float %1249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1253 = select i1 %292, float 0.000000e+00, float %1247
  %1254 = select i1 %292, float %1252, float %1248
  %1255 = select i1 %292, float 0.000000e+00, float %1249
  br label %1256

; <label>:1256                                    ; preds = %1246, %1208
  %1257 = phi float [ %1253, %1246 ], [ 0.000000e+00, %1208 ]
  %1258 = phi float [ %1254, %1246 ], [ 0.000000e+00, %1208 ]
  %1259 = phi float [ %1255, %1246 ], [ 0.000000e+00, %1208 ]
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = and i32 %1261, 1024
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %1294, label %1264

; <label>:1264                                    ; preds = %1256
  %1265 = add i32 %52, 152
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = lshr i32 %1267, 8
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F70101020000000
  %1275 = lshr i32 %1267, 16
  %1276 = and i32 %1275, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = fmul fast float %1277, 0x3F70101020000000
  %1279 = fmul fast float %1270, %1270
  %1280 = fmul fast float %1274, %1274
  %1281 = fmul fast float %1278, %1278
  %1282 = add i32 %52, 508
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = add i32 %1284, 0
  %1286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1286, %dx.types.Handle %102, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.ResRet.f32 %1287, 2
  %1291 = fmul fast float %1279, %1288
  %1292 = fmul fast float %1280, %1289
  %1293 = fmul fast float %1281, %1290
  br label %1294

; <label>:1294                                    ; preds = %1264, %1256
  %1295 = phi float [ %1291, %1264 ], [ 0.000000e+00, %1256 ]
  %1296 = phi float [ %1292, %1264 ], [ 0.000000e+00, %1256 ]
  %1297 = phi float [ %1293, %1264 ], [ 0.000000e+00, %1256 ]
  %1298 = fcmp fast ogt float %1295, 0.000000e+00
  %1299 = fcmp fast ogt float %1296, 0.000000e+00
  %1300 = fcmp fast ogt float %1297, 0.000000e+00
  %1301 = call float @dx.op.unary.f32(i32 23, float %1295)  ; Log(value)
  %1302 = call float @dx.op.unary.f32(i32 23, float %1296)  ; Log(value)
  %1303 = call float @dx.op.unary.f32(i32 23, float %1297)  ; Log(value)
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = lshr i32 %1305, 7
  %1307 = and i32 %1306, 32752
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = fmul fast float %1301, 0xBFE62E4300000000
  %1310 = fmul fast float %1309, %1308
  %1311 = fmul fast float %1302, 0xBFE62E4300000000
  %1312 = fmul fast float %1311, %1308
  %1313 = fmul fast float %1303, 0xBFE62E4300000000
  %1314 = fmul fast float %1313, %1308
  %1315 = select i1 %1298, float %1310, float 1.270000e+02
  %1316 = select i1 %1299, float %1312, float 1.270000e+02
  %1317 = select i1 %1300, float %1314, float 1.270000e+02
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 2048
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1337, label %1322

; <label>:1322                                    ; preds = %1294
  %1323 = add i32 %52, 524
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = add i32 %1325, 0
  %1327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1327, %dx.types.Handle %102, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 3
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = shl i32 %1331, 4
  %1333 = and i32 %1332, 32752
  %1334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1333)  ; LegacyF16ToF32(value)
  %1335 = fmul fast float %1334, %1329
  %1336 = call float @dx.op.binary.f32(i32 35, float %1335, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1337

; <label>:1337                                    ; preds = %1322, %1294
  %1338 = phi float [ %1336, %1322 ], [ 0x3F70101020000000, %1294 ]
  %1339 = add i32 %52, 96
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = lshr i32 %1341, 8
  %1345 = and i32 %1344, 255
  %1346 = uitofp i32 %1345 to float
  %1347 = call float @dx.op.dot3.f32(i32 55, float %1129, float %1130, float %1131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1348 = fmul fast float %1346, %1347
  %1349 = fadd fast float %1348, %1343
  %1350 = fmul fast float %1349, 0x3F70101020000000
  %1351 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  br label %1352

; <label>:1352                                    ; preds = %1337, %724
  %1353 = phi float [ 0.000000e+00, %724 ], [ %1210, %1337 ]
  %1354 = phi float [ 0.000000e+00, %724 ], [ %1211, %1337 ]
  %1355 = phi float [ 0.000000e+00, %724 ], [ %1129, %1337 ]
  %1356 = phi float [ 0.000000e+00, %724 ], [ %1130, %1337 ]
  %1357 = phi float [ 0.000000e+00, %724 ], [ %1131, %1337 ]
  %1358 = phi float [ 0.000000e+00, %724 ], [ %1257, %1337 ]
  %1359 = phi float [ 0.000000e+00, %724 ], [ %1258, %1337 ]
  %1360 = phi float [ 0.000000e+00, %724 ], [ %1259, %1337 ]
  %1361 = phi float [ 0.000000e+00, %724 ], [ %1315, %1337 ]
  %1362 = phi float [ 0.000000e+00, %724 ], [ %1316, %1337 ]
  %1363 = phi float [ 0.000000e+00, %724 ], [ %1317, %1337 ]
  %1364 = phi float [ 0.000000e+00, %724 ], [ %1115, %1337 ]
  %1365 = phi float [ 0.000000e+00, %724 ], [ %911, %1337 ]
  %1366 = phi float [ 0.000000e+00, %724 ], [ %1209, %1337 ]
  %1367 = phi float [ 0.000000e+00, %724 ], [ %1212, %1337 ]
  %1368 = phi float [ 0.000000e+00, %724 ], [ %1338, %1337 ]
  %1369 = phi float [ 0.000000e+00, %724 ], [ %1351, %1337 ]
  br i1 %672, label %2236, label %1370

; <label>:1370                                    ; preds = %1352
  %1371 = icmp ult i32 %730, 2
  %1372 = add i32 %52, 40
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = add i32 %52, 44
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = or i32 %1377, %1374
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %2236, label %1380

; <label>:1380                                    ; preds = %1370
  %1381 = and i32 %1374, 262144
  %1382 = icmp ne i32 %1381, 0
  %1383 = select i1 %1382, float %59, float 1.000000e+00
  %1384 = select i1 %1382, float %60, float 0.000000e+00
  %1385 = select i1 %1382, float %61, float 0.000000e+00
  %1386 = select i1 %1382, float %62, float 1.000000e+00
  %1387 = select i1 %1382, float %63, float %87
  %1388 = select i1 %1382, float %64, float %88
  %1389 = add i32 %52, 300
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = lshr i32 %1391, 16
  %1393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1392)  ; LegacyF16ToF32(value)
  %1394 = fmul fast float %1393, 0x3F50624DE0000000
  %1395 = add i32 %52, 104
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = lshr i32 %1397, 16
  %1399 = and i32 %1398, 255
  %1400 = lshr i32 %1397, 24
  %1401 = add i32 %52, 308
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 65535
  %1405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1404)  ; LegacyF16ToF32(value)
  %1406 = lshr i32 %1403, 16
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = add i32 %52, 48
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = lshr i32 %1410, 22
  %1412 = shl nuw nsw i32 %1411, 5
  %1413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1412)  ; LegacyF16ToF32(value)
  %1414 = shl i32 %1410, 4
  %1415 = and i32 %1414, 32752
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = lshr i32 %1410, 7
  %1418 = and i32 %1417, 32752
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 3
  %1422 = fmul fast float %1421, 1.000000e+03
  %1423 = fmul fast float %1422, %451
  %1424 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1425 = fadd fast float %1424, %439
  %1426 = fmul fast float %1422, %453
  %1427 = call float @dx.op.unary.f32(i32 22, float %1426)  ; Frc(value)
  %1428 = fadd fast float %1427, %440
  %1429 = fmul fast float %1394, %1422
  %1430 = call float @dx.op.unary.f32(i32 22, float %1429)  ; Frc(value)
  %1431 = fmul fast float %1430, 0x401921FB60000000
  %1432 = fadd fast float %1431, %1413
  %1433 = call float @dx.op.unary.f32(i32 13, float %1432)  ; Sin(value)
  %1434 = call float @dx.op.unary.f32(i32 12, float %1432)  ; Cos(value)
  %1435 = fsub fast float -0.000000e+00, %1433
  %1436 = fadd fast float %1387, -5.000000e-01
  %1437 = fadd fast float %1388, -5.000000e-01
  %1438 = fmul fast float %1405, %1436
  %1439 = fmul fast float %1407, %1437
  %1440 = fadd fast float %1438, 5.000000e-01
  %1441 = fadd fast float %1439, 5.000000e-01
  %1442 = fmul fast float %1416, %1440
  %1443 = fmul fast float %1419, %1441
  %1444 = fmul fast float %1434, %1442
  %1445 = call float @dx.op.tertiary.f32(i32 46, float %1435, float %1443, float %1444)  ; FMad(a,b,c)
  %1446 = fmul fast float %1433, %1442
  %1447 = call float @dx.op.tertiary.f32(i32 46, float %1434, float %1443, float %1446)  ; FMad(a,b,c)
  %1448 = fadd fast float %1425, %1445
  %1449 = fadd fast float %1428, %1447
  %1450 = icmp ugt i32 %1399, 1
  %1451 = icmp ugt i32 %1397, 33554431
  %1452 = or i1 %1451, %1450
  br i1 %1452, label %1453, label %1478

; <label>:1453                                    ; preds = %1380
  %1454 = add i32 %52, 244
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = lshr i32 %1456, 16
  %1458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1457)  ; LegacyF16ToF32(value)
  %1459 = fmul fast float %1421, %1458
  %1460 = call float @dx.op.unary.f32(i32 22, float %1459)  ; Frc(value)
  %1461 = mul nuw nsw i32 %1399, %1400
  %1462 = uitofp i32 %1461 to float
  %1463 = fmul fast float %1460, %1462
  %1464 = call float @dx.op.unary.f32(i32 27, float %1463)  ; Round_ni(value)
  %1465 = fptoui float %1464 to i32
  %1466 = urem i32 %1465, %1399
  %1467 = udiv i32 %1465, %1400
  %1468 = call float @dx.op.unary.f32(i32 22, float %1448)  ; Frc(value)
  %1469 = call float @dx.op.unary.f32(i32 22, float %1449)  ; Frc(value)
  %1470 = uitofp i32 %1466 to float
  %1471 = uitofp i32 %1467 to float
  %1472 = fadd fast float %1468, %1470
  %1473 = fadd fast float %1469, %1471
  %1474 = uitofp i32 %1399 to float
  %1475 = uitofp i32 %1400 to float
  %1476 = fdiv fast float %1472, %1474
  %1477 = fdiv fast float %1473, %1475
  br label %1478

; <label>:1478                                    ; preds = %1453, %1380
  %1479 = phi float [ %1476, %1453 ], [ %1448, %1380 ]
  %1480 = phi float [ %1477, %1453 ], [ %1449, %1380 ]
  %1481 = and i32 %1374, 256
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1529, label %1483

; <label>:1483                                    ; preds = %1478
  %1484 = add i32 %52, 476
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %102, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = add i32 %52, 116
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = shl i32 %1493, 4
  %1495 = and i32 %1494, 32752
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = lshr i32 %1493, 7
  %1498 = and i32 %1497, 32752
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = fsub fast float 1.000000e+00, %727
  %1501 = call float @dx.op.binary.f32(i32 35, float %1500, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1502 = bitcast float %727 to i32
  %1503 = sitofp i32 %1502 to float
  %1504 = fadd fast float %1503, 0xC1CFBF8940000000
  %1505 = fmul fast float %1499, %1504
  %1506 = fadd fast float %1505, 0x41CFBF8940000000
  %1507 = fptosi float %1506 to i32
  %1508 = bitcast i32 %1507 to float
  %1509 = bitcast float %1501 to i32
  %1510 = sitofp i32 %1509 to float
  %1511 = fadd fast float %1510, 0xC1CFBF8940000000
  %1512 = fmul fast float %1511, %1499
  %1513 = fadd fast float %1512, 0x41CFBF8940000000
  %1514 = fptosi float %1513 to i32
  %1515 = bitcast i32 %1514 to float
  %1516 = fmul fast float %1508, %1496
  %1517 = fmul fast float %1515, %1496
  %1518 = fsub fast float %1501, %1516
  %1519 = fadd fast float %1517, %1501
  %1520 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1522 = fsub fast float %1490, %1520
  %1523 = fsub fast float %1521, %1520
  %1524 = bitcast float %1523 to i32
  %1525 = sub nsw i32 2129859010, %1524
  %1526 = bitcast i32 %1525 to float
  %1527 = fmul fast float %1526, %1522
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1529

; <label>:1529                                    ; preds = %1483, %1478
  %1530 = phi float [ %1528, %1483 ], [ %727, %1478 ]
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 128
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1551, label %1535

; <label>:1535                                    ; preds = %1529
  %1536 = add i32 %52, 460
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1538, 0
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1540, %dx.types.Handle %102, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 524288
  %1546 = icmp ne i32 %1545, 0
  %1547 = fcmp fast ogt float %1542, 0x3FE0101020000000
  %1548 = select i1 %1547, float 1.000000e+00, float 0.000000e+00
  %1549 = select i1 %1546, float %1548, float %1542
  %1550 = fmul fast float %1549, %1530
  br label %1551

; <label>:1551                                    ; preds = %1535, %1529
  %1552 = phi float [ %1550, %1535 ], [ %1530, %1529 ]
  %1553 = fcmp fast ult float %1552, 0x3F70101020000000
  br i1 %1553, label %2236, label %1554

; <label>:1554                                    ; preds = %1551
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 16
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1757, label %1559

; <label>:1559                                    ; preds = %1554
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %52, 412
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %1564, 0
  %1566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1566, %dx.types.Handle %101, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.ResRet.f32 %1567, 1
  %1570 = extractvalue %dx.types.ResRet.f32 %1567, 2
  %1571 = extractvalue %dx.types.ResRet.f32 %1567, 3
  %1572 = and i32 %1561, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = lshr i32 %1561, 8
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1571, %1573
  %1578 = fadd fast float %1577, %1576
  %1579 = fmul fast float %1578, 0x3F70101000000000
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 512
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1592, label %1584

; <label>:1584                                    ; preds = %1559
  %1585 = add i32 %52, 496
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = add i32 %1587, 0
  %1589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1589, %dx.types.Handle %102, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  br label %1592

; <label>:1592                                    ; preds = %1584, %1559
  %1593 = phi float [ %1591, %1584 ], [ 1.000000e+00, %1559 ]
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 33554432
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1704, label %1598

; <label>:1598                                    ; preds = %1592
  %1599 = add i32 %52, 240
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = lshr i32 %1601, 16
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = add i32 %52, 244
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 65535
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = lshr i32 %1612, 24
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = and i32 %1612, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = lshr i32 %1612, 8
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = fmul fast float %1621, 0x3F70101020000000
  %1623 = lshr i32 %1612, 16
  %1624 = and i32 %1623, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = add i32 %52, 236
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = lshr i32 %1629, 24
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101020000000
  %1633 = and i32 %1629, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = lshr i32 %1629, 8
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = fmul fast float %1638, 0x3F70101020000000
  %1640 = lshr i32 %1629, 16
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F70101020000000
  %1644 = bitcast float %1568 to i32
  %1645 = ashr i32 %1644, 1
  %1646 = sub nsw i32 1597463174, %1645
  %1647 = bitcast i32 %1646 to float
  %1648 = fmul fast float %1568, 5.000000e-01
  %1649 = fmul fast float %1647, %1647
  %1650 = fmul fast float %1649, %1648
  %1651 = fsub fast float 1.500000e+00, %1650
  %1652 = fmul fast float %1647, %1568
  %1653 = fmul fast float %1652, %1651
  %1654 = bitcast float %1569 to i32
  %1655 = ashr i32 %1654, 1
  %1656 = sub nsw i32 1597463174, %1655
  %1657 = bitcast i32 %1656 to float
  %1658 = fmul fast float %1569, 5.000000e-01
  %1659 = fmul fast float %1657, %1657
  %1660 = fmul fast float %1659, %1658
  %1661 = fsub fast float 1.500000e+00, %1660
  %1662 = fmul fast float %1657, %1569
  %1663 = fmul fast float %1662, %1661
  %1664 = bitcast float %1570 to i32
  %1665 = ashr i32 %1664, 1
  %1666 = sub nsw i32 1597463174, %1665
  %1667 = bitcast i32 %1666 to float
  %1668 = fmul fast float %1570, 5.000000e-01
  %1669 = fmul fast float %1667, %1667
  %1670 = fmul fast float %1669, %1668
  %1671 = fsub fast float 1.500000e+00, %1670
  %1672 = fmul fast float %1667, %1570
  %1673 = fmul fast float %1672, %1671
  %1674 = fsub fast float %1653, %1635
  %1675 = fsub fast float %1663, %1639
  %1676 = fsub fast float %1673, %1643
  %1677 = fmul fast float %1674, %1603
  %1678 = fmul fast float %1675, %1605
  %1679 = fmul fast float %1676, %1610
  %1680 = fadd fast float %1677, %1618
  %1681 = fadd fast float %1678, %1622
  %1682 = fadd fast float %1679, %1626
  %1683 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = fmul fast float %1683, %1683
  %1687 = fmul fast float %1684, %1684
  %1688 = fmul fast float %1685, %1685
  %1689 = fsub fast float %1686, %1568
  %1690 = fsub fast float %1687, %1569
  %1691 = fsub fast float %1688, %1570
  %1692 = fmul fast float %1689, %1593
  %1693 = fmul fast float %1690, %1593
  %1694 = fmul fast float %1691, %1593
  %1695 = fadd fast float %1692, %1568
  %1696 = fadd fast float %1693, %1569
  %1697 = fadd fast float %1694, %1570
  %1698 = fadd fast float %1615, %1579
  %1699 = fsub fast float %1698, %1632
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = fsub fast float %1700, %1579
  %1702 = fmul fast float %1701, %1593
  %1703 = fadd fast float %1702, %1579
  br label %1757

; <label>:1704                                    ; preds = %1592
  %1705 = and i32 %1595, 134217728
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1741, label %1707

; <label>:1707                                    ; preds = %1704
  %1708 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %1710 = call float @dx.op.unary.f32(i32 24, float %429)  ; Sqrt(value)
  %1711 = fadd fast float %1708, -5.000000e-01
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fadd fast float %1710, -5.000000e-01
  %1714 = fmul fast float %1711, %1593
  %1715 = fmul fast float %1712, %1593
  %1716 = fmul fast float %1713, %1593
  %1717 = fadd fast float %1714, 5.000000e-01
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = fadd fast float %1716, 5.000000e-01
  %1720 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1722 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1723 = fmul fast float %1717, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1720
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1720
  %1728 = fmul fast float %1718, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1721
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1721
  %1733 = fmul fast float %1719, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1722
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1722
  %1738 = fmul fast float %1727, %1727
  %1739 = fmul fast float %1732, %1732
  %1740 = fmul fast float %1737, %1737
  br label %1757

; <label>:1741                                    ; preds = %1704
  %1742 = fmul fast float %427, %427
  %1743 = fmul fast float %428, %428
  %1744 = fmul fast float %429, %429
  %1745 = fadd fast float %1742, -1.000000e+00
  %1746 = fadd fast float %1743, -1.000000e+00
  %1747 = fadd fast float %1744, -1.000000e+00
  %1748 = fmul fast float %1593, %1745
  %1749 = fmul fast float %1593, %1746
  %1750 = fmul fast float %1593, %1747
  %1751 = fadd fast float %1748, 1.000000e+00
  %1752 = fadd fast float %1749, 1.000000e+00
  %1753 = fadd fast float %1750, 1.000000e+00
  %1754 = fmul fast float %1751, %1568
  %1755 = fmul fast float %1752, %1569
  %1756 = fmul fast float %1753, %1570
  br label %1757

; <label>:1757                                    ; preds = %1741, %1707, %1598, %1554
  %1758 = phi float [ %1703, %1598 ], [ %1579, %1707 ], [ %1579, %1741 ], [ 0x3FA23C0BE0000000, %1554 ]
  %1759 = phi float [ %1695, %1598 ], [ %1738, %1707 ], [ %1754, %1741 ], [ 1.000000e+00, %1554 ]
  %1760 = phi float [ %1696, %1598 ], [ %1739, %1707 ], [ %1755, %1741 ], [ 1.000000e+00, %1554 ]
  %1761 = phi float [ %1697, %1598 ], [ %1740, %1707 ], [ %1756, %1741 ], [ 1.000000e+00, %1554 ]
  %1762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.i32 %1762, 1
  %1764 = and i32 %1763, 1
  %1765 = icmp ne i32 %1764, 0
  %1766 = add i32 %52, 356
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 32
  %1770 = icmp ne i32 %1769, 0
  %1771 = and i1 %1765, %1770
  %1772 = select i1 %1771, float 1.000000e+00, float %1759
  %1773 = select i1 %1771, float 0x3FD3333340000000, float %1760
  %1774 = select i1 %1771, float 0x3FD3333340000000, float %1761
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 32
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1851, label %1779

; <label>:1779                                    ; preds = %1757
  %1780 = add i32 %52, 108
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = add i32 %52, 428
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = add i32 %1785, 0
  %1787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1787, %dx.types.Handle %101, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = and i32 %1782, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1782, 8
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = lshr i32 %1782, 16
  %1799 = and i32 %1798, 255
  %1800 = uitofp i32 %1799 to float
  %1801 = fmul fast float %1800, 0x3F70101000000000
  %1802 = fmul fast float %1789, %1794
  %1803 = fadd fast float %1802, %1797
  %1804 = fmul fast float %1803, 0x3F70101000000000
  %1805 = fadd fast float %1790, -5.000000e-01
  %1806 = fadd fast float %1792, -5.000000e-01
  %1807 = fmul fast float %1805, %1801
  %1808 = fmul fast float %1806, %1801
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fmul fast float %1809, 2.000000e+00
  %1812 = fadd fast float %1811, -1.000000e+00
  %1813 = fmul fast float %1810, 2.000000e+00
  %1814 = fadd fast float %1813, -1.000000e+00
  %1815 = fadd fast float %1812, %1814
  %1816 = fmul fast float %1815, 5.000000e-01
  %1817 = fsub fast float %1812, %1814
  %1818 = fmul fast float %1817, 5.000000e-01
  %1819 = call float @dx.op.unary.f32(i32 6, float %1816)  ; FAbs(value)
  %1820 = fsub fast float 1.000000e+00, %1819
  %1821 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1822 = fsub fast float %1820, %1821
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1818, float %1822, float %1816, float %1818, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 25, float %1823)  ; Rsqrt(value)
  %1825 = fmul fast float %1816, %1824
  %1826 = fmul fast float %1818, %1824
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 67108864
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1847, label %1831

; <label>:1831                                    ; preds = %1779
  %1832 = add i32 %52, 296
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = and i32 %1834, 65535
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 65535
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = lshr i32 %1834, 16
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = fsub fast float %1804, %1842
  %1844 = fmul fast float %1843, %1836
  %1845 = fadd fast float %1844, %1840
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  br label %1847

; <label>:1847                                    ; preds = %1831, %1779
  %1848 = phi float [ %1846, %1831 ], [ %1804, %1779 ]
  %1849 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1383, float %1384)  ; Dot2(ax,ay,bx,by)
  %1850 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1385, float %1386)  ; Dot2(ax,ay,bx,by)
  br label %1851

; <label>:1851                                    ; preds = %1847, %1757
  %1852 = phi float [ %1848, %1847 ], [ 0x3FD6666660000000, %1757 ]
  %1853 = phi float [ %1849, %1847 ], [ 0.000000e+00, %1757 ]
  %1854 = phi float [ %1850, %1847 ], [ 0.000000e+00, %1757 ]
  %1855 = phi float [ %1791, %1847 ], [ 1.000000e+00, %1757 ]
  %1856 = add i32 %52, 176
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = lshr i32 %1858, 22
  %1860 = shl nuw nsw i32 %1859, 5
  %1861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1860)  ; LegacyF16ToF32(value)
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 64
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1899, label %1866

; <label>:1866                                    ; preds = %1851
  %1867 = add i32 %52, 444
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = add i32 %1869, 0
  %1871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 131072
  %1875 = icmp eq i32 %1874, 0
  %1876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1871, %dx.types.Handle %101, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = fmul fast float %410, %1877
  %1881 = fmul fast float %411, %1878
  %1882 = fmul fast float %412, %1879
  br i1 %1875, label %1889, label %1883

; <label>:1883                                    ; preds = %1866
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = fmul fast float %1885, %1880
  %1887 = fmul fast float %1885, %1881
  %1888 = fmul fast float %1885, %1882
  br label %1889

; <label>:1889                                    ; preds = %1883, %1866
  %1890 = phi float [ %1886, %1883 ], [ %1880, %1866 ]
  %1891 = phi float [ %1887, %1883 ], [ %1881, %1866 ]
  %1892 = phi float [ %1888, %1883 ], [ %1882, %1866 ]
  %1893 = fmul fast float %1890, %1861
  %1894 = select i1 %292, float %1893, float %1890
  %1895 = call float @dx.op.dot3.f32(i32 55, float %1894, float %1891, float %1892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1896 = select i1 %292, float 0.000000e+00, float %1890
  %1897 = select i1 %292, float %1895, float %1891
  %1898 = select i1 %292, float 0.000000e+00, float %1892
  br label %1899

; <label>:1899                                    ; preds = %1889, %1851
  %1900 = phi float [ %1896, %1889 ], [ 0.000000e+00, %1851 ]
  %1901 = phi float [ %1897, %1889 ], [ 0.000000e+00, %1851 ]
  %1902 = phi float [ %1898, %1889 ], [ 0.000000e+00, %1851 ]
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 1024
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1937, label %1907

; <label>:1907                                    ; preds = %1899
  %1908 = add i32 %52, 168
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 255
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1912, 0x3F70101020000000
  %1914 = lshr i32 %1910, 8
  %1915 = and i32 %1914, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = lshr i32 %1910, 16
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = fmul fast float %1913, %1913
  %1923 = fmul fast float %1917, %1917
  %1924 = fmul fast float %1921, %1921
  %1925 = add i32 %52, 512
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = add i32 %1927, 0
  %1929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1929, %dx.types.Handle %102, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.ResRet.f32 %1930, 2
  %1934 = fmul fast float %1922, %1931
  %1935 = fmul fast float %1923, %1932
  %1936 = fmul fast float %1924, %1933
  br label %1937

; <label>:1937                                    ; preds = %1907, %1899
  %1938 = phi float [ %1934, %1907 ], [ 0.000000e+00, %1899 ]
  %1939 = phi float [ %1935, %1907 ], [ 0.000000e+00, %1899 ]
  %1940 = phi float [ %1936, %1907 ], [ 0.000000e+00, %1899 ]
  %1941 = fcmp fast ogt float %1938, 0.000000e+00
  %1942 = fcmp fast ogt float %1939, 0.000000e+00
  %1943 = fcmp fast ogt float %1940, 0.000000e+00
  %1944 = call float @dx.op.unary.f32(i32 23, float %1938)  ; Log(value)
  %1945 = call float @dx.op.unary.f32(i32 23, float %1939)  ; Log(value)
  %1946 = call float @dx.op.unary.f32(i32 23, float %1940)  ; Log(value)
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = lshr i32 %1948, 7
  %1950 = and i32 %1949, 32752
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = fmul fast float %1944, 0xBFE62E4300000000
  %1953 = fmul fast float %1952, %1951
  %1954 = fmul fast float %1945, 0xBFE62E4300000000
  %1955 = fmul fast float %1954, %1951
  %1956 = fmul fast float %1946, 0xBFE62E4300000000
  %1957 = fmul fast float %1956, %1951
  %1958 = select i1 %1941, float %1953, float 1.270000e+02
  %1959 = select i1 %1942, float %1955, float 1.270000e+02
  %1960 = select i1 %1943, float %1957, float 1.270000e+02
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 2048
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %1980, label %1965

; <label>:1965                                    ; preds = %1937
  %1966 = add i32 %52, 528
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1970, %dx.types.Handle %102, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 3
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = shl i32 %1974, 4
  %1976 = and i32 %1975, 32752
  %1977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1976)  ; LegacyF16ToF32(value)
  %1978 = fmul fast float %1977, %1972
  %1979 = call float @dx.op.binary.f32(i32 35, float %1978, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1980

; <label>:1980                                    ; preds = %1965, %1937
  %1981 = phi float [ %1979, %1965 ], [ 0x3F70101020000000, %1937 ]
  %1982 = add i32 %52, 112
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, 255
  %1986 = uitofp i32 %1985 to float
  %1987 = lshr i32 %1984, 8
  %1988 = and i32 %1987, 255
  %1989 = uitofp i32 %1988 to float
  %1990 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1773, float %1774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1991 = fmul fast float %1989, %1990
  %1992 = fadd fast float %1991, %1986
  %1993 = fmul fast float %1992, 0x3F70101020000000
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  br i1 %1371, label %1995, label %2030

; <label>:1995                                    ; preds = %1980
  %1996 = fmul fast float %1981, 2.000000e+00
  %1997 = fcmp fast olt float %1958, 1.270000e+02
  %1998 = fcmp fast olt float %1959, 1.270000e+02
  %1999 = fcmp fast olt float %1960, 1.270000e+02
  %2000 = fmul fast float %1958, 0xBFF7154760000000
  %2001 = fmul fast float %2000, %1996
  %2002 = fmul fast float %1959, 0xBFF7154760000000
  %2003 = fmul fast float %2002, %1996
  %2004 = fmul fast float %1960, 0xBFF7154760000000
  %2005 = fmul fast float %2004, %1996
  %2006 = call float @dx.op.unary.f32(i32 21, float %2001)  ; Exp(value)
  %2007 = call float @dx.op.unary.f32(i32 21, float %2003)  ; Exp(value)
  %2008 = call float @dx.op.unary.f32(i32 21, float %2005)  ; Exp(value)
  %2009 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2010 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2011 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2012 = fadd fast float %2009, -1.000000e+00
  %2013 = select i1 %1997, float %2012, float -1.000000e+00
  %2014 = fadd fast float %2010, -1.000000e+00
  %2015 = select i1 %1998, float %2014, float -1.000000e+00
  %2016 = fadd fast float %2011, -1.000000e+00
  %2017 = select i1 %1999, float %2016, float -1.000000e+00
  %2018 = fmul fast float %2013, %1552
  %2019 = fmul fast float %2015, %1552
  %2020 = fmul fast float %2017, %1552
  %2021 = fadd fast float %2018, 1.000000e+00
  %2022 = fadd fast float %2019, 1.000000e+00
  %2023 = fadd fast float %2020, 1.000000e+00
  %2024 = fmul fast float %2021, %1355
  %2025 = fmul fast float %2022, %1356
  %2026 = fmul fast float %2023, %1357
  %2027 = fmul fast float %2021, %1358
  %2028 = fmul fast float %2022, %1359
  %2029 = fmul fast float %2023, %1360
  br label %2030

; <label>:2030                                    ; preds = %1995, %1980
  %2031 = phi float [ %2024, %1995 ], [ %1355, %1980 ]
  %2032 = phi float [ %2025, %1995 ], [ %1356, %1980 ]
  %2033 = phi float [ %2026, %1995 ], [ %1357, %1980 ]
  %2034 = phi float [ %2027, %1995 ], [ %1358, %1980 ]
  %2035 = phi float [ %2028, %1995 ], [ %1359, %1980 ]
  %2036 = phi float [ %2029, %1995 ], [ %1360, %1980 ]
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 3
  %2040 = icmp eq i32 %2039, 3
  br i1 %2040, label %2119, label %2041

; <label>:2041                                    ; preds = %2030
  %2042 = and i32 %2038, 16
  %2043 = icmp ne i32 %2042, 0
  %2044 = select i1 %2043, float %1552, float 0.000000e+00
  %2045 = icmp eq i32 %2039, 0
  br i1 %2045, label %2046, label %2074

; <label>:2046                                    ; preds = %2041
  %2047 = and i32 %2038, 64
  %2048 = icmp ne i32 %2047, 0
  %2049 = select i1 %2048, float %1552, float 0.000000e+00
  %2050 = fsub fast float %1772, %2031
  %2051 = fsub fast float %1773, %2032
  %2052 = fsub fast float %1774, %2033
  %2053 = fmul fast float %2044, %2050
  %2054 = fmul fast float %2044, %2051
  %2055 = fmul fast float %2044, %2052
  %2056 = fadd fast float %2053, %2031
  %2057 = fadd fast float %2054, %2032
  %2058 = fadd fast float %2055, %2033
  %2059 = fsub fast float %1758, %1364
  %2060 = fmul fast float %2044, %2059
  %2061 = fadd fast float %2060, %1364
  %2062 = fsub fast float %1900, %2034
  %2063 = fsub fast float %1901, %2035
  %2064 = fsub fast float %1902, %2036
  %2065 = fmul fast float %2049, %2062
  %2066 = fmul fast float %2049, %2063
  %2067 = fmul fast float %2049, %2064
  %2068 = fadd fast float %2065, %2034
  %2069 = fadd fast float %2066, %2035
  %2070 = fadd fast float %2067, %2036
  %2071 = fsub fast float %1994, %1369
  %2072 = fmul fast float %2044, %2071
  %2073 = fadd fast float %2072, %1369
  br label %2119

; <label>:2074                                    ; preds = %2041
  %2075 = icmp eq i32 %2039, 1
  br i1 %2075, label %2076, label %2089

; <label>:2076                                    ; preds = %2074
  %2077 = fadd fast float %1772, -1.000000e+00
  %2078 = fadd fast float %1773, -1.000000e+00
  %2079 = fadd fast float %1774, -1.000000e+00
  %2080 = fmul fast float %2044, %2077
  %2081 = fmul fast float %2044, %2078
  %2082 = fmul fast float %2044, %2079
  %2083 = fadd fast float %2080, 1.000000e+00
  %2084 = fadd fast float %2081, 1.000000e+00
  %2085 = fadd fast float %2082, 1.000000e+00
  %2086 = fmul fast float %2083, %2031
  %2087 = fmul fast float %2084, %2032
  %2088 = fmul fast float %2085, %2033
  br label %2119

; <label>:2089                                    ; preds = %2074
  %2090 = icmp eq i32 %2039, 2
  br i1 %2090, label %2091, label %2119

; <label>:2091                                    ; preds = %2089
  %2092 = call float @dx.op.unary.f32(i32 24, float %1772)  ; Sqrt(value)
  %2093 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %2094 = call float @dx.op.unary.f32(i32 24, float %1774)  ; Sqrt(value)
  %2095 = fadd fast float %2092, -5.000000e-01
  %2096 = fadd fast float %2093, -5.000000e-01
  %2097 = fadd fast float %2094, -5.000000e-01
  %2098 = fmul fast float %2095, %2044
  %2099 = fmul fast float %2096, %2044
  %2100 = fmul fast float %2097, %2044
  %2101 = fadd fast float %2098, 5.000000e-01
  %2102 = fadd fast float %2099, 5.000000e-01
  %2103 = fadd fast float %2100, 5.000000e-01
  %2104 = fmul fast float %2101, 2.000000e+00
  %2105 = fsub fast float 1.000000e+00, %2104
  %2106 = fmul fast float %2105, %2031
  %2107 = fadd fast float %2106, %2104
  %2108 = fmul fast float %2107, %2031
  %2109 = fmul fast float %2102, 2.000000e+00
  %2110 = fsub fast float 1.000000e+00, %2109
  %2111 = fmul fast float %2110, %2032
  %2112 = fadd fast float %2111, %2109
  %2113 = fmul fast float %2112, %2032
  %2114 = fmul fast float %2103, 2.000000e+00
  %2115 = fsub fast float 1.000000e+00, %2114
  %2116 = fmul fast float %2115, %2033
  %2117 = fadd fast float %2116, %2114
  %2118 = fmul fast float %2117, %2033
  br label %2119

; <label>:2119                                    ; preds = %2091, %2089, %2076, %2046, %2030
  %2120 = phi float [ %2031, %2030 ], [ %2108, %2091 ], [ %2031, %2089 ], [ %2086, %2076 ], [ %2056, %2046 ]
  %2121 = phi float [ %2032, %2030 ], [ %2113, %2091 ], [ %2032, %2089 ], [ %2087, %2076 ], [ %2057, %2046 ]
  %2122 = phi float [ %2033, %2030 ], [ %2118, %2091 ], [ %2033, %2089 ], [ %2088, %2076 ], [ %2058, %2046 ]
  %2123 = phi float [ %2034, %2030 ], [ %2034, %2091 ], [ %2034, %2089 ], [ %2034, %2076 ], [ %2068, %2046 ]
  %2124 = phi float [ %2035, %2030 ], [ %2035, %2091 ], [ %2035, %2089 ], [ %2035, %2076 ], [ %2069, %2046 ]
  %2125 = phi float [ %2036, %2030 ], [ %2036, %2091 ], [ %2036, %2089 ], [ %2036, %2076 ], [ %2070, %2046 ]
  %2126 = phi float [ %1364, %2030 ], [ %1364, %2091 ], [ %1364, %2089 ], [ %1364, %2076 ], [ %2061, %2046 ]
  %2127 = phi float [ %1369, %2030 ], [ %1369, %2091 ], [ %1369, %2089 ], [ %1369, %2076 ], [ %2073, %2046 ]
  %2128 = and i32 %2038, 12
  %2129 = icmp eq i32 %2128, 12
  br i1 %2129, label %2236, label %2130

; <label>:2130                                    ; preds = %2119
  %2131 = and i32 %2038, 2097184
  %2132 = icmp eq i32 %2131, 2097184
  %2133 = select i1 %2132, float %1552, float 0.000000e+00
  %2134 = and i32 %2038, 4194336
  %2135 = icmp eq i32 %2134, 4194336
  %2136 = select i1 %2135, float %1552, float 0.000000e+00
  %2137 = and i32 %2038, 8388640
  %2138 = icmp eq i32 %2137, 8388640
  %2139 = select i1 %2138, float %1552, float 0.000000e+00
  %2140 = and i32 %2038, 1024
  %2141 = icmp ne i32 %2140, 0
  %2142 = select i1 %2141, float %1552, float 0.000000e+00
  %2143 = and i32 %2038, 2048
  %2144 = icmp ne i32 %2143, 0
  %2145 = select i1 %2144, float %1552, float 0.000000e+00
  %2146 = icmp eq i32 %2128, 0
  br i1 %2146, label %2147, label %2172

; <label>:2147                                    ; preds = %2130
  %2148 = fsub fast float %1853, %1353
  %2149 = fsub fast float %1854, %1354
  %2150 = fmul fast float %2133, %2148
  %2151 = fmul fast float %2133, %2149
  %2152 = fadd fast float %2150, %1353
  %2153 = fadd fast float %2151, %1354
  %2154 = fsub fast float %1855, %1367
  %2155 = fmul fast float %2136, %2154
  %2156 = fadd fast float %2155, %1367
  %2157 = fsub fast float %1852, %1366
  %2158 = fmul fast float %2139, %2157
  %2159 = fadd fast float %2158, %1366
  %2160 = fsub fast float %1958, %1361
  %2161 = fsub fast float %1959, %1362
  %2162 = fsub fast float %1960, %1363
  %2163 = fmul fast float %2142, %2160
  %2164 = fmul fast float %2142, %2161
  %2165 = fmul fast float %2142, %2162
  %2166 = fadd fast float %2163, %1361
  %2167 = fadd fast float %2164, %1362
  %2168 = fadd fast float %2165, %1363
  %2169 = fsub fast float %1981, %1368
  %2170 = fmul fast float %2145, %2169
  %2171 = fadd fast float %2170, %1368
  br label %2236

; <label>:2172                                    ; preds = %2130
  %2173 = icmp eq i32 %2128, 4
  br i1 %2173, label %2174, label %2214

; <label>:2174                                    ; preds = %2172
  %2175 = fmul fast float %2133, %1853
  %2176 = fmul fast float %2133, %1854
  %2177 = fadd fast float %2175, %1353
  %2178 = fadd fast float %2176, %1354
  %2179 = call float @dx.op.binary.f32(i32 36, float %1367, float %1855)  ; FMin(a,b)
  %2180 = fsub fast float %2179, %1367
  %2181 = fmul fast float %2180, %2136
  %2182 = fadd fast float %2181, %1367
  %2183 = fadd fast float %1852, %1366
  %2184 = fmul fast float %2183, 0x3FF337FAE0000000
  %2185 = fmul fast float %1366, %1366
  %2186 = fmul fast float %1852, %1852
  %2187 = fadd fast float %2186, %2185
  %2188 = fmul fast float %2187, 0x3FE5152B00000000
  %2189 = fmul fast float %1366, 0xBFCC1F85E0000000
  %2190 = fmul fast float %2189, %1852
  %2191 = fadd fast float %2190, 0xBFE1363700000000
  %2192 = fadd fast float %2191, %2184
  %2193 = fsub fast float %2192, %2188
  %2194 = fmul fast float %2183, 0x3FBA6F0D00000000
  %2195 = fmul fast float %2187, 0x3FD0432880000000
  %2196 = fmul fast float %1366, 0xBFEF110800000000
  %2197 = fmul fast float %2196, %1852
  %2198 = fadd fast float %2197, 1.000000e+00
  %2199 = fsub fast float %2198, %2194
  %2200 = fadd fast float %2199, %2195
  %2201 = fdiv fast float %2193, %2200
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2203 = fsub fast float %2202, %1366
  %2204 = fmul fast float %2203, %2139
  %2205 = fadd fast float %2204, %1366
  %2206 = fmul fast float %2142, %1958
  %2207 = fmul fast float %2142, %1959
  %2208 = fmul fast float %2142, %1960
  %2209 = fadd fast float %2206, %1361
  %2210 = fadd fast float %2207, %1362
  %2211 = fadd fast float %2208, %1363
  %2212 = fmul fast float %2145, %1981
  %2213 = fadd fast float %2212, %1368
  br label %2236

; <label>:2214                                    ; preds = %2172
  %2215 = icmp eq i32 %2128, 8
  br i1 %2215, label %2216, label %2236

; <label>:2216                                    ; preds = %2214
  %2217 = fmul fast float %2133, %1853
  %2218 = fmul fast float %2133, %1854
  %2219 = fadd fast float %2217, %1353
  %2220 = fadd fast float %2218, %1354
  %2221 = call float @dx.op.binary.f32(i32 36, float %1367, float %1855)  ; FMin(a,b)
  %2222 = fsub fast float %2221, %1367
  %2223 = fmul fast float %2222, %2136
  %2224 = fadd fast float %2223, %1367
  %2225 = fsub fast float %1852, %1366
  %2226 = fmul fast float %2139, %2225
  %2227 = fadd fast float %2226, %1366
  %2228 = fmul fast float %2142, %1958
  %2229 = fmul fast float %2142, %1959
  %2230 = fmul fast float %2142, %1960
  %2231 = fadd fast float %2228, %1361
  %2232 = fadd fast float %2229, %1362
  %2233 = fadd fast float %2230, %1363
  %2234 = fmul fast float %2145, %1981
  %2235 = fadd fast float %2234, %1368
  br label %2236

; <label>:2236                                    ; preds = %2216, %2214, %2174, %2147, %2119, %1551, %1370, %1352
  %2237 = phi float [ %1353, %2119 ], [ %1353, %1551 ], [ %1353, %1352 ], [ %2219, %2216 ], [ %1353, %2214 ], [ %2177, %2174 ], [ %2152, %2147 ], [ %1353, %1370 ]
  %2238 = phi float [ %1354, %2119 ], [ %1354, %1551 ], [ %1354, %1352 ], [ %2220, %2216 ], [ %1354, %2214 ], [ %2178, %2174 ], [ %2153, %2147 ], [ %1354, %1370 ]
  %2239 = phi float [ %2120, %2119 ], [ %1355, %1551 ], [ %1355, %1352 ], [ %2120, %2216 ], [ %2120, %2214 ], [ %2120, %2174 ], [ %2120, %2147 ], [ %1355, %1370 ]
  %2240 = phi float [ %2121, %2119 ], [ %1356, %1551 ], [ %1356, %1352 ], [ %2121, %2216 ], [ %2121, %2214 ], [ %2121, %2174 ], [ %2121, %2147 ], [ %1356, %1370 ]
  %2241 = phi float [ %2122, %2119 ], [ %1357, %1551 ], [ %1357, %1352 ], [ %2122, %2216 ], [ %2122, %2214 ], [ %2122, %2174 ], [ %2122, %2147 ], [ %1357, %1370 ]
  %2242 = phi float [ %2123, %2119 ], [ %1358, %1551 ], [ %1358, %1352 ], [ %2123, %2216 ], [ %2123, %2214 ], [ %2123, %2174 ], [ %2123, %2147 ], [ %1358, %1370 ]
  %2243 = phi float [ %2124, %2119 ], [ %1359, %1551 ], [ %1359, %1352 ], [ %2124, %2216 ], [ %2124, %2214 ], [ %2124, %2174 ], [ %2124, %2147 ], [ %1359, %1370 ]
  %2244 = phi float [ %2125, %2119 ], [ %1360, %1551 ], [ %1360, %1352 ], [ %2125, %2216 ], [ %2125, %2214 ], [ %2125, %2174 ], [ %2125, %2147 ], [ %1360, %1370 ]
  %2245 = phi float [ %1361, %2119 ], [ %1361, %1551 ], [ %1361, %1352 ], [ %2231, %2216 ], [ %1361, %2214 ], [ %2209, %2174 ], [ %2166, %2147 ], [ %1361, %1370 ]
  %2246 = phi float [ %1362, %2119 ], [ %1362, %1551 ], [ %1362, %1352 ], [ %2232, %2216 ], [ %1362, %2214 ], [ %2210, %2174 ], [ %2167, %2147 ], [ %1362, %1370 ]
  %2247 = phi float [ %1363, %2119 ], [ %1363, %1551 ], [ %1363, %1352 ], [ %2233, %2216 ], [ %1363, %2214 ], [ %2211, %2174 ], [ %2168, %2147 ], [ %1363, %1370 ]
  %2248 = phi float [ %2126, %2119 ], [ %1364, %1551 ], [ %1364, %1352 ], [ %2126, %2216 ], [ %2126, %2214 ], [ %2126, %2174 ], [ %2126, %2147 ], [ %1364, %1370 ]
  %2249 = phi float [ %1366, %2119 ], [ %1366, %1551 ], [ %1366, %1352 ], [ %2227, %2216 ], [ %1366, %2214 ], [ %2205, %2174 ], [ %2159, %2147 ], [ %1366, %1370 ]
  %2250 = phi float [ %1367, %2119 ], [ %1367, %1551 ], [ %1367, %1352 ], [ %2224, %2216 ], [ %1367, %2214 ], [ %2182, %2174 ], [ %2156, %2147 ], [ %1367, %1370 ]
  %2251 = phi float [ %1368, %2119 ], [ %1368, %1551 ], [ %1368, %1352 ], [ %2235, %2216 ], [ %1368, %2214 ], [ %2213, %2174 ], [ %2171, %2147 ], [ %1368, %1370 ]
  %2252 = phi float [ %2127, %2119 ], [ %1369, %1551 ], [ %1369, %1352 ], [ %2127, %2216 ], [ %2127, %2214 ], [ %2127, %2174 ], [ %2127, %2147 ], [ %1369, %1370 ]
  br i1 %674, label %3119, label %2253

; <label>:2253                                    ; preds = %2236
  %2254 = icmp ult i32 %730, 3
  %2255 = add i32 %52, 56
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %52, 60
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = or i32 %2260, %2257
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %3119, label %2263

; <label>:2263                                    ; preds = %2253
  %2264 = and i32 %2257, 262144
  %2265 = icmp ne i32 %2264, 0
  %2266 = select i1 %2265, float %59, float 1.000000e+00
  %2267 = select i1 %2265, float %60, float 0.000000e+00
  %2268 = select i1 %2265, float %61, float 0.000000e+00
  %2269 = select i1 %2265, float %62, float 1.000000e+00
  %2270 = select i1 %2265, float %63, float %87
  %2271 = select i1 %2265, float %64, float %88
  %2272 = add i32 %52, 316
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = lshr i32 %2274, 16
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = fmul fast float %2276, 0x3F50624DE0000000
  %2278 = add i32 %52, 120
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = lshr i32 %2280, 16
  %2282 = and i32 %2281, 255
  %2283 = lshr i32 %2280, 24
  %2284 = add i32 %52, 324
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = and i32 %2286, 65535
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = lshr i32 %2286, 16
  %2290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2289)  ; LegacyF16ToF32(value)
  %2291 = add i32 %52, 64
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = lshr i32 %2293, 22
  %2295 = shl nuw nsw i32 %2294, 5
  %2296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2295)  ; LegacyF16ToF32(value)
  %2297 = shl i32 %2293, 4
  %2298 = and i32 %2297, 32752
  %2299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2298)  ; LegacyF16ToF32(value)
  %2300 = lshr i32 %2293, 7
  %2301 = and i32 %2300, 32752
  %2302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2301)  ; LegacyF16ToF32(value)
  %2303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2303, 3
  %2305 = fmul fast float %2304, 1.000000e+03
  %2306 = fmul fast float %2305, %558
  %2307 = call float @dx.op.unary.f32(i32 22, float %2306)  ; Frc(value)
  %2308 = fadd fast float %2307, %546
  %2309 = fmul fast float %2305, %560
  %2310 = call float @dx.op.unary.f32(i32 22, float %2309)  ; Frc(value)
  %2311 = fadd fast float %2310, %547
  %2312 = fmul fast float %2277, %2305
  %2313 = call float @dx.op.unary.f32(i32 22, float %2312)  ; Frc(value)
  %2314 = fmul fast float %2313, 0x401921FB60000000
  %2315 = fadd fast float %2314, %2296
  %2316 = call float @dx.op.unary.f32(i32 13, float %2315)  ; Sin(value)
  %2317 = call float @dx.op.unary.f32(i32 12, float %2315)  ; Cos(value)
  %2318 = fsub fast float -0.000000e+00, %2316
  %2319 = fadd fast float %2270, -5.000000e-01
  %2320 = fadd fast float %2271, -5.000000e-01
  %2321 = fmul fast float %2288, %2319
  %2322 = fmul fast float %2290, %2320
  %2323 = fadd fast float %2321, 5.000000e-01
  %2324 = fadd fast float %2322, 5.000000e-01
  %2325 = fmul fast float %2299, %2323
  %2326 = fmul fast float %2302, %2324
  %2327 = fmul fast float %2317, %2325
  %2328 = call float @dx.op.tertiary.f32(i32 46, float %2318, float %2326, float %2327)  ; FMad(a,b,c)
  %2329 = fmul fast float %2316, %2325
  %2330 = call float @dx.op.tertiary.f32(i32 46, float %2317, float %2326, float %2329)  ; FMad(a,b,c)
  %2331 = fadd fast float %2308, %2328
  %2332 = fadd fast float %2311, %2330
  %2333 = icmp ugt i32 %2282, 1
  %2334 = icmp ugt i32 %2280, 33554431
  %2335 = or i1 %2334, %2333
  br i1 %2335, label %2336, label %2361

; <label>:2336                                    ; preds = %2263
  %2337 = add i32 %52, 260
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = lshr i32 %2339, 16
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = fmul fast float %2304, %2341
  %2343 = call float @dx.op.unary.f32(i32 22, float %2342)  ; Frc(value)
  %2344 = mul nuw nsw i32 %2282, %2283
  %2345 = uitofp i32 %2344 to float
  %2346 = fmul fast float %2343, %2345
  %2347 = call float @dx.op.unary.f32(i32 27, float %2346)  ; Round_ni(value)
  %2348 = fptoui float %2347 to i32
  %2349 = urem i32 %2348, %2282
  %2350 = udiv i32 %2348, %2283
  %2351 = call float @dx.op.unary.f32(i32 22, float %2331)  ; Frc(value)
  %2352 = call float @dx.op.unary.f32(i32 22, float %2332)  ; Frc(value)
  %2353 = uitofp i32 %2349 to float
  %2354 = uitofp i32 %2350 to float
  %2355 = fadd fast float %2351, %2353
  %2356 = fadd fast float %2352, %2354
  %2357 = uitofp i32 %2282 to float
  %2358 = uitofp i32 %2283 to float
  %2359 = fdiv fast float %2355, %2357
  %2360 = fdiv fast float %2356, %2358
  br label %2361

; <label>:2361                                    ; preds = %2336, %2263
  %2362 = phi float [ %2359, %2336 ], [ %2331, %2263 ]
  %2363 = phi float [ %2360, %2336 ], [ %2332, %2263 ]
  %2364 = and i32 %2257, 256
  %2365 = icmp eq i32 %2364, 0
  br i1 %2365, label %2412, label %2366

; <label>:2366                                    ; preds = %2361
  %2367 = add i32 %52, 480
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = add i32 %2369, 0
  %2371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2371, %dx.types.Handle %102, float %2362, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = add i32 %52, 132
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = shl i32 %2376, 4
  %2378 = and i32 %2377, 32752
  %2379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2378)  ; LegacyF16ToF32(value)
  %2380 = lshr i32 %2376, 7
  %2381 = and i32 %2380, 32752
  %2382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2381)  ; LegacyF16ToF32(value)
  %2383 = fsub fast float 1.000000e+00, %726
  %2384 = call float @dx.op.binary.f32(i32 35, float %2383, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2385 = bitcast float %726 to i32
  %2386 = sitofp i32 %2385 to float
  %2387 = fadd fast float %2386, 0xC1CFBF8940000000
  %2388 = fmul fast float %2382, %2387
  %2389 = fadd fast float %2388, 0x41CFBF8940000000
  %2390 = fptosi float %2389 to i32
  %2391 = bitcast i32 %2390 to float
  %2392 = bitcast float %2384 to i32
  %2393 = sitofp i32 %2392 to float
  %2394 = fadd fast float %2393, 0xC1CFBF8940000000
  %2395 = fmul fast float %2394, %2382
  %2396 = fadd fast float %2395, 0x41CFBF8940000000
  %2397 = fptosi float %2396 to i32
  %2398 = bitcast i32 %2397 to float
  %2399 = fmul fast float %2391, %2379
  %2400 = fmul fast float %2398, %2379
  %2401 = fsub fast float %2384, %2399
  %2402 = fadd fast float %2400, %2384
  %2403 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  %2404 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2405 = fsub fast float %2373, %2403
  %2406 = fsub fast float %2404, %2403
  %2407 = bitcast float %2406 to i32
  %2408 = sub nsw i32 2129859010, %2407
  %2409 = bitcast i32 %2408 to float
  %2410 = fmul fast float %2409, %2405
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  br label %2412

; <label>:2412                                    ; preds = %2366, %2361
  %2413 = phi float [ %2411, %2366 ], [ %726, %2361 ]
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 128
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2434, label %2418

; <label>:2418                                    ; preds = %2412
  %2419 = add i32 %52, 464
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = add i32 %2421, 0
  %2423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2423, %dx.types.Handle %102, float %2362, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2425 = extractvalue %dx.types.ResRet.f32 %2424, 0
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %2427, 524288
  %2429 = icmp ne i32 %2428, 0
  %2430 = fcmp fast ogt float %2425, 0x3FE0101020000000
  %2431 = select i1 %2430, float 1.000000e+00, float 0.000000e+00
  %2432 = select i1 %2429, float %2431, float %2425
  %2433 = fmul fast float %2432, %2413
  br label %2434

; <label>:2434                                    ; preds = %2418, %2412
  %2435 = phi float [ %2433, %2418 ], [ %2413, %2412 ]
  %2436 = fcmp fast ult float %2435, 0x3F70101020000000
  br i1 %2436, label %3119, label %2437

; <label>:2437                                    ; preds = %2434
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = and i32 %2439, 16
  %2441 = icmp eq i32 %2440, 0
  br i1 %2441, label %2640, label %2442

; <label>:2442                                    ; preds = %2437
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = add i32 %52, 416
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %2447, 0
  %2449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2449, %dx.types.Handle %101, float %2362, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = extractvalue %dx.types.ResRet.f32 %2450, 3
  %2455 = and i32 %2444, 255
  %2456 = uitofp i32 %2455 to float
  %2457 = lshr i32 %2444, 8
  %2458 = and i32 %2457, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = fmul fast float %2454, %2456
  %2461 = fadd fast float %2460, %2459
  %2462 = fmul fast float %2461, 0x3F70101000000000
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 512
  %2466 = icmp eq i32 %2465, 0
  br i1 %2466, label %2475, label %2467

; <label>:2467                                    ; preds = %2442
  %2468 = add i32 %52, 500
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = add i32 %2470, 0
  %2472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2472, %dx.types.Handle %102, float %2362, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2474 = extractvalue %dx.types.ResRet.f32 %2473, 0
  br label %2475

; <label>:2475                                    ; preds = %2467, %2442
  %2476 = phi float [ %2474, %2467 ], [ 1.000000e+00, %2442 ]
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 33554432
  %2480 = icmp eq i32 %2479, 0
  br i1 %2480, label %2587, label %2481

; <label>:2481                                    ; preds = %2475
  %2482 = add i32 %52, 256
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = and i32 %2484, 65535
  %2486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2485)  ; LegacyF16ToF32(value)
  %2487 = lshr i32 %2484, 16
  %2488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2487)  ; LegacyF16ToF32(value)
  %2489 = add i32 %52, 260
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 65535
  %2493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2492)  ; LegacyF16ToF32(value)
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = lshr i32 %2495, 24
  %2497 = uitofp i32 %2496 to float
  %2498 = fmul fast float %2497, 0x3F70101020000000
  %2499 = and i32 %2495, 255
  %2500 = uitofp i32 %2499 to float
  %2501 = fmul fast float %2500, 0x3F70101020000000
  %2502 = lshr i32 %2495, 8
  %2503 = and i32 %2502, 255
  %2504 = uitofp i32 %2503 to float
  %2505 = fmul fast float %2504, 0x3F70101020000000
  %2506 = lshr i32 %2495, 16
  %2507 = and i32 %2506, 255
  %2508 = uitofp i32 %2507 to float
  %2509 = fmul fast float %2508, 0x3F70101020000000
  %2510 = add i32 %52, 252
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2527 = bitcast float %2451 to i32
  %2528 = ashr i32 %2527, 1
  %2529 = sub nsw i32 1597463174, %2528
  %2530 = bitcast i32 %2529 to float
  %2531 = fmul fast float %2451, 5.000000e-01
  %2532 = fmul fast float %2530, %2530
  %2533 = fmul fast float %2532, %2531
  %2534 = fsub fast float 1.500000e+00, %2533
  %2535 = fmul fast float %2530, %2451
  %2536 = fmul fast float %2535, %2534
  %2537 = bitcast float %2452 to i32
  %2538 = ashr i32 %2537, 1
  %2539 = sub nsw i32 1597463174, %2538
  %2540 = bitcast i32 %2539 to float
  %2541 = fmul fast float %2452, 5.000000e-01
  %2542 = fmul fast float %2540, %2540
  %2543 = fmul fast float %2542, %2541
  %2544 = fsub fast float 1.500000e+00, %2543
  %2545 = fmul fast float %2540, %2452
  %2546 = fmul fast float %2545, %2544
  %2547 = bitcast float %2453 to i32
  %2548 = ashr i32 %2547, 1
  %2549 = sub nsw i32 1597463174, %2548
  %2550 = bitcast i32 %2549 to float
  %2551 = fmul fast float %2453, 5.000000e-01
  %2552 = fmul fast float %2550, %2550
  %2553 = fmul fast float %2552, %2551
  %2554 = fsub fast float 1.500000e+00, %2553
  %2555 = fmul fast float %2550, %2453
  %2556 = fmul fast float %2555, %2554
  %2557 = fsub fast float %2536, %2518
  %2558 = fsub fast float %2546, %2522
  %2559 = fsub fast float %2556, %2526
  %2560 = fmul fast float %2557, %2486
  %2561 = fmul fast float %2558, %2488
  %2562 = fmul fast float %2559, %2493
  %2563 = fadd fast float %2560, %2501
  %2564 = fadd fast float %2561, %2505
  %2565 = fadd fast float %2562, %2509
  %2566 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  %2567 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2568 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2569 = fmul fast float %2566, %2566
  %2570 = fmul fast float %2567, %2567
  %2571 = fmul fast float %2568, %2568
  %2572 = fsub fast float %2569, %2451
  %2573 = fsub fast float %2570, %2452
  %2574 = fsub fast float %2571, %2453
  %2575 = fmul fast float %2572, %2476
  %2576 = fmul fast float %2573, %2476
  %2577 = fmul fast float %2574, %2476
  %2578 = fadd fast float %2575, %2451
  %2579 = fadd fast float %2576, %2452
  %2580 = fadd fast float %2577, %2453
  %2581 = fadd fast float %2498, %2462
  %2582 = fsub fast float %2581, %2515
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = fsub fast float %2583, %2462
  %2585 = fmul fast float %2584, %2476
  %2586 = fadd fast float %2585, %2462
  br label %2640

; <label>:2587                                    ; preds = %2475
  %2588 = and i32 %2478, 134217728
  %2589 = icmp eq i32 %2588, 0
  br i1 %2589, label %2624, label %2590

; <label>:2590                                    ; preds = %2587
  %2591 = call float @dx.op.unary.f32(i32 24, float %534)  ; Sqrt(value)
  %2592 = call float @dx.op.unary.f32(i32 24, float %535)  ; Sqrt(value)
  %2593 = call float @dx.op.unary.f32(i32 24, float %536)  ; Sqrt(value)
  %2594 = fadd fast float %2591, -5.000000e-01
  %2595 = fadd fast float %2592, -5.000000e-01
  %2596 = fadd fast float %2593, -5.000000e-01
  %2597 = fmul fast float %2594, %2476
  %2598 = fmul fast float %2595, %2476
  %2599 = fmul fast float %2596, %2476
  %2600 = fadd fast float %2597, 5.000000e-01
  %2601 = fadd fast float %2598, 5.000000e-01
  %2602 = fadd fast float %2599, 5.000000e-01
  %2603 = call float @dx.op.unary.f32(i32 24, float %2451)  ; Sqrt(value)
  %2604 = call float @dx.op.unary.f32(i32 24, float %2452)  ; Sqrt(value)
  %2605 = call float @dx.op.unary.f32(i32 24, float %2453)  ; Sqrt(value)
  %2606 = fmul fast float %2600, 2.000000e+00
  %2607 = fsub fast float 1.000000e+00, %2606
  %2608 = fmul fast float %2607, %2603
  %2609 = fadd fast float %2608, %2606
  %2610 = fmul fast float %2609, %2603
  %2611 = fmul fast float %2601, 2.000000e+00
  %2612 = fsub fast float 1.000000e+00, %2611
  %2613 = fmul fast float %2612, %2604
  %2614 = fadd fast float %2613, %2611
  %2615 = fmul fast float %2614, %2604
  %2616 = fmul fast float %2602, 2.000000e+00
  %2617 = fsub fast float 1.000000e+00, %2616
  %2618 = fmul fast float %2617, %2605
  %2619 = fadd fast float %2618, %2616
  %2620 = fmul fast float %2619, %2605
  %2621 = fmul fast float %2610, %2610
  %2622 = fmul fast float %2615, %2615
  %2623 = fmul fast float %2620, %2620
  br label %2640

; <label>:2624                                    ; preds = %2587
  %2625 = fmul fast float %534, %534
  %2626 = fmul fast float %535, %535
  %2627 = fmul fast float %536, %536
  %2628 = fadd fast float %2625, -1.000000e+00
  %2629 = fadd fast float %2626, -1.000000e+00
  %2630 = fadd fast float %2627, -1.000000e+00
  %2631 = fmul fast float %2476, %2628
  %2632 = fmul fast float %2476, %2629
  %2633 = fmul fast float %2476, %2630
  %2634 = fadd fast float %2631, 1.000000e+00
  %2635 = fadd fast float %2632, 1.000000e+00
  %2636 = fadd fast float %2633, 1.000000e+00
  %2637 = fmul fast float %2634, %2451
  %2638 = fmul fast float %2635, %2452
  %2639 = fmul fast float %2636, %2453
  br label %2640

; <label>:2640                                    ; preds = %2624, %2590, %2481, %2437
  %2641 = phi float [ %2586, %2481 ], [ %2462, %2590 ], [ %2462, %2624 ], [ 0x3FA23C0BE0000000, %2437 ]
  %2642 = phi float [ %2578, %2481 ], [ %2621, %2590 ], [ %2637, %2624 ], [ 1.000000e+00, %2437 ]
  %2643 = phi float [ %2579, %2481 ], [ %2622, %2590 ], [ %2638, %2624 ], [ 1.000000e+00, %2437 ]
  %2644 = phi float [ %2580, %2481 ], [ %2623, %2590 ], [ %2639, %2624 ], [ 1.000000e+00, %2437 ]
  %2645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.i32 %2645, 1
  %2647 = and i32 %2646, 1
  %2648 = icmp ne i32 %2647, 0
  %2649 = add i32 %52, 356
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 32
  %2653 = icmp ne i32 %2652, 0
  %2654 = and i1 %2648, %2653
  %2655 = select i1 %2654, float 1.000000e+00, float %2642
  %2656 = select i1 %2654, float 0x3FD3333340000000, float %2643
  %2657 = select i1 %2654, float 0x3FD3333340000000, float %2644
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 32
  %2661 = icmp eq i32 %2660, 0
  br i1 %2661, label %2734, label %2662

; <label>:2662                                    ; preds = %2640
  %2663 = add i32 %52, 124
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = add i32 %52, 432
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = add i32 %2668, 0
  %2670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2670, %dx.types.Handle %101, float %2362, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2672 = extractvalue %dx.types.ResRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.ResRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.ResRet.f32 %2671, 2
  %2675 = extractvalue %dx.types.ResRet.f32 %2671, 3
  %2676 = and i32 %2665, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = lshr i32 %2665, 8
  %2679 = and i32 %2678, 255
  %2680 = uitofp i32 %2679 to float
  %2681 = lshr i32 %2665, 16
  %2682 = and i32 %2681, 255
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2683, 0x3F70101000000000
  %2685 = fmul fast float %2672, %2677
  %2686 = fadd fast float %2685, %2680
  %2687 = fmul fast float %2686, 0x3F70101000000000
  %2688 = fadd fast float %2673, -5.000000e-01
  %2689 = fadd fast float %2675, -5.000000e-01
  %2690 = fmul fast float %2688, %2684
  %2691 = fmul fast float %2689, %2684
  %2692 = fadd fast float %2690, 5.000000e-01
  %2693 = fadd fast float %2691, 5.000000e-01
  %2694 = fmul fast float %2692, 2.000000e+00
  %2695 = fadd fast float %2694, -1.000000e+00
  %2696 = fmul fast float %2693, 2.000000e+00
  %2697 = fadd fast float %2696, -1.000000e+00
  %2698 = fadd fast float %2695, %2697
  %2699 = fmul fast float %2698, 5.000000e-01
  %2700 = fsub fast float %2695, %2697
  %2701 = fmul fast float %2700, 5.000000e-01
  %2702 = call float @dx.op.unary.f32(i32 6, float %2699)  ; FAbs(value)
  %2703 = fsub fast float 1.000000e+00, %2702
  %2704 = call float @dx.op.unary.f32(i32 6, float %2701)  ; FAbs(value)
  %2705 = fsub fast float %2703, %2704
  %2706 = call float @dx.op.dot3.f32(i32 55, float %2699, float %2701, float %2705, float %2699, float %2701, float %2705)  ; Dot3(ax,ay,az,bx,by,bz)
  %2707 = call float @dx.op.unary.f32(i32 25, float %2706)  ; Rsqrt(value)
  %2708 = fmul fast float %2699, %2707
  %2709 = fmul fast float %2701, %2707
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = and i32 %2711, 67108864
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2730, label %2714

; <label>:2714                                    ; preds = %2662
  %2715 = add i32 %52, 312
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = and i32 %2717, 65535
  %2719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2718)  ; LegacyF16ToF32(value)
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 65535
  %2723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2722)  ; LegacyF16ToF32(value)
  %2724 = lshr i32 %2717, 16
  %2725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2724)  ; LegacyF16ToF32(value)
  %2726 = fsub fast float %2687, %2725
  %2727 = fmul fast float %2726, %2719
  %2728 = fadd fast float %2727, %2723
  %2729 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  br label %2730

; <label>:2730                                    ; preds = %2714, %2662
  %2731 = phi float [ %2729, %2714 ], [ %2687, %2662 ]
  %2732 = call float @dx.op.dot2.f32(i32 54, float %2708, float %2709, float %2266, float %2267)  ; Dot2(ax,ay,bx,by)
  %2733 = call float @dx.op.dot2.f32(i32 54, float %2708, float %2709, float %2268, float %2269)  ; Dot2(ax,ay,bx,by)
  br label %2734

; <label>:2734                                    ; preds = %2730, %2640
  %2735 = phi float [ %2731, %2730 ], [ 0x3FD6666660000000, %2640 ]
  %2736 = phi float [ %2732, %2730 ], [ 0.000000e+00, %2640 ]
  %2737 = phi float [ %2733, %2730 ], [ 0.000000e+00, %2640 ]
  %2738 = phi float [ %2674, %2730 ], [ 1.000000e+00, %2640 ]
  %2739 = add i32 %52, 192
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = lshr i32 %2741, 22
  %2743 = shl nuw nsw i32 %2742, 5
  %2744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2743)  ; LegacyF16ToF32(value)
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = and i32 %2746, 64
  %2748 = icmp eq i32 %2747, 0
  br i1 %2748, label %2782, label %2749

; <label>:2749                                    ; preds = %2734
  %2750 = add i32 %52, 448
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = add i32 %2752, 0
  %2754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 131072
  %2758 = icmp eq i32 %2757, 0
  %2759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2754, %dx.types.Handle %101, float %2362, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = fmul fast float %517, %2760
  %2764 = fmul fast float %518, %2761
  %2765 = fmul fast float %519, %2762
  br i1 %2758, label %2772, label %2766

; <label>:2766                                    ; preds = %2749
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = fmul fast float %2768, %2763
  %2770 = fmul fast float %2768, %2764
  %2771 = fmul fast float %2768, %2765
  br label %2772

; <label>:2772                                    ; preds = %2766, %2749
  %2773 = phi float [ %2769, %2766 ], [ %2763, %2749 ]
  %2774 = phi float [ %2770, %2766 ], [ %2764, %2749 ]
  %2775 = phi float [ %2771, %2766 ], [ %2765, %2749 ]
  %2776 = fmul fast float %2773, %2744
  %2777 = select i1 %292, float %2776, float %2773
  %2778 = call float @dx.op.dot3.f32(i32 55, float %2777, float %2774, float %2775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2779 = select i1 %292, float 0.000000e+00, float %2773
  %2780 = select i1 %292, float %2778, float %2774
  %2781 = select i1 %292, float 0.000000e+00, float %2775
  br label %2782

; <label>:2782                                    ; preds = %2772, %2734
  %2783 = phi float [ %2779, %2772 ], [ 0.000000e+00, %2734 ]
  %2784 = phi float [ %2780, %2772 ], [ 0.000000e+00, %2734 ]
  %2785 = phi float [ %2781, %2772 ], [ 0.000000e+00, %2734 ]
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = and i32 %2787, 1024
  %2789 = icmp eq i32 %2788, 0
  br i1 %2789, label %2820, label %2790

; <label>:2790                                    ; preds = %2782
  %2791 = add i32 %52, 184
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = and i32 %2793, 255
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F70101020000000
  %2797 = lshr i32 %2793, 8
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2799, 0x3F70101020000000
  %2801 = lshr i32 %2793, 16
  %2802 = and i32 %2801, 255
  %2803 = uitofp i32 %2802 to float
  %2804 = fmul fast float %2803, 0x3F70101020000000
  %2805 = fmul fast float %2796, %2796
  %2806 = fmul fast float %2800, %2800
  %2807 = fmul fast float %2804, %2804
  %2808 = add i32 %52, 516
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = add i32 %2810, 0
  %2812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2811, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2813 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2812, %dx.types.Handle %102, float %2362, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2814 = extractvalue %dx.types.ResRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.ResRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.ResRet.f32 %2813, 2
  %2817 = fmul fast float %2805, %2814
  %2818 = fmul fast float %2806, %2815
  %2819 = fmul fast float %2807, %2816
  br label %2820

; <label>:2820                                    ; preds = %2790, %2782
  %2821 = phi float [ %2817, %2790 ], [ 0.000000e+00, %2782 ]
  %2822 = phi float [ %2818, %2790 ], [ 0.000000e+00, %2782 ]
  %2823 = phi float [ %2819, %2790 ], [ 0.000000e+00, %2782 ]
  %2824 = fcmp fast ogt float %2821, 0.000000e+00
  %2825 = fcmp fast ogt float %2822, 0.000000e+00
  %2826 = fcmp fast ogt float %2823, 0.000000e+00
  %2827 = call float @dx.op.unary.f32(i32 23, float %2821)  ; Log(value)
  %2828 = call float @dx.op.unary.f32(i32 23, float %2822)  ; Log(value)
  %2829 = call float @dx.op.unary.f32(i32 23, float %2823)  ; Log(value)
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = lshr i32 %2831, 7
  %2833 = and i32 %2832, 32752
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = fmul fast float %2827, 0xBFE62E4300000000
  %2836 = fmul fast float %2835, %2834
  %2837 = fmul fast float %2828, 0xBFE62E4300000000
  %2838 = fmul fast float %2837, %2834
  %2839 = fmul fast float %2829, 0xBFE62E4300000000
  %2840 = fmul fast float %2839, %2834
  %2841 = select i1 %2824, float %2836, float 1.270000e+02
  %2842 = select i1 %2825, float %2838, float 1.270000e+02
  %2843 = select i1 %2826, float %2840, float 1.270000e+02
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = and i32 %2845, 2048
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %2863, label %2848

; <label>:2848                                    ; preds = %2820
  %2849 = add i32 %52, 532
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = add i32 %2851, 0
  %2853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2853, %dx.types.Handle %102, float %2362, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2855 = extractvalue %dx.types.ResRet.f32 %2854, 3
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = shl i32 %2857, 4
  %2859 = and i32 %2858, 32752
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = fmul fast float %2860, %2855
  %2862 = call float @dx.op.binary.f32(i32 35, float %2861, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2863

; <label>:2863                                    ; preds = %2848, %2820
  %2864 = phi float [ %2862, %2848 ], [ 0x3F70101020000000, %2820 ]
  %2865 = add i32 %52, 128
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, 255
  %2869 = uitofp i32 %2868 to float
  %2870 = lshr i32 %2867, 8
  %2871 = and i32 %2870, 255
  %2872 = uitofp i32 %2871 to float
  %2873 = call float @dx.op.dot3.f32(i32 55, float %2655, float %2656, float %2657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2874 = fmul fast float %2872, %2873
  %2875 = fadd fast float %2874, %2869
  %2876 = fmul fast float %2875, 0x3F70101020000000
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  br i1 %2254, label %2878, label %2913

; <label>:2878                                    ; preds = %2863
  %2879 = fmul fast float %2864, 2.000000e+00
  %2880 = fcmp fast olt float %2841, 1.270000e+02
  %2881 = fcmp fast olt float %2842, 1.270000e+02
  %2882 = fcmp fast olt float %2843, 1.270000e+02
  %2883 = fmul fast float %2841, 0xBFF7154760000000
  %2884 = fmul fast float %2883, %2879
  %2885 = fmul fast float %2842, 0xBFF7154760000000
  %2886 = fmul fast float %2885, %2879
  %2887 = fmul fast float %2843, 0xBFF7154760000000
  %2888 = fmul fast float %2887, %2879
  %2889 = call float @dx.op.unary.f32(i32 21, float %2884)  ; Exp(value)
  %2890 = call float @dx.op.unary.f32(i32 21, float %2886)  ; Exp(value)
  %2891 = call float @dx.op.unary.f32(i32 21, float %2888)  ; Exp(value)
  %2892 = call float @dx.op.unary.f32(i32 7, float %2889)  ; Saturate(value)
  %2893 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  %2894 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2895 = fadd fast float %2892, -1.000000e+00
  %2896 = select i1 %2880, float %2895, float -1.000000e+00
  %2897 = fadd fast float %2893, -1.000000e+00
  %2898 = select i1 %2881, float %2897, float -1.000000e+00
  %2899 = fadd fast float %2894, -1.000000e+00
  %2900 = select i1 %2882, float %2899, float -1.000000e+00
  %2901 = fmul fast float %2896, %2435
  %2902 = fmul fast float %2898, %2435
  %2903 = fmul fast float %2900, %2435
  %2904 = fadd fast float %2901, 1.000000e+00
  %2905 = fadd fast float %2902, 1.000000e+00
  %2906 = fadd fast float %2903, 1.000000e+00
  %2907 = fmul fast float %2904, %2239
  %2908 = fmul fast float %2905, %2240
  %2909 = fmul fast float %2906, %2241
  %2910 = fmul fast float %2904, %2242
  %2911 = fmul fast float %2905, %2243
  %2912 = fmul fast float %2906, %2244
  br label %2913

; <label>:2913                                    ; preds = %2878, %2863
  %2914 = phi float [ %2907, %2878 ], [ %2239, %2863 ]
  %2915 = phi float [ %2908, %2878 ], [ %2240, %2863 ]
  %2916 = phi float [ %2909, %2878 ], [ %2241, %2863 ]
  %2917 = phi float [ %2910, %2878 ], [ %2242, %2863 ]
  %2918 = phi float [ %2911, %2878 ], [ %2243, %2863 ]
  %2919 = phi float [ %2912, %2878 ], [ %2244, %2863 ]
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 3
  %2923 = icmp eq i32 %2922, 3
  br i1 %2923, label %3002, label %2924

; <label>:2924                                    ; preds = %2913
  %2925 = and i32 %2921, 16
  %2926 = icmp ne i32 %2925, 0
  %2927 = select i1 %2926, float %2435, float 0.000000e+00
  %2928 = icmp eq i32 %2922, 0
  br i1 %2928, label %2929, label %2957

; <label>:2929                                    ; preds = %2924
  %2930 = and i32 %2921, 64
  %2931 = icmp ne i32 %2930, 0
  %2932 = select i1 %2931, float %2435, float 0.000000e+00
  %2933 = fsub fast float %2655, %2914
  %2934 = fsub fast float %2656, %2915
  %2935 = fsub fast float %2657, %2916
  %2936 = fmul fast float %2927, %2933
  %2937 = fmul fast float %2927, %2934
  %2938 = fmul fast float %2927, %2935
  %2939 = fadd fast float %2936, %2914
  %2940 = fadd fast float %2937, %2915
  %2941 = fadd fast float %2938, %2916
  %2942 = fsub fast float %2641, %2248
  %2943 = fmul fast float %2927, %2942
  %2944 = fadd fast float %2943, %2248
  %2945 = fsub fast float %2783, %2917
  %2946 = fsub fast float %2784, %2918
  %2947 = fsub fast float %2785, %2919
  %2948 = fmul fast float %2932, %2945
  %2949 = fmul fast float %2932, %2946
  %2950 = fmul fast float %2932, %2947
  %2951 = fadd fast float %2948, %2917
  %2952 = fadd fast float %2949, %2918
  %2953 = fadd fast float %2950, %2919
  %2954 = fsub fast float %2877, %2252
  %2955 = fmul fast float %2927, %2954
  %2956 = fadd fast float %2955, %2252
  br label %3002

; <label>:2957                                    ; preds = %2924
  %2958 = icmp eq i32 %2922, 1
  br i1 %2958, label %2959, label %2972

; <label>:2959                                    ; preds = %2957
  %2960 = fadd fast float %2655, -1.000000e+00
  %2961 = fadd fast float %2656, -1.000000e+00
  %2962 = fadd fast float %2657, -1.000000e+00
  %2963 = fmul fast float %2927, %2960
  %2964 = fmul fast float %2927, %2961
  %2965 = fmul fast float %2927, %2962
  %2966 = fadd fast float %2963, 1.000000e+00
  %2967 = fadd fast float %2964, 1.000000e+00
  %2968 = fadd fast float %2965, 1.000000e+00
  %2969 = fmul fast float %2966, %2914
  %2970 = fmul fast float %2967, %2915
  %2971 = fmul fast float %2968, %2916
  br label %3002

; <label>:2972                                    ; preds = %2957
  %2973 = icmp eq i32 %2922, 2
  br i1 %2973, label %2974, label %3002

; <label>:2974                                    ; preds = %2972
  %2975 = call float @dx.op.unary.f32(i32 24, float %2655)  ; Sqrt(value)
  %2976 = call float @dx.op.unary.f32(i32 24, float %2656)  ; Sqrt(value)
  %2977 = call float @dx.op.unary.f32(i32 24, float %2657)  ; Sqrt(value)
  %2978 = fadd fast float %2975, -5.000000e-01
  %2979 = fadd fast float %2976, -5.000000e-01
  %2980 = fadd fast float %2977, -5.000000e-01
  %2981 = fmul fast float %2978, %2927
  %2982 = fmul fast float %2979, %2927
  %2983 = fmul fast float %2980, %2927
  %2984 = fadd fast float %2981, 5.000000e-01
  %2985 = fadd fast float %2982, 5.000000e-01
  %2986 = fadd fast float %2983, 5.000000e-01
  %2987 = fmul fast float %2984, 2.000000e+00
  %2988 = fsub fast float 1.000000e+00, %2987
  %2989 = fmul fast float %2988, %2914
  %2990 = fadd fast float %2989, %2987
  %2991 = fmul fast float %2990, %2914
  %2992 = fmul fast float %2985, 2.000000e+00
  %2993 = fsub fast float 1.000000e+00, %2992
  %2994 = fmul fast float %2993, %2915
  %2995 = fadd fast float %2994, %2992
  %2996 = fmul fast float %2995, %2915
  %2997 = fmul fast float %2986, 2.000000e+00
  %2998 = fsub fast float 1.000000e+00, %2997
  %2999 = fmul fast float %2998, %2916
  %3000 = fadd fast float %2999, %2997
  %3001 = fmul fast float %3000, %2916
  br label %3002

; <label>:3002                                    ; preds = %2974, %2972, %2959, %2929, %2913
  %3003 = phi float [ %2914, %2913 ], [ %2991, %2974 ], [ %2914, %2972 ], [ %2969, %2959 ], [ %2939, %2929 ]
  %3004 = phi float [ %2915, %2913 ], [ %2996, %2974 ], [ %2915, %2972 ], [ %2970, %2959 ], [ %2940, %2929 ]
  %3005 = phi float [ %2916, %2913 ], [ %3001, %2974 ], [ %2916, %2972 ], [ %2971, %2959 ], [ %2941, %2929 ]
  %3006 = phi float [ %2917, %2913 ], [ %2917, %2974 ], [ %2917, %2972 ], [ %2917, %2959 ], [ %2951, %2929 ]
  %3007 = phi float [ %2918, %2913 ], [ %2918, %2974 ], [ %2918, %2972 ], [ %2918, %2959 ], [ %2952, %2929 ]
  %3008 = phi float [ %2919, %2913 ], [ %2919, %2974 ], [ %2919, %2972 ], [ %2919, %2959 ], [ %2953, %2929 ]
  %3009 = phi float [ %2248, %2913 ], [ %2248, %2974 ], [ %2248, %2972 ], [ %2248, %2959 ], [ %2944, %2929 ]
  %3010 = phi float [ %2252, %2913 ], [ %2252, %2974 ], [ %2252, %2972 ], [ %2252, %2959 ], [ %2956, %2929 ]
  %3011 = and i32 %2921, 12
  %3012 = icmp eq i32 %3011, 12
  br i1 %3012, label %3119, label %3013

; <label>:3013                                    ; preds = %3002
  %3014 = and i32 %2921, 2097184
  %3015 = icmp eq i32 %3014, 2097184
  %3016 = select i1 %3015, float %2435, float 0.000000e+00
  %3017 = and i32 %2921, 4194336
  %3018 = icmp eq i32 %3017, 4194336
  %3019 = select i1 %3018, float %2435, float 0.000000e+00
  %3020 = and i32 %2921, 8388640
  %3021 = icmp eq i32 %3020, 8388640
  %3022 = select i1 %3021, float %2435, float 0.000000e+00
  %3023 = and i32 %2921, 1024
  %3024 = icmp ne i32 %3023, 0
  %3025 = select i1 %3024, float %2435, float 0.000000e+00
  %3026 = and i32 %2921, 2048
  %3027 = icmp ne i32 %3026, 0
  %3028 = select i1 %3027, float %2435, float 0.000000e+00
  %3029 = icmp eq i32 %3011, 0
  br i1 %3029, label %3030, label %3055

; <label>:3030                                    ; preds = %3013
  %3031 = fsub fast float %2736, %2237
  %3032 = fsub fast float %2737, %2238
  %3033 = fmul fast float %3016, %3031
  %3034 = fmul fast float %3016, %3032
  %3035 = fadd fast float %3033, %2237
  %3036 = fadd fast float %3034, %2238
  %3037 = fsub fast float %2738, %2250
  %3038 = fmul fast float %3019, %3037
  %3039 = fadd fast float %3038, %2250
  %3040 = fsub fast float %2735, %2249
  %3041 = fmul fast float %3022, %3040
  %3042 = fadd fast float %3041, %2249
  %3043 = fsub fast float %2841, %2245
  %3044 = fsub fast float %2842, %2246
  %3045 = fsub fast float %2843, %2247
  %3046 = fmul fast float %3025, %3043
  %3047 = fmul fast float %3025, %3044
  %3048 = fmul fast float %3025, %3045
  %3049 = fadd fast float %3046, %2245
  %3050 = fadd fast float %3047, %2246
  %3051 = fadd fast float %3048, %2247
  %3052 = fsub fast float %2864, %2251
  %3053 = fmul fast float %3028, %3052
  %3054 = fadd fast float %3053, %2251
  br label %3119

; <label>:3055                                    ; preds = %3013
  %3056 = icmp eq i32 %3011, 4
  br i1 %3056, label %3057, label %3097

; <label>:3057                                    ; preds = %3055
  %3058 = fmul fast float %3016, %2736
  %3059 = fmul fast float %3016, %2737
  %3060 = fadd fast float %3058, %2237
  %3061 = fadd fast float %3059, %2238
  %3062 = call float @dx.op.binary.f32(i32 36, float %2250, float %2738)  ; FMin(a,b)
  %3063 = fsub fast float %3062, %2250
  %3064 = fmul fast float %3063, %3019
  %3065 = fadd fast float %3064, %2250
  %3066 = fadd fast float %2735, %2249
  %3067 = fmul fast float %3066, 0x3FF337FAE0000000
  %3068 = fmul fast float %2249, %2249
  %3069 = fmul fast float %2735, %2735
  %3070 = fadd fast float %3069, %3068
  %3071 = fmul fast float %3070, 0x3FE5152B00000000
  %3072 = fmul fast float %2249, 0xBFCC1F85E0000000
  %3073 = fmul fast float %3072, %2735
  %3074 = fadd fast float %3073, 0xBFE1363700000000
  %3075 = fadd fast float %3074, %3067
  %3076 = fsub fast float %3075, %3071
  %3077 = fmul fast float %3066, 0x3FBA6F0D00000000
  %3078 = fmul fast float %3070, 0x3FD0432880000000
  %3079 = fmul fast float %2249, 0xBFEF110800000000
  %3080 = fmul fast float %3079, %2735
  %3081 = fadd fast float %3080, 1.000000e+00
  %3082 = fsub fast float %3081, %3077
  %3083 = fadd fast float %3082, %3078
  %3084 = fdiv fast float %3076, %3083
  %3085 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  %3086 = fsub fast float %3085, %2249
  %3087 = fmul fast float %3086, %3022
  %3088 = fadd fast float %3087, %2249
  %3089 = fmul fast float %3025, %2841
  %3090 = fmul fast float %3025, %2842
  %3091 = fmul fast float %3025, %2843
  %3092 = fadd fast float %3089, %2245
  %3093 = fadd fast float %3090, %2246
  %3094 = fadd fast float %3091, %2247
  %3095 = fmul fast float %3028, %2864
  %3096 = fadd fast float %3095, %2251
  br label %3119

; <label>:3097                                    ; preds = %3055
  %3098 = icmp eq i32 %3011, 8
  br i1 %3098, label %3099, label %3119

; <label>:3099                                    ; preds = %3097
  %3100 = fmul fast float %3016, %2736
  %3101 = fmul fast float %3016, %2737
  %3102 = fadd fast float %3100, %2237
  %3103 = fadd fast float %3101, %2238
  %3104 = call float @dx.op.binary.f32(i32 36, float %2250, float %2738)  ; FMin(a,b)
  %3105 = fsub fast float %3104, %2250
  %3106 = fmul fast float %3105, %3019
  %3107 = fadd fast float %3106, %2250
  %3108 = fsub fast float %2735, %2249
  %3109 = fmul fast float %3022, %3108
  %3110 = fadd fast float %3109, %2249
  %3111 = fmul fast float %3025, %2841
  %3112 = fmul fast float %3025, %2842
  %3113 = fmul fast float %3025, %2843
  %3114 = fadd fast float %3111, %2245
  %3115 = fadd fast float %3112, %2246
  %3116 = fadd fast float %3113, %2247
  %3117 = fmul fast float %3028, %2864
  %3118 = fadd fast float %3117, %2251
  br label %3119

; <label>:3119                                    ; preds = %3099, %3097, %3057, %3030, %3002, %2434, %2253, %2236
  %3120 = phi float [ %2237, %3002 ], [ %2237, %2434 ], [ %2237, %2236 ], [ %3102, %3099 ], [ %2237, %3097 ], [ %3060, %3057 ], [ %3035, %3030 ], [ %2237, %2253 ]
  %3121 = phi float [ %2238, %3002 ], [ %2238, %2434 ], [ %2238, %2236 ], [ %3103, %3099 ], [ %2238, %3097 ], [ %3061, %3057 ], [ %3036, %3030 ], [ %2238, %2253 ]
  %3122 = phi float [ %3003, %3002 ], [ %2239, %2434 ], [ %2239, %2236 ], [ %3003, %3099 ], [ %3003, %3097 ], [ %3003, %3057 ], [ %3003, %3030 ], [ %2239, %2253 ]
  %3123 = phi float [ %3004, %3002 ], [ %2240, %2434 ], [ %2240, %2236 ], [ %3004, %3099 ], [ %3004, %3097 ], [ %3004, %3057 ], [ %3004, %3030 ], [ %2240, %2253 ]
  %3124 = phi float [ %3005, %3002 ], [ %2241, %2434 ], [ %2241, %2236 ], [ %3005, %3099 ], [ %3005, %3097 ], [ %3005, %3057 ], [ %3005, %3030 ], [ %2241, %2253 ]
  %3125 = phi float [ %3006, %3002 ], [ %2242, %2434 ], [ %2242, %2236 ], [ %3006, %3099 ], [ %3006, %3097 ], [ %3006, %3057 ], [ %3006, %3030 ], [ %2242, %2253 ]
  %3126 = phi float [ %3007, %3002 ], [ %2243, %2434 ], [ %2243, %2236 ], [ %3007, %3099 ], [ %3007, %3097 ], [ %3007, %3057 ], [ %3007, %3030 ], [ %2243, %2253 ]
  %3127 = phi float [ %3008, %3002 ], [ %2244, %2434 ], [ %2244, %2236 ], [ %3008, %3099 ], [ %3008, %3097 ], [ %3008, %3057 ], [ %3008, %3030 ], [ %2244, %2253 ]
  %3128 = phi float [ %2245, %3002 ], [ %2245, %2434 ], [ %2245, %2236 ], [ %3114, %3099 ], [ %2245, %3097 ], [ %3092, %3057 ], [ %3049, %3030 ], [ %2245, %2253 ]
  %3129 = phi float [ %2246, %3002 ], [ %2246, %2434 ], [ %2246, %2236 ], [ %3115, %3099 ], [ %2246, %3097 ], [ %3093, %3057 ], [ %3050, %3030 ], [ %2246, %2253 ]
  %3130 = phi float [ %2247, %3002 ], [ %2247, %2434 ], [ %2247, %2236 ], [ %3116, %3099 ], [ %2247, %3097 ], [ %3094, %3057 ], [ %3051, %3030 ], [ %2247, %2253 ]
  %3131 = phi float [ %3009, %3002 ], [ %2248, %2434 ], [ %2248, %2236 ], [ %3009, %3099 ], [ %3009, %3097 ], [ %3009, %3057 ], [ %3009, %3030 ], [ %2248, %2253 ]
  %3132 = phi float [ %2249, %3002 ], [ %2249, %2434 ], [ %2249, %2236 ], [ %3110, %3099 ], [ %2249, %3097 ], [ %3088, %3057 ], [ %3042, %3030 ], [ %2249, %2253 ]
  %3133 = phi float [ %2250, %3002 ], [ %2250, %2434 ], [ %2250, %2236 ], [ %3107, %3099 ], [ %2250, %3097 ], [ %3065, %3057 ], [ %3039, %3030 ], [ %2250, %2253 ]
  %3134 = phi float [ %2251, %3002 ], [ %2251, %2434 ], [ %2251, %2236 ], [ %3118, %3099 ], [ %2251, %3097 ], [ %3096, %3057 ], [ %3054, %3030 ], [ %2251, %2253 ]
  %3135 = phi float [ %3010, %3002 ], [ %2252, %2434 ], [ %2252, %2236 ], [ %3010, %3099 ], [ %3010, %3097 ], [ %3010, %3057 ], [ %3010, %3030 ], [ %2252, %2253 ]
  br i1 %676, label %4002, label %3136

; <label>:3136                                    ; preds = %3119
  %3137 = icmp ult i32 %730, 4
  %3138 = add i32 %52, 72
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %52, 76
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = or i32 %3143, %3140
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %4002, label %3146

; <label>:3146                                    ; preds = %3136
  %3147 = and i32 %3140, 262144
  %3148 = icmp ne i32 %3147, 0
  %3149 = select i1 %3148, float %59, float 1.000000e+00
  %3150 = select i1 %3148, float %60, float 0.000000e+00
  %3151 = select i1 %3148, float %61, float 0.000000e+00
  %3152 = select i1 %3148, float %62, float 1.000000e+00
  %3153 = select i1 %3148, float %63, float %87
  %3154 = select i1 %3148, float %64, float %88
  %3155 = add i32 %52, 332
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = lshr i32 %3157, 16
  %3159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3158)  ; LegacyF16ToF32(value)
  %3160 = fmul fast float %3159, 0x3F50624DE0000000
  %3161 = add i32 %52, 136
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = lshr i32 %3163, 16
  %3165 = and i32 %3164, 255
  %3166 = lshr i32 %3163, 24
  %3167 = add i32 %52, 340
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = lshr i32 %3169, 16
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = add i32 %52, 80
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = lshr i32 %3176, 22
  %3178 = shl nuw nsw i32 %3177, 5
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = shl i32 %3176, 4
  %3181 = and i32 %3180, 32752
  %3182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3181)  ; LegacyF16ToF32(value)
  %3183 = lshr i32 %3176, 7
  %3184 = and i32 %3183, 32752
  %3185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3184)  ; LegacyF16ToF32(value)
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 3
  %3188 = fmul fast float %3187, 1.000000e+03
  %3189 = fmul fast float %3188, %665
  %3190 = call float @dx.op.unary.f32(i32 22, float %3189)  ; Frc(value)
  %3191 = fadd fast float %3190, %653
  %3192 = fmul fast float %3188, %667
  %3193 = call float @dx.op.unary.f32(i32 22, float %3192)  ; Frc(value)
  %3194 = fadd fast float %3193, %654
  %3195 = fmul fast float %3160, %3188
  %3196 = call float @dx.op.unary.f32(i32 22, float %3195)  ; Frc(value)
  %3197 = fmul fast float %3196, 0x401921FB60000000
  %3198 = fadd fast float %3197, %3179
  %3199 = call float @dx.op.unary.f32(i32 13, float %3198)  ; Sin(value)
  %3200 = call float @dx.op.unary.f32(i32 12, float %3198)  ; Cos(value)
  %3201 = fsub fast float -0.000000e+00, %3199
  %3202 = fadd fast float %3153, -5.000000e-01
  %3203 = fadd fast float %3154, -5.000000e-01
  %3204 = fmul fast float %3171, %3202
  %3205 = fmul fast float %3173, %3203
  %3206 = fadd fast float %3204, 5.000000e-01
  %3207 = fadd fast float %3205, 5.000000e-01
  %3208 = fmul fast float %3182, %3206
  %3209 = fmul fast float %3185, %3207
  %3210 = fmul fast float %3200, %3208
  %3211 = call float @dx.op.tertiary.f32(i32 46, float %3201, float %3209, float %3210)  ; FMad(a,b,c)
  %3212 = fmul fast float %3199, %3208
  %3213 = call float @dx.op.tertiary.f32(i32 46, float %3200, float %3209, float %3212)  ; FMad(a,b,c)
  %3214 = fadd fast float %3191, %3211
  %3215 = fadd fast float %3194, %3213
  %3216 = icmp ugt i32 %3165, 1
  %3217 = icmp ugt i32 %3163, 33554431
  %3218 = or i1 %3217, %3216
  br i1 %3218, label %3219, label %3244

; <label>:3219                                    ; preds = %3146
  %3220 = add i32 %52, 276
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = lshr i32 %3222, 16
  %3224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3223)  ; LegacyF16ToF32(value)
  %3225 = fmul fast float %3187, %3224
  %3226 = call float @dx.op.unary.f32(i32 22, float %3225)  ; Frc(value)
  %3227 = mul nuw nsw i32 %3165, %3166
  %3228 = uitofp i32 %3227 to float
  %3229 = fmul fast float %3226, %3228
  %3230 = call float @dx.op.unary.f32(i32 27, float %3229)  ; Round_ni(value)
  %3231 = fptoui float %3230 to i32
  %3232 = urem i32 %3231, %3165
  %3233 = udiv i32 %3231, %3166
  %3234 = call float @dx.op.unary.f32(i32 22, float %3214)  ; Frc(value)
  %3235 = call float @dx.op.unary.f32(i32 22, float %3215)  ; Frc(value)
  %3236 = uitofp i32 %3232 to float
  %3237 = uitofp i32 %3233 to float
  %3238 = fadd fast float %3234, %3236
  %3239 = fadd fast float %3235, %3237
  %3240 = uitofp i32 %3165 to float
  %3241 = uitofp i32 %3166 to float
  %3242 = fdiv fast float %3238, %3240
  %3243 = fdiv fast float %3239, %3241
  br label %3244

; <label>:3244                                    ; preds = %3219, %3146
  %3245 = phi float [ %3242, %3219 ], [ %3214, %3146 ]
  %3246 = phi float [ %3243, %3219 ], [ %3215, %3146 ]
  %3247 = and i32 %3140, 256
  %3248 = icmp eq i32 %3247, 0
  br i1 %3248, label %3295, label %3249

; <label>:3249                                    ; preds = %3244
  %3250 = add i32 %52, 484
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = add i32 %3252, 0
  %3254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3254, %dx.types.Handle %102, float %3245, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  %3257 = add i32 %52, 148
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3257, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = shl i32 %3259, 4
  %3261 = and i32 %3260, 32752
  %3262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3261)  ; LegacyF16ToF32(value)
  %3263 = lshr i32 %3259, 7
  %3264 = and i32 %3263, 32752
  %3265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3264)  ; LegacyF16ToF32(value)
  %3266 = fsub fast float 1.000000e+00, %725
  %3267 = call float @dx.op.binary.f32(i32 35, float %3266, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3268 = bitcast float %725 to i32
  %3269 = sitofp i32 %3268 to float
  %3270 = fadd fast float %3269, 0xC1CFBF8940000000
  %3271 = fmul fast float %3265, %3270
  %3272 = fadd fast float %3271, 0x41CFBF8940000000
  %3273 = fptosi float %3272 to i32
  %3274 = bitcast i32 %3273 to float
  %3275 = bitcast float %3267 to i32
  %3276 = sitofp i32 %3275 to float
  %3277 = fadd fast float %3276, 0xC1CFBF8940000000
  %3278 = fmul fast float %3277, %3265
  %3279 = fadd fast float %3278, 0x41CFBF8940000000
  %3280 = fptosi float %3279 to i32
  %3281 = bitcast i32 %3280 to float
  %3282 = fmul fast float %3274, %3262
  %3283 = fmul fast float %3281, %3262
  %3284 = fsub fast float %3267, %3282
  %3285 = fadd fast float %3283, %3267
  %3286 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  %3287 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  %3288 = fsub fast float %3256, %3286
  %3289 = fsub fast float %3287, %3286
  %3290 = bitcast float %3289 to i32
  %3291 = sub nsw i32 2129859010, %3290
  %3292 = bitcast i32 %3291 to float
  %3293 = fmul fast float %3292, %3288
  %3294 = call float @dx.op.unary.f32(i32 7, float %3293)  ; Saturate(value)
  br label %3295

; <label>:3295                                    ; preds = %3249, %3244
  %3296 = phi float [ %3294, %3249 ], [ %725, %3244 ]
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = and i32 %3298, 128
  %3300 = icmp eq i32 %3299, 0
  br i1 %3300, label %3317, label %3301

; <label>:3301                                    ; preds = %3295
  %3302 = add i32 %52, 468
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = add i32 %3304, 0
  %3306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3307 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3306, %dx.types.Handle %102, float %3245, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3308 = extractvalue %dx.types.ResRet.f32 %3307, 0
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = and i32 %3310, 524288
  %3312 = icmp ne i32 %3311, 0
  %3313 = fcmp fast ogt float %3308, 0x3FE0101020000000
  %3314 = select i1 %3313, float 1.000000e+00, float 0.000000e+00
  %3315 = select i1 %3312, float %3314, float %3308
  %3316 = fmul fast float %3315, %3296
  br label %3317

; <label>:3317                                    ; preds = %3301, %3295
  %3318 = phi float [ %3316, %3301 ], [ %3296, %3295 ]
  %3319 = fcmp fast ult float %3318, 0x3F70101020000000
  br i1 %3319, label %4002, label %3320

; <label>:3320                                    ; preds = %3317
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = and i32 %3322, 16
  %3324 = icmp eq i32 %3323, 0
  br i1 %3324, label %3523, label %3325

; <label>:3325                                    ; preds = %3320
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = add i32 %52, 420
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = add i32 %3330, 0
  %3332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3333 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3332, %dx.types.Handle %101, float %3245, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3337 = extractvalue %dx.types.ResRet.f32 %3333, 3
  %3338 = and i32 %3327, 255
  %3339 = uitofp i32 %3338 to float
  %3340 = lshr i32 %3327, 8
  %3341 = and i32 %3340, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = fmul fast float %3337, %3339
  %3344 = fadd fast float %3343, %3342
  %3345 = fmul fast float %3344, 0x3F70101000000000
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 512
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3358, label %3350

; <label>:3350                                    ; preds = %3325
  %3351 = add i32 %52, 504
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = add i32 %3353, 0
  %3355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3355, %dx.types.Handle %102, float %3245, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  br label %3358

; <label>:3358                                    ; preds = %3350, %3325
  %3359 = phi float [ %3357, %3350 ], [ 1.000000e+00, %3325 ]
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = and i32 %3361, 33554432
  %3363 = icmp eq i32 %3362, 0
  br i1 %3363, label %3470, label %3364

; <label>:3364                                    ; preds = %3358
  %3365 = add i32 %52, 272
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = and i32 %3367, 65535
  %3369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3368)  ; LegacyF16ToF32(value)
  %3370 = lshr i32 %3367, 16
  %3371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3370)  ; LegacyF16ToF32(value)
  %3372 = add i32 %52, 276
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = and i32 %3374, 65535
  %3376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3375)  ; LegacyF16ToF32(value)
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = lshr i32 %3378, 24
  %3380 = uitofp i32 %3379 to float
  %3381 = fmul fast float %3380, 0x3F70101020000000
  %3382 = and i32 %3378, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = fmul fast float %3383, 0x3F70101020000000
  %3385 = lshr i32 %3378, 8
  %3386 = and i32 %3385, 255
  %3387 = uitofp i32 %3386 to float
  %3388 = fmul fast float %3387, 0x3F70101020000000
  %3389 = lshr i32 %3378, 16
  %3390 = and i32 %3389, 255
  %3391 = uitofp i32 %3390 to float
  %3392 = fmul fast float %3391, 0x3F70101020000000
  %3393 = add i32 %52, 268
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = lshr i32 %3395, 24
  %3397 = uitofp i32 %3396 to float
  %3398 = fmul fast float %3397, 0x3F70101020000000
  %3399 = and i32 %3395, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = fmul fast float %3400, 0x3F70101020000000
  %3402 = lshr i32 %3395, 8
  %3403 = and i32 %3402, 255
  %3404 = uitofp i32 %3403 to float
  %3405 = fmul fast float %3404, 0x3F70101020000000
  %3406 = lshr i32 %3395, 16
  %3407 = and i32 %3406, 255
  %3408 = uitofp i32 %3407 to float
  %3409 = fmul fast float %3408, 0x3F70101020000000
  %3410 = bitcast float %3334 to i32
  %3411 = ashr i32 %3410, 1
  %3412 = sub nsw i32 1597463174, %3411
  %3413 = bitcast i32 %3412 to float
  %3414 = fmul fast float %3334, 5.000000e-01
  %3415 = fmul fast float %3413, %3413
  %3416 = fmul fast float %3415, %3414
  %3417 = fsub fast float 1.500000e+00, %3416
  %3418 = fmul fast float %3413, %3334
  %3419 = fmul fast float %3418, %3417
  %3420 = bitcast float %3335 to i32
  %3421 = ashr i32 %3420, 1
  %3422 = sub nsw i32 1597463174, %3421
  %3423 = bitcast i32 %3422 to float
  %3424 = fmul fast float %3335, 5.000000e-01
  %3425 = fmul fast float %3423, %3423
  %3426 = fmul fast float %3425, %3424
  %3427 = fsub fast float 1.500000e+00, %3426
  %3428 = fmul fast float %3423, %3335
  %3429 = fmul fast float %3428, %3427
  %3430 = bitcast float %3336 to i32
  %3431 = ashr i32 %3430, 1
  %3432 = sub nsw i32 1597463174, %3431
  %3433 = bitcast i32 %3432 to float
  %3434 = fmul fast float %3336, 5.000000e-01
  %3435 = fmul fast float %3433, %3433
  %3436 = fmul fast float %3435, %3434
  %3437 = fsub fast float 1.500000e+00, %3436
  %3438 = fmul fast float %3433, %3336
  %3439 = fmul fast float %3438, %3437
  %3440 = fsub fast float %3419, %3401
  %3441 = fsub fast float %3429, %3405
  %3442 = fsub fast float %3439, %3409
  %3443 = fmul fast float %3440, %3369
  %3444 = fmul fast float %3441, %3371
  %3445 = fmul fast float %3442, %3376
  %3446 = fadd fast float %3443, %3384
  %3447 = fadd fast float %3444, %3388
  %3448 = fadd fast float %3445, %3392
  %3449 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3450 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3451 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  %3452 = fmul fast float %3449, %3449
  %3453 = fmul fast float %3450, %3450
  %3454 = fmul fast float %3451, %3451
  %3455 = fsub fast float %3452, %3334
  %3456 = fsub fast float %3453, %3335
  %3457 = fsub fast float %3454, %3336
  %3458 = fmul fast float %3455, %3359
  %3459 = fmul fast float %3456, %3359
  %3460 = fmul fast float %3457, %3359
  %3461 = fadd fast float %3458, %3334
  %3462 = fadd fast float %3459, %3335
  %3463 = fadd fast float %3460, %3336
  %3464 = fadd fast float %3381, %3345
  %3465 = fsub fast float %3464, %3398
  %3466 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  %3467 = fsub fast float %3466, %3345
  %3468 = fmul fast float %3467, %3359
  %3469 = fadd fast float %3468, %3345
  br label %3523

; <label>:3470                                    ; preds = %3358
  %3471 = and i32 %3361, 134217728
  %3472 = icmp eq i32 %3471, 0
  br i1 %3472, label %3507, label %3473

; <label>:3473                                    ; preds = %3470
  %3474 = call float @dx.op.unary.f32(i32 24, float %641)  ; Sqrt(value)
  %3475 = call float @dx.op.unary.f32(i32 24, float %642)  ; Sqrt(value)
  %3476 = call float @dx.op.unary.f32(i32 24, float %643)  ; Sqrt(value)
  %3477 = fadd fast float %3474, -5.000000e-01
  %3478 = fadd fast float %3475, -5.000000e-01
  %3479 = fadd fast float %3476, -5.000000e-01
  %3480 = fmul fast float %3477, %3359
  %3481 = fmul fast float %3478, %3359
  %3482 = fmul fast float %3479, %3359
  %3483 = fadd fast float %3480, 5.000000e-01
  %3484 = fadd fast float %3481, 5.000000e-01
  %3485 = fadd fast float %3482, 5.000000e-01
  %3486 = call float @dx.op.unary.f32(i32 24, float %3334)  ; Sqrt(value)
  %3487 = call float @dx.op.unary.f32(i32 24, float %3335)  ; Sqrt(value)
  %3488 = call float @dx.op.unary.f32(i32 24, float %3336)  ; Sqrt(value)
  %3489 = fmul fast float %3483, 2.000000e+00
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fmul fast float %3490, %3486
  %3492 = fadd fast float %3491, %3489
  %3493 = fmul fast float %3492, %3486
  %3494 = fmul fast float %3484, 2.000000e+00
  %3495 = fsub fast float 1.000000e+00, %3494
  %3496 = fmul fast float %3495, %3487
  %3497 = fadd fast float %3496, %3494
  %3498 = fmul fast float %3497, %3487
  %3499 = fmul fast float %3485, 2.000000e+00
  %3500 = fsub fast float 1.000000e+00, %3499
  %3501 = fmul fast float %3500, %3488
  %3502 = fadd fast float %3501, %3499
  %3503 = fmul fast float %3502, %3488
  %3504 = fmul fast float %3493, %3493
  %3505 = fmul fast float %3498, %3498
  %3506 = fmul fast float %3503, %3503
  br label %3523

; <label>:3507                                    ; preds = %3470
  %3508 = fmul fast float %641, %641
  %3509 = fmul fast float %642, %642
  %3510 = fmul fast float %643, %643
  %3511 = fadd fast float %3508, -1.000000e+00
  %3512 = fadd fast float %3509, -1.000000e+00
  %3513 = fadd fast float %3510, -1.000000e+00
  %3514 = fmul fast float %3359, %3511
  %3515 = fmul fast float %3359, %3512
  %3516 = fmul fast float %3359, %3513
  %3517 = fadd fast float %3514, 1.000000e+00
  %3518 = fadd fast float %3515, 1.000000e+00
  %3519 = fadd fast float %3516, 1.000000e+00
  %3520 = fmul fast float %3517, %3334
  %3521 = fmul fast float %3518, %3335
  %3522 = fmul fast float %3519, %3336
  br label %3523

; <label>:3523                                    ; preds = %3507, %3473, %3364, %3320
  %3524 = phi float [ %3469, %3364 ], [ %3345, %3473 ], [ %3345, %3507 ], [ 0x3FA23C0BE0000000, %3320 ]
  %3525 = phi float [ %3461, %3364 ], [ %3504, %3473 ], [ %3520, %3507 ], [ 1.000000e+00, %3320 ]
  %3526 = phi float [ %3462, %3364 ], [ %3505, %3473 ], [ %3521, %3507 ], [ 1.000000e+00, %3320 ]
  %3527 = phi float [ %3463, %3364 ], [ %3506, %3473 ], [ %3522, %3507 ], [ 1.000000e+00, %3320 ]
  %3528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3529 = extractvalue %dx.types.CBufRet.i32 %3528, 1
  %3530 = and i32 %3529, 1
  %3531 = icmp ne i32 %3530, 0
  %3532 = add i32 %52, 356
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 32
  %3536 = icmp ne i32 %3535, 0
  %3537 = and i1 %3531, %3536
  %3538 = select i1 %3537, float 1.000000e+00, float %3525
  %3539 = select i1 %3537, float 0x3FD3333340000000, float %3526
  %3540 = select i1 %3537, float 0x3FD3333340000000, float %3527
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = and i32 %3542, 32
  %3544 = icmp eq i32 %3543, 0
  br i1 %3544, label %3617, label %3545

; <label>:3545                                    ; preds = %3523
  %3546 = add i32 %52, 140
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = add i32 %52, 436
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = add i32 %3551, 0
  %3553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3553, %dx.types.Handle %101, float %3245, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3555 = extractvalue %dx.types.ResRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.ResRet.f32 %3554, 1
  %3557 = extractvalue %dx.types.ResRet.f32 %3554, 2
  %3558 = extractvalue %dx.types.ResRet.f32 %3554, 3
  %3559 = and i32 %3548, 255
  %3560 = uitofp i32 %3559 to float
  %3561 = lshr i32 %3548, 8
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = lshr i32 %3548, 16
  %3565 = and i32 %3564, 255
  %3566 = uitofp i32 %3565 to float
  %3567 = fmul fast float %3566, 0x3F70101000000000
  %3568 = fmul fast float %3555, %3560
  %3569 = fadd fast float %3568, %3563
  %3570 = fmul fast float %3569, 0x3F70101000000000
  %3571 = fadd fast float %3556, -5.000000e-01
  %3572 = fadd fast float %3558, -5.000000e-01
  %3573 = fmul fast float %3571, %3567
  %3574 = fmul fast float %3572, %3567
  %3575 = fadd fast float %3573, 5.000000e-01
  %3576 = fadd fast float %3574, 5.000000e-01
  %3577 = fmul fast float %3575, 2.000000e+00
  %3578 = fadd fast float %3577, -1.000000e+00
  %3579 = fmul fast float %3576, 2.000000e+00
  %3580 = fadd fast float %3579, -1.000000e+00
  %3581 = fadd fast float %3578, %3580
  %3582 = fmul fast float %3581, 5.000000e-01
  %3583 = fsub fast float %3578, %3580
  %3584 = fmul fast float %3583, 5.000000e-01
  %3585 = call float @dx.op.unary.f32(i32 6, float %3582)  ; FAbs(value)
  %3586 = fsub fast float 1.000000e+00, %3585
  %3587 = call float @dx.op.unary.f32(i32 6, float %3584)  ; FAbs(value)
  %3588 = fsub fast float %3586, %3587
  %3589 = call float @dx.op.dot3.f32(i32 55, float %3582, float %3584, float %3588, float %3582, float %3584, float %3588)  ; Dot3(ax,ay,az,bx,by,bz)
  %3590 = call float @dx.op.unary.f32(i32 25, float %3589)  ; Rsqrt(value)
  %3591 = fmul fast float %3582, %3590
  %3592 = fmul fast float %3584, %3590
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = and i32 %3594, 67108864
  %3596 = icmp eq i32 %3595, 0
  br i1 %3596, label %3613, label %3597

; <label>:3597                                    ; preds = %3545
  %3598 = add i32 %52, 328
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = and i32 %3600, 65535
  %3602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3601)  ; LegacyF16ToF32(value)
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = and i32 %3604, 65535
  %3606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3605)  ; LegacyF16ToF32(value)
  %3607 = lshr i32 %3600, 16
  %3608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3607)  ; LegacyF16ToF32(value)
  %3609 = fsub fast float %3570, %3608
  %3610 = fmul fast float %3609, %3602
  %3611 = fadd fast float %3610, %3606
  %3612 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  br label %3613

; <label>:3613                                    ; preds = %3597, %3545
  %3614 = phi float [ %3612, %3597 ], [ %3570, %3545 ]
  %3615 = call float @dx.op.dot2.f32(i32 54, float %3591, float %3592, float %3149, float %3150)  ; Dot2(ax,ay,bx,by)
  %3616 = call float @dx.op.dot2.f32(i32 54, float %3591, float %3592, float %3151, float %3152)  ; Dot2(ax,ay,bx,by)
  br label %3617

; <label>:3617                                    ; preds = %3613, %3523
  %3618 = phi float [ %3614, %3613 ], [ 0x3FD6666660000000, %3523 ]
  %3619 = phi float [ %3615, %3613 ], [ 0.000000e+00, %3523 ]
  %3620 = phi float [ %3616, %3613 ], [ 0.000000e+00, %3523 ]
  %3621 = phi float [ %3557, %3613 ], [ 1.000000e+00, %3523 ]
  %3622 = add i32 %52, 208
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = lshr i32 %3624, 22
  %3626 = shl nuw nsw i32 %3625, 5
  %3627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3626)  ; LegacyF16ToF32(value)
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = and i32 %3629, 64
  %3631 = icmp eq i32 %3630, 0
  br i1 %3631, label %3665, label %3632

; <label>:3632                                    ; preds = %3617
  %3633 = add i32 %52, 452
  %3634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.i32 %3634, 0
  %3636 = add i32 %3635, 0
  %3637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.i32 %3638, 0
  %3640 = and i32 %3639, 131072
  %3641 = icmp eq i32 %3640, 0
  %3642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3637, %dx.types.Handle %101, float %3245, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3646 = fmul fast float %624, %3643
  %3647 = fmul fast float %625, %3644
  %3648 = fmul fast float %626, %3645
  br i1 %3641, label %3655, label %3649

; <label>:3649                                    ; preds = %3632
  %3650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3650, 0
  %3652 = fmul fast float %3651, %3646
  %3653 = fmul fast float %3651, %3647
  %3654 = fmul fast float %3651, %3648
  br label %3655

; <label>:3655                                    ; preds = %3649, %3632
  %3656 = phi float [ %3652, %3649 ], [ %3646, %3632 ]
  %3657 = phi float [ %3653, %3649 ], [ %3647, %3632 ]
  %3658 = phi float [ %3654, %3649 ], [ %3648, %3632 ]
  %3659 = fmul fast float %3656, %3627
  %3660 = select i1 %292, float %3659, float %3656
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3660, float %3657, float %3658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = select i1 %292, float 0.000000e+00, float %3656
  %3663 = select i1 %292, float %3661, float %3657
  %3664 = select i1 %292, float 0.000000e+00, float %3658
  br label %3665

; <label>:3665                                    ; preds = %3655, %3617
  %3666 = phi float [ %3662, %3655 ], [ 0.000000e+00, %3617 ]
  %3667 = phi float [ %3663, %3655 ], [ 0.000000e+00, %3617 ]
  %3668 = phi float [ %3664, %3655 ], [ 0.000000e+00, %3617 ]
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = and i32 %3670, 1024
  %3672 = icmp eq i32 %3671, 0
  br i1 %3672, label %3703, label %3673

; <label>:3673                                    ; preds = %3665
  %3674 = add i32 %52, 200
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = and i32 %3676, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = fmul fast float %3678, 0x3F70101020000000
  %3680 = lshr i32 %3676, 8
  %3681 = and i32 %3680, 255
  %3682 = uitofp i32 %3681 to float
  %3683 = fmul fast float %3682, 0x3F70101020000000
  %3684 = lshr i32 %3676, 16
  %3685 = and i32 %3684, 255
  %3686 = uitofp i32 %3685 to float
  %3687 = fmul fast float %3686, 0x3F70101020000000
  %3688 = fmul fast float %3679, %3679
  %3689 = fmul fast float %3683, %3683
  %3690 = fmul fast float %3687, %3687
  %3691 = add i32 %52, 520
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = add i32 %3693, 0
  %3695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3695, %dx.types.Handle %102, float %3245, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3699 = extractvalue %dx.types.ResRet.f32 %3696, 2
  %3700 = fmul fast float %3688, %3697
  %3701 = fmul fast float %3689, %3698
  %3702 = fmul fast float %3690, %3699
  br label %3703

; <label>:3703                                    ; preds = %3673, %3665
  %3704 = phi float [ %3700, %3673 ], [ 0.000000e+00, %3665 ]
  %3705 = phi float [ %3701, %3673 ], [ 0.000000e+00, %3665 ]
  %3706 = phi float [ %3702, %3673 ], [ 0.000000e+00, %3665 ]
  %3707 = fcmp fast ogt float %3704, 0.000000e+00
  %3708 = fcmp fast ogt float %3705, 0.000000e+00
  %3709 = fcmp fast ogt float %3706, 0.000000e+00
  %3710 = call float @dx.op.unary.f32(i32 23, float %3704)  ; Log(value)
  %3711 = call float @dx.op.unary.f32(i32 23, float %3705)  ; Log(value)
  %3712 = call float @dx.op.unary.f32(i32 23, float %3706)  ; Log(value)
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = lshr i32 %3714, 7
  %3716 = and i32 %3715, 32752
  %3717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3716)  ; LegacyF16ToF32(value)
  %3718 = fmul fast float %3710, 0xBFE62E4300000000
  %3719 = fmul fast float %3718, %3717
  %3720 = fmul fast float %3711, 0xBFE62E4300000000
  %3721 = fmul fast float %3720, %3717
  %3722 = fmul fast float %3712, 0xBFE62E4300000000
  %3723 = fmul fast float %3722, %3717
  %3724 = select i1 %3707, float %3719, float 1.270000e+02
  %3725 = select i1 %3708, float %3721, float 1.270000e+02
  %3726 = select i1 %3709, float %3723, float 1.270000e+02
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = and i32 %3728, 2048
  %3730 = icmp eq i32 %3729, 0
  br i1 %3730, label %3746, label %3731

; <label>:3731                                    ; preds = %3703
  %3732 = add i32 %52, 536
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = add i32 %3734, 0
  %3736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3736, %dx.types.Handle %102, float %3245, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 3
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = shl i32 %3740, 4
  %3742 = and i32 %3741, 32752
  %3743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3742)  ; LegacyF16ToF32(value)
  %3744 = fmul fast float %3743, %3738
  %3745 = call float @dx.op.binary.f32(i32 35, float %3744, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3746

; <label>:3746                                    ; preds = %3731, %3703
  %3747 = phi float [ %3745, %3731 ], [ 0x3F70101020000000, %3703 ]
  %3748 = add i32 %52, 144
  %3749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.i32 %3749, 0
  %3751 = and i32 %3750, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = lshr i32 %3750, 8
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3757 = fmul fast float %3755, %3756
  %3758 = fadd fast float %3757, %3752
  %3759 = fmul fast float %3758, 0x3F70101020000000
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  br i1 %3137, label %3761, label %3796

; <label>:3761                                    ; preds = %3746
  %3762 = fmul fast float %3747, 2.000000e+00
  %3763 = fcmp fast olt float %3724, 1.270000e+02
  %3764 = fcmp fast olt float %3725, 1.270000e+02
  %3765 = fcmp fast olt float %3726, 1.270000e+02
  %3766 = fmul fast float %3724, 0xBFF7154760000000
  %3767 = fmul fast float %3766, %3762
  %3768 = fmul fast float %3725, 0xBFF7154760000000
  %3769 = fmul fast float %3768, %3762
  %3770 = fmul fast float %3726, 0xBFF7154760000000
  %3771 = fmul fast float %3770, %3762
  %3772 = call float @dx.op.unary.f32(i32 21, float %3767)  ; Exp(value)
  %3773 = call float @dx.op.unary.f32(i32 21, float %3769)  ; Exp(value)
  %3774 = call float @dx.op.unary.f32(i32 21, float %3771)  ; Exp(value)
  %3775 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3776 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3777 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3778 = fadd fast float %3775, -1.000000e+00
  %3779 = select i1 %3763, float %3778, float -1.000000e+00
  %3780 = fadd fast float %3776, -1.000000e+00
  %3781 = select i1 %3764, float %3780, float -1.000000e+00
  %3782 = fadd fast float %3777, -1.000000e+00
  %3783 = select i1 %3765, float %3782, float -1.000000e+00
  %3784 = fmul fast float %3779, %3318
  %3785 = fmul fast float %3781, %3318
  %3786 = fmul fast float %3783, %3318
  %3787 = fadd fast float %3784, 1.000000e+00
  %3788 = fadd fast float %3785, 1.000000e+00
  %3789 = fadd fast float %3786, 1.000000e+00
  %3790 = fmul fast float %3787, %3122
  %3791 = fmul fast float %3788, %3123
  %3792 = fmul fast float %3789, %3124
  %3793 = fmul fast float %3787, %3125
  %3794 = fmul fast float %3788, %3126
  %3795 = fmul fast float %3789, %3127
  br label %3796

; <label>:3796                                    ; preds = %3761, %3746
  %3797 = phi float [ %3790, %3761 ], [ %3122, %3746 ]
  %3798 = phi float [ %3791, %3761 ], [ %3123, %3746 ]
  %3799 = phi float [ %3792, %3761 ], [ %3124, %3746 ]
  %3800 = phi float [ %3793, %3761 ], [ %3125, %3746 ]
  %3801 = phi float [ %3794, %3761 ], [ %3126, %3746 ]
  %3802 = phi float [ %3795, %3761 ], [ %3127, %3746 ]
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = and i32 %3804, 3
  %3806 = icmp eq i32 %3805, 3
  br i1 %3806, label %3885, label %3807

; <label>:3807                                    ; preds = %3796
  %3808 = and i32 %3804, 16
  %3809 = icmp ne i32 %3808, 0
  %3810 = select i1 %3809, float %3318, float 0.000000e+00
  %3811 = icmp eq i32 %3805, 0
  br i1 %3811, label %3812, label %3840

; <label>:3812                                    ; preds = %3807
  %3813 = and i32 %3804, 64
  %3814 = icmp ne i32 %3813, 0
  %3815 = select i1 %3814, float %3318, float 0.000000e+00
  %3816 = fsub fast float %3538, %3797
  %3817 = fsub fast float %3539, %3798
  %3818 = fsub fast float %3540, %3799
  %3819 = fmul fast float %3810, %3816
  %3820 = fmul fast float %3810, %3817
  %3821 = fmul fast float %3810, %3818
  %3822 = fadd fast float %3819, %3797
  %3823 = fadd fast float %3820, %3798
  %3824 = fadd fast float %3821, %3799
  %3825 = fsub fast float %3524, %3131
  %3826 = fmul fast float %3810, %3825
  %3827 = fadd fast float %3826, %3131
  %3828 = fsub fast float %3666, %3800
  %3829 = fsub fast float %3667, %3801
  %3830 = fsub fast float %3668, %3802
  %3831 = fmul fast float %3815, %3828
  %3832 = fmul fast float %3815, %3829
  %3833 = fmul fast float %3815, %3830
  %3834 = fadd fast float %3831, %3800
  %3835 = fadd fast float %3832, %3801
  %3836 = fadd fast float %3833, %3802
  %3837 = fsub fast float %3760, %3135
  %3838 = fmul fast float %3810, %3837
  %3839 = fadd fast float %3838, %3135
  br label %3885

; <label>:3840                                    ; preds = %3807
  %3841 = icmp eq i32 %3805, 1
  br i1 %3841, label %3842, label %3855

; <label>:3842                                    ; preds = %3840
  %3843 = fadd fast float %3538, -1.000000e+00
  %3844 = fadd fast float %3539, -1.000000e+00
  %3845 = fadd fast float %3540, -1.000000e+00
  %3846 = fmul fast float %3810, %3843
  %3847 = fmul fast float %3810, %3844
  %3848 = fmul fast float %3810, %3845
  %3849 = fadd fast float %3846, 1.000000e+00
  %3850 = fadd fast float %3847, 1.000000e+00
  %3851 = fadd fast float %3848, 1.000000e+00
  %3852 = fmul fast float %3849, %3797
  %3853 = fmul fast float %3850, %3798
  %3854 = fmul fast float %3851, %3799
  br label %3885

; <label>:3855                                    ; preds = %3840
  %3856 = icmp eq i32 %3805, 2
  br i1 %3856, label %3857, label %3885

; <label>:3857                                    ; preds = %3855
  %3858 = call float @dx.op.unary.f32(i32 24, float %3538)  ; Sqrt(value)
  %3859 = call float @dx.op.unary.f32(i32 24, float %3539)  ; Sqrt(value)
  %3860 = call float @dx.op.unary.f32(i32 24, float %3540)  ; Sqrt(value)
  %3861 = fadd fast float %3858, -5.000000e-01
  %3862 = fadd fast float %3859, -5.000000e-01
  %3863 = fadd fast float %3860, -5.000000e-01
  %3864 = fmul fast float %3861, %3810
  %3865 = fmul fast float %3862, %3810
  %3866 = fmul fast float %3863, %3810
  %3867 = fadd fast float %3864, 5.000000e-01
  %3868 = fadd fast float %3865, 5.000000e-01
  %3869 = fadd fast float %3866, 5.000000e-01
  %3870 = fmul fast float %3867, 2.000000e+00
  %3871 = fsub fast float 1.000000e+00, %3870
  %3872 = fmul fast float %3871, %3797
  %3873 = fadd fast float %3872, %3870
  %3874 = fmul fast float %3873, %3797
  %3875 = fmul fast float %3868, 2.000000e+00
  %3876 = fsub fast float 1.000000e+00, %3875
  %3877 = fmul fast float %3876, %3798
  %3878 = fadd fast float %3877, %3875
  %3879 = fmul fast float %3878, %3798
  %3880 = fmul fast float %3869, 2.000000e+00
  %3881 = fsub fast float 1.000000e+00, %3880
  %3882 = fmul fast float %3881, %3799
  %3883 = fadd fast float %3882, %3880
  %3884 = fmul fast float %3883, %3799
  br label %3885

; <label>:3885                                    ; preds = %3857, %3855, %3842, %3812, %3796
  %3886 = phi float [ %3797, %3796 ], [ %3874, %3857 ], [ %3797, %3855 ], [ %3852, %3842 ], [ %3822, %3812 ]
  %3887 = phi float [ %3798, %3796 ], [ %3879, %3857 ], [ %3798, %3855 ], [ %3853, %3842 ], [ %3823, %3812 ]
  %3888 = phi float [ %3799, %3796 ], [ %3884, %3857 ], [ %3799, %3855 ], [ %3854, %3842 ], [ %3824, %3812 ]
  %3889 = phi float [ %3800, %3796 ], [ %3800, %3857 ], [ %3800, %3855 ], [ %3800, %3842 ], [ %3834, %3812 ]
  %3890 = phi float [ %3801, %3796 ], [ %3801, %3857 ], [ %3801, %3855 ], [ %3801, %3842 ], [ %3835, %3812 ]
  %3891 = phi float [ %3802, %3796 ], [ %3802, %3857 ], [ %3802, %3855 ], [ %3802, %3842 ], [ %3836, %3812 ]
  %3892 = phi float [ %3131, %3796 ], [ %3131, %3857 ], [ %3131, %3855 ], [ %3131, %3842 ], [ %3827, %3812 ]
  %3893 = phi float [ %3135, %3796 ], [ %3135, %3857 ], [ %3135, %3855 ], [ %3135, %3842 ], [ %3839, %3812 ]
  %3894 = and i32 %3804, 12
  %3895 = icmp eq i32 %3894, 12
  br i1 %3895, label %4002, label %3896

; <label>:3896                                    ; preds = %3885
  %3897 = and i32 %3804, 2097184
  %3898 = icmp eq i32 %3897, 2097184
  %3899 = select i1 %3898, float %3318, float 0.000000e+00
  %3900 = and i32 %3804, 4194336
  %3901 = icmp eq i32 %3900, 4194336
  %3902 = select i1 %3901, float %3318, float 0.000000e+00
  %3903 = and i32 %3804, 8388640
  %3904 = icmp eq i32 %3903, 8388640
  %3905 = select i1 %3904, float %3318, float 0.000000e+00
  %3906 = and i32 %3804, 1024
  %3907 = icmp ne i32 %3906, 0
  %3908 = select i1 %3907, float %3318, float 0.000000e+00
  %3909 = and i32 %3804, 2048
  %3910 = icmp ne i32 %3909, 0
  %3911 = select i1 %3910, float %3318, float 0.000000e+00
  %3912 = icmp eq i32 %3894, 0
  br i1 %3912, label %3913, label %3938

; <label>:3913                                    ; preds = %3896
  %3914 = fsub fast float %3619, %3120
  %3915 = fsub fast float %3620, %3121
  %3916 = fmul fast float %3899, %3914
  %3917 = fmul fast float %3899, %3915
  %3918 = fadd fast float %3916, %3120
  %3919 = fadd fast float %3917, %3121
  %3920 = fsub fast float %3621, %3133
  %3921 = fmul fast float %3902, %3920
  %3922 = fadd fast float %3921, %3133
  %3923 = fsub fast float %3618, %3132
  %3924 = fmul fast float %3905, %3923
  %3925 = fadd fast float %3924, %3132
  %3926 = fsub fast float %3724, %3128
  %3927 = fsub fast float %3725, %3129
  %3928 = fsub fast float %3726, %3130
  %3929 = fmul fast float %3908, %3926
  %3930 = fmul fast float %3908, %3927
  %3931 = fmul fast float %3908, %3928
  %3932 = fadd fast float %3929, %3128
  %3933 = fadd fast float %3930, %3129
  %3934 = fadd fast float %3931, %3130
  %3935 = fsub fast float %3747, %3134
  %3936 = fmul fast float %3911, %3935
  %3937 = fadd fast float %3936, %3134
  br label %4002

; <label>:3938                                    ; preds = %3896
  %3939 = icmp eq i32 %3894, 4
  br i1 %3939, label %3940, label %3980

; <label>:3940                                    ; preds = %3938
  %3941 = fmul fast float %3899, %3619
  %3942 = fmul fast float %3899, %3620
  %3943 = fadd fast float %3941, %3120
  %3944 = fadd fast float %3942, %3121
  %3945 = call float @dx.op.binary.f32(i32 36, float %3133, float %3621)  ; FMin(a,b)
  %3946 = fsub fast float %3945, %3133
  %3947 = fmul fast float %3946, %3902
  %3948 = fadd fast float %3947, %3133
  %3949 = fadd fast float %3618, %3132
  %3950 = fmul fast float %3949, 0x3FF337FAE0000000
  %3951 = fmul fast float %3132, %3132
  %3952 = fmul fast float %3618, %3618
  %3953 = fadd fast float %3952, %3951
  %3954 = fmul fast float %3953, 0x3FE5152B00000000
  %3955 = fmul fast float %3132, 0xBFCC1F85E0000000
  %3956 = fmul fast float %3955, %3618
  %3957 = fadd fast float %3956, 0xBFE1363700000000
  %3958 = fadd fast float %3957, %3950
  %3959 = fsub fast float %3958, %3954
  %3960 = fmul fast float %3949, 0x3FBA6F0D00000000
  %3961 = fmul fast float %3953, 0x3FD0432880000000
  %3962 = fmul fast float %3132, 0xBFEF110800000000
  %3963 = fmul fast float %3962, %3618
  %3964 = fadd fast float %3963, 1.000000e+00
  %3965 = fsub fast float %3964, %3960
  %3966 = fadd fast float %3965, %3961
  %3967 = fdiv fast float %3959, %3966
  %3968 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %3969 = fsub fast float %3968, %3132
  %3970 = fmul fast float %3969, %3905
  %3971 = fadd fast float %3970, %3132
  %3972 = fmul fast float %3908, %3724
  %3973 = fmul fast float %3908, %3725
  %3974 = fmul fast float %3908, %3726
  %3975 = fadd fast float %3972, %3128
  %3976 = fadd fast float %3973, %3129
  %3977 = fadd fast float %3974, %3130
  %3978 = fmul fast float %3911, %3747
  %3979 = fadd fast float %3978, %3134
  br label %4002

; <label>:3980                                    ; preds = %3938
  %3981 = icmp eq i32 %3894, 8
  br i1 %3981, label %3982, label %4002

; <label>:3982                                    ; preds = %3980
  %3983 = fmul fast float %3899, %3619
  %3984 = fmul fast float %3899, %3620
  %3985 = fadd fast float %3983, %3120
  %3986 = fadd fast float %3984, %3121
  %3987 = call float @dx.op.binary.f32(i32 36, float %3133, float %3621)  ; FMin(a,b)
  %3988 = fsub fast float %3987, %3133
  %3989 = fmul fast float %3988, %3902
  %3990 = fadd fast float %3989, %3133
  %3991 = fsub fast float %3618, %3132
  %3992 = fmul fast float %3905, %3991
  %3993 = fadd fast float %3992, %3132
  %3994 = fmul fast float %3908, %3724
  %3995 = fmul fast float %3908, %3725
  %3996 = fmul fast float %3908, %3726
  %3997 = fadd fast float %3994, %3128
  %3998 = fadd fast float %3995, %3129
  %3999 = fadd fast float %3996, %3130
  %4000 = fmul fast float %3911, %3747
  %4001 = fadd fast float %4000, %3134
  br label %4002

; <label>:4002                                    ; preds = %3982, %3980, %3940, %3913, %3885, %3317, %3136, %3119
  %4003 = phi float [ %3120, %3885 ], [ %3120, %3317 ], [ %3120, %3119 ], [ %3120, %3136 ], [ %3918, %3913 ], [ %3943, %3940 ], [ %3120, %3980 ], [ %3985, %3982 ]
  %4004 = phi float [ %3121, %3885 ], [ %3121, %3317 ], [ %3121, %3119 ], [ %3121, %3136 ], [ %3919, %3913 ], [ %3944, %3940 ], [ %3121, %3980 ], [ %3986, %3982 ]
  %4005 = phi float [ %3886, %3885 ], [ %3122, %3317 ], [ %3122, %3119 ], [ %3122, %3136 ], [ %3886, %3913 ], [ %3886, %3940 ], [ %3886, %3980 ], [ %3886, %3982 ]
  %4006 = phi float [ %3887, %3885 ], [ %3123, %3317 ], [ %3123, %3119 ], [ %3123, %3136 ], [ %3887, %3913 ], [ %3887, %3940 ], [ %3887, %3980 ], [ %3887, %3982 ]
  %4007 = phi float [ %3888, %3885 ], [ %3124, %3317 ], [ %3124, %3119 ], [ %3124, %3136 ], [ %3888, %3913 ], [ %3888, %3940 ], [ %3888, %3980 ], [ %3888, %3982 ]
  %4008 = phi float [ %3889, %3885 ], [ %3125, %3317 ], [ %3125, %3119 ], [ %3125, %3136 ], [ %3889, %3913 ], [ %3889, %3940 ], [ %3889, %3980 ], [ %3889, %3982 ]
  %4009 = phi float [ %3890, %3885 ], [ %3126, %3317 ], [ %3126, %3119 ], [ %3126, %3136 ], [ %3890, %3913 ], [ %3890, %3940 ], [ %3890, %3980 ], [ %3890, %3982 ]
  %4010 = phi float [ %3891, %3885 ], [ %3127, %3317 ], [ %3127, %3119 ], [ %3127, %3136 ], [ %3891, %3913 ], [ %3891, %3940 ], [ %3891, %3980 ], [ %3891, %3982 ]
  %4011 = phi float [ %3128, %3885 ], [ %3128, %3317 ], [ %3128, %3119 ], [ %3128, %3136 ], [ %3932, %3913 ], [ %3975, %3940 ], [ %3128, %3980 ], [ %3997, %3982 ]
  %4012 = phi float [ %3129, %3885 ], [ %3129, %3317 ], [ %3129, %3119 ], [ %3129, %3136 ], [ %3933, %3913 ], [ %3976, %3940 ], [ %3129, %3980 ], [ %3998, %3982 ]
  %4013 = phi float [ %3130, %3885 ], [ %3130, %3317 ], [ %3130, %3119 ], [ %3130, %3136 ], [ %3934, %3913 ], [ %3977, %3940 ], [ %3130, %3980 ], [ %3999, %3982 ]
  %4014 = phi float [ %3892, %3885 ], [ %3131, %3317 ], [ %3131, %3119 ], [ %3131, %3136 ], [ %3892, %3913 ], [ %3892, %3940 ], [ %3892, %3980 ], [ %3892, %3982 ]
  %4015 = phi float [ %3132, %3885 ], [ %3132, %3317 ], [ %3132, %3119 ], [ %3132, %3136 ], [ %3925, %3913 ], [ %3971, %3940 ], [ %3132, %3980 ], [ %3993, %3982 ]
  %4016 = phi float [ %3133, %3885 ], [ %3133, %3317 ], [ %3133, %3119 ], [ %3133, %3136 ], [ %3922, %3913 ], [ %3948, %3940 ], [ %3133, %3980 ], [ %3990, %3982 ]
  %4017 = phi float [ %3134, %3885 ], [ %3134, %3317 ], [ %3134, %3119 ], [ %3134, %3136 ], [ %3937, %3913 ], [ %3979, %3940 ], [ %3134, %3980 ], [ %4001, %3982 ]
  %4018 = phi float [ %3893, %3885 ], [ %3135, %3317 ], [ %3135, %3119 ], [ %3135, %3136 ], [ %3893, %3913 ], [ %3893, %3940 ], [ %3893, %3980 ], [ %3893, %3982 ]
  %4019 = add i32 %52, 360
  %4020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.i32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.i32 %4020, 1
  %4023 = bitcast i32 %4021 to float
  %4024 = bitcast i32 %4022 to float
  %4025 = fcmp fast oge float %4023, 0.000000e+00
  %4026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4027 = extractvalue %dx.types.CBufRet.f32 %4026, 0
  %4028 = select i1 %4025, float %4023, float %4027
  %4029 = fadd fast float %4028, %206
  %4030 = fmul fast float %4024, %207
  %4031 = add i32 %52, 488
  %4032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4031, i32 undef)  ; BufferLoad(srv,index,wot)
  %4033 = extractvalue %dx.types.ResRet.i32 %4032, 0
  %4034 = add i32 %4033, 0
  %4035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4035, %dx.types.Handle %102, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = fmul fast float %4030, %4037
  %4039 = fadd fast float %4029, %4038
  %4040 = and i32 %198, 65535
  %4041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4040)  ; LegacyF16ToF32(value)
  %4042 = lshr i32 %198, 16
  %4043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4042)  ; LegacyF16ToF32(value)
  %4044 = and i32 %199, 65535
  %4045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4044)  ; LegacyF16ToF32(value)
  %4046 = fmul fast float %4041, %4005
  %4047 = fmul fast float %4043, %4006
  %4048 = fmul fast float %4045, %4007
  %4049 = shl i32 %200, 4
  %4050 = and i32 %4049, 32752
  %4051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4050)  ; LegacyF16ToF32(value)
  %4052 = lshr i32 %200, 7
  %4053 = and i32 %4052, 32752
  %4054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4053)  ; LegacyF16ToF32(value)
  %4055 = lshr i32 %200, 22
  %4056 = shl nuw nsw i32 %4055, 5
  %4057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4056)  ; LegacyF16ToF32(value)
  %4058 = and i32 %201, 65535
  %4059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4058)  ; LegacyF16ToF32(value)
  %4060 = fmul fast float %4051, %4008
  %4061 = fmul fast float %4060, %4059
  %4062 = fmul fast float %4054, %4009
  %4063 = fmul fast float %4062, %4059
  %4064 = fmul fast float %4057, %4010
  %4065 = fmul fast float %4064, %4059
  %4066 = call float @dx.op.dot2.f32(i32 54, float %4003, float %4004, float %4003, float %4004)  ; Dot2(ax,ay,bx,by)
  %4067 = fmul fast float %4066, 0x3FE3333340000000
  %4068 = fsub fast float 1.000000e+00, %4067
  %4069 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4068, float %4003, float %4004, float %4068)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = call float @dx.op.unary.f32(i32 25, float %4069)  ; Rsqrt(value)
  %4071 = fmul fast float %4070, %4003
  %4072 = fmul fast float %4070, %4004
  %4073 = fmul fast float %4068, %4070
  %4074 = fmul fast float %4073, %112
  %4075 = fmul fast float %4073, %113
  %4076 = fmul fast float %4073, %114
  %4077 = fmul fast float %4071, %80
  %4078 = fmul fast float %4071, %81
  %4079 = fmul fast float %4071, %82
  %4080 = fadd fast float %4074, %4077
  %4081 = fadd fast float %4075, %4078
  %4082 = fadd fast float %4076, %4079
  %4083 = fmul fast float %124, %4072
  %4084 = fmul fast float %125, %4072
  %4085 = fmul fast float %126, %4072
  %4086 = fadd fast float %4080, %4083
  %4087 = fadd fast float %4081, %4084
  %4088 = fadd fast float %4082, %4085
  %4089 = call float @dx.op.dot3.f32(i32 55, float %4086, float %4087, float %4088, float %4086, float %4087, float %4088)  ; Dot3(ax,ay,az,bx,by,bz)
  %4090 = call float @dx.op.unary.f32(i32 25, float %4089)  ; Rsqrt(value)
  %4091 = fmul fast float %4086, %4090
  %4092 = fmul fast float %4087, %4090
  %4093 = fmul fast float %4088, %4090
  %4094 = fadd fast float %4014, 0xBFB99999A0000000
  %4095 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4096 = fmul fast float %4095, 0x3FF1C71C80000000
  %4097 = call float @dx.op.binary.f32(i32 36, float %4014, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4098 = fsub fast float 1.000000e+00, %4096
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4100 = fmul fast float %4099, %4046
  %4101 = fmul fast float %4099, %4047
  %4102 = fmul fast float %4099, %4048
  %4103 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = fmul fast float %4096, %4046
  %4107 = fmul fast float %4096, %4047
  %4108 = fmul fast float %4096, %4048
  %4109 = fadd fast float %4106, %4097
  %4110 = fadd fast float %4107, %4097
  %4111 = fadd fast float %4108, %4097
  %4112 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4116 = call float @dx.op.binary.f32(i32 36, float %4011, float 1.270000e+02)  ; FMin(a,b)
  %4117 = call float @dx.op.binary.f32(i32 36, float %4012, float 1.270000e+02)  ; FMin(a,b)
  %4118 = call float @dx.op.binary.f32(i32 36, float %4013, float 1.270000e+02)  ; FMin(a,b)
  %4119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.i32 %4119, 3
  %4121 = and i32 %4120, 8
  %4122 = icmp ne i32 %4121, 0
  %4123 = call float @dx.op.binary.f32(i32 35, float %4103, float %4046)  ; FMax(a,b)
  %4124 = call float @dx.op.binary.f32(i32 35, float %4104, float %4046)  ; FMax(a,b)
  %4125 = call float @dx.op.binary.f32(i32 35, float %4105, float %4046)  ; FMax(a,b)
  %4126 = call float @dx.op.dot3.f32(i32 55, float %4103, float %4104, float %4105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = select i1 %292, float %4046, float %4103
  %4128 = select i1 %292, float %4126, float %4104
  %4129 = select i1 %292, float 1.000000e+00, float %4105
  %4130 = select i1 %4122, float %4123, float %4127
  %4131 = select i1 %4122, float %4124, float %4128
  %4132 = select i1 %4122, float %4125, float %4129
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4137 = fadd fast float %4134, %192
  %4138 = fadd fast float %4135, %193
  %4139 = fadd fast float %4136, %194
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4143 = fsub fast float %4137, %4141
  %4144 = fsub fast float %4138, %4142
  %4145 = fmul fast float %4143, %4143
  %4146 = fmul fast float %4144, %4144
  %4147 = fadd fast float %4145, %4146
  %4148 = call float @dx.op.unary.f32(i32 24, float %4147)  ; Sqrt(value)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4150 = fcmp fast olt float %4148, %4149
  br i1 %4150, label %4151, label %4218

; <label>:4151                                    ; preds = %4002
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4162 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4163 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4164 = fadd fast float %4161, %4137
  %4165 = fadd fast float %4162, %4138
  %4166 = fadd fast float %4163, %4139
  %4167 = fmul fast float %4164, %4153
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4155, float %4167)  ; FMad(a,b,c)
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = fmul fast float %4164, %4158
  %4171 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4159, float %4170)  ; FMad(a,b,c)
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4160, float %4171)  ; FMad(a,b,c)
  %4173 = fsub fast float %4169, %4161
  %4174 = fsub fast float %4172, %4162
  %4175 = fsub fast float %4173, %4141
  %4176 = fadd fast float %4175, %4149
  %4177 = fsub fast float %4174, %4142
  %4178 = fadd fast float %4177, %4149
  %4179 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4180 = fmul fast float %4176, %4179
  %4181 = fmul fast float %4178, %4179
  %4182 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4184 = fsub fast float 1.000000e+00, %4182
  %4185 = fsub fast float 1.000000e+00, %4183
  %4186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = fcmp fast ugt float %4187, 0.000000e+00
  br i1 %4188, label %4189, label %4492

; <label>:4189                                    ; preds = %4151
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4192 = fmul fast float %4191, %4187
  %4193 = extractvalue %dx.types.CBufRet.f32 %4190, 3
  %4194 = fadd fast float %4193, %4192
  %4195 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4196 = fadd fast float %4194, %4163
  %4197 = fmul fast float %4169, %4157
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4172, float %4160, float %4197)  ; FMad(a,b,c)
  %4199 = call float @dx.op.tertiary.f32(i32 46, float %4196, float %4195, float %4198)  ; FMad(a,b,c)
  %4200 = fsub fast float %4199, %4163
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 2
  %4203 = fsub fast float %4200, %4202
  %4204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %46, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %46, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = fadd fast float %4209, %4205
  %4213 = fmul fast float %4212, 0x3F847AE140000000
  %4214 = fadd fast float %4210, %4206
  %4215 = fmul fast float %4214, 0x3F847AE140000000
  %4216 = fadd fast float %4211, %4207
  %4217 = fmul fast float %4216, 0x3F847AE140000000
  br label %4492

; <label>:4218                                    ; preds = %4002
  %4219 = and i32 %268, 1
  %4220 = icmp eq i32 %4219, 0
  br i1 %4220, label %4492, label %4221

; <label>:4221                                    ; preds = %4218
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4229 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4230 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4231 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4232 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4233 = extractvalue %dx.types.CBufRet.f32 %4226, 3
  %4234 = fadd fast float %4231, %4137
  %4235 = fadd fast float %4232, %4138
  %4236 = fadd fast float %4233, %4139
  %4237 = fmul fast float %4234, %4223
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4225, float %4237)  ; FMad(a,b,c)
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4236, float %4227, float %4238)  ; FMad(a,b,c)
  %4240 = fmul fast float %4234, %4228
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4229, float %4240)  ; FMad(a,b,c)
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4236, float %4230, float %4241)  ; FMad(a,b,c)
  %4243 = fsub fast float %4239, %4231
  %4244 = fsub fast float %4242, %4232
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4249 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 3
  %4252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.i32 %4252, 0
  %4254 = extractvalue %dx.types.CBufRet.i32 %4252, 1
  %4255 = udiv i32 %4254, %4253
  %4256 = fsub fast float %4243, %4246
  %4257 = fsub fast float %4244, %4247
  %4258 = call float @dx.op.binary.f32(i32 35, float %4256, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4260 = call float @dx.op.binary.f32(i32 36, float %4258, float %4248)  ; FMin(a,b)
  %4261 = call float @dx.op.binary.f32(i32 36, float %4259, float %4249)  ; FMin(a,b)
  %4262 = add i32 %4253, -1
  %4263 = add i32 %4255, -1
  %4264 = fmul fast float %4260, %4251
  %4265 = fmul fast float %4261, %4251
  %4266 = fptoui float %4264 to i32
  %4267 = fptoui float %4265 to i32
  %4268 = call i32 @dx.op.binary.i32(i32 40, i32 %4266, i32 %4262)  ; UMin(a,b)
  %4269 = call i32 @dx.op.binary.i32(i32 40, i32 %4267, i32 %4263)  ; UMin(a,b)
  %4270 = mul i32 %4269, %4253
  %4271 = add i32 %4270, %4268
  %4272 = shl i32 %4271, 2
  %4273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.i32 %4273, 0
  %4275 = icmp eq i32 %4274, -1
  br i1 %4275, label %4492, label %4276

; <label>:4276                                    ; preds = %4221
  %4277 = mul i32 %4274, 148
  %4278 = add i32 %4277, 4
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = add i32 %4277, 8
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = add i32 %4277, 36
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4277, 60
  %4288 = add i32 %4277, 92
  %4289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.i32 %4289, 0
  %4291 = add i32 %4277, 116
  %4292 = fsub fast float %4243, %4280
  %4293 = fsub fast float %4244, %4283
  %4294 = fmul fast float %4251, %4292
  %4295 = fmul fast float %4251, %4293
  %4296 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4298 = fsub fast float 1.000000e+00, %4297
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 2
  %4301 = call float @dx.op.unary.f32(i32 83, float %4296)  ; DerivCoarseX(value)
  %4302 = call float @dx.op.unary.f32(i32 83, float %4298)  ; DerivCoarseX(value)
  %4303 = call float @dx.op.unary.f32(i32 84, float %4296)  ; DerivCoarseY(value)
  %4304 = call float @dx.op.unary.f32(i32 84, float %4298)  ; DerivCoarseY(value)
  %4305 = fmul fast float %4301, %4300
  %4306 = fmul fast float %4302, %4300
  %4307 = fmul fast float %4303, %4300
  %4308 = fmul fast float %4304, %4300
  %4309 = call float @dx.op.dot2.f32(i32 54, float %4307, float %4308, float %4307, float %4308)  ; Dot2(ax,ay,bx,by)
  %4310 = call float @dx.op.dot2.f32(i32 54, float %4305, float %4306, float %4305, float %4306)  ; Dot2(ax,ay,bx,by)
  %4311 = call float @dx.op.binary.f32(i32 35, float %4310, float %4309)  ; FMax(a,b)
  %4312 = call float @dx.op.unary.f32(i32 23, float %4311)  ; Log(value)
  %4313 = fmul fast float %4312, 5.000000e-01
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4316 = fadd fast float %4315, %4313
  %4317 = call float @dx.op.binary.f32(i32 35, float %4316, float 0.000000e+00)  ; FMax(a,b)
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4320 = fadd fast float %4319, %4317
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4323 = fadd fast float %4320, %4322
  %4324 = add i32 %4290, 0
  %4325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4325, i32 0)  ; GetDimensions(handle,mipLevel)
  %4327 = extractvalue %dx.types.Dimensions %4326, 0
  %4328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4327)  ; FirstbitLo(value)
  %4329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.i32 %4329, 1
  %4331 = sub nsw i32 %4330, %4328
  %4332 = sitofp i32 %4331 to float
  %4333 = fsub fast float %4323, %4332
  %4334 = call float @dx.op.binary.f32(i32 35, float %4333, float 0.000000e+00)  ; FMax(a,b)
  %4335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4325, %dx.types.Handle %44, float %4296, float %4298, float %4286, float undef, i32 0, i32 0, i32 undef, float %4334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = fcmp ule float %4336, 0x3FE0101020000000
  %4338 = extractvalue %dx.types.CBufRet.i32 %4329, 0
  %4339 = and i32 %4338, 128
  %4340 = icmp ne i32 %4339, 0
  %4341 = and i1 %4337, %4340
  br i1 %4341, label %4492, label %4342

; <label>:4342                                    ; preds = %4276
  %4343 = add i32 %4277, 20
  %4344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = add i32 %4277, 24
  %4347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = add i32 %4277, 40
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = add i32 %4277, 96
  %4353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.i32 %4353, 0
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4357 = fmul fast float %4356, %4296
  %4358 = fmul fast float %4356, %4298
  %4359 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4360 = fadd fast float %4357, %4359
  %4361 = fadd fast float %4358, %4359
  %4362 = add i32 %4354, 0
  %4363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4362, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4364 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4363, i32 0)  ; GetDimensions(handle,mipLevel)
  %4365 = extractvalue %dx.types.Dimensions %4364, 0
  %4366 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4365)  ; FirstbitLo(value)
  %4367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.i32 %4367, 1
  %4369 = sub nsw i32 %4368, %4366
  %4370 = sitofp i32 %4369 to float
  %4371 = fsub fast float %4320, %4370
  %4372 = call float @dx.op.binary.f32(i32 35, float %4371, float 0.000000e+00)  ; FMax(a,b)
  %4373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4363, %dx.types.Handle %44, float %4360, float %4361, float %4351, float undef, i32 0, i32 0, i32 undef, float %4372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = fmul fast float %4374, %4345
  %4376 = fadd fast float %4375, %4348
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 3
  %4385 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4386 = fadd fast float %4382, %4243
  %4387 = fadd fast float %4384, %4244
  %4388 = fadd fast float %4376, %4385
  %4389 = fmul fast float %4386, %4378
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4379, float %4389)  ; FMad(a,b,c)
  %4391 = call float @dx.op.tertiary.f32(i32 46, float %4388, float %4380, float %4390)  ; FMad(a,b,c)
  %4392 = fsub fast float %4391, %4385
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4395 = fsub fast float %4392, %4394
  %4396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.i32 %4396, 0
  %4398 = call i32 @dx.op.binary.i32(i32 40, i32 %4274, i32 %4397)  ; UMin(a,b)
  %4399 = mul i32 %4398, 36
  %4400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.i32 %4400, 0
  %4402 = add i32 %4399, 4
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = fmul fast float %4404, %4296
  %4406 = fmul fast float %4404, %4298
  %4407 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4408 = fadd fast float %4405, %4407
  %4409 = fadd fast float %4406, %4407
  %4410 = icmp eq i32 %4401, 0
  br i1 %4410, label %4479, label %4411

; <label>:4411                                    ; preds = %4342
  br label %4412

; <label>:4412                                    ; preds = %4469, %4411
  %4413 = phi float [ %4470, %4469 ], [ 0.000000e+00, %4411 ]
  %4414 = phi float [ %4471, %4469 ], [ 0.000000e+00, %4411 ]
  %4415 = phi float [ %4472, %4469 ], [ 0.000000e+00, %4411 ]
  %4416 = phi float [ %4473, %4469 ], [ 0.000000e+00, %4411 ]
  %4417 = phi float [ %4474, %4469 ], [ 0.000000e+00, %4411 ]
  %4418 = phi float [ %4475, %4469 ], [ 0.000000e+00, %4411 ]
  %4419 = phi i32 [ %4476, %4469 ], [ 0, %4411 ]
  %4420 = shl i32 %4419, 2
  %4421 = add i32 %4287, %4420
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = add i32 %4291, %4420
  %4425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4424, i32 undef)  ; BufferLoad(srv,index,wot)
  %4426 = extractvalue %dx.types.ResRet.i32 %4425, 0
  %4427 = add i32 %4426, 0
  %4428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4427, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4429 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4428, i32 0)  ; GetDimensions(handle,mipLevel)
  %4430 = extractvalue %dx.types.Dimensions %4429, 0
  %4431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4430)  ; FirstbitLo(value)
  %4432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.i32 %4432, 1
  %4434 = sub nsw i32 %4433, %4431
  %4435 = sitofp i32 %4434 to float
  %4436 = fsub fast float %4320, %4435
  %4437 = call float @dx.op.binary.f32(i32 35, float %4436, float 0.000000e+00)  ; FMax(a,b)
  %4438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4428, %dx.types.Handle %44, float %4408, float %4409, float %4423, float undef, i32 0, i32 0, i32 undef, float %4437)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = fcmp fast ogt float %4439, 0.000000e+00
  br i1 %4440, label %4441, label %4469

; <label>:4441                                    ; preds = %4412
  %4442 = add i32 %4402, %4420
  %4443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.i32 %4443, 0
  %4445 = and i32 %4444, 32767
  %4446 = mul nuw nsw i32 %4445, 928
  %4447 = add nuw nsw i32 %4446, 48
  %4448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.ResRet.f32 %4448, 2
  %4452 = add nuw nsw i32 %4446, 60
  %4453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.ResRet.f32 %4453, 2
  %4457 = fmul fast float %4449, %4439
  %4458 = fmul fast float %4450, %4439
  %4459 = fmul fast float %4451, %4439
  %4460 = fadd fast float %4457, %4413
  %4461 = fadd fast float %4458, %4414
  %4462 = fadd fast float %4459, %4415
  %4463 = fmul fast float %4454, %4439
  %4464 = fmul fast float %4455, %4439
  %4465 = fmul fast float %4456, %4439
  %4466 = fadd fast float %4463, %4416
  %4467 = fadd fast float %4464, %4417
  %4468 = fadd fast float %4465, %4418
  br label %4469

; <label>:4469                                    ; preds = %4441, %4412
  %4470 = phi float [ %4460, %4441 ], [ %4413, %4412 ]
  %4471 = phi float [ %4461, %4441 ], [ %4414, %4412 ]
  %4472 = phi float [ %4462, %4441 ], [ %4415, %4412 ]
  %4473 = phi float [ %4466, %4441 ], [ %4416, %4412 ]
  %4474 = phi float [ %4467, %4441 ], [ %4417, %4412 ]
  %4475 = phi float [ %4468, %4441 ], [ %4418, %4412 ]
  %4476 = add nuw i32 %4419, 1
  %4477 = icmp eq i32 %4476, %4401
  br i1 %4477, label %4478, label %4412

; <label>:4478                                    ; preds = %4469
  br label %4479

; <label>:4479                                    ; preds = %4478, %4342
  %4480 = phi float [ 0.000000e+00, %4342 ], [ %4470, %4478 ]
  %4481 = phi float [ 0.000000e+00, %4342 ], [ %4471, %4478 ]
  %4482 = phi float [ 0.000000e+00, %4342 ], [ %4472, %4478 ]
  %4483 = phi float [ 0.000000e+00, %4342 ], [ %4473, %4478 ]
  %4484 = phi float [ 0.000000e+00, %4342 ], [ %4474, %4478 ]
  %4485 = phi float [ 0.000000e+00, %4342 ], [ %4475, %4478 ]
  %4486 = fadd fast float %4483, %4480
  %4487 = fmul fast float %4486, 0x3F847AE140000000
  %4488 = fadd fast float %4484, %4481
  %4489 = fmul fast float %4488, 0x3F847AE140000000
  %4490 = fadd fast float %4485, %4482
  %4491 = fmul fast float %4490, 0x3F847AE140000000
  br label %4492

; <label>:4492                                    ; preds = %4479, %4276, %4221, %4218, %4189, %4151
  %4493 = phi float [ %4203, %4189 ], [ -1.310720e+05, %4151 ], [ %4395, %4479 ], [ -1.310720e+05, %4221 ], [ -1.310720e+05, %4276 ], [ -1.310720e+05, %4218 ]
  %4494 = phi float [ %4213, %4189 ], [ 0.000000e+00, %4151 ], [ %4487, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4495 = phi float [ %4215, %4189 ], [ 0.000000e+00, %4151 ], [ %4489, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4496 = phi float [ %4217, %4189 ], [ 0.000000e+00, %4151 ], [ %4491, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4497 = phi i1 [ true, %4189 ], [ false, %4151 ], [ true, %4479 ], [ false, %4221 ], [ false, %4276 ], [ false, %4218 ]
  %4498 = and i32 %268, 3
  %4499 = icmp eq i32 %4498, 1
  %4500 = select i1 %4499, float 1.000000e+00, float 0.000000e+00
  %4501 = fsub fast float %4493, %194
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = select i1 %4497, float %4502, float 1.000000e+00
  %4504 = fmul fast float %4503, %4500
  %4505 = icmp eq i32 %4498, 3
  %4506 = select i1 %4505, float 1.000000e+00, float %4504
  %4507 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4506)  ; FMax(a,b)
  %4508 = fcmp fast olt float %4506, 1.000000e+00
  %4509 = fcmp uge float %69, 0.000000e+00
  %4510 = and i1 %4509, %4508
  br i1 %4510, label %4511, label %4521

; <label>:4511                                    ; preds = %4492
  %4512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = fadd fast float %4513, %4507
  %4517 = fcmp ule float %68, 0.000000e+00
  %4518 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = select i1 %4517, float %4518, float 1.000000e+00
  %4520 = fmul fast float %4519, %4515
  br label %4521

; <label>:4521                                    ; preds = %4511, %4492
  %4522 = phi float [ %4516, %4511 ], [ %4507, %4492 ]
  %4523 = phi float [ %4514, %4511 ], [ 0.000000e+00, %4492 ]
  %4524 = phi float [ %4520, %4511 ], [ 0.000000e+00, %4492 ]
  %4525 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = fcmp fast une float %4526, 0.000000e+00
  %4529 = fcmp fast une float %4527, 0.000000e+00
  %4530 = or i1 %4528, %4529
  br i1 %4530, label %4531, label %5090

; <label>:4531                                    ; preds = %4521
  br i1 %4528, label %4532, label %4805

; <label>:4532                                    ; preds = %4531
  %4533 = call float @dx.op.unary.f32(i32 23, float %4016)  ; Log(value)
  %4534 = fmul fast float %4533, 4.000000e+00
  %4535 = call float @dx.op.unary.f32(i32 21, float %4534)  ; Exp(value)
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = fmul fast float %4537, %55
  %4539 = fmul fast float %4537, %56
  %4540 = fmul fast float %4537, %57
  %4541 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4542 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4543 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4544 = call float @dx.op.unary.f32(i32 23, float %4541)  ; Log(value)
  %4545 = call float @dx.op.unary.f32(i32 23, float %4542)  ; Log(value)
  %4546 = call float @dx.op.unary.f32(i32 23, float %4543)  ; Log(value)
  %4547 = fmul fast float %4544, 4.000000e+00
  %4548 = fmul fast float %4545, 4.000000e+00
  %4549 = fmul fast float %4546, 4.000000e+00
  %4550 = call float @dx.op.unary.f32(i32 21, float %4547)  ; Exp(value)
  %4551 = call float @dx.op.unary.f32(i32 21, float %4548)  ; Exp(value)
  %4552 = call float @dx.op.unary.f32(i32 21, float %4549)  ; Exp(value)
  %4553 = fadd fast float %4551, %4550
  %4554 = fadd fast float %4553, %4552
  %4555 = fdiv fast float 1.000000e+00, %4554
  %4556 = fmul fast float %4555, %4550
  %4557 = fcmp fast ogt float %65, 0.000000e+00
  %4558 = fcmp fast ogt float %66, 0.000000e+00
  %4559 = fcmp fast ogt float %67, 0.000000e+00
  %4560 = fcmp fast olt float %65, 0.000000e+00
  %4561 = fcmp fast olt float %66, 0.000000e+00
  %4562 = fcmp fast olt float %67, 0.000000e+00
  %4563 = zext i1 %4557 to i32
  %4564 = zext i1 %4558 to i32
  %4565 = zext i1 %4559 to i32
  %4566 = zext i1 %4560 to i32
  %4567 = zext i1 %4561 to i32
  %4568 = zext i1 %4562 to i32
  %4569 = sub nsw i32 %4563, %4566
  %4570 = sub nsw i32 %4564, %4567
  %4571 = sub nsw i32 %4565, %4568
  %4572 = call float @dx.op.unary.f32(i32 83, float %4538)  ; DerivCoarseX(value)
  %4573 = call float @dx.op.unary.f32(i32 83, float %4539)  ; DerivCoarseX(value)
  %4574 = call float @dx.op.unary.f32(i32 83, float %4540)  ; DerivCoarseX(value)
  %4575 = call float @dx.op.unary.f32(i32 84, float %4538)  ; DerivCoarseY(value)
  %4576 = call float @dx.op.unary.f32(i32 84, float %4539)  ; DerivCoarseY(value)
  %4577 = call float @dx.op.unary.f32(i32 84, float %4540)  ; DerivCoarseY(value)
  %4578 = fcmp fast ole float %303, %4556
  %4579 = fmul fast float %4555, %4553
  %4580 = fcmp fast ole float %303, %4579
  %4581 = select i1 %4580, float %4540, float %4538
  %4582 = select i1 %4580, float %4538, float %4539
  %4583 = select i1 %4578, float %4539, float %4581
  %4584 = select i1 %4578, float %4540, float %4582
  %4585 = select i1 %4580, float %4574, float %4572
  %4586 = select i1 %4580, float %4572, float %4573
  %4587 = select i1 %4578, float %4573, float %4585
  %4588 = select i1 %4578, float %4574, float %4586
  %4589 = select i1 %4580, float %4577, float %4575
  %4590 = select i1 %4580, float %4575, float %4576
  %4591 = select i1 %4578, float %4576, float %4589
  %4592 = select i1 %4578, float %4577, float %4590
  %4593 = call float @dx.op.unary.f32(i32 27, float %4583)  ; Round_ni(value)
  %4594 = call float @dx.op.unary.f32(i32 27, float %4584)  ; Round_ni(value)
  %4595 = fptosi float %4593 to i32
  %4596 = fptosi float %4594 to i32
  %4597 = xor i32 %4596, %4595
  %4598 = sitofp i32 %4597 to float
  %4599 = fptosi float %4598 to i32
  %4600 = sitofp i32 %4599 to float
  %4601 = fmul fast float %4600, 0x3FE3C6EF40000000
  %4602 = frem fast float %4593, 2.560000e+02
  %4603 = frem fast float %4594, 2.560000e+02
  %4604 = fptoui float %4602 to i32
  %4605 = fptoui float %4603 to i32
  %4606 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4604, i32 %4605, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = fadd fast float %4607, %4601
  %4611 = fadd fast float %4608, %4601
  %4612 = fadd fast float %4609, %4601
  %4613 = call float @dx.op.unary.f32(i32 22, float %4610)  ; Frc(value)
  %4614 = call float @dx.op.unary.f32(i32 22, float %4611)  ; Frc(value)
  %4615 = call float @dx.op.unary.f32(i32 22, float %4612)  ; Frc(value)
  %4616 = fmul fast float %4615, 0x401921FB60000000
  %4617 = call float @dx.op.unary.f32(i32 13, float %4616)  ; Sin(value)
  %4618 = call float @dx.op.unary.f32(i32 12, float %4616)  ; Cos(value)
  %4619 = fsub fast float -0.000000e+00, %4618
  %4620 = fmul fast float %4618, %4583
  %4621 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4584, float %4620)  ; FMad(a,b,c)
  %4622 = fmul fast float %4617, %4583
  %4623 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4584, float %4622)  ; FMad(a,b,c)
  %4624 = fadd fast float %4621, %4613
  %4625 = fadd fast float %4623, %4614
  %4626 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4627 = bitcast float %4626 to i32
  %4628 = icmp eq i32 %4627, 0
  br i1 %4628, label %4667, label %4629

; <label>:4629                                    ; preds = %4532
  %4630 = add i32 %4627, 0
  %4631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4631, %dx.types.Handle %102, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 1
  %4636 = extractvalue %dx.types.CBufRet.f32 %4634, 2
  %4637 = fsub fast float 1.000000e+00, %4526
  %4638 = call float @dx.op.binary.f32(i32 35, float %4637, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4639 = bitcast float %4526 to i32
  %4640 = sitofp i32 %4639 to float
  %4641 = fadd fast float %4640, 0xC1CFBF8940000000
  %4642 = fmul fast float %4636, %4641
  %4643 = fadd fast float %4642, 0x41CFBF8940000000
  %4644 = fptosi float %4643 to i32
  %4645 = bitcast i32 %4644 to float
  %4646 = bitcast float %4638 to i32
  %4647 = sitofp i32 %4646 to float
  %4648 = fadd fast float %4647, 0xC1CFBF8940000000
  %4649 = fmul fast float %4648, %4636
  %4650 = fadd fast float %4649, 0x41CFBF8940000000
  %4651 = fptosi float %4650 to i32
  %4652 = bitcast i32 %4651 to float
  %4653 = fmul fast float %4645, %4635
  %4654 = fmul fast float %4652, %4635
  %4655 = fsub fast float %4638, %4653
  %4656 = fadd fast float %4654, %4638
  %4657 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4659 = fsub fast float %4633, %4657
  %4660 = fsub fast float %4658, %4657
  %4661 = bitcast float %4660 to i32
  %4662 = sub nsw i32 2129859010, %4661
  %4663 = bitcast i32 %4662 to float
  %4664 = fmul fast float %4663, %4659
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = fcmp fast olt float %4665, 0x3F70101020000000
  br i1 %4666, label %4805, label %4667

; <label>:4667                                    ; preds = %4629, %4532
  %4668 = phi float [ %4665, %4629 ], [ %4526, %4532 ]
  %4669 = fmul fast float %4668, %4535
  %4670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.i32 %4670, 1
  %4672 = extractvalue %dx.types.CBufRet.i32 %4670, 0
  %4673 = add i32 %4672, 0
  %4674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4675 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4674, %dx.types.Handle %101, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.ResRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4675, 2
  %4679 = extractvalue %dx.types.ResRet.f32 %4675, 3
  %4680 = and i32 %4671, 255
  %4681 = uitofp i32 %4680 to float
  %4682 = lshr i32 %4671, 8
  %4683 = and i32 %4682, 255
  %4684 = uitofp i32 %4683 to float
  %4685 = fmul fast float %4679, %4681
  %4686 = fadd fast float %4685, %4684
  %4687 = fmul fast float %4686, 0x3F70101000000000
  %4688 = fadd fast float %4687, 0xBFB99999A0000000
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4689, 0x3FF1C71C80000000
  %4691 = call float @dx.op.binary.f32(i32 36, float %4687, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4692 = fsub fast float 1.000000e+00, %4690
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, %4676
  %4695 = fmul fast float %4693, %4677
  %4696 = fmul fast float %4693, %4678
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4700 = fmul fast float %4690, %4676
  %4701 = fmul fast float %4690, %4677
  %4702 = fmul fast float %4690, %4678
  %4703 = fadd fast float %4700, %4691
  %4704 = fadd fast float %4701, %4691
  %4705 = fadd fast float %4702, %4691
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.i32 %4709, 3
  %4711 = extractvalue %dx.types.CBufRet.i32 %4709, 2
  %4712 = add i32 %4711, 0
  %4713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4713, %dx.types.Handle %101, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = extractvalue %dx.types.ResRet.f32 %4714, 1
  %4717 = extractvalue %dx.types.ResRet.f32 %4714, 2
  %4718 = extractvalue %dx.types.ResRet.f32 %4714, 3
  %4719 = and i32 %4710, 255
  %4720 = uitofp i32 %4719 to float
  %4721 = lshr i32 %4710, 8
  %4722 = and i32 %4721, 255
  %4723 = uitofp i32 %4722 to float
  %4724 = lshr i32 %4710, 16
  %4725 = and i32 %4724, 255
  %4726 = uitofp i32 %4725 to float
  %4727 = fmul fast float %4726, 0x3F70101000000000
  %4728 = fmul fast float %4715, %4720
  %4729 = fadd fast float %4728, %4723
  %4730 = fmul fast float %4729, 0x3F70101000000000
  %4731 = fadd fast float %4716, -5.000000e-01
  %4732 = fadd fast float %4718, -5.000000e-01
  %4733 = fmul fast float %4731, %4727
  %4734 = fmul fast float %4732, %4727
  %4735 = fadd fast float %4733, 5.000000e-01
  %4736 = fadd fast float %4734, 5.000000e-01
  %4737 = fmul fast float %4735, 2.000000e+00
  %4738 = fadd fast float %4737, -1.000000e+00
  %4739 = fmul fast float %4736, 2.000000e+00
  %4740 = fadd fast float %4739, -1.000000e+00
  %4741 = fadd fast float %4738, %4740
  %4742 = fmul fast float %4741, 5.000000e-01
  %4743 = fsub fast float %4738, %4740
  %4744 = fmul fast float %4743, 5.000000e-01
  %4745 = call float @dx.op.unary.f32(i32 6, float %4742)  ; FAbs(value)
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = call float @dx.op.unary.f32(i32 6, float %4744)  ; FAbs(value)
  %4748 = fsub fast float %4746, %4747
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4744, float %4748, float %4742, float %4744, float %4748)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.unary.f32(i32 25, float %4749)  ; Rsqrt(value)
  %4751 = fmul fast float %4742, %4750
  %4752 = fmul fast float %4744, %4750
  %4753 = select i1 %4580, i32 %4570, i32 %4571
  %4754 = select i1 %4578, i32 %4569, i32 %4753
  %4755 = sitofp i32 %4754 to float
  %4756 = fmul fast float %4748, %4755
  %4757 = fmul fast float %4756, %4750
  %4758 = select i1 %4580, float %4757, float %4752
  %4759 = select i1 %4580, float %4752, float %4757
  %4760 = select i1 %4578, float %4757, float %4751
  %4761 = select i1 %4578, float %4752, float %4758
  %4762 = select i1 %4578, float %4751, float %4759
  %4763 = fsub fast float %4697, %4130
  %4764 = fsub fast float %4698, %4131
  %4765 = fsub fast float %4699, %4132
  %4766 = fmul fast float %4763, %4669
  %4767 = fmul fast float %4764, %4669
  %4768 = fmul fast float %4765, %4669
  %4769 = fadd fast float %4766, %4130
  %4770 = fadd fast float %4767, %4131
  %4771 = fadd fast float %4768, %4132
  %4772 = fsub fast float %4706, %4112
  %4773 = fsub fast float %4707, %4113
  %4774 = fsub fast float %4708, %4114
  %4775 = fmul fast float %4772, %4669
  %4776 = fmul fast float %4773, %4669
  %4777 = fmul fast float %4774, %4669
  %4778 = fadd fast float %4775, %4112
  %4779 = fadd fast float %4776, %4113
  %4780 = fadd fast float %4777, %4114
  %4781 = fadd fast float %4760, %4091
  %4782 = fadd fast float %4761, %4092
  %4783 = fadd fast float %4762, %4093
  %4784 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4782, float %4783, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = call float @dx.op.unary.f32(i32 25, float %4784)  ; Rsqrt(value)
  %4786 = fmul fast float %4781, %4785
  %4787 = fmul fast float %4782, %4785
  %4788 = fmul fast float %4783, %4785
  %4789 = fsub fast float %4786, %4091
  %4790 = fsub fast float %4787, %4092
  %4791 = fsub fast float %4788, %4093
  %4792 = fmul fast float %4789, %4669
  %4793 = fmul fast float %4790, %4669
  %4794 = fmul fast float %4791, %4669
  %4795 = fadd fast float %4792, %4091
  %4796 = fadd fast float %4793, %4092
  %4797 = fadd fast float %4794, %4093
  %4798 = call float @dx.op.binary.f32(i32 36, float %4016, float %4717)  ; FMin(a,b)
  %4799 = fsub fast float %4798, %4016
  %4800 = fmul fast float %4799, %4669
  %4801 = fadd fast float %4800, %4016
  %4802 = fsub fast float %4730, %4115
  %4803 = fmul fast float %4802, %4669
  %4804 = fadd fast float %4803, %4115
  br label %4805

; <label>:4805                                    ; preds = %4667, %4629, %4531
  %4806 = phi float [ %4778, %4667 ], [ %4112, %4629 ], [ %4112, %4531 ]
  %4807 = phi float [ %4779, %4667 ], [ %4113, %4629 ], [ %4113, %4531 ]
  %4808 = phi float [ %4780, %4667 ], [ %4114, %4629 ], [ %4114, %4531 ]
  %4809 = phi float [ %4769, %4667 ], [ %4130, %4629 ], [ %4130, %4531 ]
  %4810 = phi float [ %4770, %4667 ], [ %4131, %4629 ], [ %4131, %4531 ]
  %4811 = phi float [ %4771, %4667 ], [ %4132, %4629 ], [ %4132, %4531 ]
  %4812 = phi float [ %4795, %4667 ], [ %4091, %4629 ], [ %4091, %4531 ]
  %4813 = phi float [ %4796, %4667 ], [ %4092, %4629 ], [ %4092, %4531 ]
  %4814 = phi float [ %4797, %4667 ], [ %4093, %4629 ], [ %4093, %4531 ]
  %4815 = phi float [ %4804, %4667 ], [ %4115, %4629 ], [ %4115, %4531 ]
  %4816 = phi float [ %4801, %4667 ], [ %4016, %4629 ], [ %4016, %4531 ]
  br i1 %4529, label %4817, label %5090

; <label>:4817                                    ; preds = %4805
  %4818 = call float @dx.op.unary.f32(i32 23, float %4816)  ; Log(value)
  %4819 = fmul fast float %4818, 4.000000e+00
  %4820 = call float @dx.op.unary.f32(i32 21, float %4819)  ; Exp(value)
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = fmul fast float %4822, %55
  %4824 = fmul fast float %4822, %56
  %4825 = fmul fast float %4822, %57
  %4826 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4827 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4828 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4829 = call float @dx.op.unary.f32(i32 23, float %4826)  ; Log(value)
  %4830 = call float @dx.op.unary.f32(i32 23, float %4827)  ; Log(value)
  %4831 = call float @dx.op.unary.f32(i32 23, float %4828)  ; Log(value)
  %4832 = fmul fast float %4829, 4.000000e+00
  %4833 = fmul fast float %4830, 4.000000e+00
  %4834 = fmul fast float %4831, 4.000000e+00
  %4835 = call float @dx.op.unary.f32(i32 21, float %4832)  ; Exp(value)
  %4836 = call float @dx.op.unary.f32(i32 21, float %4833)  ; Exp(value)
  %4837 = call float @dx.op.unary.f32(i32 21, float %4834)  ; Exp(value)
  %4838 = fadd fast float %4836, %4835
  %4839 = fadd fast float %4838, %4837
  %4840 = fdiv fast float 1.000000e+00, %4839
  %4841 = fmul fast float %4840, %4835
  %4842 = fcmp fast ogt float %65, 0.000000e+00
  %4843 = fcmp fast ogt float %66, 0.000000e+00
  %4844 = fcmp fast ogt float %67, 0.000000e+00
  %4845 = fcmp fast olt float %65, 0.000000e+00
  %4846 = fcmp fast olt float %66, 0.000000e+00
  %4847 = fcmp fast olt float %67, 0.000000e+00
  %4848 = zext i1 %4842 to i32
  %4849 = zext i1 %4843 to i32
  %4850 = zext i1 %4844 to i32
  %4851 = zext i1 %4845 to i32
  %4852 = zext i1 %4846 to i32
  %4853 = zext i1 %4847 to i32
  %4854 = sub nsw i32 %4848, %4851
  %4855 = sub nsw i32 %4849, %4852
  %4856 = sub nsw i32 %4850, %4853
  %4857 = call float @dx.op.unary.f32(i32 83, float %4823)  ; DerivCoarseX(value)
  %4858 = call float @dx.op.unary.f32(i32 83, float %4824)  ; DerivCoarseX(value)
  %4859 = call float @dx.op.unary.f32(i32 83, float %4825)  ; DerivCoarseX(value)
  %4860 = call float @dx.op.unary.f32(i32 84, float %4823)  ; DerivCoarseY(value)
  %4861 = call float @dx.op.unary.f32(i32 84, float %4824)  ; DerivCoarseY(value)
  %4862 = call float @dx.op.unary.f32(i32 84, float %4825)  ; DerivCoarseY(value)
  %4863 = fcmp fast ole float %303, %4841
  %4864 = fmul fast float %4840, %4838
  %4865 = fcmp fast ole float %303, %4864
  %4866 = select i1 %4865, float %4825, float %4823
  %4867 = select i1 %4865, float %4823, float %4824
  %4868 = select i1 %4863, float %4824, float %4866
  %4869 = select i1 %4863, float %4825, float %4867
  %4870 = select i1 %4865, float %4859, float %4857
  %4871 = select i1 %4865, float %4857, float %4858
  %4872 = select i1 %4863, float %4858, float %4870
  %4873 = select i1 %4863, float %4859, float %4871
  %4874 = select i1 %4865, float %4862, float %4860
  %4875 = select i1 %4865, float %4860, float %4861
  %4876 = select i1 %4863, float %4861, float %4874
  %4877 = select i1 %4863, float %4862, float %4875
  %4878 = call float @dx.op.unary.f32(i32 27, float %4868)  ; Round_ni(value)
  %4879 = call float @dx.op.unary.f32(i32 27, float %4869)  ; Round_ni(value)
  %4880 = fptosi float %4878 to i32
  %4881 = fptosi float %4879 to i32
  %4882 = xor i32 %4881, %4880
  %4883 = sitofp i32 %4882 to float
  %4884 = fptosi float %4883 to i32
  %4885 = sitofp i32 %4884 to float
  %4886 = fmul fast float %4885, 0x3FE3C6EF40000000
  %4887 = frem fast float %4878, 2.560000e+02
  %4888 = frem fast float %4879, 2.560000e+02
  %4889 = fptoui float %4887 to i32
  %4890 = fptoui float %4888 to i32
  %4891 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4889, i32 %4890, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = fadd fast float %4892, %4886
  %4896 = fadd fast float %4893, %4886
  %4897 = fadd fast float %4894, %4886
  %4898 = call float @dx.op.unary.f32(i32 22, float %4895)  ; Frc(value)
  %4899 = call float @dx.op.unary.f32(i32 22, float %4896)  ; Frc(value)
  %4900 = call float @dx.op.unary.f32(i32 22, float %4897)  ; Frc(value)
  %4901 = fmul fast float %4900, 0x401921FB60000000
  %4902 = call float @dx.op.unary.f32(i32 13, float %4901)  ; Sin(value)
  %4903 = call float @dx.op.unary.f32(i32 12, float %4901)  ; Cos(value)
  %4904 = fsub fast float -0.000000e+00, %4903
  %4905 = fmul fast float %4903, %4868
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4869, float %4905)  ; FMad(a,b,c)
  %4907 = fmul fast float %4902, %4868
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4904, float %4869, float %4907)  ; FMad(a,b,c)
  %4909 = fadd fast float %4906, %4898
  %4910 = fadd fast float %4908, %4899
  %4911 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4912 = bitcast float %4911 to i32
  %4913 = icmp eq i32 %4912, 0
  br i1 %4913, label %4952, label %4914

; <label>:4914                                    ; preds = %4817
  %4915 = add i32 %4912, 0
  %4916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4916, %dx.types.Handle %102, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4922 = fsub fast float 1.000000e+00, %4527
  %4923 = call float @dx.op.binary.f32(i32 35, float %4922, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4924 = bitcast float %4527 to i32
  %4925 = sitofp i32 %4924 to float
  %4926 = fadd fast float %4925, 0xC1CFBF8940000000
  %4927 = fmul fast float %4921, %4926
  %4928 = fadd fast float %4927, 0x41CFBF8940000000
  %4929 = fptosi float %4928 to i32
  %4930 = bitcast i32 %4929 to float
  %4931 = bitcast float %4923 to i32
  %4932 = sitofp i32 %4931 to float
  %4933 = fadd fast float %4932, 0xC1CFBF8940000000
  %4934 = fmul fast float %4933, %4921
  %4935 = fadd fast float %4934, 0x41CFBF8940000000
  %4936 = fptosi float %4935 to i32
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4930, %4920
  %4939 = fmul fast float %4937, %4920
  %4940 = fsub fast float %4923, %4938
  %4941 = fadd fast float %4939, %4923
  %4942 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4943 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4944 = fsub fast float %4918, %4942
  %4945 = fsub fast float %4943, %4942
  %4946 = bitcast float %4945 to i32
  %4947 = sub nsw i32 2129859010, %4946
  %4948 = bitcast i32 %4947 to float
  %4949 = fmul fast float %4948, %4944
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fcmp fast olt float %4950, 0x3F70101020000000
  br i1 %4951, label %5090, label %4952

; <label>:4952                                    ; preds = %4914, %4817
  %4953 = phi float [ %4950, %4914 ], [ %4527, %4817 ]
  %4954 = fmul fast float %4953, %4820
  %4955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.i32 %4955, 1
  %4957 = extractvalue %dx.types.CBufRet.i32 %4955, 0
  %4958 = add i32 %4957, 0
  %4959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4960 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4959, %dx.types.Handle %101, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4961 = extractvalue %dx.types.ResRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.ResRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.ResRet.f32 %4960, 2
  %4964 = extractvalue %dx.types.ResRet.f32 %4960, 3
  %4965 = and i32 %4956, 255
  %4966 = uitofp i32 %4965 to float
  %4967 = lshr i32 %4956, 8
  %4968 = and i32 %4967, 255
  %4969 = uitofp i32 %4968 to float
  %4970 = fmul fast float %4964, %4966
  %4971 = fadd fast float %4970, %4969
  %4972 = fmul fast float %4971, 0x3F70101000000000
  %4973 = fadd fast float %4972, 0xBFB99999A0000000
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, 0x3FF1C71C80000000
  %4976 = call float @dx.op.binary.f32(i32 36, float %4972, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4977 = fsub fast float 1.000000e+00, %4975
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, %4961
  %4980 = fmul fast float %4978, %4962
  %4981 = fmul fast float %4978, %4963
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = fmul fast float %4975, %4961
  %4986 = fmul fast float %4975, %4962
  %4987 = fmul fast float %4975, %4963
  %4988 = fadd fast float %4985, %4976
  %4989 = fadd fast float %4986, %4976
  %4990 = fadd fast float %4987, %4976
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.i32 %4994, 3
  %4996 = extractvalue %dx.types.CBufRet.i32 %4994, 2
  %4997 = add i32 %4996, 0
  %4998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4997, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4998, %dx.types.Handle %101, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = extractvalue %dx.types.ResRet.f32 %4999, 3
  %5004 = and i32 %4995, 255
  %5005 = uitofp i32 %5004 to float
  %5006 = lshr i32 %4995, 8
  %5007 = and i32 %5006, 255
  %5008 = uitofp i32 %5007 to float
  %5009 = lshr i32 %4995, 16
  %5010 = and i32 %5009, 255
  %5011 = uitofp i32 %5010 to float
  %5012 = fmul fast float %5011, 0x3F70101000000000
  %5013 = fmul fast float %5000, %5005
  %5014 = fadd fast float %5013, %5008
  %5015 = fmul fast float %5014, 0x3F70101000000000
  %5016 = fadd fast float %5001, -5.000000e-01
  %5017 = fadd fast float %5003, -5.000000e-01
  %5018 = fmul fast float %5016, %5012
  %5019 = fmul fast float %5017, %5012
  %5020 = fadd fast float %5018, 5.000000e-01
  %5021 = fadd fast float %5019, 5.000000e-01
  %5022 = fmul fast float %5020, 2.000000e+00
  %5023 = fadd fast float %5022, -1.000000e+00
  %5024 = fmul fast float %5021, 2.000000e+00
  %5025 = fadd fast float %5024, -1.000000e+00
  %5026 = fadd fast float %5023, %5025
  %5027 = fmul fast float %5026, 5.000000e-01
  %5028 = fsub fast float %5023, %5025
  %5029 = fmul fast float %5028, 5.000000e-01
  %5030 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5031 = fsub fast float 1.000000e+00, %5030
  %5032 = call float @dx.op.unary.f32(i32 6, float %5029)  ; FAbs(value)
  %5033 = fsub fast float %5031, %5032
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5029, float %5033, float %5027, float %5029, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.unary.f32(i32 25, float %5034)  ; Rsqrt(value)
  %5036 = fmul fast float %5027, %5035
  %5037 = fmul fast float %5029, %5035
  %5038 = select i1 %4865, i32 %4855, i32 %4856
  %5039 = select i1 %4863, i32 %4854, i32 %5038
  %5040 = sitofp i32 %5039 to float
  %5041 = fmul fast float %5033, %5040
  %5042 = fmul fast float %5041, %5035
  %5043 = select i1 %4865, float %5042, float %5037
  %5044 = select i1 %4865, float %5037, float %5042
  %5045 = select i1 %4863, float %5042, float %5036
  %5046 = select i1 %4863, float %5037, float %5043
  %5047 = select i1 %4863, float %5036, float %5044
  %5048 = fsub fast float %4982, %4809
  %5049 = fsub fast float %4983, %4810
  %5050 = fsub fast float %4984, %4811
  %5051 = fmul fast float %5048, %4954
  %5052 = fmul fast float %5049, %4954
  %5053 = fmul fast float %5050, %4954
  %5054 = fadd fast float %5051, %4809
  %5055 = fadd fast float %5052, %4810
  %5056 = fadd fast float %5053, %4811
  %5057 = fsub fast float %4991, %4806
  %5058 = fsub fast float %4992, %4807
  %5059 = fsub fast float %4993, %4808
  %5060 = fmul fast float %5057, %4954
  %5061 = fmul fast float %5058, %4954
  %5062 = fmul fast float %5059, %4954
  %5063 = fadd fast float %5060, %4806
  %5064 = fadd fast float %5061, %4807
  %5065 = fadd fast float %5062, %4808
  %5066 = fadd fast float %5045, %4812
  %5067 = fadd fast float %5046, %4813
  %5068 = fadd fast float %5047, %4814
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float %5066, float %5067, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.unary.f32(i32 25, float %5069)  ; Rsqrt(value)
  %5071 = fmul fast float %5066, %5070
  %5072 = fmul fast float %5067, %5070
  %5073 = fmul fast float %5068, %5070
  %5074 = fsub fast float %5071, %4812
  %5075 = fsub fast float %5072, %4813
  %5076 = fsub fast float %5073, %4814
  %5077 = fmul fast float %5074, %4954
  %5078 = fmul fast float %5075, %4954
  %5079 = fmul fast float %5076, %4954
  %5080 = fadd fast float %5077, %4812
  %5081 = fadd fast float %5078, %4813
  %5082 = fadd fast float %5079, %4814
  %5083 = call float @dx.op.binary.f32(i32 36, float %4816, float %5002)  ; FMin(a,b)
  %5084 = fsub fast float %5083, %4816
  %5085 = fmul fast float %5084, %4954
  %5086 = fadd fast float %5085, %4816
  %5087 = fsub fast float %5015, %4815
  %5088 = fmul fast float %5087, %4954
  %5089 = fadd fast float %5088, %4815
  br label %5090

; <label>:5090                                    ; preds = %4952, %4914, %4805, %4521
  %5091 = phi float [ %5063, %4952 ], [ %4806, %4914 ], [ %4806, %4805 ], [ %4112, %4521 ]
  %5092 = phi float [ %5064, %4952 ], [ %4807, %4914 ], [ %4807, %4805 ], [ %4113, %4521 ]
  %5093 = phi float [ %5065, %4952 ], [ %4808, %4914 ], [ %4808, %4805 ], [ %4114, %4521 ]
  %5094 = phi float [ %5054, %4952 ], [ %4809, %4914 ], [ %4809, %4805 ], [ %4130, %4521 ]
  %5095 = phi float [ %5055, %4952 ], [ %4810, %4914 ], [ %4810, %4805 ], [ %4131, %4521 ]
  %5096 = phi float [ %5056, %4952 ], [ %4811, %4914 ], [ %4811, %4805 ], [ %4132, %4521 ]
  %5097 = phi float [ %5080, %4952 ], [ %4812, %4914 ], [ %4812, %4805 ], [ %4091, %4521 ]
  %5098 = phi float [ %5081, %4952 ], [ %4813, %4914 ], [ %4813, %4805 ], [ %4092, %4521 ]
  %5099 = phi float [ %5082, %4952 ], [ %4814, %4914 ], [ %4814, %4805 ], [ %4093, %4521 ]
  %5100 = phi float [ %5089, %4952 ], [ %4815, %4914 ], [ %4815, %4805 ], [ %4115, %4521 ]
  %5101 = phi float [ %5086, %4952 ], [ %4816, %4914 ], [ %4816, %4805 ], [ %4016, %4521 ]
  %5102 = fcmp fast une float %4525, 0.000000e+00
  br i1 %5102, label %5103, label %5272

; <label>:5103                                    ; preds = %5090
  %5104 = call float @dx.op.dot3.f32(i32 55, float %192, float %193, float %194, float %192, float %193, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.unary.f32(i32 25, float %5104)  ; Rsqrt(value)
  %5106 = fmul fast float %192, %5105
  %5107 = fsub fast float -0.000000e+00, %5106
  %5108 = fmul fast float %193, %5105
  %5109 = fsub fast float -0.000000e+00, %5108
  %5110 = fmul fast float %194, %5105
  %5111 = fsub fast float -0.000000e+00, %5110
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5109, float %5111, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fmul fast float %4525, 2.500000e+00
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fmul fast float %4525, 0x4013FFFFE0000000
  %5116 = fadd fast float %5115, 0xBFFFFFFFE0000000
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = fmul fast float %4525, 0x4004000020000000
  %5119 = fadd fast float %5118, 0xBFF8000040000000
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %4094, 1.000000e+01
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5122, 2.000000e+00
  %5124 = fsub fast float 3.000000e+00, %5123
  %5125 = fmul fast float %5122, %5122
  %5126 = fmul fast float %5125, %5124
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fsub fast float 0x3FE3333340000000, %5100
  %5129 = fmul fast float %5128, 0x400AAAAAA0000000
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5127, %5130
  %5132 = fmul fast float %5094, 0x3FEA2B8620000000
  %5133 = fmul fast float %5095, 0x3FEA2B8620000000
  %5134 = fmul fast float %5096, 0x3FEA2B8620000000
  %5135 = fadd fast float %5132, 0x3FC81DFBA0000000
  %5136 = fmul fast float %5135, %5094
  %5137 = fadd fast float %5136, 0x3F910E6020000000
  %5138 = fadd fast float %5133, 0x3FC81DFBA0000000
  %5139 = fmul fast float %5138, %5095
  %5140 = fadd fast float %5139, 0x3F910E6020000000
  %5141 = fadd fast float %5134, 0x3FC81DFBA0000000
  %5142 = fmul fast float %5141, %5096
  %5143 = fadd fast float %5142, 0x3F910E6020000000
  %5144 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = fsub fast float %5144, %5094
  %5148 = fsub fast float %5145, %5095
  %5149 = fsub fast float %5146, %5096
  %5150 = fmul fast float %5147, %5114
  %5151 = fmul fast float %5150, %5131
  %5152 = fmul fast float %5148, %5114
  %5153 = fmul fast float %5152, %5131
  %5154 = fmul fast float %5149, %5114
  %5155 = fmul fast float %5154, %5131
  %5156 = fadd fast float %5151, %5094
  %5157 = fadd fast float %5153, %5095
  %5158 = fadd fast float %5155, %5096
  %5159 = fmul fast float %5101, %5101
  %5160 = fmul fast float %5159, %5159
  %5161 = fadd fast float %5117, 1.000000e+00
  %5162 = fsub fast float %5161, %5131
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = fsub fast float 1.000000e+00, %5160
  %5167 = call float @dx.op.binary.f32(i32 36, float %5163, float %5166)  ; FMin(a,b)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5167, float %5168)  ; FMax(a,b)
  %5170 = fadd fast float %5165, 0xBFE4CCCCC0000000
  %5171 = fmul fast float %5170, 0x4006DB6DA0000000
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fmul fast float %5172, 2.000000e+00
  %5174 = fsub fast float 3.000000e+00, %5173
  %5175 = bitcast float %5091 to i32
  %5176 = ashr i32 %5175, 1
  %5177 = add nsw i32 %5176, 532487669
  %5178 = bitcast i32 %5177 to float
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = fmul fast float %5182, 2.000000e+00
  %5184 = bitcast float %5092 to i32
  %5185 = ashr i32 %5184, 1
  %5186 = add nsw i32 %5185, 532487669
  %5187 = bitcast i32 %5186 to float
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, 2.000000e+00
  %5193 = bitcast float %5093 to i32
  %5194 = ashr i32 %5193, 1
  %5195 = add nsw i32 %5194, 532487669
  %5196 = bitcast i32 %5195 to float
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = bitcast float %5197 to i32
  %5199 = sub nsw i32 2129859010, %5198
  %5200 = bitcast i32 %5199 to float
  %5201 = fmul fast float %5200, 2.000000e+00
  %5202 = fsub fast float 0x4002A9FBE0000000, %5183
  %5203 = fadd fast float %5183, 0x3FD54FDF00000000
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = fmul fast float %5206, %5202
  %5208 = fmul fast float %5207, %5207
  %5209 = fsub fast float 0x4002A9FBE0000000, %5192
  %5210 = fadd fast float %5192, 0x3FD54FDF00000000
  %5211 = bitcast float %5210 to i32
  %5212 = sub nsw i32 2129859010, %5211
  %5213 = bitcast i32 %5212 to float
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5214, %5214
  %5216 = fsub fast float 0x4002A9FBE0000000, %5201
  %5217 = fadd fast float %5201, 0x3FD54FDF00000000
  %5218 = bitcast float %5217 to i32
  %5219 = sub nsw i32 2129859010, %5218
  %5220 = bitcast i32 %5219 to float
  %5221 = fmul fast float %5220, %5216
  %5222 = fmul fast float %5221, %5221
  %5223 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5208)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5215)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5222)  ; FMax(a,b)
  %5226 = fsub fast float 1.000000e+00, %5112
  %5227 = fadd fast float %5226, %5127
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = fsub fast float 1.000000e+00, %4506
  %5230 = fmul fast float %5169, %5229
  %5231 = fmul fast float %5172, %5172
  %5232 = fmul fast float %5231, %5230
  %5233 = fmul fast float %5232, %5174
  %5234 = fmul fast float %5229, 0xBFE99999A0000000
  %5235 = fmul fast float %5234, %5114
  %5236 = fmul fast float %5235, %5131
  %5237 = fadd fast float %5236, 1.000000e+00
  %5238 = fadd fast float %5100, -1.000000e+00
  %5239 = fmul fast float %5237, %5238
  %5240 = fadd fast float %5239, 1.000000e+00
  %5241 = fsub fast float %5223, %5091
  %5242 = fsub fast float %5224, %5092
  %5243 = fsub fast float %5225, %5093
  %5244 = fmul fast float %5233, %5241
  %5245 = fmul fast float %5233, %5242
  %5246 = fmul fast float %5233, %5243
  %5247 = fadd fast float %5244, %5091
  %5248 = fadd fast float %5245, %5092
  %5249 = fadd fast float %5246, %5093
  %5250 = fsub fast float %112, %5097
  %5251 = fsub fast float %113, %5098
  %5252 = fsub fast float %114, %5099
  %5253 = fmul fast float %5233, %5250
  %5254 = fmul fast float %5233, %5251
  %5255 = fmul fast float %5233, %5252
  %5256 = fadd fast float %5253, %5097
  %5257 = fadd fast float %5254, %5098
  %5258 = fadd fast float %5255, %5099
  %5259 = fmul fast float %5233, %5228
  %5260 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5259, %5261
  %5263 = fadd fast float %5262, %5260
  %5264 = fsub fast float 1.000000e+00, %5101
  %5265 = fmul fast float %5233, %5264
  %5266 = fadd fast float %5265, %5101
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5258, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = call float @dx.op.unary.f32(i32 25, float %5267)  ; Rsqrt(value)
  %5269 = fmul fast float %5256, %5268
  %5270 = fmul fast float %5257, %5268
  %5271 = fmul fast float %5258, %5268
  br label %5272

; <label>:5272                                    ; preds = %5103, %5090
  %5273 = phi float [ %5247, %5103 ], [ %5091, %5090 ]
  %5274 = phi float [ %5248, %5103 ], [ %5092, %5090 ]
  %5275 = phi float [ %5249, %5103 ], [ %5093, %5090 ]
  %5276 = phi float [ %5156, %5103 ], [ %5094, %5090 ]
  %5277 = phi float [ %5157, %5103 ], [ %5095, %5090 ]
  %5278 = phi float [ %5158, %5103 ], [ %5096, %5090 ]
  %5279 = phi float [ %5269, %5103 ], [ %5097, %5090 ]
  %5280 = phi float [ %5270, %5103 ], [ %5098, %5090 ]
  %5281 = phi float [ %5271, %5103 ], [ %5099, %5090 ]
  %5282 = phi float [ %5263, %5103 ], [ %5100, %5090 ]
  %5283 = phi float [ %5266, %5103 ], [ %5101, %5090 ]
  %5284 = icmp eq i32 %54, 0
  br i1 %5284, label %5315, label %5285

; <label>:5285                                    ; preds = %5272
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5289 = fmul fast float %5287, %105
  %5290 = fmul fast float %5288, %106
  %5291 = fmul fast float %5289, 1.024000e+03
  %5292 = fmul fast float %5290, 1.024000e+03
  %5293 = fadd fast float %5291, -5.120000e+02
  %5294 = fadd fast float %5292, -5.120000e+02
  %5295 = fmul fast float %5289, 0x4081BEDF00000000
  %5296 = fadd fast float %5295, 0xC071BEDF00000000
  %5297 = call float @dx.op.unary.f32(i32 22, float %5296)  ; Frc(value)
  %5298 = fmul fast float %5293, %5297
  %5299 = fadd fast float %5298, %5294
  %5300 = fmul fast float %5290, 0x4073BEBE20000000
  %5301 = fadd fast float %5300, 0xC063BEBE20000000
  %5302 = call float @dx.op.unary.f32(i32 22, float %5301)  ; Frc(value)
  %5303 = fmul fast float %5294, %5302
  %5304 = fadd fast float %5303, %5293
  %5305 = fmul fast float %5299, %5304
  %5306 = call float @dx.op.unary.f32(i32 22, float %5305)  ; Frc(value)
  %5307 = add i32 %346, 12
  %5308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.i32 %5308, 0
  %5310 = and i32 %5309, 255
  %5311 = uitofp i32 %5310 to float
  %5312 = fmul fast float %5311, 0x3F70101020000000
  %5313 = fcmp fast olt float %5306, %5312
  br i1 %5313, label %5314, label %5315

; <label>:5314                                    ; preds = %5285
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5315

; <label>:5315                                    ; preds = %5314, %5285, %5272
  %5316 = fsub fast float -0.000000e+00, %194
  %5317 = call float @dx.op.dot3.f32(i32 55, float %192, float %193, float %194, float %192, float %193, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = call float @dx.op.unary.f32(i32 25, float %5317)  ; Rsqrt(value)
  %5319 = fmul fast float %5318, %192
  %5320 = fmul fast float %5318, %193
  %5321 = fmul fast float %5318, %194
  %5322 = fsub fast float -0.000000e+00, %5319
  %5323 = fsub fast float -0.000000e+00, %5320
  %5324 = fsub fast float -0.000000e+00, %5321
  %5325 = select i1 %292, float 0.000000e+00, float %5275
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = fmul fast float %5328, 2.000000e+00
  %5330 = fmul fast float %5329, %5279
  %5331 = fmul fast float %5329, %5280
  %5332 = fmul fast float %5329, %5281
  %5333 = fsub fast float %5319, %5330
  %5334 = fsub fast float %5320, %5331
  %5335 = fsub fast float %5321, %5332
  %5336 = call float @dx.op.binary.f32(i32 36, float %5283, float 1.000000e+00)  ; FMin(a,b)
  %5337 = fsub fast float 1.000000e+00, %5283
  %5338 = bitcast float %5337 to i32
  %5339 = sub nsw i32 2129859010, %5338
  %5340 = bitcast i32 %5339 to float
  %5341 = fsub fast float 1.000000e+00, %76
  %5342 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.binary.f32(i32 35, float %5342, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5344 = fdiv fast float %5341, %5343
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5347 = fmul fast float %5346, 5.000000e-01
  %5348 = fadd fast float %5347, 5.000000e-01
  %5349 = fmul fast float %5348, %76
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = fmul fast float %5351, %5344
  %5353 = fadd fast float %5349, %5352
  %5354 = fsub fast float 5.000000e-01, %5347
  %5355 = fmul fast float %5354, %5276
  %5356 = fmul fast float %5354, %5277
  %5357 = fmul fast float %5354, %5278
  %5358 = fadd fast float %5353, %5355
  %5359 = fadd fast float %5353, %5356
  %5360 = fadd fast float %5353, %5357
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5334, float %5335, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = fmul fast float %5362, 5.000000e-01
  %5364 = fadd fast float %5363, 5.000000e-01
  %5365 = fmul fast float %5364, %76
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5334, float %5335, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = fmul fast float %5367, %5344
  %5369 = fadd fast float %5365, %5368
  %5370 = fsub fast float 5.000000e-01, %5363
  %5371 = fmul fast float %5370, %5276
  %5372 = fmul fast float %5370, %5277
  %5373 = fmul fast float %5370, %5278
  %5374 = fadd fast float %5369, %5371
  %5375 = fadd fast float %5369, %5372
  %5376 = fadd fast float %5369, %5373
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = call float @dx.op.binary.f32(i32 36, float %5276, float %5378)  ; FMin(a,b)
  %5380 = fsub fast float 1.000000e+00, %5336
  %5381 = fmul fast float %5379, %5380
  %5382 = fsub fast float 1.000000e+00, %5381
  %5383 = bitcast float %5382 to i32
  %5384 = sub nsw i32 2129859010, %5383
  %5385 = bitcast i32 %5384 to float
  %5386 = call float @dx.op.binary.f32(i32 36, float %5277, float %5378)  ; FMin(a,b)
  %5387 = fmul fast float %5386, %5380
  %5388 = fsub fast float 1.000000e+00, %5387
  %5389 = bitcast float %5388 to i32
  %5390 = sub nsw i32 2129859010, %5389
  %5391 = bitcast i32 %5390 to float
  %5392 = call float @dx.op.binary.f32(i32 36, float %5278, float %5378)  ; FMin(a,b)
  %5393 = fmul fast float %5392, %5380
  %5394 = fsub fast float 1.000000e+00, %5393
  %5395 = bitcast float %5394 to i32
  %5396 = sub nsw i32 2129859010, %5395
  %5397 = bitcast i32 %5396 to float
  %5398 = fmul fast float %5336, %77
  %5399 = fmul fast float %5398, %5358
  %5400 = fmul fast float %5399, %5385
  %5401 = fmul fast float %5336, %78
  %5402 = fmul fast float %5401, %5359
  %5403 = fmul fast float %5402, %5391
  %5404 = fmul fast float %5336, %79
  %5405 = fmul fast float %5404, %5360
  %5406 = fmul fast float %5405, %5397
  %5407 = call float @dx.op.binary.f32(i32 36, float %5273, float %5378)  ; FMin(a,b)
  %5408 = fmul fast float %5407, %5380
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = bitcast float %5409 to i32
  %5411 = sub nsw i32 2129859010, %5410
  %5412 = bitcast i32 %5411 to float
  %5413 = call float @dx.op.binary.f32(i32 36, float %5274, float %5378)  ; FMin(a,b)
  %5414 = fmul fast float %5413, %5380
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = bitcast float %5415 to i32
  %5417 = sub nsw i32 2129859010, %5416
  %5418 = bitcast i32 %5417 to float
  %5419 = call float @dx.op.binary.f32(i32 36, float %5325, float %5378)  ; FMin(a,b)
  %5420 = fmul fast float %5419, %5380
  %5421 = fsub fast float 1.000000e+00, %5420
  %5422 = bitcast float %5421 to i32
  %5423 = sub nsw i32 2129859010, %5422
  %5424 = bitcast i32 %5423 to float
  %5425 = fmul fast float %5398, %5374
  %5426 = fmul fast float %5425, %5412
  %5427 = fmul fast float %5401, %5375
  %5428 = fmul fast float %5427, %5418
  %5429 = fmul fast float %5404, %5376
  %5430 = fmul fast float %5429, %5424
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5400, float %5403, float %5406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = select i1 %292, float 0.000000e+00, float %5400
  %5433 = select i1 %292, float %5431, float %5403
  %5434 = select i1 %292, float 0.000000e+00, float %5406
  %5435 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5428, float %5430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5436 = select i1 %292, float 0.000000e+00, float %5426
  %5437 = select i1 %292, float %5435, float %5428
  %5438 = select i1 %292, float 0.000000e+00, float %5430
  %5439 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5440 = fmul fast float %5439, %5432
  %5441 = fmul fast float %5439, %5433
  %5442 = fmul fast float %5434, %5439
  %5443 = fmul fast float %4017, %4017
  %5444 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5445 = fmul fast float %5327, 9.843750e-01
  %5446 = fmul fast float %5282, 9.843750e-01
  %5447 = fadd fast float %5445, 7.812500e-03
  %5448 = fadd fast float %5446, 7.812500e-03
  %5449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %5447, float %5448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.ResRet.f32 %5449, 2
  %5453 = extractvalue %dx.types.ResRet.f32 %5449, 3
  %5454 = fsub fast float 1.000000e+00, %5444
  %5455 = fsub fast float %5452, %5450
  %5456 = fsub fast float %5453, %5451
  %5457 = fmul fast float %5455, %5454
  %5458 = fmul fast float %5456, %5454
  %5459 = fadd fast float %5457, %5450
  %5460 = fadd fast float %5458, %5451
  %5461 = fmul fast float %5459, %5273
  %5462 = fmul fast float %5459, %5274
  %5463 = fmul fast float %5459, %5325
  %5464 = fadd fast float %5461, %5460
  %5465 = fadd fast float %5462, %5460
  %5466 = fadd fast float %5463, %5460
  %5467 = call float @dx.op.binary.f32(i32 35, float %5465, float %5466)  ; FMax(a,b)
  %5468 = call float @dx.op.binary.f32(i32 35, float %5464, float %5467)  ; FMax(a,b)
  %5469 = fsub fast float 1.000000e+00, %5468
  %5470 = fmul fast float %192, %192
  %5471 = fmul fast float %193, %193
  %5472 = fadd fast float %5471, %5470
  %5473 = fmul fast float %194, %194
  %5474 = fadd fast float %5472, %5473
  %5475 = call float @dx.op.unary.f32(i32 24, float %5474)  ; Sqrt(value)
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5478 = fsub fast float %5475, %5477
  %5479 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5480 = fmul fast float %5478, %5479
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5483 = extractvalue %dx.types.CBufRet.f32 %5476, 3
  %5484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %5485 = extractvalue %dx.types.ResRet.i32 %5484, 0
  %5486 = and i32 %5485, 4194304
  %5487 = icmp ne i32 %5486, 0
  %5488 = and i32 %5485, 8388608
  %5489 = icmp ne i32 %5488, 0
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.CBufRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5494 = extractvalue %dx.types.CBufRet.f32 %5490, 3
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 0
  %5497 = extractvalue %dx.types.CBufRet.f32 %5495, 1
  %5498 = extractvalue %dx.types.CBufRet.f32 %5495, 2
  %5499 = extractvalue %dx.types.CBufRet.f32 %5495, 3
  %5500 = select i1 %5487, float %5491, float %5496
  %5501 = select i1 %5487, float %5492, float %5497
  %5502 = select i1 %5487, float %5493, float %5498
  %5503 = select i1 %5487, float %5494, float %5499
  %5504 = select i1 %5489, float 0.000000e+00, float %5503
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 0
  %5507 = extractvalue %dx.types.CBufRet.f32 %5505, 1
  %5508 = select i1 %5487, float %5506, float %5507
  %5509 = select i1 %5489, float 0.000000e+00, float %5508
  %5510 = extractvalue %dx.types.CBufRet.f32 %5505, 2
  %5511 = extractvalue %dx.types.CBufRet.f32 %5505, 3
  %5512 = select i1 %5487, float %5510, float %5511
  %5513 = select i1 %5489, float 0.000000e+00, float %5512
  %5514 = fmul fast float %5481, %58
  %5515 = fmul fast float %5514, %5483
  %5516 = fmul fast float %5515, %5513
  %5517 = fadd fast float %5516, 1.000000e+00
  %5518 = fmul fast float %5469, %5440
  %5519 = fmul fast float %5518, %5517
  %5520 = fmul fast float %5469, %5441
  %5521 = fmul fast float %5520, %5517
  %5522 = fmul fast float %5469, %5442
  %5523 = fmul fast float %5522, %5517
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5277, float %5278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = fcmp fast ogt float %5524, 0x3E7FF19E20000000
  %5526 = fdiv fast float 1.000000e+00, %5524
  %5527 = select i1 %5525, float %5526, float 0.000000e+00
  %5528 = fmul fast float %5527, %5276
  %5529 = fmul fast float %5527, %5277
  %5530 = fmul fast float %5527, %5278
  %5531 = fadd fast float %5528, -1.000000e+00
  %5532 = fadd fast float %5529, -1.000000e+00
  %5533 = fadd fast float %5530, -1.000000e+00
  %5534 = fmul fast float %5531, 5.000000e-01
  %5535 = fmul fast float %5532, 5.000000e-01
  %5536 = fmul fast float %5533, 5.000000e-01
  %5537 = fadd fast float %5534, 1.000000e+00
  %5538 = fadd fast float %5535, 1.000000e+00
  %5539 = fadd fast float %5536, 1.000000e+00
  %5540 = fsub fast float %5500, %5537
  %5541 = fsub fast float %5501, %5538
  %5542 = fsub fast float %5502, %5539
  %5543 = fmul fast float %5540, %5504
  %5544 = fmul fast float %5541, %5504
  %5545 = fmul fast float %5542, %5504
  %5546 = fadd fast float %5543, %5537
  %5547 = fadd fast float %5544, %5538
  %5548 = fadd fast float %5545, %5539
  %5549 = call float @dx.op.binary.f32(i32 35, float %5327, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5550 = fdiv fast float %4017, %5549
  %5551 = fcmp fast olt float %4116, 1.270000e+02
  %5552 = fcmp fast olt float %4117, 1.270000e+02
  %5553 = fcmp fast olt float %4118, 1.270000e+02
  %5554 = fmul fast float %4116, 0xBFF7154760000000
  %5555 = fmul fast float %5554, %5550
  %5556 = fmul fast float %4117, 0xBFF7154760000000
  %5557 = fmul fast float %5556, %5550
  %5558 = fmul fast float %4118, 0xBFF7154760000000
  %5559 = fmul fast float %5558, %5550
  %5560 = call float @dx.op.unary.f32(i32 21, float %5555)  ; Exp(value)
  %5561 = call float @dx.op.unary.f32(i32 21, float %5557)  ; Exp(value)
  %5562 = call float @dx.op.unary.f32(i32 21, float %5559)  ; Exp(value)
  %5563 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5564 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5565 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5566 = select i1 %5551, float %5563, float 0.000000e+00
  %5567 = select i1 %5552, float %5564, float 0.000000e+00
  %5568 = select i1 %5553, float %5565, float 0.000000e+00
  %5569 = fmul fast float %5566, %5469
  %5570 = fmul fast float %5567, %5469
  %5571 = fmul fast float %5568, %5469
  %5572 = fadd fast float %5569, -1.000000e+00
  %5573 = fadd fast float %5570, -1.000000e+00
  %5574 = fadd fast float %5571, -1.000000e+00
  %5575 = fmul fast float %5464, %5436
  %5576 = fmul fast float %5465, %5437
  %5577 = fmul fast float %5466, %5438
  %5578 = fsub fast float 1.000000e+00, %5327
  %5579 = bitcast float %5578 to i32
  %5580 = sitofp i32 %5579 to float
  %5581 = fmul fast float %5580, 5.000000e+00
  %5582 = fadd fast float %5581, 0xC1EFBF8940000000
  %5583 = fptosi float %5582 to i32
  %5584 = bitcast i32 %5583 to float
  %5585 = fmul fast float %5584, %58
  %5586 = fmul fast float %5585, %5481
  %5587 = fmul fast float %5586, %5482
  %5588 = fmul fast float %5587, %5509
  %5589 = fmul fast float %5518, %5588
  %5590 = fmul fast float %5589, %5546
  %5591 = fmul fast float %5520, %5588
  %5592 = fmul fast float %5591, %5547
  %5593 = fmul fast float %5522, %5588
  %5594 = fmul fast float %5593, %5548
  %5595 = fmul fast float %5519, %1365
  %5596 = fmul fast float %5521, %1365
  %5597 = fmul fast float %5523, %1365
  %5598 = fadd fast float %5575, %4061
  %5599 = fadd fast float %5598, %5590
  %5600 = fmul fast float %5599, %1365
  %5601 = fadd fast float %5576, %4063
  %5602 = fadd fast float %5601, %5592
  %5603 = fmul fast float %5602, %1365
  %5604 = fadd fast float %5577, %4065
  %5605 = fadd fast float %5604, %5594
  %5606 = fmul fast float %5605, %1365
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 3
  %5609 = fcmp fast oeq float %5608, 0.000000e+00
  br i1 %5609, label %6637, label %5610

; <label>:5610                                    ; preds = %5315
  %5611 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5612 = extractvalue %dx.types.CBufRet.f32 %5607, 1
  %5613 = extractvalue %dx.types.CBufRet.f32 %5607, 2
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.CBufRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.CBufRet.f32 %5614, 2
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5615, float %5616, float %5617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = select i1 %292, float %5619, float %5615
  %5623 = select i1 %292, float %5621, float %5616
  %5624 = select i1 %292, float %5620, float %5617
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5627 = fmul fast float %5626, %112
  %5628 = fmul fast float %5626, %113
  %5629 = fmul fast float %5626, %114
  %5630 = fadd fast float %5627, %192
  %5631 = fadd fast float %5628, %193
  %5632 = fadd fast float %5629, %194
  %5633 = fcmp fast olt float %5608, 0.000000e+00
  br i1 %5633, label %6273, label %5634

; <label>:5634                                    ; preds = %5610
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 0
  %5637 = extractvalue %dx.types.CBufRet.f32 %5635, 1
  %5638 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5639 = extractvalue %dx.types.CBufRet.f32 %5635, 3
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.CBufRet.f32 %5640, 1
  %5643 = extractvalue %dx.types.CBufRet.f32 %5640, 2
  %5644 = extractvalue %dx.types.CBufRet.f32 %5640, 3
  %5645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5646 = extractvalue %dx.types.CBufRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.CBufRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.CBufRet.f32 %5645, 2
  %5649 = extractvalue %dx.types.CBufRet.f32 %5645, 3
  %5650 = fmul fast float %5636, %5630
  %5651 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5637, float %5650)  ; FMad(a,b,c)
  %5652 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5638, float %5651)  ; FMad(a,b,c)
  %5653 = fadd fast float %5652, %5639
  %5654 = fmul fast float %5641, %5630
  %5655 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5642, float %5654)  ; FMad(a,b,c)
  %5656 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5643, float %5655)  ; FMad(a,b,c)
  %5657 = fadd fast float %5656, %5644
  %5658 = fmul fast float %5646, %5630
  %5659 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5647, float %5658)  ; FMad(a,b,c)
  %5660 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5648, float %5659)  ; FMad(a,b,c)
  %5661 = fadd fast float %5660, %5649
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5664 = fcmp fast une float %5663, 0.000000e+00
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 0
  %5667 = extractvalue %dx.types.CBufRet.f32 %5665, 1
  %5668 = extractvalue %dx.types.CBufRet.f32 %5665, 3
  %5669 = fmul fast float %5668, %5653
  %5670 = fmul fast float %5668, %5657
  %5671 = fadd fast float %5669, %5666
  %5672 = fadd fast float %5670, %5667
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = extractvalue %dx.types.CBufRet.f32 %5673, 3
  %5677 = fmul fast float %5676, %5653
  %5678 = fmul fast float %5676, %5657
  %5679 = fadd fast float %5677, %5674
  %5680 = fadd fast float %5678, %5675
  %5681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5681, 1
  %5683 = fsub fast float %5682, %5661
  %5684 = extractvalue %dx.types.CBufRet.f32 %5681, 2
  %5685 = fmul fast float %5683, %5684
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  br i1 %5664, label %5748, label %5688

; <label>:5688                                    ; preds = %5634
  %5689 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5692 = fadd fast float %5691, %5689
  %5693 = fcmp fast ogt float %5692, 0.000000e+00
  br i1 %5693, label %5694, label %5718

; <label>:5694                                    ; preds = %5688
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.CBufRet.f32 %5695, 1
  %5698 = fsub fast float %5679, %5696
  %5699 = fsub fast float %5680, %5697
  %5700 = fcmp fast olt float %5698, 0.000000e+00
  %5701 = fcmp fast olt float %5699, 0.000000e+00
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5704 = extractvalue %dx.types.CBufRet.f32 %5702, 1
  %5705 = extractvalue %dx.types.CBufRet.f32 %5702, 2
  %5706 = extractvalue %dx.types.CBufRet.f32 %5702, 3
  %5707 = select i1 %5700, float %5703, float %5705
  %5708 = select i1 %5701, float %5704, float %5706
  %5709 = fmul fast float %5707, %5698
  %5710 = fmul fast float %5708, %5699
  %5711 = call float @dx.op.unary.f32(i32 6, float %5709)  ; FAbs(value)
  %5712 = call float @dx.op.unary.f32(i32 6, float %5710)  ; FAbs(value)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5714 = call float @dx.op.binary.f32(i32 35, float %5711, float %5712)  ; FMax(a,b)
  %5715 = fsub fast float %5713, %5714
  %5716 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5717 = fmul fast float %5716, %5687
  br label %5718

; <label>:5718                                    ; preds = %5694, %5688
  %5719 = phi float [ %5717, %5694 ], [ 0.000000e+00, %5688 ]
  %5720 = extractvalue %dx.types.CBufRet.f32 %5665, 2
  %5721 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5722 = fadd fast float %5721, %5720
  %5723 = fcmp fast ogt float %5722, 0.000000e+00
  br i1 %5723, label %5724, label %5748

; <label>:5724                                    ; preds = %5718
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5727 = extractvalue %dx.types.CBufRet.f32 %5725, 1
  %5728 = fsub fast float %5671, %5726
  %5729 = fsub fast float %5672, %5727
  %5730 = fcmp fast olt float %5728, 0.000000e+00
  %5731 = fcmp fast olt float %5729, 0.000000e+00
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5736 = extractvalue %dx.types.CBufRet.f32 %5732, 3
  %5737 = select i1 %5730, float %5733, float %5735
  %5738 = select i1 %5731, float %5734, float %5736
  %5739 = fmul fast float %5737, %5728
  %5740 = fmul fast float %5738, %5729
  %5741 = call float @dx.op.unary.f32(i32 6, float %5739)  ; FAbs(value)
  %5742 = call float @dx.op.unary.f32(i32 6, float %5740)  ; FAbs(value)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5744 = call float @dx.op.binary.f32(i32 35, float %5741, float %5742)  ; FMax(a,b)
  %5745 = fsub fast float %5743, %5744
  %5746 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5747 = fmul fast float %5746, %5687
  br label %5748

; <label>:5748                                    ; preds = %5724, %5718, %5634
  %5749 = phi float [ 0.000000e+00, %5634 ], [ %5747, %5724 ], [ 0.000000e+00, %5718 ]
  %5750 = phi float [ 0.000000e+00, %5634 ], [ %5719, %5724 ], [ %5719, %5718 ]
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5753 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.CBufRet.f32 %5754, 1
  %5757 = fsub fast float %5653, %5755
  %5758 = fsub fast float %5657, %5756
  %5759 = fcmp fast olt float %5757, 0.000000e+00
  %5760 = fcmp fast olt float %5758, 0.000000e+00
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 0
  %5763 = extractvalue %dx.types.CBufRet.f32 %5761, 1
  %5764 = extractvalue %dx.types.CBufRet.f32 %5761, 2
  %5765 = extractvalue %dx.types.CBufRet.f32 %5761, 3
  %5766 = select i1 %5759, float %5762, float %5764
  %5767 = select i1 %5760, float %5763, float %5765
  %5768 = fmul fast float %5766, %5757
  %5769 = fmul fast float %5767, %5758
  %5770 = call float @dx.op.unary.f32(i32 6, float %5768)  ; FAbs(value)
  %5771 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5773 = call float @dx.op.binary.f32(i32 35, float %5770, float %5771)  ; FMax(a,b)
  %5774 = fsub fast float %5772, %5773
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = call float @dx.op.binary.f32(i32 36, float %5775, float %5753)  ; FMin(a,b)
  %5777 = fmul fast float %5776, %5687
  %5778 = fsub fast float %5749, %5777
  %5779 = fsub fast float %5750, %5749
  %5780 = fsub fast float %5779, %5777
  %5781 = call float @dx.op.binary.f32(i32 35, float %5749, float %5750)  ; FMax(a,b)
  %5782 = call float @dx.op.binary.f32(i32 35, float %5777, float %5781)  ; FMax(a,b)
  %5783 = fcmp fast olt float %5782, 1.000000e+00
  br i1 %5783, label %5784, label %6182, !dx.controlflow.hints !95

; <label>:5784                                    ; preds = %5748
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = fcmp fast une float %5786, 0.000000e+00
  br i1 %5787, label %5788, label %6182, !dx.controlflow.hints !96

; <label>:5788                                    ; preds = %5784
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5793 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5795 = extractvalue %dx.types.CBufRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.CBufRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.CBufRet.f32 %5794, 2
  %5798 = extractvalue %dx.types.CBufRet.f32 %5794, 3
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5803 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %5804 = fmul fast float %5790, %5630
  %5805 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5791, float %5804)  ; FMad(a,b,c)
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5792, float %5805)  ; FMad(a,b,c)
  %5807 = fadd fast float %5806, %5793
  %5808 = fmul fast float %5795, %5630
  %5809 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5796, float %5808)  ; FMad(a,b,c)
  %5810 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5797, float %5809)  ; FMad(a,b,c)
  %5811 = fadd fast float %5810, %5798
  %5812 = fmul fast float %5800, %5630
  %5813 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5801, float %5812)  ; FMad(a,b,c)
  %5814 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5802, float %5813)  ; FMad(a,b,c)
  %5815 = fadd fast float %5814, %5803
  %5816 = fcmp fast oge float %5807, 1.000000e+00
  %5817 = fcmp fast oge float %5811, 1.000000e+00
  %5818 = or i1 %5816, %5817
  %5819 = fcmp fast olt float %5807, 0.000000e+00
  %5820 = fcmp fast olt float %5811, 0.000000e+00
  %5821 = or i1 %5819, %5820
  %5822 = or i1 %5818, %5821
  br i1 %5822, label %6182, label %5823, !dx.controlflow.hints !97

; <label>:5823                                    ; preds = %5788
  %5824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.CBufRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.CBufRet.f32 %5824, 2
  %5828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.i32 %5828, 2
  %5830 = uitofp i32 %5829 to float
  %5831 = extractvalue %dx.types.CBufRet.i32 %5828, 3
  %5832 = uitofp i32 %5831 to float
  %5833 = extractvalue %dx.types.CBufRet.f32 %5824, 3
  %5834 = fmul fast float %5833, 2.000000e+00
  %5835 = fsub fast float %5807, %5825
  %5836 = fsub fast float %5811, %5826
  %5837 = fmul fast float %5834, %5835
  %5838 = fmul fast float %5834, %5836
  %5839 = fdiv fast float 1.000000e+00, %5613
  %5840 = fmul fast float %5838, %5839
  %5841 = call float @dx.op.unary.f32(i32 6, float %5840)  ; FAbs(value)
  %5842 = fmul fast float %5827, %5632
  %5843 = fmul fast float %5842, %5834
  %5844 = call float @dx.op.unary.f32(i32 6, float %5843)  ; FAbs(value)
  %5845 = call float @dx.op.unary.f32(i32 6, float %5837)  ; FAbs(value)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5844, float %5841)  ; FMax(a,b)
  %5847 = call float @dx.op.binary.f32(i32 35, float %5845, float %5846)  ; FMax(a,b)
  %5848 = fmul fast float %5847, 2.000000e+00
  %5849 = call float @dx.op.unary.f32(i32 23, float %5848)  ; Log(value)
  %5850 = call float @dx.op.binary.f32(i32 35, float %5849, float %5830)  ; FMax(a,b)
  %5851 = call float @dx.op.unary.f32(i32 22, float %5850)  ; Frc(value)
  %5852 = fadd fast float %5851, 0xBFEA666660000000
  %5853 = fmul fast float %5852, 8.000000e+00
  %5854 = call float @dx.op.unary.f32(i32 7, float %5853)  ; Saturate(value)
  %5855 = call float @dx.op.unary.f32(i32 27, float %5850)  ; Round_ni(value)
  %5856 = fadd fast float %5855, %5854
  %5857 = call float @dx.op.binary.f32(i32 36, float %5856, float %5832)  ; FMin(a,b)
  %5858 = call float @dx.op.unary.f32(i32 27, float %5857)  ; Round_ni(value)
  %5859 = fsub fast float -0.000000e+00, %5858
  %5860 = call float @dx.op.unary.f32(i32 21, float %5859)  ; Exp(value)
  %5861 = fmul fast float %5860, %5834
  %5862 = fmul fast float %5861, %5807
  %5863 = fmul fast float %5861, %5811
  %5864 = fmul fast float %5862, 2.500000e-01
  %5865 = fmul fast float %5863, 2.500000e-01
  %5866 = fadd fast float %5864, 5.000000e-01
  %5867 = fadd fast float %5865, 5.000000e-01
  %5868 = fsub fast float %5832, %5830
  %5869 = fptoui float %5868 to i32
  %5870 = add i32 %5869, 320
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %5870)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = fcmp fast une float %5857, %5832
  %5875 = fsub fast float %5807, %5872
  %5876 = fsub fast float %5811, %5873
  %5877 = call float @dx.op.unary.f32(i32 6, float %5875)  ; FAbs(value)
  %5878 = call float @dx.op.unary.f32(i32 6, float %5876)  ; FAbs(value)
  %5879 = fmul fast float %5877, %5861
  %5880 = fmul fast float %5878, %5861
  %5881 = fcmp fast olt float %5879, 1.000000e+00
  %5882 = fcmp fast olt float %5880, 1.000000e+00
  %5883 = and i1 %5881, %5882
  %5884 = or i1 %5874, %5883
  br i1 %5884, label %5885, label %6182, !dx.controlflow.hints !98

; <label>:5885                                    ; preds = %5823
  %5886 = fmul fast float %5863, 5.000000e-01
  %5887 = fmul fast float %5862, 5.000000e-01
  %5888 = fadd fast float %5886, 5.000000e-01
  %5889 = fadd fast float %5887, 5.000000e-01
  %5890 = sitofp i32 %5829 to float
  %5891 = fsub fast float %5857, %5890
  %5892 = call float @dx.op.unary.f32(i32 27, float %5891)  ; Round_ni(value)
  %5893 = call float @dx.op.unary.f32(i32 22, float %5857)  ; Frc(value)
  %5894 = call float @dx.op.unary.f32(i32 22, float %5889)  ; Frc(value)
  %5895 = call float @dx.op.unary.f32(i32 22, float %5888)  ; Frc(value)
  %5896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %45, float %5894, float %5895, float %5892, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.ResRet.f32 %5896, 2
  %5900 = extractvalue %dx.types.ResRet.f32 %5896, 3
  %5901 = fcmp fast ogt float %5893, 0.000000e+00
  br i1 %5901, label %5902, label %5923, !dx.controlflow.hints !99

; <label>:5902                                    ; preds = %5885
  %5903 = fadd fast float %5892, 1.000000e+00
  %5904 = call float @dx.op.unary.f32(i32 22, float %5866)  ; Frc(value)
  %5905 = call float @dx.op.unary.f32(i32 22, float %5867)  ; Frc(value)
  %5906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %45, float %5904, float %5905, float %5903, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5907 = extractvalue %dx.types.ResRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.ResRet.f32 %5906, 1
  %5909 = extractvalue %dx.types.ResRet.f32 %5906, 2
  %5910 = extractvalue %dx.types.ResRet.f32 %5906, 3
  %5911 = fsub fast float %5907, %5897
  %5912 = fsub fast float %5908, %5898
  %5913 = fsub fast float %5909, %5899
  %5914 = fsub fast float %5910, %5900
  %5915 = fmul fast float %5911, %5893
  %5916 = fmul fast float %5912, %5893
  %5917 = fmul fast float %5913, %5893
  %5918 = fmul fast float %5914, %5893
  %5919 = fadd fast float %5915, %5897
  %5920 = fadd fast float %5916, %5898
  %5921 = fadd fast float %5917, %5899
  %5922 = fadd fast float %5918, %5900
  br label %5923

; <label>:5923                                    ; preds = %5902, %5885
  %5924 = phi float [ %5919, %5902 ], [ %5897, %5885 ]
  %5925 = phi float [ %5920, %5902 ], [ %5898, %5885 ]
  %5926 = phi float [ %5921, %5902 ], [ %5899, %5885 ]
  %5927 = phi float [ %5922, %5902 ], [ %5900, %5885 ]
  %5928 = fadd fast float %5924, -5.000000e-01
  %5929 = fadd fast float %5926, -5.000000e-01
  %5930 = fmul fast float %5928, 0xBFD5555560000000
  %5931 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5929, float %5930)  ; FMad(a,b,c)
  %5932 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5925, float 0.000000e+00)  ; FMad(a,b,c)
  %5933 = fadd fast float %5932, %5927
  %5934 = fmul fast float %5928, -7.500000e-01
  %5935 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5929, float %5934)  ; FMad(a,b,c)
  %5936 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5925, float 0.000000e+00)  ; FMad(a,b,c)
  %5937 = fadd fast float %5936, %5927
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5944 = extractvalue %dx.types.CBufRet.f32 %5940, 3
  %5945 = fsub fast float %5941, %5931
  %5946 = fsub fast float %5942, %5933
  %5947 = fsub fast float %5943, %5935
  %5948 = fsub fast float %5944, %5937
  %5949 = fmul fast float %5945, %5939
  %5950 = fmul fast float %5946, %5939
  %5951 = fmul fast float %5947, %5939
  %5952 = fmul fast float %5948, %5939
  %5953 = fadd fast float %5949, %5931
  %5954 = fadd fast float %5950, %5933
  %5955 = fadd fast float %5951, %5935
  %5956 = fadd fast float %5952, %5937
  %5957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5958 = extractvalue %dx.types.ResRet.i32 %5957, 0
  %5959 = and i32 %5958, 536870911
  %5960 = uitofp i32 %5959 to float
  %5961 = fmul fast float %5960, %5807
  %5962 = fmul fast float %5960, %5811
  %5963 = fptoui float %5961 to i32
  %5964 = fptoui float %5962 to i32
  %5965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5966 = extractvalue %dx.types.ResRet.i32 %5965, 0
  %5967 = and i32 %5966, 31
  %5968 = lshr i32 %5963, %5967
  %5969 = lshr i32 %5964, %5967
  %5970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5971 = extractvalue %dx.types.ResRet.i32 %5970, 0
  %5972 = and i32 %5971, 31
  %5973 = shl i32 1, %5972
  %5974 = call i32 @dx.op.binary.i32(i32 40, i32 %5973, i32 4)  ; UMin(a,b)
  %5975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5976 = extractvalue %dx.types.ResRet.i32 %5975, 0
  %5977 = extractvalue %dx.types.ResRet.i32 %5975, 1
  %5978 = icmp eq i32 %5974, 0
  br i1 %5978, label %6020, label %5979

; <label>:5979                                    ; preds = %5923
  br label %5980

; <label>:5980                                    ; preds = %6008, %5979
  %5981 = phi i32 [ %6011, %6008 ], [ 0, %5979 ]
  %5982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5983 = extractvalue %dx.types.ResRet.i32 %5982, 0
  %5984 = lshr i32 %5983, 16
  %5985 = and i32 %5984, 31
  %5986 = shl i32 %5969, %5985
  %5987 = add i32 %5986, %5968
  %5988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5989 = extractvalue %dx.types.ResRet.i32 %5988, 0
  %5990 = and i32 %5989, 31
  %5991 = shl i32 %5987, %5990
  %5992 = add i32 %5991, %5981
  %5993 = shl i32 %5992, 2
  %5994 = add i32 %5993, 32
  %5995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5994, i32 undef)  ; BufferLoad(srv,index,wot)
  %5996 = extractvalue %dx.types.ResRet.i32 %5995, 0
  %5997 = icmp slt i32 %5996, 0
  %5998 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5981
  %5999 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5981
  %6000 = bitcast float* %5998 to i32*
  %6001 = bitcast float* %5999 to i32*
  br i1 %5997, label %6002, label %6008

; <label>:6002                                    ; preds = %5980
  %6003 = and i32 %5996, 1073741823
  %6004 = add nuw nsw i32 %6003, 20
  %6005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6004, i32 undef)  ; BufferLoad(srv,index,wot)
  %6006 = extractvalue %dx.types.ResRet.i32 %6005, 0
  %6007 = extractvalue %dx.types.ResRet.i32 %6005, 1
  br label %6008

; <label>:6008                                    ; preds = %6002, %5980
  %6009 = phi i32 [ %6006, %6002 ], [ %5976, %5980 ]
  %6010 = phi i32 [ %6007, %6002 ], [ %5977, %5980 ]
  store i32 %6009, i32* %6000, align 4
  store i32 %6010, i32* %6001, align 4
  %6011 = add nuw i32 %5981, 1
  %6012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.i32 %6012, 2
  %6014 = icmp eq i32 %6013, 0
  %6015 = icmp ugt i32 %5996, -1073741825
  %6016 = and i1 %6015, %6014
  %6017 = icmp ult i32 %6011, %5974
  %6018 = and i1 %6016, %6017
  br i1 %6018, label %5980, label %6019

; <label>:6019                                    ; preds = %6008
  br label %6020

; <label>:6020                                    ; preds = %6019, %5923
  %6021 = phi i32 [ 0, %5923 ], [ %6011, %6019 ]
  %6022 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %6023 = fptoui float %6022 to i32
  %6024 = icmp eq i32 %6023, 0
  br i1 %6024, label %6076, label %6025

; <label>:6025                                    ; preds = %6020
  br label %6026

; <label>:6026                                    ; preds = %6071, %6025
  %6027 = phi i32 [ %6072, %6071 ], [ %6021, %6025 ]
  %6028 = phi i32 [ %6073, %6071 ], [ 0, %6025 ]
  %6029 = lshr i32 %6028, 2
  %6030 = and i32 %6028, 3
  %6031 = add nuw nsw i32 %6029, 83
  %6032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %6031)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.i32 %6032, 0
  %6034 = extractvalue %dx.types.CBufRet.i32 %6032, 1
  %6035 = extractvalue %dx.types.CBufRet.i32 %6032, 2
  %6036 = extractvalue %dx.types.CBufRet.i32 %6032, 3
  %6037 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 0
  store i32 %6033, i32* %6037, align 4
  %6038 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 1
  store i32 %6034, i32* %6038, align 4
  %6039 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 2
  store i32 %6035, i32* %6039, align 4
  %6040 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 3
  store i32 %6036, i32* %6040, align 4
  %6041 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 %6030
  %6042 = load i32, i32* %6041, align 4, !tbaa !100, !noalias !104
  %6043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6044 = extractvalue %dx.types.ResRet.i32 %6043, 0
  %6045 = lshr i32 %6044, 16
  %6046 = and i32 %6045, 31
  %6047 = shl i32 %5969, %6046
  %6048 = add i32 %6047, %5968
  %6049 = shl i32 %6048, 2
  %6050 = add i32 %6049, %6042
  %6051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6050, i32 undef)  ; BufferLoad(srv,index,wot)
  %6052 = extractvalue %dx.types.ResRet.i32 %6051, 0
  %6053 = icmp eq i32 %6052, 0
  br i1 %6053, label %6071, label %6054

; <label>:6054                                    ; preds = %6026
  %6055 = icmp slt i32 %6052, 0
  %6056 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6027
  %6057 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6027
  %6058 = bitcast float* %6056 to i32*
  %6059 = bitcast float* %6057 to i32*
  br i1 %6055, label %6060, label %6067

; <label>:6060                                    ; preds = %6054
  %6061 = and i32 %6052, 1073741823
  %6062 = add i32 %6042, 20
  %6063 = add i32 %6062, %6061
  %6064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6063, i32 undef)  ; BufferLoad(srv,index,wot)
  %6065 = extractvalue %dx.types.ResRet.i32 %6064, 0
  %6066 = extractvalue %dx.types.ResRet.i32 %6064, 1
  br label %6067

; <label>:6067                                    ; preds = %6060, %6054
  %6068 = phi i32 [ %6065, %6060 ], [ %5976, %6054 ]
  %6069 = phi i32 [ %6066, %6060 ], [ %5977, %6054 ]
  store i32 %6068, i32* %6058, align 4
  store i32 %6069, i32* %6059, align 4
  %6070 = add i32 %6027, 1
  br label %6071

; <label>:6071                                    ; preds = %6067, %6026
  %6072 = phi i32 [ %6027, %6026 ], [ %6070, %6067 ]
  %6073 = add nuw i32 %6028, 1
  %6074 = icmp eq i32 %6073, %6023
  br i1 %6074, label %6075, label %6026

; <label>:6075                                    ; preds = %6071
  br label %6076

; <label>:6076                                    ; preds = %6075, %6020
  %6077 = phi i32 [ %6021, %6020 ], [ %6072, %6075 ]
  %6078 = icmp eq i32 %6077, 1
  %6079 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %6080 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %6078, label %6081, label %6084

; <label>:6081                                    ; preds = %6076
  %6082 = load float, float* %6079, align 4
  %6083 = load float, float* %6080, align 4
  br label %6111

; <label>:6084                                    ; preds = %6076
  %6085 = load float, float* %6079, align 4
  %6086 = load float, float* %6080, align 4
  %6087 = fdiv fast float 1.000000e+00, %6086
  %6088 = fsub fast float %6085, %6087
  %6089 = icmp ugt i32 %6077, 1
  br i1 %6089, label %6090, label %6106

; <label>:6090                                    ; preds = %6084
  br label %6091

; <label>:6091                                    ; preds = %6091, %6090
  %6092 = phi float [ %6101, %6091 ], [ %6088, %6090 ]
  %6093 = phi float [ %6102, %6091 ], [ %6085, %6090 ]
  %6094 = phi i32 [ %6103, %6091 ], [ 1, %6090 ]
  %6095 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6094
  %6096 = load float, float* %6095, align 4
  %6097 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6094
  %6098 = load float, float* %6097, align 4
  %6099 = fdiv fast float 1.000000e+00, %6098
  %6100 = fsub fast float %6096, %6099
  %6101 = call float @dx.op.binary.f32(i32 36, float %6092, float %6100)  ; FMin(a,b)
  %6102 = call float @dx.op.binary.f32(i32 35, float %6093, float %6096)  ; FMax(a,b)
  %6103 = add nuw i32 %6094, 1
  %6104 = icmp eq i32 %6103, %6077
  br i1 %6104, label %6105, label %6091

; <label>:6105                                    ; preds = %6091
  br label %6106

; <label>:6106                                    ; preds = %6105, %6084
  %6107 = phi float [ %6088, %6084 ], [ %6101, %6105 ]
  %6108 = phi float [ %6085, %6084 ], [ %6102, %6105 ]
  %6109 = fsub fast float %6108, %6107
  %6110 = fdiv fast float 1.000000e+00, %6109
  br label %6111

; <label>:6111                                    ; preds = %6106, %6081
  %6112 = phi float [ %6082, %6081 ], [ %6108, %6106 ]
  %6113 = phi float [ %6083, %6081 ], [ %6110, %6106 ]
  %6114 = fadd fast float %5815, %6112
  %6115 = fmul fast float %6114, %6113
  %6116 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6117 = fmul fast float %6116, 2.000000e+00
  %6118 = fsub fast float 1.000000e+00, %6117
  %6119 = fmul fast float %5953, %5953
  %6120 = fsub fast float %5954, %6119
  %6121 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6120)  ; FMax(a,b)
  %6122 = fdiv fast float 1.000000e+00, %6121
  %6123 = fmul fast float %5954, %5953
  %6124 = fsub fast float %5955, %6123
  %6125 = fsub fast float %6118, %5953
  %6126 = fmul fast float %6118, %6118
  %6127 = fsub fast float %6126, %5954
  %6128 = fmul fast float %6122, %6124
  %6129 = fmul fast float %6128, %6125
  %6130 = fsub fast float %6127, %6129
  %6131 = fmul fast float %5954, %5954
  %6132 = fsub fast float %5956, %6131
  %6133 = fmul fast float %6124, %6124
  %6134 = fmul fast float %6133, %6122
  %6135 = fsub fast float %6132, %6134
  %6136 = fdiv fast float %6130, %6135
  %6137 = fmul fast float %6136, %6124
  %6138 = fsub fast float %6125, %6137
  %6139 = fmul fast float %6138, %6122
  %6140 = fmul fast float %6139, %5953
  %6141 = fsub fast float 1.000000e+00, %6140
  %6142 = fmul fast float %6136, %5954
  %6143 = fsub fast float %6141, %6142
  %6144 = fmul fast float %6139, %6139
  %6145 = fmul fast float %6136, 4.000000e+00
  %6146 = fmul fast float %6145, %6143
  %6147 = fsub fast float %6144, %6146
  %6148 = call float @dx.op.unary.f32(i32 24, float %6147)  ; Sqrt(value)
  %6149 = fcmp fast oge float %6139, 0.000000e+00
  %6150 = fsub fast float -0.000000e+00, %6148
  %6151 = select i1 %6149, float %6150, float %6148
  %6152 = fsub fast float %6151, %6139
  %6153 = fdiv fast float %6152, %6136
  %6154 = fdiv fast float %6143, %6152
  %6155 = fmul fast float %6153, 5.000000e-01
  %6156 = fmul fast float %6154, 2.000000e+00
  %6157 = select i1 %6149, float %6155, float %6156
  %6158 = select i1 %6149, float %6156, float %6155
  %6159 = call float @dx.op.binary.f32(i32 35, float %6157, float %6158)  ; FMax(a,b)
  %6160 = call float @dx.op.binary.f32(i32 36, float %6157, float %6158)  ; FMin(a,b)
  %6161 = fcmp fast ogt float %6118, %6159
  %6162 = fsub fast float %6118, %6160
  %6163 = fsub fast float %6118, %6159
  %6164 = fsub fast float %6159, %6160
  %6165 = select i1 %6161, float %6163, float %6164
  %6166 = fmul float %6162, %6165
  %6167 = select i1 %6161, float %6160, float %6118
  %6168 = fcmp fast ogt float %6118, %6160
  %6169 = fmul fast float %6167, %6159
  %6170 = fadd fast float %6167, %6159
  %6171 = fmul fast float %6170, %5953
  %6172 = fadd fast float %6169, %5954
  %6173 = fsub fast float %6172, %6171
  %6174 = fdiv fast float %6173, %6166
  %6175 = select i1 %6168, float %6174, float 0.000000e+00
  %6176 = fsub fast float 1.000000e+00, %6175
  %6177 = select i1 %6161, float %6176, float %6175
  %6178 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  %6179 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %6180 = fmul fast float %6179, %6178
  %6181 = fsub fast float 1.000000e+00, %6180
  br label %6182

; <label>:6182                                    ; preds = %6111, %5823, %5788, %5784, %5748
  %6183 = phi float [ 1.000000e+00, %5748 ], [ %6181, %6111 ], [ 1.000000e+00, %5788 ], [ 1.000000e+00, %5823 ], [ 1.000000e+00, %5784 ]
  %6184 = fcmp fast ogt float %5780, 0.000000e+00
  br i1 %6184, label %6185, label %6193, !dx.controlflow.hints !113

; <label>:6185                                    ; preds = %6182
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 2
  %6188 = fadd fast float %6187, %5661
  %6189 = call float @dx.op.binary.f32(i32 35, float %6188, float 0.000000e+00)  ; FMax(a,b)
  %6190 = fadd fast float %6189, 0x3F10000000000000
  %6191 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %5679, float %5680, float undef, float undef, i32 0, i32 0, i32 undef, float %6190)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6192 = extractvalue %dx.types.ResRet.f32 %6191, 0
  br label %6193

; <label>:6193                                    ; preds = %6185, %6182
  %6194 = phi float [ %6192, %6185 ], [ 1.000000e+00, %6182 ]
  %6195 = fcmp fast ogt float %5778, 0.000000e+00
  br i1 %6195, label %6196, label %6204, !dx.controlflow.hints !114

; <label>:6196                                    ; preds = %6193
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6199 = fadd fast float %6198, %5661
  %6200 = call float @dx.op.binary.f32(i32 35, float %6199, float 0.000000e+00)  ; FMax(a,b)
  %6201 = fadd fast float %6200, 0x3F10000000000000
  %6202 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %5671, float %5672, float undef, float undef, i32 0, i32 0, i32 undef, float %6201)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6203 = extractvalue %dx.types.ResRet.f32 %6202, 0
  br label %6204

; <label>:6204                                    ; preds = %6196, %6193
  %6205 = phi float [ %6203, %6196 ], [ 1.000000e+00, %6193 ]
  %6206 = fcmp fast ogt float %5777, 0.000000e+00
  br i1 %6206, label %6207, label %6219, !dx.controlflow.hints !115

; <label>:6207                                    ; preds = %6204
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6210 = fadd fast float %6209, %5661
  %6211 = call float @dx.op.binary.f32(i32 35, float %6210, float 0.000000e+00)  ; FMax(a,b)
  %6212 = fadd fast float %6211, 0x3F10000000000000
  br i1 %5664, label %6213, label %6216, !dx.controlflow.hints !116

; <label>:6213                                    ; preds = %6207
  %6214 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %48, float %5653, float %5657, float undef, float undef, i32 0, i32 0, i32 undef, float %6212)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6215 = extractvalue %dx.types.ResRet.f32 %6214, 0
  br label %6219

; <label>:6216                                    ; preds = %6207
  %6217 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %48, float %5653, float %5657, float undef, float undef, i32 0, i32 0, i32 undef, float %6212)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6218 = extractvalue %dx.types.ResRet.f32 %6217, 0
  br label %6219

; <label>:6219                                    ; preds = %6216, %6213, %6204
  %6220 = phi float [ %6215, %6213 ], [ %6218, %6216 ], [ 1.000000e+00, %6204 ]
  %6221 = fsub fast float %6194, %6183
  %6222 = fmul fast float %6221, %5750
  %6223 = fadd fast float %6222, %6183
  %6224 = fsub fast float %6205, %6223
  %6225 = fmul fast float %6224, %5749
  %6226 = fadd fast float %6225, %6223
  %6227 = fsub fast float %6220, %6226
  %6228 = fmul fast float %6227, %5777
  %6229 = fadd fast float %6228, %6226
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 2
  %6232 = fcmp fast ogt float %6231, 0.000000e+00
  br i1 %6232, label %6233, label %6273, !dx.controlflow.hints !117

; <label>:6233                                    ; preds = %6219
  %6234 = fcmp fast ugt float %6231, 0.000000e+00
  br i1 %6234, label %6235, label %6270

; <label>:6235                                    ; preds = %6233
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6240 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = extractvalue %dx.types.CBufRet.f32 %6230, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6230, 1
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.CBufRet.f32 %6248, 2
  %6252 = fadd fast float %6249, %5630
  %6253 = fadd fast float %6250, %5631
  %6254 = fadd fast float %6251, %5632
  %6255 = fmul fast float %6252, %6237
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6253, float %6255)  ; FMad(a,b,c)
  %6257 = call float @dx.op.tertiary.f32(i32 46, float %6239, float %6254, float %6256)  ; FMad(a,b,c)
  %6258 = fadd fast float %6257, %6240
  %6259 = fmul fast float %6252, %6242
  %6260 = call float @dx.op.tertiary.f32(i32 46, float %6243, float %6253, float %6259)  ; FMad(a,b,c)
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %6244, float %6254, float %6260)  ; FMad(a,b,c)
  %6262 = fadd fast float %6261, %6245
  %6263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %43, float %6258, float %6262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = fmul fast float %6264, %6247
  %6266 = fadd fast float %6265, %6246
  %6267 = call float @dx.op.unary.f32(i32 7, float %6266)  ; Saturate(value)
  %6268 = fmul fast float %6267, %6231
  %6269 = fsub fast float 1.000000e+00, %6268
  br label %6270

; <label>:6270                                    ; preds = %6235, %6233
  %6271 = phi float [ %6269, %6235 ], [ 1.000000e+00, %6233 ]
  %6272 = fmul fast float %6271, %6229
  br label %6273

; <label>:6273                                    ; preds = %6270, %6219, %5610
  %6274 = phi float [ 1.000000e+00, %5610 ], [ %6272, %6270 ], [ %6229, %6219 ]
  %6275 = call float @dx.op.binary.f32(i32 36, float %6274, float %6274)  ; FMin(a,b)
  %6276 = call float @dx.op.binary.f32(i32 36, float %6274, float %6275)  ; FMin(a,b)
  %6277 = fcmp fast ogt float %6276, 0.000000e+00
  br i1 %6277, label %6278, label %6438, !dx.controlflow.hints !118

; <label>:6278                                    ; preds = %6273
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.CBufRet.f32 %6279, 2
  %6283 = extractvalue %dx.types.CBufRet.f32 %6279, 3
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.CBufRet.f32 %6284, 2
  %6288 = extractvalue %dx.types.CBufRet.f32 %6284, 3
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6293 = extractvalue %dx.types.CBufRet.f32 %6289, 3
  %6294 = fmul fast float %6280, %5630
  %6295 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %6281, float %6294)  ; FMad(a,b,c)
  %6296 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %6282, float %6295)  ; FMad(a,b,c)
  %6297 = fadd fast float %6296, %6283
  %6298 = fmul fast float %6285, %5630
  %6299 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %6286, float %6298)  ; FMad(a,b,c)
  %6300 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %6287, float %6299)  ; FMad(a,b,c)
  %6301 = fadd fast float %6300, %6288
  %6302 = fmul fast float %6290, %5630
  %6303 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %6291, float %6302)  ; FMad(a,b,c)
  %6304 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %6292, float %6303)  ; FMad(a,b,c)
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6308 = extractvalue %dx.types.CBufRet.f32 %6305, 3
  %6309 = fmul fast float %6308, %6297
  %6310 = fmul fast float %6308, %6301
  %6311 = fadd fast float %6309, %6306
  %6312 = fadd fast float %6310, %6307
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6315 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6316 = fsub fast float %6311, %6314
  %6317 = fsub fast float %6312, %6315
  %6318 = fcmp fast olt float %6316, 0.000000e+00
  %6319 = fcmp fast olt float %6317, 0.000000e+00
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.CBufRet.f32 %6320, 1
  %6323 = extractvalue %dx.types.CBufRet.f32 %6320, 2
  %6324 = extractvalue %dx.types.CBufRet.f32 %6320, 3
  %6325 = select i1 %6318, float %6321, float %6323
  %6326 = select i1 %6319, float %6322, float %6324
  %6327 = fmul fast float %6325, %6316
  %6328 = fmul fast float %6326, %6317
  %6329 = call float @dx.op.unary.f32(i32 6, float %6327)  ; FAbs(value)
  %6330 = call float @dx.op.unary.f32(i32 6, float %6328)  ; FAbs(value)
  %6331 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %6332 = call float @dx.op.binary.f32(i32 35, float %6329, float %6330)  ; FMax(a,b)
  %6333 = fsub fast float %6331, %6332
  %6334 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6335 = fcmp fast ogt float %6334, 0.000000e+00
  br i1 %6335, label %6336, label %6377, !dx.controlflow.hints !119

; <label>:6336                                    ; preds = %6278
  %6337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %46, float %6311, float %6312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6338 = extractvalue %dx.types.ResRet.f32 %6337, 1
  %6339 = fcmp fast ogt float %6338, 0.000000e+00
  br i1 %6339, label %6340, label %6372

; <label>:6340                                    ; preds = %6336
  %6341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %6311, float %6312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6342 = extractvalue %dx.types.ResRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.ResRet.f32 %6341, 1
  %6344 = extractvalue %dx.types.ResRet.f32 %6341, 2
  %6345 = extractvalue %dx.types.ResRet.f32 %6341, 3
  %6346 = fsub fast float 1.000000e+00, %6293
  %6347 = fsub fast float %6346, %6304
  %6348 = fmul fast float %6347, 0x400921FB60000000
  %6349 = fadd fast float %6348, 0x3FF921FB60000000
  %6350 = call float @dx.op.unary.f32(i32 13, float %6349)  ; Sin(value)
  %6351 = fadd fast float %6350, -1.000000e+00
  %6352 = fmul fast float %6351, 0x3FD45F3060000000
  %6353 = fmul fast float %6347, 0x401921FB60000000
  %6354 = fadd fast float %6353, 0x400921FB60000000
  %6355 = call float @dx.op.unary.f32(i32 13, float %6354)  ; Sin(value)
  %6356 = fadd fast float %6355, 0x3E7777A5C0000000
  %6357 = fmul fast float %6356, 0x3FC45F3060000000
  %6358 = fmul fast float %6347, 0x4022D97C80000000
  %6359 = fadd fast float %6358, 0x4012D97C80000000
  %6360 = call float @dx.op.unary.f32(i32 13, float %6359)  ; Sin(value)
  %6361 = fadd fast float %6360, 1.000000e+00
  %6362 = fmul fast float %6361, 0x3FBB2995E0000000
  %6363 = fmul fast float %6347, 0x402921FB60000000
  %6364 = fadd fast float %6363, 0x401921FB60000000
  %6365 = call float @dx.op.unary.f32(i32 13, float %6364)  ; Sin(value)
  %6366 = fadd fast float %6365, 0xBE8777A5C0000000
  %6367 = fmul fast float %6366, 0x3FB45F3060000000
  %6368 = call float @dx.op.dot4.f32(i32 56, float %6342, float %6343, float %6344, float %6345, float %6352, float %6357, float %6362, float %6367)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6369 = fmul fast float %6368, 0xBFF7154760000000
  %6370 = call float @dx.op.unary.f32(i32 21, float %6369)  ; Exp(value)
  %6371 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  br label %6372

; <label>:6372                                    ; preds = %6340, %6336
  %6373 = phi float [ %6371, %6340 ], [ 1.000000e+00, %6336 ]
  %6374 = fadd fast float %6373, -1.000000e+00
  %6375 = fmul fast float %6374, %6334
  %6376 = fadd fast float %6375, 1.000000e+00
  br label %6377

; <label>:6377                                    ; preds = %6372, %6278
  %6378 = phi float [ %6376, %6372 ], [ 1.000000e+00, %6278 ]
  %6379 = fmul fast float %6378, %6274
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 0
  %6382 = extractvalue %dx.types.CBufRet.f32 %6380, 1
  %6383 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6384 = fadd fast float %6381, %192
  %6385 = fadd fast float %6382, %193
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6388 = fsub fast float -0.000000e+00, %6384
  %6389 = fsub fast float -0.000000e+00, %6385
  %6390 = fsub fast float %5316, %6383
  %6391 = fadd fast float %6390, %6387
  %6392 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6388, float %6389, float %6391)  ; Dot3(ax,ay,az,bx,by,bz)
  %6393 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %6394 = fdiv fast float 1.000000e+00, %6393
  %6395 = fmul fast float %6394, %6392
  %6396 = fmul fast float %5611, %6395
  %6397 = fmul fast float %5612, %6395
  %6398 = fadd fast float %6396, %6384
  %6399 = fadd fast float %6397, %6385
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6403 = fsub fast float %6398, %6401
  %6404 = fsub fast float %6399, %6402
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6405, 3
  %6408 = fmul fast float %6403, %6406
  %6409 = fmul fast float %6404, %6407
  %6410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.i32 %6410, 3
  %6412 = icmp eq i32 %6411, 0
  br i1 %6412, label %6418, label %6413

; <label>:6413                                    ; preds = %6377
  %6414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %6408, float %6409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6415 = extractvalue %dx.types.ResRet.f32 %6414, 0
  %6416 = extractvalue %dx.types.ResRet.f32 %6414, 1
  %6417 = extractvalue %dx.types.ResRet.f32 %6414, 2
  br label %6423

; <label>:6418                                    ; preds = %6377
  %6419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %6408, float %6409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.ResRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.ResRet.f32 %6419, 2
  br label %6423

; <label>:6423                                    ; preds = %6418, %6413
  %6424 = phi float [ %6415, %6413 ], [ %6420, %6418 ]
  %6425 = phi float [ %6416, %6413 ], [ %6421, %6418 ]
  %6426 = phi float [ %6417, %6413 ], [ %6422, %6418 ]
  %6427 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6428 = fmul fast float %6427, %6424
  %6429 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6430 = fsub fast float %6395, %6429
  %6431 = fsub fast float %6430, %6428
  %6432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6431)  ; FMax(a,b)
  %6433 = fmul fast float %6432, %6425
  %6434 = call float @dx.op.binary.f32(i32 36, float %6426, float %6433)  ; FMin(a,b)
  %6435 = fmul fast float %6434, 0xBFF7154760000000
  %6436 = call float @dx.op.unary.f32(i32 21, float %6435)  ; Exp(value)
  %6437 = fmul fast float %6379, %6436
  br label %6438

; <label>:6438                                    ; preds = %6423, %6273
  %6439 = phi float [ %6437, %6423 ], [ %6274, %6273 ]
  %6440 = call float @dx.op.binary.f32(i32 36, float %6439, float %6439)  ; FMin(a,b)
  %6441 = call float @dx.op.binary.f32(i32 36, float %6439, float %6440)  ; FMin(a,b)
  %6442 = fcmp fast ogt float %6441, 0.000000e+00
  br i1 %6442, label %6443, label %6637, !dx.controlflow.hints !120

; <label>:6443                                    ; preds = %6438
  %6444 = fmul fast float %6439, %5622
  %6445 = fmul fast float %6439, %5623
  %6446 = fmul fast float %6439, %5624
  %6447 = fsub fast float %194, %4493
  %6448 = fcmp fast ogt float %6447, 0.000000e+00
  %6449 = fmul fast float %5611, 5.120000e+02
  %6450 = fmul fast float %5612, 5.120000e+02
  %6451 = fmul fast float %5613, 5.120000e+02
  %6452 = fadd fast float %6451, %194
  %6453 = fsub fast float %4493, %6452
  %6454 = fmul fast float %6453, 2.000000e+00
  %6455 = fadd fast float %6454, %6452
  %6456 = select i1 %6448, float %6455, float %6452
  %6457 = fsub fast float %6456, %194
  %6458 = call float @dx.op.dot3.f32(i32 55, float %6449, float %6450, float %6457, float %6449, float %6450, float %6457)  ; Dot3(ax,ay,az,bx,by,bz)
  %6459 = call float @dx.op.unary.f32(i32 25, float %6458)  ; Rsqrt(value)
  %6460 = fmul fast float %6459, %6449
  %6461 = fmul fast float %6459, %6450
  %6462 = fmul fast float %6459, %6457
  %6463 = fsub fast float %4493, %194
  %6464 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6463)  ; Dot3(ax,ay,az,bx,by,bz)
  %6465 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6460, float %6461, float %6462)  ; Dot3(ax,ay,az,bx,by,bz)
  %6466 = fdiv fast float 1.000000e+00, %6465
  %6467 = fmul fast float %6466, %6464
  %6468 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6447, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = fcmp fast ogt float %6468, 0.000000e+00
  %6470 = fcmp fast olt float %6468, 0.000000e+00
  %6471 = zext i1 %6469 to i32
  %6472 = zext i1 %6470 to i32
  %6473 = sub nsw i32 %6471, %6472
  %6474 = sitofp i32 %6473 to float
  %6475 = fsub fast float %6456, %4493
  %6476 = call float @dx.op.dot3.f32(i32 55, float %6449, float %6450, float %6475, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6477 = fcmp fast ogt float %6476, 0.000000e+00
  %6478 = fcmp fast olt float %6476, 0.000000e+00
  %6479 = zext i1 %6477 to i32
  %6480 = zext i1 %6478 to i32
  %6481 = sub nsw i32 %6479, %6480
  %6482 = sitofp i32 %6481 to float
  %6483 = fcmp fast une float %6474, %6482
  br i1 %6483, label %6484, label %6494

; <label>:6484                                    ; preds = %6443
  %6485 = fmul fast float %6467, %6462
  %6486 = fmul fast float %6467, %6461
  %6487 = fmul fast float %6467, %6460
  %6488 = fmul fast float %6487, %6487
  %6489 = fmul fast float %6486, %6486
  %6490 = fadd fast float %6488, %6489
  %6491 = fmul fast float %6485, %6485
  %6492 = fadd fast float %6490, %6491
  %6493 = call float @dx.op.unary.f32(i32 24, float %6492)  ; Sqrt(value)
  br label %6504

; <label>:6494                                    ; preds = %6443
  %6495 = icmp slt i32 %6473, 0
  br i1 %6495, label %6496, label %6504

; <label>:6496                                    ; preds = %6494
  %6497 = fsub fast float %194, %6456
  %6498 = fmul fast float %6449, %6449
  %6499 = fmul fast float %6450, %6450
  %6500 = fadd fast float %6498, %6499
  %6501 = fmul fast float %6497, %6497
  %6502 = fadd fast float %6500, %6501
  %6503 = call float @dx.op.unary.f32(i32 24, float %6502)  ; Sqrt(value)
  br label %6504

; <label>:6504                                    ; preds = %6496, %6494, %6484
  %6505 = phi float [ %6493, %6484 ], [ %6503, %6496 ], [ 0.000000e+00, %6494 ]
  %6506 = fsub fast float -0.000000e+00, %6505
  %6507 = select i1 %6448, float -0.000000e+00, float %6506
  %6508 = fmul fast float %4494, 0x3FF7154760000000
  %6509 = fmul fast float %6508, %6507
  %6510 = fmul fast float %4495, 0x3FF7154760000000
  %6511 = fmul fast float %6510, %6507
  %6512 = fmul fast float %4496, 0x3FF7154760000000
  %6513 = fmul fast float %6512, %6507
  %6514 = call float @dx.op.unary.f32(i32 21, float %6509)  ; Exp(value)
  %6515 = call float @dx.op.unary.f32(i32 21, float %6511)  ; Exp(value)
  %6516 = call float @dx.op.unary.f32(i32 21, float %6513)  ; Exp(value)
  %6517 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6518 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6519 = call float @dx.op.unary.f32(i32 7, float %6516)  ; Saturate(value)
  %6520 = fmul fast float %6444, %6517
  %6521 = fmul fast float %6445, %6518
  %6522 = fmul fast float %6446, %6519
  %6523 = fsub fast float %5611, %5319
  %6524 = fsub fast float %5612, %5320
  %6525 = fsub fast float %5613, %5321
  %6526 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6523, float %6524, float %6525)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = call float @dx.op.unary.f32(i32 25, float %6526)  ; Rsqrt(value)
  %6528 = fmul fast float %6527, %6523
  %6529 = fmul fast float %6527, %6524
  %6530 = fmul fast float %6527, %6525
  %6531 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6532 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %6528, float %6529, float %6530)  ; Dot3(ax,ay,az,bx,by,bz)
  %6533 = call float @dx.op.unary.f32(i32 7, float %6531)  ; Saturate(value)
  %6534 = fmul fast float %6533, %6533
  %6535 = fmul fast float %6534, %5340
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = fmul fast float %6536, %6533
  %6538 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %6528, float %6529, float %6530)  ; Dot3(ax,ay,az,bx,by,bz)
  %6539 = fmul fast float %6538, %6538
  %6540 = call float @dx.op.unary.f32(i32 6, float %6531)  ; FAbs(value)
  %6541 = fsub fast float 1.000000e+00, %5282
  %6542 = call float @dx.op.binary.f32(i32 35, float %6541, float 0x3F847AE140000000)  ; FMax(a,b)
  %6543 = fmul fast float %6542, %6542
  %6544 = fmul fast float %6543, %6543
  %6545 = fsub fast float 1.000000e+00, %6544
  %6546 = fmul fast float %5327, %5327
  %6547 = fmul fast float %6546, %6545
  %6548 = fadd fast float %6547, %6544
  %6549 = bitcast float %6548 to i32
  %6550 = ashr i32 %6549, 1
  %6551 = add nsw i32 %6550, 532487669
  %6552 = bitcast i32 %6551 to float
  %6553 = fadd fast float %6552, %5327
  %6554 = fmul fast float %6544, %6539
  %6555 = fsub fast float 1.000000e+00, %6539
  %6556 = fadd fast float %6555, %6554
  %6557 = fmul fast float %6540, %6540
  %6558 = fmul fast float %6557, %6545
  %6559 = fadd fast float %6558, %6544
  %6560 = bitcast float %6559 to i32
  %6561 = ashr i32 %6560, 1
  %6562 = add nsw i32 %6561, 532487669
  %6563 = bitcast i32 %6562 to float
  %6564 = fadd fast float %6563, %6540
  %6565 = fmul fast float %6556, %6556
  %6566 = fmul fast float %6565, %6553
  %6567 = fmul fast float %6566, %6564
  %6568 = fdiv fast float 0x3FF0A00000000000, %6567
  %6569 = fmul fast float %6568, %6544
  %6570 = fmul fast float %5444, 0x3FF9999980000000
  %6571 = fsub fast float 5.000000e+00, %6570
  %6572 = call float @dx.op.unary.f32(i32 6, float %6532)  ; FAbs(value)
  %6573 = fsub fast float 1.000000e+00, %6572
  %6574 = fmul fast float %5444, 0x41D9660740000000
  %6575 = fadd fast float %6574, 0xC1EFBF8940000000
  %6576 = bitcast float %6573 to i32
  %6577 = sitofp i32 %6576 to float
  %6578 = fmul fast float %6577, %6571
  %6579 = fadd fast float %6575, %6578
  %6580 = fptosi float %6579 to i32
  %6581 = bitcast i32 %6580 to float
  %6582 = fsub fast float 1.000000e+00, %5273
  %6583 = fsub fast float 1.000000e+00, %5274
  %6584 = fsub fast float 1.000000e+00, %5325
  %6585 = fmul fast float %6581, %6582
  %6586 = fmul fast float %6581, %6583
  %6587 = fmul fast float %6581, %6584
  %6588 = fadd fast float %6585, %5273
  %6589 = fadd fast float %6586, %5274
  %6590 = fadd fast float %6587, %5325
  %6591 = fmul fast float %6531, 9.843750e-01
  %6592 = fadd fast float %6591, 7.812500e-03
  %6593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %6592, float %5448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6594 = extractvalue %dx.types.ResRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.ResRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.ResRet.f32 %6593, 2
  %6597 = extractvalue %dx.types.ResRet.f32 %6593, 3
  %6598 = fsub fast float %6596, %6594
  %6599 = fsub fast float %6597, %6595
  %6600 = fmul fast float %6598, %5454
  %6601 = fmul fast float %6599, %5454
  %6602 = fadd fast float %6600, %6594
  %6603 = fadd fast float %6601, %6595
  %6604 = fmul fast float %6602, %5273
  %6605 = fmul fast float %6602, %5274
  %6606 = fmul fast float %6602, %5325
  %6607 = fadd fast float %6604, %6603
  %6608 = fadd fast float %6605, %6603
  %6609 = fadd fast float %6606, %6603
  %6610 = call float @dx.op.binary.f32(i32 35, float %6608, float %6609)  ; FMax(a,b)
  %6611 = call float @dx.op.binary.f32(i32 35, float %6607, float %6610)  ; FMax(a,b)
  %6612 = fsub fast float 1.000000e+00, %6611
  %6613 = fmul fast float %6537, %6520
  %6614 = fmul fast float %6613, %6612
  %6615 = fmul fast float %6537, %6521
  %6616 = fmul fast float %6615, %6612
  %6617 = fmul fast float %6537, %6522
  %6618 = fmul fast float %6617, %6612
  %6619 = fmul fast float %6613, %6569
  %6620 = fmul fast float %6619, %6588
  %6621 = fmul fast float %6615, %6569
  %6622 = fmul fast float %6621, %6589
  %6623 = fmul fast float %6617, %6569
  %6624 = fmul fast float %6623, %6590
  %6625 = fadd fast float %6614, %5519
  %6626 = fmul fast float %6625, %1365
  %6627 = fadd fast float %6616, %5521
  %6628 = fmul fast float %6627, %1365
  %6629 = fadd fast float %6618, %5523
  %6630 = fmul fast float %6629, %1365
  %6631 = fadd fast float %6620, %5599
  %6632 = fmul fast float %6631, %1365
  %6633 = fadd fast float %6622, %5602
  %6634 = fmul fast float %6633, %1365
  %6635 = fadd fast float %6624, %5605
  %6636 = fmul fast float %6635, %1365
  br label %6637

; <label>:6637                                    ; preds = %6504, %6438, %5315
  %6638 = phi float [ %5600, %5315 ], [ %5600, %6438 ], [ %6632, %6504 ]
  %6639 = phi float [ %5603, %5315 ], [ %5603, %6438 ], [ %6634, %6504 ]
  %6640 = phi float [ %5606, %5315 ], [ %5606, %6438 ], [ %6636, %6504 ]
  %6641 = phi float [ %5595, %5315 ], [ %5595, %6438 ], [ %6626, %6504 ]
  %6642 = phi float [ %5596, %5315 ], [ %5596, %6438 ], [ %6628, %6504 ]
  %6643 = phi float [ %5597, %5315 ], [ %5597, %6438 ], [ %6630, %6504 ]
  %6644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.i32 %6644, 0
  %6646 = icmp eq i32 %6645, 0
  br i1 %6646, label %7210, label %6647

; <label>:6647                                    ; preds = %6637
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 3
  %6651 = fmul fast float %6649, %105
  %6652 = fmul fast float %6650, %106
  %6653 = fptoui float %6651 to i32
  %6654 = fptoui float %6652 to i32
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 0
  %6657 = extractvalue %dx.types.CBufRet.f32 %6655, 2
  %6658 = extractvalue %dx.types.CBufRet.f32 %6655, 3
  %6659 = fadd fast float %96, -4.000000e+00
  %6660 = call float @dx.op.binary.f32(i32 35, float %6659, float 0.000000e+00)  ; FMax(a,b)
  %6661 = fadd fast float %6660, %6656
  %6662 = fmul fast float %6661, %6657
  %6663 = call float @dx.op.unary.f32(i32 23, float %6662)  ; Log(value)
  %6664 = fmul fast float %6663, %6658
  %6665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6666 = extractvalue %dx.types.CBufRet.f32 %6665, 2
  %6667 = fmul fast float %6664, %6666
  %6668 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6670 = extractvalue %dx.types.CBufRet.i32 %6669, 1
  %6671 = add i32 %6670, -1
  %6672 = uitofp i32 %6670 to float
  %6673 = fmul fast float %6672, %6668
  %6674 = fptoui float %6673 to i32
  %6675 = call i32 @dx.op.binary.i32(i32 40, i32 %6674, i32 %6671)  ; UMin(a,b)
  %6676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6677 = extractvalue %dx.types.CBufRet.i32 %6676, 2
  %6678 = extractvalue %dx.types.CBufRet.i32 %6676, 3
  %6679 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6654, i32 %6677, i32 %6653)  ; UMad(a,b,c)
  %6680 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6675, i32 %6678, i32 %6679)  ; UMad(a,b,c)
  %6681 = add nsw i32 %6645, -1
  %6682 = call i32 @dx.op.binary.i32(i32 37, i32 %6681, i32 0)  ; IMax(a,b)
  %6683 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6684 = fptoui float %6683 to i32
  %6685 = lshr i32 %6684, 5
  %6686 = call i32 @dx.op.binary.i32(i32 40, i32 %6685, i32 8191)  ; UMin(a,b)
  %6687 = shl i32 %6686, 2
  %6688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6687, i32 undef)  ; BufferLoad(srv,index,wot)
  %6689 = extractvalue %dx.types.ResRet.i32 %6688, 0
  %6690 = lshr i32 %6689, 16
  %6691 = and i32 %6689, 65535
  %6692 = lshr i32 %6689, 21
  %6693 = lshr i32 %6691, 5
  %6694 = call i32 @dx.op.binary.i32(i32 40, i32 %6693, i32 %6682)  ; UMin(a,b)
  %6695 = icmp ugt i32 %6692, %6694
  br i1 %6695, label %7210, label %6696

; <label>:6696                                    ; preds = %6647
  br label %6697

; <label>:6697                                    ; preds = %7200, %6696
  %6698 = phi i32 [ %7207, %7200 ], [ %6692, %6696 ]
  %6699 = phi float [ %7201, %7200 ], [ %6638, %6696 ]
  %6700 = phi float [ %7202, %7200 ], [ %6639, %6696 ]
  %6701 = phi float [ %7203, %7200 ], [ %6640, %6696 ]
  %6702 = phi float [ %7204, %7200 ], [ %6641, %6696 ]
  %6703 = phi float [ %7205, %7200 ], [ %6642, %6696 ]
  %6704 = phi float [ %7206, %7200 ], [ %6643, %6696 ]
  %6705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.i32 %6705, 0
  %6707 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6680, i32 %6706, i32 %6698)  ; UMad(a,b,c)
  %6708 = shl i32 %6707, 2
  %6709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %6708, i32 undef)  ; BufferLoad(srv,index,wot)
  %6710 = extractvalue %dx.types.ResRet.i32 %6709, 0
  %6711 = shl i32 %6698, 5
  %6712 = sub nsw i32 %6690, %6711
  %6713 = call i32 @dx.op.binary.i32(i32 37, i32 %6712, i32 0)  ; IMax(a,b)
  %6714 = call i32 @dx.op.binary.i32(i32 38, i32 %6713, i32 31)  ; IMin(a,b)
  %6715 = sub nsw i32 1, %6690
  %6716 = add nsw i32 %6715, %6691
  %6717 = call i32 @dx.op.binary.i32(i32 37, i32 %6716, i32 0)  ; IMax(a,b)
  %6718 = call i32 @dx.op.binary.i32(i32 38, i32 %6717, i32 32)  ; IMin(a,b)
  %6719 = and i32 %6718, 31
  %6720 = shl i32 -1, %6719
  %6721 = xor i32 %6720, -1
  %6722 = and i32 %6714, 31
  %6723 = shl i32 %6721, %6722
  %6724 = icmp eq i32 %6718, 32
  %6725 = select i1 %6724, i32 -1, i32 %6723
  %6726 = and i32 %6725, %6710
  %6727 = icmp eq i32 %6726, 0
  br i1 %6727, label %7200, label %6728

; <label>:6728                                    ; preds = %6697
  br label %6729

; <label>:6729                                    ; preds = %6863, %6728
  %6730 = phi i32 [ %6741, %6863 ], [ %6726, %6728 ]
  %6731 = phi float [ %6864, %6863 ], [ %6699, %6728 ]
  %6732 = phi float [ %6865, %6863 ], [ %6700, %6728 ]
  %6733 = phi float [ %6866, %6863 ], [ %6701, %6728 ]
  %6734 = phi float [ %6867, %6863 ], [ %6702, %6728 ]
  %6735 = phi float [ %6868, %6863 ], [ %6703, %6728 ]
  %6736 = phi float [ %6869, %6863 ], [ %6704, %6728 ]
  %6737 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6730)  ; FirstbitLo(value)
  %6738 = add i32 %6737, %6711
  %6739 = and i32 %6737, 31
  %6740 = shl i32 1, %6739
  %6741 = xor i32 %6740, %6730
  %6742 = mul i32 %6738, 112
  %6743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6742, i32 undef)  ; BufferLoad(srv,index,wot)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6747 = or i32 %6742, 12
  %6748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6747, i32 undef)  ; BufferLoad(srv,index,wot)
  %6749 = extractvalue %dx.types.ResRet.f32 %6748, 0
  %6750 = add i32 %6742, 16
  %6751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6750, i32 undef)  ; BufferLoad(srv,index,wot)
  %6752 = extractvalue %dx.types.ResRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.ResRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.ResRet.f32 %6751, 2
  %6755 = add i32 %6742, 28
  %6756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %6755, i32 undef)  ; BufferLoad(srv,index,wot)
  %6757 = extractvalue %dx.types.ResRet.i32 %6756, 0
  %6758 = add i32 %6742, 44
  %6759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6758, i32 undef)  ; BufferLoad(srv,index,wot)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 0
  %6761 = add i32 %6742, 48
  %6762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6761, i32 undef)  ; BufferLoad(srv,index,wot)
  %6763 = extractvalue %dx.types.ResRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.ResRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.ResRet.f32 %6762, 2
  %6766 = extractvalue %dx.types.ResRet.f32 %6762, 3
  %6767 = add i32 %6742, 64
  %6768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6767, i32 undef)  ; BufferLoad(srv,index,wot)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.ResRet.f32 %6768, 2
  %6772 = extractvalue %dx.types.ResRet.f32 %6768, 3
  %6773 = add i32 %6742, 80
  %6774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6773, i32 undef)  ; BufferLoad(srv,index,wot)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 1
  %6776 = extractvalue %dx.types.ResRet.f32 %6774, 2
  %6777 = add i32 %6742, 92
  %6778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %6777, i32 undef)  ; BufferLoad(srv,index,wot)
  %6779 = extractvalue %dx.types.ResRet.i32 %6778, 0
  %6780 = call float @dx.op.dot3.f32(i32 55, float %6744, float %6745, float %6746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6781 = select i1 %292, float %6775, float %6744
  %6782 = select i1 %292, float %6780, float %6745
  %6783 = select i1 %292, float %6776, float %6746
  %6784 = and i32 %6779, 65535
  %6785 = uitofp i32 %6784 to float
  %6786 = lshr i32 %6779, 16
  %6787 = uitofp i32 %6786 to float
  %6788 = and i32 %6757, 65535
  %6789 = and i32 %6757, 50331648
  %6790 = icmp eq i32 %6789, 33554432
  %6791 = fsub fast float %6763, %192
  %6792 = fsub fast float %6764, %193
  %6793 = fsub fast float %6765, %194
  %6794 = call float @dx.op.dot3.f32(i32 55, float %6791, float %6792, float %6793, float %6791, float %6792, float %6793)  ; Dot3(ax,ay,az,bx,by,bz)
  %6795 = call float @dx.op.unary.f32(i32 24, float %6794)  ; Sqrt(value)
  %6796 = fdiv fast float 1.000000e+00, %6795
  %6797 = fmul fast float %6796, %6791
  %6798 = fmul fast float %6796, %6792
  %6799 = fmul fast float %6796, %6793
  %6800 = fadd fast float %6795, %6749
  %6801 = fdiv fast float 1.000000e+00, %6800
  %6802 = fmul float %6760, %6801
  %6803 = fmul float %6802, %6802
  %6804 = call float @dx.op.unary.f32(i32 7, float %6803)  ; Saturate(value)
  br i1 %6790, label %6805, label %6826

; <label>:6805                                    ; preds = %6729
  %6806 = fmul fast float %6771, %6752
  %6807 = fmul fast float %6771, %6753
  %6808 = fmul fast float %6771, %6754
  %6809 = fadd fast float %6791, %6806
  %6810 = fadd fast float %6792, %6807
  %6811 = fadd fast float %6793, %6808
  %6812 = call float @dx.op.dot3.f32(i32 55, float %6809, float %6810, float %6811, float %6809, float %6810, float %6811)  ; Dot3(ax,ay,az,bx,by,bz)
  %6813 = call float @dx.op.unary.f32(i32 25, float %6812)  ; Rsqrt(value)
  %6814 = fmul fast float %6813, %6809
  %6815 = fmul fast float %6813, %6810
  %6816 = fmul fast float %6813, %6811
  %6817 = fsub fast float %192, %6763
  %6818 = fsub fast float %193, %6764
  %6819 = fsub fast float %194, %6765
  %6820 = fsub fast float -0.000000e+00, %6817
  %6821 = fsub fast float -0.000000e+00, %6818
  %6822 = fsub fast float -0.000000e+00, %6819
  %6823 = call float @dx.op.dot3.f32(i32 55, float %6820, float %6821, float %6822, float %6752, float %6753, float %6754)  ; Dot3(ax,ay,az,bx,by,bz)
  %6824 = fcmp fast ogt float %6823, 0.000000e+00
  %6825 = uitofp i1 %6824 to float
  br label %6826

; <label>:6826                                    ; preds = %6805, %6729
  %6827 = phi float [ %6825, %6805 ], [ 1.000000e+00, %6729 ]
  %6828 = phi float [ %6814, %6805 ], [ %6797, %6729 ]
  %6829 = phi float [ %6815, %6805 ], [ %6798, %6729 ]
  %6830 = phi float [ %6816, %6805 ], [ %6799, %6729 ]
  %6831 = call float @dx.op.dot3.f32(i32 55, float %6752, float %6753, float %6754, float %6828, float %6829, float %6830)  ; Dot3(ax,ay,az,bx,by,bz)
  %6832 = fmul fast float %6831, %6831
  %6833 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  %6834 = fsub fast float 1.000000e+00, %6833
  %6835 = fmul fast float %6834, 5.000000e-01
  %6836 = fcmp fast ogt float %6831, 0.000000e+00
  %6837 = fsub fast float 1.000000e+00, %6835
  %6838 = select i1 %6836, float %6835, float %6837
  %6839 = fmul fast float %6838, %6787
  %6840 = fadd fast float %6839, %6785
  %6841 = fmul fast float %6840, 0x3EF0001000000000
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %46, float %6841, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = fmul fast float %6831, %6769
  %6845 = fadd fast float %6844, %6770
  %6846 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6847 = select i1 %6790, float 1.000000e+00, float %6846
  %6848 = select i1 %6790, float %6846, float 1.000000e+00
  %6849 = fmul fast float %6795, %6766
  %6850 = fsub fast float 1.000000e+00, %6849
  %6851 = fmul fast float %6850, %6772
  %6852 = call float @dx.op.unary.f32(i32 7, float %6851)  ; Saturate(value)
  %6853 = fmul fast float %6852, %6848
  %6854 = fmul fast float %6853, 2.000000e+00
  %6855 = fsub fast float 3.000000e+00, %6854
  %6856 = fmul fast float %6843, %6827
  %6857 = fmul fast float %6853, %6853
  %6858 = fmul fast float %6857, %6856
  %6859 = fmul fast float %6858, %6855
  %6860 = call float @dx.op.binary.f32(i32 36, float %6859, float %6859)  ; FMin(a,b)
  %6861 = call float @dx.op.binary.f32(i32 36, float %6859, float %6860)  ; FMin(a,b)
  %6862 = fcmp fast ogt float %6861, 0.000000e+00
  br i1 %6862, label %6871, label %6863, !dx.controlflow.hints !121

; <label>:6863                                    ; preds = %7038, %6971, %6826
  %6864 = phi float [ %6731, %6971 ], [ %6731, %6826 ], [ %7196, %7038 ]
  %6865 = phi float [ %6732, %6971 ], [ %6732, %6826 ], [ %7197, %7038 ]
  %6866 = phi float [ %6733, %6971 ], [ %6733, %6826 ], [ %7198, %7038 ]
  %6867 = phi float [ %6734, %6971 ], [ %6734, %6826 ], [ %7187, %7038 ]
  %6868 = phi float [ %6735, %6971 ], [ %6735, %6826 ], [ %7188, %7038 ]
  %6869 = phi float [ %6736, %6971 ], [ %6736, %6826 ], [ %7189, %7038 ]
  %6870 = icmp eq i32 %6730, %6740
  br i1 %6870, label %7199, label %6729

; <label>:6871                                    ; preds = %6826
  %6872 = icmp eq i32 %6788, 255
  br i1 %6872, label %6971, label %6873, !dx.controlflow.hints !122

; <label>:6873                                    ; preds = %6871
  %6874 = mul nuw nsw i32 %6788, 176
  %6875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6874, i32 undef)  ; BufferLoad(srv,index,wot)
  %6876 = extractvalue %dx.types.ResRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.ResRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.ResRet.f32 %6875, 2
  %6879 = extractvalue %dx.types.ResRet.f32 %6875, 3
  %6880 = add nuw nsw i32 %6874, 16
  %6881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6880, i32 undef)  ; BufferLoad(srv,index,wot)
  %6882 = extractvalue %dx.types.ResRet.f32 %6881, 0
  %6883 = extractvalue %dx.types.ResRet.f32 %6881, 1
  %6884 = add nuw nsw i32 %6874, 32
  %6885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6884, i32 undef)  ; BufferLoad(srv,index,wot)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.ResRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.ResRet.f32 %6885, 2
  %6889 = add nuw nsw i32 %6874, 48
  %6890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6889, i32 undef)  ; BufferLoad(srv,index,wot)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.ResRet.f32 %6890, 1
  %6893 = extractvalue %dx.types.ResRet.f32 %6890, 2
  %6894 = extractvalue %dx.types.ResRet.f32 %6890, 3
  %6895 = add nuw nsw i32 %6874, 64
  %6896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6895, i32 undef)  ; BufferLoad(srv,index,wot)
  %6897 = extractvalue %dx.types.ResRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.ResRet.f32 %6896, 1
  %6899 = extractvalue %dx.types.ResRet.f32 %6896, 2
  %6900 = extractvalue %dx.types.ResRet.f32 %6896, 3
  %6901 = add nuw nsw i32 %6874, 80
  %6902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6901, i32 undef)  ; BufferLoad(srv,index,wot)
  %6903 = extractvalue %dx.types.ResRet.f32 %6902, 0
  %6904 = extractvalue %dx.types.ResRet.f32 %6902, 1
  %6905 = extractvalue %dx.types.ResRet.f32 %6902, 2
  %6906 = extractvalue %dx.types.ResRet.f32 %6902, 3
  %6907 = add nuw nsw i32 %6874, 96
  %6908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6907, i32 undef)  ; BufferLoad(srv,index,wot)
  %6909 = extractvalue %dx.types.ResRet.f32 %6908, 0
  %6910 = extractvalue %dx.types.ResRet.f32 %6908, 1
  %6911 = extractvalue %dx.types.ResRet.f32 %6908, 2
  %6912 = extractvalue %dx.types.ResRet.f32 %6908, 3
  %6913 = bitcast float %6883 to i32
  %6914 = fmul fast float %6888, %112
  %6915 = fmul fast float %6888, %113
  %6916 = fmul fast float %6888, %114
  %6917 = fadd fast float %6914, %192
  %6918 = fadd fast float %6915, %193
  %6919 = fadd fast float %6916, %194
  %6920 = fmul fast float %6917, %6891
  %6921 = call float @dx.op.tertiary.f32(i32 46, float %6918, float %6897, float %6920)  ; FMad(a,b,c)
  %6922 = call float @dx.op.tertiary.f32(i32 46, float %6919, float %6903, float %6921)  ; FMad(a,b,c)
  %6923 = fadd fast float %6922, %6909
  %6924 = fmul fast float %6917, %6892
  %6925 = call float @dx.op.tertiary.f32(i32 46, float %6918, float %6898, float %6924)  ; FMad(a,b,c)
  %6926 = call float @dx.op.tertiary.f32(i32 46, float %6919, float %6904, float %6925)  ; FMad(a,b,c)
  %6927 = fadd fast float %6926, %6910
  %6928 = fmul fast float %6917, %6893
  %6929 = call float @dx.op.tertiary.f32(i32 46, float %6918, float %6899, float %6928)  ; FMad(a,b,c)
  %6930 = call float @dx.op.tertiary.f32(i32 46, float %6919, float %6905, float %6929)  ; FMad(a,b,c)
  %6931 = fadd fast float %6930, %6911
  %6932 = fmul fast float %6917, %6894
  %6933 = call float @dx.op.tertiary.f32(i32 46, float %6918, float %6900, float %6932)  ; FMad(a,b,c)
  %6934 = call float @dx.op.tertiary.f32(i32 46, float %6919, float %6906, float %6933)  ; FMad(a,b,c)
  %6935 = fadd fast float %6934, %6912
  %6936 = fdiv fast float %6923, %6935
  %6937 = fdiv fast float %6927, %6935
  %6938 = fdiv fast float %6931, %6935
  %6939 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6938)  ; FMax(a,b)
  %6940 = fmul fast float %303, 0x401921FB60000000
  %6941 = call float @dx.op.unary.f32(i32 13, float %6940)  ; Sin(value)
  %6942 = call float @dx.op.unary.f32(i32 12, float %6940)  ; Cos(value)
  %6943 = fsub fast float -0.000000e+00, %6941
  %6944 = fmul fast float %6878, 5.000000e-01
  %6945 = call float @dx.op.dot2.f32(i32 54, float %303, float %303, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6946 = call float @dx.op.unary.f32(i32 22, float %6945)  ; Frc(value)
  %6947 = fmul fast float %6946, 0x404A7DD040000000
  %6948 = call float @dx.op.unary.f32(i32 22, float %6947)  ; Frc(value)
  %6949 = fmul fast float %6948, %6887
  %6950 = fadd fast float %6949, %6944
  %6951 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %6943, float 0.000000e+00)  ; FMad(a,b,c)
  %6952 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %6942, float 0.000000e+00)  ; FMad(a,b,c)
  %6953 = fadd fast float %6951, %6936
  %6954 = fadd fast float %6952, %6937
  %6955 = fmul fast float %6953, %6882
  %6956 = fmul fast float %6954, %6882
  %6957 = call float @dx.op.binary.f32(i32 35, float %6955, float %6878)  ; FMax(a,b)
  %6958 = call float @dx.op.binary.f32(i32 35, float %6956, float %6878)  ; FMax(a,b)
  %6959 = call float @dx.op.binary.f32(i32 36, float %6957, float %6879)  ; FMin(a,b)
  %6960 = call float @dx.op.binary.f32(i32 36, float %6958, float %6879)  ; FMin(a,b)
  %6961 = fadd fast float %6959, %6876
  %6962 = fadd fast float %6960, %6877
  %6963 = uitofp i32 %6913 to float
  %6964 = fadd fast float %6939, %6886
  %6965 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %21, %dx.types.Handle %48, float %6961, float %6962, float %6963, float undef, i32 0, i32 0, i32 undef, float %6964)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6966 = extractvalue %dx.types.ResRet.f32 %6965, 0
  %6967 = fadd fast float %6966, -1.000000e+00
  %6968 = fmul fast float %6967, %6847
  %6969 = fadd fast float %6968, 1.000000e+00
  %6970 = fmul fast float %6969, %6859
  br label %6971

; <label>:6971                                    ; preds = %6873, %6871
  %6972 = phi float [ %6970, %6873 ], [ %6859, %6871 ]
  %6973 = call float @dx.op.binary.f32(i32 36, float %6972, float %6972)  ; FMin(a,b)
  %6974 = call float @dx.op.binary.f32(i32 36, float %6972, float %6973)  ; FMin(a,b)
  %6975 = fcmp fast ogt float %6974, 0.000000e+00
  br i1 %6975, label %6976, label %6863, !dx.controlflow.hints !123

; <label>:6976                                    ; preds = %6971
  %6977 = fmul fast float %6972, %6781
  %6978 = fmul fast float %6972, %6782
  %6979 = fmul fast float %6972, %6783
  %6980 = fsub fast float %6765, %4493
  %6981 = fcmp fast ogt float %6980, 0.000000e+00
  %6982 = fsub fast float %194, %4493
  %6983 = fcmp fast ogt float %6982, 0.000000e+00
  %6984 = xor i1 %6983, %6981
  %6985 = fsub fast float %4493, %6765
  %6986 = fmul fast float %6985, 2.000000e+00
  %6987 = fadd fast float %6986, %6765
  %6988 = select i1 %6984, float %6765, float %6987
  %6989 = fsub fast float %6988, %194
  %6990 = call float @dx.op.dot3.f32(i32 55, float %6791, float %6792, float %6989, float %6791, float %6792, float %6989)  ; Dot3(ax,ay,az,bx,by,bz)
  %6991 = call float @dx.op.unary.f32(i32 25, float %6990)  ; Rsqrt(value)
  %6992 = fmul fast float %6991, %6791
  %6993 = fmul fast float %6991, %6792
  %6994 = fmul fast float %6991, %6989
  %6995 = fsub fast float %4493, %194
  %6996 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6995)  ; Dot3(ax,ay,az,bx,by,bz)
  %6997 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6992, float %6993, float %6994)  ; Dot3(ax,ay,az,bx,by,bz)
  %6998 = fdiv fast float 1.000000e+00, %6997
  %6999 = fmul fast float %6998, %6996
  %7000 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6982, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7001 = fcmp fast ogt float %7000, 0.000000e+00
  %7002 = fcmp fast olt float %7000, 0.000000e+00
  %7003 = zext i1 %7001 to i32
  %7004 = zext i1 %7002 to i32
  %7005 = sub nsw i32 %7003, %7004
  %7006 = sitofp i32 %7005 to float
  %7007 = fsub fast float %6988, %4493
  %7008 = call float @dx.op.dot3.f32(i32 55, float %6791, float %6792, float %7007, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7009 = fcmp fast ogt float %7008, 0.000000e+00
  %7010 = fcmp fast olt float %7008, 0.000000e+00
  %7011 = zext i1 %7009 to i32
  %7012 = zext i1 %7010 to i32
  %7013 = sub nsw i32 %7011, %7012
  %7014 = sitofp i32 %7013 to float
  %7015 = fcmp fast une float %7006, %7014
  br i1 %7015, label %7016, label %7026

; <label>:7016                                    ; preds = %6976
  %7017 = fmul fast float %6999, %6994
  %7018 = fmul fast float %6999, %6993
  %7019 = fmul fast float %6999, %6992
  %7020 = fmul fast float %7019, %7019
  %7021 = fmul fast float %7018, %7018
  %7022 = fadd fast float %7020, %7021
  %7023 = fmul fast float %7017, %7017
  %7024 = fadd fast float %7022, %7023
  %7025 = call float @dx.op.unary.f32(i32 24, float %7024)  ; Sqrt(value)
  br label %7038

; <label>:7026                                    ; preds = %6976
  %7027 = icmp slt i32 %7005, 0
  br i1 %7027, label %7028, label %7038

; <label>:7028                                    ; preds = %7026
  %7029 = fsub fast float %192, %6763
  %7030 = fsub fast float %193, %6764
  %7031 = fsub fast float %194, %6988
  %7032 = fmul fast float %7029, %7029
  %7033 = fmul fast float %7030, %7030
  %7034 = fadd fast float %7032, %7033
  %7035 = fmul fast float %7031, %7031
  %7036 = fadd fast float %7034, %7035
  %7037 = call float @dx.op.unary.f32(i32 24, float %7036)  ; Sqrt(value)
  br label %7038

; <label>:7038                                    ; preds = %7028, %7026, %7016
  %7039 = phi float [ %7025, %7016 ], [ %7037, %7028 ], [ 0.000000e+00, %7026 ]
  %7040 = and i1 %6983, %6981
  %7041 = fsub fast float -0.000000e+00, %7039
  %7042 = select i1 %7040, float -0.000000e+00, float %7041
  %7043 = fmul fast float %4494, 0x3FF7154760000000
  %7044 = fmul fast float %7043, %7042
  %7045 = fmul fast float %4495, 0x3FF7154760000000
  %7046 = fmul fast float %7045, %7042
  %7047 = fmul fast float %4496, 0x3FF7154760000000
  %7048 = fmul fast float %7047, %7042
  %7049 = call float @dx.op.unary.f32(i32 21, float %7044)  ; Exp(value)
  %7050 = call float @dx.op.unary.f32(i32 21, float %7046)  ; Exp(value)
  %7051 = call float @dx.op.unary.f32(i32 21, float %7048)  ; Exp(value)
  %7052 = call float @dx.op.unary.f32(i32 7, float %7049)  ; Saturate(value)
  %7053 = call float @dx.op.unary.f32(i32 7, float %7050)  ; Saturate(value)
  %7054 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  %7055 = fmul fast float %6977, %7052
  %7056 = fmul fast float %6978, %7053
  %7057 = fmul fast float %6979, %7054
  %7058 = fsub fast float %6797, %5319
  %7059 = fsub fast float %6798, %5320
  %7060 = fsub fast float %6799, %5321
  %7061 = call float @dx.op.dot3.f32(i32 55, float %7058, float %7059, float %7060, float %7058, float %7059, float %7060)  ; Dot3(ax,ay,az,bx,by,bz)
  %7062 = call float @dx.op.unary.f32(i32 25, float %7061)  ; Rsqrt(value)
  %7063 = fmul fast float %7062, %7058
  %7064 = fmul fast float %7062, %7059
  %7065 = fmul fast float %7062, %7060
  %7066 = call float @dx.op.dot3.f32(i32 55, float %6797, float %6798, float %6799, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %7067 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %7063, float %7064, float %7065)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7069 = fmul fast float %7068, %6804
  %7070 = fmul fast float %7068, %7068
  %7071 = fmul fast float %7070, %5340
  %7072 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7073 = fmul fast float %7069, %7072
  %7074 = bitcast float %6794 to i32
  %7075 = ashr i32 %7074, 1
  %7076 = sub nsw i32 1597463007, %7075
  %7077 = bitcast i32 %7076 to float
  %7078 = fmul fast float %7077, %6791
  %7079 = fmul fast float %7077, %6792
  %7080 = fmul fast float %7077, %6793
  %7081 = fsub fast float %7078, %5319
  %7082 = fsub fast float %7079, %5320
  %7083 = fsub fast float %7080, %5321
  %7084 = call float @dx.op.dot3.f32(i32 55, float %7081, float %7082, float %7083, float %7081, float %7082, float %7083)  ; Dot3(ax,ay,az,bx,by,bz)
  %7085 = call float @dx.op.unary.f32(i32 25, float %7084)  ; Rsqrt(value)
  %7086 = fmul fast float %7081, %7085
  %7087 = fmul fast float %7082, %7085
  %7088 = fmul fast float %7083, %7085
  %7089 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %7086, float %7087, float %7088)  ; Dot3(ax,ay,az,bx,by,bz)
  %7090 = fmul fast float %7089, %7089
  %7091 = call float @dx.op.unary.f32(i32 6, float %7066)  ; FAbs(value)
  %7092 = fsub fast float 1.000000e+00, %5282
  %7093 = call float @dx.op.binary.f32(i32 35, float %7092, float 0x3F847AE140000000)  ; FMax(a,b)
  %7094 = fmul fast float %7093, %7093
  %7095 = fmul fast float %7094, %7094
  %7096 = fsub fast float 1.000000e+00, %7095
  %7097 = fmul fast float %5327, %5327
  %7098 = fmul fast float %7097, %7096
  %7099 = fadd fast float %7098, %7095
  %7100 = bitcast float %7099 to i32
  %7101 = ashr i32 %7100, 1
  %7102 = add nsw i32 %7101, 532487669
  %7103 = bitcast i32 %7102 to float
  %7104 = fadd fast float %7103, %5327
  %7105 = fmul fast float %7095, %7090
  %7106 = fsub fast float 1.000000e+00, %7090
  %7107 = fadd fast float %7106, %7105
  %7108 = fmul fast float %7091, %7091
  %7109 = fmul fast float %7108, %7096
  %7110 = fadd fast float %7109, %7095
  %7111 = bitcast float %7110 to i32
  %7112 = ashr i32 %7111, 1
  %7113 = add nsw i32 %7112, 532487669
  %7114 = bitcast i32 %7113 to float
  %7115 = fadd fast float %7114, %7091
  %7116 = fmul fast float %7107, %7107
  %7117 = fmul fast float %7116, %7104
  %7118 = fmul fast float %7117, %7115
  %7119 = fdiv fast float 1.000000e+00, %7118
  %7120 = bitcast float %7095 to i32
  %7121 = sitofp i32 %7120 to float
  %7122 = fmul fast float %7121, 0x3FE7F73180000000
  %7123 = fadd fast float %7122, 0x41AFE27C40000000
  %7124 = fptosi float %7123 to i32
  %7125 = bitcast i32 %7124 to float
  %7126 = fmul fast float %6760, 0x3FD80E9D60000000
  %7127 = fmul fast float %7126, %7077
  %7128 = fadd fast float %7125, %7127
  %7129 = bitcast float %7128 to i32
  %7130 = sub nsw i32 2129859010, %7129
  %7131 = bitcast i32 %7130 to float
  %7132 = fmul fast float %7095, %7119
  %7133 = fmul fast float %7132, %7125
  %7134 = fmul fast float %7133, %7131
  %7135 = fmul fast float %5444, 0x3FF9999980000000
  %7136 = fsub fast float 5.000000e+00, %7135
  %7137 = call float @dx.op.unary.f32(i32 6, float %7067)  ; FAbs(value)
  %7138 = fsub fast float 1.000000e+00, %7137
  %7139 = fmul fast float %5444, 0x41D9660740000000
  %7140 = fadd fast float %7139, 0xC1EFBF8940000000
  %7141 = bitcast float %7138 to i32
  %7142 = sitofp i32 %7141 to float
  %7143 = fmul fast float %7142, %7136
  %7144 = fadd fast float %7140, %7143
  %7145 = fptosi float %7144 to i32
  %7146 = bitcast i32 %7145 to float
  %7147 = fsub fast float 1.000000e+00, %5273
  %7148 = fsub fast float 1.000000e+00, %5274
  %7149 = fsub fast float 1.000000e+00, %5325
  %7150 = fmul fast float %7146, %7147
  %7151 = fmul fast float %7146, %7148
  %7152 = fmul fast float %7146, %7149
  %7153 = fadd fast float %7150, %5273
  %7154 = fadd fast float %7151, %5274
  %7155 = fadd fast float %7152, %5325
  %7156 = fmul fast float %7066, 9.843750e-01
  %7157 = fadd fast float %7156, 7.812500e-03
  %7158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %7157, float %5448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7159 = extractvalue %dx.types.ResRet.f32 %7158, 0
  %7160 = extractvalue %dx.types.ResRet.f32 %7158, 1
  %7161 = extractvalue %dx.types.ResRet.f32 %7158, 2
  %7162 = extractvalue %dx.types.ResRet.f32 %7158, 3
  %7163 = fsub fast float %7161, %7159
  %7164 = fsub fast float %7162, %7160
  %7165 = fmul fast float %7163, %5454
  %7166 = fmul fast float %7164, %5454
  %7167 = fadd fast float %7165, %7159
  %7168 = fadd fast float %7166, %7160
  %7169 = fmul fast float %7167, %5273
  %7170 = fmul fast float %7167, %5274
  %7171 = fmul fast float %7167, %5325
  %7172 = fadd fast float %7169, %7168
  %7173 = fadd fast float %7170, %7168
  %7174 = fadd fast float %7171, %7168
  %7175 = call float @dx.op.binary.f32(i32 35, float %7173, float %7174)  ; FMax(a,b)
  %7176 = call float @dx.op.binary.f32(i32 35, float %7172, float %7175)  ; FMax(a,b)
  %7177 = fsub fast float 1.000000e+00, %7176
  %7178 = fmul fast float %7055, %1365
  %7179 = fmul fast float %7178, %7073
  %7180 = fmul fast float %7179, %7177
  %7181 = fmul fast float %7056, %1365
  %7182 = fmul fast float %7181, %7073
  %7183 = fmul fast float %7182, %7177
  %7184 = fmul fast float %7057, %1365
  %7185 = fmul fast float %7184, %7073
  %7186 = fmul fast float %7185, %7177
  %7187 = fadd fast float %7180, %6734
  %7188 = fadd fast float %7183, %6735
  %7189 = fadd fast float %7186, %6736
  %7190 = fmul fast float %7179, %7153
  %7191 = fmul fast float %7190, %7134
  %7192 = fmul fast float %7182, %7154
  %7193 = fmul fast float %7192, %7134
  %7194 = fmul fast float %7185, %7155
  %7195 = fmul fast float %7194, %7134
  %7196 = fadd fast float %7191, %6731
  %7197 = fadd fast float %7193, %6732
  %7198 = fadd fast float %7195, %6733
  br label %6863

; <label>:7199                                    ; preds = %6863
  br label %7200

; <label>:7200                                    ; preds = %7199, %6697
  %7201 = phi float [ %6699, %6697 ], [ %6864, %7199 ]
  %7202 = phi float [ %6700, %6697 ], [ %6865, %7199 ]
  %7203 = phi float [ %6701, %6697 ], [ %6866, %7199 ]
  %7204 = phi float [ %6702, %6697 ], [ %6867, %7199 ]
  %7205 = phi float [ %6703, %6697 ], [ %6868, %7199 ]
  %7206 = phi float [ %6704, %6697 ], [ %6869, %7199 ]
  %7207 = add i32 %6698, 1
  %7208 = icmp ugt i32 %7207, %6694
  br i1 %7208, label %7209, label %6697

; <label>:7209                                    ; preds = %7200
  br label %7210

; <label>:7210                                    ; preds = %7209, %6647, %6637
  %7211 = phi float [ %6638, %6637 ], [ %6638, %6647 ], [ %7201, %7209 ]
  %7212 = phi float [ %6639, %6637 ], [ %6639, %6647 ], [ %7202, %7209 ]
  %7213 = phi float [ %6640, %6637 ], [ %6640, %6647 ], [ %7203, %7209 ]
  %7214 = phi float [ %6641, %6637 ], [ %6641, %6647 ], [ %7204, %7209 ]
  %7215 = phi float [ %6642, %6637 ], [ %6642, %6647 ], [ %7205, %7209 ]
  %7216 = phi float [ %6643, %6637 ], [ %6643, %6647 ], [ %7206, %7209 ]
  %7217 = fmul fast float %1365, %1365
  %7218 = fmul fast float %7217, %5572
  %7219 = fmul fast float %7217, %5573
  %7220 = fmul fast float %7217, %5574
  %7221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7222 = extractvalue %dx.types.CBufRet.f32 %7221, 0
  %7223 = fmul fast float %7222, %5578
  %7224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7225 = extractvalue %dx.types.CBufRet.f32 %7224, 3
  %7226 = fsub fast float 1.000000e+00, %4018
  %7227 = call float @dx.op.unary.f32(i32 7, float %7226)  ; Saturate(value)
  %7228 = fadd fast float %4039, %7216
  %7229 = fmul fast float %7228, %4018
  %7230 = fmul fast float %7227, %7225
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 3
  %7233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %7234 = extractvalue %dx.types.CBufRet.f32 %7233, 0
  %7235 = fmul fast float %7214, %5276
  %7236 = fmul fast float %7215, %5277
  %7237 = fmul fast float %7216, %5278
  %7238 = fmul fast float %7218, %7234
  %7239 = fsub fast float -0.000000e+00, %7238
  %7240 = fmul fast float %7219, %7234
  %7241 = fsub fast float -0.000000e+00, %7240
  %7242 = fmul fast float %7220, %7234
  %7243 = fsub fast float -0.000000e+00, %7242
  %7244 = fmul fast float %7235, %7234
  %7245 = fmul fast float %7236, %7234
  %7246 = fmul fast float %7237, %7234
  %7247 = fmul fast float %7234, %7211
  %7248 = fmul fast float %7234, %7212
  %7249 = fmul fast float %7234, %7213
  %7250 = fcmp fast ogt float %96, %252
  %7251 = and i1 %7250, %4499
  %7252 = or i1 %4505, %7251
  %7253 = icmp eq i32 %4498, 2
  %7254 = fcmp fast ole float %96, %252
  %7255 = and i1 %7254, %7253
  %7256 = or i1 %7255, %7252
  br i1 %7251, label %7257, label %7514

; <label>:7257                                    ; preds = %7210
  %7258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7259 = extractvalue %dx.types.CBufRet.f32 %7258, 2
  %7260 = extractvalue %dx.types.CBufRet.f32 %7258, 3
  %7261 = fmul fast float %7259, %105
  %7262 = fmul fast float %7260, %106
  %7263 = call float @dx.op.unary.f32(i32 7, float %7261)  ; Saturate(value)
  %7264 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7265 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %46, float %7263, float %7264, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7266 = extractvalue %dx.types.ResRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.ResRet.f32 %7265, 1
  %7268 = extractvalue %dx.types.ResRet.f32 %7265, 2
  %7269 = extractvalue %dx.types.ResRet.f32 %7265, 3
  %7270 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %46, float %7263, float %7264, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7271 = extractvalue %dx.types.ResRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.ResRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.ResRet.f32 %7270, 2
  %7274 = extractvalue %dx.types.ResRet.f32 %7270, 3
  %7275 = call float @dx.op.binary.f32(i32 35, float %7267, float %7268)  ; FMax(a,b)
  %7276 = call float @dx.op.binary.f32(i32 35, float %7266, float %7275)  ; FMax(a,b)
  %7277 = call float @dx.op.binary.f32(i32 35, float %7276, float %7269)  ; FMax(a,b)
  %7278 = call float @dx.op.binary.f32(i32 36, float %7272, float %7273)  ; FMin(a,b)
  %7279 = call float @dx.op.binary.f32(i32 36, float %7271, float %7278)  ; FMin(a,b)
  %7280 = call float @dx.op.binary.f32(i32 36, float %7279, float %7274)  ; FMin(a,b)
  %7281 = fmul fast float %7277, 2.550000e+02
  %7282 = fadd fast float %7281, 0x3F70101020000000
  %7283 = fptoui float %7282 to i32
  %7284 = fmul fast float %7280, 2.550000e+02
  %7285 = fadd fast float %7284, 0x3F70101020000000
  %7286 = fptoui float %7285 to i32
  %7287 = icmp ult i32 %7283, %7286
  br i1 %7287, label %7288, label %7456

; <label>:7288                                    ; preds = %7257
  %7289 = fcmp fast ogt float %95, 9.843750e-01
  %7290 = fadd fast float %96, -4.000000e+00
  %7291 = select i1 %7289, float -4.000000e+00, float %7290
  %7292 = call float @dx.op.binary.f32(i32 35, float %7291, float 0.000000e+00)  ; FMax(a,b)
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 0
  %7295 = fadd fast float %7294, %7292
  %7296 = extractvalue %dx.types.CBufRet.f32 %7293, 2
  %7297 = fmul fast float %7295, %7296
  %7298 = call float @dx.op.unary.f32(i32 23, float %7297)  ; Log(value)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7293, 3
  %7300 = fmul fast float %7299, %7298
  %7301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.f32 %7301, 2
  %7303 = fmul fast float %7300, %7302
  %7304 = call float @dx.op.unary.f32(i32 7, float %7303)  ; Saturate(value)
  %7305 = uitofp i32 %7283 to float
  %7306 = uitofp i32 %7286 to float
  %7307 = fadd fast float %7305, 5.000000e-01
  %7308 = fadd fast float %7306, 5.000000e-01
  %7309 = fmul fast float %7302, %7307
  %7310 = fmul fast float %7302, %7308
  %7311 = fadd fast float %7309, 0x3F0FFB4800000000
  %7312 = fadd fast float %7310, 0xBF0FFB4800000000
  %7313 = call float @dx.op.binary.f32(i32 35, float %7304, float %7311)  ; FMax(a,b)
  %7314 = call float @dx.op.binary.f32(i32 36, float %7313, float %7312)  ; FMin(a,b)
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7318 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7319 = fmul fast float %7316, %7314
  %7320 = fadd fast float %7318, %7319
  %7321 = fadd fast float %7318, %7317
  %7322 = fsub fast float %7316, %7317
  %7323 = fadd fast float %7322, %7318
  %7324 = call float @dx.op.binary.f32(i32 35, float %7320, float %7321)  ; FMax(a,b)
  %7325 = call float @dx.op.binary.f32(i32 36, float %7324, float %7323)  ; FMin(a,b)
  %7326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %7263, float %7264, float %7325, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.ResRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.ResRet.f32 %7326, 2
  %7330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.i32 %7330, 0
  %7332 = extractvalue %dx.types.CBufRet.i32 %7330, 1
  %7333 = uitofp i32 %7331 to float
  %7334 = uitofp i32 %7332 to float
  %7335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7336 = extractvalue %dx.types.CBufRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.CBufRet.f32 %7335, 1
  %7338 = fmul fast float %7333, %7263
  %7339 = fmul fast float %7334, %7264
  %7340 = fadd fast float %7338, -5.000000e-01
  %7341 = fadd fast float %7339, -5.000000e-01
  %7342 = call float @dx.op.unary.f32(i32 22, float %7340)  ; Frc(value)
  %7343 = call float @dx.op.unary.f32(i32 22, float %7341)  ; Frc(value)
  %7344 = fmul fast float %7342, %7342
  %7345 = fmul fast float %7344, %7342
  %7346 = fsub fast float 3.000000e+00, %7342
  %7347 = fmul fast float %7344, %7346
  %7348 = fmul fast float %7342, 3.000000e+00
  %7349 = fmul fast float %7345, 3.000000e+00
  %7350 = fmul fast float %7344, 6.000000e+00
  %7351 = fsub fast float %7349, %7350
  %7352 = fadd fast float %7351, 4.000000e+00
  %7353 = fmul fast float %7352, 0x3FC5555560000000
  %7354 = fmul fast float %7345, -3.000000e+00
  %7355 = fadd fast float %7344, %7342
  %7356 = fmul fast float %7355, 3.000000e+00
  %7357 = fadd fast float %7354, 1.000000e+00
  %7358 = fadd fast float %7357, %7356
  %7359 = fmul fast float %7345, 0x3FC5555560000000
  %7360 = fmul fast float %7343, %7343
  %7361 = fmul fast float %7360, %7343
  %7362 = fsub fast float 3.000000e+00, %7343
  %7363 = fmul fast float %7360, %7362
  %7364 = fmul fast float %7343, 3.000000e+00
  %7365 = fmul fast float %7361, 3.000000e+00
  %7366 = fmul fast float %7360, 6.000000e+00
  %7367 = fsub fast float %7365, %7366
  %7368 = fadd fast float %7367, 4.000000e+00
  %7369 = fmul fast float %7368, 0x3FC5555560000000
  %7370 = fmul fast float %7361, -3.000000e+00
  %7371 = fadd fast float %7360, %7343
  %7372 = fmul fast float %7371, 3.000000e+00
  %7373 = fadd fast float %7370, 1.000000e+00
  %7374 = fadd fast float %7373, %7372
  %7375 = fmul fast float %7361, 0x3FC5555560000000
  %7376 = fadd fast float %7342, 1.000000e+00
  %7377 = fsub fast float 1.000000e+00, %7348
  %7378 = fadd fast float %7377, %7347
  %7379 = fadd fast float %7378, %7352
  %7380 = fmul fast float %7379, 0x3FC5555560000000
  %7381 = fdiv fast float %7353, %7380
  %7382 = fsub fast float %7376, %7381
  %7383 = fsub fast float 1.000000e+00, %7342
  %7384 = fadd fast float %7358, %7345
  %7385 = fmul fast float %7384, 0x3FC5555560000000
  %7386 = fdiv fast float %7359, %7385
  %7387 = fadd fast float %7383, %7386
  %7388 = fadd fast float %7343, 1.000000e+00
  %7389 = fsub fast float 1.000000e+00, %7364
  %7390 = fadd fast float %7389, %7363
  %7391 = fadd fast float %7390, %7368
  %7392 = fmul fast float %7391, 0x3FC5555560000000
  %7393 = fdiv fast float %7369, %7392
  %7394 = fsub fast float %7388, %7393
  %7395 = fsub fast float 1.000000e+00, %7343
  %7396 = fadd fast float %7374, %7361
  %7397 = fmul fast float %7396, 0x3FC5555560000000
  %7398 = fdiv fast float %7375, %7397
  %7399 = fadd fast float %7398, %7395
  %7400 = fmul fast float %7382, %7336
  %7401 = fsub fast float %7263, %7400
  %7402 = fmul fast float %7387, %7336
  %7403 = fadd fast float %7402, %7263
  %7404 = fmul fast float %7399, %7337
  %7405 = fadd fast float %7404, %7264
  %7406 = fmul fast float %7394, %7337
  %7407 = fsub fast float %7264, %7406
  %7408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %7401, float %7407, float %7325, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7409 = extractvalue %dx.types.ResRet.f32 %7408, 0
  %7410 = extractvalue %dx.types.ResRet.f32 %7408, 1
  %7411 = extractvalue %dx.types.ResRet.f32 %7408, 2
  %7412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %7403, float %7407, float %7325, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7413 = extractvalue %dx.types.ResRet.f32 %7412, 0
  %7414 = extractvalue %dx.types.ResRet.f32 %7412, 1
  %7415 = extractvalue %dx.types.ResRet.f32 %7412, 2
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %7401, float %7405, float %7325, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.ResRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.ResRet.f32 %7416, 2
  %7420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %7403, float %7405, float %7325, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7421 = extractvalue %dx.types.ResRet.f32 %7420, 0
  %7422 = extractvalue %dx.types.ResRet.f32 %7420, 1
  %7423 = extractvalue %dx.types.ResRet.f32 %7420, 2
  %7424 = fsub fast float %7417, %7409
  %7425 = fsub fast float %7418, %7410
  %7426 = fsub fast float %7419, %7411
  %7427 = fmul fast float %7424, %7397
  %7428 = fmul fast float %7425, %7397
  %7429 = fmul fast float %7426, %7397
  %7430 = fadd fast float %7427, %7409
  %7431 = fadd fast float %7428, %7410
  %7432 = fadd fast float %7429, %7411
  %7433 = fsub fast float %7421, %7413
  %7434 = fsub fast float %7422, %7414
  %7435 = fsub fast float %7423, %7415
  %7436 = fmul fast float %7433, %7397
  %7437 = fmul fast float %7434, %7397
  %7438 = fmul fast float %7435, %7397
  %7439 = fsub fast float %7413, %7430
  %7440 = fadd fast float %7439, %7436
  %7441 = fsub fast float %7414, %7431
  %7442 = fadd fast float %7441, %7437
  %7443 = fsub fast float %7415, %7432
  %7444 = fadd fast float %7443, %7438
  %7445 = fmul fast float %7440, %7385
  %7446 = fmul fast float %7442, %7385
  %7447 = fmul fast float %7444, %7385
  %7448 = fadd fast float %7445, %7430
  %7449 = fadd fast float %7446, %7431
  %7450 = fadd fast float %7447, %7432
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7453 = fmul fast float %7448, %7452
  %7454 = fmul fast float %7449, %7452
  %7455 = fmul fast float %7450, %7452
  br label %7456

; <label>:7456                                    ; preds = %7288, %7257
  %7457 = phi float [ %7327, %7288 ], [ 1.000000e+00, %7257 ]
  %7458 = phi float [ %7328, %7288 ], [ 1.000000e+00, %7257 ]
  %7459 = phi float [ %7329, %7288 ], [ 1.000000e+00, %7257 ]
  %7460 = phi float [ %7453, %7288 ], [ 0.000000e+00, %7257 ]
  %7461 = phi float [ %7454, %7288 ], [ 0.000000e+00, %7257 ]
  %7462 = phi float [ %7455, %7288 ], [ 0.000000e+00, %7257 ]
  %7463 = fmul fast float %7460, %7239
  %7464 = fmul fast float %7461, %7241
  %7465 = fmul fast float %7462, %7243
  %7466 = call float @dx.op.dot3.f32(i32 55, float %7457, float %7458, float %7459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7467 = call float @dx.op.dot3.f32(i32 55, float %7463, float %7464, float %7465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7468 = select i1 %292, float %7466, float %7457
  %7469 = select i1 %292, float %7466, float %7458
  %7470 = select i1 %292, float 1.000000e+00, float %7459
  %7471 = select i1 %292, float %7467, float %7463
  %7472 = select i1 %292, float 0.000000e+00, float %7464
  %7473 = select i1 %292, float 0.000000e+00, float %7465
  %7474 = fmul fast float %7468, %7244
  %7475 = fmul fast float %7469, %7245
  %7476 = fmul fast float %7470, %7246
  %7477 = fadd fast float %7474, %7471
  %7478 = fadd fast float %7475, %7472
  %7479 = fadd fast float %7473, %7476
  %7480 = fmul fast float %7468, %7247
  %7481 = fmul fast float %7469, %7248
  %7482 = fmul fast float %7470, %7249
  %7483 = fmul fast float %141, %7259
  %7484 = fmul fast float %143, %7260
  %7485 = fsub fast float 1.000000e+00, %7483
  %7486 = fsub fast float 1.000000e+00, %7484
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 0
  %7489 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7490 = extractvalue %dx.types.CBufRet.f32 %7487, 2
  %7491 = fmul fast float %7485, %7488
  %7492 = fmul fast float %7485, %7489
  %7493 = fmul fast float %7485, %7490
  %7494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7495 = extractvalue %dx.types.CBufRet.f32 %7494, 0
  %7496 = extractvalue %dx.types.CBufRet.f32 %7494, 1
  %7497 = extractvalue %dx.types.CBufRet.f32 %7494, 2
  %7498 = fmul fast float %7486, %7495
  %7499 = fmul fast float %7486, %7496
  %7500 = fmul fast float %7486, %7497
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.CBufRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.CBufRet.f32 %7501, 2
  %7505 = fadd fast float %7498, %7502
  %7506 = fadd fast float %7505, %7491
  %7507 = fadd fast float %7499, %7503
  %7508 = fadd fast float %7507, %7492
  %7509 = fadd fast float %7500, %7504
  %7510 = fadd fast float %7509, %7493
  %7511 = fmul fast float %7506, %252
  %7512 = fmul fast float %7508, %252
  %7513 = fmul fast float %7510, %252
  br label %7514

; <label>:7514                                    ; preds = %7456, %7210
  %7515 = phi float [ %7511, %7456 ], [ %192, %7210 ]
  %7516 = phi float [ %7512, %7456 ], [ %193, %7210 ]
  %7517 = phi float [ %7513, %7456 ], [ %194, %7210 ]
  %7518 = phi float [ %252, %7456 ], [ %96, %7210 ]
  %7519 = phi float [ %7477, %7456 ], [ %7244, %7210 ]
  %7520 = phi float [ %7478, %7456 ], [ %7245, %7210 ]
  %7521 = phi float [ %7479, %7456 ], [ %7246, %7210 ]
  %7522 = phi float [ %7480, %7456 ], [ %7247, %7210 ]
  %7523 = phi float [ %7481, %7456 ], [ %7248, %7210 ]
  %7524 = phi float [ %7482, %7456 ], [ %7249, %7210 ]
  %7525 = phi float [ %7457, %7456 ], [ 1.000000e+00, %7210 ]
  br i1 %7256, label %8680, label %7526

; <label>:7526                                    ; preds = %7514
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7531 = extractvalue %dx.types.CBufRet.f32 %7527, 3
  %7532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7533 = extractvalue %dx.types.CBufRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.CBufRet.f32 %7532, 1
  %7535 = extractvalue %dx.types.CBufRet.f32 %7532, 2
  %7536 = extractvalue %dx.types.CBufRet.f32 %7532, 3
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 0
  %7539 = extractvalue %dx.types.CBufRet.f32 %7537, 1
  %7540 = extractvalue %dx.types.CBufRet.f32 %7537, 2
  %7541 = extractvalue %dx.types.CBufRet.f32 %7537, 3
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 0
  %7544 = extractvalue %dx.types.CBufRet.f32 %7542, 1
  %7545 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7546 = extractvalue %dx.types.CBufRet.f32 %7542, 3
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 3
  %7549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7550 = extractvalue %dx.types.CBufRet.f32 %7549, 3
  %7551 = extractvalue %dx.types.CBufRet.f32 %7549, 0
  %7552 = extractvalue %dx.types.CBufRet.f32 %7549, 1
  %7553 = extractvalue %dx.types.CBufRet.f32 %7549, 2
  %7554 = fcmp fast olt float %7553, -5.000000e-01
  %7555 = call float @dx.op.dot3.f32(i32 55, float %7515, float %7516, float %7517, float %7515, float %7516, float %7517)  ; Dot3(ax,ay,az,bx,by,bz)
  %7556 = call float @dx.op.unary.f32(i32 25, float %7555)  ; Rsqrt(value)
  %7557 = fmul fast float %7556, %7555
  %7558 = fmul fast float %7556, %7515
  %7559 = fmul fast float %7556, %7516
  %7560 = fmul fast float %7556, %7517
  %7561 = fadd fast float %7557, %7531
  %7562 = call float @dx.op.dot3.f32(i32 55, float %7558, float %7559, float %7560, float %7528, float %7529, float %7530)  ; Dot3(ax,ay,az,bx,by,bz)
  %7563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7564 = extractvalue %dx.types.CBufRet.i32 %7563, 1
  %7565 = and i32 %7564, 1
  %7566 = icmp ne i32 %7565, 0
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 2
  %7569 = fcmp fast ogt float %7568, 0.000000e+00
  %7570 = and i1 %7566, %7569
  br i1 %7570, label %7571, label %7977, !dx.controlflow.hints !124

; <label>:7571                                    ; preds = %7526
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 3
  %7574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7575 = extractvalue %dx.types.CBufRet.f32 %7574, 2
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.f32 %7576, 2
  %7578 = fsub fast float %7575, %7577
  %7579 = and i32 %7564, 2
  %7580 = extractvalue %dx.types.CBufRet.i32 %7563, 0
  %7581 = call i32 @dx.op.binary.i32(i32 40, i32 %7580, i32 3)  ; UMin(a,b)
  %7582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7583 = extractvalue %dx.types.CBufRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.CBufRet.f32 %7582, 1
  %7585 = extractvalue %dx.types.CBufRet.f32 %7576, 0
  %7586 = extractvalue %dx.types.CBufRet.f32 %7576, 1
  %7587 = fsub fast float %7583, %7585
  %7588 = fsub fast float %7584, %7586
  %7589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.f32 %7589, 0
  %7591 = fcmp fast ogt float %7590, 0.000000e+00
  %7592 = fsub fast float -0.000000e+00, %7587
  %7593 = fsub fast float -0.000000e+00, %7588
  %7594 = call float @dx.op.dot2.f32(i32 54, float %7558, float %7559, float %7558, float %7559)  ; Dot2(ax,ay,bx,by)
  %7595 = call float @dx.op.dot2.f32(i32 54, float %7558, float %7559, float %7592, float %7593)  ; Dot2(ax,ay,bx,by)
  %7596 = fmul fast float %7595, 2.000000e+00
  %7597 = call float @dx.op.dot2.f32(i32 54, float %7592, float %7593, float %7592, float %7593)  ; Dot2(ax,ay,bx,by)
  %7598 = fmul fast float %7590, %7590
  %7599 = fsub fast float %7597, %7598
  %7600 = fmul fast float %7596, %7596
  %7601 = fmul fast float %7594, 4.000000e+00
  %7602 = fmul fast float %7601, %7599
  %7603 = fsub fast float %7600, %7602
  %7604 = fcmp fast ogt float %7603, 0.000000e+00
  br i1 %7604, label %7605, label %7620

; <label>:7605                                    ; preds = %7571
  %7606 = fcmp fast ogt float %7596, 0.000000e+00
  %7607 = call float @dx.op.unary.f32(i32 24, float %7603)  ; Sqrt(value)
  %7608 = fsub fast float -0.000000e+00, %7607
  %7609 = select i1 %7606, float %7607, float %7608
  %7610 = fadd fast float %7609, %7596
  %7611 = fmul float %7610, -5.000000e-01
  %7612 = fdiv fast float %7611, %7594
  %7613 = call float @dx.op.binary.f32(i32 35, float %7612, float 0.000000e+00)  ; FMax(a,b)
  %7614 = call float @dx.op.binary.f32(i32 36, float %7557, float %7613)  ; FMin(a,b)
  %7615 = fdiv fast float %7599, %7611
  %7616 = call float @dx.op.binary.f32(i32 35, float %7615, float 0.000000e+00)  ; FMax(a,b)
  %7617 = call float @dx.op.binary.f32(i32 36, float %7557, float %7616)  ; FMin(a,b)
  %7618 = call float @dx.op.binary.f32(i32 36, float %7614, float %7617)  ; FMin(a,b)
  %7619 = call float @dx.op.binary.f32(i32 35, float %7614, float %7617)  ; FMax(a,b)
  br label %7620

; <label>:7620                                    ; preds = %7605, %7571
  %7621 = phi float [ %7619, %7605 ], [ -1.000000e+00, %7571 ]
  %7622 = phi float [ %7618, %7605 ], [ -1.000000e+00, %7571 ]
  %7623 = phi i1 [ true, %7605 ], [ false, %7571 ]
  %7624 = and i1 %7591, %7623
  br i1 %7624, label %7625, label %7627

; <label>:7625                                    ; preds = %7620
  %7626 = fcmp fast oeq float %7622, %7621
  br i1 %7626, label %7930, label %7628

; <label>:7627                                    ; preds = %7620
  br i1 %7591, label %7930, label %7628

; <label>:7628                                    ; preds = %7627, %7625
  %7629 = phi float [ %7557, %7627 ], [ %7621, %7625 ]
  %7630 = phi float [ 0.000000e+00, %7627 ], [ %7622, %7625 ]
  %7631 = icmp ne i32 %7579, 0
  %7632 = fmul fast float %7629, %7560
  %7633 = fadd fast float %7632, %7573
  %7634 = fmul fast float %7633, %7629
  %7635 = select i1 %7631, float 0.000000e+00, float %7634
  %7636 = fcmp fast oeq float %7560, 0.000000e+00
  %7637 = fdiv fast float %7578, %7560
  %7638 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7637)  ; FMax(a,b)
  %7639 = select i1 %7636, float %7629, float %7638
  %7640 = call float @dx.op.binary.f32(i32 36, float %7629, float %7639)  ; FMin(a,b)
  %7641 = fcmp fast ogt float %7560, 0.000000e+00
  %7642 = fcmp fast olt float %7578, 0.000000e+00
  br i1 %7641, label %7643, label %7700

; <label>:7643                                    ; preds = %7628
  %7644 = icmp eq i32 %7579, 0
  br i1 %7642, label %7645, label %7689

; <label>:7645                                    ; preds = %7643
  %7646 = select i1 %7644, float %7629, float 0.000000e+00
  %7647 = fsub fast float -0.000000e+00, %7646
  %7648 = call float @dx.op.unary.f32(i32 6, float %7647)  ; FAbs(value)
  %7649 = fmul fast float %7646, %7560
  %7650 = fadd fast float %7649, %7573
  %7651 = fmul fast float %7648, %7650
  %7652 = fsub fast float %7635, %7651
  %7653 = fsub fast float %7629, %7648
  %7654 = select i1 %7644, float %7653, float 0.000000e+00
  %7655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7656 = extractvalue %dx.types.CBufRet.f32 %7655, 0
  %7657 = extractvalue %dx.types.CBufRet.f32 %7655, 1
  %7658 = extractvalue %dx.types.CBufRet.f32 %7655, 2
  %7659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.CBufRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.CBufRet.f32 %7659, 2
  %7663 = extractvalue %dx.types.CBufRet.f32 %7659, 3
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 3
  %7666 = call float @dx.op.binary.f32(i32 36, float %7652, float %7665)  ; FMin(a,b)
  %7667 = fmul fast float %7663, %7654
  %7668 = call float @dx.op.unary.f32(i32 7, float %7667)  ; Saturate(value)
  %7669 = fsub fast float %7660, %7656
  %7670 = fsub fast float %7661, %7657
  %7671 = fsub fast float %7662, %7658
  %7672 = fmul fast float %7668, %7669
  %7673 = fmul fast float %7668, %7670
  %7674 = fmul fast float %7668, %7671
  %7675 = fadd fast float %7672, %7656
  %7676 = fadd fast float %7673, %7657
  %7677 = fadd fast float %7674, %7658
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.CBufRet.f32 %7678, 1
  %7681 = fadd fast float %7680, %7679
  %7682 = call float @dx.op.unary.f32(i32 7, float %7681)  ; Saturate(value)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7684 = extractvalue %dx.types.CBufRet.f32 %7678, 3
  %7685 = fadd fast float %7684, %7683
  %7686 = call float @dx.op.unary.f32(i32 7, float %7685)  ; Saturate(value)
  %7687 = fmul fast float %7682, %7666
  %7688 = fmul fast float %7687, %7686
  br label %7930

; <label>:7689                                    ; preds = %7643
  br i1 %7644, label %7690, label %7711

; <label>:7690                                    ; preds = %7689
  %7691 = call float @dx.op.binary.f32(i32 36, float %7640, float %7630)  ; FMin(a,b)
  %7692 = fsub fast float %7640, %7691
  %7693 = fsub fast float %7692, %7629
  %7694 = call float @dx.op.unary.f32(i32 6, float %7693)  ; FAbs(value)
  %7695 = fadd fast float %7692, %7629
  %7696 = fmul fast float %7695, %7560
  %7697 = fadd fast float %7696, %7573
  %7698 = fmul fast float %7697, %7694
  %7699 = fsub fast float %7635, %7698
  br label %7711

; <label>:7700                                    ; preds = %7628
  br i1 %7642, label %7701, label %7711

; <label>:7701                                    ; preds = %7700
  %7702 = call float @dx.op.binary.f32(i32 35, float %7630, float %7640)  ; FMax(a,b)
  %7703 = icmp eq i32 %7579, 0
  %7704 = select i1 %7703, float %7640, float 0.000000e+00
  %7705 = fsub fast float -0.000000e+00, %7704
  %7706 = call float @dx.op.unary.f32(i32 6, float %7705)  ; FAbs(value)
  %7707 = fmul fast float %7704, %7560
  %7708 = fadd fast float %7707, %7573
  %7709 = fmul fast float %7706, %7708
  %7710 = fsub fast float %7635, %7709
  br label %7711

; <label>:7711                                    ; preds = %7701, %7700, %7690, %7689
  %7712 = phi float [ %7630, %7689 ], [ %7630, %7690 ], [ %7702, %7701 ], [ %7630, %7700 ]
  %7713 = phi float [ 0.000000e+00, %7689 ], [ %7694, %7690 ], [ %7706, %7701 ], [ 0.000000e+00, %7700 ]
  %7714 = phi float [ %7635, %7689 ], [ %7699, %7690 ], [ %7710, %7701 ], [ %7635, %7700 ]
  %7715 = phi float [ %7640, %7689 ], [ %7640, %7690 ], [ %7629, %7701 ], [ %7629, %7700 ]
  %7716 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7716, align 4, !tbaa !125, !noalias !127
  %7717 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7717, align 4, !tbaa !125, !noalias !127
  %7718 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7718, align 4, !tbaa !125, !noalias !127
  %7719 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7719, align 4, !tbaa !125, !noalias !127
  %7720 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7720, align 4, !tbaa !125, !noalias !127
  %7721 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7721, align 4, !tbaa !125, !noalias !127
  %7722 = icmp sgt i32 %7581, 0
  br i1 %7722, label %7723, label %7784

; <label>:7723                                    ; preds = %7711
  br label %7724

; <label>:7724                                    ; preds = %7773, %7723
  %7725 = phi i32 [ %7774, %7773 ], [ 0, %7723 ]
  %7726 = phi i32 [ %7775, %7773 ], [ 0, %7723 ]
  %7727 = add nuw i32 %7726, 171
  %7728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %7727)  ; CBufferLoadLegacy(handle,regIndex)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7728, 0
  %7730 = extractvalue %dx.types.CBufRet.f32 %7728, 1
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 0
  %7733 = extractvalue %dx.types.CBufRet.f32 %7731, 1
  %7734 = fsub fast float %7729, %7732
  %7735 = fsub fast float %7730, %7733
  %7736 = extractvalue %dx.types.CBufRet.f32 %7728, 2
  %7737 = fsub fast float -0.000000e+00, %7734
  %7738 = fsub fast float -0.000000e+00, %7735
  %7739 = call float @dx.op.dot2.f32(i32 54, float %7558, float %7559, float %7737, float %7738)  ; Dot2(ax,ay,bx,by)
  %7740 = fmul fast float %7739, 2.000000e+00
  %7741 = call float @dx.op.dot2.f32(i32 54, float %7737, float %7738, float %7737, float %7738)  ; Dot2(ax,ay,bx,by)
  %7742 = fmul fast float %7736, %7736
  %7743 = fsub fast float %7741, %7742
  %7744 = fmul fast float %7740, %7740
  %7745 = fmul fast float %7601, %7743
  %7746 = fsub fast float %7744, %7745
  %7747 = fcmp fast ogt float %7746, 0.000000e+00
  br i1 %7747, label %7748, label %7763

; <label>:7748                                    ; preds = %7724
  %7749 = fcmp fast ogt float %7740, 0.000000e+00
  %7750 = call float @dx.op.unary.f32(i32 24, float %7746)  ; Sqrt(value)
  %7751 = fsub fast float -0.000000e+00, %7750
  %7752 = select i1 %7749, float %7750, float %7751
  %7753 = fadd fast float %7752, %7740
  %7754 = fmul float %7753, -5.000000e-01
  %7755 = fdiv fast float %7754, %7594
  %7756 = call float @dx.op.binary.f32(i32 35, float %7755, float 0.000000e+00)  ; FMax(a,b)
  %7757 = call float @dx.op.binary.f32(i32 36, float %7629, float %7756)  ; FMin(a,b)
  %7758 = fdiv fast float %7743, %7754
  %7759 = call float @dx.op.binary.f32(i32 35, float %7758, float 0.000000e+00)  ; FMax(a,b)
  %7760 = call float @dx.op.binary.f32(i32 36, float %7629, float %7759)  ; FMin(a,b)
  %7761 = call float @dx.op.binary.f32(i32 36, float %7757, float %7760)  ; FMin(a,b)
  %7762 = call float @dx.op.binary.f32(i32 35, float %7757, float %7760)  ; FMax(a,b)
  br label %7763

; <label>:7763                                    ; preds = %7748, %7724
  %7764 = phi float [ %7762, %7748 ], [ -1.000000e+00, %7724 ]
  %7765 = phi float [ %7761, %7748 ], [ -1.000000e+00, %7724 ]
  %7766 = phi i1 [ true, %7748 ], [ false, %7724 ]
  br i1 %7766, label %7767, label %7773

; <label>:7767                                    ; preds = %7763
  %7768 = call float @dx.op.binary.f32(i32 35, float %7712, float %7765)  ; FMax(a,b)
  %7769 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7726
  store float %7768, float* %7769, align 4, !tbaa !125, !noalias !127
  %7770 = call float @dx.op.binary.f32(i32 35, float %7712, float %7764)  ; FMax(a,b)
  %7771 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7726
  store float %7770, float* %7771, align 4, !tbaa !125, !noalias !127
  %7772 = add nsw i32 %7725, 1
  br label %7773

; <label>:7773                                    ; preds = %7767, %7763
  %7774 = phi i32 [ %7772, %7767 ], [ %7725, %7763 ]
  %7775 = add nuw nsw i32 %7726, 1
  %7776 = icmp eq i32 %7775, %7581
  br i1 %7776, label %7777, label %7724

; <label>:7777                                    ; preds = %7773
  %7778 = load float, float* %7718, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %7779 = load float, float* %7717, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  %7780 = load float, float* %7716, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  %7781 = load float, float* %7721, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %7782 = load float, float* %7720, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  %7783 = load float, float* %7719, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  br label %7784

; <label>:7784                                    ; preds = %7777, %7711
  %7785 = phi float [ -1.000000e+00, %7711 ], [ %7783, %7777 ]
  %7786 = phi float [ -1.000000e+00, %7711 ], [ %7782, %7777 ]
  %7787 = phi float [ -1.000000e+00, %7711 ], [ %7781, %7777 ]
  %7788 = phi float [ -1.000000e+00, %7711 ], [ %7780, %7777 ]
  %7789 = phi float [ -1.000000e+00, %7711 ], [ %7779, %7777 ]
  %7790 = phi float [ -1.000000e+00, %7711 ], [ %7778, %7777 ]
  %7791 = phi i32 [ 0, %7711 ], [ %7774, %7777 ]
  %7792 = call float @dx.op.binary.f32(i32 36, float %7789, float %7790)  ; FMin(a,b)
  %7793 = call float @dx.op.binary.f32(i32 36, float %7788, float %7792)  ; FMin(a,b)
  %7794 = call float @dx.op.binary.f32(i32 35, float %7788, float %7789)  ; FMax(a,b)
  %7795 = call float @dx.op.binary.f32(i32 36, float %7794, float %7790)  ; FMin(a,b)
  %7796 = call float @dx.op.binary.f32(i32 36, float %7788, float %7789)  ; FMin(a,b)
  %7797 = call float @dx.op.binary.f32(i32 35, float %7796, float %7795)  ; FMax(a,b)
  %7798 = call float @dx.op.binary.f32(i32 35, float %7789, float %7790)  ; FMax(a,b)
  %7799 = call float @dx.op.binary.f32(i32 35, float %7788, float %7798)  ; FMax(a,b)
  store float %7793, float* %7716, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  store float %7797, float* %7717, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  store float %7799, float* %7718, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %7800 = call float @dx.op.binary.f32(i32 36, float %7786, float %7787)  ; FMin(a,b)
  %7801 = call float @dx.op.binary.f32(i32 36, float %7785, float %7800)  ; FMin(a,b)
  %7802 = call float @dx.op.binary.f32(i32 35, float %7785, float %7786)  ; FMax(a,b)
  %7803 = call float @dx.op.binary.f32(i32 36, float %7802, float %7787)  ; FMin(a,b)
  %7804 = call float @dx.op.binary.f32(i32 36, float %7785, float %7786)  ; FMin(a,b)
  %7805 = call float @dx.op.binary.f32(i32 35, float %7804, float %7803)  ; FMax(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7786, float %7787)  ; FMax(a,b)
  %7807 = call float @dx.op.binary.f32(i32 35, float %7785, float %7806)  ; FMax(a,b)
  store float %7801, float* %7719, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %7805, float* %7720, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  store float %7807, float* %7721, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %7808 = sub nsw i32 3, %7791
  %7809 = icmp sgt i32 %7808, 2
  br i1 %7809, label %7810, label %7848

; <label>:7810                                    ; preds = %7784
  %7811 = icmp eq i32 %7579, 0
  %7812 = fsub fast float %7629, %7713
  %7813 = select i1 %7811, float %7812, float %7713
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.f32 %7818, 0
  %7820 = extractvalue %dx.types.CBufRet.f32 %7818, 1
  %7821 = extractvalue %dx.types.CBufRet.f32 %7818, 2
  %7822 = extractvalue %dx.types.CBufRet.f32 %7818, 3
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 3
  %7825 = call float @dx.op.binary.f32(i32 36, float %7714, float %7824)  ; FMin(a,b)
  %7826 = fmul fast float %7822, %7813
  %7827 = call float @dx.op.unary.f32(i32 7, float %7826)  ; Saturate(value)
  %7828 = fsub fast float %7819, %7815
  %7829 = fsub fast float %7820, %7816
  %7830 = fsub fast float %7821, %7817
  %7831 = fmul fast float %7827, %7828
  %7832 = fmul fast float %7827, %7829
  %7833 = fmul fast float %7827, %7830
  %7834 = fadd fast float %7831, %7815
  %7835 = fadd fast float %7832, %7816
  %7836 = fadd fast float %7833, %7817
  %7837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7837, 0
  %7839 = extractvalue %dx.types.CBufRet.f32 %7837, 1
  %7840 = fadd fast float %7839, %7838
  %7841 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7837, 2
  %7843 = extractvalue %dx.types.CBufRet.f32 %7837, 3
  %7844 = fadd fast float %7843, %7842
  %7845 = call float @dx.op.unary.f32(i32 7, float %7844)  ; Saturate(value)
  %7846 = fmul fast float %7841, %7825
  %7847 = fmul fast float %7846, %7845
  br label %7930

; <label>:7848                                    ; preds = %7784
  %7849 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7808
  %7850 = load float, float* %7849, align 4, !tbaa !125, !noalias !127
  %7851 = fcmp fast olt float %7850, %7715
  %7852 = icmp sgt i32 %7791, 0
  %7853 = and i1 %7852, %7851
  br i1 %7853, label %7854, label %7891

; <label>:7854                                    ; preds = %7848
  br label %7855

; <label>:7855                                    ; preds = %7884, %7854
  %7856 = phi float [ %7885, %7884 ], [ %7713, %7854 ]
  %7857 = phi float [ %7886, %7884 ], [ %7714, %7854 ]
  %7858 = phi float [ %7866, %7884 ], [ %7850, %7854 ]
  %7859 = phi i32 [ %7863, %7884 ], [ %7808, %7854 ]
  %7860 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7859
  %7861 = load float, float* %7860, align 4, !tbaa !125, !noalias !127
  %7862 = icmp slt i32 %7859, 2
  %7863 = add nsw i32 %7859, 1
  %7864 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7863
  %7865 = load float, float* %7864, align 4, !tbaa !125, !noalias !127
  %7866 = select i1 %7862, float %7865, float %7629
  %7867 = call float @dx.op.binary.f32(i32 36, float %7866, float %7861)  ; FMin(a,b)
  %7868 = call float @dx.op.binary.f32(i32 36, float %7715, float %7867)  ; FMin(a,b)
  %7869 = icmp eq i32 %7579, 0
  %7870 = fadd fast float %7868, %7858
  %7871 = fmul fast float %7870, %7560
  %7872 = fadd fast float %7871, %7573
  br i1 %7869, label %7878, label %7873

; <label>:7873                                    ; preds = %7855
  %7874 = fsub fast float %7868, %7858
  %7875 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7874)  ; FMax(a,b)
  %7876 = fmul fast float %7875, %7872
  %7877 = fadd fast float %7876, %7857
  br label %7884

; <label>:7878                                    ; preds = %7855
  %7879 = fsub fast float %7858, %7868
  %7880 = call float @dx.op.unary.f32(i32 6, float %7879)  ; FAbs(value)
  %7881 = fadd fast float %7880, %7856
  %7882 = fmul fast float %7880, %7872
  %7883 = fsub fast float %7857, %7882
  br label %7884

; <label>:7884                                    ; preds = %7878, %7873
  %7885 = phi float [ %7875, %7873 ], [ %7881, %7878 ]
  %7886 = phi float [ %7877, %7873 ], [ %7883, %7878 ]
  %7887 = fcmp fast olt float %7866, %7715
  %7888 = icmp slt i32 %7863, 3
  %7889 = and i1 %7888, %7887
  br i1 %7889, label %7855, label %7890

; <label>:7890                                    ; preds = %7884
  br label %7891

; <label>:7891                                    ; preds = %7890, %7848
  %7892 = phi float [ %7713, %7848 ], [ %7885, %7890 ]
  %7893 = phi float [ %7714, %7848 ], [ %7886, %7890 ]
  %7894 = fsub fast float %7629, %7892
  %7895 = select i1 %7631, float %7892, float %7894
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.CBufRet.f32 %7896, 1
  %7899 = extractvalue %dx.types.CBufRet.f32 %7896, 2
  %7900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.f32 %7900, 0
  %7902 = extractvalue %dx.types.CBufRet.f32 %7900, 1
  %7903 = extractvalue %dx.types.CBufRet.f32 %7900, 2
  %7904 = extractvalue %dx.types.CBufRet.f32 %7900, 3
  %7905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7906 = extractvalue %dx.types.CBufRet.f32 %7905, 3
  %7907 = call float @dx.op.binary.f32(i32 36, float %7893, float %7906)  ; FMin(a,b)
  %7908 = fmul fast float %7904, %7895
  %7909 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7910 = fsub fast float %7901, %7897
  %7911 = fsub fast float %7902, %7898
  %7912 = fsub fast float %7903, %7899
  %7913 = fmul fast float %7909, %7910
  %7914 = fmul fast float %7909, %7911
  %7915 = fmul fast float %7909, %7912
  %7916 = fadd fast float %7913, %7897
  %7917 = fadd fast float %7914, %7898
  %7918 = fadd fast float %7915, %7899
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7922 = fadd fast float %7921, %7920
  %7923 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7919, 2
  %7925 = extractvalue %dx.types.CBufRet.f32 %7919, 3
  %7926 = fadd fast float %7925, %7924
  %7927 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7928 = fmul fast float %7923, %7907
  %7929 = fmul fast float %7928, %7927
  br label %7930

; <label>:7930                                    ; preds = %7891, %7810, %7645, %7627, %7625
  %7931 = phi float [ %7654, %7645 ], [ %7813, %7810 ], [ %7895, %7891 ], [ 0.000000e+00, %7625 ], [ 0.000000e+00, %7627 ]
  %7932 = phi float [ %7688, %7645 ], [ %7847, %7810 ], [ %7929, %7891 ], [ 0.000000e+00, %7625 ], [ 0.000000e+00, %7627 ]
  %7933 = phi float [ %7675, %7645 ], [ %7834, %7810 ], [ %7916, %7891 ], [ 0.000000e+00, %7625 ], [ 0.000000e+00, %7627 ]
  %7934 = phi float [ %7676, %7645 ], [ %7835, %7810 ], [ %7917, %7891 ], [ 0.000000e+00, %7625 ], [ 0.000000e+00, %7627 ]
  %7935 = phi float [ %7677, %7645 ], [ %7836, %7810 ], [ %7918, %7891 ], [ 0.000000e+00, %7625 ], [ 0.000000e+00, %7627 ]
  %7936 = fmul fast float %7568, %7932
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 2
  %7939 = fsub fast float %7575, %7938
  %7940 = fcmp fast olt float %7936, -2.000000e+01
  %7941 = call float @dx.op.unary.f32(i32 21, float %7936)  ; Exp(value)
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 2
  %7944 = extractvalue %dx.types.CBufRet.f32 %7942, 3
  %7945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.f32 %7945, 2
  %7947 = fmul fast float %7944, %7939
  %7948 = call float @dx.op.unary.f32(i32 7, float %7947)  ; Saturate(value)
  %7949 = fsub fast float 1.000000e+00, %7948
  %7950 = fmul fast float %7560, 5.000000e-01
  %7951 = fadd fast float %7950, 5.000000e-01
  %7952 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7953 = fsub fast float 1.000000e+00, %7952
  %7954 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7949)  ; FMax(a,b)
  %7955 = fdiv fast float %7953, %7954
  %7956 = fsub fast float %7939, %7517
  %7957 = call float @dx.op.unary.f32(i32 6, float %7956)  ; FAbs(value)
  %7958 = fmul fast float %7957, %7943
  %7959 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7960 = fsub fast float 1.000000e+00, %7958
  %7961 = fmul fast float %7960, %7959
  %7962 = fadd fast float %7961, %7958
  %7963 = fmul fast float %7946, %7939
  %7964 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7965 = fsub fast float 1.000000e+00, %7962
  %7966 = fmul fast float %7965, %7964
  %7967 = fadd fast float %7966, %7962
  %7968 = call float @dx.op.unary.f32(i32 7, float %7967)  ; Saturate(value)
  %7969 = fadd fast float %7941, -1.000000e+00
  %7970 = select i1 %7940, float -1.000000e+00, float %7969
  %7971 = fmul fast float %7968, %7970
  %7972 = fadd fast float %7971, 1.000000e+00
  %7973 = fsub fast float -0.000000e+00, %7971
  %7974 = fmul fast float %7933, %7973
  %7975 = fmul fast float %7934, %7973
  %7976 = fmul fast float %7935, %7973
  br label %7977

; <label>:7977                                    ; preds = %7930, %7526
  %7978 = phi float [ %7931, %7930 ], [ 0.000000e+00, %7526 ]
  %7979 = phi float [ %7972, %7930 ], [ 1.000000e+00, %7526 ]
  %7980 = phi float [ %7974, %7930 ], [ 0.000000e+00, %7526 ]
  %7981 = phi float [ %7975, %7930 ], [ 0.000000e+00, %7526 ]
  %7982 = phi float [ %7976, %7930 ], [ 0.000000e+00, %7526 ]
  %7983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7983, 1
  %7985 = fsub fast float 1.000000e+00, %7979
  %7986 = fmul fast float %7985, %7561
  %7987 = fmul fast float %7986, %7984
  %7988 = fsub fast float %7561, %7987
  br i1 %7554, label %7989, label %8018, !dx.controlflow.hints !163

; <label>:7989                                    ; preds = %7977
  %7990 = fmul fast float %7562, %7551
  %7991 = fadd fast float %7990, %7552
  %7992 = call float @dx.op.unary.f32(i32 7, float %7991)  ; Saturate(value)
  %7993 = fmul fast float %7533, %7988
  %7994 = fsub fast float -0.000000e+00, %7993
  %7995 = fmul fast float %7534, %7988
  %7996 = fsub fast float -0.000000e+00, %7995
  %7997 = call float @dx.op.unary.f32(i32 21, float %7994)  ; Exp(value)
  %7998 = call float @dx.op.unary.f32(i32 21, float %7996)  ; Exp(value)
  %7999 = call float @dx.op.binary.f32(i32 35, float %7541, float %7997)  ; FMax(a,b)
  %8000 = call float @dx.op.binary.f32(i32 35, float %7541, float %7998)  ; FMax(a,b)
  %8001 = fsub fast float %8000, %7999
  %8002 = fmul fast float %8001, %7992
  %8003 = fadd fast float %8002, %7999
  %8004 = call float @dx.op.unary.f32(i32 7, float %8003)  ; Saturate(value)
  %8005 = fsub fast float %7538, %7543
  %8006 = fsub fast float %7539, %7544
  %8007 = fsub fast float %7540, %7545
  %8008 = fmul fast float %7992, %8005
  %8009 = fmul fast float %7992, %8006
  %8010 = fmul fast float %7992, %8007
  %8011 = fadd fast float %8008, %7543
  %8012 = fadd fast float %8009, %7544
  %8013 = fadd fast float %8010, %7545
  %8014 = fsub fast float 1.000000e+00, %8004
  %8015 = fmul fast float %8014, %8011
  %8016 = fmul fast float %8014, %8012
  %8017 = fmul fast float %8014, %8013
  br label %8077

; <label>:8018                                    ; preds = %7977
  %8019 = fmul fast float %7988, %7550
  %8020 = call float @dx.op.unary.f32(i32 7, float %8019)  ; Saturate(value)
  %8021 = fsub fast float 2.000000e+00, %8020
  %8022 = fmul fast float %8020, 9.921875e-01
  %8023 = fmul fast float %8022, %8021
  %8024 = fadd fast float %8023, 3.906250e-03
  %8025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %46, float %8024, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8026 = extractvalue %dx.types.ResRet.f32 %8025, 0
  %8027 = fsub fast float %8020, %8026
  %8028 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8027)  ; FMax(a,b)
  %8029 = fmul fast float %7536, %7517
  %8030 = call float @dx.op.unary.f32(i32 6, float %8029)  ; FAbs(value)
  %8031 = fcmp fast ogt float %8030, 0x3EB0C6F7A0000000
  br i1 %8031, label %8032, label %8038, !dx.controlflow.hints !164

; <label>:8032                                    ; preds = %8018
  %8033 = fmul fast float %8029, 0xBFF7154760000000
  %8034 = call float @dx.op.unary.f32(i32 21, float %8033)  ; Exp(value)
  %8035 = fsub fast float 1.000000e+00, %8034
  %8036 = fdiv fast float %8035, %8029
  %8037 = fmul fast float %8036, %7546
  br label %8038

; <label>:8038                                    ; preds = %8032, %8018
  %8039 = phi float [ %8037, %8032 ], [ %7546, %8018 ]
  %8040 = fadd fast float %8039, %7548
  %8041 = fmul fast float %8040, %8028
  %8042 = fmul fast float %7533, %8041
  %8043 = fsub fast float -0.000000e+00, %8042
  %8044 = fmul fast float %7534, %8041
  %8045 = fsub fast float -0.000000e+00, %8044
  %8046 = fmul fast float %7535, %8041
  %8047 = fsub fast float -0.000000e+00, %8046
  %8048 = call float @dx.op.unary.f32(i32 21, float %8043)  ; Exp(value)
  %8049 = call float @dx.op.unary.f32(i32 21, float %8045)  ; Exp(value)
  %8050 = call float @dx.op.unary.f32(i32 21, float %8047)  ; Exp(value)
  %8051 = fmul fast float %7562, %7562
  %8052 = fadd fast float %8051, 1.000000e+00
  %8053 = fmul fast float %8052, 0x3FAE8EC8A0000000
  %8054 = fmul fast float %8053, %7543
  %8055 = fmul fast float %8053, %7544
  %8056 = fmul fast float %8053, %7545
  %8057 = fmul fast float %7562, %7541
  %8058 = fsub fast float 1.000000e+00, %8057
  %8059 = fmul fast float %7541, %7541
  %8060 = fsub fast float 1.000000e+00, %8059
  %8061 = fmul fast float %8060, 0x3FB45F3060000000
  %8062 = fmul fast float %8058, %8058
  %8063 = fdiv fast float 1.000000e+00, %8062
  %8064 = fmul fast float %8061, %8063
  %8065 = fmul fast float %8064, %7538
  %8066 = fmul fast float %8064, %7539
  %8067 = fmul fast float %8064, %7540
  %8068 = fadd fast float %8065, %8054
  %8069 = fadd fast float %8066, %8055
  %8070 = fadd fast float %8067, %8056
  %8071 = fsub fast float 1.000000e+00, %8048
  %8072 = fsub fast float 1.000000e+00, %8049
  %8073 = fsub fast float 1.000000e+00, %8050
  %8074 = fmul fast float %8068, %8071
  %8075 = fmul fast float %8069, %8072
  %8076 = fmul fast float %8070, %8073
  br label %8077

; <label>:8077                                    ; preds = %8038, %7989
  %8078 = phi float [ %8015, %7989 ], [ %8074, %8038 ]
  %8079 = phi float [ %8016, %7989 ], [ %8075, %8038 ]
  %8080 = phi float [ %8017, %7989 ], [ %8076, %8038 ]
  %8081 = phi float [ %8004, %7989 ], [ %8048, %8038 ]
  %8082 = phi float [ %8004, %7989 ], [ %8049, %8038 ]
  %8083 = phi float [ %8004, %7989 ], [ %8050, %8038 ]
  br i1 %7570, label %8084, label %8282, !dx.controlflow.hints !165

; <label>:8084                                    ; preds = %8077
  %8085 = extractvalue %dx.types.CBufRet.f32 %7983, 0
  %8086 = fmul fast float %8085, %7985
  %8087 = fsub fast float %7980, %8078
  %8088 = fsub fast float %7981, %8079
  %8089 = fsub fast float %7982, %8080
  %8090 = fmul fast float %8086, %8087
  %8091 = fmul fast float %8086, %8088
  %8092 = fmul fast float %8086, %8089
  %8093 = fadd fast float %8090, %8078
  %8094 = fadd fast float %8091, %8079
  %8095 = fadd fast float %8092, %8080
  %8096 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8081)  ; FMax(a,b)
  %8097 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8082)  ; FMax(a,b)
  %8098 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8083)  ; FMax(a,b)
  %8099 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7979)  ; FMax(a,b)
  %8100 = call float @dx.op.binary.f32(i32 35, float %7978, float %7988)  ; FMax(a,b)
  %8101 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8100)  ; FMax(a,b)
  %8102 = fdiv fast float %7978, %8101
  %8103 = call float @dx.op.unary.f32(i32 7, float %8102)  ; Saturate(value)
  %8104 = fdiv fast float %7988, %8101
  %8105 = call float @dx.op.unary.f32(i32 7, float %8104)  ; Saturate(value)
  %8106 = fcmp fast une float %8099, 1.000000e+00
  br i1 %8106, label %8107, label %8120, !dx.controlflow.hints !166

; <label>:8107                                    ; preds = %8084
  %8108 = call float @dx.op.unary.f32(i32 23, float %8099)  ; Log(value)
  %8109 = fmul fast float %8108, 0x3FE62E4300000000
  %8110 = fmul fast float %7980, %8109
  %8111 = fsub fast float -0.000000e+00, %8110
  %8112 = fmul fast float %7981, %8109
  %8113 = fsub fast float -0.000000e+00, %8112
  %8114 = fmul fast float %7982, %8109
  %8115 = fsub fast float -0.000000e+00, %8114
  %8116 = fsub fast float 1.000000e+00, %8099
  %8117 = fdiv fast float %8111, %8116
  %8118 = fdiv fast float %8113, %8116
  %8119 = fdiv fast float %8115, %8116
  br label %8120

; <label>:8120                                    ; preds = %8107, %8084
  %8121 = phi float [ %8117, %8107 ], [ %7980, %8084 ]
  %8122 = phi float [ %8118, %8107 ], [ %7981, %8084 ]
  %8123 = phi float [ %8119, %8107 ], [ %7982, %8084 ]
  %8124 = phi float [ %8109, %8107 ], [ 0.000000e+00, %8084 ]
  %8125 = fcmp fast une float %8096, 1.000000e+00
  br i1 %8125, label %8126, label %8133, !dx.controlflow.hints !167

; <label>:8126                                    ; preds = %8120
  %8127 = call float @dx.op.unary.f32(i32 23, float %8096)  ; Log(value)
  %8128 = fmul fast float %8127, 0x3FE62E4300000000
  %8129 = fmul fast float %8093, %8128
  %8130 = fsub fast float -0.000000e+00, %8129
  %8131 = fsub fast float 1.000000e+00, %8096
  %8132 = fdiv fast float %8130, %8131
  br label %8133

; <label>:8133                                    ; preds = %8126, %8120
  %8134 = phi float [ %8132, %8126 ], [ %8093, %8120 ]
  %8135 = phi float [ %8128, %8126 ], [ 0.000000e+00, %8120 ]
  %8136 = fcmp fast une float %8097, 1.000000e+00
  br i1 %8136, label %8137, label %8144, !dx.controlflow.hints !167

; <label>:8137                                    ; preds = %8133
  %8138 = call float @dx.op.unary.f32(i32 23, float %8097)  ; Log(value)
  %8139 = fmul fast float %8138, 0x3FE62E4300000000
  %8140 = fmul fast float %8094, %8139
  %8141 = fsub fast float -0.000000e+00, %8140
  %8142 = fsub fast float 1.000000e+00, %8097
  %8143 = fdiv fast float %8141, %8142
  br label %8144

; <label>:8144                                    ; preds = %8137, %8133
  %8145 = phi float [ %8143, %8137 ], [ %8094, %8133 ]
  %8146 = phi float [ %8139, %8137 ], [ 0.000000e+00, %8133 ]
  %8147 = fcmp fast une float %8098, 1.000000e+00
  br i1 %8147, label %8148, label %8155, !dx.controlflow.hints !167

; <label>:8148                                    ; preds = %8144
  %8149 = call float @dx.op.unary.f32(i32 23, float %8098)  ; Log(value)
  %8150 = fmul fast float %8149, 0x3FE62E4300000000
  %8151 = fmul fast float %8095, %8150
  %8152 = fsub fast float -0.000000e+00, %8151
  %8153 = fsub fast float 1.000000e+00, %8098
  %8154 = fdiv fast float %8152, %8153
  br label %8155

; <label>:8155                                    ; preds = %8148, %8144
  %8156 = phi float [ %8154, %8148 ], [ %8095, %8144 ]
  %8157 = phi float [ %8150, %8148 ], [ 0.000000e+00, %8144 ]
  %8158 = fmul fast float %8121, %8105
  %8159 = fmul fast float %8122, %8105
  %8160 = fmul fast float %8123, %8105
  %8161 = fmul fast float %8124, %8105
  %8162 = fmul fast float %8134, %8103
  %8163 = fmul fast float %8145, %8103
  %8164 = fmul fast float %8156, %8103
  %8165 = fmul fast float %8135, %8103
  %8166 = fmul fast float %8146, %8103
  %8167 = fmul fast float %8157, %8103
  %8168 = fadd fast float %8162, %8158
  %8169 = fadd fast float %8163, %8159
  %8170 = fadd fast float %8164, %8160
  %8171 = fadd fast float %8165, %8161
  %8172 = fadd fast float %8166, %8161
  %8173 = fadd fast float %8167, %8161
  %8174 = fcmp fast une float %8171, 0.000000e+00
  br i1 %8174, label %8175, label %8182, !dx.controlflow.hints !168

; <label>:8175                                    ; preds = %8155
  %8176 = fmul fast float %8171, 0x3FF7154760000000
  %8177 = call float @dx.op.unary.f32(i32 21, float %8176)  ; Exp(value)
  %8178 = fsub fast float 1.000000e+00, %8177
  %8179 = fmul fast float %8168, %8178
  %8180 = fsub fast float -0.000000e+00, %8179
  %8181 = fdiv fast float %8180, %8171
  br label %8182

; <label>:8182                                    ; preds = %8175, %8155
  %8183 = phi float [ %8177, %8175 ], [ 1.000000e+00, %8155 ]
  %8184 = phi float [ %8181, %8175 ], [ %8168, %8155 ]
  %8185 = fcmp fast une float %8172, 0.000000e+00
  br i1 %8185, label %8186, label %8193, !dx.controlflow.hints !168

; <label>:8186                                    ; preds = %8182
  %8187 = fmul fast float %8172, 0x3FF7154760000000
  %8188 = call float @dx.op.unary.f32(i32 21, float %8187)  ; Exp(value)
  %8189 = fsub fast float 1.000000e+00, %8188
  %8190 = fmul fast float %8169, %8189
  %8191 = fsub fast float -0.000000e+00, %8190
  %8192 = fdiv fast float %8191, %8172
  br label %8193

; <label>:8193                                    ; preds = %8186, %8182
  %8194 = phi float [ %8188, %8186 ], [ 1.000000e+00, %8182 ]
  %8195 = phi float [ %8192, %8186 ], [ %8169, %8182 ]
  %8196 = fcmp fast une float %8173, 0.000000e+00
  br i1 %8196, label %8197, label %8204, !dx.controlflow.hints !168

; <label>:8197                                    ; preds = %8193
  %8198 = fmul fast float %8173, 0x3FF7154760000000
  %8199 = call float @dx.op.unary.f32(i32 21, float %8198)  ; Exp(value)
  %8200 = fsub fast float 1.000000e+00, %8199
  %8201 = fmul fast float %8170, %8200
  %8202 = fsub fast float -0.000000e+00, %8201
  %8203 = fdiv fast float %8202, %8173
  br label %8204

; <label>:8204                                    ; preds = %8197, %8193
  %8205 = phi float [ %8199, %8197 ], [ 1.000000e+00, %8193 ]
  %8206 = phi float [ %8203, %8197 ], [ %8170, %8193 ]
  %8207 = fcmp fast ogt float %8103, %8105
  br i1 %8207, label %8208, label %8228

; <label>:8208                                    ; preds = %8204
  %8209 = fsub fast float 1.000000e+00, %8105
  %8210 = fmul fast float %8121, %8209
  %8211 = fmul fast float %8122, %8209
  %8212 = fmul fast float %8123, %8209
  %8213 = fmul fast float %8124, %8209
  %8214 = fcmp fast une float %8213, 0.000000e+00
  br i1 %8214, label %8215, label %8266, !dx.controlflow.hints !169

; <label>:8215                                    ; preds = %8208
  %8216 = fmul fast float %8213, 0x3FF7154760000000
  %8217 = call float @dx.op.unary.f32(i32 21, float %8216)  ; Exp(value)
  %8218 = fsub fast float 1.000000e+00, %8217
  %8219 = fmul fast float %8210, %8218
  %8220 = fsub fast float -0.000000e+00, %8219
  %8221 = fmul fast float %8211, %8218
  %8222 = fsub fast float -0.000000e+00, %8221
  %8223 = fmul fast float %8212, %8218
  %8224 = fsub fast float -0.000000e+00, %8223
  %8225 = fdiv fast float %8220, %8213
  %8226 = fdiv fast float %8222, %8213
  %8227 = fdiv fast float %8224, %8213
  br label %8266

; <label>:8228                                    ; preds = %8204
  %8229 = fsub fast float 1.000000e+00, %8103
  %8230 = fmul fast float %8134, %8229
  %8231 = fmul fast float %8145, %8229
  %8232 = fmul fast float %8156, %8229
  %8233 = fmul fast float %8135, %8229
  %8234 = fmul fast float %8146, %8229
  %8235 = fmul fast float %8157, %8229
  %8236 = fcmp fast une float %8233, 0.000000e+00
  br i1 %8236, label %8237, label %8244, !dx.controlflow.hints !168

; <label>:8237                                    ; preds = %8228
  %8238 = fmul fast float %8233, 0x3FF7154760000000
  %8239 = call float @dx.op.unary.f32(i32 21, float %8238)  ; Exp(value)
  %8240 = fsub fast float 1.000000e+00, %8239
  %8241 = fmul fast float %8230, %8240
  %8242 = fsub fast float -0.000000e+00, %8241
  %8243 = fdiv fast float %8242, %8233
  br label %8244

; <label>:8244                                    ; preds = %8237, %8228
  %8245 = phi float [ %8243, %8237 ], [ %8230, %8228 ]
  %8246 = phi float [ %8239, %8237 ], [ 1.000000e+00, %8228 ]
  %8247 = fcmp fast une float %8234, 0.000000e+00
  br i1 %8247, label %8248, label %8255, !dx.controlflow.hints !168

; <label>:8248                                    ; preds = %8244
  %8249 = fmul fast float %8234, 0x3FF7154760000000
  %8250 = call float @dx.op.unary.f32(i32 21, float %8249)  ; Exp(value)
  %8251 = fsub fast float 1.000000e+00, %8250
  %8252 = fmul fast float %8231, %8251
  %8253 = fsub fast float -0.000000e+00, %8252
  %8254 = fdiv fast float %8253, %8234
  br label %8255

; <label>:8255                                    ; preds = %8248, %8244
  %8256 = phi float [ %8254, %8248 ], [ %8231, %8244 ]
  %8257 = phi float [ %8250, %8248 ], [ 1.000000e+00, %8244 ]
  %8258 = fcmp fast une float %8235, 0.000000e+00
  br i1 %8258, label %8259, label %8266, !dx.controlflow.hints !168

; <label>:8259                                    ; preds = %8255
  %8260 = fmul fast float %8235, 0x3FF7154760000000
  %8261 = call float @dx.op.unary.f32(i32 21, float %8260)  ; Exp(value)
  %8262 = fsub fast float 1.000000e+00, %8261
  %8263 = fmul fast float %8232, %8262
  %8264 = fsub fast float -0.000000e+00, %8263
  %8265 = fdiv fast float %8264, %8235
  br label %8266

; <label>:8266                                    ; preds = %8259, %8255, %8215, %8208
  %8267 = phi float [ %8265, %8259 ], [ %8227, %8215 ], [ %8212, %8208 ], [ %8232, %8255 ]
  %8268 = phi float [ %8256, %8259 ], [ %8226, %8215 ], [ %8211, %8208 ], [ %8256, %8255 ]
  %8269 = phi float [ %8245, %8259 ], [ %8225, %8215 ], [ %8210, %8208 ], [ %8245, %8255 ]
  %8270 = phi float [ %8261, %8259 ], [ %8217, %8215 ], [ 1.000000e+00, %8208 ], [ 1.000000e+00, %8255 ]
  %8271 = phi float [ %8257, %8259 ], [ %8217, %8215 ], [ 1.000000e+00, %8208 ], [ %8257, %8255 ]
  %8272 = phi float [ %8246, %8259 ], [ %8217, %8215 ], [ 1.000000e+00, %8208 ], [ %8246, %8255 ]
  %8273 = fmul fast float %8272, %8184
  %8274 = fmul fast float %8271, %8195
  %8275 = fmul fast float %8270, %8206
  %8276 = fadd fast float %8273, %8269
  %8277 = fadd fast float %8274, %8268
  %8278 = fadd fast float %8275, %8267
  %8279 = fmul fast float %8272, %8183
  %8280 = fmul fast float %8271, %8194
  %8281 = fmul fast float %8270, %8205
  br label %8282

; <label>:8282                                    ; preds = %8266, %8077
  %8283 = phi float [ %8281, %8266 ], [ %8083, %8077 ]
  %8284 = phi float [ %8280, %8266 ], [ %8082, %8077 ]
  %8285 = phi float [ %8279, %8266 ], [ %8081, %8077 ]
  %8286 = phi float [ %8278, %8266 ], [ %8080, %8077 ]
  %8287 = phi float [ %8277, %8266 ], [ %8079, %8077 ]
  %8288 = phi float [ %8276, %8266 ], [ %8078, %8077 ]
  %8289 = fmul fast float %8288, %7239
  %8290 = fmul fast float %8287, %7241
  %8291 = fmul fast float %8286, %7243
  %8292 = fmul fast float %8285, %7525
  %8293 = call float @dx.op.dot3.f32(i32 55, float %8285, float %8284, float %8283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8294 = call float @dx.op.dot3.f32(i32 55, float %8289, float %8290, float %8291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8295 = select i1 %292, float %8293, float %8285
  %8296 = select i1 %292, float %8293, float %8284
  %8297 = select i1 %292, float 1.000000e+00, float %8283
  %8298 = select i1 %292, float %8294, float %8289
  %8299 = select i1 %292, float 0.000000e+00, float %8290
  %8300 = select i1 %292, float 0.000000e+00, float %8291
  %8301 = fmul fast float %8295, %7519
  %8302 = fmul fast float %8296, %7520
  %8303 = fmul fast float %8297, %7521
  %8304 = fadd fast float %8301, %8298
  %8305 = fadd fast float %8302, %8299
  %8306 = fadd fast float %8300, %8303
  %8307 = fmul fast float %8295, %7522
  %8308 = fmul fast float %8296, %7523
  %8309 = fmul fast float %8297, %7524
  %8310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.i32 %8310, 0
  %8312 = icmp eq i32 %8311, 0
  br i1 %8312, label %8680, label %8313, !dx.controlflow.hints !170

; <label>:8313                                    ; preds = %8282
  %8314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8315 = extractvalue %dx.types.CBufRet.f32 %8314, 2
  %8316 = extractvalue %dx.types.CBufRet.f32 %8314, 3
  %8317 = fmul fast float %8315, %105
  %8318 = fmul fast float %8316, %106
  %8319 = fmul fast float %8317, 2.000000e+00
  %8320 = fmul fast float %8318, 2.000000e+00
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
  %8347 = fmul fast float %8342, %7518
  %8348 = fmul fast float %8344, %7518
  %8349 = fmul fast float %8346, %7518
  %8350 = fmul fast float %8347, %8347
  %8351 = fmul fast float %8348, %8348
  %8352 = fadd fast float %8350, %8351
  %8353 = fmul fast float %8349, %8349
  %8354 = fadd fast float %8352, %8353
  %8355 = call float @dx.op.unary.f32(i32 24, float %8354)  ; Sqrt(value)
  %8356 = extractvalue %dx.types.CBufRet.f32 %7231, 0
  %8357 = fsub fast float %8355, %8356
  %8358 = extractvalue %dx.types.CBufRet.f32 %7231, 2
  %8359 = fmul fast float %8357, %8358
  %8360 = call float @dx.op.unary.f32(i32 7, float %8359)  ; Saturate(value)
  %8361 = fadd fast float %8360, -5.000000e-01
  %8362 = fmul fast float %8361, 2.000000e+00
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 2
  %8365 = call float @dx.op.binary.f32(i32 36, float %8364, float %8362)  ; FMin(a,b)
  %8366 = fsub fast float -0.000000e+00, %8364
  %8367 = fcmp fast ogt float %8365, %8366
  br i1 %8367, label %8368, label %8680, !dx.controlflow.hints !171

; <label>:8368                                    ; preds = %8313
  %8369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8370 = extractvalue %dx.types.CBufRet.f32 %8369, 3
  %8371 = fcmp fast ogt float %8370, 0.000000e+00
  br i1 %8371, label %8372, label %8447, !dx.controlflow.hints !172

; <label>:8372                                    ; preds = %8368
  %8373 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8374 = extractvalue %dx.types.Dimensions %8373, 0
  %8375 = sitofp i32 %8374 to float
  %8376 = extractvalue %dx.types.Dimensions %8373, 1
  %8377 = sitofp i32 %8376 to float
  %8378 = fmul fast float %8317, %8375
  %8379 = fmul fast float %8318, %8377
  %8380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8380, 1
  %8382 = fsub fast float -0.000000e+00, %8381
  %8383 = fptoui float %8382 to i32
  %8384 = fptoui float %8378 to i32
  %8385 = fptoui float %8379 to i32
  %8386 = and i32 %8383, 31
  %8387 = lshr i32 %8384, %8386
  %8388 = lshr i32 %8385, %8386
  %8389 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8383, i32 %8387, i32 %8388, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8390 = extractvalue %dx.types.ResRet.f32 %8389, 0
  %8391 = fcmp fast olt float %8390, -1.000000e+00
  %8392 = fcmp fast ogt float %8390, -1.000000e+00
  %8393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8394 = extractvalue %dx.types.CBufRet.f32 %8393, 1
  %8395 = select i1 %8392, float %8394, float 1.000000e+00
  %8396 = fadd fast float %8390, 1.000000e+00
  %8397 = fmul fast float %8395, %8396
  %8398 = call float @dx.op.unary.f32(i32 6, float %8397)  ; FAbs(value)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8393, 3
  %8400 = fcmp fast oge float %8398, %8399
  %8401 = select i1 %8400, float 0x4197782600000000, float %8398
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 0
  %8404 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8405 = extractvalue %dx.types.CBufRet.f32 %8402, 2
  %8406 = select i1 %8391, float %8403, float %8324
  %8407 = select i1 %8391, float %8404, float %8325
  %8408 = select i1 %8391, float %8405, float %8326
  %8409 = fmul fast float %8406, %8321
  %8410 = fmul fast float %8407, %8321
  %8411 = fmul fast float %8408, %8321
  %8412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8413 = extractvalue %dx.types.CBufRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.CBufRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.CBufRet.f32 %8412, 2
  %8416 = select i1 %8391, float %8413, float %8331
  %8417 = select i1 %8391, float %8414, float %8332
  %8418 = select i1 %8391, float %8415, float %8333
  %8419 = fmul fast float %8416, %8322
  %8420 = fmul fast float %8417, %8322
  %8421 = fmul fast float %8418, %8322
  %8422 = fadd fast float %8419, %8409
  %8423 = fadd fast float %8420, %8410
  %8424 = fadd fast float %8421, %8411
  %8425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8426 = extractvalue %dx.types.CBufRet.f32 %8425, 0
  %8427 = extractvalue %dx.types.CBufRet.f32 %8425, 1
  %8428 = extractvalue %dx.types.CBufRet.f32 %8425, 2
  %8429 = select i1 %8391, float %8426, float %8338
  %8430 = select i1 %8391, float %8427, float %8339
  %8431 = select i1 %8391, float %8428, float %8340
  %8432 = fadd fast float %8422, %8429
  %8433 = fadd fast float %8423, %8430
  %8434 = fadd fast float %8424, %8431
  %8435 = fmul fast float %8432, %8401
  %8436 = fmul fast float %8433, %8401
  %8437 = fmul fast float %8434, %8401
  %8438 = fmul fast float %8435, %8435
  %8439 = fmul fast float %8436, %8436
  %8440 = fadd fast float %8438, %8439
  %8441 = fmul fast float %8437, %8437
  %8442 = fadd fast float %8440, %8441
  %8443 = call float @dx.op.unary.f32(i32 24, float %8442)  ; Sqrt(value)
  %8444 = fsub fast float %8443, %8356
  %8445 = fmul fast float %8444, %8358
  %8446 = call float @dx.op.unary.f32(i32 7, float %8445)  ; Saturate(value)
  br label %8447

; <label>:8447                                    ; preds = %8372, %8368
  %8448 = phi float [ %8446, %8372 ], [ 1.000000e+00, %8368 ]
  %8449 = fmul fast float %8365, 5.000000e-01
  %8450 = fadd fast float %8449, 5.000000e-01
  %8451 = call float @dx.op.unary.f32(i32 22, float %8450)  ; Frc(value)
  %8452 = call float @dx.op.unary.f32(i32 27, float %8451)  ; Round_ni(value)
  %8453 = call float @dx.op.unary.f32(i32 22, float %8451)  ; Frc(value)
  %8454 = fmul fast float %8453, 2.000000e+00
  %8455 = fadd fast float %8454, -1.000000e+00
  %8456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %46, float %8317, float %8318, float %8452, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8457 = extractvalue %dx.types.ResRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.ResRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.ResRet.f32 %8456, 2
  %8460 = extractvalue %dx.types.ResRet.f32 %8456, 3
  %8461 = fadd fast float %8457, -5.000000e-01
  %8462 = fadd fast float %8459, -5.000000e-01
  %8463 = fmul fast float %8461, 0xBFD5555560000000
  %8464 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8462, float %8463)  ; FMad(a,b,c)
  %8465 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8458, float 0.000000e+00)  ; FMad(a,b,c)
  %8466 = fadd fast float %8465, %8460
  %8467 = fmul fast float %8461, -7.500000e-01
  %8468 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8462, float %8467)  ; FMad(a,b,c)
  %8469 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8458, float 0.000000e+00)  ; FMad(a,b,c)
  %8470 = fadd fast float %8469, %8460
  %8471 = call float @dx.op.binary.f32(i32 35, float %8464, float -1.000000e+00)  ; FMax(a,b)
  %8472 = call float @dx.op.binary.f32(i32 35, float %8466, float -1.000000e+00)  ; FMax(a,b)
  %8473 = call float @dx.op.binary.f32(i32 35, float %8468, float -1.000000e+00)  ; FMax(a,b)
  %8474 = call float @dx.op.binary.f32(i32 35, float %8470, float -1.000000e+00)  ; FMax(a,b)
  %8475 = call float @dx.op.binary.f32(i32 36, float %8471, float 1.000000e+00)  ; FMin(a,b)
  %8476 = call float @dx.op.binary.f32(i32 36, float %8472, float 1.000000e+00)  ; FMin(a,b)
  %8477 = call float @dx.op.binary.f32(i32 36, float %8473, float 1.000000e+00)  ; FMin(a,b)
  %8478 = call float @dx.op.binary.f32(i32 36, float %8474, float 1.000000e+00)  ; FMin(a,b)
  %8479 = fcmp fast olt float %8475, 0x3FEFFF8020000000
  br i1 %8479, label %8480, label %8595, !dx.controlflow.hints !173

; <label>:8480                                    ; preds = %8447
  %8481 = extractvalue %dx.types.CBufRet.f32 %8363, 3
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8486 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8487 = fsub fast float %8483, %8475
  %8488 = fsub fast float %8484, %8476
  %8489 = fsub fast float %8485, %8477
  %8490 = fsub fast float %8486, %8478
  %8491 = fmul fast float %8487, %8481
  %8492 = fmul fast float %8488, %8481
  %8493 = fmul fast float %8489, %8481
  %8494 = fmul fast float %8490, %8481
  %8495 = fadd fast float %8491, %8475
  %8496 = fadd fast float %8492, %8476
  %8497 = fsub fast float -0.000000e+00, %8496
  %8498 = fadd fast float %8493, %8477
  %8499 = fadd fast float %8494, %8478
  %8500 = fmul fast float %8495, %8495
  %8501 = fsub fast float %8496, %8500
  %8502 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8501)  ; FMax(a,b)
  %8503 = fdiv fast float 1.000000e+00, %8502
  %8504 = fmul fast float %8496, %8495
  %8505 = fsub fast float %8498, %8504
  %8506 = fsub fast float %8455, %8495
  %8507 = fmul fast float %8455, %8455
  %8508 = fsub fast float %8507, %8496
  %8509 = fmul fast float %8506, %8503
  %8510 = fmul fast float %8509, %8505
  %8511 = fsub fast float %8508, %8510
  %8512 = fmul fast float %8496, %8496
  %8513 = fsub fast float %8499, %8512
  %8514 = fmul fast float %8505, %8505
  %8515 = fmul fast float %8514, %8503
  %8516 = fsub fast float %8513, %8515
  %8517 = fdiv fast float %8511, %8516
  %8518 = fmul fast float %8505, %8517
  %8519 = fsub fast float %8506, %8518
  %8520 = fmul fast float %8519, %8503
  %8521 = fmul fast float %8520, %8495
  %8522 = fsub fast float 1.000000e+00, %8521
  %8523 = fmul fast float %8496, %8517
  %8524 = fsub fast float %8522, %8523
  %8525 = fmul fast float %8520, %8520
  %8526 = fmul fast float %8517, 4.000000e+00
  %8527 = fmul fast float %8526, %8524
  %8528 = fsub fast float %8525, %8527
  %8529 = call float @dx.op.unary.f32(i32 24, float %8528)  ; Sqrt(value)
  %8530 = fcmp fast oge float %8520, 0.000000e+00
  %8531 = fsub fast float -0.000000e+00, %8529
  %8532 = select i1 %8530, float %8531, float %8529
  %8533 = fsub fast float %8532, %8520
  %8534 = fdiv fast float %8533, %8517
  %8535 = fdiv fast float %8524, %8533
  %8536 = fmul fast float %8534, 5.000000e-01
  %8537 = fmul fast float %8535, 2.000000e+00
  %8538 = select i1 %8530, float %8536, float %8537
  %8539 = select i1 %8530, float %8537, float %8536
  %8540 = call float @dx.op.binary.f32(i32 35, float %8538, float %8539)  ; FMax(a,b)
  %8541 = call float @dx.op.binary.f32(i32 36, float %8538, float %8539)  ; FMin(a,b)
  %8542 = fcmp fast ogt float %8455, %8541
  br i1 %8542, label %8543, label %8553

; <label>:8543                                    ; preds = %8480
  %8544 = fsub fast float %8455, %8541
  %8545 = fsub fast float %8540, %8541
  %8546 = fmul fast float %8544, %8545
  %8547 = fmul fast float %8540, %8455
  %8548 = fadd fast float %8540, %8455
  %8549 = fmul fast float %8548, %8495
  %8550 = fadd fast float %8547, %8496
  %8551 = fsub fast float %8550, %8549
  %8552 = fdiv fast float %8551, %8546
  br label %8553

; <label>:8553                                    ; preds = %8543, %8480
  %8554 = phi float [ %8552, %8543 ], [ 0.000000e+00, %8480 ]
  %8555 = fcmp fast ogt float %8455, %8540
  %8556 = fsub fast float %8455, %8540
  br i1 %8555, label %8557, label %8567

; <label>:8557                                    ; preds = %8553
  %8558 = fsub fast float %8540, %8541
  %8559 = fmul fast float %8558, %8556
  %8560 = fmul fast float %8541, %8455
  %8561 = fadd fast float %8541, %8455
  %8562 = fmul fast float %8561, %8495
  %8563 = fsub fast float %8497, %8560
  %8564 = fadd fast float %8563, %8562
  %8565 = fdiv fast float %8564, %8559
  %8566 = fadd fast float %8565, %8554
  br label %8567

; <label>:8567                                    ; preds = %8557, %8553
  %8568 = phi float [ %8566, %8557 ], [ %8554, %8553 ]
  %8569 = fsub fast float %8455, %8541
  %8570 = fmul fast float %8569, %8556
  %8571 = fmul fast float %8541, %8540
  %8572 = fadd fast float %8541, %8540
  %8573 = fmul fast float %8572, %8495
  %8574 = fadd fast float %8571, %8496
  %8575 = fsub fast float %8574, %8573
  %8576 = fdiv fast float %8575, %8570
  %8577 = call float @dx.op.unary.f32(i32 7, float %8568)  ; Saturate(value)
  %8578 = fcmp fast oeq float %7232, 0.000000e+00
  %8579 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8580 = fcmp fast oeq float %8579, 0.000000e+00
  %8581 = or i1 %8578, %8580
  %8582 = fmul fast float %8579, 2.000000e+00
  %8583 = fadd fast float %8364, %8365
  %8584 = fdiv fast float %8583, %8582
  %8585 = call float @dx.op.unary.f32(i32 7, float %8584)  ; Saturate(value)
  %8586 = fmul fast float %8585, 2.000000e+00
  %8587 = fsub fast float 3.000000e+00, %8586
  %8588 = fmul fast float %8585, %8585
  %8589 = fmul fast float %8588, %8587
  %8590 = select i1 %8581, float 1.000000e+00, float %8589
  %8591 = fmul fast float %8576, %7232
  %8592 = fadd fast float %8577, %8591
  %8593 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8594 = fmul fast float %8590, %8593
  br label %8595

; <label>:8595                                    ; preds = %8567, %8447
  %8596 = phi float [ %8594, %8567 ], [ 0.000000e+00, %8447 ]
  %8597 = fsub fast float 1.000000e+00, %8596
  %8598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %8317, float %8318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8599 = extractvalue %dx.types.ResRet.f32 %8598, 0
  %8600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8601 = extractvalue %dx.types.CBufRet.i32 %8600, 2
  %8602 = icmp eq i32 %8601, 0
  br i1 %8602, label %8608, label %8603

; <label>:8603                                    ; preds = %8595
  %8604 = call float @dx.op.unary.f32(i32 7, float %8596)  ; Saturate(value)
  %8605 = fadd fast float %8599, -1.000000e+00
  %8606 = fmul fast float %8604, %8605
  %8607 = fadd fast float %8606, 1.000000e+00
  br label %8608

; <label>:8608                                    ; preds = %8603, %8595
  %8609 = phi float [ %8607, %8603 ], [ %8597, %8595 ]
  br i1 %8371, label %8610, label %8628

; <label>:8610                                    ; preds = %8608
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 1
  %8613 = fsub fast float %8448, %8612
  %8614 = call float @dx.op.unary.f32(i32 7, float %8613)  ; Saturate(value)
  %8615 = fsub fast float %8448, %8370
  %8616 = call float @dx.op.unary.f32(i32 7, float %8615)  ; Saturate(value)
  %8617 = fsub fast float %8614, %8616
  %8618 = fsub fast float %8450, %8616
  %8619 = fdiv fast float %8618, %8617
  %8620 = call float @dx.op.unary.f32(i32 7, float %8619)  ; Saturate(value)
  %8621 = fmul fast float %8620, 2.000000e+00
  %8622 = fsub fast float 3.000000e+00, %8621
  %8623 = fsub fast float %8599, %8609
  %8624 = fmul fast float %8620, %8620
  %8625 = fmul fast float %8624, %8623
  %8626 = fmul fast float %8625, %8622
  %8627 = fadd fast float %8626, %8609
  br label %8628

; <label>:8628                                    ; preds = %8610, %8608
  %8629 = phi float [ %8627, %8610 ], [ %8609, %8608 ]
  %8630 = call float @dx.op.binary.f32(i32 35, float %8599, float %8629)  ; FMax(a,b)
  %8631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.i32 %8631, 2
  %8633 = and i32 %8632, 1
  %8634 = icmp eq i32 %8633, 0
  %8635 = fcmp fast une float %8630, 1.000000e+00
  %8636 = and i1 %8635, %8634
  br i1 %8636, label %8637, label %8656

; <label>:8637                                    ; preds = %8628
  %8638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %46, float %8317, float %8318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8639 = extractvalue %dx.types.ResRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.ResRet.f32 %8638, 1
  %8641 = extractvalue %dx.types.ResRet.f32 %8638, 2
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 1
  %8644 = fmul fast float %8643, %8639
  %8645 = fmul fast float %8643, %8640
  %8646 = fmul fast float %8643, %8641
  %8647 = fcmp fast ogt float %8599, 0x3FEFFF2E40000000
  %8648 = fsub fast float 1.000000e+00, %8630
  %8649 = fsub fast float 1.000000e+00, %8599
  %8650 = fdiv fast float %8648, %8649
  %8651 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8652 = select i1 %8647, float 0.000000e+00, float %8651
  %8653 = fmul fast float %8644, %8652
  %8654 = fmul fast float %8645, %8652
  %8655 = fmul fast float %8646, %8652
  br label %8656

; <label>:8656                                    ; preds = %8637, %8628
  %8657 = phi float [ 0.000000e+00, %8628 ], [ %8653, %8637 ]
  %8658 = phi float [ 0.000000e+00, %8628 ], [ %8654, %8637 ]
  %8659 = phi float [ 0.000000e+00, %8628 ], [ %8655, %8637 ]
  %8660 = fmul fast float %8657, %7239
  %8661 = fmul fast float %8658, %7241
  %8662 = fmul fast float %8659, %7243
  %8663 = fmul fast float %8630, %8292
  %8664 = call float @dx.op.dot3.f32(i32 55, float %8630, float %8630, float %8630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8665 = call float @dx.op.dot3.f32(i32 55, float %8660, float %8661, float %8662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8666 = select i1 %292, float %8664, float %8630
  %8667 = select i1 %292, float 1.000000e+00, float %8630
  %8668 = select i1 %292, float %8665, float %8660
  %8669 = select i1 %292, float 0.000000e+00, float %8661
  %8670 = select i1 %292, float 0.000000e+00, float %8662
  %8671 = fmul fast float %8666, %8304
  %8672 = fmul fast float %8666, %8305
  %8673 = fmul fast float %8667, %8306
  %8674 = fadd fast float %8671, %8668
  %8675 = fadd fast float %8672, %8669
  %8676 = fadd fast float %8670, %8673
  %8677 = fmul fast float %8666, %8307
  %8678 = fmul fast float %8666, %8308
  %8679 = fmul fast float %8667, %8309
  br label %8680

; <label>:8680                                    ; preds = %8656, %8313, %8282, %7514
  %8681 = phi float [ %7519, %7514 ], [ %8304, %8282 ], [ %8674, %8656 ], [ %8304, %8313 ]
  %8682 = phi float [ %7520, %7514 ], [ %8305, %8282 ], [ %8675, %8656 ], [ %8305, %8313 ]
  %8683 = phi float [ %7521, %7514 ], [ %8306, %8282 ], [ %8676, %8656 ], [ %8306, %8313 ]
  %8684 = phi float [ %7522, %7514 ], [ %8307, %8282 ], [ %8677, %8656 ], [ %8307, %8313 ]
  %8685 = phi float [ %7523, %7514 ], [ %8308, %8282 ], [ %8678, %8656 ], [ %8308, %8313 ]
  %8686 = phi float [ %7524, %7514 ], [ %8309, %8282 ], [ %8679, %8656 ], [ %8309, %8313 ]
  %8687 = phi float [ %7525, %7514 ], [ %8292, %8282 ], [ %8663, %8656 ], [ %8292, %8313 ]
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 2
  %8690 = extractvalue %dx.types.CBufRet.f32 %8688, 3
  %8691 = fmul fast float %8689, %105
  %8692 = fmul fast float %8690, %106
  %8693 = call float @dx.op.unary.f32(i32 7, float %8691)  ; Saturate(value)
  %8694 = call float @dx.op.unary.f32(i32 7, float %8692)  ; Saturate(value)
  %8695 = select i1 %7256, i32 2, i32 0
  %8696 = or i32 %8695, 1
  %8697 = uitofp i32 %8696 to float
  %8698 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %46, float %8693, float %8694, float %8697, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8699 = extractvalue %dx.types.ResRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.ResRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.ResRet.f32 %8698, 2
  %8702 = extractvalue %dx.types.ResRet.f32 %8698, 3
  %8703 = add nuw nsw i32 %8695, 2
  %8704 = uitofp i32 %8703 to float
  %8705 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %46, float %8693, float %8694, float %8704, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8706 = extractvalue %dx.types.ResRet.f32 %8705, 0
  %8707 = extractvalue %dx.types.ResRet.f32 %8705, 1
  %8708 = extractvalue %dx.types.ResRet.f32 %8705, 2
  %8709 = extractvalue %dx.types.ResRet.f32 %8705, 3
  %8710 = call float @dx.op.binary.f32(i32 35, float %8700, float %8701)  ; FMax(a,b)
  %8711 = call float @dx.op.binary.f32(i32 35, float %8699, float %8710)  ; FMax(a,b)
  %8712 = call float @dx.op.binary.f32(i32 35, float %8711, float %8702)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 36, float %8707, float %8708)  ; FMin(a,b)
  %8714 = call float @dx.op.binary.f32(i32 36, float %8706, float %8713)  ; FMin(a,b)
  %8715 = call float @dx.op.binary.f32(i32 36, float %8714, float %8709)  ; FMin(a,b)
  %8716 = fmul fast float %8712, 2.550000e+02
  %8717 = fadd fast float %8716, 0x3F70101020000000
  %8718 = fptoui float %8717 to i32
  %8719 = fmul fast float %8715, 2.550000e+02
  %8720 = fadd fast float %8719, 0x3F70101020000000
  %8721 = fptoui float %8720 to i32
  %8722 = icmp ult i32 %8718, %8721
  br i1 %8722, label %8723, label %8892

; <label>:8723                                    ; preds = %8680
  %8724 = fcmp fast ogt float %95, 9.843750e-01
  %8725 = fadd fast float %7518, -4.000000e+00
  %8726 = select i1 %8724, float -4.000000e+00, float %8725
  %8727 = call float @dx.op.binary.f32(i32 35, float %8726, float 0.000000e+00)  ; FMax(a,b)
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 0
  %8730 = fadd fast float %8729, %8727
  %8731 = extractvalue %dx.types.CBufRet.f32 %8728, 2
  %8732 = fmul fast float %8730, %8731
  %8733 = call float @dx.op.unary.f32(i32 23, float %8732)  ; Log(value)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8728, 3
  %8735 = fmul fast float %8734, %8733
  %8736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.f32 %8736, 2
  %8738 = fmul fast float %8735, %8737
  %8739 = call float @dx.op.unary.f32(i32 7, float %8738)  ; Saturate(value)
  %8740 = uitofp i32 %8718 to float
  %8741 = uitofp i32 %8721 to float
  %8742 = fadd fast float %8740, 5.000000e-01
  %8743 = fadd fast float %8741, 5.000000e-01
  %8744 = fmul fast float %8737, %8742
  %8745 = fmul fast float %8737, %8743
  %8746 = fadd fast float %8744, 0x3F0FFB4800000000
  %8747 = fadd fast float %8745, 0xBF0FFB4800000000
  %8748 = call float @dx.op.binary.f32(i32 35, float %8739, float %8746)  ; FMax(a,b)
  %8749 = call float @dx.op.binary.f32(i32 36, float %8748, float %8747)  ; FMin(a,b)
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 1
  %8752 = extractvalue %dx.types.CBufRet.f32 %8750, 2
  %8753 = extractvalue %dx.types.CBufRet.f32 %8750, 0
  %8754 = select i1 %7256, float %8753, float 0.000000e+00
  %8755 = fmul fast float %8751, %8749
  %8756 = fadd fast float %8754, %8755
  %8757 = fadd fast float %8754, %8752
  %8758 = fsub fast float %8751, %8752
  %8759 = fadd fast float %8758, %8754
  %8760 = call float @dx.op.binary.f32(i32 35, float %8756, float %8757)  ; FMax(a,b)
  %8761 = call float @dx.op.binary.f32(i32 36, float %8760, float %8759)  ; FMin(a,b)
  %8762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %8693, float %8694, float %8761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8763 = extractvalue %dx.types.ResRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.ResRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.ResRet.f32 %8762, 2
  %8766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8767 = extractvalue %dx.types.CBufRet.i32 %8766, 0
  %8768 = extractvalue %dx.types.CBufRet.i32 %8766, 1
  %8769 = uitofp i32 %8767 to float
  %8770 = uitofp i32 %8768 to float
  %8771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8772 = extractvalue %dx.types.CBufRet.f32 %8771, 0
  %8773 = extractvalue %dx.types.CBufRet.f32 %8771, 1
  %8774 = fmul fast float %8769, %8693
  %8775 = fmul fast float %8770, %8694
  %8776 = fadd fast float %8774, -5.000000e-01
  %8777 = fadd fast float %8775, -5.000000e-01
  %8778 = call float @dx.op.unary.f32(i32 22, float %8776)  ; Frc(value)
  %8779 = call float @dx.op.unary.f32(i32 22, float %8777)  ; Frc(value)
  %8780 = fmul fast float %8778, %8778
  %8781 = fmul fast float %8780, %8778
  %8782 = fsub fast float 3.000000e+00, %8778
  %8783 = fmul fast float %8780, %8782
  %8784 = fmul fast float %8778, 3.000000e+00
  %8785 = fmul fast float %8781, 3.000000e+00
  %8786 = fmul fast float %8780, 6.000000e+00
  %8787 = fsub fast float %8785, %8786
  %8788 = fadd fast float %8787, 4.000000e+00
  %8789 = fmul fast float %8788, 0x3FC5555560000000
  %8790 = fmul fast float %8781, -3.000000e+00
  %8791 = fadd fast float %8780, %8778
  %8792 = fmul fast float %8791, 3.000000e+00
  %8793 = fadd fast float %8790, 1.000000e+00
  %8794 = fadd fast float %8793, %8792
  %8795 = fmul fast float %8781, 0x3FC5555560000000
  %8796 = fmul fast float %8779, %8779
  %8797 = fmul fast float %8796, %8779
  %8798 = fsub fast float 3.000000e+00, %8779
  %8799 = fmul fast float %8796, %8798
  %8800 = fmul fast float %8779, 3.000000e+00
  %8801 = fmul fast float %8797, 3.000000e+00
  %8802 = fmul fast float %8796, 6.000000e+00
  %8803 = fsub fast float %8801, %8802
  %8804 = fadd fast float %8803, 4.000000e+00
  %8805 = fmul fast float %8804, 0x3FC5555560000000
  %8806 = fmul fast float %8797, -3.000000e+00
  %8807 = fadd fast float %8796, %8779
  %8808 = fmul fast float %8807, 3.000000e+00
  %8809 = fadd fast float %8806, 1.000000e+00
  %8810 = fadd fast float %8809, %8808
  %8811 = fmul fast float %8797, 0x3FC5555560000000
  %8812 = fadd fast float %8778, 1.000000e+00
  %8813 = fsub fast float 1.000000e+00, %8784
  %8814 = fadd fast float %8813, %8783
  %8815 = fadd fast float %8814, %8788
  %8816 = fmul fast float %8815, 0x3FC5555560000000
  %8817 = fdiv fast float %8789, %8816
  %8818 = fsub fast float %8812, %8817
  %8819 = fsub fast float 1.000000e+00, %8778
  %8820 = fadd fast float %8794, %8781
  %8821 = fmul fast float %8820, 0x3FC5555560000000
  %8822 = fdiv fast float %8795, %8821
  %8823 = fadd fast float %8819, %8822
  %8824 = fadd fast float %8779, 1.000000e+00
  %8825 = fsub fast float 1.000000e+00, %8800
  %8826 = fadd fast float %8825, %8799
  %8827 = fadd fast float %8826, %8804
  %8828 = fmul fast float %8827, 0x3FC5555560000000
  %8829 = fdiv fast float %8805, %8828
  %8830 = fsub fast float %8824, %8829
  %8831 = fsub fast float 1.000000e+00, %8779
  %8832 = fadd fast float %8810, %8797
  %8833 = fmul fast float %8832, 0x3FC5555560000000
  %8834 = fdiv fast float %8811, %8833
  %8835 = fadd fast float %8834, %8831
  %8836 = fmul fast float %8818, %8772
  %8837 = fsub fast float %8693, %8836
  %8838 = fmul fast float %8823, %8772
  %8839 = fadd fast float %8838, %8693
  %8840 = fmul fast float %8835, %8773
  %8841 = fadd fast float %8840, %8694
  %8842 = fmul fast float %8830, %8773
  %8843 = fsub fast float %8694, %8842
  %8844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8837, float %8843, float %8761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8845 = extractvalue %dx.types.ResRet.f32 %8844, 0
  %8846 = extractvalue %dx.types.ResRet.f32 %8844, 1
  %8847 = extractvalue %dx.types.ResRet.f32 %8844, 2
  %8848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8839, float %8843, float %8761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8849 = extractvalue %dx.types.ResRet.f32 %8848, 0
  %8850 = extractvalue %dx.types.ResRet.f32 %8848, 1
  %8851 = extractvalue %dx.types.ResRet.f32 %8848, 2
  %8852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8837, float %8841, float %8761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8853 = extractvalue %dx.types.ResRet.f32 %8852, 0
  %8854 = extractvalue %dx.types.ResRet.f32 %8852, 1
  %8855 = extractvalue %dx.types.ResRet.f32 %8852, 2
  %8856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8839, float %8841, float %8761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8857 = extractvalue %dx.types.ResRet.f32 %8856, 0
  %8858 = extractvalue %dx.types.ResRet.f32 %8856, 1
  %8859 = extractvalue %dx.types.ResRet.f32 %8856, 2
  %8860 = fsub fast float %8853, %8845
  %8861 = fsub fast float %8854, %8846
  %8862 = fsub fast float %8855, %8847
  %8863 = fmul fast float %8860, %8833
  %8864 = fmul fast float %8861, %8833
  %8865 = fmul fast float %8862, %8833
  %8866 = fadd fast float %8863, %8845
  %8867 = fadd fast float %8864, %8846
  %8868 = fadd fast float %8865, %8847
  %8869 = fsub fast float %8857, %8849
  %8870 = fsub fast float %8858, %8850
  %8871 = fsub fast float %8859, %8851
  %8872 = fmul fast float %8869, %8833
  %8873 = fmul fast float %8870, %8833
  %8874 = fmul fast float %8871, %8833
  %8875 = fsub fast float %8849, %8866
  %8876 = fadd fast float %8875, %8872
  %8877 = fsub fast float %8850, %8867
  %8878 = fadd fast float %8877, %8873
  %8879 = fsub fast float %8851, %8868
  %8880 = fadd fast float %8879, %8874
  %8881 = fmul fast float %8876, %8821
  %8882 = fmul fast float %8878, %8821
  %8883 = fmul fast float %8880, %8821
  %8884 = fadd fast float %8881, %8866
  %8885 = fadd fast float %8882, %8867
  %8886 = fadd fast float %8883, %8868
  %8887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8888 = extractvalue %dx.types.CBufRet.f32 %8887, 1
  %8889 = fmul fast float %8884, %8888
  %8890 = fmul fast float %8885, %8888
  %8891 = fmul fast float %8886, %8888
  br label %8892

; <label>:8892                                    ; preds = %8723, %8680
  %8893 = phi float [ %8763, %8723 ], [ 1.000000e+00, %8680 ]
  %8894 = phi float [ %8764, %8723 ], [ 1.000000e+00, %8680 ]
  %8895 = phi float [ %8765, %8723 ], [ 1.000000e+00, %8680 ]
  %8896 = phi float [ %8889, %8723 ], [ 0.000000e+00, %8680 ]
  %8897 = phi float [ %8890, %8723 ], [ 0.000000e+00, %8680 ]
  %8898 = phi float [ %8891, %8723 ], [ 0.000000e+00, %8680 ]
  %8899 = fmul fast float %8896, %7239
  %8900 = fmul fast float %8897, %7241
  %8901 = fmul fast float %8898, %7243
  %8902 = fmul fast float %8893, %8687
  %8903 = call float @dx.op.dot3.f32(i32 55, float %8893, float %8894, float %8895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8904 = call float @dx.op.dot3.f32(i32 55, float %8899, float %8900, float %8901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8905 = select i1 %292, float %8903, float %8893
  %8906 = select i1 %292, float %8903, float %8894
  %8907 = select i1 %292, float 1.000000e+00, float %8895
  %8908 = select i1 %292, float %8904, float %8899
  %8909 = select i1 %292, float 0.000000e+00, float %8900
  %8910 = select i1 %292, float 0.000000e+00, float %8901
  %8911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8912 = extractvalue %dx.types.CBufRet.i32 %8911, 3
  %8913 = and i32 %8912, 3
  %8914 = icmp ne i32 %8913, 0
  %8915 = and i32 %8912, 4
  %8916 = icmp ne i32 %8915, 0
  %8917 = and i1 %8914, %8916
  %8918 = and i1 %292, %8917
  br i1 %8918, label %8919, label %8925

; <label>:8919                                    ; preds = %8892
  %8920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.f32 %8920, 1
  %8922 = fadd fast float %8902, -1.000000e+00
  %8923 = fmul fast float %8921, %8922
  %8924 = fadd fast float %8923, 1.000000e+00
  br label %8925

; <label>:8925                                    ; preds = %8919, %8892
  %8926 = phi float [ %8924, %8919 ], [ %8902, %8892 ]
  %8927 = fadd fast float %8684, %8681
  %8928 = fmul fast float %8905, %8927
  %8929 = fadd fast float %8928, %8908
  %8930 = fadd fast float %8685, %8682
  %8931 = fmul fast float %8906, %8930
  %8932 = fadd fast float %8931, %8909
  %8933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8933, 0
  br i1 %292, label %8935, label %8950

; <label>:8935                                    ; preds = %8925
  %8936 = fadd fast float %8929, %8932
  %8937 = fmul fast float %8934, %8936
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 3
  %8940 = extractvalue %dx.types.CBufRet.f32 %7224, 1
  %8941 = fsub fast float %7229, %7223
  %8942 = fadd fast float %8941, %7230
  %8943 = fsub fast float %8942, %8940
  %8944 = extractvalue %dx.types.CBufRet.f32 %7224, 2
  %8945 = fmul fast float %8943, %8944
  %8946 = call float @dx.op.unary.f32(i32 7, float %8945)  ; Saturate(value)
  %8947 = fsub fast float %8946, %8939
  %8948 = fmul fast float %8947, %8926
  %8949 = fadd fast float %8948, %8939
  br label %8976

; <label>:8950                                    ; preds = %8925
  %8951 = fadd fast float %8686, %8683
  %8952 = fmul fast float %8907, %8951
  %8953 = fadd fast float %8952, %8910
  %8954 = fmul fast float %8934, %8929
  %8955 = fmul fast float %8934, %8932
  %8956 = fmul fast float %8934, %8953
  %8957 = call float @dx.op.binary.f32(i32 35, float %8955, float %8956)  ; FMax(a,b)
  %8958 = call float @dx.op.binary.f32(i32 35, float %8954, float %8957)  ; FMax(a,b)
  %8959 = call float @dx.op.binary.f32(i32 35, float %7241, float %7243)  ; FMax(a,b)
  %8960 = call float @dx.op.binary.f32(i32 35, float %7239, float %8959)  ; FMax(a,b)
  %8961 = call float @dx.op.binary.f32(i32 35, float %8958, float %8960)  ; FMax(a,b)
  %8962 = fcmp fast ugt float %8961, 0x3F10000000000000
  br i1 %8962, label %8964, label %8963

; <label>:8963                                    ; preds = %8950
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8964

; <label>:8964                                    ; preds = %8963, %8950
  %8965 = add i32 %52, 356
  %8966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %8965, i32 undef)  ; BufferLoad(srv,index,wot)
  %8967 = extractvalue %dx.types.ResRet.i32 %8966, 0
  %8968 = and i32 %8967, 32
  %8969 = icmp eq i32 %8968, 0
  br i1 %8969, label %8976, label %8970

; <label>:8970                                    ; preds = %8964
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 0
  %8973 = fmul fast float %8972, 0x3FE99999A0000000
  %8974 = fadd fast float %8972, %8954
  %8975 = fadd fast float %8973, %8956
  br label %8976

; <label>:8976                                    ; preds = %8970, %8964, %8935
  %8977 = phi float [ 1.000000e+00, %8935 ], [ %7241, %8970 ], [ %7241, %8964 ]
  %8978 = phi float [ 1.000000e+00, %8935 ], [ %7243, %8970 ], [ %7243, %8964 ]
  %8979 = phi float [ %8937, %8935 ], [ %8974, %8970 ], [ %8954, %8964 ]
  %8980 = phi float [ %8949, %8935 ], [ %8955, %8970 ], [ %8955, %8964 ]
  %8981 = phi float [ 1.000000e+00, %8935 ], [ %8975, %8970 ], [ %8956, %8964 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8982 = call float @dx.op.binary.f32(i32 36, float %8979, float 3.225500e+04)  ; FMin(a,b)
  %8983 = call float @dx.op.binary.f32(i32 36, float %8980, float 3.225500e+04)  ; FMin(a,b)
  %8984 = call float @dx.op.binary.f32(i32 36, float %8981, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8982)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8983)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8984)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8985 = call float @dx.op.binary.f32(i32 36, float %7239, float 3.225500e+04)  ; FMin(a,b)
  %8986 = call float @dx.op.binary.f32(i32 36, float %8977, float 3.225500e+04)  ; FMin(a,b)
  %8987 = call float @dx.op.binary.f32(i32 36, float %8978, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8985)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8986)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8987)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
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
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!54 = !{!55, !56}
!55 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!56 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!57 = !{!58, !59, !60, !61, !62, !63, !64}
!58 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!59 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!60 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!61 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!62 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!63 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!64 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!65 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !94}
!67 = !{!68, !90, null}
!68 = !{!69, !72, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89}
!69 = !{i32 0, !"SV_Position", i8 9, i8 3, !70, i8 4, i32 1, i8 4, i32 0, i8 0, !71}
!70 = !{i32 0}
!71 = !{i32 3, i32 15}
!72 = !{i32 1, !"COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 1, i8 0, !71}
!73 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 2, i8 0, !74}
!74 = !{i32 3, i32 3}
!75 = !{i32 3, !"NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 3, i8 0, !76}
!76 = !{i32 3, i32 7}
!77 = !{i32 4, !"TANGENT", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 4, i8 0, !71}
!78 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 5, i8 0, !76}
!79 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!80 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !70, i8 2, i32 1, i8 1, i32 3, i8 3, !81}
!81 = !{i32 3, i32 1}
!82 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 7, i8 0, !76}
!83 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 8, i8 0, !71}
!84 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 9, i8 0, !74}
!85 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 10, i8 0, !71}
!86 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 11, i8 0, !71}
!87 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !70, i8 1, i32 1, i8 2, i32 12, i8 0, !74}
!88 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !70, i8 1, i32 1, i8 4, i32 13, i8 0, !81}
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

