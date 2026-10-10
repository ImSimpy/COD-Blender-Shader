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
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
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
; shader hash: 150521f6adf9be9e608ddca17654fb77
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
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %124 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %125 = bitcast float %124 to i32
  %126 = ashr i32 %125, 1
  %127 = sub nsw i32 1597250115, %126
  %128 = bitcast i32 %127 to float
  %129 = fmul fast float %128, %70
  %130 = fmul fast float %128, %71
  %131 = fmul fast float %128, %72
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fcmp fast une float %133, 0.000000e+00
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %102, 2.000000e+00
  %139 = fmul fast float %138, %136
  %140 = fmul fast float %103, 2.000000e+00
  %141 = fmul fast float %140, %137
  %142 = fsub fast float 1.000000e+00, %139
  %143 = fsub fast float 1.000000e+00, %141
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = select i1 %134, float %145, float %149
  %153 = select i1 %134, float %146, float %150
  %154 = select i1 %134, float %147, float %151
  %155 = fmul fast float %152, %142
  %156 = fmul fast float %153, %142
  %157 = fmul fast float %154, %142
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = select i1 %134, float %159, float %163
  %167 = select i1 %134, float %160, float %164
  %168 = select i1 %134, float %161, float %165
  %169 = fmul fast float %166, %143
  %170 = fmul fast float %167, %143
  %171 = fmul fast float %168, %143
  %172 = fadd fast float %169, %155
  %173 = fadd fast float %170, %156
  %174 = fadd fast float %171, %157
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = select i1 %134, float %176, float %180
  %184 = select i1 %134, float %177, float %181
  %185 = select i1 %134, float %178, float %182
  %186 = fadd fast float %172, %183
  %187 = fadd fast float %173, %184
  %188 = fadd fast float %174, %185
  %189 = fmul fast float %186, %93
  %190 = fmul fast float %187, %93
  %191 = fmul fast float %188, %93
  %192 = shl i32 %52, 5
  %193 = add i32 %192, 4194304
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = extractvalue %dx.types.ResRet.i32 %194, 1
  %197 = extractvalue %dx.types.ResRet.i32 %194, 2
  %198 = extractvalue %dx.types.ResRet.i32 %194, 3
  %199 = add i32 %192, 4194320
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = extractvalue %dx.types.ResRet.i32 %200, 1
  %203 = bitcast i32 %201 to float
  %204 = bitcast i32 %202 to float
  %205 = fmul fast float %102, 5.000000e-01
  %206 = fmul fast float %103, 5.000000e-01
  %207 = fptosi float %205 to i32
  %208 = fptosi float %206 to i32
  %209 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %207, i32 %208, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = lshr i32 %210, 18
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F4C00EBA0000000
  %214 = call float @dx.op.unary.f32(i32 21, float %213)  ; Exp(value)
  %215 = fadd fast float %214, -1.000000e+00
  %216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %217 = extractvalue %dx.types.Dimensions %216, 0
  %218 = sitofp i32 %217 to float
  %219 = extractvalue %dx.types.Dimensions %216, 1
  %220 = sitofp i32 %219 to float
  %221 = fcmp fast oge float %205, %218
  %222 = fcmp fast oge float %206, %220
  %223 = or i1 %221, %222
  %224 = select i1 %223, float 0x4197782600000000, float %215
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %228 = fmul fast float %226, %102
  %229 = fmul fast float %227, %103
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 114688
  %233 = icmp ne i32 %232, 0
  %234 = select i1 %233, float %228, float 0.000000e+00
  %235 = select i1 %233, float %229, float 0.000000e+00
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %46, float %234, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fmul fast float %237, 2.550000e+02
  %239 = fptoui float %238 to i32
  %240 = select i1 %233, i32 %239, i32 0
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 3
  %243 = and i32 %242, 3
  %244 = icmp ne i32 %243, 0
  %245 = and i32 %242, 4
  %246 = icmp ne i32 %245, 0
  %247 = and i1 %244, %246
  br i1 %247, label %248, label %257

; <label>:248                                     ; preds = %0
  %249 = fmul fast float %137, %103
  %250 = fmul fast float %136, %102
  %251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %250, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fsub fast float 1.000000e+00, %252
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = fcmp fast olt float %253, %255
  br label %260

; <label>:257                                     ; preds = %0
  %258 = icmp eq i32 %245, 0
  %259 = and i1 %244, %258
  br label %260

; <label>:260                                     ; preds = %257, %248
  %261 = phi i1 [ %256, %248 ], [ %259, %257 ]
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %264 = fmul fast float %263, 0x3FE3C6EF40000000
  %265 = frem fast float %102, 2.560000e+02
  %266 = frem fast float %103, 2.560000e+02
  %267 = fptoui float %265 to i32
  %268 = fptoui float %266 to i32
  %269 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %267, i32 %268, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fadd fast float %270, %264
  %272 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %273 = add i32 %51, 156
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %275, 7
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %275, 22
  %283 = shl nuw nsw i32 %282, 5
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %51, 216
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %287, 8
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %287, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = add i32 %51, 36
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %51, 288
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = mul i32 %53, 100
  %316 = add i32 %315, 28
  %317 = add i32 %315, 40
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = add i32 %51, 172
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = shl i32 %322, 4
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %322, 7
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %322, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %51, 232
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %334, 8
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %334, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = add i32 %51, 52
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %51, 304
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = shl i32 %361, 4
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %361, 7
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %361, 22
  %369 = shl nuw nsw i32 %368, 5
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = and i32 %319, 1
  %372 = icmp ne i32 %371, 0
  %373 = select i1 %372, float %364, float %325
  %374 = select i1 %372, float %367, float %328
  %375 = select i1 %372, float %370, float %331
  %376 = add i32 %315, 44
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = fmul fast float %378, %373
  %380 = fmul fast float %378, %374
  %381 = fmul fast float %378, %375
  %382 = add i32 %315, 48
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = shl i32 %384, 4
  %386 = and i32 %385, 32752
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %384, 7
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %384, 22
  %392 = shl nuw nsw i32 %391, 5
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = and i32 %319, 8
  %395 = icmp ne i32 %394, 0
  %396 = select i1 %395, float %387, float %337
  %397 = select i1 %395, float %390, float %341
  %398 = select i1 %395, float %393, float %345
  %399 = add i32 %315, 52
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %401, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = and i32 %319, 2
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %403, float %350
  %409 = select i1 %407, float %405, float %352
  %410 = add i32 %315, 56
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 65535
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %412, 16
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = and i32 %319, 4
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %414, float %357
  %420 = fmul float %419, 0x3F50624DE0000000
  %421 = select i1 %418, float %416, float %359
  %422 = fmul float %421, 0x3F50624DE0000000
  %423 = add i32 %315, 60
  %424 = add i32 %315, 32
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %51, 188
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = shl i32 %429, 4
  %431 = and i32 %430, 32752
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %429, 7
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %429, 22
  %437 = shl nuw nsw i32 %436, 5
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = add i32 %51, 248
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 255
  %443 = uitofp i32 %442 to float
  %444 = fmul fast float %443, 0x3F70101020000000
  %445 = lshr i32 %441, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = lshr i32 %441, 16
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = add i32 %51, 68
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = add i32 %51, 320
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 65535
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = lshr i32 %462, 16
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = shl i32 %468, 4
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %468, 7
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %468, 22
  %476 = shl nuw nsw i32 %475, 5
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = and i32 %426, 1
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %479, float %471, float %432
  %481 = select i1 %479, float %474, float %435
  %482 = select i1 %479, float %477, float %438
  %483 = add i32 %315, 64
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = fmul fast float %485, %480
  %487 = fmul fast float %485, %481
  %488 = fmul fast float %485, %482
  %489 = add i32 %315, 68
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = shl i32 %491, 4
  %493 = and i32 %492, 32752
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %491, 7
  %496 = and i32 %495, 32752
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %491, 22
  %499 = shl nuw nsw i32 %498, 5
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = and i32 %426, 8
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %494, float %444
  %504 = select i1 %502, float %497, float %448
  %505 = select i1 %502, float %500, float %452
  %506 = add i32 %315, 72
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 65535
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %508, 16
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = and i32 %426, 2
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %510, float %457
  %516 = select i1 %514, float %512, float %459
  %517 = add i32 %315, 76
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = and i32 %519, 65535
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = lshr i32 %519, 16
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = and i32 %426, 4
  %525 = icmp ne i32 %524, 0
  %526 = select i1 %525, float %521, float %464
  %527 = fmul float %526, 0x3F50624DE0000000
  %528 = select i1 %525, float %523, float %466
  %529 = fmul float %528, 0x3F50624DE0000000
  %530 = add i32 %315, 80
  %531 = add i32 %315, 36
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = add i32 %51, 204
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = shl i32 %536, 4
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %536, 7
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %536, 22
  %544 = shl nuw nsw i32 %543, 5
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = add i32 %51, 264
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 255
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %550, 0x3F70101020000000
  %552 = lshr i32 %548, 8
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = lshr i32 %548, 16
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = add i32 %51, 84
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %562, 16
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = add i32 %51, 336
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 65535
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %569, 16
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = shl i32 %575, 4
  %577 = and i32 %576, 32752
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %575, 7
  %580 = and i32 %579, 32752
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %575, 22
  %583 = shl nuw nsw i32 %582, 5
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = and i32 %533, 1
  %586 = icmp ne i32 %585, 0
  %587 = select i1 %586, float %578, float %539
  %588 = select i1 %586, float %581, float %542
  %589 = select i1 %586, float %584, float %545
  %590 = add i32 %315, 84
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = fmul fast float %592, %587
  %594 = fmul fast float %592, %588
  %595 = fmul fast float %592, %589
  %596 = add i32 %315, 88
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = shl i32 %598, 4
  %600 = and i32 %599, 32752
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %598, 7
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %598, 22
  %606 = shl nuw nsw i32 %605, 5
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = and i32 %533, 8
  %609 = icmp ne i32 %608, 0
  %610 = select i1 %609, float %601, float %551
  %611 = select i1 %609, float %604, float %555
  %612 = select i1 %609, float %607, float %559
  %613 = add i32 %315, 92
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 65535
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %615, 16
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = and i32 %533, 2
  %621 = icmp ne i32 %620, 0
  %622 = select i1 %621, float %617, float %564
  %623 = select i1 %621, float %619, float %566
  %624 = add i32 %315, 96
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 65535
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = lshr i32 %626, 16
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = and i32 %533, 4
  %632 = icmp ne i32 %631, 0
  %633 = select i1 %632, float %628, float %571
  %634 = fmul float %633, 0x3F50624DE0000000
  %635 = select i1 %632, float %630, float %573
  %636 = fmul float %635, 0x3F50624DE0000000
  %637 = add i32 %51, 348
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 32
  %641 = icmp eq i32 %640, 0
  %642 = and i32 %639, 64
  %643 = icmp eq i32 %642, 0
  %644 = and i32 %639, 128
  %645 = icmp eq i32 %644, 0
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 2
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %665, label %650

; <label>:650                                     ; preds = %260
  %651 = add i32 %51, 508
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %653, 0
  %655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %655, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 2
  %660 = extractvalue %dx.types.ResRet.f32 %656, 3
  %661 = fmul fast float %660, %86
  %662 = fmul fast float %657, %87
  %663 = fmul fast float %658, %88
  %664 = fmul fast float %659, %89
  br label %665

; <label>:665                                     ; preds = %650, %260
  %666 = phi float [ %89, %260 ], [ %664, %650 ]
  %667 = phi float [ %88, %260 ], [ %663, %650 ]
  %668 = phi float [ %87, %260 ], [ %662, %650 ]
  %669 = phi float [ %86, %260 ], [ %661, %650 ]
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 2
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %693, label %674

; <label>:674                                     ; preds = %665
  %675 = add i32 %51, 44
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 1
  %679 = icmp ne i32 %678, 0
  %680 = select i1 %679, float %668, float 1.000000e+00
  %681 = add i32 %51, 60
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 1
  %685 = icmp ne i32 %684, 0
  %686 = select i1 %685, float %667, float 1.000000e+00
  %687 = add i32 %51, 76
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 1
  %691 = icmp ne i32 %690, 0
  %692 = select i1 %691, float %666, float 1.000000e+00
  br label %693

; <label>:693                                     ; preds = %674, %665
  %694 = phi float [ %666, %665 ], [ %692, %674 ]
  %695 = phi float [ %667, %665 ], [ %686, %674 ]
  %696 = phi float [ %668, %665 ], [ %680, %674 ]
  %697 = lshr i32 %671, 20
  %698 = and i32 %697, 3
  %699 = add nuw nsw i32 %698, 1
  %700 = add i32 %51, 24
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %51, 28
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = or i32 %705, %702
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %1321, label %708

; <label>:708                                     ; preds = %693
  %709 = and i32 %702, 262144
  %710 = icmp ne i32 %709, 0
  %711 = select i1 %710, float %57, float 1.000000e+00
  %712 = select i1 %710, float %58, float 0.000000e+00
  %713 = select i1 %710, float %59, float 0.000000e+00
  %714 = select i1 %710, float %60, float 1.000000e+00
  %715 = select i1 %710, float %61, float %84
  %716 = select i1 %710, float %62, float %85
  %717 = add i32 %51, 284
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = lshr i32 %719, 16
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = fmul fast float %721, 0x3F50624DE0000000
  %723 = add i32 %51, 88
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = lshr i32 %725, 16
  %727 = and i32 %726, 255
  %728 = lshr i32 %725, 24
  %729 = add i32 %51, 292
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 65535
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = lshr i32 %731, 16
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = add i32 %51, 32
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = lshr i32 %738, 22
  %740 = shl nuw nsw i32 %739, 5
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = shl i32 %738, 4
  %743 = and i32 %742, 32752
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = lshr i32 %738, 7
  %746 = and i32 %745, 32752
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %750 = fmul fast float %749, 1.000000e+03
  %751 = fmul fast float %313, %750
  %752 = call float @dx.op.unary.f32(i32 22, float %751)  ; Frc(value)
  %753 = fadd fast float %752, %303
  %754 = fmul fast float %314, %750
  %755 = call float @dx.op.unary.f32(i32 22, float %754)  ; Frc(value)
  %756 = fadd fast float %755, %305
  %757 = fmul fast float %722, %750
  %758 = call float @dx.op.unary.f32(i32 22, float %757)  ; Frc(value)
  %759 = fmul fast float %758, 0x401921FB60000000
  %760 = fadd fast float %759, %741
  %761 = call float @dx.op.unary.f32(i32 13, float %760)  ; Sin(value)
  %762 = call float @dx.op.unary.f32(i32 12, float %760)  ; Cos(value)
  %763 = fsub fast float -0.000000e+00, %761
  %764 = fadd fast float %715, -5.000000e-01
  %765 = fadd fast float %716, -5.000000e-01
  %766 = fmul fast float %733, %764
  %767 = fmul fast float %735, %765
  %768 = fadd fast float %766, 5.000000e-01
  %769 = fadd fast float %767, 5.000000e-01
  %770 = fmul fast float %744, %768
  %771 = fmul fast float %747, %769
  %772 = fmul fast float %762, %770
  %773 = call float @dx.op.tertiary.f32(i32 46, float %763, float %771, float %772)  ; FMad(a,b,c)
  %774 = fmul fast float %761, %770
  %775 = call float @dx.op.tertiary.f32(i32 46, float %762, float %771, float %774)  ; FMad(a,b,c)
  %776 = fadd fast float %753, %773
  %777 = fadd fast float %756, %775
  %778 = icmp ugt i32 %727, 1
  %779 = icmp ugt i32 %725, 33554431
  %780 = or i1 %779, %778
  br i1 %780, label %781, label %806

; <label>:781                                     ; preds = %708
  %782 = add i32 %51, 228
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = lshr i32 %784, 16
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = fmul fast float %749, %786
  %788 = call float @dx.op.unary.f32(i32 22, float %787)  ; Frc(value)
  %789 = mul nuw nsw i32 %727, %728
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %788, %790
  %792 = call float @dx.op.unary.f32(i32 27, float %791)  ; Round_ni(value)
  %793 = fptoui float %792 to i32
  %794 = urem i32 %793, %727
  %795 = udiv i32 %793, %728
  %796 = call float @dx.op.unary.f32(i32 22, float %776)  ; Frc(value)
  %797 = call float @dx.op.unary.f32(i32 22, float %777)  ; Frc(value)
  %798 = uitofp i32 %794 to float
  %799 = uitofp i32 %795 to float
  %800 = fadd fast float %796, %798
  %801 = fadd fast float %797, %799
  %802 = uitofp i32 %727 to float
  %803 = uitofp i32 %728 to float
  %804 = fdiv fast float %800, %802
  %805 = fdiv fast float %801, %803
  br label %806

; <label>:806                                     ; preds = %781, %708
  %807 = phi float [ %804, %781 ], [ %776, %708 ]
  %808 = phi float [ %805, %781 ], [ %777, %708 ]
  %809 = and i32 %702, 256
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %857, label %811

; <label>:811                                     ; preds = %806
  %812 = add i32 %51, 440
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = add i32 %814, 0
  %816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %817 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %816, %dx.types.Handle %99, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = add i32 %51, 100
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = shl i32 %821, 4
  %823 = and i32 %822, 32752
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = lshr i32 %821, 7
  %826 = and i32 %825, 32752
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = fsub fast float 1.000000e+00, %669
  %829 = call float @dx.op.binary.f32(i32 35, float %828, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %830 = bitcast float %669 to i32
  %831 = sitofp i32 %830 to float
  %832 = fadd fast float %831, 0xC1CFBF8940000000
  %833 = fmul fast float %827, %832
  %834 = fadd fast float %833, 0x41CFBF8940000000
  %835 = fptosi float %834 to i32
  %836 = bitcast i32 %835 to float
  %837 = bitcast float %829 to i32
  %838 = sitofp i32 %837 to float
  %839 = fadd fast float %838, 0xC1CFBF8940000000
  %840 = fmul fast float %839, %827
  %841 = fadd fast float %840, 0x41CFBF8940000000
  %842 = fptosi float %841 to i32
  %843 = bitcast i32 %842 to float
  %844 = fmul fast float %836, %824
  %845 = fmul fast float %843, %824
  %846 = fsub fast float %829, %844
  %847 = fadd fast float %845, %829
  %848 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %849 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %850 = fsub fast float %818, %848
  %851 = fsub fast float %849, %848
  %852 = bitcast float %851 to i32
  %853 = sub nsw i32 2129859010, %852
  %854 = bitcast i32 %853 to float
  %855 = fmul fast float %854, %850
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  br label %857

; <label>:857                                     ; preds = %811, %806
  %858 = phi float [ %856, %811 ], [ %669, %806 ]
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 128
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %879, label %863

; <label>:863                                     ; preds = %857
  %864 = add i32 %51, 424
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = add i32 %866, 0
  %868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %868, %dx.types.Handle %99, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 524288
  %874 = icmp ne i32 %873, 0
  %875 = fcmp fast ogt float %870, 0x3FE0101020000000
  %876 = select i1 %875, float 1.000000e+00, float 0.000000e+00
  %877 = select i1 %874, float %876, float %870
  %878 = fmul fast float %877, %858
  br label %879

; <label>:879                                     ; preds = %863, %857
  %880 = phi float [ %878, %863 ], [ %858, %857 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 16
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %1083, label %885

; <label>:885                                     ; preds = %879
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = add i32 %51, 376
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = add i32 %890, 0
  %892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %893 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %892, %dx.types.Handle %98, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = extractvalue %dx.types.ResRet.f32 %893, 2
  %897 = extractvalue %dx.types.ResRet.f32 %893, 3
  %898 = and i32 %887, 255
  %899 = uitofp i32 %898 to float
  %900 = lshr i32 %887, 8
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %897, %899
  %904 = fadd fast float %903, %902
  %905 = fmul fast float %904, 0x3F70101000000000
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 512
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %918, label %910

; <label>:910                                     ; preds = %885
  %911 = add i32 %51, 460
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %913, 0
  %915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %915, %dx.types.Handle %99, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  br label %918

; <label>:918                                     ; preds = %910, %885
  %919 = phi float [ %917, %910 ], [ 1.000000e+00, %885 ]
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %921, 33554432
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %1030, label %924

; <label>:924                                     ; preds = %918
  %925 = add i32 %51, 224
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 65535
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = lshr i32 %927, 16
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = add i32 %51, 228
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 65535
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = lshr i32 %938, 24
  %940 = uitofp i32 %939 to float
  %941 = fmul fast float %940, 0x3F70101020000000
  %942 = and i32 %938, 255
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %943, 0x3F70101020000000
  %945 = lshr i32 %938, 8
  %946 = and i32 %945, 255
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %947, 0x3F70101020000000
  %949 = lshr i32 %938, 16
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = add i32 %51, 220
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = lshr i32 %955, 24
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = and i32 %955, 255
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F70101020000000
  %962 = lshr i32 %955, 8
  %963 = and i32 %962, 255
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %964, 0x3F70101020000000
  %966 = lshr i32 %955, 16
  %967 = and i32 %966, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F70101020000000
  %970 = bitcast float %894 to i32
  %971 = ashr i32 %970, 1
  %972 = sub nsw i32 1597463174, %971
  %973 = bitcast i32 %972 to float
  %974 = fmul fast float %894, 5.000000e-01
  %975 = fmul fast float %973, %973
  %976 = fmul fast float %975, %974
  %977 = fsub fast float 1.500000e+00, %976
  %978 = fmul fast float %973, %894
  %979 = fmul fast float %978, %977
  %980 = bitcast float %895 to i32
  %981 = ashr i32 %980, 1
  %982 = sub nsw i32 1597463174, %981
  %983 = bitcast i32 %982 to float
  %984 = fmul fast float %895, 5.000000e-01
  %985 = fmul fast float %983, %983
  %986 = fmul fast float %985, %984
  %987 = fsub fast float 1.500000e+00, %986
  %988 = fmul fast float %983, %895
  %989 = fmul fast float %988, %987
  %990 = bitcast float %896 to i32
  %991 = ashr i32 %990, 1
  %992 = sub nsw i32 1597463174, %991
  %993 = bitcast i32 %992 to float
  %994 = fmul fast float %896, 5.000000e-01
  %995 = fmul fast float %993, %993
  %996 = fmul fast float %995, %994
  %997 = fsub fast float 1.500000e+00, %996
  %998 = fmul fast float %993, %896
  %999 = fmul fast float %998, %997
  %1000 = fsub fast float %979, %961
  %1001 = fsub fast float %989, %965
  %1002 = fsub fast float %999, %969
  %1003 = fmul fast float %1000, %929
  %1004 = fmul fast float %1001, %931
  %1005 = fmul fast float %1002, %936
  %1006 = fadd fast float %1003, %944
  %1007 = fadd fast float %1004, %948
  %1008 = fadd fast float %1005, %952
  %1009 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1010 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1012 = fmul fast float %1009, %1009
  %1013 = fmul fast float %1010, %1010
  %1014 = fmul fast float %1011, %1011
  %1015 = fsub fast float %1012, %894
  %1016 = fsub fast float %1013, %895
  %1017 = fsub fast float %1014, %896
  %1018 = fmul fast float %1015, %919
  %1019 = fmul fast float %1016, %919
  %1020 = fmul fast float %1017, %919
  %1021 = fadd fast float %1018, %894
  %1022 = fadd fast float %1019, %895
  %1023 = fadd fast float %1020, %896
  %1024 = fadd fast float %941, %905
  %1025 = fsub fast float %1024, %958
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = fsub fast float %1026, %905
  %1028 = fmul fast float %1027, %919
  %1029 = fadd fast float %1028, %905
  br label %1083

; <label>:1030                                    ; preds = %918
  %1031 = and i32 %921, 134217728
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1067, label %1033

; <label>:1033                                    ; preds = %1030
  %1034 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %1035 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1036 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1037 = fadd fast float %1034, -5.000000e-01
  %1038 = fadd fast float %1035, -5.000000e-01
  %1039 = fadd fast float %1036, -5.000000e-01
  %1040 = fmul fast float %1037, %919
  %1041 = fmul fast float %1038, %919
  %1042 = fmul fast float %1039, %919
  %1043 = fadd fast float %1040, 5.000000e-01
  %1044 = fadd fast float %1041, 5.000000e-01
  %1045 = fadd fast float %1042, 5.000000e-01
  %1046 = call float @dx.op.unary.f32(i32 24, float %894)  ; Sqrt(value)
  %1047 = call float @dx.op.unary.f32(i32 24, float %895)  ; Sqrt(value)
  %1048 = call float @dx.op.unary.f32(i32 24, float %896)  ; Sqrt(value)
  %1049 = fmul fast float %1043, 2.000000e+00
  %1050 = fsub fast float 1.000000e+00, %1049
  %1051 = fmul fast float %1050, %1046
  %1052 = fadd fast float %1051, %1049
  %1053 = fmul fast float %1052, %1046
  %1054 = fmul fast float %1044, 2.000000e+00
  %1055 = fsub fast float 1.000000e+00, %1054
  %1056 = fmul fast float %1055, %1047
  %1057 = fadd fast float %1056, %1054
  %1058 = fmul fast float %1057, %1047
  %1059 = fmul fast float %1045, 2.000000e+00
  %1060 = fsub fast float 1.000000e+00, %1059
  %1061 = fmul fast float %1060, %1048
  %1062 = fadd fast float %1061, %1059
  %1063 = fmul fast float %1062, %1048
  %1064 = fmul fast float %1053, %1053
  %1065 = fmul fast float %1058, %1058
  %1066 = fmul fast float %1063, %1063
  br label %1083

; <label>:1067                                    ; preds = %1030
  %1068 = fmul fast float %290, %290
  %1069 = fmul fast float %294, %294
  %1070 = fmul fast float %298, %298
  %1071 = fadd fast float %1068, -1.000000e+00
  %1072 = fadd fast float %1069, -1.000000e+00
  %1073 = fadd fast float %1070, -1.000000e+00
  %1074 = fmul fast float %919, %1071
  %1075 = fmul fast float %919, %1072
  %1076 = fmul fast float %919, %1073
  %1077 = fadd fast float %1074, 1.000000e+00
  %1078 = fadd fast float %1075, 1.000000e+00
  %1079 = fadd fast float %1076, 1.000000e+00
  %1080 = fmul fast float %1077, %894
  %1081 = fmul fast float %1078, %895
  %1082 = fmul fast float %1079, %896
  br label %1083

; <label>:1083                                    ; preds = %1067, %1033, %924, %879
  %1084 = phi float [ %1029, %924 ], [ %905, %1033 ], [ %905, %1067 ], [ 0x3FA23C0BE0000000, %879 ]
  %1085 = phi float [ %1021, %924 ], [ %1064, %1033 ], [ %1080, %1067 ], [ 1.000000e+00, %879 ]
  %1086 = phi float [ %1022, %924 ], [ %1065, %1033 ], [ %1081, %1067 ], [ 1.000000e+00, %879 ]
  %1087 = phi float [ %1023, %924 ], [ %1066, %1033 ], [ %1082, %1067 ], [ 1.000000e+00, %879 ]
  %1088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.i32 %1088, 1
  %1090 = and i32 %1089, 1
  %1091 = icmp ne i32 %1090, 0
  %1092 = add i32 %51, 356
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = and i32 %1094, 32
  %1096 = icmp ne i32 %1095, 0
  %1097 = and i1 %1091, %1096
  %1098 = select i1 %1097, float 1.000000e+00, float %1085
  %1099 = select i1 %1097, float 0x3FD3333340000000, float %1086
  %1100 = select i1 %1097, float 0x3FD3333340000000, float %1087
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 32
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1177, label %1105

; <label>:1105                                    ; preds = %1083
  %1106 = add i32 %51, 92
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = add i32 %51, 392
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %1111, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1113, %dx.types.Handle %98, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1119 = and i32 %1108, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = lshr i32 %1108, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = lshr i32 %1108, 16
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101000000000
  %1128 = fmul fast float %1115, %1120
  %1129 = fadd fast float %1128, %1123
  %1130 = fmul fast float %1129, 0x3F70101000000000
  %1131 = fadd fast float %1116, -5.000000e-01
  %1132 = fadd fast float %1118, -5.000000e-01
  %1133 = fmul fast float %1131, %1127
  %1134 = fmul fast float %1132, %1127
  %1135 = fadd fast float %1133, 5.000000e-01
  %1136 = fadd fast float %1134, 5.000000e-01
  %1137 = fmul fast float %1135, 2.000000e+00
  %1138 = fadd fast float %1137, -1.000000e+00
  %1139 = fmul fast float %1136, 2.000000e+00
  %1140 = fadd fast float %1139, -1.000000e+00
  %1141 = fadd fast float %1138, %1140
  %1142 = fmul fast float %1141, 5.000000e-01
  %1143 = fsub fast float %1138, %1140
  %1144 = fmul fast float %1143, 5.000000e-01
  %1145 = call float @dx.op.unary.f32(i32 6, float %1142)  ; FAbs(value)
  %1146 = fsub fast float 1.000000e+00, %1145
  %1147 = call float @dx.op.unary.f32(i32 6, float %1144)  ; FAbs(value)
  %1148 = fsub fast float %1146, %1147
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1144, float %1148, float %1142, float %1144, float %1148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = call float @dx.op.unary.f32(i32 25, float %1149)  ; Rsqrt(value)
  %1151 = fmul fast float %1142, %1150
  %1152 = fmul fast float %1144, %1150
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 67108864
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1173, label %1157

; <label>:1157                                    ; preds = %1105
  %1158 = add i32 %51, 280
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 65535
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 65535
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = lshr i32 %1160, 16
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = fsub fast float %1130, %1168
  %1170 = fmul fast float %1169, %1162
  %1171 = fadd fast float %1170, %1166
  %1172 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  br label %1173

; <label>:1173                                    ; preds = %1157, %1105
  %1174 = phi float [ %1172, %1157 ], [ %1130, %1105 ]
  %1175 = call float @dx.op.dot2.f32(i32 54, float %1151, float %1152, float %711, float %712)  ; Dot2(ax,ay,bx,by)
  %1176 = call float @dx.op.dot2.f32(i32 54, float %1151, float %1152, float %713, float %714)  ; Dot2(ax,ay,bx,by)
  br label %1177

; <label>:1177                                    ; preds = %1173, %1083
  %1178 = phi float [ %1174, %1173 ], [ 0x3FD6666660000000, %1083 ]
  %1179 = phi float [ %1175, %1173 ], [ 0.000000e+00, %1083 ]
  %1180 = phi float [ %1176, %1173 ], [ 0.000000e+00, %1083 ]
  %1181 = phi float [ %1117, %1173 ], [ 1.000000e+00, %1083 ]
  %1182 = add i32 %51, 160
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = lshr i32 %1184, 22
  %1186 = shl nuw nsw i32 %1185, 5
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = and i32 %1189, 64
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1225, label %1192

; <label>:1192                                    ; preds = %1177
  %1193 = add i32 %51, 408
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = add i32 %1195, 0
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 131072
  %1201 = icmp eq i32 %1200, 0
  %1202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1197, %dx.types.Handle %98, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = fmul fast float %1203, %278
  %1207 = fmul fast float %1204, %281
  %1208 = fmul fast float %1205, %284
  br i1 %1201, label %1215, label %1209

; <label>:1209                                    ; preds = %1192
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = fmul fast float %1211, %1206
  %1213 = fmul fast float %1211, %1207
  %1214 = fmul fast float %1211, %1208
  br label %1215

; <label>:1215                                    ; preds = %1209, %1192
  %1216 = phi float [ %1212, %1209 ], [ %1206, %1192 ]
  %1217 = phi float [ %1213, %1209 ], [ %1207, %1192 ]
  %1218 = phi float [ %1214, %1209 ], [ %1208, %1192 ]
  %1219 = fmul fast float %1216, %1187
  %1220 = select i1 %261, float %1219, float %1216
  %1221 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1217, float %1218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1222 = select i1 %261, float 0.000000e+00, float %1216
  %1223 = select i1 %261, float %1221, float %1217
  %1224 = select i1 %261, float 0.000000e+00, float %1218
  br label %1225

; <label>:1225                                    ; preds = %1215, %1177
  %1226 = phi float [ %1222, %1215 ], [ 0.000000e+00, %1177 ]
  %1227 = phi float [ %1223, %1215 ], [ 0.000000e+00, %1177 ]
  %1228 = phi float [ %1224, %1215 ], [ 0.000000e+00, %1177 ]
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 1024
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1263, label %1233

; <label>:1233                                    ; preds = %1225
  %1234 = add i32 %51, 152
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1238, 0x3F70101020000000
  %1240 = lshr i32 %1236, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = lshr i32 %1236, 16
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = fmul fast float %1239, %1239
  %1249 = fmul fast float %1243, %1243
  %1250 = fmul fast float %1247, %1247
  %1251 = add i32 %51, 476
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %1253, 0
  %1255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1255, %dx.types.Handle %99, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = fmul fast float %1248, %1257
  %1261 = fmul fast float %1249, %1258
  %1262 = fmul fast float %1250, %1259
  br label %1263

; <label>:1263                                    ; preds = %1233, %1225
  %1264 = phi float [ %1260, %1233 ], [ 0.000000e+00, %1225 ]
  %1265 = phi float [ %1261, %1233 ], [ 0.000000e+00, %1225 ]
  %1266 = phi float [ %1262, %1233 ], [ 0.000000e+00, %1225 ]
  %1267 = fcmp fast ogt float %1264, 0.000000e+00
  %1268 = fcmp fast ogt float %1265, 0.000000e+00
  %1269 = fcmp fast ogt float %1266, 0.000000e+00
  %1270 = call float @dx.op.unary.f32(i32 23, float %1264)  ; Log(value)
  %1271 = call float @dx.op.unary.f32(i32 23, float %1265)  ; Log(value)
  %1272 = call float @dx.op.unary.f32(i32 23, float %1266)  ; Log(value)
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = lshr i32 %1274, 7
  %1276 = and i32 %1275, 32752
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = fmul fast float %1270, 0xBFE62E4300000000
  %1279 = fmul fast float %1278, %1277
  %1280 = fmul fast float %1271, 0xBFE62E4300000000
  %1281 = fmul fast float %1280, %1277
  %1282 = fmul fast float %1272, 0xBFE62E4300000000
  %1283 = fmul fast float %1282, %1277
  %1284 = select i1 %1267, float %1279, float 1.270000e+02
  %1285 = select i1 %1268, float %1281, float 1.270000e+02
  %1286 = select i1 %1269, float %1283, float 1.270000e+02
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 2048
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1306, label %1291

; <label>:1291                                    ; preds = %1263
  %1292 = add i32 %51, 492
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = add i32 %1294, 0
  %1296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1296, %dx.types.Handle %99, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 3
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = shl i32 %1300, 4
  %1302 = and i32 %1301, 32752
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = fmul fast float %1303, %1298
  %1305 = call float @dx.op.binary.f32(i32 35, float %1304, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1306

; <label>:1306                                    ; preds = %1291, %1263
  %1307 = phi float [ %1305, %1291 ], [ 0x3F70101020000000, %1263 ]
  %1308 = add i32 %51, 96
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = and i32 %1310, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = lshr i32 %1310, 8
  %1314 = and i32 %1313, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1099, float %1100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1317 = fmul fast float %1315, %1316
  %1318 = fadd fast float %1317, %1312
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  br label %1321

; <label>:1321                                    ; preds = %1306, %693
  %1322 = phi float [ 0.000000e+00, %693 ], [ %1179, %1306 ]
  %1323 = phi float [ 0.000000e+00, %693 ], [ %1180, %1306 ]
  %1324 = phi float [ 0.000000e+00, %693 ], [ %1098, %1306 ]
  %1325 = phi float [ 0.000000e+00, %693 ], [ %1099, %1306 ]
  %1326 = phi float [ 0.000000e+00, %693 ], [ %1100, %1306 ]
  %1327 = phi float [ 0.000000e+00, %693 ], [ %1226, %1306 ]
  %1328 = phi float [ 0.000000e+00, %693 ], [ %1227, %1306 ]
  %1329 = phi float [ 0.000000e+00, %693 ], [ %1228, %1306 ]
  %1330 = phi float [ 0.000000e+00, %693 ], [ %1284, %1306 ]
  %1331 = phi float [ 0.000000e+00, %693 ], [ %1285, %1306 ]
  %1332 = phi float [ 0.000000e+00, %693 ], [ %1286, %1306 ]
  %1333 = phi float [ 0.000000e+00, %693 ], [ %1084, %1306 ]
  %1334 = phi float [ 0.000000e+00, %693 ], [ %880, %1306 ]
  %1335 = phi float [ 0.000000e+00, %693 ], [ %1178, %1306 ]
  %1336 = phi float [ 0.000000e+00, %693 ], [ %1181, %1306 ]
  %1337 = phi float [ 0.000000e+00, %693 ], [ %1307, %1306 ]
  %1338 = phi float [ 0.000000e+00, %693 ], [ %1320, %1306 ]
  br i1 %641, label %2205, label %1339

; <label>:1339                                    ; preds = %1321
  %1340 = icmp ult i32 %699, 2
  %1341 = add i32 %51, 40
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %51, 44
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = or i32 %1346, %1343
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %2205, label %1349

; <label>:1349                                    ; preds = %1339
  %1350 = and i32 %1343, 262144
  %1351 = icmp ne i32 %1350, 0
  %1352 = select i1 %1351, float %57, float 1.000000e+00
  %1353 = select i1 %1351, float %58, float 0.000000e+00
  %1354 = select i1 %1351, float %59, float 0.000000e+00
  %1355 = select i1 %1351, float %60, float 1.000000e+00
  %1356 = select i1 %1351, float %61, float %84
  %1357 = select i1 %1351, float %62, float %85
  %1358 = add i32 %51, 300
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = lshr i32 %1360, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = fmul fast float %1362, 0x3F50624DE0000000
  %1364 = add i32 %51, 104
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = lshr i32 %1366, 16
  %1368 = and i32 %1367, 255
  %1369 = lshr i32 %1366, 24
  %1370 = add i32 %51, 308
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 65535
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = lshr i32 %1372, 16
  %1376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1375)  ; LegacyF16ToF32(value)
  %1377 = add i32 %51, 48
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = lshr i32 %1379, 22
  %1381 = shl nuw nsw i32 %1380, 5
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = shl i32 %1379, 4
  %1384 = and i32 %1383, 32752
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = lshr i32 %1379, 7
  %1387 = and i32 %1386, 32752
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 3
  %1391 = fmul fast float %1390, 1.000000e+03
  %1392 = fmul fast float %1391, %420
  %1393 = call float @dx.op.unary.f32(i32 22, float %1392)  ; Frc(value)
  %1394 = fadd fast float %1393, %408
  %1395 = fmul fast float %1391, %422
  %1396 = call float @dx.op.unary.f32(i32 22, float %1395)  ; Frc(value)
  %1397 = fadd fast float %1396, %409
  %1398 = fmul fast float %1363, %1391
  %1399 = call float @dx.op.unary.f32(i32 22, float %1398)  ; Frc(value)
  %1400 = fmul fast float %1399, 0x401921FB60000000
  %1401 = fadd fast float %1400, %1382
  %1402 = call float @dx.op.unary.f32(i32 13, float %1401)  ; Sin(value)
  %1403 = call float @dx.op.unary.f32(i32 12, float %1401)  ; Cos(value)
  %1404 = fsub fast float -0.000000e+00, %1402
  %1405 = fadd fast float %1356, -5.000000e-01
  %1406 = fadd fast float %1357, -5.000000e-01
  %1407 = fmul fast float %1374, %1405
  %1408 = fmul fast float %1376, %1406
  %1409 = fadd fast float %1407, 5.000000e-01
  %1410 = fadd fast float %1408, 5.000000e-01
  %1411 = fmul fast float %1385, %1409
  %1412 = fmul fast float %1388, %1410
  %1413 = fmul fast float %1403, %1411
  %1414 = call float @dx.op.tertiary.f32(i32 46, float %1404, float %1412, float %1413)  ; FMad(a,b,c)
  %1415 = fmul fast float %1402, %1411
  %1416 = call float @dx.op.tertiary.f32(i32 46, float %1403, float %1412, float %1415)  ; FMad(a,b,c)
  %1417 = fadd fast float %1394, %1414
  %1418 = fadd fast float %1397, %1416
  %1419 = icmp ugt i32 %1368, 1
  %1420 = icmp ugt i32 %1366, 33554431
  %1421 = or i1 %1420, %1419
  br i1 %1421, label %1422, label %1447

; <label>:1422                                    ; preds = %1349
  %1423 = add i32 %51, 244
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = lshr i32 %1425, 16
  %1427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1426)  ; LegacyF16ToF32(value)
  %1428 = fmul fast float %1390, %1427
  %1429 = call float @dx.op.unary.f32(i32 22, float %1428)  ; Frc(value)
  %1430 = mul nuw nsw i32 %1368, %1369
  %1431 = uitofp i32 %1430 to float
  %1432 = fmul fast float %1429, %1431
  %1433 = call float @dx.op.unary.f32(i32 27, float %1432)  ; Round_ni(value)
  %1434 = fptoui float %1433 to i32
  %1435 = urem i32 %1434, %1368
  %1436 = udiv i32 %1434, %1369
  %1437 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1438 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1439 = uitofp i32 %1435 to float
  %1440 = uitofp i32 %1436 to float
  %1441 = fadd fast float %1437, %1439
  %1442 = fadd fast float %1438, %1440
  %1443 = uitofp i32 %1368 to float
  %1444 = uitofp i32 %1369 to float
  %1445 = fdiv fast float %1441, %1443
  %1446 = fdiv fast float %1442, %1444
  br label %1447

; <label>:1447                                    ; preds = %1422, %1349
  %1448 = phi float [ %1445, %1422 ], [ %1417, %1349 ]
  %1449 = phi float [ %1446, %1422 ], [ %1418, %1349 ]
  %1450 = and i32 %1343, 256
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1498, label %1452

; <label>:1452                                    ; preds = %1447
  %1453 = add i32 %51, 444
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = add i32 %1455, 0
  %1457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1457, %dx.types.Handle %99, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = add i32 %51, 116
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = shl i32 %1462, 4
  %1464 = and i32 %1463, 32752
  %1465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1464)  ; LegacyF16ToF32(value)
  %1466 = lshr i32 %1462, 7
  %1467 = and i32 %1466, 32752
  %1468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1467)  ; LegacyF16ToF32(value)
  %1469 = fsub fast float 1.000000e+00, %696
  %1470 = call float @dx.op.binary.f32(i32 35, float %1469, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1471 = bitcast float %696 to i32
  %1472 = sitofp i32 %1471 to float
  %1473 = fadd fast float %1472, 0xC1CFBF8940000000
  %1474 = fmul fast float %1468, %1473
  %1475 = fadd fast float %1474, 0x41CFBF8940000000
  %1476 = fptosi float %1475 to i32
  %1477 = bitcast i32 %1476 to float
  %1478 = bitcast float %1470 to i32
  %1479 = sitofp i32 %1478 to float
  %1480 = fadd fast float %1479, 0xC1CFBF8940000000
  %1481 = fmul fast float %1480, %1468
  %1482 = fadd fast float %1481, 0x41CFBF8940000000
  %1483 = fptosi float %1482 to i32
  %1484 = bitcast i32 %1483 to float
  %1485 = fmul fast float %1477, %1465
  %1486 = fmul fast float %1484, %1465
  %1487 = fsub fast float %1470, %1485
  %1488 = fadd fast float %1486, %1470
  %1489 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  %1490 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1491 = fsub fast float %1459, %1489
  %1492 = fsub fast float %1490, %1489
  %1493 = bitcast float %1492 to i32
  %1494 = sub nsw i32 2129859010, %1493
  %1495 = bitcast i32 %1494 to float
  %1496 = fmul fast float %1495, %1491
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  br label %1498

; <label>:1498                                    ; preds = %1452, %1447
  %1499 = phi float [ %1497, %1452 ], [ %696, %1447 ]
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 128
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1520, label %1504

; <label>:1504                                    ; preds = %1498
  %1505 = add i32 %51, 428
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = add i32 %1507, 0
  %1509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1509, %dx.types.Handle %99, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 524288
  %1515 = icmp ne i32 %1514, 0
  %1516 = fcmp fast ogt float %1511, 0x3FE0101020000000
  %1517 = select i1 %1516, float 1.000000e+00, float 0.000000e+00
  %1518 = select i1 %1515, float %1517, float %1511
  %1519 = fmul fast float %1518, %1499
  br label %1520

; <label>:1520                                    ; preds = %1504, %1498
  %1521 = phi float [ %1519, %1504 ], [ %1499, %1498 ]
  %1522 = fcmp fast ult float %1521, 0x3F70101020000000
  br i1 %1522, label %2205, label %1523

; <label>:1523                                    ; preds = %1520
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 16
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1726, label %1528

; <label>:1528                                    ; preds = %1523
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = add i32 %51, 380
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1535, %dx.types.Handle %98, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.ResRet.f32 %1536, 2
  %1540 = extractvalue %dx.types.ResRet.f32 %1536, 3
  %1541 = and i32 %1530, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = lshr i32 %1530, 8
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1540, %1542
  %1547 = fadd fast float %1546, %1545
  %1548 = fmul fast float %1547, 0x3F70101000000000
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 512
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1561, label %1553

; <label>:1553                                    ; preds = %1528
  %1554 = add i32 %51, 464
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %1556, 0
  %1558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1558, %dx.types.Handle %99, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  br label %1561

; <label>:1561                                    ; preds = %1553, %1528
  %1562 = phi float [ %1560, %1553 ], [ 1.000000e+00, %1528 ]
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 33554432
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1673, label %1567

; <label>:1567                                    ; preds = %1561
  %1568 = add i32 %51, 240
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 65535
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = lshr i32 %1570, 16
  %1574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1573)  ; LegacyF16ToF32(value)
  %1575 = add i32 %51, 244
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 65535
  %1579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1578)  ; LegacyF16ToF32(value)
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = lshr i32 %1581, 24
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1583, 0x3F70101020000000
  %1585 = and i32 %1581, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1586, 0x3F70101020000000
  %1588 = lshr i32 %1581, 8
  %1589 = and i32 %1588, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = lshr i32 %1581, 16
  %1593 = and i32 %1592, 255
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1594, 0x3F70101020000000
  %1596 = add i32 %51, 236
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = lshr i32 %1598, 24
  %1600 = uitofp i32 %1599 to float
  %1601 = fmul fast float %1600, 0x3F70101020000000
  %1602 = and i32 %1598, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1603, 0x3F70101020000000
  %1605 = lshr i32 %1598, 8
  %1606 = and i32 %1605, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = lshr i32 %1598, 16
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = bitcast float %1537 to i32
  %1614 = ashr i32 %1613, 1
  %1615 = sub nsw i32 1597463174, %1614
  %1616 = bitcast i32 %1615 to float
  %1617 = fmul fast float %1537, 5.000000e-01
  %1618 = fmul fast float %1616, %1616
  %1619 = fmul fast float %1618, %1617
  %1620 = fsub fast float 1.500000e+00, %1619
  %1621 = fmul fast float %1616, %1537
  %1622 = fmul fast float %1621, %1620
  %1623 = bitcast float %1538 to i32
  %1624 = ashr i32 %1623, 1
  %1625 = sub nsw i32 1597463174, %1624
  %1626 = bitcast i32 %1625 to float
  %1627 = fmul fast float %1538, 5.000000e-01
  %1628 = fmul fast float %1626, %1626
  %1629 = fmul fast float %1628, %1627
  %1630 = fsub fast float 1.500000e+00, %1629
  %1631 = fmul fast float %1626, %1538
  %1632 = fmul fast float %1631, %1630
  %1633 = bitcast float %1539 to i32
  %1634 = ashr i32 %1633, 1
  %1635 = sub nsw i32 1597463174, %1634
  %1636 = bitcast i32 %1635 to float
  %1637 = fmul fast float %1539, 5.000000e-01
  %1638 = fmul fast float %1636, %1636
  %1639 = fmul fast float %1638, %1637
  %1640 = fsub fast float 1.500000e+00, %1639
  %1641 = fmul fast float %1636, %1539
  %1642 = fmul fast float %1641, %1640
  %1643 = fsub fast float %1622, %1604
  %1644 = fsub fast float %1632, %1608
  %1645 = fsub fast float %1642, %1612
  %1646 = fmul fast float %1643, %1572
  %1647 = fmul fast float %1644, %1574
  %1648 = fmul fast float %1645, %1579
  %1649 = fadd fast float %1646, %1587
  %1650 = fadd fast float %1647, %1591
  %1651 = fadd fast float %1648, %1595
  %1652 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1655 = fmul fast float %1652, %1652
  %1656 = fmul fast float %1653, %1653
  %1657 = fmul fast float %1654, %1654
  %1658 = fsub fast float %1655, %1537
  %1659 = fsub fast float %1656, %1538
  %1660 = fsub fast float %1657, %1539
  %1661 = fmul fast float %1658, %1562
  %1662 = fmul fast float %1659, %1562
  %1663 = fmul fast float %1660, %1562
  %1664 = fadd fast float %1661, %1537
  %1665 = fadd fast float %1662, %1538
  %1666 = fadd fast float %1663, %1539
  %1667 = fadd fast float %1584, %1548
  %1668 = fsub fast float %1667, %1601
  %1669 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1670 = fsub fast float %1669, %1548
  %1671 = fmul fast float %1670, %1562
  %1672 = fadd fast float %1671, %1548
  br label %1726

; <label>:1673                                    ; preds = %1561
  %1674 = and i32 %1564, 134217728
  %1675 = icmp eq i32 %1674, 0
  br i1 %1675, label %1710, label %1676

; <label>:1676                                    ; preds = %1673
  %1677 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %1678 = call float @dx.op.unary.f32(i32 24, float %397)  ; Sqrt(value)
  %1679 = call float @dx.op.unary.f32(i32 24, float %398)  ; Sqrt(value)
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fadd fast float %1678, -5.000000e-01
  %1682 = fadd fast float %1679, -5.000000e-01
  %1683 = fmul fast float %1680, %1562
  %1684 = fmul fast float %1681, %1562
  %1685 = fmul fast float %1682, %1562
  %1686 = fadd fast float %1683, 5.000000e-01
  %1687 = fadd fast float %1684, 5.000000e-01
  %1688 = fadd fast float %1685, 5.000000e-01
  %1689 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1690 = call float @dx.op.unary.f32(i32 24, float %1538)  ; Sqrt(value)
  %1691 = call float @dx.op.unary.f32(i32 24, float %1539)  ; Sqrt(value)
  %1692 = fmul fast float %1686, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1689
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1689
  %1697 = fmul fast float %1687, 2.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1690
  %1700 = fadd fast float %1699, %1697
  %1701 = fmul fast float %1700, %1690
  %1702 = fmul fast float %1688, 2.000000e+00
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = fmul fast float %1703, %1691
  %1705 = fadd fast float %1704, %1702
  %1706 = fmul fast float %1705, %1691
  %1707 = fmul fast float %1696, %1696
  %1708 = fmul fast float %1701, %1701
  %1709 = fmul fast float %1706, %1706
  br label %1726

; <label>:1710                                    ; preds = %1673
  %1711 = fmul fast float %396, %396
  %1712 = fmul fast float %397, %397
  %1713 = fmul fast float %398, %398
  %1714 = fadd fast float %1711, -1.000000e+00
  %1715 = fadd fast float %1712, -1.000000e+00
  %1716 = fadd fast float %1713, -1.000000e+00
  %1717 = fmul fast float %1562, %1714
  %1718 = fmul fast float %1562, %1715
  %1719 = fmul fast float %1562, %1716
  %1720 = fadd fast float %1717, 1.000000e+00
  %1721 = fadd fast float %1718, 1.000000e+00
  %1722 = fadd fast float %1719, 1.000000e+00
  %1723 = fmul fast float %1720, %1537
  %1724 = fmul fast float %1721, %1538
  %1725 = fmul fast float %1722, %1539
  br label %1726

; <label>:1726                                    ; preds = %1710, %1676, %1567, %1523
  %1727 = phi float [ %1672, %1567 ], [ %1548, %1676 ], [ %1548, %1710 ], [ 0x3FA23C0BE0000000, %1523 ]
  %1728 = phi float [ %1664, %1567 ], [ %1707, %1676 ], [ %1723, %1710 ], [ 1.000000e+00, %1523 ]
  %1729 = phi float [ %1665, %1567 ], [ %1708, %1676 ], [ %1724, %1710 ], [ 1.000000e+00, %1523 ]
  %1730 = phi float [ %1666, %1567 ], [ %1709, %1676 ], [ %1725, %1710 ], [ 1.000000e+00, %1523 ]
  %1731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.i32 %1731, 1
  %1733 = and i32 %1732, 1
  %1734 = icmp ne i32 %1733, 0
  %1735 = add i32 %51, 356
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = and i32 %1737, 32
  %1739 = icmp ne i32 %1738, 0
  %1740 = and i1 %1734, %1739
  %1741 = select i1 %1740, float 1.000000e+00, float %1728
  %1742 = select i1 %1740, float 0x3FD3333340000000, float %1729
  %1743 = select i1 %1740, float 0x3FD3333340000000, float %1730
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 32
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1820, label %1748

; <label>:1748                                    ; preds = %1726
  %1749 = add i32 %51, 108
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = add i32 %51, 396
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = add i32 %1754, 0
  %1756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1756, %dx.types.Handle %98, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.ResRet.f32 %1757, 1
  %1760 = extractvalue %dx.types.ResRet.f32 %1757, 2
  %1761 = extractvalue %dx.types.ResRet.f32 %1757, 3
  %1762 = and i32 %1751, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = lshr i32 %1751, 8
  %1765 = and i32 %1764, 255
  %1766 = uitofp i32 %1765 to float
  %1767 = lshr i32 %1751, 16
  %1768 = and i32 %1767, 255
  %1769 = uitofp i32 %1768 to float
  %1770 = fmul fast float %1769, 0x3F70101000000000
  %1771 = fmul fast float %1758, %1763
  %1772 = fadd fast float %1771, %1766
  %1773 = fmul fast float %1772, 0x3F70101000000000
  %1774 = fadd fast float %1759, -5.000000e-01
  %1775 = fadd fast float %1761, -5.000000e-01
  %1776 = fmul fast float %1774, %1770
  %1777 = fmul fast float %1775, %1770
  %1778 = fadd fast float %1776, 5.000000e-01
  %1779 = fadd fast float %1777, 5.000000e-01
  %1780 = fmul fast float %1778, 2.000000e+00
  %1781 = fadd fast float %1780, -1.000000e+00
  %1782 = fmul fast float %1779, 2.000000e+00
  %1783 = fadd fast float %1782, -1.000000e+00
  %1784 = fadd fast float %1781, %1783
  %1785 = fmul fast float %1784, 5.000000e-01
  %1786 = fsub fast float %1781, %1783
  %1787 = fmul fast float %1786, 5.000000e-01
  %1788 = call float @dx.op.unary.f32(i32 6, float %1785)  ; FAbs(value)
  %1789 = fsub fast float 1.000000e+00, %1788
  %1790 = call float @dx.op.unary.f32(i32 6, float %1787)  ; FAbs(value)
  %1791 = fsub fast float %1789, %1790
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1785, float %1787, float %1791, float %1785, float %1787, float %1791)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = call float @dx.op.unary.f32(i32 25, float %1792)  ; Rsqrt(value)
  %1794 = fmul fast float %1785, %1793
  %1795 = fmul fast float %1787, %1793
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 67108864
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1816, label %1800

; <label>:1800                                    ; preds = %1748
  %1801 = add i32 %51, 296
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 65535
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 65535
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = lshr i32 %1803, 16
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = fsub fast float %1773, %1811
  %1813 = fmul fast float %1812, %1805
  %1814 = fadd fast float %1813, %1809
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  br label %1816

; <label>:1816                                    ; preds = %1800, %1748
  %1817 = phi float [ %1815, %1800 ], [ %1773, %1748 ]
  %1818 = call float @dx.op.dot2.f32(i32 54, float %1794, float %1795, float %1352, float %1353)  ; Dot2(ax,ay,bx,by)
  %1819 = call float @dx.op.dot2.f32(i32 54, float %1794, float %1795, float %1354, float %1355)  ; Dot2(ax,ay,bx,by)
  br label %1820

; <label>:1820                                    ; preds = %1816, %1726
  %1821 = phi float [ %1817, %1816 ], [ 0x3FD6666660000000, %1726 ]
  %1822 = phi float [ %1818, %1816 ], [ 0.000000e+00, %1726 ]
  %1823 = phi float [ %1819, %1816 ], [ 0.000000e+00, %1726 ]
  %1824 = phi float [ %1760, %1816 ], [ 1.000000e+00, %1726 ]
  %1825 = add i32 %51, 176
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = lshr i32 %1827, 22
  %1829 = shl nuw nsw i32 %1828, 5
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 64
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1868, label %1835

; <label>:1835                                    ; preds = %1820
  %1836 = add i32 %51, 412
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = add i32 %1838, 0
  %1840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1839, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 131072
  %1844 = icmp eq i32 %1843, 0
  %1845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1840, %dx.types.Handle %98, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.ResRet.f32 %1845, 1
  %1848 = extractvalue %dx.types.ResRet.f32 %1845, 2
  %1849 = fmul fast float %379, %1846
  %1850 = fmul fast float %380, %1847
  %1851 = fmul fast float %381, %1848
  br i1 %1844, label %1858, label %1852

; <label>:1852                                    ; preds = %1835
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = fmul fast float %1854, %1849
  %1856 = fmul fast float %1854, %1850
  %1857 = fmul fast float %1854, %1851
  br label %1858

; <label>:1858                                    ; preds = %1852, %1835
  %1859 = phi float [ %1855, %1852 ], [ %1849, %1835 ]
  %1860 = phi float [ %1856, %1852 ], [ %1850, %1835 ]
  %1861 = phi float [ %1857, %1852 ], [ %1851, %1835 ]
  %1862 = fmul fast float %1859, %1830
  %1863 = select i1 %261, float %1862, float %1859
  %1864 = call float @dx.op.dot3.f32(i32 55, float %1863, float %1860, float %1861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1865 = select i1 %261, float 0.000000e+00, float %1859
  %1866 = select i1 %261, float %1864, float %1860
  %1867 = select i1 %261, float 0.000000e+00, float %1861
  br label %1868

; <label>:1868                                    ; preds = %1858, %1820
  %1869 = phi float [ %1865, %1858 ], [ 0.000000e+00, %1820 ]
  %1870 = phi float [ %1866, %1858 ], [ 0.000000e+00, %1820 ]
  %1871 = phi float [ %1867, %1858 ], [ 0.000000e+00, %1820 ]
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 1024
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1906, label %1876

; <label>:1876                                    ; preds = %1868
  %1877 = add i32 %51, 168
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = and i32 %1879, 255
  %1881 = uitofp i32 %1880 to float
  %1882 = fmul fast float %1881, 0x3F70101020000000
  %1883 = lshr i32 %1879, 8
  %1884 = and i32 %1883, 255
  %1885 = uitofp i32 %1884 to float
  %1886 = fmul fast float %1885, 0x3F70101020000000
  %1887 = lshr i32 %1879, 16
  %1888 = and i32 %1887, 255
  %1889 = uitofp i32 %1888 to float
  %1890 = fmul fast float %1889, 0x3F70101020000000
  %1891 = fmul fast float %1882, %1882
  %1892 = fmul fast float %1886, %1886
  %1893 = fmul fast float %1890, %1890
  %1894 = add i32 %51, 480
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1896, 0
  %1898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1898, %dx.types.Handle %99, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = fmul fast float %1891, %1900
  %1904 = fmul fast float %1892, %1901
  %1905 = fmul fast float %1893, %1902
  br label %1906

; <label>:1906                                    ; preds = %1876, %1868
  %1907 = phi float [ %1903, %1876 ], [ 0.000000e+00, %1868 ]
  %1908 = phi float [ %1904, %1876 ], [ 0.000000e+00, %1868 ]
  %1909 = phi float [ %1905, %1876 ], [ 0.000000e+00, %1868 ]
  %1910 = fcmp fast ogt float %1907, 0.000000e+00
  %1911 = fcmp fast ogt float %1908, 0.000000e+00
  %1912 = fcmp fast ogt float %1909, 0.000000e+00
  %1913 = call float @dx.op.unary.f32(i32 23, float %1907)  ; Log(value)
  %1914 = call float @dx.op.unary.f32(i32 23, float %1908)  ; Log(value)
  %1915 = call float @dx.op.unary.f32(i32 23, float %1909)  ; Log(value)
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = lshr i32 %1917, 7
  %1919 = and i32 %1918, 32752
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = fmul fast float %1913, 0xBFE62E4300000000
  %1922 = fmul fast float %1921, %1920
  %1923 = fmul fast float %1914, 0xBFE62E4300000000
  %1924 = fmul fast float %1923, %1920
  %1925 = fmul fast float %1915, 0xBFE62E4300000000
  %1926 = fmul fast float %1925, %1920
  %1927 = select i1 %1910, float %1922, float 1.270000e+02
  %1928 = select i1 %1911, float %1924, float 1.270000e+02
  %1929 = select i1 %1912, float %1926, float 1.270000e+02
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = and i32 %1931, 2048
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1949, label %1934

; <label>:1934                                    ; preds = %1906
  %1935 = add i32 %51, 496
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %1937, 0
  %1939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1939, %dx.types.Handle %99, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 3
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = shl i32 %1943, 4
  %1945 = and i32 %1944, 32752
  %1946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1945)  ; LegacyF16ToF32(value)
  %1947 = fmul fast float %1946, %1941
  %1948 = call float @dx.op.binary.f32(i32 35, float %1947, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1949

; <label>:1949                                    ; preds = %1934, %1906
  %1950 = phi float [ %1948, %1934 ], [ 0x3F70101020000000, %1906 ]
  %1951 = add i32 %51, 112
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = and i32 %1953, 255
  %1955 = uitofp i32 %1954 to float
  %1956 = lshr i32 %1953, 8
  %1957 = and i32 %1956, 255
  %1958 = uitofp i32 %1957 to float
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = fmul fast float %1958, %1959
  %1961 = fadd fast float %1960, %1955
  %1962 = fmul fast float %1961, 0x3F70101020000000
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  br i1 %1340, label %1964, label %1999

; <label>:1964                                    ; preds = %1949
  %1965 = fmul fast float %1950, 2.000000e+00
  %1966 = fcmp fast olt float %1927, 1.270000e+02
  %1967 = fcmp fast olt float %1928, 1.270000e+02
  %1968 = fcmp fast olt float %1929, 1.270000e+02
  %1969 = fmul fast float %1927, 0xBFF7154760000000
  %1970 = fmul fast float %1969, %1965
  %1971 = fmul fast float %1928, 0xBFF7154760000000
  %1972 = fmul fast float %1971, %1965
  %1973 = fmul fast float %1929, 0xBFF7154760000000
  %1974 = fmul fast float %1973, %1965
  %1975 = call float @dx.op.unary.f32(i32 21, float %1970)  ; Exp(value)
  %1976 = call float @dx.op.unary.f32(i32 21, float %1972)  ; Exp(value)
  %1977 = call float @dx.op.unary.f32(i32 21, float %1974)  ; Exp(value)
  %1978 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1980 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1981 = fadd fast float %1978, -1.000000e+00
  %1982 = select i1 %1966, float %1981, float -1.000000e+00
  %1983 = fadd fast float %1979, -1.000000e+00
  %1984 = select i1 %1967, float %1983, float -1.000000e+00
  %1985 = fadd fast float %1980, -1.000000e+00
  %1986 = select i1 %1968, float %1985, float -1.000000e+00
  %1987 = fmul fast float %1982, %1521
  %1988 = fmul fast float %1984, %1521
  %1989 = fmul fast float %1986, %1521
  %1990 = fadd fast float %1987, 1.000000e+00
  %1991 = fadd fast float %1988, 1.000000e+00
  %1992 = fadd fast float %1989, 1.000000e+00
  %1993 = fmul fast float %1990, %1324
  %1994 = fmul fast float %1991, %1325
  %1995 = fmul fast float %1992, %1326
  %1996 = fmul fast float %1990, %1327
  %1997 = fmul fast float %1991, %1328
  %1998 = fmul fast float %1992, %1329
  br label %1999

; <label>:1999                                    ; preds = %1964, %1949
  %2000 = phi float [ %1993, %1964 ], [ %1324, %1949 ]
  %2001 = phi float [ %1994, %1964 ], [ %1325, %1949 ]
  %2002 = phi float [ %1995, %1964 ], [ %1326, %1949 ]
  %2003 = phi float [ %1996, %1964 ], [ %1327, %1949 ]
  %2004 = phi float [ %1997, %1964 ], [ %1328, %1949 ]
  %2005 = phi float [ %1998, %1964 ], [ %1329, %1949 ]
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 3
  %2009 = icmp eq i32 %2008, 3
  br i1 %2009, label %2088, label %2010

; <label>:2010                                    ; preds = %1999
  %2011 = and i32 %2007, 16
  %2012 = icmp ne i32 %2011, 0
  %2013 = select i1 %2012, float %1521, float 0.000000e+00
  %2014 = icmp eq i32 %2008, 0
  br i1 %2014, label %2015, label %2043

; <label>:2015                                    ; preds = %2010
  %2016 = and i32 %2007, 64
  %2017 = icmp ne i32 %2016, 0
  %2018 = select i1 %2017, float %1521, float 0.000000e+00
  %2019 = fsub fast float %1741, %2000
  %2020 = fsub fast float %1742, %2001
  %2021 = fsub fast float %1743, %2002
  %2022 = fmul fast float %2013, %2019
  %2023 = fmul fast float %2013, %2020
  %2024 = fmul fast float %2013, %2021
  %2025 = fadd fast float %2022, %2000
  %2026 = fadd fast float %2023, %2001
  %2027 = fadd fast float %2024, %2002
  %2028 = fsub fast float %1727, %1333
  %2029 = fmul fast float %2013, %2028
  %2030 = fadd fast float %2029, %1333
  %2031 = fsub fast float %1869, %2003
  %2032 = fsub fast float %1870, %2004
  %2033 = fsub fast float %1871, %2005
  %2034 = fmul fast float %2018, %2031
  %2035 = fmul fast float %2018, %2032
  %2036 = fmul fast float %2018, %2033
  %2037 = fadd fast float %2034, %2003
  %2038 = fadd fast float %2035, %2004
  %2039 = fadd fast float %2036, %2005
  %2040 = fsub fast float %1963, %1338
  %2041 = fmul fast float %2013, %2040
  %2042 = fadd fast float %2041, %1338
  br label %2088

; <label>:2043                                    ; preds = %2010
  %2044 = icmp eq i32 %2008, 1
  br i1 %2044, label %2045, label %2058

; <label>:2045                                    ; preds = %2043
  %2046 = fadd fast float %1741, -1.000000e+00
  %2047 = fadd fast float %1742, -1.000000e+00
  %2048 = fadd fast float %1743, -1.000000e+00
  %2049 = fmul fast float %2013, %2046
  %2050 = fmul fast float %2013, %2047
  %2051 = fmul fast float %2013, %2048
  %2052 = fadd fast float %2049, 1.000000e+00
  %2053 = fadd fast float %2050, 1.000000e+00
  %2054 = fadd fast float %2051, 1.000000e+00
  %2055 = fmul fast float %2052, %2000
  %2056 = fmul fast float %2053, %2001
  %2057 = fmul fast float %2054, %2002
  br label %2088

; <label>:2058                                    ; preds = %2043
  %2059 = icmp eq i32 %2008, 2
  br i1 %2059, label %2060, label %2088

; <label>:2060                                    ; preds = %2058
  %2061 = call float @dx.op.unary.f32(i32 24, float %1741)  ; Sqrt(value)
  %2062 = call float @dx.op.unary.f32(i32 24, float %1742)  ; Sqrt(value)
  %2063 = call float @dx.op.unary.f32(i32 24, float %1743)  ; Sqrt(value)
  %2064 = fadd fast float %2061, -5.000000e-01
  %2065 = fadd fast float %2062, -5.000000e-01
  %2066 = fadd fast float %2063, -5.000000e-01
  %2067 = fmul fast float %2064, %2013
  %2068 = fmul fast float %2065, %2013
  %2069 = fmul fast float %2066, %2013
  %2070 = fadd fast float %2067, 5.000000e-01
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = fmul fast float %2070, 2.000000e+00
  %2074 = fsub fast float 1.000000e+00, %2073
  %2075 = fmul fast float %2074, %2000
  %2076 = fadd fast float %2075, %2073
  %2077 = fmul fast float %2076, %2000
  %2078 = fmul fast float %2071, 2.000000e+00
  %2079 = fsub fast float 1.000000e+00, %2078
  %2080 = fmul fast float %2079, %2001
  %2081 = fadd fast float %2080, %2078
  %2082 = fmul fast float %2081, %2001
  %2083 = fmul fast float %2072, 2.000000e+00
  %2084 = fsub fast float 1.000000e+00, %2083
  %2085 = fmul fast float %2084, %2002
  %2086 = fadd fast float %2085, %2083
  %2087 = fmul fast float %2086, %2002
  br label %2088

; <label>:2088                                    ; preds = %2060, %2058, %2045, %2015, %1999
  %2089 = phi float [ %2000, %1999 ], [ %2077, %2060 ], [ %2000, %2058 ], [ %2055, %2045 ], [ %2025, %2015 ]
  %2090 = phi float [ %2001, %1999 ], [ %2082, %2060 ], [ %2001, %2058 ], [ %2056, %2045 ], [ %2026, %2015 ]
  %2091 = phi float [ %2002, %1999 ], [ %2087, %2060 ], [ %2002, %2058 ], [ %2057, %2045 ], [ %2027, %2015 ]
  %2092 = phi float [ %2003, %1999 ], [ %2003, %2060 ], [ %2003, %2058 ], [ %2003, %2045 ], [ %2037, %2015 ]
  %2093 = phi float [ %2004, %1999 ], [ %2004, %2060 ], [ %2004, %2058 ], [ %2004, %2045 ], [ %2038, %2015 ]
  %2094 = phi float [ %2005, %1999 ], [ %2005, %2060 ], [ %2005, %2058 ], [ %2005, %2045 ], [ %2039, %2015 ]
  %2095 = phi float [ %1333, %1999 ], [ %1333, %2060 ], [ %1333, %2058 ], [ %1333, %2045 ], [ %2030, %2015 ]
  %2096 = phi float [ %1338, %1999 ], [ %1338, %2060 ], [ %1338, %2058 ], [ %1338, %2045 ], [ %2042, %2015 ]
  %2097 = and i32 %2007, 12
  %2098 = icmp eq i32 %2097, 12
  br i1 %2098, label %2205, label %2099

; <label>:2099                                    ; preds = %2088
  %2100 = and i32 %2007, 2097184
  %2101 = icmp eq i32 %2100, 2097184
  %2102 = select i1 %2101, float %1521, float 0.000000e+00
  %2103 = and i32 %2007, 4194336
  %2104 = icmp eq i32 %2103, 4194336
  %2105 = select i1 %2104, float %1521, float 0.000000e+00
  %2106 = and i32 %2007, 8388640
  %2107 = icmp eq i32 %2106, 8388640
  %2108 = select i1 %2107, float %1521, float 0.000000e+00
  %2109 = and i32 %2007, 1024
  %2110 = icmp ne i32 %2109, 0
  %2111 = select i1 %2110, float %1521, float 0.000000e+00
  %2112 = and i32 %2007, 2048
  %2113 = icmp ne i32 %2112, 0
  %2114 = select i1 %2113, float %1521, float 0.000000e+00
  %2115 = icmp eq i32 %2097, 0
  br i1 %2115, label %2116, label %2141

; <label>:2116                                    ; preds = %2099
  %2117 = fsub fast float %1822, %1322
  %2118 = fsub fast float %1823, %1323
  %2119 = fmul fast float %2102, %2117
  %2120 = fmul fast float %2102, %2118
  %2121 = fadd fast float %2119, %1322
  %2122 = fadd fast float %2120, %1323
  %2123 = fsub fast float %1824, %1336
  %2124 = fmul fast float %2105, %2123
  %2125 = fadd fast float %2124, %1336
  %2126 = fsub fast float %1821, %1335
  %2127 = fmul fast float %2108, %2126
  %2128 = fadd fast float %2127, %1335
  %2129 = fsub fast float %1927, %1330
  %2130 = fsub fast float %1928, %1331
  %2131 = fsub fast float %1929, %1332
  %2132 = fmul fast float %2111, %2129
  %2133 = fmul fast float %2111, %2130
  %2134 = fmul fast float %2111, %2131
  %2135 = fadd fast float %2132, %1330
  %2136 = fadd fast float %2133, %1331
  %2137 = fadd fast float %2134, %1332
  %2138 = fsub fast float %1950, %1337
  %2139 = fmul fast float %2114, %2138
  %2140 = fadd fast float %2139, %1337
  br label %2205

; <label>:2141                                    ; preds = %2099
  %2142 = icmp eq i32 %2097, 4
  br i1 %2142, label %2143, label %2183

; <label>:2143                                    ; preds = %2141
  %2144 = fmul fast float %2102, %1822
  %2145 = fmul fast float %2102, %1823
  %2146 = fadd fast float %2144, %1322
  %2147 = fadd fast float %2145, %1323
  %2148 = call float @dx.op.binary.f32(i32 36, float %1336, float %1824)  ; FMin(a,b)
  %2149 = fsub fast float %2148, %1336
  %2150 = fmul fast float %2149, %2105
  %2151 = fadd fast float %2150, %1336
  %2152 = fadd fast float %1821, %1335
  %2153 = fmul fast float %2152, 0x3FF337FAE0000000
  %2154 = fmul fast float %1335, %1335
  %2155 = fmul fast float %1821, %1821
  %2156 = fadd fast float %2155, %2154
  %2157 = fmul fast float %2156, 0x3FE5152B00000000
  %2158 = fmul fast float %1335, 0xBFCC1F85E0000000
  %2159 = fmul fast float %2158, %1821
  %2160 = fadd fast float %2159, 0xBFE1363700000000
  %2161 = fadd fast float %2160, %2153
  %2162 = fsub fast float %2161, %2157
  %2163 = fmul fast float %2152, 0x3FBA6F0D00000000
  %2164 = fmul fast float %2156, 0x3FD0432880000000
  %2165 = fmul fast float %1335, 0xBFEF110800000000
  %2166 = fmul fast float %2165, %1821
  %2167 = fadd fast float %2166, 1.000000e+00
  %2168 = fsub fast float %2167, %2163
  %2169 = fadd fast float %2168, %2164
  %2170 = fdiv fast float %2162, %2169
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2172 = fsub fast float %2171, %1335
  %2173 = fmul fast float %2172, %2108
  %2174 = fadd fast float %2173, %1335
  %2175 = fmul fast float %2111, %1927
  %2176 = fmul fast float %2111, %1928
  %2177 = fmul fast float %2111, %1929
  %2178 = fadd fast float %2175, %1330
  %2179 = fadd fast float %2176, %1331
  %2180 = fadd fast float %2177, %1332
  %2181 = fmul fast float %2114, %1950
  %2182 = fadd fast float %2181, %1337
  br label %2205

; <label>:2183                                    ; preds = %2141
  %2184 = icmp eq i32 %2097, 8
  br i1 %2184, label %2185, label %2205

; <label>:2185                                    ; preds = %2183
  %2186 = fmul fast float %2102, %1822
  %2187 = fmul fast float %2102, %1823
  %2188 = fadd fast float %2186, %1322
  %2189 = fadd fast float %2187, %1323
  %2190 = call float @dx.op.binary.f32(i32 36, float %1336, float %1824)  ; FMin(a,b)
  %2191 = fsub fast float %2190, %1336
  %2192 = fmul fast float %2191, %2105
  %2193 = fadd fast float %2192, %1336
  %2194 = fsub fast float %1821, %1335
  %2195 = fmul fast float %2108, %2194
  %2196 = fadd fast float %2195, %1335
  %2197 = fmul fast float %2111, %1927
  %2198 = fmul fast float %2111, %1928
  %2199 = fmul fast float %2111, %1929
  %2200 = fadd fast float %2197, %1330
  %2201 = fadd fast float %2198, %1331
  %2202 = fadd fast float %2199, %1332
  %2203 = fmul fast float %2114, %1950
  %2204 = fadd fast float %2203, %1337
  br label %2205

; <label>:2205                                    ; preds = %2185, %2183, %2143, %2116, %2088, %1520, %1339, %1321
  %2206 = phi float [ %1322, %2088 ], [ %1322, %1520 ], [ %1322, %1321 ], [ %2188, %2185 ], [ %1322, %2183 ], [ %2146, %2143 ], [ %2121, %2116 ], [ %1322, %1339 ]
  %2207 = phi float [ %1323, %2088 ], [ %1323, %1520 ], [ %1323, %1321 ], [ %2189, %2185 ], [ %1323, %2183 ], [ %2147, %2143 ], [ %2122, %2116 ], [ %1323, %1339 ]
  %2208 = phi float [ %2089, %2088 ], [ %1324, %1520 ], [ %1324, %1321 ], [ %2089, %2185 ], [ %2089, %2183 ], [ %2089, %2143 ], [ %2089, %2116 ], [ %1324, %1339 ]
  %2209 = phi float [ %2090, %2088 ], [ %1325, %1520 ], [ %1325, %1321 ], [ %2090, %2185 ], [ %2090, %2183 ], [ %2090, %2143 ], [ %2090, %2116 ], [ %1325, %1339 ]
  %2210 = phi float [ %2091, %2088 ], [ %1326, %1520 ], [ %1326, %1321 ], [ %2091, %2185 ], [ %2091, %2183 ], [ %2091, %2143 ], [ %2091, %2116 ], [ %1326, %1339 ]
  %2211 = phi float [ %2092, %2088 ], [ %1327, %1520 ], [ %1327, %1321 ], [ %2092, %2185 ], [ %2092, %2183 ], [ %2092, %2143 ], [ %2092, %2116 ], [ %1327, %1339 ]
  %2212 = phi float [ %2093, %2088 ], [ %1328, %1520 ], [ %1328, %1321 ], [ %2093, %2185 ], [ %2093, %2183 ], [ %2093, %2143 ], [ %2093, %2116 ], [ %1328, %1339 ]
  %2213 = phi float [ %2094, %2088 ], [ %1329, %1520 ], [ %1329, %1321 ], [ %2094, %2185 ], [ %2094, %2183 ], [ %2094, %2143 ], [ %2094, %2116 ], [ %1329, %1339 ]
  %2214 = phi float [ %1330, %2088 ], [ %1330, %1520 ], [ %1330, %1321 ], [ %2200, %2185 ], [ %1330, %2183 ], [ %2178, %2143 ], [ %2135, %2116 ], [ %1330, %1339 ]
  %2215 = phi float [ %1331, %2088 ], [ %1331, %1520 ], [ %1331, %1321 ], [ %2201, %2185 ], [ %1331, %2183 ], [ %2179, %2143 ], [ %2136, %2116 ], [ %1331, %1339 ]
  %2216 = phi float [ %1332, %2088 ], [ %1332, %1520 ], [ %1332, %1321 ], [ %2202, %2185 ], [ %1332, %2183 ], [ %2180, %2143 ], [ %2137, %2116 ], [ %1332, %1339 ]
  %2217 = phi float [ %2095, %2088 ], [ %1333, %1520 ], [ %1333, %1321 ], [ %2095, %2185 ], [ %2095, %2183 ], [ %2095, %2143 ], [ %2095, %2116 ], [ %1333, %1339 ]
  %2218 = phi float [ %1335, %2088 ], [ %1335, %1520 ], [ %1335, %1321 ], [ %2196, %2185 ], [ %1335, %2183 ], [ %2174, %2143 ], [ %2128, %2116 ], [ %1335, %1339 ]
  %2219 = phi float [ %1336, %2088 ], [ %1336, %1520 ], [ %1336, %1321 ], [ %2193, %2185 ], [ %1336, %2183 ], [ %2151, %2143 ], [ %2125, %2116 ], [ %1336, %1339 ]
  %2220 = phi float [ %1337, %2088 ], [ %1337, %1520 ], [ %1337, %1321 ], [ %2204, %2185 ], [ %1337, %2183 ], [ %2182, %2143 ], [ %2140, %2116 ], [ %1337, %1339 ]
  %2221 = phi float [ %2096, %2088 ], [ %1338, %1520 ], [ %1338, %1321 ], [ %2096, %2185 ], [ %2096, %2183 ], [ %2096, %2143 ], [ %2096, %2116 ], [ %1338, %1339 ]
  br i1 %643, label %3088, label %2222

; <label>:2222                                    ; preds = %2205
  %2223 = icmp ult i32 %699, 3
  %2224 = add i32 %51, 56
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %51, 60
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = or i32 %2229, %2226
  %2231 = icmp eq i32 %2230, 0
  br i1 %2231, label %3088, label %2232

; <label>:2232                                    ; preds = %2222
  %2233 = and i32 %2226, 262144
  %2234 = icmp ne i32 %2233, 0
  %2235 = select i1 %2234, float %57, float 1.000000e+00
  %2236 = select i1 %2234, float %58, float 0.000000e+00
  %2237 = select i1 %2234, float %59, float 0.000000e+00
  %2238 = select i1 %2234, float %60, float 1.000000e+00
  %2239 = select i1 %2234, float %61, float %84
  %2240 = select i1 %2234, float %62, float %85
  %2241 = add i32 %51, 316
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = lshr i32 %2243, 16
  %2245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2244)  ; LegacyF16ToF32(value)
  %2246 = fmul fast float %2245, 0x3F50624DE0000000
  %2247 = add i32 %51, 120
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = lshr i32 %2249, 16
  %2251 = and i32 %2250, 255
  %2252 = lshr i32 %2249, 24
  %2253 = add i32 %51, 324
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 65535
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = lshr i32 %2255, 16
  %2259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2258)  ; LegacyF16ToF32(value)
  %2260 = add i32 %51, 64
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = lshr i32 %2262, 22
  %2264 = shl nuw nsw i32 %2263, 5
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = shl i32 %2262, 4
  %2267 = and i32 %2266, 32752
  %2268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2267)  ; LegacyF16ToF32(value)
  %2269 = lshr i32 %2262, 7
  %2270 = and i32 %2269, 32752
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 3
  %2274 = fmul fast float %2273, 1.000000e+03
  %2275 = fmul fast float %2274, %527
  %2276 = call float @dx.op.unary.f32(i32 22, float %2275)  ; Frc(value)
  %2277 = fadd fast float %2276, %515
  %2278 = fmul fast float %2274, %529
  %2279 = call float @dx.op.unary.f32(i32 22, float %2278)  ; Frc(value)
  %2280 = fadd fast float %2279, %516
  %2281 = fmul fast float %2246, %2274
  %2282 = call float @dx.op.unary.f32(i32 22, float %2281)  ; Frc(value)
  %2283 = fmul fast float %2282, 0x401921FB60000000
  %2284 = fadd fast float %2283, %2265
  %2285 = call float @dx.op.unary.f32(i32 13, float %2284)  ; Sin(value)
  %2286 = call float @dx.op.unary.f32(i32 12, float %2284)  ; Cos(value)
  %2287 = fsub fast float -0.000000e+00, %2285
  %2288 = fadd fast float %2239, -5.000000e-01
  %2289 = fadd fast float %2240, -5.000000e-01
  %2290 = fmul fast float %2257, %2288
  %2291 = fmul fast float %2259, %2289
  %2292 = fadd fast float %2290, 5.000000e-01
  %2293 = fadd fast float %2291, 5.000000e-01
  %2294 = fmul fast float %2268, %2292
  %2295 = fmul fast float %2271, %2293
  %2296 = fmul fast float %2286, %2294
  %2297 = call float @dx.op.tertiary.f32(i32 46, float %2287, float %2295, float %2296)  ; FMad(a,b,c)
  %2298 = fmul fast float %2285, %2294
  %2299 = call float @dx.op.tertiary.f32(i32 46, float %2286, float %2295, float %2298)  ; FMad(a,b,c)
  %2300 = fadd fast float %2277, %2297
  %2301 = fadd fast float %2280, %2299
  %2302 = icmp ugt i32 %2251, 1
  %2303 = icmp ugt i32 %2249, 33554431
  %2304 = or i1 %2303, %2302
  br i1 %2304, label %2305, label %2330

; <label>:2305                                    ; preds = %2232
  %2306 = add i32 %51, 260
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = lshr i32 %2308, 16
  %2310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2309)  ; LegacyF16ToF32(value)
  %2311 = fmul fast float %2273, %2310
  %2312 = call float @dx.op.unary.f32(i32 22, float %2311)  ; Frc(value)
  %2313 = mul nuw nsw i32 %2251, %2252
  %2314 = uitofp i32 %2313 to float
  %2315 = fmul fast float %2312, %2314
  %2316 = call float @dx.op.unary.f32(i32 27, float %2315)  ; Round_ni(value)
  %2317 = fptoui float %2316 to i32
  %2318 = urem i32 %2317, %2251
  %2319 = udiv i32 %2317, %2252
  %2320 = call float @dx.op.unary.f32(i32 22, float %2300)  ; Frc(value)
  %2321 = call float @dx.op.unary.f32(i32 22, float %2301)  ; Frc(value)
  %2322 = uitofp i32 %2318 to float
  %2323 = uitofp i32 %2319 to float
  %2324 = fadd fast float %2320, %2322
  %2325 = fadd fast float %2321, %2323
  %2326 = uitofp i32 %2251 to float
  %2327 = uitofp i32 %2252 to float
  %2328 = fdiv fast float %2324, %2326
  %2329 = fdiv fast float %2325, %2327
  br label %2330

; <label>:2330                                    ; preds = %2305, %2232
  %2331 = phi float [ %2328, %2305 ], [ %2300, %2232 ]
  %2332 = phi float [ %2329, %2305 ], [ %2301, %2232 ]
  %2333 = and i32 %2226, 256
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2381, label %2335

; <label>:2335                                    ; preds = %2330
  %2336 = add i32 %51, 448
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %2338, 0
  %2340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2340, %dx.types.Handle %99, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = add i32 %51, 132
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = shl i32 %2345, 4
  %2347 = and i32 %2346, 32752
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = lshr i32 %2345, 7
  %2350 = and i32 %2349, 32752
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = fsub fast float 1.000000e+00, %695
  %2353 = call float @dx.op.binary.f32(i32 35, float %2352, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2354 = bitcast float %695 to i32
  %2355 = sitofp i32 %2354 to float
  %2356 = fadd fast float %2355, 0xC1CFBF8940000000
  %2357 = fmul fast float %2351, %2356
  %2358 = fadd fast float %2357, 0x41CFBF8940000000
  %2359 = fptosi float %2358 to i32
  %2360 = bitcast i32 %2359 to float
  %2361 = bitcast float %2353 to i32
  %2362 = sitofp i32 %2361 to float
  %2363 = fadd fast float %2362, 0xC1CFBF8940000000
  %2364 = fmul fast float %2363, %2351
  %2365 = fadd fast float %2364, 0x41CFBF8940000000
  %2366 = fptosi float %2365 to i32
  %2367 = bitcast i32 %2366 to float
  %2368 = fmul fast float %2360, %2348
  %2369 = fmul fast float %2367, %2348
  %2370 = fsub fast float %2353, %2368
  %2371 = fadd fast float %2369, %2353
  %2372 = call float @dx.op.unary.f32(i32 7, float %2370)  ; Saturate(value)
  %2373 = call float @dx.op.unary.f32(i32 7, float %2371)  ; Saturate(value)
  %2374 = fsub fast float %2342, %2372
  %2375 = fsub fast float %2373, %2372
  %2376 = bitcast float %2375 to i32
  %2377 = sub nsw i32 2129859010, %2376
  %2378 = bitcast i32 %2377 to float
  %2379 = fmul fast float %2378, %2374
  %2380 = call float @dx.op.unary.f32(i32 7, float %2379)  ; Saturate(value)
  br label %2381

; <label>:2381                                    ; preds = %2335, %2330
  %2382 = phi float [ %2380, %2335 ], [ %695, %2330 ]
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 128
  %2386 = icmp eq i32 %2385, 0
  br i1 %2386, label %2403, label %2387

; <label>:2387                                    ; preds = %2381
  %2388 = add i32 %51, 432
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = add i32 %2390, 0
  %2392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2392, %dx.types.Handle %99, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = and i32 %2396, 524288
  %2398 = icmp ne i32 %2397, 0
  %2399 = fcmp fast ogt float %2394, 0x3FE0101020000000
  %2400 = select i1 %2399, float 1.000000e+00, float 0.000000e+00
  %2401 = select i1 %2398, float %2400, float %2394
  %2402 = fmul fast float %2401, %2382
  br label %2403

; <label>:2403                                    ; preds = %2387, %2381
  %2404 = phi float [ %2402, %2387 ], [ %2382, %2381 ]
  %2405 = fcmp fast ult float %2404, 0x3F70101020000000
  br i1 %2405, label %3088, label %2406

; <label>:2406                                    ; preds = %2403
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = and i32 %2408, 16
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2609, label %2411

; <label>:2411                                    ; preds = %2406
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = add i32 %51, 384
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = add i32 %2416, 0
  %2418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2418, %dx.types.Handle %98, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2423 = extractvalue %dx.types.ResRet.f32 %2419, 3
  %2424 = and i32 %2413, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = lshr i32 %2413, 8
  %2427 = and i32 %2426, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = fmul fast float %2423, %2425
  %2430 = fadd fast float %2429, %2428
  %2431 = fmul fast float %2430, 0x3F70101000000000
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 512
  %2435 = icmp eq i32 %2434, 0
  br i1 %2435, label %2444, label %2436

; <label>:2436                                    ; preds = %2411
  %2437 = add i32 %51, 468
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = add i32 %2439, 0
  %2441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2442 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2441, %dx.types.Handle %99, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2443 = extractvalue %dx.types.ResRet.f32 %2442, 0
  br label %2444

; <label>:2444                                    ; preds = %2436, %2411
  %2445 = phi float [ %2443, %2436 ], [ 1.000000e+00, %2411 ]
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = and i32 %2447, 33554432
  %2449 = icmp eq i32 %2448, 0
  br i1 %2449, label %2556, label %2450

; <label>:2450                                    ; preds = %2444
  %2451 = add i32 %51, 256
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 65535
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = lshr i32 %2453, 16
  %2457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2456)  ; LegacyF16ToF32(value)
  %2458 = add i32 %51, 260
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 65535
  %2462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2461)  ; LegacyF16ToF32(value)
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = lshr i32 %2464, 24
  %2466 = uitofp i32 %2465 to float
  %2467 = fmul fast float %2466, 0x3F70101020000000
  %2468 = and i32 %2464, 255
  %2469 = uitofp i32 %2468 to float
  %2470 = fmul fast float %2469, 0x3F70101020000000
  %2471 = lshr i32 %2464, 8
  %2472 = and i32 %2471, 255
  %2473 = uitofp i32 %2472 to float
  %2474 = fmul fast float %2473, 0x3F70101020000000
  %2475 = lshr i32 %2464, 16
  %2476 = and i32 %2475, 255
  %2477 = uitofp i32 %2476 to float
  %2478 = fmul fast float %2477, 0x3F70101020000000
  %2479 = add i32 %51, 252
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = lshr i32 %2481, 24
  %2483 = uitofp i32 %2482 to float
  %2484 = fmul fast float %2483, 0x3F70101020000000
  %2485 = and i32 %2481, 255
  %2486 = uitofp i32 %2485 to float
  %2487 = fmul fast float %2486, 0x3F70101020000000
  %2488 = lshr i32 %2481, 8
  %2489 = and i32 %2488, 255
  %2490 = uitofp i32 %2489 to float
  %2491 = fmul fast float %2490, 0x3F70101020000000
  %2492 = lshr i32 %2481, 16
  %2493 = and i32 %2492, 255
  %2494 = uitofp i32 %2493 to float
  %2495 = fmul fast float %2494, 0x3F70101020000000
  %2496 = bitcast float %2420 to i32
  %2497 = ashr i32 %2496, 1
  %2498 = sub nsw i32 1597463174, %2497
  %2499 = bitcast i32 %2498 to float
  %2500 = fmul fast float %2420, 5.000000e-01
  %2501 = fmul fast float %2499, %2499
  %2502 = fmul fast float %2501, %2500
  %2503 = fsub fast float 1.500000e+00, %2502
  %2504 = fmul fast float %2499, %2420
  %2505 = fmul fast float %2504, %2503
  %2506 = bitcast float %2421 to i32
  %2507 = ashr i32 %2506, 1
  %2508 = sub nsw i32 1597463174, %2507
  %2509 = bitcast i32 %2508 to float
  %2510 = fmul fast float %2421, 5.000000e-01
  %2511 = fmul fast float %2509, %2509
  %2512 = fmul fast float %2511, %2510
  %2513 = fsub fast float 1.500000e+00, %2512
  %2514 = fmul fast float %2509, %2421
  %2515 = fmul fast float %2514, %2513
  %2516 = bitcast float %2422 to i32
  %2517 = ashr i32 %2516, 1
  %2518 = sub nsw i32 1597463174, %2517
  %2519 = bitcast i32 %2518 to float
  %2520 = fmul fast float %2422, 5.000000e-01
  %2521 = fmul fast float %2519, %2519
  %2522 = fmul fast float %2521, %2520
  %2523 = fsub fast float 1.500000e+00, %2522
  %2524 = fmul fast float %2519, %2422
  %2525 = fmul fast float %2524, %2523
  %2526 = fsub fast float %2505, %2487
  %2527 = fsub fast float %2515, %2491
  %2528 = fsub fast float %2525, %2495
  %2529 = fmul fast float %2526, %2455
  %2530 = fmul fast float %2527, %2457
  %2531 = fmul fast float %2528, %2462
  %2532 = fadd fast float %2529, %2470
  %2533 = fadd fast float %2530, %2474
  %2534 = fadd fast float %2531, %2478
  %2535 = call float @dx.op.unary.f32(i32 7, float %2532)  ; Saturate(value)
  %2536 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2537 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2538 = fmul fast float %2535, %2535
  %2539 = fmul fast float %2536, %2536
  %2540 = fmul fast float %2537, %2537
  %2541 = fsub fast float %2538, %2420
  %2542 = fsub fast float %2539, %2421
  %2543 = fsub fast float %2540, %2422
  %2544 = fmul fast float %2541, %2445
  %2545 = fmul fast float %2542, %2445
  %2546 = fmul fast float %2543, %2445
  %2547 = fadd fast float %2544, %2420
  %2548 = fadd fast float %2545, %2421
  %2549 = fadd fast float %2546, %2422
  %2550 = fadd fast float %2467, %2431
  %2551 = fsub fast float %2550, %2484
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2553 = fsub fast float %2552, %2431
  %2554 = fmul fast float %2553, %2445
  %2555 = fadd fast float %2554, %2431
  br label %2609

; <label>:2556                                    ; preds = %2444
  %2557 = and i32 %2447, 134217728
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2593, label %2559

; <label>:2559                                    ; preds = %2556
  %2560 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %2561 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %2562 = call float @dx.op.unary.f32(i32 24, float %505)  ; Sqrt(value)
  %2563 = fadd fast float %2560, -5.000000e-01
  %2564 = fadd fast float %2561, -5.000000e-01
  %2565 = fadd fast float %2562, -5.000000e-01
  %2566 = fmul fast float %2563, %2445
  %2567 = fmul fast float %2564, %2445
  %2568 = fmul fast float %2565, %2445
  %2569 = fadd fast float %2566, 5.000000e-01
  %2570 = fadd fast float %2567, 5.000000e-01
  %2571 = fadd fast float %2568, 5.000000e-01
  %2572 = call float @dx.op.unary.f32(i32 24, float %2420)  ; Sqrt(value)
  %2573 = call float @dx.op.unary.f32(i32 24, float %2421)  ; Sqrt(value)
  %2574 = call float @dx.op.unary.f32(i32 24, float %2422)  ; Sqrt(value)
  %2575 = fmul fast float %2569, 2.000000e+00
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = fmul fast float %2576, %2572
  %2578 = fadd fast float %2577, %2575
  %2579 = fmul fast float %2578, %2572
  %2580 = fmul fast float %2570, 2.000000e+00
  %2581 = fsub fast float 1.000000e+00, %2580
  %2582 = fmul fast float %2581, %2573
  %2583 = fadd fast float %2582, %2580
  %2584 = fmul fast float %2583, %2573
  %2585 = fmul fast float %2571, 2.000000e+00
  %2586 = fsub fast float 1.000000e+00, %2585
  %2587 = fmul fast float %2586, %2574
  %2588 = fadd fast float %2587, %2585
  %2589 = fmul fast float %2588, %2574
  %2590 = fmul fast float %2579, %2579
  %2591 = fmul fast float %2584, %2584
  %2592 = fmul fast float %2589, %2589
  br label %2609

; <label>:2593                                    ; preds = %2556
  %2594 = fmul fast float %503, %503
  %2595 = fmul fast float %504, %504
  %2596 = fmul fast float %505, %505
  %2597 = fadd fast float %2594, -1.000000e+00
  %2598 = fadd fast float %2595, -1.000000e+00
  %2599 = fadd fast float %2596, -1.000000e+00
  %2600 = fmul fast float %2445, %2597
  %2601 = fmul fast float %2445, %2598
  %2602 = fmul fast float %2445, %2599
  %2603 = fadd fast float %2600, 1.000000e+00
  %2604 = fadd fast float %2601, 1.000000e+00
  %2605 = fadd fast float %2602, 1.000000e+00
  %2606 = fmul fast float %2603, %2420
  %2607 = fmul fast float %2604, %2421
  %2608 = fmul fast float %2605, %2422
  br label %2609

; <label>:2609                                    ; preds = %2593, %2559, %2450, %2406
  %2610 = phi float [ %2555, %2450 ], [ %2431, %2559 ], [ %2431, %2593 ], [ 0x3FA23C0BE0000000, %2406 ]
  %2611 = phi float [ %2547, %2450 ], [ %2590, %2559 ], [ %2606, %2593 ], [ 1.000000e+00, %2406 ]
  %2612 = phi float [ %2548, %2450 ], [ %2591, %2559 ], [ %2607, %2593 ], [ 1.000000e+00, %2406 ]
  %2613 = phi float [ %2549, %2450 ], [ %2592, %2559 ], [ %2608, %2593 ], [ 1.000000e+00, %2406 ]
  %2614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.i32 %2614, 1
  %2616 = and i32 %2615, 1
  %2617 = icmp ne i32 %2616, 0
  %2618 = add i32 %51, 356
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = and i32 %2620, 32
  %2622 = icmp ne i32 %2621, 0
  %2623 = and i1 %2617, %2622
  %2624 = select i1 %2623, float 1.000000e+00, float %2611
  %2625 = select i1 %2623, float 0x3FD3333340000000, float %2612
  %2626 = select i1 %2623, float 0x3FD3333340000000, float %2613
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = and i32 %2628, 32
  %2630 = icmp eq i32 %2629, 0
  br i1 %2630, label %2703, label %2631

; <label>:2631                                    ; preds = %2609
  %2632 = add i32 %51, 124
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = add i32 %51, 400
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = add i32 %2637, 0
  %2639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2640 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2639, %dx.types.Handle %98, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2641 = extractvalue %dx.types.ResRet.f32 %2640, 0
  %2642 = extractvalue %dx.types.ResRet.f32 %2640, 1
  %2643 = extractvalue %dx.types.ResRet.f32 %2640, 2
  %2644 = extractvalue %dx.types.ResRet.f32 %2640, 3
  %2645 = and i32 %2634, 255
  %2646 = uitofp i32 %2645 to float
  %2647 = lshr i32 %2634, 8
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = lshr i32 %2634, 16
  %2651 = and i32 %2650, 255
  %2652 = uitofp i32 %2651 to float
  %2653 = fmul fast float %2652, 0x3F70101000000000
  %2654 = fmul fast float %2641, %2646
  %2655 = fadd fast float %2654, %2649
  %2656 = fmul fast float %2655, 0x3F70101000000000
  %2657 = fadd fast float %2642, -5.000000e-01
  %2658 = fadd fast float %2644, -5.000000e-01
  %2659 = fmul fast float %2657, %2653
  %2660 = fmul fast float %2658, %2653
  %2661 = fadd fast float %2659, 5.000000e-01
  %2662 = fadd fast float %2660, 5.000000e-01
  %2663 = fmul fast float %2661, 2.000000e+00
  %2664 = fadd fast float %2663, -1.000000e+00
  %2665 = fmul fast float %2662, 2.000000e+00
  %2666 = fadd fast float %2665, -1.000000e+00
  %2667 = fadd fast float %2664, %2666
  %2668 = fmul fast float %2667, 5.000000e-01
  %2669 = fsub fast float %2664, %2666
  %2670 = fmul fast float %2669, 5.000000e-01
  %2671 = call float @dx.op.unary.f32(i32 6, float %2668)  ; FAbs(value)
  %2672 = fsub fast float 1.000000e+00, %2671
  %2673 = call float @dx.op.unary.f32(i32 6, float %2670)  ; FAbs(value)
  %2674 = fsub fast float %2672, %2673
  %2675 = call float @dx.op.dot3.f32(i32 55, float %2668, float %2670, float %2674, float %2668, float %2670, float %2674)  ; Dot3(ax,ay,az,bx,by,bz)
  %2676 = call float @dx.op.unary.f32(i32 25, float %2675)  ; Rsqrt(value)
  %2677 = fmul fast float %2668, %2676
  %2678 = fmul fast float %2670, %2676
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = and i32 %2680, 67108864
  %2682 = icmp eq i32 %2681, 0
  br i1 %2682, label %2699, label %2683

; <label>:2683                                    ; preds = %2631
  %2684 = add i32 %51, 312
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = and i32 %2686, 65535
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = and i32 %2690, 65535
  %2692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2691)  ; LegacyF16ToF32(value)
  %2693 = lshr i32 %2686, 16
  %2694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2693)  ; LegacyF16ToF32(value)
  %2695 = fsub fast float %2656, %2694
  %2696 = fmul fast float %2695, %2688
  %2697 = fadd fast float %2696, %2692
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  br label %2699

; <label>:2699                                    ; preds = %2683, %2631
  %2700 = phi float [ %2698, %2683 ], [ %2656, %2631 ]
  %2701 = call float @dx.op.dot2.f32(i32 54, float %2677, float %2678, float %2235, float %2236)  ; Dot2(ax,ay,bx,by)
  %2702 = call float @dx.op.dot2.f32(i32 54, float %2677, float %2678, float %2237, float %2238)  ; Dot2(ax,ay,bx,by)
  br label %2703

; <label>:2703                                    ; preds = %2699, %2609
  %2704 = phi float [ %2700, %2699 ], [ 0x3FD6666660000000, %2609 ]
  %2705 = phi float [ %2701, %2699 ], [ 0.000000e+00, %2609 ]
  %2706 = phi float [ %2702, %2699 ], [ 0.000000e+00, %2609 ]
  %2707 = phi float [ %2643, %2699 ], [ 1.000000e+00, %2609 ]
  %2708 = add i32 %51, 192
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = lshr i32 %2710, 22
  %2712 = shl nuw nsw i32 %2711, 5
  %2713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2712)  ; LegacyF16ToF32(value)
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = and i32 %2715, 64
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2751, label %2718

; <label>:2718                                    ; preds = %2703
  %2719 = add i32 %51, 416
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = add i32 %2721, 0
  %2723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = and i32 %2725, 131072
  %2727 = icmp eq i32 %2726, 0
  %2728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2723, %dx.types.Handle %98, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.ResRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2728, 2
  %2732 = fmul fast float %486, %2729
  %2733 = fmul fast float %487, %2730
  %2734 = fmul fast float %488, %2731
  br i1 %2727, label %2741, label %2735

; <label>:2735                                    ; preds = %2718
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = fmul fast float %2737, %2732
  %2739 = fmul fast float %2737, %2733
  %2740 = fmul fast float %2737, %2734
  br label %2741

; <label>:2741                                    ; preds = %2735, %2718
  %2742 = phi float [ %2738, %2735 ], [ %2732, %2718 ]
  %2743 = phi float [ %2739, %2735 ], [ %2733, %2718 ]
  %2744 = phi float [ %2740, %2735 ], [ %2734, %2718 ]
  %2745 = fmul fast float %2742, %2713
  %2746 = select i1 %261, float %2745, float %2742
  %2747 = call float @dx.op.dot3.f32(i32 55, float %2746, float %2743, float %2744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2748 = select i1 %261, float 0.000000e+00, float %2742
  %2749 = select i1 %261, float %2747, float %2743
  %2750 = select i1 %261, float 0.000000e+00, float %2744
  br label %2751

; <label>:2751                                    ; preds = %2741, %2703
  %2752 = phi float [ %2748, %2741 ], [ 0.000000e+00, %2703 ]
  %2753 = phi float [ %2749, %2741 ], [ 0.000000e+00, %2703 ]
  %2754 = phi float [ %2750, %2741 ], [ 0.000000e+00, %2703 ]
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 1024
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2789, label %2759

; <label>:2759                                    ; preds = %2751
  %2760 = add i32 %51, 184
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = and i32 %2762, 255
  %2764 = uitofp i32 %2763 to float
  %2765 = fmul fast float %2764, 0x3F70101020000000
  %2766 = lshr i32 %2762, 8
  %2767 = and i32 %2766, 255
  %2768 = uitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 0x3F70101020000000
  %2770 = lshr i32 %2762, 16
  %2771 = and i32 %2770, 255
  %2772 = uitofp i32 %2771 to float
  %2773 = fmul fast float %2772, 0x3F70101020000000
  %2774 = fmul fast float %2765, %2765
  %2775 = fmul fast float %2769, %2769
  %2776 = fmul fast float %2773, %2773
  %2777 = add i32 %51, 484
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = add i32 %2779, 0
  %2781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2781, %dx.types.Handle %99, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2783 = extractvalue %dx.types.ResRet.f32 %2782, 0
  %2784 = extractvalue %dx.types.ResRet.f32 %2782, 1
  %2785 = extractvalue %dx.types.ResRet.f32 %2782, 2
  %2786 = fmul fast float %2774, %2783
  %2787 = fmul fast float %2775, %2784
  %2788 = fmul fast float %2776, %2785
  br label %2789

; <label>:2789                                    ; preds = %2759, %2751
  %2790 = phi float [ %2786, %2759 ], [ 0.000000e+00, %2751 ]
  %2791 = phi float [ %2787, %2759 ], [ 0.000000e+00, %2751 ]
  %2792 = phi float [ %2788, %2759 ], [ 0.000000e+00, %2751 ]
  %2793 = fcmp fast ogt float %2790, 0.000000e+00
  %2794 = fcmp fast ogt float %2791, 0.000000e+00
  %2795 = fcmp fast ogt float %2792, 0.000000e+00
  %2796 = call float @dx.op.unary.f32(i32 23, float %2790)  ; Log(value)
  %2797 = call float @dx.op.unary.f32(i32 23, float %2791)  ; Log(value)
  %2798 = call float @dx.op.unary.f32(i32 23, float %2792)  ; Log(value)
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = lshr i32 %2800, 7
  %2802 = and i32 %2801, 32752
  %2803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2802)  ; LegacyF16ToF32(value)
  %2804 = fmul fast float %2796, 0xBFE62E4300000000
  %2805 = fmul fast float %2804, %2803
  %2806 = fmul fast float %2797, 0xBFE62E4300000000
  %2807 = fmul fast float %2806, %2803
  %2808 = fmul fast float %2798, 0xBFE62E4300000000
  %2809 = fmul fast float %2808, %2803
  %2810 = select i1 %2793, float %2805, float 1.270000e+02
  %2811 = select i1 %2794, float %2807, float 1.270000e+02
  %2812 = select i1 %2795, float %2809, float 1.270000e+02
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = and i32 %2814, 2048
  %2816 = icmp eq i32 %2815, 0
  br i1 %2816, label %2832, label %2817

; <label>:2817                                    ; preds = %2789
  %2818 = add i32 %51, 500
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = add i32 %2820, 0
  %2822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2822, %dx.types.Handle %99, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 3
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = shl i32 %2826, 4
  %2828 = and i32 %2827, 32752
  %2829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2828)  ; LegacyF16ToF32(value)
  %2830 = fmul fast float %2829, %2824
  %2831 = call float @dx.op.binary.f32(i32 35, float %2830, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2832

; <label>:2832                                    ; preds = %2817, %2789
  %2833 = phi float [ %2831, %2817 ], [ 0x3F70101020000000, %2789 ]
  %2834 = add i32 %51, 128
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 255
  %2838 = uitofp i32 %2837 to float
  %2839 = lshr i32 %2836, 8
  %2840 = and i32 %2839, 255
  %2841 = uitofp i32 %2840 to float
  %2842 = call float @dx.op.dot3.f32(i32 55, float %2624, float %2625, float %2626, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2843 = fmul fast float %2841, %2842
  %2844 = fadd fast float %2843, %2838
  %2845 = fmul fast float %2844, 0x3F70101020000000
  %2846 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  br i1 %2223, label %2847, label %2882

; <label>:2847                                    ; preds = %2832
  %2848 = fmul fast float %2833, 2.000000e+00
  %2849 = fcmp fast olt float %2810, 1.270000e+02
  %2850 = fcmp fast olt float %2811, 1.270000e+02
  %2851 = fcmp fast olt float %2812, 1.270000e+02
  %2852 = fmul fast float %2810, 0xBFF7154760000000
  %2853 = fmul fast float %2852, %2848
  %2854 = fmul fast float %2811, 0xBFF7154760000000
  %2855 = fmul fast float %2854, %2848
  %2856 = fmul fast float %2812, 0xBFF7154760000000
  %2857 = fmul fast float %2856, %2848
  %2858 = call float @dx.op.unary.f32(i32 21, float %2853)  ; Exp(value)
  %2859 = call float @dx.op.unary.f32(i32 21, float %2855)  ; Exp(value)
  %2860 = call float @dx.op.unary.f32(i32 21, float %2857)  ; Exp(value)
  %2861 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2862 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2863 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2864 = fadd fast float %2861, -1.000000e+00
  %2865 = select i1 %2849, float %2864, float -1.000000e+00
  %2866 = fadd fast float %2862, -1.000000e+00
  %2867 = select i1 %2850, float %2866, float -1.000000e+00
  %2868 = fadd fast float %2863, -1.000000e+00
  %2869 = select i1 %2851, float %2868, float -1.000000e+00
  %2870 = fmul fast float %2865, %2404
  %2871 = fmul fast float %2867, %2404
  %2872 = fmul fast float %2869, %2404
  %2873 = fadd fast float %2870, 1.000000e+00
  %2874 = fadd fast float %2871, 1.000000e+00
  %2875 = fadd fast float %2872, 1.000000e+00
  %2876 = fmul fast float %2873, %2208
  %2877 = fmul fast float %2874, %2209
  %2878 = fmul fast float %2875, %2210
  %2879 = fmul fast float %2873, %2211
  %2880 = fmul fast float %2874, %2212
  %2881 = fmul fast float %2875, %2213
  br label %2882

; <label>:2882                                    ; preds = %2847, %2832
  %2883 = phi float [ %2876, %2847 ], [ %2208, %2832 ]
  %2884 = phi float [ %2877, %2847 ], [ %2209, %2832 ]
  %2885 = phi float [ %2878, %2847 ], [ %2210, %2832 ]
  %2886 = phi float [ %2879, %2847 ], [ %2211, %2832 ]
  %2887 = phi float [ %2880, %2847 ], [ %2212, %2832 ]
  %2888 = phi float [ %2881, %2847 ], [ %2213, %2832 ]
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 3
  %2892 = icmp eq i32 %2891, 3
  br i1 %2892, label %2971, label %2893

; <label>:2893                                    ; preds = %2882
  %2894 = and i32 %2890, 16
  %2895 = icmp ne i32 %2894, 0
  %2896 = select i1 %2895, float %2404, float 0.000000e+00
  %2897 = icmp eq i32 %2891, 0
  br i1 %2897, label %2898, label %2926

; <label>:2898                                    ; preds = %2893
  %2899 = and i32 %2890, 64
  %2900 = icmp ne i32 %2899, 0
  %2901 = select i1 %2900, float %2404, float 0.000000e+00
  %2902 = fsub fast float %2624, %2883
  %2903 = fsub fast float %2625, %2884
  %2904 = fsub fast float %2626, %2885
  %2905 = fmul fast float %2896, %2902
  %2906 = fmul fast float %2896, %2903
  %2907 = fmul fast float %2896, %2904
  %2908 = fadd fast float %2905, %2883
  %2909 = fadd fast float %2906, %2884
  %2910 = fadd fast float %2907, %2885
  %2911 = fsub fast float %2610, %2217
  %2912 = fmul fast float %2896, %2911
  %2913 = fadd fast float %2912, %2217
  %2914 = fsub fast float %2752, %2886
  %2915 = fsub fast float %2753, %2887
  %2916 = fsub fast float %2754, %2888
  %2917 = fmul fast float %2901, %2914
  %2918 = fmul fast float %2901, %2915
  %2919 = fmul fast float %2901, %2916
  %2920 = fadd fast float %2917, %2886
  %2921 = fadd fast float %2918, %2887
  %2922 = fadd fast float %2919, %2888
  %2923 = fsub fast float %2846, %2221
  %2924 = fmul fast float %2896, %2923
  %2925 = fadd fast float %2924, %2221
  br label %2971

; <label>:2926                                    ; preds = %2893
  %2927 = icmp eq i32 %2891, 1
  br i1 %2927, label %2928, label %2941

; <label>:2928                                    ; preds = %2926
  %2929 = fadd fast float %2624, -1.000000e+00
  %2930 = fadd fast float %2625, -1.000000e+00
  %2931 = fadd fast float %2626, -1.000000e+00
  %2932 = fmul fast float %2896, %2929
  %2933 = fmul fast float %2896, %2930
  %2934 = fmul fast float %2896, %2931
  %2935 = fadd fast float %2932, 1.000000e+00
  %2936 = fadd fast float %2933, 1.000000e+00
  %2937 = fadd fast float %2934, 1.000000e+00
  %2938 = fmul fast float %2935, %2883
  %2939 = fmul fast float %2936, %2884
  %2940 = fmul fast float %2937, %2885
  br label %2971

; <label>:2941                                    ; preds = %2926
  %2942 = icmp eq i32 %2891, 2
  br i1 %2942, label %2943, label %2971

; <label>:2943                                    ; preds = %2941
  %2944 = call float @dx.op.unary.f32(i32 24, float %2624)  ; Sqrt(value)
  %2945 = call float @dx.op.unary.f32(i32 24, float %2625)  ; Sqrt(value)
  %2946 = call float @dx.op.unary.f32(i32 24, float %2626)  ; Sqrt(value)
  %2947 = fadd fast float %2944, -5.000000e-01
  %2948 = fadd fast float %2945, -5.000000e-01
  %2949 = fadd fast float %2946, -5.000000e-01
  %2950 = fmul fast float %2947, %2896
  %2951 = fmul fast float %2948, %2896
  %2952 = fmul fast float %2949, %2896
  %2953 = fadd fast float %2950, 5.000000e-01
  %2954 = fadd fast float %2951, 5.000000e-01
  %2955 = fadd fast float %2952, 5.000000e-01
  %2956 = fmul fast float %2953, 2.000000e+00
  %2957 = fsub fast float 1.000000e+00, %2956
  %2958 = fmul fast float %2957, %2883
  %2959 = fadd fast float %2958, %2956
  %2960 = fmul fast float %2959, %2883
  %2961 = fmul fast float %2954, 2.000000e+00
  %2962 = fsub fast float 1.000000e+00, %2961
  %2963 = fmul fast float %2962, %2884
  %2964 = fadd fast float %2963, %2961
  %2965 = fmul fast float %2964, %2884
  %2966 = fmul fast float %2955, 2.000000e+00
  %2967 = fsub fast float 1.000000e+00, %2966
  %2968 = fmul fast float %2967, %2885
  %2969 = fadd fast float %2968, %2966
  %2970 = fmul fast float %2969, %2885
  br label %2971

; <label>:2971                                    ; preds = %2943, %2941, %2928, %2898, %2882
  %2972 = phi float [ %2883, %2882 ], [ %2960, %2943 ], [ %2883, %2941 ], [ %2938, %2928 ], [ %2908, %2898 ]
  %2973 = phi float [ %2884, %2882 ], [ %2965, %2943 ], [ %2884, %2941 ], [ %2939, %2928 ], [ %2909, %2898 ]
  %2974 = phi float [ %2885, %2882 ], [ %2970, %2943 ], [ %2885, %2941 ], [ %2940, %2928 ], [ %2910, %2898 ]
  %2975 = phi float [ %2886, %2882 ], [ %2886, %2943 ], [ %2886, %2941 ], [ %2886, %2928 ], [ %2920, %2898 ]
  %2976 = phi float [ %2887, %2882 ], [ %2887, %2943 ], [ %2887, %2941 ], [ %2887, %2928 ], [ %2921, %2898 ]
  %2977 = phi float [ %2888, %2882 ], [ %2888, %2943 ], [ %2888, %2941 ], [ %2888, %2928 ], [ %2922, %2898 ]
  %2978 = phi float [ %2217, %2882 ], [ %2217, %2943 ], [ %2217, %2941 ], [ %2217, %2928 ], [ %2913, %2898 ]
  %2979 = phi float [ %2221, %2882 ], [ %2221, %2943 ], [ %2221, %2941 ], [ %2221, %2928 ], [ %2925, %2898 ]
  %2980 = and i32 %2890, 12
  %2981 = icmp eq i32 %2980, 12
  br i1 %2981, label %3088, label %2982

; <label>:2982                                    ; preds = %2971
  %2983 = and i32 %2890, 2097184
  %2984 = icmp eq i32 %2983, 2097184
  %2985 = select i1 %2984, float %2404, float 0.000000e+00
  %2986 = and i32 %2890, 4194336
  %2987 = icmp eq i32 %2986, 4194336
  %2988 = select i1 %2987, float %2404, float 0.000000e+00
  %2989 = and i32 %2890, 8388640
  %2990 = icmp eq i32 %2989, 8388640
  %2991 = select i1 %2990, float %2404, float 0.000000e+00
  %2992 = and i32 %2890, 1024
  %2993 = icmp ne i32 %2992, 0
  %2994 = select i1 %2993, float %2404, float 0.000000e+00
  %2995 = and i32 %2890, 2048
  %2996 = icmp ne i32 %2995, 0
  %2997 = select i1 %2996, float %2404, float 0.000000e+00
  %2998 = icmp eq i32 %2980, 0
  br i1 %2998, label %2999, label %3024

; <label>:2999                                    ; preds = %2982
  %3000 = fsub fast float %2705, %2206
  %3001 = fsub fast float %2706, %2207
  %3002 = fmul fast float %2985, %3000
  %3003 = fmul fast float %2985, %3001
  %3004 = fadd fast float %3002, %2206
  %3005 = fadd fast float %3003, %2207
  %3006 = fsub fast float %2707, %2219
  %3007 = fmul fast float %2988, %3006
  %3008 = fadd fast float %3007, %2219
  %3009 = fsub fast float %2704, %2218
  %3010 = fmul fast float %2991, %3009
  %3011 = fadd fast float %3010, %2218
  %3012 = fsub fast float %2810, %2214
  %3013 = fsub fast float %2811, %2215
  %3014 = fsub fast float %2812, %2216
  %3015 = fmul fast float %2994, %3012
  %3016 = fmul fast float %2994, %3013
  %3017 = fmul fast float %2994, %3014
  %3018 = fadd fast float %3015, %2214
  %3019 = fadd fast float %3016, %2215
  %3020 = fadd fast float %3017, %2216
  %3021 = fsub fast float %2833, %2220
  %3022 = fmul fast float %2997, %3021
  %3023 = fadd fast float %3022, %2220
  br label %3088

; <label>:3024                                    ; preds = %2982
  %3025 = icmp eq i32 %2980, 4
  br i1 %3025, label %3026, label %3066

; <label>:3026                                    ; preds = %3024
  %3027 = fmul fast float %2985, %2705
  %3028 = fmul fast float %2985, %2706
  %3029 = fadd fast float %3027, %2206
  %3030 = fadd fast float %3028, %2207
  %3031 = call float @dx.op.binary.f32(i32 36, float %2219, float %2707)  ; FMin(a,b)
  %3032 = fsub fast float %3031, %2219
  %3033 = fmul fast float %3032, %2988
  %3034 = fadd fast float %3033, %2219
  %3035 = fadd fast float %2704, %2218
  %3036 = fmul fast float %3035, 0x3FF337FAE0000000
  %3037 = fmul fast float %2218, %2218
  %3038 = fmul fast float %2704, %2704
  %3039 = fadd fast float %3038, %3037
  %3040 = fmul fast float %3039, 0x3FE5152B00000000
  %3041 = fmul fast float %2218, 0xBFCC1F85E0000000
  %3042 = fmul fast float %3041, %2704
  %3043 = fadd fast float %3042, 0xBFE1363700000000
  %3044 = fadd fast float %3043, %3036
  %3045 = fsub fast float %3044, %3040
  %3046 = fmul fast float %3035, 0x3FBA6F0D00000000
  %3047 = fmul fast float %3039, 0x3FD0432880000000
  %3048 = fmul fast float %2218, 0xBFEF110800000000
  %3049 = fmul fast float %3048, %2704
  %3050 = fadd fast float %3049, 1.000000e+00
  %3051 = fsub fast float %3050, %3046
  %3052 = fadd fast float %3051, %3047
  %3053 = fdiv fast float %3045, %3052
  %3054 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3055 = fsub fast float %3054, %2218
  %3056 = fmul fast float %3055, %2991
  %3057 = fadd fast float %3056, %2218
  %3058 = fmul fast float %2994, %2810
  %3059 = fmul fast float %2994, %2811
  %3060 = fmul fast float %2994, %2812
  %3061 = fadd fast float %3058, %2214
  %3062 = fadd fast float %3059, %2215
  %3063 = fadd fast float %3060, %2216
  %3064 = fmul fast float %2997, %2833
  %3065 = fadd fast float %3064, %2220
  br label %3088

; <label>:3066                                    ; preds = %3024
  %3067 = icmp eq i32 %2980, 8
  br i1 %3067, label %3068, label %3088

; <label>:3068                                    ; preds = %3066
  %3069 = fmul fast float %2985, %2705
  %3070 = fmul fast float %2985, %2706
  %3071 = fadd fast float %3069, %2206
  %3072 = fadd fast float %3070, %2207
  %3073 = call float @dx.op.binary.f32(i32 36, float %2219, float %2707)  ; FMin(a,b)
  %3074 = fsub fast float %3073, %2219
  %3075 = fmul fast float %3074, %2988
  %3076 = fadd fast float %3075, %2219
  %3077 = fsub fast float %2704, %2218
  %3078 = fmul fast float %2991, %3077
  %3079 = fadd fast float %3078, %2218
  %3080 = fmul fast float %2994, %2810
  %3081 = fmul fast float %2994, %2811
  %3082 = fmul fast float %2994, %2812
  %3083 = fadd fast float %3080, %2214
  %3084 = fadd fast float %3081, %2215
  %3085 = fadd fast float %3082, %2216
  %3086 = fmul fast float %2997, %2833
  %3087 = fadd fast float %3086, %2220
  br label %3088

; <label>:3088                                    ; preds = %3068, %3066, %3026, %2999, %2971, %2403, %2222, %2205
  %3089 = phi float [ %2206, %2971 ], [ %2206, %2403 ], [ %2206, %2205 ], [ %3071, %3068 ], [ %2206, %3066 ], [ %3029, %3026 ], [ %3004, %2999 ], [ %2206, %2222 ]
  %3090 = phi float [ %2207, %2971 ], [ %2207, %2403 ], [ %2207, %2205 ], [ %3072, %3068 ], [ %2207, %3066 ], [ %3030, %3026 ], [ %3005, %2999 ], [ %2207, %2222 ]
  %3091 = phi float [ %2972, %2971 ], [ %2208, %2403 ], [ %2208, %2205 ], [ %2972, %3068 ], [ %2972, %3066 ], [ %2972, %3026 ], [ %2972, %2999 ], [ %2208, %2222 ]
  %3092 = phi float [ %2973, %2971 ], [ %2209, %2403 ], [ %2209, %2205 ], [ %2973, %3068 ], [ %2973, %3066 ], [ %2973, %3026 ], [ %2973, %2999 ], [ %2209, %2222 ]
  %3093 = phi float [ %2974, %2971 ], [ %2210, %2403 ], [ %2210, %2205 ], [ %2974, %3068 ], [ %2974, %3066 ], [ %2974, %3026 ], [ %2974, %2999 ], [ %2210, %2222 ]
  %3094 = phi float [ %2975, %2971 ], [ %2211, %2403 ], [ %2211, %2205 ], [ %2975, %3068 ], [ %2975, %3066 ], [ %2975, %3026 ], [ %2975, %2999 ], [ %2211, %2222 ]
  %3095 = phi float [ %2976, %2971 ], [ %2212, %2403 ], [ %2212, %2205 ], [ %2976, %3068 ], [ %2976, %3066 ], [ %2976, %3026 ], [ %2976, %2999 ], [ %2212, %2222 ]
  %3096 = phi float [ %2977, %2971 ], [ %2213, %2403 ], [ %2213, %2205 ], [ %2977, %3068 ], [ %2977, %3066 ], [ %2977, %3026 ], [ %2977, %2999 ], [ %2213, %2222 ]
  %3097 = phi float [ %2214, %2971 ], [ %2214, %2403 ], [ %2214, %2205 ], [ %3083, %3068 ], [ %2214, %3066 ], [ %3061, %3026 ], [ %3018, %2999 ], [ %2214, %2222 ]
  %3098 = phi float [ %2215, %2971 ], [ %2215, %2403 ], [ %2215, %2205 ], [ %3084, %3068 ], [ %2215, %3066 ], [ %3062, %3026 ], [ %3019, %2999 ], [ %2215, %2222 ]
  %3099 = phi float [ %2216, %2971 ], [ %2216, %2403 ], [ %2216, %2205 ], [ %3085, %3068 ], [ %2216, %3066 ], [ %3063, %3026 ], [ %3020, %2999 ], [ %2216, %2222 ]
  %3100 = phi float [ %2978, %2971 ], [ %2217, %2403 ], [ %2217, %2205 ], [ %2978, %3068 ], [ %2978, %3066 ], [ %2978, %3026 ], [ %2978, %2999 ], [ %2217, %2222 ]
  %3101 = phi float [ %2218, %2971 ], [ %2218, %2403 ], [ %2218, %2205 ], [ %3079, %3068 ], [ %2218, %3066 ], [ %3057, %3026 ], [ %3011, %2999 ], [ %2218, %2222 ]
  %3102 = phi float [ %2219, %2971 ], [ %2219, %2403 ], [ %2219, %2205 ], [ %3076, %3068 ], [ %2219, %3066 ], [ %3034, %3026 ], [ %3008, %2999 ], [ %2219, %2222 ]
  %3103 = phi float [ %2220, %2971 ], [ %2220, %2403 ], [ %2220, %2205 ], [ %3087, %3068 ], [ %2220, %3066 ], [ %3065, %3026 ], [ %3023, %2999 ], [ %2220, %2222 ]
  %3104 = phi float [ %2979, %2971 ], [ %2221, %2403 ], [ %2221, %2205 ], [ %2979, %3068 ], [ %2979, %3066 ], [ %2979, %3026 ], [ %2979, %2999 ], [ %2221, %2222 ]
  br i1 %645, label %3971, label %3105

; <label>:3105                                    ; preds = %3088
  %3106 = icmp ult i32 %699, 4
  %3107 = add i32 %51, 72
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = add i32 %51, 76
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = or i32 %3112, %3109
  %3114 = icmp eq i32 %3113, 0
  br i1 %3114, label %3971, label %3115

; <label>:3115                                    ; preds = %3105
  %3116 = and i32 %3109, 262144
  %3117 = icmp ne i32 %3116, 0
  %3118 = select i1 %3117, float %57, float 1.000000e+00
  %3119 = select i1 %3117, float %58, float 0.000000e+00
  %3120 = select i1 %3117, float %59, float 0.000000e+00
  %3121 = select i1 %3117, float %60, float 1.000000e+00
  %3122 = select i1 %3117, float %61, float %84
  %3123 = select i1 %3117, float %62, float %85
  %3124 = add i32 %51, 332
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = lshr i32 %3126, 16
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = fmul fast float %3128, 0x3F50624DE0000000
  %3130 = add i32 %51, 136
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = lshr i32 %3132, 16
  %3134 = and i32 %3133, 255
  %3135 = lshr i32 %3132, 24
  %3136 = add i32 %51, 340
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 65535
  %3140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3139)  ; LegacyF16ToF32(value)
  %3141 = lshr i32 %3138, 16
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = add i32 %51, 80
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = lshr i32 %3145, 22
  %3147 = shl nuw nsw i32 %3146, 5
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = shl i32 %3145, 4
  %3150 = and i32 %3149, 32752
  %3151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3150)  ; LegacyF16ToF32(value)
  %3152 = lshr i32 %3145, 7
  %3153 = and i32 %3152, 32752
  %3154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3153)  ; LegacyF16ToF32(value)
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 3
  %3157 = fmul fast float %3156, 1.000000e+03
  %3158 = fmul fast float %3157, %634
  %3159 = call float @dx.op.unary.f32(i32 22, float %3158)  ; Frc(value)
  %3160 = fadd fast float %3159, %622
  %3161 = fmul fast float %3157, %636
  %3162 = call float @dx.op.unary.f32(i32 22, float %3161)  ; Frc(value)
  %3163 = fadd fast float %3162, %623
  %3164 = fmul fast float %3129, %3157
  %3165 = call float @dx.op.unary.f32(i32 22, float %3164)  ; Frc(value)
  %3166 = fmul fast float %3165, 0x401921FB60000000
  %3167 = fadd fast float %3166, %3148
  %3168 = call float @dx.op.unary.f32(i32 13, float %3167)  ; Sin(value)
  %3169 = call float @dx.op.unary.f32(i32 12, float %3167)  ; Cos(value)
  %3170 = fsub fast float -0.000000e+00, %3168
  %3171 = fadd fast float %3122, -5.000000e-01
  %3172 = fadd fast float %3123, -5.000000e-01
  %3173 = fmul fast float %3140, %3171
  %3174 = fmul fast float %3142, %3172
  %3175 = fadd fast float %3173, 5.000000e-01
  %3176 = fadd fast float %3174, 5.000000e-01
  %3177 = fmul fast float %3151, %3175
  %3178 = fmul fast float %3154, %3176
  %3179 = fmul fast float %3169, %3177
  %3180 = call float @dx.op.tertiary.f32(i32 46, float %3170, float %3178, float %3179)  ; FMad(a,b,c)
  %3181 = fmul fast float %3168, %3177
  %3182 = call float @dx.op.tertiary.f32(i32 46, float %3169, float %3178, float %3181)  ; FMad(a,b,c)
  %3183 = fadd fast float %3160, %3180
  %3184 = fadd fast float %3163, %3182
  %3185 = icmp ugt i32 %3134, 1
  %3186 = icmp ugt i32 %3132, 33554431
  %3187 = or i1 %3186, %3185
  br i1 %3187, label %3188, label %3213

; <label>:3188                                    ; preds = %3115
  %3189 = add i32 %51, 276
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = lshr i32 %3191, 16
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = fmul fast float %3156, %3193
  %3195 = call float @dx.op.unary.f32(i32 22, float %3194)  ; Frc(value)
  %3196 = mul nuw nsw i32 %3134, %3135
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3195, %3197
  %3199 = call float @dx.op.unary.f32(i32 27, float %3198)  ; Round_ni(value)
  %3200 = fptoui float %3199 to i32
  %3201 = urem i32 %3200, %3134
  %3202 = udiv i32 %3200, %3135
  %3203 = call float @dx.op.unary.f32(i32 22, float %3183)  ; Frc(value)
  %3204 = call float @dx.op.unary.f32(i32 22, float %3184)  ; Frc(value)
  %3205 = uitofp i32 %3201 to float
  %3206 = uitofp i32 %3202 to float
  %3207 = fadd fast float %3203, %3205
  %3208 = fadd fast float %3204, %3206
  %3209 = uitofp i32 %3134 to float
  %3210 = uitofp i32 %3135 to float
  %3211 = fdiv fast float %3207, %3209
  %3212 = fdiv fast float %3208, %3210
  br label %3213

; <label>:3213                                    ; preds = %3188, %3115
  %3214 = phi float [ %3211, %3188 ], [ %3183, %3115 ]
  %3215 = phi float [ %3212, %3188 ], [ %3184, %3115 ]
  %3216 = and i32 %3109, 256
  %3217 = icmp eq i32 %3216, 0
  br i1 %3217, label %3264, label %3218

; <label>:3218                                    ; preds = %3213
  %3219 = add i32 %51, 452
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = add i32 %3221, 0
  %3223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3223, %dx.types.Handle %99, float %3214, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3225 = extractvalue %dx.types.ResRet.f32 %3224, 0
  %3226 = add i32 %51, 148
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = shl i32 %3228, 4
  %3230 = and i32 %3229, 32752
  %3231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3230)  ; LegacyF16ToF32(value)
  %3232 = lshr i32 %3228, 7
  %3233 = and i32 %3232, 32752
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = fsub fast float 1.000000e+00, %694
  %3236 = call float @dx.op.binary.f32(i32 35, float %3235, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3237 = bitcast float %694 to i32
  %3238 = sitofp i32 %3237 to float
  %3239 = fadd fast float %3238, 0xC1CFBF8940000000
  %3240 = fmul fast float %3234, %3239
  %3241 = fadd fast float %3240, 0x41CFBF8940000000
  %3242 = fptosi float %3241 to i32
  %3243 = bitcast i32 %3242 to float
  %3244 = bitcast float %3236 to i32
  %3245 = sitofp i32 %3244 to float
  %3246 = fadd fast float %3245, 0xC1CFBF8940000000
  %3247 = fmul fast float %3246, %3234
  %3248 = fadd fast float %3247, 0x41CFBF8940000000
  %3249 = fptosi float %3248 to i32
  %3250 = bitcast i32 %3249 to float
  %3251 = fmul fast float %3243, %3231
  %3252 = fmul fast float %3250, %3231
  %3253 = fsub fast float %3236, %3251
  %3254 = fadd fast float %3252, %3236
  %3255 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3256 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3257 = fsub fast float %3225, %3255
  %3258 = fsub fast float %3256, %3255
  %3259 = bitcast float %3258 to i32
  %3260 = sub nsw i32 2129859010, %3259
  %3261 = bitcast i32 %3260 to float
  %3262 = fmul fast float %3261, %3257
  %3263 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  br label %3264

; <label>:3264                                    ; preds = %3218, %3213
  %3265 = phi float [ %3263, %3218 ], [ %694, %3213 ]
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 128
  %3269 = icmp eq i32 %3268, 0
  br i1 %3269, label %3286, label %3270

; <label>:3270                                    ; preds = %3264
  %3271 = add i32 %51, 436
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = add i32 %3273, 0
  %3275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3275, %dx.types.Handle %99, float %3214, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 524288
  %3281 = icmp ne i32 %3280, 0
  %3282 = fcmp fast ogt float %3277, 0x3FE0101020000000
  %3283 = select i1 %3282, float 1.000000e+00, float 0.000000e+00
  %3284 = select i1 %3281, float %3283, float %3277
  %3285 = fmul fast float %3284, %3265
  br label %3286

; <label>:3286                                    ; preds = %3270, %3264
  %3287 = phi float [ %3285, %3270 ], [ %3265, %3264 ]
  %3288 = fcmp fast ult float %3287, 0x3F70101020000000
  br i1 %3288, label %3971, label %3289

; <label>:3289                                    ; preds = %3286
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = and i32 %3291, 16
  %3293 = icmp eq i32 %3292, 0
  br i1 %3293, label %3492, label %3294

; <label>:3294                                    ; preds = %3289
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = add i32 %51, 388
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = add i32 %3299, 0
  %3301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3301, %dx.types.Handle %98, float %3214, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3303 = extractvalue %dx.types.ResRet.f32 %3302, 0
  %3304 = extractvalue %dx.types.ResRet.f32 %3302, 1
  %3305 = extractvalue %dx.types.ResRet.f32 %3302, 2
  %3306 = extractvalue %dx.types.ResRet.f32 %3302, 3
  %3307 = and i32 %3296, 255
  %3308 = uitofp i32 %3307 to float
  %3309 = lshr i32 %3296, 8
  %3310 = and i32 %3309, 255
  %3311 = uitofp i32 %3310 to float
  %3312 = fmul fast float %3306, %3308
  %3313 = fadd fast float %3312, %3311
  %3314 = fmul fast float %3313, 0x3F70101000000000
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = and i32 %3316, 512
  %3318 = icmp eq i32 %3317, 0
  br i1 %3318, label %3327, label %3319

; <label>:3319                                    ; preds = %3294
  %3320 = add i32 %51, 472
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = add i32 %3322, 0
  %3324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3324, %dx.types.Handle %99, float %3214, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  br label %3327

; <label>:3327                                    ; preds = %3319, %3294
  %3328 = phi float [ %3326, %3319 ], [ 1.000000e+00, %3294 ]
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = and i32 %3330, 33554432
  %3332 = icmp eq i32 %3331, 0
  br i1 %3332, label %3439, label %3333

; <label>:3333                                    ; preds = %3327
  %3334 = add i32 %51, 272
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 65535
  %3338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3337)  ; LegacyF16ToF32(value)
  %3339 = lshr i32 %3336, 16
  %3340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3339)  ; LegacyF16ToF32(value)
  %3341 = add i32 %51, 276
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = and i32 %3343, 65535
  %3345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3344)  ; LegacyF16ToF32(value)
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = lshr i32 %3347, 24
  %3349 = uitofp i32 %3348 to float
  %3350 = fmul fast float %3349, 0x3F70101020000000
  %3351 = and i32 %3347, 255
  %3352 = uitofp i32 %3351 to float
  %3353 = fmul fast float %3352, 0x3F70101020000000
  %3354 = lshr i32 %3347, 8
  %3355 = and i32 %3354, 255
  %3356 = uitofp i32 %3355 to float
  %3357 = fmul fast float %3356, 0x3F70101020000000
  %3358 = lshr i32 %3347, 16
  %3359 = and i32 %3358, 255
  %3360 = uitofp i32 %3359 to float
  %3361 = fmul fast float %3360, 0x3F70101020000000
  %3362 = add i32 %51, 268
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = lshr i32 %3364, 24
  %3366 = uitofp i32 %3365 to float
  %3367 = fmul fast float %3366, 0x3F70101020000000
  %3368 = and i32 %3364, 255
  %3369 = uitofp i32 %3368 to float
  %3370 = fmul fast float %3369, 0x3F70101020000000
  %3371 = lshr i32 %3364, 8
  %3372 = and i32 %3371, 255
  %3373 = uitofp i32 %3372 to float
  %3374 = fmul fast float %3373, 0x3F70101020000000
  %3375 = lshr i32 %3364, 16
  %3376 = and i32 %3375, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = fmul fast float %3377, 0x3F70101020000000
  %3379 = bitcast float %3303 to i32
  %3380 = ashr i32 %3379, 1
  %3381 = sub nsw i32 1597463174, %3380
  %3382 = bitcast i32 %3381 to float
  %3383 = fmul fast float %3303, 5.000000e-01
  %3384 = fmul fast float %3382, %3382
  %3385 = fmul fast float %3384, %3383
  %3386 = fsub fast float 1.500000e+00, %3385
  %3387 = fmul fast float %3382, %3303
  %3388 = fmul fast float %3387, %3386
  %3389 = bitcast float %3304 to i32
  %3390 = ashr i32 %3389, 1
  %3391 = sub nsw i32 1597463174, %3390
  %3392 = bitcast i32 %3391 to float
  %3393 = fmul fast float %3304, 5.000000e-01
  %3394 = fmul fast float %3392, %3392
  %3395 = fmul fast float %3394, %3393
  %3396 = fsub fast float 1.500000e+00, %3395
  %3397 = fmul fast float %3392, %3304
  %3398 = fmul fast float %3397, %3396
  %3399 = bitcast float %3305 to i32
  %3400 = ashr i32 %3399, 1
  %3401 = sub nsw i32 1597463174, %3400
  %3402 = bitcast i32 %3401 to float
  %3403 = fmul fast float %3305, 5.000000e-01
  %3404 = fmul fast float %3402, %3402
  %3405 = fmul fast float %3404, %3403
  %3406 = fsub fast float 1.500000e+00, %3405
  %3407 = fmul fast float %3402, %3305
  %3408 = fmul fast float %3407, %3406
  %3409 = fsub fast float %3388, %3370
  %3410 = fsub fast float %3398, %3374
  %3411 = fsub fast float %3408, %3378
  %3412 = fmul fast float %3409, %3338
  %3413 = fmul fast float %3410, %3340
  %3414 = fmul fast float %3411, %3345
  %3415 = fadd fast float %3412, %3353
  %3416 = fadd fast float %3413, %3357
  %3417 = fadd fast float %3414, %3361
  %3418 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  %3419 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3420 = call float @dx.op.unary.f32(i32 7, float %3417)  ; Saturate(value)
  %3421 = fmul fast float %3418, %3418
  %3422 = fmul fast float %3419, %3419
  %3423 = fmul fast float %3420, %3420
  %3424 = fsub fast float %3421, %3303
  %3425 = fsub fast float %3422, %3304
  %3426 = fsub fast float %3423, %3305
  %3427 = fmul fast float %3424, %3328
  %3428 = fmul fast float %3425, %3328
  %3429 = fmul fast float %3426, %3328
  %3430 = fadd fast float %3427, %3303
  %3431 = fadd fast float %3428, %3304
  %3432 = fadd fast float %3429, %3305
  %3433 = fadd fast float %3350, %3314
  %3434 = fsub fast float %3433, %3367
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3436 = fsub fast float %3435, %3314
  %3437 = fmul fast float %3436, %3328
  %3438 = fadd fast float %3437, %3314
  br label %3492

; <label>:3439                                    ; preds = %3327
  %3440 = and i32 %3330, 134217728
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %3476, label %3442

; <label>:3442                                    ; preds = %3439
  %3443 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %3444 = call float @dx.op.unary.f32(i32 24, float %611)  ; Sqrt(value)
  %3445 = call float @dx.op.unary.f32(i32 24, float %612)  ; Sqrt(value)
  %3446 = fadd fast float %3443, -5.000000e-01
  %3447 = fadd fast float %3444, -5.000000e-01
  %3448 = fadd fast float %3445, -5.000000e-01
  %3449 = fmul fast float %3446, %3328
  %3450 = fmul fast float %3447, %3328
  %3451 = fmul fast float %3448, %3328
  %3452 = fadd fast float %3449, 5.000000e-01
  %3453 = fadd fast float %3450, 5.000000e-01
  %3454 = fadd fast float %3451, 5.000000e-01
  %3455 = call float @dx.op.unary.f32(i32 24, float %3303)  ; Sqrt(value)
  %3456 = call float @dx.op.unary.f32(i32 24, float %3304)  ; Sqrt(value)
  %3457 = call float @dx.op.unary.f32(i32 24, float %3305)  ; Sqrt(value)
  %3458 = fmul fast float %3452, 2.000000e+00
  %3459 = fsub fast float 1.000000e+00, %3458
  %3460 = fmul fast float %3459, %3455
  %3461 = fadd fast float %3460, %3458
  %3462 = fmul fast float %3461, %3455
  %3463 = fmul fast float %3453, 2.000000e+00
  %3464 = fsub fast float 1.000000e+00, %3463
  %3465 = fmul fast float %3464, %3456
  %3466 = fadd fast float %3465, %3463
  %3467 = fmul fast float %3466, %3456
  %3468 = fmul fast float %3454, 2.000000e+00
  %3469 = fsub fast float 1.000000e+00, %3468
  %3470 = fmul fast float %3469, %3457
  %3471 = fadd fast float %3470, %3468
  %3472 = fmul fast float %3471, %3457
  %3473 = fmul fast float %3462, %3462
  %3474 = fmul fast float %3467, %3467
  %3475 = fmul fast float %3472, %3472
  br label %3492

; <label>:3476                                    ; preds = %3439
  %3477 = fmul fast float %610, %610
  %3478 = fmul fast float %611, %611
  %3479 = fmul fast float %612, %612
  %3480 = fadd fast float %3477, -1.000000e+00
  %3481 = fadd fast float %3478, -1.000000e+00
  %3482 = fadd fast float %3479, -1.000000e+00
  %3483 = fmul fast float %3328, %3480
  %3484 = fmul fast float %3328, %3481
  %3485 = fmul fast float %3328, %3482
  %3486 = fadd fast float %3483, 1.000000e+00
  %3487 = fadd fast float %3484, 1.000000e+00
  %3488 = fadd fast float %3485, 1.000000e+00
  %3489 = fmul fast float %3486, %3303
  %3490 = fmul fast float %3487, %3304
  %3491 = fmul fast float %3488, %3305
  br label %3492

; <label>:3492                                    ; preds = %3476, %3442, %3333, %3289
  %3493 = phi float [ %3438, %3333 ], [ %3314, %3442 ], [ %3314, %3476 ], [ 0x3FA23C0BE0000000, %3289 ]
  %3494 = phi float [ %3430, %3333 ], [ %3473, %3442 ], [ %3489, %3476 ], [ 1.000000e+00, %3289 ]
  %3495 = phi float [ %3431, %3333 ], [ %3474, %3442 ], [ %3490, %3476 ], [ 1.000000e+00, %3289 ]
  %3496 = phi float [ %3432, %3333 ], [ %3475, %3442 ], [ %3491, %3476 ], [ 1.000000e+00, %3289 ]
  %3497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.i32 %3497, 1
  %3499 = and i32 %3498, 1
  %3500 = icmp ne i32 %3499, 0
  %3501 = add i32 %51, 356
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = and i32 %3503, 32
  %3505 = icmp ne i32 %3504, 0
  %3506 = and i1 %3500, %3505
  %3507 = select i1 %3506, float 1.000000e+00, float %3494
  %3508 = select i1 %3506, float 0x3FD3333340000000, float %3495
  %3509 = select i1 %3506, float 0x3FD3333340000000, float %3496
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = and i32 %3511, 32
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3586, label %3514

; <label>:3514                                    ; preds = %3492
  %3515 = add i32 %51, 140
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = add i32 %51, 404
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = add i32 %3520, 0
  %3522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3522, %dx.types.Handle %98, float %3214, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = extractvalue %dx.types.ResRet.f32 %3523, 1
  %3526 = extractvalue %dx.types.ResRet.f32 %3523, 2
  %3527 = extractvalue %dx.types.ResRet.f32 %3523, 3
  %3528 = and i32 %3517, 255
  %3529 = uitofp i32 %3528 to float
  %3530 = lshr i32 %3517, 8
  %3531 = and i32 %3530, 255
  %3532 = uitofp i32 %3531 to float
  %3533 = lshr i32 %3517, 16
  %3534 = and i32 %3533, 255
  %3535 = uitofp i32 %3534 to float
  %3536 = fmul fast float %3535, 0x3F70101000000000
  %3537 = fmul fast float %3524, %3529
  %3538 = fadd fast float %3537, %3532
  %3539 = fmul fast float %3538, 0x3F70101000000000
  %3540 = fadd fast float %3525, -5.000000e-01
  %3541 = fadd fast float %3527, -5.000000e-01
  %3542 = fmul fast float %3540, %3536
  %3543 = fmul fast float %3541, %3536
  %3544 = fadd fast float %3542, 5.000000e-01
  %3545 = fadd fast float %3543, 5.000000e-01
  %3546 = fmul fast float %3544, 2.000000e+00
  %3547 = fadd fast float %3546, -1.000000e+00
  %3548 = fmul fast float %3545, 2.000000e+00
  %3549 = fadd fast float %3548, -1.000000e+00
  %3550 = fadd fast float %3547, %3549
  %3551 = fmul fast float %3550, 5.000000e-01
  %3552 = fsub fast float %3547, %3549
  %3553 = fmul fast float %3552, 5.000000e-01
  %3554 = call float @dx.op.unary.f32(i32 6, float %3551)  ; FAbs(value)
  %3555 = fsub fast float 1.000000e+00, %3554
  %3556 = call float @dx.op.unary.f32(i32 6, float %3553)  ; FAbs(value)
  %3557 = fsub fast float %3555, %3556
  %3558 = call float @dx.op.dot3.f32(i32 55, float %3551, float %3553, float %3557, float %3551, float %3553, float %3557)  ; Dot3(ax,ay,az,bx,by,bz)
  %3559 = call float @dx.op.unary.f32(i32 25, float %3558)  ; Rsqrt(value)
  %3560 = fmul fast float %3551, %3559
  %3561 = fmul fast float %3553, %3559
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 67108864
  %3565 = icmp eq i32 %3564, 0
  br i1 %3565, label %3582, label %3566

; <label>:3566                                    ; preds = %3514
  %3567 = add i32 %51, 328
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = and i32 %3569, 65535
  %3571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3570)  ; LegacyF16ToF32(value)
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = and i32 %3573, 65535
  %3575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3574)  ; LegacyF16ToF32(value)
  %3576 = lshr i32 %3569, 16
  %3577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3576)  ; LegacyF16ToF32(value)
  %3578 = fsub fast float %3539, %3577
  %3579 = fmul fast float %3578, %3571
  %3580 = fadd fast float %3579, %3575
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  br label %3582

; <label>:3582                                    ; preds = %3566, %3514
  %3583 = phi float [ %3581, %3566 ], [ %3539, %3514 ]
  %3584 = call float @dx.op.dot2.f32(i32 54, float %3560, float %3561, float %3118, float %3119)  ; Dot2(ax,ay,bx,by)
  %3585 = call float @dx.op.dot2.f32(i32 54, float %3560, float %3561, float %3120, float %3121)  ; Dot2(ax,ay,bx,by)
  br label %3586

; <label>:3586                                    ; preds = %3582, %3492
  %3587 = phi float [ %3583, %3582 ], [ 0x3FD6666660000000, %3492 ]
  %3588 = phi float [ %3584, %3582 ], [ 0.000000e+00, %3492 ]
  %3589 = phi float [ %3585, %3582 ], [ 0.000000e+00, %3492 ]
  %3590 = phi float [ %3526, %3582 ], [ 1.000000e+00, %3492 ]
  %3591 = add i32 %51, 208
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = lshr i32 %3593, 22
  %3595 = shl nuw nsw i32 %3594, 5
  %3596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3595)  ; LegacyF16ToF32(value)
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, 64
  %3600 = icmp eq i32 %3599, 0
  br i1 %3600, label %3634, label %3601

; <label>:3601                                    ; preds = %3586
  %3602 = add i32 %51, 420
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = add i32 %3604, 0
  %3606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = and i32 %3608, 131072
  %3610 = icmp eq i32 %3609, 0
  %3611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3606, %dx.types.Handle %98, float %3214, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = fmul fast float %593, %3612
  %3616 = fmul fast float %594, %3613
  %3617 = fmul fast float %595, %3614
  br i1 %3610, label %3624, label %3618

; <label>:3618                                    ; preds = %3601
  %3619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.f32 %3619, 0
  %3621 = fmul fast float %3620, %3615
  %3622 = fmul fast float %3620, %3616
  %3623 = fmul fast float %3620, %3617
  br label %3624

; <label>:3624                                    ; preds = %3618, %3601
  %3625 = phi float [ %3621, %3618 ], [ %3615, %3601 ]
  %3626 = phi float [ %3622, %3618 ], [ %3616, %3601 ]
  %3627 = phi float [ %3623, %3618 ], [ %3617, %3601 ]
  %3628 = fmul fast float %3625, %3596
  %3629 = select i1 %261, float %3628, float %3625
  %3630 = call float @dx.op.dot3.f32(i32 55, float %3629, float %3626, float %3627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3631 = select i1 %261, float 0.000000e+00, float %3625
  %3632 = select i1 %261, float %3630, float %3626
  %3633 = select i1 %261, float 0.000000e+00, float %3627
  br label %3634

; <label>:3634                                    ; preds = %3624, %3586
  %3635 = phi float [ %3631, %3624 ], [ 0.000000e+00, %3586 ]
  %3636 = phi float [ %3632, %3624 ], [ 0.000000e+00, %3586 ]
  %3637 = phi float [ %3633, %3624 ], [ 0.000000e+00, %3586 ]
  %3638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.i32 %3638, 0
  %3640 = and i32 %3639, 1024
  %3641 = icmp eq i32 %3640, 0
  br i1 %3641, label %3672, label %3642

; <label>:3642                                    ; preds = %3634
  %3643 = add i32 %51, 200
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = and i32 %3645, 255
  %3647 = uitofp i32 %3646 to float
  %3648 = fmul fast float %3647, 0x3F70101020000000
  %3649 = lshr i32 %3645, 8
  %3650 = and i32 %3649, 255
  %3651 = uitofp i32 %3650 to float
  %3652 = fmul fast float %3651, 0x3F70101020000000
  %3653 = lshr i32 %3645, 16
  %3654 = and i32 %3653, 255
  %3655 = uitofp i32 %3654 to float
  %3656 = fmul fast float %3655, 0x3F70101020000000
  %3657 = fmul fast float %3648, %3648
  %3658 = fmul fast float %3652, %3652
  %3659 = fmul fast float %3656, %3656
  %3660 = add i32 %51, 488
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = add i32 %3662, 0
  %3664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3664, %dx.types.Handle %99, float %3214, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3666 = extractvalue %dx.types.ResRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.ResRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.ResRet.f32 %3665, 2
  %3669 = fmul fast float %3657, %3666
  %3670 = fmul fast float %3658, %3667
  %3671 = fmul fast float %3659, %3668
  br label %3672

; <label>:3672                                    ; preds = %3642, %3634
  %3673 = phi float [ %3669, %3642 ], [ 0.000000e+00, %3634 ]
  %3674 = phi float [ %3670, %3642 ], [ 0.000000e+00, %3634 ]
  %3675 = phi float [ %3671, %3642 ], [ 0.000000e+00, %3634 ]
  %3676 = fcmp fast ogt float %3673, 0.000000e+00
  %3677 = fcmp fast ogt float %3674, 0.000000e+00
  %3678 = fcmp fast ogt float %3675, 0.000000e+00
  %3679 = call float @dx.op.unary.f32(i32 23, float %3673)  ; Log(value)
  %3680 = call float @dx.op.unary.f32(i32 23, float %3674)  ; Log(value)
  %3681 = call float @dx.op.unary.f32(i32 23, float %3675)  ; Log(value)
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = lshr i32 %3683, 7
  %3685 = and i32 %3684, 32752
  %3686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3685)  ; LegacyF16ToF32(value)
  %3687 = fmul fast float %3679, 0xBFE62E4300000000
  %3688 = fmul fast float %3687, %3686
  %3689 = fmul fast float %3680, 0xBFE62E4300000000
  %3690 = fmul fast float %3689, %3686
  %3691 = fmul fast float %3681, 0xBFE62E4300000000
  %3692 = fmul fast float %3691, %3686
  %3693 = select i1 %3676, float %3688, float 1.270000e+02
  %3694 = select i1 %3677, float %3690, float 1.270000e+02
  %3695 = select i1 %3678, float %3692, float 1.270000e+02
  %3696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.i32 %3696, 0
  %3698 = and i32 %3697, 2048
  %3699 = icmp eq i32 %3698, 0
  br i1 %3699, label %3715, label %3700

; <label>:3700                                    ; preds = %3672
  %3701 = add i32 %51, 504
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = add i32 %3703, 0
  %3705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3705, %dx.types.Handle %99, float %3214, float %3215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 3
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = shl i32 %3709, 4
  %3711 = and i32 %3710, 32752
  %3712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3711)  ; LegacyF16ToF32(value)
  %3713 = fmul fast float %3712, %3707
  %3714 = call float @dx.op.binary.f32(i32 35, float %3713, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3715

; <label>:3715                                    ; preds = %3700, %3672
  %3716 = phi float [ %3714, %3700 ], [ 0x3F70101020000000, %3672 ]
  %3717 = add i32 %51, 144
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = and i32 %3719, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = lshr i32 %3719, 8
  %3723 = and i32 %3722, 255
  %3724 = uitofp i32 %3723 to float
  %3725 = call float @dx.op.dot3.f32(i32 55, float %3507, float %3508, float %3509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3726 = fmul fast float %3724, %3725
  %3727 = fadd fast float %3726, %3721
  %3728 = fmul fast float %3727, 0x3F70101020000000
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  br i1 %3106, label %3730, label %3765

; <label>:3730                                    ; preds = %3715
  %3731 = fmul fast float %3716, 2.000000e+00
  %3732 = fcmp fast olt float %3693, 1.270000e+02
  %3733 = fcmp fast olt float %3694, 1.270000e+02
  %3734 = fcmp fast olt float %3695, 1.270000e+02
  %3735 = fmul fast float %3693, 0xBFF7154760000000
  %3736 = fmul fast float %3735, %3731
  %3737 = fmul fast float %3694, 0xBFF7154760000000
  %3738 = fmul fast float %3737, %3731
  %3739 = fmul fast float %3695, 0xBFF7154760000000
  %3740 = fmul fast float %3739, %3731
  %3741 = call float @dx.op.unary.f32(i32 21, float %3736)  ; Exp(value)
  %3742 = call float @dx.op.unary.f32(i32 21, float %3738)  ; Exp(value)
  %3743 = call float @dx.op.unary.f32(i32 21, float %3740)  ; Exp(value)
  %3744 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  %3745 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3746 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3747 = fadd fast float %3744, -1.000000e+00
  %3748 = select i1 %3732, float %3747, float -1.000000e+00
  %3749 = fadd fast float %3745, -1.000000e+00
  %3750 = select i1 %3733, float %3749, float -1.000000e+00
  %3751 = fadd fast float %3746, -1.000000e+00
  %3752 = select i1 %3734, float %3751, float -1.000000e+00
  %3753 = fmul fast float %3748, %3287
  %3754 = fmul fast float %3750, %3287
  %3755 = fmul fast float %3752, %3287
  %3756 = fadd fast float %3753, 1.000000e+00
  %3757 = fadd fast float %3754, 1.000000e+00
  %3758 = fadd fast float %3755, 1.000000e+00
  %3759 = fmul fast float %3756, %3091
  %3760 = fmul fast float %3757, %3092
  %3761 = fmul fast float %3758, %3093
  %3762 = fmul fast float %3756, %3094
  %3763 = fmul fast float %3757, %3095
  %3764 = fmul fast float %3758, %3096
  br label %3765

; <label>:3765                                    ; preds = %3730, %3715
  %3766 = phi float [ %3759, %3730 ], [ %3091, %3715 ]
  %3767 = phi float [ %3760, %3730 ], [ %3092, %3715 ]
  %3768 = phi float [ %3761, %3730 ], [ %3093, %3715 ]
  %3769 = phi float [ %3762, %3730 ], [ %3094, %3715 ]
  %3770 = phi float [ %3763, %3730 ], [ %3095, %3715 ]
  %3771 = phi float [ %3764, %3730 ], [ %3096, %3715 ]
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = and i32 %3773, 3
  %3775 = icmp eq i32 %3774, 3
  br i1 %3775, label %3854, label %3776

; <label>:3776                                    ; preds = %3765
  %3777 = and i32 %3773, 16
  %3778 = icmp ne i32 %3777, 0
  %3779 = select i1 %3778, float %3287, float 0.000000e+00
  %3780 = icmp eq i32 %3774, 0
  br i1 %3780, label %3781, label %3809

; <label>:3781                                    ; preds = %3776
  %3782 = and i32 %3773, 64
  %3783 = icmp ne i32 %3782, 0
  %3784 = select i1 %3783, float %3287, float 0.000000e+00
  %3785 = fsub fast float %3507, %3766
  %3786 = fsub fast float %3508, %3767
  %3787 = fsub fast float %3509, %3768
  %3788 = fmul fast float %3779, %3785
  %3789 = fmul fast float %3779, %3786
  %3790 = fmul fast float %3779, %3787
  %3791 = fadd fast float %3788, %3766
  %3792 = fadd fast float %3789, %3767
  %3793 = fadd fast float %3790, %3768
  %3794 = fsub fast float %3493, %3100
  %3795 = fmul fast float %3779, %3794
  %3796 = fadd fast float %3795, %3100
  %3797 = fsub fast float %3635, %3769
  %3798 = fsub fast float %3636, %3770
  %3799 = fsub fast float %3637, %3771
  %3800 = fmul fast float %3784, %3797
  %3801 = fmul fast float %3784, %3798
  %3802 = fmul fast float %3784, %3799
  %3803 = fadd fast float %3800, %3769
  %3804 = fadd fast float %3801, %3770
  %3805 = fadd fast float %3802, %3771
  %3806 = fsub fast float %3729, %3104
  %3807 = fmul fast float %3779, %3806
  %3808 = fadd fast float %3807, %3104
  br label %3854

; <label>:3809                                    ; preds = %3776
  %3810 = icmp eq i32 %3774, 1
  br i1 %3810, label %3811, label %3824

; <label>:3811                                    ; preds = %3809
  %3812 = fadd fast float %3507, -1.000000e+00
  %3813 = fadd fast float %3508, -1.000000e+00
  %3814 = fadd fast float %3509, -1.000000e+00
  %3815 = fmul fast float %3779, %3812
  %3816 = fmul fast float %3779, %3813
  %3817 = fmul fast float %3779, %3814
  %3818 = fadd fast float %3815, 1.000000e+00
  %3819 = fadd fast float %3816, 1.000000e+00
  %3820 = fadd fast float %3817, 1.000000e+00
  %3821 = fmul fast float %3818, %3766
  %3822 = fmul fast float %3819, %3767
  %3823 = fmul fast float %3820, %3768
  br label %3854

; <label>:3824                                    ; preds = %3809
  %3825 = icmp eq i32 %3774, 2
  br i1 %3825, label %3826, label %3854

; <label>:3826                                    ; preds = %3824
  %3827 = call float @dx.op.unary.f32(i32 24, float %3507)  ; Sqrt(value)
  %3828 = call float @dx.op.unary.f32(i32 24, float %3508)  ; Sqrt(value)
  %3829 = call float @dx.op.unary.f32(i32 24, float %3509)  ; Sqrt(value)
  %3830 = fadd fast float %3827, -5.000000e-01
  %3831 = fadd fast float %3828, -5.000000e-01
  %3832 = fadd fast float %3829, -5.000000e-01
  %3833 = fmul fast float %3830, %3779
  %3834 = fmul fast float %3831, %3779
  %3835 = fmul fast float %3832, %3779
  %3836 = fadd fast float %3833, 5.000000e-01
  %3837 = fadd fast float %3834, 5.000000e-01
  %3838 = fadd fast float %3835, 5.000000e-01
  %3839 = fmul fast float %3836, 2.000000e+00
  %3840 = fsub fast float 1.000000e+00, %3839
  %3841 = fmul fast float %3840, %3766
  %3842 = fadd fast float %3841, %3839
  %3843 = fmul fast float %3842, %3766
  %3844 = fmul fast float %3837, 2.000000e+00
  %3845 = fsub fast float 1.000000e+00, %3844
  %3846 = fmul fast float %3845, %3767
  %3847 = fadd fast float %3846, %3844
  %3848 = fmul fast float %3847, %3767
  %3849 = fmul fast float %3838, 2.000000e+00
  %3850 = fsub fast float 1.000000e+00, %3849
  %3851 = fmul fast float %3850, %3768
  %3852 = fadd fast float %3851, %3849
  %3853 = fmul fast float %3852, %3768
  br label %3854

; <label>:3854                                    ; preds = %3826, %3824, %3811, %3781, %3765
  %3855 = phi float [ %3766, %3765 ], [ %3843, %3826 ], [ %3766, %3824 ], [ %3821, %3811 ], [ %3791, %3781 ]
  %3856 = phi float [ %3767, %3765 ], [ %3848, %3826 ], [ %3767, %3824 ], [ %3822, %3811 ], [ %3792, %3781 ]
  %3857 = phi float [ %3768, %3765 ], [ %3853, %3826 ], [ %3768, %3824 ], [ %3823, %3811 ], [ %3793, %3781 ]
  %3858 = phi float [ %3769, %3765 ], [ %3769, %3826 ], [ %3769, %3824 ], [ %3769, %3811 ], [ %3803, %3781 ]
  %3859 = phi float [ %3770, %3765 ], [ %3770, %3826 ], [ %3770, %3824 ], [ %3770, %3811 ], [ %3804, %3781 ]
  %3860 = phi float [ %3771, %3765 ], [ %3771, %3826 ], [ %3771, %3824 ], [ %3771, %3811 ], [ %3805, %3781 ]
  %3861 = phi float [ %3100, %3765 ], [ %3100, %3826 ], [ %3100, %3824 ], [ %3100, %3811 ], [ %3796, %3781 ]
  %3862 = phi float [ %3104, %3765 ], [ %3104, %3826 ], [ %3104, %3824 ], [ %3104, %3811 ], [ %3808, %3781 ]
  %3863 = and i32 %3773, 12
  %3864 = icmp eq i32 %3863, 12
  br i1 %3864, label %3971, label %3865

; <label>:3865                                    ; preds = %3854
  %3866 = and i32 %3773, 2097184
  %3867 = icmp eq i32 %3866, 2097184
  %3868 = select i1 %3867, float %3287, float 0.000000e+00
  %3869 = and i32 %3773, 4194336
  %3870 = icmp eq i32 %3869, 4194336
  %3871 = select i1 %3870, float %3287, float 0.000000e+00
  %3872 = and i32 %3773, 8388640
  %3873 = icmp eq i32 %3872, 8388640
  %3874 = select i1 %3873, float %3287, float 0.000000e+00
  %3875 = and i32 %3773, 1024
  %3876 = icmp ne i32 %3875, 0
  %3877 = select i1 %3876, float %3287, float 0.000000e+00
  %3878 = and i32 %3773, 2048
  %3879 = icmp ne i32 %3878, 0
  %3880 = select i1 %3879, float %3287, float 0.000000e+00
  %3881 = icmp eq i32 %3863, 0
  br i1 %3881, label %3882, label %3907

; <label>:3882                                    ; preds = %3865
  %3883 = fsub fast float %3588, %3089
  %3884 = fsub fast float %3589, %3090
  %3885 = fmul fast float %3868, %3883
  %3886 = fmul fast float %3868, %3884
  %3887 = fadd fast float %3885, %3089
  %3888 = fadd fast float %3886, %3090
  %3889 = fsub fast float %3590, %3102
  %3890 = fmul fast float %3871, %3889
  %3891 = fadd fast float %3890, %3102
  %3892 = fsub fast float %3587, %3101
  %3893 = fmul fast float %3874, %3892
  %3894 = fadd fast float %3893, %3101
  %3895 = fsub fast float %3693, %3097
  %3896 = fsub fast float %3694, %3098
  %3897 = fsub fast float %3695, %3099
  %3898 = fmul fast float %3877, %3895
  %3899 = fmul fast float %3877, %3896
  %3900 = fmul fast float %3877, %3897
  %3901 = fadd fast float %3898, %3097
  %3902 = fadd fast float %3899, %3098
  %3903 = fadd fast float %3900, %3099
  %3904 = fsub fast float %3716, %3103
  %3905 = fmul fast float %3880, %3904
  %3906 = fadd fast float %3905, %3103
  br label %3971

; <label>:3907                                    ; preds = %3865
  %3908 = icmp eq i32 %3863, 4
  br i1 %3908, label %3909, label %3949

; <label>:3909                                    ; preds = %3907
  %3910 = fmul fast float %3868, %3588
  %3911 = fmul fast float %3868, %3589
  %3912 = fadd fast float %3910, %3089
  %3913 = fadd fast float %3911, %3090
  %3914 = call float @dx.op.binary.f32(i32 36, float %3102, float %3590)  ; FMin(a,b)
  %3915 = fsub fast float %3914, %3102
  %3916 = fmul fast float %3915, %3871
  %3917 = fadd fast float %3916, %3102
  %3918 = fadd fast float %3587, %3101
  %3919 = fmul fast float %3918, 0x3FF337FAE0000000
  %3920 = fmul fast float %3101, %3101
  %3921 = fmul fast float %3587, %3587
  %3922 = fadd fast float %3921, %3920
  %3923 = fmul fast float %3922, 0x3FE5152B00000000
  %3924 = fmul fast float %3101, 0xBFCC1F85E0000000
  %3925 = fmul fast float %3924, %3587
  %3926 = fadd fast float %3925, 0xBFE1363700000000
  %3927 = fadd fast float %3926, %3919
  %3928 = fsub fast float %3927, %3923
  %3929 = fmul fast float %3918, 0x3FBA6F0D00000000
  %3930 = fmul fast float %3922, 0x3FD0432880000000
  %3931 = fmul fast float %3101, 0xBFEF110800000000
  %3932 = fmul fast float %3931, %3587
  %3933 = fadd fast float %3932, 1.000000e+00
  %3934 = fsub fast float %3933, %3929
  %3935 = fadd fast float %3934, %3930
  %3936 = fdiv fast float %3928, %3935
  %3937 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3938 = fsub fast float %3937, %3101
  %3939 = fmul fast float %3938, %3874
  %3940 = fadd fast float %3939, %3101
  %3941 = fmul fast float %3877, %3693
  %3942 = fmul fast float %3877, %3694
  %3943 = fmul fast float %3877, %3695
  %3944 = fadd fast float %3941, %3097
  %3945 = fadd fast float %3942, %3098
  %3946 = fadd fast float %3943, %3099
  %3947 = fmul fast float %3880, %3716
  %3948 = fadd fast float %3947, %3103
  br label %3971

; <label>:3949                                    ; preds = %3907
  %3950 = icmp eq i32 %3863, 8
  br i1 %3950, label %3951, label %3971

; <label>:3951                                    ; preds = %3949
  %3952 = fmul fast float %3868, %3588
  %3953 = fmul fast float %3868, %3589
  %3954 = fadd fast float %3952, %3089
  %3955 = fadd fast float %3953, %3090
  %3956 = call float @dx.op.binary.f32(i32 36, float %3102, float %3590)  ; FMin(a,b)
  %3957 = fsub fast float %3956, %3102
  %3958 = fmul fast float %3957, %3871
  %3959 = fadd fast float %3958, %3102
  %3960 = fsub fast float %3587, %3101
  %3961 = fmul fast float %3874, %3960
  %3962 = fadd fast float %3961, %3101
  %3963 = fmul fast float %3877, %3693
  %3964 = fmul fast float %3877, %3694
  %3965 = fmul fast float %3877, %3695
  %3966 = fadd fast float %3963, %3097
  %3967 = fadd fast float %3964, %3098
  %3968 = fadd fast float %3965, %3099
  %3969 = fmul fast float %3880, %3716
  %3970 = fadd fast float %3969, %3103
  br label %3971

; <label>:3971                                    ; preds = %3951, %3949, %3909, %3882, %3854, %3286, %3105, %3088
  %3972 = phi float [ %3089, %3854 ], [ %3089, %3286 ], [ %3089, %3088 ], [ %3089, %3105 ], [ %3887, %3882 ], [ %3912, %3909 ], [ %3089, %3949 ], [ %3954, %3951 ]
  %3973 = phi float [ %3090, %3854 ], [ %3090, %3286 ], [ %3090, %3088 ], [ %3090, %3105 ], [ %3888, %3882 ], [ %3913, %3909 ], [ %3090, %3949 ], [ %3955, %3951 ]
  %3974 = phi float [ %3855, %3854 ], [ %3091, %3286 ], [ %3091, %3088 ], [ %3091, %3105 ], [ %3855, %3882 ], [ %3855, %3909 ], [ %3855, %3949 ], [ %3855, %3951 ]
  %3975 = phi float [ %3856, %3854 ], [ %3092, %3286 ], [ %3092, %3088 ], [ %3092, %3105 ], [ %3856, %3882 ], [ %3856, %3909 ], [ %3856, %3949 ], [ %3856, %3951 ]
  %3976 = phi float [ %3857, %3854 ], [ %3093, %3286 ], [ %3093, %3088 ], [ %3093, %3105 ], [ %3857, %3882 ], [ %3857, %3909 ], [ %3857, %3949 ], [ %3857, %3951 ]
  %3977 = phi float [ %3858, %3854 ], [ %3094, %3286 ], [ %3094, %3088 ], [ %3094, %3105 ], [ %3858, %3882 ], [ %3858, %3909 ], [ %3858, %3949 ], [ %3858, %3951 ]
  %3978 = phi float [ %3859, %3854 ], [ %3095, %3286 ], [ %3095, %3088 ], [ %3095, %3105 ], [ %3859, %3882 ], [ %3859, %3909 ], [ %3859, %3949 ], [ %3859, %3951 ]
  %3979 = phi float [ %3860, %3854 ], [ %3096, %3286 ], [ %3096, %3088 ], [ %3096, %3105 ], [ %3860, %3882 ], [ %3860, %3909 ], [ %3860, %3949 ], [ %3860, %3951 ]
  %3980 = phi float [ %3097, %3854 ], [ %3097, %3286 ], [ %3097, %3088 ], [ %3097, %3105 ], [ %3901, %3882 ], [ %3944, %3909 ], [ %3097, %3949 ], [ %3966, %3951 ]
  %3981 = phi float [ %3098, %3854 ], [ %3098, %3286 ], [ %3098, %3088 ], [ %3098, %3105 ], [ %3902, %3882 ], [ %3945, %3909 ], [ %3098, %3949 ], [ %3967, %3951 ]
  %3982 = phi float [ %3099, %3854 ], [ %3099, %3286 ], [ %3099, %3088 ], [ %3099, %3105 ], [ %3903, %3882 ], [ %3946, %3909 ], [ %3099, %3949 ], [ %3968, %3951 ]
  %3983 = phi float [ %3861, %3854 ], [ %3100, %3286 ], [ %3100, %3088 ], [ %3100, %3105 ], [ %3861, %3882 ], [ %3861, %3909 ], [ %3861, %3949 ], [ %3861, %3951 ]
  %3984 = phi float [ %3101, %3854 ], [ %3101, %3286 ], [ %3101, %3088 ], [ %3101, %3105 ], [ %3894, %3882 ], [ %3940, %3909 ], [ %3101, %3949 ], [ %3962, %3951 ]
  %3985 = phi float [ %3102, %3854 ], [ %3102, %3286 ], [ %3102, %3088 ], [ %3102, %3105 ], [ %3891, %3882 ], [ %3917, %3909 ], [ %3102, %3949 ], [ %3959, %3951 ]
  %3986 = phi float [ %3103, %3854 ], [ %3103, %3286 ], [ %3103, %3088 ], [ %3103, %3105 ], [ %3906, %3882 ], [ %3948, %3909 ], [ %3103, %3949 ], [ %3970, %3951 ]
  %3987 = phi float [ %3862, %3854 ], [ %3104, %3286 ], [ %3104, %3088 ], [ %3104, %3105 ], [ %3862, %3882 ], [ %3862, %3909 ], [ %3862, %3949 ], [ %3862, %3951 ]
  %3988 = add i32 %51, 360
  %3989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3988, i32 undef)  ; BufferLoad(srv,index,wot)
  %3990 = extractvalue %dx.types.ResRet.i32 %3989, 0
  %3991 = extractvalue %dx.types.ResRet.i32 %3989, 1
  %3992 = bitcast i32 %3990 to float
  %3993 = bitcast i32 %3991 to float
  %3994 = fcmp fast oge float %3992, 0.000000e+00
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = select i1 %3994, float %3992, float %3996
  %3998 = fadd fast float %3997, %203
  %3999 = fmul fast float %3993, %204
  %4000 = add i32 %51, 456
  %4001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4000, i32 undef)  ; BufferLoad(srv,index,wot)
  %4002 = extractvalue %dx.types.ResRet.i32 %4001, 0
  %4003 = add i32 %4002, 0
  %4004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4004, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = fmul fast float %3999, %4006
  %4008 = fadd fast float %3998, %4007
  %4009 = and i32 %195, 65535
  %4010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4009)  ; LegacyF16ToF32(value)
  %4011 = lshr i32 %195, 16
  %4012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4011)  ; LegacyF16ToF32(value)
  %4013 = and i32 %196, 65535
  %4014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4013)  ; LegacyF16ToF32(value)
  %4015 = fmul fast float %4010, %3974
  %4016 = fmul fast float %4012, %3975
  %4017 = fmul fast float %4014, %3976
  %4018 = shl i32 %197, 4
  %4019 = and i32 %4018, 32752
  %4020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4019)  ; LegacyF16ToF32(value)
  %4021 = lshr i32 %197, 7
  %4022 = and i32 %4021, 32752
  %4023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4022)  ; LegacyF16ToF32(value)
  %4024 = lshr i32 %197, 22
  %4025 = shl nuw nsw i32 %4024, 5
  %4026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4025)  ; LegacyF16ToF32(value)
  %4027 = and i32 %198, 65535
  %4028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4027)  ; LegacyF16ToF32(value)
  %4029 = fmul fast float %4020, %3977
  %4030 = fmul fast float %4029, %4028
  %4031 = fmul fast float %4023, %3978
  %4032 = fmul fast float %4031, %4028
  %4033 = fmul fast float %4026, %3979
  %4034 = fmul fast float %4033, %4028
  %4035 = call float @dx.op.dot2.f32(i32 54, float %3972, float %3973, float %3972, float %3973)  ; Dot2(ax,ay,bx,by)
  %4036 = fmul fast float %4035, 0x3FE3333340000000
  %4037 = fsub fast float 1.000000e+00, %4036
  %4038 = call float @dx.op.dot3.f32(i32 55, float %3972, float %3973, float %4037, float %3972, float %3973, float %4037)  ; Dot3(ax,ay,az,bx,by,bz)
  %4039 = call float @dx.op.unary.f32(i32 25, float %4038)  ; Rsqrt(value)
  %4040 = fmul fast float %4039, %3972
  %4041 = fmul fast float %4039, %3973
  %4042 = fmul fast float %4037, %4039
  %4043 = fmul fast float %4042, %109
  %4044 = fmul fast float %4042, %110
  %4045 = fmul fast float %4042, %111
  %4046 = fmul fast float %4040, %77
  %4047 = fmul fast float %4040, %78
  %4048 = fmul fast float %4040, %79
  %4049 = fadd fast float %4043, %4046
  %4050 = fadd fast float %4044, %4047
  %4051 = fadd fast float %4045, %4048
  %4052 = fmul fast float %121, %4041
  %4053 = fmul fast float %122, %4041
  %4054 = fmul fast float %123, %4041
  %4055 = fadd fast float %4049, %4052
  %4056 = fadd fast float %4050, %4053
  %4057 = fadd fast float %4051, %4054
  %4058 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4056, float %4057, float %4055, float %4056, float %4057)  ; Dot3(ax,ay,az,bx,by,bz)
  %4059 = call float @dx.op.unary.f32(i32 25, float %4058)  ; Rsqrt(value)
  %4060 = fmul fast float %4055, %4059
  %4061 = fmul fast float %4056, %4059
  %4062 = fmul fast float %4057, %4059
  %4063 = fadd fast float %3983, 0xBFB99999A0000000
  %4064 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4065 = fmul fast float %4064, 0x3FF1C71C80000000
  %4066 = call float @dx.op.binary.f32(i32 36, float %3983, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4067 = fsub fast float 1.000000e+00, %4065
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = fmul fast float %4068, %4015
  %4070 = fmul fast float %4068, %4016
  %4071 = fmul fast float %4068, %4017
  %4072 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4073 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4074 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4075 = fmul fast float %4065, %4015
  %4076 = fmul fast float %4065, %4016
  %4077 = fmul fast float %4065, %4017
  %4078 = fadd fast float %4075, %4066
  %4079 = fadd fast float %4076, %4066
  %4080 = fadd fast float %4077, %4066
  %4081 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4083 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4084 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %4085 = call float @dx.op.binary.f32(i32 36, float %3980, float 1.270000e+02)  ; FMin(a,b)
  %4086 = call float @dx.op.binary.f32(i32 36, float %3981, float 1.270000e+02)  ; FMin(a,b)
  %4087 = call float @dx.op.binary.f32(i32 36, float %3982, float 1.270000e+02)  ; FMin(a,b)
  %4088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.i32 %4088, 3
  %4090 = and i32 %4089, 8
  %4091 = icmp ne i32 %4090, 0
  %4092 = call float @dx.op.binary.f32(i32 35, float %4072, float %4015)  ; FMax(a,b)
  %4093 = call float @dx.op.binary.f32(i32 35, float %4073, float %4015)  ; FMax(a,b)
  %4094 = call float @dx.op.binary.f32(i32 35, float %4074, float %4015)  ; FMax(a,b)
  %4095 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = select i1 %261, float %4015, float %4072
  %4097 = select i1 %261, float %4095, float %4073
  %4098 = select i1 %261, float 1.000000e+00, float %4074
  %4099 = select i1 %4091, float %4092, float %4096
  %4100 = select i1 %4091, float %4093, float %4097
  %4101 = select i1 %4091, float %4094, float %4098
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4105 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4106 = fadd fast float %4103, %189
  %4107 = fadd fast float %4104, %190
  %4108 = fadd fast float %4105, %191
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4112 = fsub fast float %4106, %4110
  %4113 = fsub fast float %4107, %4111
  %4114 = fmul fast float %4112, %4112
  %4115 = fmul fast float %4113, %4113
  %4116 = fadd fast float %4114, %4115
  %4117 = call float @dx.op.unary.f32(i32 24, float %4116)  ; Sqrt(value)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4109, 2
  %4119 = fcmp fast olt float %4117, %4118
  br i1 %4119, label %4120, label %4187

; <label>:4120                                    ; preds = %3971
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4128 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4129 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4130 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4131 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4132 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4133 = fadd fast float %4130, %4106
  %4134 = fadd fast float %4131, %4107
  %4135 = fadd fast float %4132, %4108
  %4136 = fmul fast float %4133, %4122
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4124, float %4136)  ; FMad(a,b,c)
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4126, float %4137)  ; FMad(a,b,c)
  %4139 = fmul fast float %4133, %4127
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4128, float %4139)  ; FMad(a,b,c)
  %4141 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4129, float %4140)  ; FMad(a,b,c)
  %4142 = fsub fast float %4138, %4130
  %4143 = fsub fast float %4141, %4131
  %4144 = fsub fast float %4142, %4110
  %4145 = fadd fast float %4144, %4118
  %4146 = fsub fast float %4143, %4111
  %4147 = fadd fast float %4146, %4118
  %4148 = extractvalue %dx.types.CBufRet.f32 %4109, 3
  %4149 = fmul fast float %4145, %4148
  %4150 = fmul fast float %4147, %4148
  %4151 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4152 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4153 = fsub fast float 1.000000e+00, %4151
  %4154 = fsub fast float 1.000000e+00, %4152
  %4155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %4153, float %4154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = fcmp fast ugt float %4156, 0.000000e+00
  br i1 %4157, label %4158, label %4461

; <label>:4158                                    ; preds = %4120
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 2
  %4161 = fmul fast float %4160, %4156
  %4162 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4163 = fadd fast float %4162, %4161
  %4164 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4165 = fadd fast float %4163, %4132
  %4166 = fmul fast float %4138, %4126
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4129, float %4166)  ; FMad(a,b,c)
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4164, float %4167)  ; FMad(a,b,c)
  %4169 = fsub fast float %4168, %4132
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 2
  %4172 = fsub fast float %4169, %4171
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %4153, float %4154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %4153, float %4154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.ResRet.f32 %4177, 1
  %4180 = extractvalue %dx.types.ResRet.f32 %4177, 2
  %4181 = fadd fast float %4178, %4174
  %4182 = fmul fast float %4181, 0x3F847AE140000000
  %4183 = fadd fast float %4179, %4175
  %4184 = fmul fast float %4183, 0x3F847AE140000000
  %4185 = fadd fast float %4180, %4176
  %4186 = fmul fast float %4185, 0x3F847AE140000000
  br label %4461

; <label>:4187                                    ; preds = %3971
  %4188 = and i32 %240, 1
  %4189 = icmp eq i32 %4188, 0
  br i1 %4189, label %4461, label %4190

; <label>:4190                                    ; preds = %4187
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4198 = extractvalue %dx.types.CBufRet.f32 %4193, 1
  %4199 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4200 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4201 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4202 = extractvalue %dx.types.CBufRet.f32 %4195, 3
  %4203 = fadd fast float %4200, %4106
  %4204 = fadd fast float %4201, %4107
  %4205 = fadd fast float %4202, %4108
  %4206 = fmul fast float %4203, %4192
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4204, float %4194, float %4206)  ; FMad(a,b,c)
  %4208 = call float @dx.op.tertiary.f32(i32 46, float %4205, float %4196, float %4207)  ; FMad(a,b,c)
  %4209 = fmul fast float %4203, %4197
  %4210 = call float @dx.op.tertiary.f32(i32 46, float %4204, float %4198, float %4209)  ; FMad(a,b,c)
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4205, float %4199, float %4210)  ; FMad(a,b,c)
  %4212 = fsub fast float %4208, %4200
  %4213 = fsub fast float %4211, %4201
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.CBufRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.CBufRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.CBufRet.f32 %4214, 3
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.i32 %4221, 0
  %4223 = extractvalue %dx.types.CBufRet.i32 %4221, 1
  %4224 = udiv i32 %4223, %4222
  %4225 = fsub fast float %4212, %4215
  %4226 = fsub fast float %4213, %4216
  %4227 = call float @dx.op.binary.f32(i32 35, float %4225, float 0.000000e+00)  ; FMax(a,b)
  %4228 = call float @dx.op.binary.f32(i32 35, float %4226, float 0.000000e+00)  ; FMax(a,b)
  %4229 = call float @dx.op.binary.f32(i32 36, float %4227, float %4217)  ; FMin(a,b)
  %4230 = call float @dx.op.binary.f32(i32 36, float %4228, float %4218)  ; FMin(a,b)
  %4231 = add i32 %4222, -1
  %4232 = add i32 %4224, -1
  %4233 = fmul fast float %4229, %4220
  %4234 = fmul fast float %4230, %4220
  %4235 = fptoui float %4233 to i32
  %4236 = fptoui float %4234 to i32
  %4237 = call i32 @dx.op.binary.i32(i32 40, i32 %4235, i32 %4231)  ; UMin(a,b)
  %4238 = call i32 @dx.op.binary.i32(i32 40, i32 %4236, i32 %4232)  ; UMin(a,b)
  %4239 = mul i32 %4238, %4222
  %4240 = add i32 %4239, %4237
  %4241 = shl i32 %4240, 2
  %4242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.i32 %4242, 0
  %4244 = icmp eq i32 %4243, -1
  br i1 %4244, label %4461, label %4245

; <label>:4245                                    ; preds = %4190
  %4246 = mul i32 %4243, 148
  %4247 = add i32 %4246, 4
  %4248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = add i32 %4246, 8
  %4251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = add i32 %4246, 36
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = add i32 %4246, 60
  %4257 = add i32 %4246, 92
  %4258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4257, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.i32 %4258, 0
  %4260 = add i32 %4246, 116
  %4261 = fsub fast float %4212, %4249
  %4262 = fsub fast float %4213, %4252
  %4263 = fmul fast float %4220, %4261
  %4264 = fmul fast float %4220, %4262
  %4265 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4267 = fsub fast float 1.000000e+00, %4266
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 2
  %4270 = call float @dx.op.unary.f32(i32 83, float %4265)  ; DerivCoarseX(value)
  %4271 = call float @dx.op.unary.f32(i32 83, float %4267)  ; DerivCoarseX(value)
  %4272 = call float @dx.op.unary.f32(i32 84, float %4265)  ; DerivCoarseY(value)
  %4273 = call float @dx.op.unary.f32(i32 84, float %4267)  ; DerivCoarseY(value)
  %4274 = fmul fast float %4270, %4269
  %4275 = fmul fast float %4271, %4269
  %4276 = fmul fast float %4272, %4269
  %4277 = fmul fast float %4273, %4269
  %4278 = call float @dx.op.dot2.f32(i32 54, float %4276, float %4277, float %4276, float %4277)  ; Dot2(ax,ay,bx,by)
  %4279 = call float @dx.op.dot2.f32(i32 54, float %4274, float %4275, float %4274, float %4275)  ; Dot2(ax,ay,bx,by)
  %4280 = call float @dx.op.binary.f32(i32 35, float %4279, float %4278)  ; FMax(a,b)
  %4281 = call float @dx.op.unary.f32(i32 23, float %4280)  ; Log(value)
  %4282 = fmul fast float %4281, 5.000000e-01
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 1
  %4285 = fadd fast float %4284, %4282
  %4286 = call float @dx.op.binary.f32(i32 35, float %4285, float 0.000000e+00)  ; FMax(a,b)
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4289 = fadd fast float %4288, %4286
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 3
  %4292 = fadd fast float %4289, %4291
  %4293 = add i32 %4259, 0
  %4294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4293, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4295 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4294, i32 0)  ; GetDimensions(handle,mipLevel)
  %4296 = extractvalue %dx.types.Dimensions %4295, 0
  %4297 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4296)  ; FirstbitLo(value)
  %4298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.i32 %4298, 1
  %4300 = sub nsw i32 %4299, %4297
  %4301 = sitofp i32 %4300 to float
  %4302 = fsub fast float %4292, %4301
  %4303 = call float @dx.op.binary.f32(i32 35, float %4302, float 0.000000e+00)  ; FMax(a,b)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4294, %dx.types.Handle %43, float %4265, float %4267, float %4255, float undef, i32 0, i32 0, i32 undef, float %4303)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = fcmp ule float %4305, 0x3FE0101020000000
  %4307 = extractvalue %dx.types.CBufRet.i32 %4298, 0
  %4308 = and i32 %4307, 128
  %4309 = icmp ne i32 %4308, 0
  %4310 = and i1 %4306, %4309
  br i1 %4310, label %4461, label %4311

; <label>:4311                                    ; preds = %4245
  %4312 = add i32 %4246, 20
  %4313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4312, i32 undef)  ; BufferLoad(srv,index,wot)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = add i32 %4246, 24
  %4316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4315, i32 undef)  ; BufferLoad(srv,index,wot)
  %4317 = extractvalue %dx.types.ResRet.f32 %4316, 0
  %4318 = add i32 %4246, 40
  %4319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.f32 %4319, 0
  %4321 = add i32 %4246, 96
  %4322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4321, i32 undef)  ; BufferLoad(srv,index,wot)
  %4323 = extractvalue %dx.types.ResRet.i32 %4322, 0
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4326 = fmul fast float %4325, %4265
  %4327 = fmul fast float %4325, %4267
  %4328 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4329 = fadd fast float %4326, %4328
  %4330 = fadd fast float %4327, %4328
  %4331 = add i32 %4323, 0
  %4332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4333 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4332, i32 0)  ; GetDimensions(handle,mipLevel)
  %4334 = extractvalue %dx.types.Dimensions %4333, 0
  %4335 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4334)  ; FirstbitLo(value)
  %4336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.i32 %4336, 1
  %4338 = sub nsw i32 %4337, %4335
  %4339 = sitofp i32 %4338 to float
  %4340 = fsub fast float %4289, %4339
  %4341 = call float @dx.op.binary.f32(i32 35, float %4340, float 0.000000e+00)  ; FMax(a,b)
  %4342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4332, %dx.types.Handle %43, float %4329, float %4330, float %4320, float undef, i32 0, i32 0, i32 undef, float %4341)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = fmul fast float %4343, %4314
  %4345 = fadd fast float %4344, %4317
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.CBufRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.CBufRet.f32 %4346, 2
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 3
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4354 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4355 = fadd fast float %4351, %4212
  %4356 = fadd fast float %4353, %4213
  %4357 = fadd fast float %4345, %4354
  %4358 = fmul fast float %4355, %4347
  %4359 = call float @dx.op.tertiary.f32(i32 46, float %4356, float %4348, float %4358)  ; FMad(a,b,c)
  %4360 = call float @dx.op.tertiary.f32(i32 46, float %4357, float %4349, float %4359)  ; FMad(a,b,c)
  %4361 = fsub fast float %4360, %4354
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 2
  %4364 = fsub fast float %4361, %4363
  %4365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.i32 %4365, 0
  %4367 = call i32 @dx.op.binary.i32(i32 40, i32 %4243, i32 %4366)  ; UMin(a,b)
  %4368 = mul i32 %4367, 36
  %4369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.i32 %4369, 0
  %4371 = add i32 %4368, 4
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = fmul fast float %4373, %4265
  %4375 = fmul fast float %4373, %4267
  %4376 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4377 = fadd fast float %4374, %4376
  %4378 = fadd fast float %4375, %4376
  %4379 = icmp eq i32 %4370, 0
  br i1 %4379, label %4448, label %4380

; <label>:4380                                    ; preds = %4311
  br label %4381

; <label>:4381                                    ; preds = %4438, %4380
  %4382 = phi float [ %4439, %4438 ], [ 0.000000e+00, %4380 ]
  %4383 = phi float [ %4440, %4438 ], [ 0.000000e+00, %4380 ]
  %4384 = phi float [ %4441, %4438 ], [ 0.000000e+00, %4380 ]
  %4385 = phi float [ %4442, %4438 ], [ 0.000000e+00, %4380 ]
  %4386 = phi float [ %4443, %4438 ], [ 0.000000e+00, %4380 ]
  %4387 = phi float [ %4444, %4438 ], [ 0.000000e+00, %4380 ]
  %4388 = phi i32 [ %4445, %4438 ], [ 0, %4380 ]
  %4389 = shl i32 %4388, 2
  %4390 = add i32 %4256, %4389
  %4391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4390, i32 undef)  ; BufferLoad(srv,index,wot)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = add i32 %4260, %4389
  %4394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4395 = extractvalue %dx.types.ResRet.i32 %4394, 0
  %4396 = add i32 %4395, 0
  %4397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4396, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4398 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4397, i32 0)  ; GetDimensions(handle,mipLevel)
  %4399 = extractvalue %dx.types.Dimensions %4398, 0
  %4400 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4399)  ; FirstbitLo(value)
  %4401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.i32 %4401, 1
  %4403 = sub nsw i32 %4402, %4400
  %4404 = sitofp i32 %4403 to float
  %4405 = fsub fast float %4289, %4404
  %4406 = call float @dx.op.binary.f32(i32 35, float %4405, float 0.000000e+00)  ; FMax(a,b)
  %4407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4397, %dx.types.Handle %43, float %4377, float %4378, float %4392, float undef, i32 0, i32 0, i32 undef, float %4406)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = fcmp fast ogt float %4408, 0.000000e+00
  br i1 %4409, label %4410, label %4438

; <label>:4410                                    ; preds = %4381
  %4411 = add i32 %4371, %4389
  %4412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4413 = extractvalue %dx.types.ResRet.i32 %4412, 0
  %4414 = and i32 %4413, 32767
  %4415 = mul nuw nsw i32 %4414, 928
  %4416 = add nuw nsw i32 %4415, 48
  %4417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.ResRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.ResRet.f32 %4417, 2
  %4421 = add nuw nsw i32 %4415, 60
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = fmul fast float %4418, %4408
  %4427 = fmul fast float %4419, %4408
  %4428 = fmul fast float %4420, %4408
  %4429 = fadd fast float %4426, %4382
  %4430 = fadd fast float %4427, %4383
  %4431 = fadd fast float %4428, %4384
  %4432 = fmul fast float %4423, %4408
  %4433 = fmul fast float %4424, %4408
  %4434 = fmul fast float %4425, %4408
  %4435 = fadd fast float %4432, %4385
  %4436 = fadd fast float %4433, %4386
  %4437 = fadd fast float %4434, %4387
  br label %4438

; <label>:4438                                    ; preds = %4410, %4381
  %4439 = phi float [ %4429, %4410 ], [ %4382, %4381 ]
  %4440 = phi float [ %4430, %4410 ], [ %4383, %4381 ]
  %4441 = phi float [ %4431, %4410 ], [ %4384, %4381 ]
  %4442 = phi float [ %4435, %4410 ], [ %4385, %4381 ]
  %4443 = phi float [ %4436, %4410 ], [ %4386, %4381 ]
  %4444 = phi float [ %4437, %4410 ], [ %4387, %4381 ]
  %4445 = add nuw i32 %4388, 1
  %4446 = icmp eq i32 %4445, %4370
  br i1 %4446, label %4447, label %4381

; <label>:4447                                    ; preds = %4438
  br label %4448

; <label>:4448                                    ; preds = %4447, %4311
  %4449 = phi float [ 0.000000e+00, %4311 ], [ %4439, %4447 ]
  %4450 = phi float [ 0.000000e+00, %4311 ], [ %4440, %4447 ]
  %4451 = phi float [ 0.000000e+00, %4311 ], [ %4441, %4447 ]
  %4452 = phi float [ 0.000000e+00, %4311 ], [ %4442, %4447 ]
  %4453 = phi float [ 0.000000e+00, %4311 ], [ %4443, %4447 ]
  %4454 = phi float [ 0.000000e+00, %4311 ], [ %4444, %4447 ]
  %4455 = fadd fast float %4452, %4449
  %4456 = fmul fast float %4455, 0x3F847AE140000000
  %4457 = fadd fast float %4453, %4450
  %4458 = fmul fast float %4457, 0x3F847AE140000000
  %4459 = fadd fast float %4454, %4451
  %4460 = fmul fast float %4459, 0x3F847AE140000000
  br label %4461

; <label>:4461                                    ; preds = %4448, %4245, %4190, %4187, %4158, %4120
  %4462 = phi float [ %4172, %4158 ], [ -1.310720e+05, %4120 ], [ %4364, %4448 ], [ -1.310720e+05, %4190 ], [ -1.310720e+05, %4245 ], [ -1.310720e+05, %4187 ]
  %4463 = phi float [ %4182, %4158 ], [ 0.000000e+00, %4120 ], [ %4456, %4448 ], [ 0.000000e+00, %4190 ], [ 0.000000e+00, %4245 ], [ 0.000000e+00, %4187 ]
  %4464 = phi float [ %4184, %4158 ], [ 0.000000e+00, %4120 ], [ %4458, %4448 ], [ 0.000000e+00, %4190 ], [ 0.000000e+00, %4245 ], [ 0.000000e+00, %4187 ]
  %4465 = phi float [ %4186, %4158 ], [ 0.000000e+00, %4120 ], [ %4460, %4448 ], [ 0.000000e+00, %4190 ], [ 0.000000e+00, %4245 ], [ 0.000000e+00, %4187 ]
  %4466 = phi i1 [ true, %4158 ], [ false, %4120 ], [ true, %4448 ], [ false, %4190 ], [ false, %4245 ], [ false, %4187 ]
  %4467 = and i32 %240, 3
  %4468 = icmp eq i32 %4467, 1
  %4469 = select i1 %4468, float 1.000000e+00, float 0.000000e+00
  %4470 = fsub fast float %4462, %191
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = select i1 %4466, float %4471, float 1.000000e+00
  %4473 = fmul fast float %4472, %4469
  %4474 = icmp eq i32 %4467, 3
  %4475 = select i1 %4474, float 1.000000e+00, float %4473
  %4476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4475)  ; FMax(a,b)
  %4477 = fcmp fast olt float %4475, 1.000000e+00
  %4478 = fcmp uge float %67, 0.000000e+00
  %4479 = and i1 %4478, %4477
  br i1 %4479, label %4480, label %4490

; <label>:4480                                    ; preds = %4461
  %4481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.ResRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.ResRet.f32 %4481, 2
  %4485 = fadd fast float %4482, %4476
  %4486 = fcmp ule float %66, 0.000000e+00
  %4487 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4488 = select i1 %4486, float %4487, float 1.000000e+00
  %4489 = fmul fast float %4488, %4484
  br label %4490

; <label>:4490                                    ; preds = %4480, %4461
  %4491 = phi float [ %4485, %4480 ], [ %4476, %4461 ]
  %4492 = phi float [ %4483, %4480 ], [ 0.000000e+00, %4461 ]
  %4493 = phi float [ %4489, %4480 ], [ 0.000000e+00, %4461 ]
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = fcmp fast une float %4495, 0.000000e+00
  %4498 = fcmp fast une float %4496, 0.000000e+00
  %4499 = or i1 %4497, %4498
  br i1 %4499, label %4500, label %5059

; <label>:4500                                    ; preds = %4490
  br i1 %4497, label %4501, label %4774

; <label>:4501                                    ; preds = %4500
  %4502 = call float @dx.op.unary.f32(i32 23, float %3985)  ; Log(value)
  %4503 = fmul fast float %4502, 4.000000e+00
  %4504 = call float @dx.op.unary.f32(i32 21, float %4503)  ; Exp(value)
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 0
  %4507 = fmul fast float %4506, %54
  %4508 = fmul fast float %4506, %55
  %4509 = fmul fast float %4506, %56
  %4510 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4511 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4512 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4513 = call float @dx.op.unary.f32(i32 23, float %4510)  ; Log(value)
  %4514 = call float @dx.op.unary.f32(i32 23, float %4511)  ; Log(value)
  %4515 = call float @dx.op.unary.f32(i32 23, float %4512)  ; Log(value)
  %4516 = fmul fast float %4513, 4.000000e+00
  %4517 = fmul fast float %4514, 4.000000e+00
  %4518 = fmul fast float %4515, 4.000000e+00
  %4519 = call float @dx.op.unary.f32(i32 21, float %4516)  ; Exp(value)
  %4520 = call float @dx.op.unary.f32(i32 21, float %4517)  ; Exp(value)
  %4521 = call float @dx.op.unary.f32(i32 21, float %4518)  ; Exp(value)
  %4522 = fadd fast float %4520, %4519
  %4523 = fadd fast float %4522, %4521
  %4524 = fdiv fast float 1.000000e+00, %4523
  %4525 = fmul fast float %4524, %4519
  %4526 = fcmp fast ogt float %63, 0.000000e+00
  %4527 = fcmp fast ogt float %64, 0.000000e+00
  %4528 = fcmp fast ogt float %65, 0.000000e+00
  %4529 = fcmp fast olt float %63, 0.000000e+00
  %4530 = fcmp fast olt float %64, 0.000000e+00
  %4531 = fcmp fast olt float %65, 0.000000e+00
  %4532 = zext i1 %4526 to i32
  %4533 = zext i1 %4527 to i32
  %4534 = zext i1 %4528 to i32
  %4535 = zext i1 %4529 to i32
  %4536 = zext i1 %4530 to i32
  %4537 = zext i1 %4531 to i32
  %4538 = sub nsw i32 %4532, %4535
  %4539 = sub nsw i32 %4533, %4536
  %4540 = sub nsw i32 %4534, %4537
  %4541 = call float @dx.op.unary.f32(i32 83, float %4507)  ; DerivCoarseX(value)
  %4542 = call float @dx.op.unary.f32(i32 83, float %4508)  ; DerivCoarseX(value)
  %4543 = call float @dx.op.unary.f32(i32 83, float %4509)  ; DerivCoarseX(value)
  %4544 = call float @dx.op.unary.f32(i32 84, float %4507)  ; DerivCoarseY(value)
  %4545 = call float @dx.op.unary.f32(i32 84, float %4508)  ; DerivCoarseY(value)
  %4546 = call float @dx.op.unary.f32(i32 84, float %4509)  ; DerivCoarseY(value)
  %4547 = fcmp fast ole float %272, %4525
  %4548 = fmul fast float %4524, %4522
  %4549 = fcmp fast ole float %272, %4548
  %4550 = select i1 %4549, float %4509, float %4507
  %4551 = select i1 %4549, float %4507, float %4508
  %4552 = select i1 %4547, float %4508, float %4550
  %4553 = select i1 %4547, float %4509, float %4551
  %4554 = select i1 %4549, float %4543, float %4541
  %4555 = select i1 %4549, float %4541, float %4542
  %4556 = select i1 %4547, float %4542, float %4554
  %4557 = select i1 %4547, float %4543, float %4555
  %4558 = select i1 %4549, float %4546, float %4544
  %4559 = select i1 %4549, float %4544, float %4545
  %4560 = select i1 %4547, float %4545, float %4558
  %4561 = select i1 %4547, float %4546, float %4559
  %4562 = call float @dx.op.unary.f32(i32 27, float %4552)  ; Round_ni(value)
  %4563 = call float @dx.op.unary.f32(i32 27, float %4553)  ; Round_ni(value)
  %4564 = fptosi float %4562 to i32
  %4565 = fptosi float %4563 to i32
  %4566 = xor i32 %4565, %4564
  %4567 = sitofp i32 %4566 to float
  %4568 = fptosi float %4567 to i32
  %4569 = sitofp i32 %4568 to float
  %4570 = fmul fast float %4569, 0x3FE3C6EF40000000
  %4571 = frem fast float %4562, 2.560000e+02
  %4572 = frem fast float %4563, 2.560000e+02
  %4573 = fptoui float %4571 to i32
  %4574 = fptoui float %4572 to i32
  %4575 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4573, i32 %4574, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4576 = extractvalue %dx.types.ResRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.ResRet.f32 %4575, 1
  %4578 = extractvalue %dx.types.ResRet.f32 %4575, 2
  %4579 = fadd fast float %4576, %4570
  %4580 = fadd fast float %4577, %4570
  %4581 = fadd fast float %4578, %4570
  %4582 = call float @dx.op.unary.f32(i32 22, float %4579)  ; Frc(value)
  %4583 = call float @dx.op.unary.f32(i32 22, float %4580)  ; Frc(value)
  %4584 = call float @dx.op.unary.f32(i32 22, float %4581)  ; Frc(value)
  %4585 = fmul fast float %4584, 0x401921FB60000000
  %4586 = call float @dx.op.unary.f32(i32 13, float %4585)  ; Sin(value)
  %4587 = call float @dx.op.unary.f32(i32 12, float %4585)  ; Cos(value)
  %4588 = fsub fast float -0.000000e+00, %4587
  %4589 = fmul fast float %4587, %4552
  %4590 = call float @dx.op.tertiary.f32(i32 46, float %4586, float %4553, float %4589)  ; FMad(a,b,c)
  %4591 = fmul fast float %4586, %4552
  %4592 = call float @dx.op.tertiary.f32(i32 46, float %4588, float %4553, float %4591)  ; FMad(a,b,c)
  %4593 = fadd fast float %4590, %4582
  %4594 = fadd fast float %4592, %4583
  %4595 = extractvalue %dx.types.CBufRet.f32 %4505, 3
  %4596 = bitcast float %4595 to i32
  %4597 = icmp eq i32 %4596, 0
  br i1 %4597, label %4636, label %4598

; <label>:4598                                    ; preds = %4501
  %4599 = add i32 %4596, 0
  %4600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4601 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4600, %dx.types.Handle %99, float %4593, float %4594, float undef, float undef, i32 0, i32 0, i32 undef, float %4556, float %4557, float undef, float %4560, float %4561, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 1
  %4605 = extractvalue %dx.types.CBufRet.f32 %4603, 2
  %4606 = fsub fast float 1.000000e+00, %4495
  %4607 = call float @dx.op.binary.f32(i32 35, float %4606, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4608 = bitcast float %4495 to i32
  %4609 = sitofp i32 %4608 to float
  %4610 = fadd fast float %4609, 0xC1CFBF8940000000
  %4611 = fmul fast float %4605, %4610
  %4612 = fadd fast float %4611, 0x41CFBF8940000000
  %4613 = fptosi float %4612 to i32
  %4614 = bitcast i32 %4613 to float
  %4615 = bitcast float %4607 to i32
  %4616 = sitofp i32 %4615 to float
  %4617 = fadd fast float %4616, 0xC1CFBF8940000000
  %4618 = fmul fast float %4617, %4605
  %4619 = fadd fast float %4618, 0x41CFBF8940000000
  %4620 = fptosi float %4619 to i32
  %4621 = bitcast i32 %4620 to float
  %4622 = fmul fast float %4614, %4604
  %4623 = fmul fast float %4621, %4604
  %4624 = fsub fast float %4607, %4622
  %4625 = fadd fast float %4623, %4607
  %4626 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4627 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4628 = fsub fast float %4602, %4626
  %4629 = fsub fast float %4627, %4626
  %4630 = bitcast float %4629 to i32
  %4631 = sub nsw i32 2129859010, %4630
  %4632 = bitcast i32 %4631 to float
  %4633 = fmul fast float %4632, %4628
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = fcmp fast olt float %4634, 0x3F70101020000000
  br i1 %4635, label %4774, label %4636

; <label>:4636                                    ; preds = %4598, %4501
  %4637 = phi float [ %4634, %4598 ], [ %4495, %4501 ]
  %4638 = fmul fast float %4637, %4504
  %4639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.i32 %4639, 1
  %4641 = extractvalue %dx.types.CBufRet.i32 %4639, 0
  %4642 = add i32 %4641, 0
  %4643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4644 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4643, %dx.types.Handle %98, float %4593, float %4594, float undef, float undef, i32 0, i32 0, i32 undef, float %4556, float %4557, float undef, float %4560, float %4561, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4648 = extractvalue %dx.types.ResRet.f32 %4644, 3
  %4649 = and i32 %4640, 255
  %4650 = uitofp i32 %4649 to float
  %4651 = lshr i32 %4640, 8
  %4652 = and i32 %4651, 255
  %4653 = uitofp i32 %4652 to float
  %4654 = fmul fast float %4648, %4650
  %4655 = fadd fast float %4654, %4653
  %4656 = fmul fast float %4655, 0x3F70101000000000
  %4657 = fadd fast float %4656, 0xBFB99999A0000000
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fmul fast float %4658, 0x3FF1C71C80000000
  %4660 = call float @dx.op.binary.f32(i32 36, float %4656, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4661 = fsub fast float 1.000000e+00, %4659
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fmul fast float %4662, %4645
  %4664 = fmul fast float %4662, %4646
  %4665 = fmul fast float %4662, %4647
  %4666 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4668 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4669 = fmul fast float %4659, %4645
  %4670 = fmul fast float %4659, %4646
  %4671 = fmul fast float %4659, %4647
  %4672 = fadd fast float %4669, %4660
  %4673 = fadd fast float %4670, %4660
  %4674 = fadd fast float %4671, %4660
  %4675 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4676 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.i32 %4678, 3
  %4680 = extractvalue %dx.types.CBufRet.i32 %4678, 2
  %4681 = add i32 %4680, 0
  %4682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4683 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4682, %dx.types.Handle %98, float %4593, float %4594, float undef, float undef, i32 0, i32 0, i32 undef, float %4556, float %4557, float undef, float %4560, float %4561, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4684 = extractvalue %dx.types.ResRet.f32 %4683, 0
  %4685 = extractvalue %dx.types.ResRet.f32 %4683, 1
  %4686 = extractvalue %dx.types.ResRet.f32 %4683, 2
  %4687 = extractvalue %dx.types.ResRet.f32 %4683, 3
  %4688 = and i32 %4679, 255
  %4689 = uitofp i32 %4688 to float
  %4690 = lshr i32 %4679, 8
  %4691 = and i32 %4690, 255
  %4692 = uitofp i32 %4691 to float
  %4693 = lshr i32 %4679, 16
  %4694 = and i32 %4693, 255
  %4695 = uitofp i32 %4694 to float
  %4696 = fmul fast float %4695, 0x3F70101000000000
  %4697 = fmul fast float %4684, %4689
  %4698 = fadd fast float %4697, %4692
  %4699 = fmul fast float %4698, 0x3F70101000000000
  %4700 = fadd fast float %4685, -5.000000e-01
  %4701 = fadd fast float %4687, -5.000000e-01
  %4702 = fmul fast float %4700, %4696
  %4703 = fmul fast float %4701, %4696
  %4704 = fadd fast float %4702, 5.000000e-01
  %4705 = fadd fast float %4703, 5.000000e-01
  %4706 = fmul fast float %4704, 2.000000e+00
  %4707 = fadd fast float %4706, -1.000000e+00
  %4708 = fmul fast float %4705, 2.000000e+00
  %4709 = fadd fast float %4708, -1.000000e+00
  %4710 = fadd fast float %4707, %4709
  %4711 = fmul fast float %4710, 5.000000e-01
  %4712 = fsub fast float %4707, %4709
  %4713 = fmul fast float %4712, 5.000000e-01
  %4714 = call float @dx.op.unary.f32(i32 6, float %4711)  ; FAbs(value)
  %4715 = fsub fast float 1.000000e+00, %4714
  %4716 = call float @dx.op.unary.f32(i32 6, float %4713)  ; FAbs(value)
  %4717 = fsub fast float %4715, %4716
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4711, float %4713, float %4717, float %4711, float %4713, float %4717)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call float @dx.op.unary.f32(i32 25, float %4718)  ; Rsqrt(value)
  %4720 = fmul fast float %4711, %4719
  %4721 = fmul fast float %4713, %4719
  %4722 = select i1 %4549, i32 %4539, i32 %4540
  %4723 = select i1 %4547, i32 %4538, i32 %4722
  %4724 = sitofp i32 %4723 to float
  %4725 = fmul fast float %4717, %4724
  %4726 = fmul fast float %4725, %4719
  %4727 = select i1 %4549, float %4726, float %4721
  %4728 = select i1 %4549, float %4721, float %4726
  %4729 = select i1 %4547, float %4726, float %4720
  %4730 = select i1 %4547, float %4721, float %4727
  %4731 = select i1 %4547, float %4720, float %4728
  %4732 = fsub fast float %4666, %4099
  %4733 = fsub fast float %4667, %4100
  %4734 = fsub fast float %4668, %4101
  %4735 = fmul fast float %4732, %4638
  %4736 = fmul fast float %4733, %4638
  %4737 = fmul fast float %4734, %4638
  %4738 = fadd fast float %4735, %4099
  %4739 = fadd fast float %4736, %4100
  %4740 = fadd fast float %4737, %4101
  %4741 = fsub fast float %4675, %4081
  %4742 = fsub fast float %4676, %4082
  %4743 = fsub fast float %4677, %4083
  %4744 = fmul fast float %4741, %4638
  %4745 = fmul fast float %4742, %4638
  %4746 = fmul fast float %4743, %4638
  %4747 = fadd fast float %4744, %4081
  %4748 = fadd fast float %4745, %4082
  %4749 = fadd fast float %4746, %4083
  %4750 = fadd fast float %4729, %4060
  %4751 = fadd fast float %4730, %4061
  %4752 = fadd fast float %4731, %4062
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4751, float %4752, float %4750, float %4751, float %4752)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = call float @dx.op.unary.f32(i32 25, float %4753)  ; Rsqrt(value)
  %4755 = fmul fast float %4750, %4754
  %4756 = fmul fast float %4751, %4754
  %4757 = fmul fast float %4752, %4754
  %4758 = fsub fast float %4755, %4060
  %4759 = fsub fast float %4756, %4061
  %4760 = fsub fast float %4757, %4062
  %4761 = fmul fast float %4758, %4638
  %4762 = fmul fast float %4759, %4638
  %4763 = fmul fast float %4760, %4638
  %4764 = fadd fast float %4761, %4060
  %4765 = fadd fast float %4762, %4061
  %4766 = fadd fast float %4763, %4062
  %4767 = call float @dx.op.binary.f32(i32 36, float %3985, float %4686)  ; FMin(a,b)
  %4768 = fsub fast float %4767, %3985
  %4769 = fmul fast float %4768, %4638
  %4770 = fadd fast float %4769, %3985
  %4771 = fsub fast float %4699, %4084
  %4772 = fmul fast float %4771, %4638
  %4773 = fadd fast float %4772, %4084
  br label %4774

; <label>:4774                                    ; preds = %4636, %4598, %4500
  %4775 = phi float [ %4747, %4636 ], [ %4081, %4598 ], [ %4081, %4500 ]
  %4776 = phi float [ %4748, %4636 ], [ %4082, %4598 ], [ %4082, %4500 ]
  %4777 = phi float [ %4749, %4636 ], [ %4083, %4598 ], [ %4083, %4500 ]
  %4778 = phi float [ %4764, %4636 ], [ %4060, %4598 ], [ %4060, %4500 ]
  %4779 = phi float [ %4765, %4636 ], [ %4061, %4598 ], [ %4061, %4500 ]
  %4780 = phi float [ %4766, %4636 ], [ %4062, %4598 ], [ %4062, %4500 ]
  %4781 = phi float [ %4738, %4636 ], [ %4099, %4598 ], [ %4099, %4500 ]
  %4782 = phi float [ %4739, %4636 ], [ %4100, %4598 ], [ %4100, %4500 ]
  %4783 = phi float [ %4740, %4636 ], [ %4101, %4598 ], [ %4101, %4500 ]
  %4784 = phi float [ %4773, %4636 ], [ %4084, %4598 ], [ %4084, %4500 ]
  %4785 = phi float [ %4770, %4636 ], [ %3985, %4598 ], [ %3985, %4500 ]
  br i1 %4498, label %4786, label %5059

; <label>:4786                                    ; preds = %4774
  %4787 = call float @dx.op.unary.f32(i32 23, float %4785)  ; Log(value)
  %4788 = fmul fast float %4787, 4.000000e+00
  %4789 = call float @dx.op.unary.f32(i32 21, float %4788)  ; Exp(value)
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 0
  %4792 = fmul fast float %4791, %54
  %4793 = fmul fast float %4791, %55
  %4794 = fmul fast float %4791, %56
  %4795 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4796 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4797 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4798 = call float @dx.op.unary.f32(i32 23, float %4795)  ; Log(value)
  %4799 = call float @dx.op.unary.f32(i32 23, float %4796)  ; Log(value)
  %4800 = call float @dx.op.unary.f32(i32 23, float %4797)  ; Log(value)
  %4801 = fmul fast float %4798, 4.000000e+00
  %4802 = fmul fast float %4799, 4.000000e+00
  %4803 = fmul fast float %4800, 4.000000e+00
  %4804 = call float @dx.op.unary.f32(i32 21, float %4801)  ; Exp(value)
  %4805 = call float @dx.op.unary.f32(i32 21, float %4802)  ; Exp(value)
  %4806 = call float @dx.op.unary.f32(i32 21, float %4803)  ; Exp(value)
  %4807 = fadd fast float %4805, %4804
  %4808 = fadd fast float %4807, %4806
  %4809 = fdiv fast float 1.000000e+00, %4808
  %4810 = fmul fast float %4809, %4804
  %4811 = fcmp fast ogt float %63, 0.000000e+00
  %4812 = fcmp fast ogt float %64, 0.000000e+00
  %4813 = fcmp fast ogt float %65, 0.000000e+00
  %4814 = fcmp fast olt float %63, 0.000000e+00
  %4815 = fcmp fast olt float %64, 0.000000e+00
  %4816 = fcmp fast olt float %65, 0.000000e+00
  %4817 = zext i1 %4811 to i32
  %4818 = zext i1 %4812 to i32
  %4819 = zext i1 %4813 to i32
  %4820 = zext i1 %4814 to i32
  %4821 = zext i1 %4815 to i32
  %4822 = zext i1 %4816 to i32
  %4823 = sub nsw i32 %4817, %4820
  %4824 = sub nsw i32 %4818, %4821
  %4825 = sub nsw i32 %4819, %4822
  %4826 = call float @dx.op.unary.f32(i32 83, float %4792)  ; DerivCoarseX(value)
  %4827 = call float @dx.op.unary.f32(i32 83, float %4793)  ; DerivCoarseX(value)
  %4828 = call float @dx.op.unary.f32(i32 83, float %4794)  ; DerivCoarseX(value)
  %4829 = call float @dx.op.unary.f32(i32 84, float %4792)  ; DerivCoarseY(value)
  %4830 = call float @dx.op.unary.f32(i32 84, float %4793)  ; DerivCoarseY(value)
  %4831 = call float @dx.op.unary.f32(i32 84, float %4794)  ; DerivCoarseY(value)
  %4832 = fcmp fast ole float %272, %4810
  %4833 = fmul fast float %4809, %4807
  %4834 = fcmp fast ole float %272, %4833
  %4835 = select i1 %4834, float %4794, float %4792
  %4836 = select i1 %4834, float %4792, float %4793
  %4837 = select i1 %4832, float %4793, float %4835
  %4838 = select i1 %4832, float %4794, float %4836
  %4839 = select i1 %4834, float %4828, float %4826
  %4840 = select i1 %4834, float %4826, float %4827
  %4841 = select i1 %4832, float %4827, float %4839
  %4842 = select i1 %4832, float %4828, float %4840
  %4843 = select i1 %4834, float %4831, float %4829
  %4844 = select i1 %4834, float %4829, float %4830
  %4845 = select i1 %4832, float %4830, float %4843
  %4846 = select i1 %4832, float %4831, float %4844
  %4847 = call float @dx.op.unary.f32(i32 27, float %4837)  ; Round_ni(value)
  %4848 = call float @dx.op.unary.f32(i32 27, float %4838)  ; Round_ni(value)
  %4849 = fptosi float %4847 to i32
  %4850 = fptosi float %4848 to i32
  %4851 = xor i32 %4850, %4849
  %4852 = sitofp i32 %4851 to float
  %4853 = fptosi float %4852 to i32
  %4854 = sitofp i32 %4853 to float
  %4855 = fmul fast float %4854, 0x3FE3C6EF40000000
  %4856 = frem fast float %4847, 2.560000e+02
  %4857 = frem fast float %4848, 2.560000e+02
  %4858 = fptoui float %4856 to i32
  %4859 = fptoui float %4857 to i32
  %4860 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4858, i32 %4859, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4861 = extractvalue %dx.types.ResRet.f32 %4860, 0
  %4862 = extractvalue %dx.types.ResRet.f32 %4860, 1
  %4863 = extractvalue %dx.types.ResRet.f32 %4860, 2
  %4864 = fadd fast float %4861, %4855
  %4865 = fadd fast float %4862, %4855
  %4866 = fadd fast float %4863, %4855
  %4867 = call float @dx.op.unary.f32(i32 22, float %4864)  ; Frc(value)
  %4868 = call float @dx.op.unary.f32(i32 22, float %4865)  ; Frc(value)
  %4869 = call float @dx.op.unary.f32(i32 22, float %4866)  ; Frc(value)
  %4870 = fmul fast float %4869, 0x401921FB60000000
  %4871 = call float @dx.op.unary.f32(i32 13, float %4870)  ; Sin(value)
  %4872 = call float @dx.op.unary.f32(i32 12, float %4870)  ; Cos(value)
  %4873 = fsub fast float -0.000000e+00, %4872
  %4874 = fmul fast float %4872, %4837
  %4875 = call float @dx.op.tertiary.f32(i32 46, float %4871, float %4838, float %4874)  ; FMad(a,b,c)
  %4876 = fmul fast float %4871, %4837
  %4877 = call float @dx.op.tertiary.f32(i32 46, float %4873, float %4838, float %4876)  ; FMad(a,b,c)
  %4878 = fadd fast float %4875, %4867
  %4879 = fadd fast float %4877, %4868
  %4880 = extractvalue %dx.types.CBufRet.f32 %4790, 3
  %4881 = bitcast float %4880 to i32
  %4882 = icmp eq i32 %4881, 0
  br i1 %4882, label %4921, label %4883

; <label>:4883                                    ; preds = %4786
  %4884 = add i32 %4881, 0
  %4885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4884, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4886 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4885, %dx.types.Handle %99, float %4878, float %4879, float undef, float undef, i32 0, i32 0, i32 undef, float %4841, float %4842, float undef, float %4845, float %4846, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4887 = extractvalue %dx.types.ResRet.f32 %4886, 0
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4891 = fsub fast float 1.000000e+00, %4496
  %4892 = call float @dx.op.binary.f32(i32 35, float %4891, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4893 = bitcast float %4496 to i32
  %4894 = sitofp i32 %4893 to float
  %4895 = fadd fast float %4894, 0xC1CFBF8940000000
  %4896 = fmul fast float %4890, %4895
  %4897 = fadd fast float %4896, 0x41CFBF8940000000
  %4898 = fptosi float %4897 to i32
  %4899 = bitcast i32 %4898 to float
  %4900 = bitcast float %4892 to i32
  %4901 = sitofp i32 %4900 to float
  %4902 = fadd fast float %4901, 0xC1CFBF8940000000
  %4903 = fmul fast float %4902, %4890
  %4904 = fadd fast float %4903, 0x41CFBF8940000000
  %4905 = fptosi float %4904 to i32
  %4906 = bitcast i32 %4905 to float
  %4907 = fmul fast float %4899, %4889
  %4908 = fmul fast float %4906, %4889
  %4909 = fsub fast float %4892, %4907
  %4910 = fadd fast float %4908, %4892
  %4911 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4913 = fsub fast float %4887, %4911
  %4914 = fsub fast float %4912, %4911
  %4915 = bitcast float %4914 to i32
  %4916 = sub nsw i32 2129859010, %4915
  %4917 = bitcast i32 %4916 to float
  %4918 = fmul fast float %4917, %4913
  %4919 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4920 = fcmp fast olt float %4919, 0x3F70101020000000
  br i1 %4920, label %5059, label %4921

; <label>:4921                                    ; preds = %4883, %4786
  %4922 = phi float [ %4919, %4883 ], [ %4496, %4786 ]
  %4923 = fmul fast float %4922, %4789
  %4924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.i32 %4924, 1
  %4926 = extractvalue %dx.types.CBufRet.i32 %4924, 0
  %4927 = add i32 %4926, 0
  %4928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4928, %dx.types.Handle %98, float %4878, float %4879, float undef, float undef, i32 0, i32 0, i32 undef, float %4841, float %4842, float undef, float %4845, float %4846, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4930 = extractvalue %dx.types.ResRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.ResRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.ResRet.f32 %4929, 2
  %4933 = extractvalue %dx.types.ResRet.f32 %4929, 3
  %4934 = and i32 %4925, 255
  %4935 = uitofp i32 %4934 to float
  %4936 = lshr i32 %4925, 8
  %4937 = and i32 %4936, 255
  %4938 = uitofp i32 %4937 to float
  %4939 = fmul fast float %4933, %4935
  %4940 = fadd fast float %4939, %4938
  %4941 = fmul fast float %4940, 0x3F70101000000000
  %4942 = fadd fast float %4941, 0xBFB99999A0000000
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %4943, 0x3FF1C71C80000000
  %4945 = call float @dx.op.binary.f32(i32 36, float %4941, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4946 = fsub fast float 1.000000e+00, %4944
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fmul fast float %4947, %4930
  %4949 = fmul fast float %4947, %4931
  %4950 = fmul fast float %4947, %4932
  %4951 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4954 = fmul fast float %4944, %4930
  %4955 = fmul fast float %4944, %4931
  %4956 = fmul fast float %4944, %4932
  %4957 = fadd fast float %4954, %4945
  %4958 = fadd fast float %4955, %4945
  %4959 = fadd fast float %4956, %4945
  %4960 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4961 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4962 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.i32 %4963, 3
  %4965 = extractvalue %dx.types.CBufRet.i32 %4963, 2
  %4966 = add i32 %4965, 0
  %4967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4968 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4967, %dx.types.Handle %98, float %4878, float %4879, float undef, float undef, i32 0, i32 0, i32 undef, float %4841, float %4842, float undef, float %4845, float %4846, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4969 = extractvalue %dx.types.ResRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.ResRet.f32 %4968, 1
  %4971 = extractvalue %dx.types.ResRet.f32 %4968, 2
  %4972 = extractvalue %dx.types.ResRet.f32 %4968, 3
  %4973 = and i32 %4964, 255
  %4974 = uitofp i32 %4973 to float
  %4975 = lshr i32 %4964, 8
  %4976 = and i32 %4975, 255
  %4977 = uitofp i32 %4976 to float
  %4978 = lshr i32 %4964, 16
  %4979 = and i32 %4978, 255
  %4980 = uitofp i32 %4979 to float
  %4981 = fmul fast float %4980, 0x3F70101000000000
  %4982 = fmul fast float %4969, %4974
  %4983 = fadd fast float %4982, %4977
  %4984 = fmul fast float %4983, 0x3F70101000000000
  %4985 = fadd fast float %4970, -5.000000e-01
  %4986 = fadd fast float %4972, -5.000000e-01
  %4987 = fmul fast float %4985, %4981
  %4988 = fmul fast float %4986, %4981
  %4989 = fadd fast float %4987, 5.000000e-01
  %4990 = fadd fast float %4988, 5.000000e-01
  %4991 = fmul fast float %4989, 2.000000e+00
  %4992 = fadd fast float %4991, -1.000000e+00
  %4993 = fmul fast float %4990, 2.000000e+00
  %4994 = fadd fast float %4993, -1.000000e+00
  %4995 = fadd fast float %4992, %4994
  %4996 = fmul fast float %4995, 5.000000e-01
  %4997 = fsub fast float %4992, %4994
  %4998 = fmul fast float %4997, 5.000000e-01
  %4999 = call float @dx.op.unary.f32(i32 6, float %4996)  ; FAbs(value)
  %5000 = fsub fast float 1.000000e+00, %4999
  %5001 = call float @dx.op.unary.f32(i32 6, float %4998)  ; FAbs(value)
  %5002 = fsub fast float %5000, %5001
  %5003 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4998, float %5002, float %4996, float %4998, float %5002)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = call float @dx.op.unary.f32(i32 25, float %5003)  ; Rsqrt(value)
  %5005 = fmul fast float %4996, %5004
  %5006 = fmul fast float %4998, %5004
  %5007 = select i1 %4834, i32 %4824, i32 %4825
  %5008 = select i1 %4832, i32 %4823, i32 %5007
  %5009 = sitofp i32 %5008 to float
  %5010 = fmul fast float %5002, %5009
  %5011 = fmul fast float %5010, %5004
  %5012 = select i1 %4834, float %5011, float %5006
  %5013 = select i1 %4834, float %5006, float %5011
  %5014 = select i1 %4832, float %5011, float %5005
  %5015 = select i1 %4832, float %5006, float %5012
  %5016 = select i1 %4832, float %5005, float %5013
  %5017 = fsub fast float %4951, %4781
  %5018 = fsub fast float %4952, %4782
  %5019 = fsub fast float %4953, %4783
  %5020 = fmul fast float %5017, %4923
  %5021 = fmul fast float %5018, %4923
  %5022 = fmul fast float %5019, %4923
  %5023 = fadd fast float %5020, %4781
  %5024 = fadd fast float %5021, %4782
  %5025 = fadd fast float %5022, %4783
  %5026 = fsub fast float %4960, %4775
  %5027 = fsub fast float %4961, %4776
  %5028 = fsub fast float %4962, %4777
  %5029 = fmul fast float %5026, %4923
  %5030 = fmul fast float %5027, %4923
  %5031 = fmul fast float %5028, %4923
  %5032 = fadd fast float %5029, %4775
  %5033 = fadd fast float %5030, %4776
  %5034 = fadd fast float %5031, %4777
  %5035 = fadd fast float %5014, %4778
  %5036 = fadd fast float %5015, %4779
  %5037 = fadd fast float %5016, %4780
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.unary.f32(i32 25, float %5038)  ; Rsqrt(value)
  %5040 = fmul fast float %5035, %5039
  %5041 = fmul fast float %5036, %5039
  %5042 = fmul fast float %5037, %5039
  %5043 = fsub fast float %5040, %4778
  %5044 = fsub fast float %5041, %4779
  %5045 = fsub fast float %5042, %4780
  %5046 = fmul fast float %5043, %4923
  %5047 = fmul fast float %5044, %4923
  %5048 = fmul fast float %5045, %4923
  %5049 = fadd fast float %5046, %4778
  %5050 = fadd fast float %5047, %4779
  %5051 = fadd fast float %5048, %4780
  %5052 = call float @dx.op.binary.f32(i32 36, float %4785, float %4971)  ; FMin(a,b)
  %5053 = fsub fast float %5052, %4785
  %5054 = fmul fast float %5053, %4923
  %5055 = fadd fast float %5054, %4785
  %5056 = fsub fast float %4984, %4784
  %5057 = fmul fast float %5056, %4923
  %5058 = fadd fast float %5057, %4784
  br label %5059

; <label>:5059                                    ; preds = %4921, %4883, %4774, %4490
  %5060 = phi float [ %5032, %4921 ], [ %4775, %4883 ], [ %4775, %4774 ], [ %4081, %4490 ]
  %5061 = phi float [ %5033, %4921 ], [ %4776, %4883 ], [ %4776, %4774 ], [ %4082, %4490 ]
  %5062 = phi float [ %5034, %4921 ], [ %4777, %4883 ], [ %4777, %4774 ], [ %4083, %4490 ]
  %5063 = phi float [ %5049, %4921 ], [ %4778, %4883 ], [ %4778, %4774 ], [ %4060, %4490 ]
  %5064 = phi float [ %5050, %4921 ], [ %4779, %4883 ], [ %4779, %4774 ], [ %4061, %4490 ]
  %5065 = phi float [ %5051, %4921 ], [ %4780, %4883 ], [ %4780, %4774 ], [ %4062, %4490 ]
  %5066 = phi float [ %5023, %4921 ], [ %4781, %4883 ], [ %4781, %4774 ], [ %4099, %4490 ]
  %5067 = phi float [ %5024, %4921 ], [ %4782, %4883 ], [ %4782, %4774 ], [ %4100, %4490 ]
  %5068 = phi float [ %5025, %4921 ], [ %4783, %4883 ], [ %4783, %4774 ], [ %4101, %4490 ]
  %5069 = phi float [ %5058, %4921 ], [ %4784, %4883 ], [ %4784, %4774 ], [ %4084, %4490 ]
  %5070 = phi float [ %5055, %4921 ], [ %4785, %4883 ], [ %4785, %4774 ], [ %3985, %4490 ]
  %5071 = fcmp fast une float %4494, 0.000000e+00
  br i1 %5071, label %5072, label %5241

; <label>:5072                                    ; preds = %5059
  %5073 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %189, float %190, float %191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.unary.f32(i32 25, float %5073)  ; Rsqrt(value)
  %5075 = fmul fast float %189, %5074
  %5076 = fsub fast float -0.000000e+00, %5075
  %5077 = fmul fast float %190, %5074
  %5078 = fsub fast float -0.000000e+00, %5077
  %5079 = fmul fast float %191, %5074
  %5080 = fsub fast float -0.000000e+00, %5079
  %5081 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5078, float %5080, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = fmul fast float %4494, 2.500000e+00
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %4494, 0x4013FFFFE0000000
  %5085 = fadd fast float %5084, 0xBFFFFFFFE0000000
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = fmul fast float %4494, 0x4004000020000000
  %5088 = fadd fast float %5087, 0xBFF8000040000000
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = fmul fast float %4063, 1.000000e+01
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = fmul fast float %5091, 2.000000e+00
  %5093 = fsub fast float 3.000000e+00, %5092
  %5094 = fmul fast float %5091, %5091
  %5095 = fmul fast float %5094, %5093
  %5096 = fsub fast float 1.000000e+00, %5095
  %5097 = fsub fast float 0x3FE3333340000000, %5069
  %5098 = fmul fast float %5097, 0x400AAAAAA0000000
  %5099 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5100 = fmul fast float %5096, %5099
  %5101 = fmul fast float %5066, 0x3FEA2B8620000000
  %5102 = fmul fast float %5067, 0x3FEA2B8620000000
  %5103 = fmul fast float %5068, 0x3FEA2B8620000000
  %5104 = fadd fast float %5101, 0x3FC81DFBA0000000
  %5105 = fmul fast float %5104, %5066
  %5106 = fadd fast float %5105, 0x3F910E6020000000
  %5107 = fadd fast float %5102, 0x3FC81DFBA0000000
  %5108 = fmul fast float %5107, %5067
  %5109 = fadd fast float %5108, 0x3F910E6020000000
  %5110 = fadd fast float %5103, 0x3FC81DFBA0000000
  %5111 = fmul fast float %5110, %5068
  %5112 = fadd fast float %5111, 0x3F910E6020000000
  %5113 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5116 = fsub fast float %5113, %5066
  %5117 = fsub fast float %5114, %5067
  %5118 = fsub fast float %5115, %5068
  %5119 = fmul fast float %5116, %5083
  %5120 = fmul fast float %5119, %5100
  %5121 = fmul fast float %5117, %5083
  %5122 = fmul fast float %5121, %5100
  %5123 = fmul fast float %5118, %5083
  %5124 = fmul fast float %5123, %5100
  %5125 = fadd fast float %5120, %5066
  %5126 = fadd fast float %5122, %5067
  %5127 = fadd fast float %5124, %5068
  %5128 = fmul fast float %5070, %5070
  %5129 = fmul fast float %5128, %5128
  %5130 = fadd fast float %5086, 1.000000e+00
  %5131 = fsub fast float %5130, %5100
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = fsub fast float 1.000000e+00, %5129
  %5136 = call float @dx.op.binary.f32(i32 36, float %5132, float %5135)  ; FMin(a,b)
  %5137 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5138 = call float @dx.op.binary.f32(i32 35, float %5136, float %5137)  ; FMax(a,b)
  %5139 = fadd fast float %5134, 0xBFE4CCCCC0000000
  %5140 = fmul fast float %5139, 0x4006DB6DA0000000
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5141, 2.000000e+00
  %5143 = fsub fast float 3.000000e+00, %5142
  %5144 = bitcast float %5060 to i32
  %5145 = ashr i32 %5144, 1
  %5146 = add nsw i32 %5145, 532487669
  %5147 = bitcast i32 %5146 to float
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = fmul fast float %5151, 2.000000e+00
  %5153 = bitcast float %5061 to i32
  %5154 = ashr i32 %5153, 1
  %5155 = add nsw i32 %5154, 532487669
  %5156 = bitcast i32 %5155 to float
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = bitcast float %5157 to i32
  %5159 = sub nsw i32 2129859010, %5158
  %5160 = bitcast i32 %5159 to float
  %5161 = fmul fast float %5160, 2.000000e+00
  %5162 = bitcast float %5062 to i32
  %5163 = ashr i32 %5162, 1
  %5164 = add nsw i32 %5163, 532487669
  %5165 = bitcast i32 %5164 to float
  %5166 = fsub fast float 1.000000e+00, %5165
  %5167 = bitcast float %5166 to i32
  %5168 = sub nsw i32 2129859010, %5167
  %5169 = bitcast i32 %5168 to float
  %5170 = fmul fast float %5169, 2.000000e+00
  %5171 = fsub fast float 0x4002A9FBE0000000, %5152
  %5172 = fadd fast float %5152, 0x3FD54FDF00000000
  %5173 = bitcast float %5172 to i32
  %5174 = sub nsw i32 2129859010, %5173
  %5175 = bitcast i32 %5174 to float
  %5176 = fmul fast float %5175, %5171
  %5177 = fmul fast float %5176, %5176
  %5178 = fsub fast float 0x4002A9FBE0000000, %5161
  %5179 = fadd fast float %5161, 0x3FD54FDF00000000
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = fmul fast float %5182, %5178
  %5184 = fmul fast float %5183, %5183
  %5185 = fsub fast float 0x4002A9FBE0000000, %5170
  %5186 = fadd fast float %5170, 0x3FD54FDF00000000
  %5187 = bitcast float %5186 to i32
  %5188 = sub nsw i32 2129859010, %5187
  %5189 = bitcast i32 %5188 to float
  %5190 = fmul fast float %5189, %5185
  %5191 = fmul fast float %5190, %5190
  %5192 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5177)  ; FMax(a,b)
  %5193 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5184)  ; FMax(a,b)
  %5194 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5191)  ; FMax(a,b)
  %5195 = fsub fast float 1.000000e+00, %5081
  %5196 = fadd fast float %5195, %5096
  %5197 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5198 = fsub fast float 1.000000e+00, %4475
  %5199 = fmul fast float %5138, %5198
  %5200 = fmul fast float %5141, %5141
  %5201 = fmul fast float %5200, %5199
  %5202 = fmul fast float %5201, %5143
  %5203 = fmul fast float %5198, 0xBFE99999A0000000
  %5204 = fmul fast float %5203, %5083
  %5205 = fmul fast float %5204, %5100
  %5206 = fadd fast float %5205, 1.000000e+00
  %5207 = fadd fast float %5069, -1.000000e+00
  %5208 = fmul fast float %5206, %5207
  %5209 = fadd fast float %5208, 1.000000e+00
  %5210 = fsub fast float %5192, %5060
  %5211 = fsub fast float %5193, %5061
  %5212 = fsub fast float %5194, %5062
  %5213 = fmul fast float %5202, %5210
  %5214 = fmul fast float %5202, %5211
  %5215 = fmul fast float %5202, %5212
  %5216 = fadd fast float %5213, %5060
  %5217 = fadd fast float %5214, %5061
  %5218 = fadd fast float %5215, %5062
  %5219 = fsub fast float %109, %5063
  %5220 = fsub fast float %110, %5064
  %5221 = fsub fast float %111, %5065
  %5222 = fmul fast float %5202, %5219
  %5223 = fmul fast float %5202, %5220
  %5224 = fmul fast float %5202, %5221
  %5225 = fadd fast float %5222, %5063
  %5226 = fadd fast float %5223, %5064
  %5227 = fadd fast float %5224, %5065
  %5228 = fmul fast float %5202, %5197
  %5229 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5230 = fsub fast float 1.000000e+00, %5229
  %5231 = fmul fast float %5228, %5230
  %5232 = fadd fast float %5231, %5229
  %5233 = fsub fast float 1.000000e+00, %5070
  %5234 = fmul fast float %5202, %5233
  %5235 = fadd fast float %5234, %5070
  %5236 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float %5225, float %5226, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5237 = call float @dx.op.unary.f32(i32 25, float %5236)  ; Rsqrt(value)
  %5238 = fmul fast float %5225, %5237
  %5239 = fmul fast float %5226, %5237
  %5240 = fmul fast float %5227, %5237
  br label %5241

; <label>:5241                                    ; preds = %5072, %5059
  %5242 = phi float [ %5216, %5072 ], [ %5060, %5059 ]
  %5243 = phi float [ %5217, %5072 ], [ %5061, %5059 ]
  %5244 = phi float [ %5218, %5072 ], [ %5062, %5059 ]
  %5245 = phi float [ %5238, %5072 ], [ %5063, %5059 ]
  %5246 = phi float [ %5239, %5072 ], [ %5064, %5059 ]
  %5247 = phi float [ %5240, %5072 ], [ %5065, %5059 ]
  %5248 = phi float [ %5125, %5072 ], [ %5066, %5059 ]
  %5249 = phi float [ %5126, %5072 ], [ %5067, %5059 ]
  %5250 = phi float [ %5127, %5072 ], [ %5068, %5059 ]
  %5251 = phi float [ %5232, %5072 ], [ %5069, %5059 ]
  %5252 = phi float [ %5235, %5072 ], [ %5070, %5059 ]
  %5253 = icmp eq i32 %53, 0
  br i1 %5253, label %5284, label %5254

; <label>:5254                                    ; preds = %5241
  %5255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.f32 %5255, 2
  %5257 = extractvalue %dx.types.CBufRet.f32 %5255, 3
  %5258 = fmul fast float %5256, %102
  %5259 = fmul fast float %5257, %103
  %5260 = fmul fast float %5258, 1.024000e+03
  %5261 = fmul fast float %5259, 1.024000e+03
  %5262 = fadd fast float %5260, -5.120000e+02
  %5263 = fadd fast float %5261, -5.120000e+02
  %5264 = fmul fast float %5258, 0x4081BEDF00000000
  %5265 = fadd fast float %5264, 0xC071BEDF00000000
  %5266 = call float @dx.op.unary.f32(i32 22, float %5265)  ; Frc(value)
  %5267 = fmul fast float %5262, %5266
  %5268 = fadd fast float %5267, %5263
  %5269 = fmul fast float %5259, 0x4073BEBE20000000
  %5270 = fadd fast float %5269, 0xC063BEBE20000000
  %5271 = call float @dx.op.unary.f32(i32 22, float %5270)  ; Frc(value)
  %5272 = fmul fast float %5263, %5271
  %5273 = fadd fast float %5272, %5262
  %5274 = fmul fast float %5268, %5273
  %5275 = call float @dx.op.unary.f32(i32 22, float %5274)  ; Frc(value)
  %5276 = add i32 %315, 12
  %5277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.i32 %5277, 0
  %5279 = and i32 %5278, 255
  %5280 = uitofp i32 %5279 to float
  %5281 = fmul fast float %5280, 0x3F70101020000000
  %5282 = fcmp fast olt float %5275, %5281
  br i1 %5282, label %5283, label %5284

; <label>:5283                                    ; preds = %5254
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5284

; <label>:5284                                    ; preds = %5283, %5254, %5241
  %5285 = fsub fast float -0.000000e+00, %191
  %5286 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %189, float %190, float %191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = call float @dx.op.unary.f32(i32 25, float %5286)  ; Rsqrt(value)
  %5288 = fmul fast float %5287, %189
  %5289 = fmul fast float %5287, %190
  %5290 = fmul fast float %5287, %191
  %5291 = fsub fast float -0.000000e+00, %5288
  %5292 = fsub fast float -0.000000e+00, %5289
  %5293 = fsub fast float -0.000000e+00, %5290
  %5294 = select i1 %261, float 0.000000e+00, float %5244
  %5295 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float %5291, float %5292, float %5293)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5245, float %5246, float %5247)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = fmul fast float %5297, 2.000000e+00
  %5299 = fmul fast float %5298, %5245
  %5300 = fmul fast float %5298, %5246
  %5301 = fmul fast float %5298, %5247
  %5302 = fsub fast float %5288, %5299
  %5303 = fsub fast float %5289, %5300
  %5304 = fsub fast float %5290, %5301
  %5305 = call float @dx.op.binary.f32(i32 36, float %5252, float 1.000000e+00)  ; FMin(a,b)
  %5306 = fsub fast float 1.000000e+00, %5252
  %5307 = bitcast float %5306 to i32
  %5308 = sub nsw i32 2129859010, %5307
  %5309 = bitcast i32 %5308 to float
  %5310 = fsub fast float 1.000000e+00, %73
  %5311 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = call float @dx.op.binary.f32(i32 35, float %5311, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5313 = fdiv fast float %5310, %5312
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fmul fast float %5315, 5.000000e-01
  %5317 = fadd fast float %5316, 5.000000e-01
  %5318 = fmul fast float %5317, %73
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fmul fast float %5320, %5313
  %5322 = fadd fast float %5318, %5321
  %5323 = fsub fast float 5.000000e-01, %5316
  %5324 = fmul fast float %5323, %5248
  %5325 = fmul fast float %5323, %5249
  %5326 = fmul fast float %5323, %5250
  %5327 = fadd fast float %5322, %5324
  %5328 = fadd fast float %5322, %5325
  %5329 = fadd fast float %5322, %5326
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5332 = fmul fast float %5331, 5.000000e-01
  %5333 = fadd fast float %5332, 5.000000e-01
  %5334 = fmul fast float %5333, %73
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5337 = fmul fast float %5336, %5313
  %5338 = fadd fast float %5334, %5337
  %5339 = fsub fast float 5.000000e-01, %5332
  %5340 = fmul fast float %5339, %5248
  %5341 = fmul fast float %5339, %5249
  %5342 = fmul fast float %5339, %5250
  %5343 = fadd fast float %5338, %5340
  %5344 = fadd fast float %5338, %5341
  %5345 = fadd fast float %5338, %5342
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = call float @dx.op.binary.f32(i32 36, float %5248, float %5347)  ; FMin(a,b)
  %5349 = fsub fast float 1.000000e+00, %5305
  %5350 = fmul fast float %5348, %5349
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = call float @dx.op.binary.f32(i32 36, float %5249, float %5347)  ; FMin(a,b)
  %5356 = fmul fast float %5355, %5349
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = bitcast float %5357 to i32
  %5359 = sub nsw i32 2129859010, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = call float @dx.op.binary.f32(i32 36, float %5250, float %5347)  ; FMin(a,b)
  %5362 = fmul fast float %5361, %5349
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = bitcast float %5363 to i32
  %5365 = sub nsw i32 2129859010, %5364
  %5366 = bitcast i32 %5365 to float
  %5367 = fmul fast float %5305, %74
  %5368 = fmul fast float %5367, %5327
  %5369 = fmul fast float %5368, %5354
  %5370 = fmul fast float %5305, %75
  %5371 = fmul fast float %5370, %5328
  %5372 = fmul fast float %5371, %5360
  %5373 = fmul fast float %5305, %76
  %5374 = fmul fast float %5373, %5329
  %5375 = fmul fast float %5374, %5366
  %5376 = call float @dx.op.binary.f32(i32 36, float %5242, float %5347)  ; FMin(a,b)
  %5377 = fmul fast float %5376, %5349
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = bitcast float %5378 to i32
  %5380 = sub nsw i32 2129859010, %5379
  %5381 = bitcast i32 %5380 to float
  %5382 = call float @dx.op.binary.f32(i32 36, float %5243, float %5347)  ; FMin(a,b)
  %5383 = fmul fast float %5382, %5349
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = bitcast float %5384 to i32
  %5386 = sub nsw i32 2129859010, %5385
  %5387 = bitcast i32 %5386 to float
  %5388 = call float @dx.op.binary.f32(i32 36, float %5294, float %5347)  ; FMin(a,b)
  %5389 = fmul fast float %5388, %5349
  %5390 = fsub fast float 1.000000e+00, %5389
  %5391 = bitcast float %5390 to i32
  %5392 = sub nsw i32 2129859010, %5391
  %5393 = bitcast i32 %5392 to float
  %5394 = fmul fast float %5367, %5343
  %5395 = fmul fast float %5394, %5381
  %5396 = fmul fast float %5370, %5344
  %5397 = fmul fast float %5396, %5387
  %5398 = fmul fast float %5373, %5345
  %5399 = fmul fast float %5398, %5393
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5372, float %5375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = select i1 %261, float 0.000000e+00, float %5369
  %5402 = select i1 %261, float %5400, float %5372
  %5403 = select i1 %261, float 0.000000e+00, float %5375
  %5404 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5397, float %5399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5405 = select i1 %261, float 0.000000e+00, float %5395
  %5406 = select i1 %261, float %5404, float %5397
  %5407 = select i1 %261, float 0.000000e+00, float %5399
  %5408 = fmul fast float %3986, %3986
  %5409 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5410 = fmul fast float %5296, 9.843750e-01
  %5411 = fmul fast float %5251, 9.843750e-01
  %5412 = fadd fast float %5410, 7.812500e-03
  %5413 = fadd fast float %5411, 7.812500e-03
  %5414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %5412, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = extractvalue %dx.types.ResRet.f32 %5414, 3
  %5419 = fsub fast float 1.000000e+00, %5409
  %5420 = fsub fast float %5417, %5415
  %5421 = fsub fast float %5418, %5416
  %5422 = fmul fast float %5420, %5419
  %5423 = fmul fast float %5421, %5419
  %5424 = fadd fast float %5422, %5415
  %5425 = fadd fast float %5423, %5416
  %5426 = fmul fast float %5424, %5242
  %5427 = fmul fast float %5424, %5243
  %5428 = fmul fast float %5424, %5294
  %5429 = fadd fast float %5426, %5425
  %5430 = fadd fast float %5427, %5425
  %5431 = fadd fast float %5428, %5425
  %5432 = call float @dx.op.binary.f32(i32 35, float %5430, float %5431)  ; FMax(a,b)
  %5433 = call float @dx.op.binary.f32(i32 35, float %5429, float %5432)  ; FMax(a,b)
  %5434 = fsub fast float 1.000000e+00, %5433
  %5435 = fmul fast float %5434, %5401
  %5436 = fmul fast float %5434, %5402
  %5437 = fmul fast float %5434, %5403
  %5438 = call float @dx.op.binary.f32(i32 35, float %5296, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5439 = fdiv fast float %3986, %5438
  %5440 = fcmp fast olt float %4085, 1.270000e+02
  %5441 = fcmp fast olt float %4086, 1.270000e+02
  %5442 = fcmp fast olt float %4087, 1.270000e+02
  %5443 = fmul fast float %4085, 0xBFF7154760000000
  %5444 = fmul fast float %5443, %5439
  %5445 = fmul fast float %4086, 0xBFF7154760000000
  %5446 = fmul fast float %5445, %5439
  %5447 = fmul fast float %4087, 0xBFF7154760000000
  %5448 = fmul fast float %5447, %5439
  %5449 = call float @dx.op.unary.f32(i32 21, float %5444)  ; Exp(value)
  %5450 = call float @dx.op.unary.f32(i32 21, float %5446)  ; Exp(value)
  %5451 = call float @dx.op.unary.f32(i32 21, float %5448)  ; Exp(value)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5454 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5455 = select i1 %5440, float %5452, float 0.000000e+00
  %5456 = select i1 %5441, float %5453, float 0.000000e+00
  %5457 = select i1 %5442, float %5454, float 0.000000e+00
  %5458 = fmul fast float %5455, %5434
  %5459 = fmul fast float %5456, %5434
  %5460 = fmul fast float %5457, %5434
  %5461 = fadd fast float %5458, -1.000000e+00
  %5462 = fadd fast float %5459, -1.000000e+00
  %5463 = fadd fast float %5460, -1.000000e+00
  %5464 = fmul fast float %5429, %5405
  %5465 = fmul fast float %5430, %5406
  %5466 = fmul fast float %5431, %5407
  %5467 = fmul fast float %5435, %1334
  %5468 = fmul fast float %5436, %1334
  %5469 = fmul fast float %5437, %1334
  %5470 = fadd fast float %5464, %4030
  %5471 = fmul fast float %5470, %1334
  %5472 = fadd fast float %5465, %4032
  %5473 = fmul fast float %5472, %1334
  %5474 = fadd fast float %5466, %4034
  %5475 = fmul fast float %5474, %1334
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 3
  %5478 = fcmp fast oeq float %5477, 0.000000e+00
  br i1 %5478, label %6506, label %5479

; <label>:5479                                    ; preds = %5284
  %5480 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5482 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.CBufRet.f32 %5483, 2
  %5487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5488 = extractvalue %dx.types.CBufRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.CBufRet.f32 %5487, 1
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5485, float %5486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = select i1 %261, float %5488, float %5484
  %5492 = select i1 %261, float %5490, float %5485
  %5493 = select i1 %261, float %5489, float %5486
  %5494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5494, 2
  %5496 = fmul fast float %5495, %109
  %5497 = fmul fast float %5495, %110
  %5498 = fmul fast float %5495, %111
  %5499 = fadd fast float %5496, %189
  %5500 = fadd fast float %5497, %190
  %5501 = fadd fast float %5498, %191
  %5502 = fcmp fast olt float %5477, 0.000000e+00
  br i1 %5502, label %6142, label %5503

; <label>:5503                                    ; preds = %5479
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5508 = extractvalue %dx.types.CBufRet.f32 %5504, 3
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 0
  %5511 = extractvalue %dx.types.CBufRet.f32 %5509, 1
  %5512 = extractvalue %dx.types.CBufRet.f32 %5509, 2
  %5513 = extractvalue %dx.types.CBufRet.f32 %5509, 3
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  %5516 = extractvalue %dx.types.CBufRet.f32 %5514, 1
  %5517 = extractvalue %dx.types.CBufRet.f32 %5514, 2
  %5518 = extractvalue %dx.types.CBufRet.f32 %5514, 3
  %5519 = fmul fast float %5505, %5499
  %5520 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %5506, float %5519)  ; FMad(a,b,c)
  %5521 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %5507, float %5520)  ; FMad(a,b,c)
  %5522 = fadd fast float %5521, %5508
  %5523 = fmul fast float %5510, %5499
  %5524 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %5511, float %5523)  ; FMad(a,b,c)
  %5525 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %5512, float %5524)  ; FMad(a,b,c)
  %5526 = fadd fast float %5525, %5513
  %5527 = fmul fast float %5515, %5499
  %5528 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %5516, float %5527)  ; FMad(a,b,c)
  %5529 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %5517, float %5528)  ; FMad(a,b,c)
  %5530 = fadd fast float %5529, %5518
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 0
  %5533 = fcmp fast une float %5532, 0.000000e+00
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.CBufRet.f32 %5534, 3
  %5538 = fmul fast float %5537, %5522
  %5539 = fmul fast float %5537, %5526
  %5540 = fadd fast float %5538, %5535
  %5541 = fadd fast float %5539, %5536
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.CBufRet.f32 %5542, 1
  %5545 = extractvalue %dx.types.CBufRet.f32 %5542, 3
  %5546 = fmul fast float %5545, %5522
  %5547 = fmul fast float %5545, %5526
  %5548 = fadd fast float %5546, %5543
  %5549 = fadd fast float %5547, %5544
  %5550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5551 = extractvalue %dx.types.CBufRet.f32 %5550, 1
  %5552 = fsub fast float %5551, %5530
  %5553 = extractvalue %dx.types.CBufRet.f32 %5550, 2
  %5554 = fmul fast float %5552, %5553
  %5555 = fsub fast float 1.000000e+00, %5554
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  br i1 %5533, label %5617, label %5557

; <label>:5557                                    ; preds = %5503
  %5558 = extractvalue %dx.types.CBufRet.f32 %5542, 2
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 2
  %5561 = fadd fast float %5560, %5558
  %5562 = fcmp fast ogt float %5561, 0.000000e+00
  br i1 %5562, label %5563, label %5587

; <label>:5563                                    ; preds = %5557
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.CBufRet.f32 %5564, 1
  %5567 = fsub fast float %5548, %5565
  %5568 = fsub fast float %5549, %5566
  %5569 = fcmp fast olt float %5567, 0.000000e+00
  %5570 = fcmp fast olt float %5568, 0.000000e+00
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5574 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5575 = extractvalue %dx.types.CBufRet.f32 %5571, 3
  %5576 = select i1 %5569, float %5572, float %5574
  %5577 = select i1 %5570, float %5573, float %5575
  %5578 = fmul fast float %5576, %5567
  %5579 = fmul fast float %5577, %5568
  %5580 = call float @dx.op.unary.f32(i32 6, float %5578)  ; FAbs(value)
  %5581 = call float @dx.op.unary.f32(i32 6, float %5579)  ; FAbs(value)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5494, 0
  %5583 = call float @dx.op.binary.f32(i32 35, float %5580, float %5581)  ; FMax(a,b)
  %5584 = fsub fast float %5582, %5583
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fmul fast float %5585, %5556
  br label %5587

; <label>:5587                                    ; preds = %5563, %5557
  %5588 = phi float [ %5586, %5563 ], [ 0.000000e+00, %5557 ]
  %5589 = extractvalue %dx.types.CBufRet.f32 %5534, 2
  %5590 = extractvalue %dx.types.CBufRet.f32 %5559, 1
  %5591 = fadd fast float %5590, %5589
  %5592 = fcmp fast ogt float %5591, 0.000000e+00
  br i1 %5592, label %5593, label %5617

; <label>:5593                                    ; preds = %5587
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5596 = extractvalue %dx.types.CBufRet.f32 %5594, 1
  %5597 = fsub fast float %5540, %5595
  %5598 = fsub fast float %5541, %5596
  %5599 = fcmp fast olt float %5597, 0.000000e+00
  %5600 = fcmp fast olt float %5598, 0.000000e+00
  %5601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5602 = extractvalue %dx.types.CBufRet.f32 %5601, 0
  %5603 = extractvalue %dx.types.CBufRet.f32 %5601, 1
  %5604 = extractvalue %dx.types.CBufRet.f32 %5601, 2
  %5605 = extractvalue %dx.types.CBufRet.f32 %5601, 3
  %5606 = select i1 %5599, float %5602, float %5604
  %5607 = select i1 %5600, float %5603, float %5605
  %5608 = fmul fast float %5606, %5597
  %5609 = fmul fast float %5607, %5598
  %5610 = call float @dx.op.unary.f32(i32 6, float %5608)  ; FAbs(value)
  %5611 = call float @dx.op.unary.f32(i32 6, float %5609)  ; FAbs(value)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5494, 0
  %5613 = call float @dx.op.binary.f32(i32 35, float %5610, float %5611)  ; FMax(a,b)
  %5614 = fsub fast float %5612, %5613
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fmul fast float %5615, %5556
  br label %5617

; <label>:5617                                    ; preds = %5593, %5587, %5503
  %5618 = phi float [ 0.000000e+00, %5503 ], [ %5616, %5593 ], [ 0.000000e+00, %5587 ]
  %5619 = phi float [ 0.000000e+00, %5503 ], [ %5588, %5593 ], [ %5588, %5587 ]
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 1
  %5622 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5623, 1
  %5626 = fsub fast float %5522, %5624
  %5627 = fsub fast float %5526, %5625
  %5628 = fcmp fast olt float %5626, 0.000000e+00
  %5629 = fcmp fast olt float %5627, 0.000000e+00
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %5633 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5634 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5635 = select i1 %5628, float %5631, float %5633
  %5636 = select i1 %5629, float %5632, float %5634
  %5637 = fmul fast float %5635, %5626
  %5638 = fmul fast float %5636, %5627
  %5639 = call float @dx.op.unary.f32(i32 6, float %5637)  ; FAbs(value)
  %5640 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5494, 0
  %5642 = call float @dx.op.binary.f32(i32 35, float %5639, float %5640)  ; FMax(a,b)
  %5643 = fsub fast float %5641, %5642
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = call float @dx.op.binary.f32(i32 36, float %5644, float %5622)  ; FMin(a,b)
  %5646 = fmul fast float %5645, %5556
  %5647 = fsub fast float %5618, %5646
  %5648 = fsub fast float %5619, %5618
  %5649 = fsub fast float %5648, %5646
  %5650 = call float @dx.op.binary.f32(i32 35, float %5618, float %5619)  ; FMax(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float %5646, float %5650)  ; FMax(a,b)
  %5652 = fcmp fast olt float %5651, 1.000000e+00
  br i1 %5652, label %5653, label %6051, !dx.controlflow.hints !93

; <label>:5653                                    ; preds = %5617
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 0
  %5656 = fcmp fast une float %5655, 0.000000e+00
  br i1 %5656, label %5657, label %6051, !dx.controlflow.hints !94

; <label>:5657                                    ; preds = %5653
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5667 = extractvalue %dx.types.CBufRet.f32 %5663, 3
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 0
  %5670 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5671 = extractvalue %dx.types.CBufRet.f32 %5668, 2
  %5672 = extractvalue %dx.types.CBufRet.f32 %5668, 3
  %5673 = fmul fast float %5659, %5499
  %5674 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %5660, float %5673)  ; FMad(a,b,c)
  %5675 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %5661, float %5674)  ; FMad(a,b,c)
  %5676 = fadd fast float %5675, %5662
  %5677 = fmul fast float %5664, %5499
  %5678 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %5665, float %5677)  ; FMad(a,b,c)
  %5679 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %5666, float %5678)  ; FMad(a,b,c)
  %5680 = fadd fast float %5679, %5667
  %5681 = fmul fast float %5669, %5499
  %5682 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %5670, float %5681)  ; FMad(a,b,c)
  %5683 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %5671, float %5682)  ; FMad(a,b,c)
  %5684 = fadd fast float %5683, %5672
  %5685 = fcmp fast oge float %5676, 1.000000e+00
  %5686 = fcmp fast oge float %5680, 1.000000e+00
  %5687 = or i1 %5685, %5686
  %5688 = fcmp fast olt float %5676, 0.000000e+00
  %5689 = fcmp fast olt float %5680, 0.000000e+00
  %5690 = or i1 %5688, %5689
  %5691 = or i1 %5687, %5690
  br i1 %5691, label %6051, label %5692, !dx.controlflow.hints !95

; <label>:5692                                    ; preds = %5657
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.i32 %5697, 2
  %5699 = uitofp i32 %5698 to float
  %5700 = extractvalue %dx.types.CBufRet.i32 %5697, 3
  %5701 = uitofp i32 %5700 to float
  %5702 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5703 = fmul fast float %5702, 2.000000e+00
  %5704 = fsub fast float %5676, %5694
  %5705 = fsub fast float %5680, %5695
  %5706 = fmul fast float %5703, %5704
  %5707 = fmul fast float %5703, %5705
  %5708 = fdiv fast float 1.000000e+00, %5482
  %5709 = fmul fast float %5707, %5708
  %5710 = call float @dx.op.unary.f32(i32 6, float %5709)  ; FAbs(value)
  %5711 = fmul fast float %5696, %5501
  %5712 = fmul fast float %5711, %5703
  %5713 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5714 = call float @dx.op.unary.f32(i32 6, float %5706)  ; FAbs(value)
  %5715 = call float @dx.op.binary.f32(i32 35, float %5713, float %5710)  ; FMax(a,b)
  %5716 = call float @dx.op.binary.f32(i32 35, float %5714, float %5715)  ; FMax(a,b)
  %5717 = fmul fast float %5716, 2.000000e+00
  %5718 = call float @dx.op.unary.f32(i32 23, float %5717)  ; Log(value)
  %5719 = call float @dx.op.binary.f32(i32 35, float %5718, float %5699)  ; FMax(a,b)
  %5720 = call float @dx.op.unary.f32(i32 22, float %5719)  ; Frc(value)
  %5721 = fadd fast float %5720, 0xBFEA666660000000
  %5722 = fmul fast float %5721, 8.000000e+00
  %5723 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5724 = call float @dx.op.unary.f32(i32 27, float %5719)  ; Round_ni(value)
  %5725 = fadd fast float %5724, %5723
  %5726 = call float @dx.op.binary.f32(i32 36, float %5725, float %5701)  ; FMin(a,b)
  %5727 = call float @dx.op.unary.f32(i32 27, float %5726)  ; Round_ni(value)
  %5728 = fsub fast float -0.000000e+00, %5727
  %5729 = call float @dx.op.unary.f32(i32 21, float %5728)  ; Exp(value)
  %5730 = fmul fast float %5729, %5703
  %5731 = fmul fast float %5730, %5676
  %5732 = fmul fast float %5730, %5680
  %5733 = fmul fast float %5731, 2.500000e-01
  %5734 = fmul fast float %5732, 2.500000e-01
  %5735 = fadd fast float %5733, 5.000000e-01
  %5736 = fadd fast float %5734, 5.000000e-01
  %5737 = fsub fast float %5701, %5699
  %5738 = fptoui float %5737 to i32
  %5739 = add i32 %5738, 320
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %5739)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5743 = fcmp fast une float %5726, %5701
  %5744 = fsub fast float %5676, %5741
  %5745 = fsub fast float %5680, %5742
  %5746 = call float @dx.op.unary.f32(i32 6, float %5744)  ; FAbs(value)
  %5747 = call float @dx.op.unary.f32(i32 6, float %5745)  ; FAbs(value)
  %5748 = fmul fast float %5746, %5730
  %5749 = fmul fast float %5747, %5730
  %5750 = fcmp fast olt float %5748, 1.000000e+00
  %5751 = fcmp fast olt float %5749, 1.000000e+00
  %5752 = and i1 %5750, %5751
  %5753 = or i1 %5743, %5752
  br i1 %5753, label %5754, label %6051, !dx.controlflow.hints !96

; <label>:5754                                    ; preds = %5692
  %5755 = fmul fast float %5732, 5.000000e-01
  %5756 = fmul fast float %5731, 5.000000e-01
  %5757 = fadd fast float %5755, 5.000000e-01
  %5758 = fadd fast float %5756, 5.000000e-01
  %5759 = sitofp i32 %5698 to float
  %5760 = fsub fast float %5726, %5759
  %5761 = call float @dx.op.unary.f32(i32 27, float %5760)  ; Round_ni(value)
  %5762 = call float @dx.op.unary.f32(i32 22, float %5726)  ; Frc(value)
  %5763 = call float @dx.op.unary.f32(i32 22, float %5758)  ; Frc(value)
  %5764 = call float @dx.op.unary.f32(i32 22, float %5757)  ; Frc(value)
  %5765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %5763, float %5764, float %5761, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5766 = extractvalue %dx.types.ResRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.ResRet.f32 %5765, 1
  %5768 = extractvalue %dx.types.ResRet.f32 %5765, 2
  %5769 = extractvalue %dx.types.ResRet.f32 %5765, 3
  %5770 = fcmp fast ogt float %5762, 0.000000e+00
  br i1 %5770, label %5771, label %5792, !dx.controlflow.hints !97

; <label>:5771                                    ; preds = %5754
  %5772 = fadd fast float %5761, 1.000000e+00
  %5773 = call float @dx.op.unary.f32(i32 22, float %5735)  ; Frc(value)
  %5774 = call float @dx.op.unary.f32(i32 22, float %5736)  ; Frc(value)
  %5775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %5773, float %5774, float %5772, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5776 = extractvalue %dx.types.ResRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.ResRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.ResRet.f32 %5775, 2
  %5779 = extractvalue %dx.types.ResRet.f32 %5775, 3
  %5780 = fsub fast float %5776, %5766
  %5781 = fsub fast float %5777, %5767
  %5782 = fsub fast float %5778, %5768
  %5783 = fsub fast float %5779, %5769
  %5784 = fmul fast float %5780, %5762
  %5785 = fmul fast float %5781, %5762
  %5786 = fmul fast float %5782, %5762
  %5787 = fmul fast float %5783, %5762
  %5788 = fadd fast float %5784, %5766
  %5789 = fadd fast float %5785, %5767
  %5790 = fadd fast float %5786, %5768
  %5791 = fadd fast float %5787, %5769
  br label %5792

; <label>:5792                                    ; preds = %5771, %5754
  %5793 = phi float [ %5788, %5771 ], [ %5766, %5754 ]
  %5794 = phi float [ %5789, %5771 ], [ %5767, %5754 ]
  %5795 = phi float [ %5790, %5771 ], [ %5768, %5754 ]
  %5796 = phi float [ %5791, %5771 ], [ %5769, %5754 ]
  %5797 = fadd fast float %5793, -5.000000e-01
  %5798 = fadd fast float %5795, -5.000000e-01
  %5799 = fmul fast float %5797, 0xBFD5555560000000
  %5800 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5798, float %5799)  ; FMad(a,b,c)
  %5801 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5794, float 0.000000e+00)  ; FMad(a,b,c)
  %5802 = fadd fast float %5801, %5796
  %5803 = fmul fast float %5797, -7.500000e-01
  %5804 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5798, float %5803)  ; FMad(a,b,c)
  %5805 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5794, float 0.000000e+00)  ; FMad(a,b,c)
  %5806 = fadd fast float %5805, %5796
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 0
  %5811 = extractvalue %dx.types.CBufRet.f32 %5809, 1
  %5812 = extractvalue %dx.types.CBufRet.f32 %5809, 2
  %5813 = extractvalue %dx.types.CBufRet.f32 %5809, 3
  %5814 = fsub fast float %5810, %5800
  %5815 = fsub fast float %5811, %5802
  %5816 = fsub fast float %5812, %5804
  %5817 = fsub fast float %5813, %5806
  %5818 = fmul fast float %5814, %5808
  %5819 = fmul fast float %5815, %5808
  %5820 = fmul fast float %5816, %5808
  %5821 = fmul fast float %5817, %5808
  %5822 = fadd fast float %5818, %5800
  %5823 = fadd fast float %5819, %5802
  %5824 = fadd fast float %5820, %5804
  %5825 = fadd fast float %5821, %5806
  %5826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.i32 %5826, 0
  %5828 = and i32 %5827, 536870911
  %5829 = uitofp i32 %5828 to float
  %5830 = fmul fast float %5829, %5676
  %5831 = fmul fast float %5829, %5680
  %5832 = fptoui float %5830 to i32
  %5833 = fptoui float %5831 to i32
  %5834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.i32 %5834, 0
  %5836 = and i32 %5835, 31
  %5837 = lshr i32 %5832, %5836
  %5838 = lshr i32 %5833, %5836
  %5839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5840 = extractvalue %dx.types.ResRet.i32 %5839, 0
  %5841 = and i32 %5840, 31
  %5842 = shl i32 1, %5841
  %5843 = call i32 @dx.op.binary.i32(i32 40, i32 %5842, i32 4)  ; UMin(a,b)
  %5844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5845 = extractvalue %dx.types.ResRet.i32 %5844, 0
  %5846 = extractvalue %dx.types.ResRet.i32 %5844, 1
  %5847 = icmp eq i32 %5843, 0
  br i1 %5847, label %5889, label %5848

; <label>:5848                                    ; preds = %5792
  br label %5849

; <label>:5849                                    ; preds = %5877, %5848
  %5850 = phi i32 [ %5880, %5877 ], [ 0, %5848 ]
  %5851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.i32 %5851, 0
  %5853 = lshr i32 %5852, 16
  %5854 = and i32 %5853, 31
  %5855 = shl i32 %5838, %5854
  %5856 = add i32 %5855, %5837
  %5857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5858 = extractvalue %dx.types.ResRet.i32 %5857, 0
  %5859 = and i32 %5858, 31
  %5860 = shl i32 %5856, %5859
  %5861 = add i32 %5860, %5850
  %5862 = shl i32 %5861, 2
  %5863 = add i32 %5862, 32
  %5864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5863, i32 undef)  ; BufferLoad(srv,index,wot)
  %5865 = extractvalue %dx.types.ResRet.i32 %5864, 0
  %5866 = icmp slt i32 %5865, 0
  %5867 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5850
  %5868 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5850
  %5869 = bitcast float* %5867 to i32*
  %5870 = bitcast float* %5868 to i32*
  br i1 %5866, label %5871, label %5877

; <label>:5871                                    ; preds = %5849
  %5872 = and i32 %5865, 1073741823
  %5873 = add nuw nsw i32 %5872, 20
  %5874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5873, i32 undef)  ; BufferLoad(srv,index,wot)
  %5875 = extractvalue %dx.types.ResRet.i32 %5874, 0
  %5876 = extractvalue %dx.types.ResRet.i32 %5874, 1
  br label %5877

; <label>:5877                                    ; preds = %5871, %5849
  %5878 = phi i32 [ %5875, %5871 ], [ %5845, %5849 ]
  %5879 = phi i32 [ %5876, %5871 ], [ %5846, %5849 ]
  store i32 %5878, i32* %5869, align 4
  store i32 %5879, i32* %5870, align 4
  %5880 = add nuw i32 %5850, 1
  %5881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.i32 %5881, 2
  %5883 = icmp eq i32 %5882, 0
  %5884 = icmp ugt i32 %5865, -1073741825
  %5885 = and i1 %5884, %5883
  %5886 = icmp ult i32 %5880, %5843
  %5887 = and i1 %5885, %5886
  br i1 %5887, label %5849, label %5888

; <label>:5888                                    ; preds = %5877
  br label %5889

; <label>:5889                                    ; preds = %5888, %5792
  %5890 = phi i32 [ 0, %5792 ], [ %5880, %5888 ]
  %5891 = extractvalue %dx.types.CBufRet.f32 %5654, 2
  %5892 = fptoui float %5891 to i32
  %5893 = icmp eq i32 %5892, 0
  br i1 %5893, label %5945, label %5894

; <label>:5894                                    ; preds = %5889
  br label %5895

; <label>:5895                                    ; preds = %5940, %5894
  %5896 = phi i32 [ %5941, %5940 ], [ %5890, %5894 ]
  %5897 = phi i32 [ %5942, %5940 ], [ 0, %5894 ]
  %5898 = lshr i32 %5897, 2
  %5899 = and i32 %5897, 3
  %5900 = add nuw nsw i32 %5898, 83
  %5901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %5900)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.i32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.i32 %5901, 1
  %5904 = extractvalue %dx.types.CBufRet.i32 %5901, 2
  %5905 = extractvalue %dx.types.CBufRet.i32 %5901, 3
  %5906 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %5902, i32* %5906, align 4
  %5907 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %5903, i32* %5907, align 4
  %5908 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %5904, i32* %5908, align 4
  %5909 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %5905, i32* %5909, align 4
  %5910 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %5899
  %5911 = load i32, i32* %5910, align 4, !tbaa !98, !noalias !102
  %5912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5913 = extractvalue %dx.types.ResRet.i32 %5912, 0
  %5914 = lshr i32 %5913, 16
  %5915 = and i32 %5914, 31
  %5916 = shl i32 %5838, %5915
  %5917 = add i32 %5916, %5837
  %5918 = shl i32 %5917, 2
  %5919 = add i32 %5918, %5911
  %5920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5919, i32 undef)  ; BufferLoad(srv,index,wot)
  %5921 = extractvalue %dx.types.ResRet.i32 %5920, 0
  %5922 = icmp eq i32 %5921, 0
  br i1 %5922, label %5940, label %5923

; <label>:5923                                    ; preds = %5895
  %5924 = icmp slt i32 %5921, 0
  %5925 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5896
  %5926 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5896
  %5927 = bitcast float* %5925 to i32*
  %5928 = bitcast float* %5926 to i32*
  br i1 %5924, label %5929, label %5936

; <label>:5929                                    ; preds = %5923
  %5930 = and i32 %5921, 1073741823
  %5931 = add i32 %5911, 20
  %5932 = add i32 %5931, %5930
  %5933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5932, i32 undef)  ; BufferLoad(srv,index,wot)
  %5934 = extractvalue %dx.types.ResRet.i32 %5933, 0
  %5935 = extractvalue %dx.types.ResRet.i32 %5933, 1
  br label %5936

; <label>:5936                                    ; preds = %5929, %5923
  %5937 = phi i32 [ %5934, %5929 ], [ %5845, %5923 ]
  %5938 = phi i32 [ %5935, %5929 ], [ %5846, %5923 ]
  store i32 %5937, i32* %5927, align 4
  store i32 %5938, i32* %5928, align 4
  %5939 = add i32 %5896, 1
  br label %5940

; <label>:5940                                    ; preds = %5936, %5895
  %5941 = phi i32 [ %5896, %5895 ], [ %5939, %5936 ]
  %5942 = add nuw i32 %5897, 1
  %5943 = icmp eq i32 %5942, %5892
  br i1 %5943, label %5944, label %5895

; <label>:5944                                    ; preds = %5940
  br label %5945

; <label>:5945                                    ; preds = %5944, %5889
  %5946 = phi i32 [ %5890, %5889 ], [ %5941, %5944 ]
  %5947 = icmp eq i32 %5946, 1
  %5948 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %5949 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %5947, label %5950, label %5953

; <label>:5950                                    ; preds = %5945
  %5951 = load float, float* %5948, align 4
  %5952 = load float, float* %5949, align 4
  br label %5980

; <label>:5953                                    ; preds = %5945
  %5954 = load float, float* %5948, align 4
  %5955 = load float, float* %5949, align 4
  %5956 = fdiv fast float 1.000000e+00, %5955
  %5957 = fsub fast float %5954, %5956
  %5958 = icmp ugt i32 %5946, 1
  br i1 %5958, label %5959, label %5975

; <label>:5959                                    ; preds = %5953
  br label %5960

; <label>:5960                                    ; preds = %5960, %5959
  %5961 = phi float [ %5970, %5960 ], [ %5957, %5959 ]
  %5962 = phi float [ %5971, %5960 ], [ %5954, %5959 ]
  %5963 = phi i32 [ %5972, %5960 ], [ 1, %5959 ]
  %5964 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5963
  %5965 = load float, float* %5964, align 4
  %5966 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5963
  %5967 = load float, float* %5966, align 4
  %5968 = fdiv fast float 1.000000e+00, %5967
  %5969 = fsub fast float %5965, %5968
  %5970 = call float @dx.op.binary.f32(i32 36, float %5961, float %5969)  ; FMin(a,b)
  %5971 = call float @dx.op.binary.f32(i32 35, float %5962, float %5965)  ; FMax(a,b)
  %5972 = add nuw i32 %5963, 1
  %5973 = icmp eq i32 %5972, %5946
  br i1 %5973, label %5974, label %5960

; <label>:5974                                    ; preds = %5960
  br label %5975

; <label>:5975                                    ; preds = %5974, %5953
  %5976 = phi float [ %5957, %5953 ], [ %5970, %5974 ]
  %5977 = phi float [ %5954, %5953 ], [ %5971, %5974 ]
  %5978 = fsub fast float %5977, %5976
  %5979 = fdiv fast float 1.000000e+00, %5978
  br label %5980

; <label>:5980                                    ; preds = %5975, %5950
  %5981 = phi float [ %5951, %5950 ], [ %5977, %5975 ]
  %5982 = phi float [ %5952, %5950 ], [ %5979, %5975 ]
  %5983 = fadd fast float %5684, %5981
  %5984 = fmul fast float %5983, %5982
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = fmul fast float %5985, 2.000000e+00
  %5987 = fsub fast float 1.000000e+00, %5986
  %5988 = fmul fast float %5822, %5822
  %5989 = fsub fast float %5823, %5988
  %5990 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5989)  ; FMax(a,b)
  %5991 = fdiv fast float 1.000000e+00, %5990
  %5992 = fmul fast float %5823, %5822
  %5993 = fsub fast float %5824, %5992
  %5994 = fsub fast float %5987, %5822
  %5995 = fmul fast float %5987, %5987
  %5996 = fsub fast float %5995, %5823
  %5997 = fmul fast float %5991, %5993
  %5998 = fmul fast float %5997, %5994
  %5999 = fsub fast float %5996, %5998
  %6000 = fmul fast float %5823, %5823
  %6001 = fsub fast float %5825, %6000
  %6002 = fmul fast float %5993, %5993
  %6003 = fmul fast float %6002, %5991
  %6004 = fsub fast float %6001, %6003
  %6005 = fdiv fast float %5999, %6004
  %6006 = fmul fast float %6005, %5993
  %6007 = fsub fast float %5994, %6006
  %6008 = fmul fast float %6007, %5991
  %6009 = fmul fast float %6008, %5822
  %6010 = fsub fast float 1.000000e+00, %6009
  %6011 = fmul fast float %6005, %5823
  %6012 = fsub fast float %6010, %6011
  %6013 = fmul fast float %6008, %6008
  %6014 = fmul fast float %6005, 4.000000e+00
  %6015 = fmul fast float %6014, %6012
  %6016 = fsub fast float %6013, %6015
  %6017 = call float @dx.op.unary.f32(i32 24, float %6016)  ; Sqrt(value)
  %6018 = fcmp fast oge float %6008, 0.000000e+00
  %6019 = fsub fast float -0.000000e+00, %6017
  %6020 = select i1 %6018, float %6019, float %6017
  %6021 = fsub fast float %6020, %6008
  %6022 = fdiv fast float %6021, %6005
  %6023 = fdiv fast float %6012, %6021
  %6024 = fmul fast float %6022, 5.000000e-01
  %6025 = fmul fast float %6023, 2.000000e+00
  %6026 = select i1 %6018, float %6024, float %6025
  %6027 = select i1 %6018, float %6025, float %6024
  %6028 = call float @dx.op.binary.f32(i32 35, float %6026, float %6027)  ; FMax(a,b)
  %6029 = call float @dx.op.binary.f32(i32 36, float %6026, float %6027)  ; FMin(a,b)
  %6030 = fcmp fast ogt float %5987, %6028
  %6031 = fsub fast float %5987, %6029
  %6032 = fsub fast float %5987, %6028
  %6033 = fsub fast float %6028, %6029
  %6034 = select i1 %6030, float %6032, float %6033
  %6035 = fmul float %6031, %6034
  %6036 = select i1 %6030, float %6029, float %5987
  %6037 = fcmp fast ogt float %5987, %6029
  %6038 = fmul fast float %6036, %6028
  %6039 = fadd fast float %6036, %6028
  %6040 = fmul fast float %6039, %5822
  %6041 = fadd fast float %6038, %5823
  %6042 = fsub fast float %6041, %6040
  %6043 = fdiv fast float %6042, %6035
  %6044 = select i1 %6037, float %6043, float 0.000000e+00
  %6045 = fsub fast float 1.000000e+00, %6044
  %6046 = select i1 %6030, float %6045, float %6044
  %6047 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  %6048 = extractvalue %dx.types.CBufRet.f32 %5807, 3
  %6049 = fmul fast float %6048, %6047
  %6050 = fsub fast float 1.000000e+00, %6049
  br label %6051

; <label>:6051                                    ; preds = %5980, %5692, %5657, %5653, %5617
  %6052 = phi float [ 1.000000e+00, %5617 ], [ %6050, %5980 ], [ 1.000000e+00, %5657 ], [ 1.000000e+00, %5692 ], [ 1.000000e+00, %5653 ]
  %6053 = fcmp fast ogt float %5649, 0.000000e+00
  br i1 %6053, label %6054, label %6062, !dx.controlflow.hints !111

; <label>:6054                                    ; preds = %6051
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 2
  %6057 = fadd fast float %6056, %5530
  %6058 = call float @dx.op.binary.f32(i32 35, float %6057, float 0.000000e+00)  ; FMax(a,b)
  %6059 = fadd fast float %6058, 0x3F10000000000000
  %6060 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %5548, float %5549, float undef, float undef, i32 0, i32 0, i32 undef, float %6059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  br label %6062

; <label>:6062                                    ; preds = %6054, %6051
  %6063 = phi float [ %6061, %6054 ], [ 1.000000e+00, %6051 ]
  %6064 = fcmp fast ogt float %5647, 0.000000e+00
  br i1 %6064, label %6065, label %6073, !dx.controlflow.hints !112

; <label>:6065                                    ; preds = %6062
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6068 = fadd fast float %6067, %5530
  %6069 = call float @dx.op.binary.f32(i32 35, float %6068, float 0.000000e+00)  ; FMax(a,b)
  %6070 = fadd fast float %6069, 0x3F10000000000000
  %6071 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %5540, float %5541, float undef, float undef, i32 0, i32 0, i32 undef, float %6070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6072 = extractvalue %dx.types.ResRet.f32 %6071, 0
  br label %6073

; <label>:6073                                    ; preds = %6065, %6062
  %6074 = phi float [ %6072, %6065 ], [ 1.000000e+00, %6062 ]
  %6075 = fcmp fast ogt float %5646, 0.000000e+00
  br i1 %6075, label %6076, label %6088, !dx.controlflow.hints !113

; <label>:6076                                    ; preds = %6073
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6079 = fadd fast float %6078, %5530
  %6080 = call float @dx.op.binary.f32(i32 35, float %6079, float 0.000000e+00)  ; FMax(a,b)
  %6081 = fadd fast float %6080, 0x3F10000000000000
  br i1 %5533, label %6082, label %6085, !dx.controlflow.hints !114

; <label>:6082                                    ; preds = %6076
  %6083 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %5522, float %5526, float undef, float undef, i32 0, i32 0, i32 undef, float %6081)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  br label %6088

; <label>:6085                                    ; preds = %6076
  %6086 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %5522, float %5526, float undef, float undef, i32 0, i32 0, i32 undef, float %6081)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6087 = extractvalue %dx.types.ResRet.f32 %6086, 0
  br label %6088

; <label>:6088                                    ; preds = %6085, %6082, %6073
  %6089 = phi float [ %6084, %6082 ], [ %6087, %6085 ], [ 1.000000e+00, %6073 ]
  %6090 = fsub fast float %6063, %6052
  %6091 = fmul fast float %6090, %5619
  %6092 = fadd fast float %6091, %6052
  %6093 = fsub fast float %6074, %6092
  %6094 = fmul fast float %6093, %5618
  %6095 = fadd fast float %6094, %6092
  %6096 = fsub fast float %6089, %6095
  %6097 = fmul fast float %6096, %5646
  %6098 = fadd fast float %6097, %6095
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6101 = fcmp fast ogt float %6100, 0.000000e+00
  br i1 %6101, label %6102, label %6142, !dx.controlflow.hints !115

; <label>:6102                                    ; preds = %6088
  %6103 = fcmp fast ugt float %6100, 0.000000e+00
  br i1 %6103, label %6104, label %6139

; <label>:6104                                    ; preds = %6102
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 0
  %6107 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6108 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6109 = extractvalue %dx.types.CBufRet.f32 %6105, 3
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6113 = extractvalue %dx.types.CBufRet.f32 %6110, 2
  %6114 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6115 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6120 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6121 = fadd fast float %6118, %5499
  %6122 = fadd fast float %6119, %5500
  %6123 = fadd fast float %6120, %5501
  %6124 = fmul fast float %6121, %6106
  %6125 = call float @dx.op.tertiary.f32(i32 46, float %6107, float %6122, float %6124)  ; FMad(a,b,c)
  %6126 = call float @dx.op.tertiary.f32(i32 46, float %6108, float %6123, float %6125)  ; FMad(a,b,c)
  %6127 = fadd fast float %6126, %6109
  %6128 = fmul fast float %6121, %6111
  %6129 = call float @dx.op.tertiary.f32(i32 46, float %6112, float %6122, float %6128)  ; FMad(a,b,c)
  %6130 = call float @dx.op.tertiary.f32(i32 46, float %6113, float %6123, float %6129)  ; FMad(a,b,c)
  %6131 = fadd fast float %6130, %6114
  %6132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %6127, float %6131, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6133 = extractvalue %dx.types.ResRet.f32 %6132, 0
  %6134 = fmul fast float %6133, %6116
  %6135 = fadd fast float %6134, %6115
  %6136 = call float @dx.op.unary.f32(i32 7, float %6135)  ; Saturate(value)
  %6137 = fmul fast float %6136, %6100
  %6138 = fsub fast float 1.000000e+00, %6137
  br label %6139

; <label>:6139                                    ; preds = %6104, %6102
  %6140 = phi float [ %6138, %6104 ], [ 1.000000e+00, %6102 ]
  %6141 = fmul fast float %6140, %6098
  br label %6142

; <label>:6142                                    ; preds = %6139, %6088, %5479
  %6143 = phi float [ 1.000000e+00, %5479 ], [ %6141, %6139 ], [ %6098, %6088 ]
  %6144 = call float @dx.op.binary.f32(i32 36, float %6143, float %6143)  ; FMin(a,b)
  %6145 = call float @dx.op.binary.f32(i32 36, float %6143, float %6144)  ; FMin(a,b)
  %6146 = fcmp fast ogt float %6145, 0.000000e+00
  br i1 %6146, label %6147, label %6307, !dx.controlflow.hints !116

; <label>:6147                                    ; preds = %6142
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6152 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6155 = extractvalue %dx.types.CBufRet.f32 %6153, 1
  %6156 = extractvalue %dx.types.CBufRet.f32 %6153, 2
  %6157 = extractvalue %dx.types.CBufRet.f32 %6153, 3
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6161 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6162 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6163 = fmul fast float %6149, %5499
  %6164 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %6150, float %6163)  ; FMad(a,b,c)
  %6165 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %6151, float %6164)  ; FMad(a,b,c)
  %6166 = fadd fast float %6165, %6152
  %6167 = fmul fast float %6154, %5499
  %6168 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %6155, float %6167)  ; FMad(a,b,c)
  %6169 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %6156, float %6168)  ; FMad(a,b,c)
  %6170 = fadd fast float %6169, %6157
  %6171 = fmul fast float %6159, %5499
  %6172 = call float @dx.op.tertiary.f32(i32 46, float %5500, float %6160, float %6171)  ; FMad(a,b,c)
  %6173 = call float @dx.op.tertiary.f32(i32 46, float %5501, float %6161, float %6172)  ; FMad(a,b,c)
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.f32 %6174, 1
  %6177 = extractvalue %dx.types.CBufRet.f32 %6174, 3
  %6178 = fmul fast float %6177, %6166
  %6179 = fmul fast float %6177, %6170
  %6180 = fadd fast float %6178, %6175
  %6181 = fadd fast float %6179, %6176
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6184 = extractvalue %dx.types.CBufRet.f32 %6182, 1
  %6185 = fsub fast float %6180, %6183
  %6186 = fsub fast float %6181, %6184
  %6187 = fcmp fast olt float %6185, 0.000000e+00
  %6188 = fcmp fast olt float %6186, 0.000000e+00
  %6189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6189, 0
  %6191 = extractvalue %dx.types.CBufRet.f32 %6189, 1
  %6192 = extractvalue %dx.types.CBufRet.f32 %6189, 2
  %6193 = extractvalue %dx.types.CBufRet.f32 %6189, 3
  %6194 = select i1 %6187, float %6190, float %6192
  %6195 = select i1 %6188, float %6191, float %6193
  %6196 = fmul fast float %6194, %6185
  %6197 = fmul fast float %6195, %6186
  %6198 = call float @dx.op.unary.f32(i32 6, float %6196)  ; FAbs(value)
  %6199 = call float @dx.op.unary.f32(i32 6, float %6197)  ; FAbs(value)
  %6200 = extractvalue %dx.types.CBufRet.f32 %5494, 0
  %6201 = call float @dx.op.binary.f32(i32 35, float %6198, float %6199)  ; FMax(a,b)
  %6202 = fsub fast float %6200, %6201
  %6203 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6204 = fcmp fast ogt float %6203, 0.000000e+00
  br i1 %6204, label %6205, label %6246, !dx.controlflow.hints !117

; <label>:6205                                    ; preds = %6147
  %6206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %6180, float %6181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6208 = fcmp fast ogt float %6207, 0.000000e+00
  br i1 %6208, label %6209, label %6241

; <label>:6209                                    ; preds = %6205
  %6210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %6180, float %6181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6211 = extractvalue %dx.types.ResRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.ResRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.ResRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.ResRet.f32 %6210, 3
  %6215 = fsub fast float 1.000000e+00, %6162
  %6216 = fsub fast float %6215, %6173
  %6217 = fmul fast float %6216, 0x400921FB60000000
  %6218 = fadd fast float %6217, 0x3FF921FB60000000
  %6219 = call float @dx.op.unary.f32(i32 13, float %6218)  ; Sin(value)
  %6220 = fadd fast float %6219, -1.000000e+00
  %6221 = fmul fast float %6220, 0x3FD45F3060000000
  %6222 = fmul fast float %6216, 0x401921FB60000000
  %6223 = fadd fast float %6222, 0x400921FB60000000
  %6224 = call float @dx.op.unary.f32(i32 13, float %6223)  ; Sin(value)
  %6225 = fadd fast float %6224, 0x3E7777A5C0000000
  %6226 = fmul fast float %6225, 0x3FC45F3060000000
  %6227 = fmul fast float %6216, 0x4022D97C80000000
  %6228 = fadd fast float %6227, 0x4012D97C80000000
  %6229 = call float @dx.op.unary.f32(i32 13, float %6228)  ; Sin(value)
  %6230 = fadd fast float %6229, 1.000000e+00
  %6231 = fmul fast float %6230, 0x3FBB2995E0000000
  %6232 = fmul fast float %6216, 0x402921FB60000000
  %6233 = fadd fast float %6232, 0x401921FB60000000
  %6234 = call float @dx.op.unary.f32(i32 13, float %6233)  ; Sin(value)
  %6235 = fadd fast float %6234, 0xBE8777A5C0000000
  %6236 = fmul fast float %6235, 0x3FB45F3060000000
  %6237 = call float @dx.op.dot4.f32(i32 56, float %6211, float %6212, float %6213, float %6214, float %6221, float %6226, float %6231, float %6236)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6238 = fmul fast float %6237, 0xBFF7154760000000
  %6239 = call float @dx.op.unary.f32(i32 21, float %6238)  ; Exp(value)
  %6240 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  br label %6241

; <label>:6241                                    ; preds = %6209, %6205
  %6242 = phi float [ %6240, %6209 ], [ 1.000000e+00, %6205 ]
  %6243 = fadd fast float %6242, -1.000000e+00
  %6244 = fmul fast float %6243, %6203
  %6245 = fadd fast float %6244, 1.000000e+00
  br label %6246

; <label>:6246                                    ; preds = %6241, %6147
  %6247 = phi float [ %6245, %6241 ], [ 1.000000e+00, %6147 ]
  %6248 = fmul fast float %6247, %6143
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6253 = fadd fast float %6250, %189
  %6254 = fadd fast float %6251, %190
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 1
  %6257 = fsub fast float -0.000000e+00, %6253
  %6258 = fsub fast float -0.000000e+00, %6254
  %6259 = fsub fast float %5285, %6252
  %6260 = fadd fast float %6259, %6256
  %6261 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6257, float %6258, float %6260)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5480, float %5481, float %5482)  ; Dot3(ax,ay,az,bx,by,bz)
  %6263 = fdiv fast float 1.000000e+00, %6262
  %6264 = fmul fast float %6263, %6261
  %6265 = fmul fast float %5480, %6264
  %6266 = fmul fast float %5481, %6264
  %6267 = fadd fast float %6265, %6253
  %6268 = fadd fast float %6266, %6254
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6272 = fsub fast float %6267, %6270
  %6273 = fsub fast float %6268, %6271
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6276 = extractvalue %dx.types.CBufRet.f32 %6274, 3
  %6277 = fmul fast float %6272, %6275
  %6278 = fmul fast float %6273, %6276
  %6279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.i32 %6279, 3
  %6281 = icmp eq i32 %6280, 0
  br i1 %6281, label %6287, label %6282

; <label>:6282                                    ; preds = %6246
  %6283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %6277, float %6278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6284 = extractvalue %dx.types.ResRet.f32 %6283, 0
  %6285 = extractvalue %dx.types.ResRet.f32 %6283, 1
  %6286 = extractvalue %dx.types.ResRet.f32 %6283, 2
  br label %6292

; <label>:6287                                    ; preds = %6246
  %6288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %6277, float %6278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6289 = extractvalue %dx.types.ResRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.ResRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.ResRet.f32 %6288, 2
  br label %6292

; <label>:6292                                    ; preds = %6287, %6282
  %6293 = phi float [ %6284, %6282 ], [ %6289, %6287 ]
  %6294 = phi float [ %6285, %6282 ], [ %6290, %6287 ]
  %6295 = phi float [ %6286, %6282 ], [ %6291, %6287 ]
  %6296 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6297 = fmul fast float %6296, %6293
  %6298 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6299 = fsub fast float %6264, %6298
  %6300 = fsub fast float %6299, %6297
  %6301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6300)  ; FMax(a,b)
  %6302 = fmul fast float %6301, %6294
  %6303 = call float @dx.op.binary.f32(i32 36, float %6295, float %6302)  ; FMin(a,b)
  %6304 = fmul fast float %6303, 0xBFF7154760000000
  %6305 = call float @dx.op.unary.f32(i32 21, float %6304)  ; Exp(value)
  %6306 = fmul fast float %6248, %6305
  br label %6307

; <label>:6307                                    ; preds = %6292, %6142
  %6308 = phi float [ %6306, %6292 ], [ %6143, %6142 ]
  %6309 = call float @dx.op.binary.f32(i32 36, float %6308, float %6308)  ; FMin(a,b)
  %6310 = call float @dx.op.binary.f32(i32 36, float %6308, float %6309)  ; FMin(a,b)
  %6311 = fcmp fast ogt float %6310, 0.000000e+00
  br i1 %6311, label %6312, label %6506, !dx.controlflow.hints !118

; <label>:6312                                    ; preds = %6307
  %6313 = fmul fast float %6308, %5491
  %6314 = fmul fast float %6308, %5492
  %6315 = fmul fast float %6308, %5493
  %6316 = fsub fast float %191, %4462
  %6317 = fcmp fast ogt float %6316, 0.000000e+00
  %6318 = fmul fast float %5480, 5.120000e+02
  %6319 = fmul fast float %5481, 5.120000e+02
  %6320 = fmul fast float %5482, 5.120000e+02
  %6321 = fadd fast float %6320, %191
  %6322 = fsub fast float %4462, %6321
  %6323 = fmul fast float %6322, 2.000000e+00
  %6324 = fadd fast float %6323, %6321
  %6325 = select i1 %6317, float %6324, float %6321
  %6326 = fsub fast float %6325, %191
  %6327 = call float @dx.op.dot3.f32(i32 55, float %6318, float %6319, float %6326, float %6318, float %6319, float %6326)  ; Dot3(ax,ay,az,bx,by,bz)
  %6328 = call float @dx.op.unary.f32(i32 25, float %6327)  ; Rsqrt(value)
  %6329 = fmul fast float %6328, %6318
  %6330 = fmul fast float %6328, %6319
  %6331 = fmul fast float %6328, %6326
  %6332 = fsub fast float %4462, %191
  %6333 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6332)  ; Dot3(ax,ay,az,bx,by,bz)
  %6334 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6329, float %6330, float %6331)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = fdiv fast float 1.000000e+00, %6334
  %6336 = fmul fast float %6335, %6333
  %6337 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6316, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6338 = fcmp fast ogt float %6337, 0.000000e+00
  %6339 = fcmp fast olt float %6337, 0.000000e+00
  %6340 = zext i1 %6338 to i32
  %6341 = zext i1 %6339 to i32
  %6342 = sub nsw i32 %6340, %6341
  %6343 = sitofp i32 %6342 to float
  %6344 = fsub fast float %6325, %4462
  %6345 = call float @dx.op.dot3.f32(i32 55, float %6318, float %6319, float %6344, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6346 = fcmp fast ogt float %6345, 0.000000e+00
  %6347 = fcmp fast olt float %6345, 0.000000e+00
  %6348 = zext i1 %6346 to i32
  %6349 = zext i1 %6347 to i32
  %6350 = sub nsw i32 %6348, %6349
  %6351 = sitofp i32 %6350 to float
  %6352 = fcmp fast une float %6343, %6351
  br i1 %6352, label %6353, label %6363

; <label>:6353                                    ; preds = %6312
  %6354 = fmul fast float %6336, %6331
  %6355 = fmul fast float %6336, %6330
  %6356 = fmul fast float %6336, %6329
  %6357 = fmul fast float %6356, %6356
  %6358 = fmul fast float %6355, %6355
  %6359 = fadd fast float %6357, %6358
  %6360 = fmul fast float %6354, %6354
  %6361 = fadd fast float %6359, %6360
  %6362 = call float @dx.op.unary.f32(i32 24, float %6361)  ; Sqrt(value)
  br label %6373

; <label>:6363                                    ; preds = %6312
  %6364 = icmp slt i32 %6342, 0
  br i1 %6364, label %6365, label %6373

; <label>:6365                                    ; preds = %6363
  %6366 = fsub fast float %191, %6325
  %6367 = fmul fast float %6318, %6318
  %6368 = fmul fast float %6319, %6319
  %6369 = fadd fast float %6367, %6368
  %6370 = fmul fast float %6366, %6366
  %6371 = fadd fast float %6369, %6370
  %6372 = call float @dx.op.unary.f32(i32 24, float %6371)  ; Sqrt(value)
  br label %6373

; <label>:6373                                    ; preds = %6365, %6363, %6353
  %6374 = phi float [ %6362, %6353 ], [ %6372, %6365 ], [ 0.000000e+00, %6363 ]
  %6375 = fsub fast float -0.000000e+00, %6374
  %6376 = select i1 %6317, float -0.000000e+00, float %6375
  %6377 = fmul fast float %4463, 0x3FF7154760000000
  %6378 = fmul fast float %6377, %6376
  %6379 = fmul fast float %4464, 0x3FF7154760000000
  %6380 = fmul fast float %6379, %6376
  %6381 = fmul fast float %4465, 0x3FF7154760000000
  %6382 = fmul fast float %6381, %6376
  %6383 = call float @dx.op.unary.f32(i32 21, float %6378)  ; Exp(value)
  %6384 = call float @dx.op.unary.f32(i32 21, float %6380)  ; Exp(value)
  %6385 = call float @dx.op.unary.f32(i32 21, float %6382)  ; Exp(value)
  %6386 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  %6387 = call float @dx.op.unary.f32(i32 7, float %6384)  ; Saturate(value)
  %6388 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6389 = fmul fast float %6313, %6386
  %6390 = fmul fast float %6314, %6387
  %6391 = fmul fast float %6315, %6388
  %6392 = fsub fast float %5480, %5288
  %6393 = fsub fast float %5481, %5289
  %6394 = fsub fast float %5482, %5290
  %6395 = call float @dx.op.dot3.f32(i32 55, float %6392, float %6393, float %6394, float %6392, float %6393, float %6394)  ; Dot3(ax,ay,az,bx,by,bz)
  %6396 = call float @dx.op.unary.f32(i32 25, float %6395)  ; Rsqrt(value)
  %6397 = fmul fast float %6396, %6392
  %6398 = fmul fast float %6396, %6393
  %6399 = fmul fast float %6396, %6394
  %6400 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5245, float %5246, float %5247)  ; Dot3(ax,ay,az,bx,by,bz)
  %6401 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %6397, float %6398, float %6399)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = call float @dx.op.unary.f32(i32 7, float %6400)  ; Saturate(value)
  %6403 = fmul fast float %6402, %6402
  %6404 = fmul fast float %6403, %5309
  %6405 = call float @dx.op.unary.f32(i32 7, float %6404)  ; Saturate(value)
  %6406 = fmul fast float %6405, %6402
  %6407 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float %6397, float %6398, float %6399)  ; Dot3(ax,ay,az,bx,by,bz)
  %6408 = fmul fast float %6407, %6407
  %6409 = call float @dx.op.unary.f32(i32 6, float %6400)  ; FAbs(value)
  %6410 = fsub fast float 1.000000e+00, %5251
  %6411 = call float @dx.op.binary.f32(i32 35, float %6410, float 0x3F847AE140000000)  ; FMax(a,b)
  %6412 = fmul fast float %6411, %6411
  %6413 = fmul fast float %6412, %6412
  %6414 = fsub fast float 1.000000e+00, %6413
  %6415 = fmul fast float %5296, %5296
  %6416 = fmul fast float %6415, %6414
  %6417 = fadd fast float %6416, %6413
  %6418 = bitcast float %6417 to i32
  %6419 = ashr i32 %6418, 1
  %6420 = add nsw i32 %6419, 532487669
  %6421 = bitcast i32 %6420 to float
  %6422 = fadd fast float %6421, %5296
  %6423 = fmul fast float %6413, %6408
  %6424 = fsub fast float 1.000000e+00, %6408
  %6425 = fadd fast float %6424, %6423
  %6426 = fmul fast float %6409, %6409
  %6427 = fmul fast float %6426, %6414
  %6428 = fadd fast float %6427, %6413
  %6429 = bitcast float %6428 to i32
  %6430 = ashr i32 %6429, 1
  %6431 = add nsw i32 %6430, 532487669
  %6432 = bitcast i32 %6431 to float
  %6433 = fadd fast float %6432, %6409
  %6434 = fmul fast float %6425, %6425
  %6435 = fmul fast float %6434, %6422
  %6436 = fmul fast float %6435, %6433
  %6437 = fdiv fast float 0x3FF0A00000000000, %6436
  %6438 = fmul fast float %6437, %6413
  %6439 = fmul fast float %5409, 0x3FF9999980000000
  %6440 = fsub fast float 5.000000e+00, %6439
  %6441 = call float @dx.op.unary.f32(i32 6, float %6401)  ; FAbs(value)
  %6442 = fsub fast float 1.000000e+00, %6441
  %6443 = fmul fast float %5409, 0x41D9660740000000
  %6444 = fadd fast float %6443, 0xC1EFBF8940000000
  %6445 = bitcast float %6442 to i32
  %6446 = sitofp i32 %6445 to float
  %6447 = fmul fast float %6446, %6440
  %6448 = fadd fast float %6444, %6447
  %6449 = fptosi float %6448 to i32
  %6450 = bitcast i32 %6449 to float
  %6451 = fsub fast float 1.000000e+00, %5242
  %6452 = fsub fast float 1.000000e+00, %5243
  %6453 = fsub fast float 1.000000e+00, %5294
  %6454 = fmul fast float %6450, %6451
  %6455 = fmul fast float %6450, %6452
  %6456 = fmul fast float %6450, %6453
  %6457 = fadd fast float %6454, %5242
  %6458 = fadd fast float %6455, %5243
  %6459 = fadd fast float %6456, %5294
  %6460 = fmul fast float %6400, 9.843750e-01
  %6461 = fadd fast float %6460, 7.812500e-03
  %6462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %6461, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6463 = extractvalue %dx.types.ResRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.ResRet.f32 %6462, 1
  %6465 = extractvalue %dx.types.ResRet.f32 %6462, 2
  %6466 = extractvalue %dx.types.ResRet.f32 %6462, 3
  %6467 = fsub fast float %6465, %6463
  %6468 = fsub fast float %6466, %6464
  %6469 = fmul fast float %6467, %5419
  %6470 = fmul fast float %6468, %5419
  %6471 = fadd fast float %6469, %6463
  %6472 = fadd fast float %6470, %6464
  %6473 = fmul fast float %6471, %5242
  %6474 = fmul fast float %6471, %5243
  %6475 = fmul fast float %6471, %5294
  %6476 = fadd fast float %6473, %6472
  %6477 = fadd fast float %6474, %6472
  %6478 = fadd fast float %6475, %6472
  %6479 = call float @dx.op.binary.f32(i32 35, float %6477, float %6478)  ; FMax(a,b)
  %6480 = call float @dx.op.binary.f32(i32 35, float %6476, float %6479)  ; FMax(a,b)
  %6481 = fsub fast float 1.000000e+00, %6480
  %6482 = fmul fast float %6406, %6389
  %6483 = fmul fast float %6482, %6481
  %6484 = fmul fast float %6406, %6390
  %6485 = fmul fast float %6484, %6481
  %6486 = fmul fast float %6406, %6391
  %6487 = fmul fast float %6486, %6481
  %6488 = fmul fast float %6482, %6438
  %6489 = fmul fast float %6488, %6457
  %6490 = fmul fast float %6484, %6438
  %6491 = fmul fast float %6490, %6458
  %6492 = fmul fast float %6486, %6438
  %6493 = fmul fast float %6492, %6459
  %6494 = fadd fast float %6483, %5435
  %6495 = fmul fast float %6494, %1334
  %6496 = fadd fast float %6485, %5436
  %6497 = fmul fast float %6496, %1334
  %6498 = fadd fast float %6487, %5437
  %6499 = fmul fast float %6498, %1334
  %6500 = fadd fast float %6489, %5470
  %6501 = fmul fast float %6500, %1334
  %6502 = fadd fast float %6491, %5472
  %6503 = fmul fast float %6502, %1334
  %6504 = fadd fast float %6493, %5474
  %6505 = fmul fast float %6504, %1334
  br label %6506

; <label>:6506                                    ; preds = %6373, %6307, %5284
  %6507 = phi float [ %5471, %5284 ], [ %5471, %6307 ], [ %6501, %6373 ]
  %6508 = phi float [ %5473, %5284 ], [ %5473, %6307 ], [ %6503, %6373 ]
  %6509 = phi float [ %5475, %5284 ], [ %5475, %6307 ], [ %6505, %6373 ]
  %6510 = phi float [ %5467, %5284 ], [ %5467, %6307 ], [ %6495, %6373 ]
  %6511 = phi float [ %5468, %5284 ], [ %5468, %6307 ], [ %6497, %6373 ]
  %6512 = phi float [ %5469, %5284 ], [ %5469, %6307 ], [ %6499, %6373 ]
  %6513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.i32 %6513, 0
  %6515 = icmp eq i32 %6514, 0
  br i1 %6515, label %7079, label %6516

; <label>:6516                                    ; preds = %6506
  %6517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.f32 %6517, 2
  %6519 = extractvalue %dx.types.CBufRet.f32 %6517, 3
  %6520 = fmul fast float %6518, %102
  %6521 = fmul fast float %6519, %103
  %6522 = fptoui float %6520 to i32
  %6523 = fptoui float %6521 to i32
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6527 = extractvalue %dx.types.CBufRet.f32 %6524, 3
  %6528 = fadd fast float %93, -4.000000e+00
  %6529 = call float @dx.op.binary.f32(i32 35, float %6528, float 0.000000e+00)  ; FMax(a,b)
  %6530 = fadd fast float %6529, %6525
  %6531 = fmul fast float %6530, %6526
  %6532 = call float @dx.op.unary.f32(i32 23, float %6531)  ; Log(value)
  %6533 = fmul fast float %6532, %6527
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 2
  %6536 = fmul fast float %6533, %6535
  %6537 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.i32 %6538, 1
  %6540 = add i32 %6539, -1
  %6541 = uitofp i32 %6539 to float
  %6542 = fmul fast float %6541, %6537
  %6543 = fptoui float %6542 to i32
  %6544 = call i32 @dx.op.binary.i32(i32 40, i32 %6543, i32 %6540)  ; UMin(a,b)
  %6545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.i32 %6545, 2
  %6547 = extractvalue %dx.types.CBufRet.i32 %6545, 3
  %6548 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6523, i32 %6546, i32 %6522)  ; UMad(a,b,c)
  %6549 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6544, i32 %6547, i32 %6548)  ; UMad(a,b,c)
  %6550 = add nsw i32 %6514, -1
  %6551 = call i32 @dx.op.binary.i32(i32 37, i32 %6550, i32 0)  ; IMax(a,b)
  %6552 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %6553 = fptoui float %6552 to i32
  %6554 = lshr i32 %6553, 5
  %6555 = call i32 @dx.op.binary.i32(i32 40, i32 %6554, i32 8191)  ; UMin(a,b)
  %6556 = shl i32 %6555, 2
  %6557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6556, i32 undef)  ; BufferLoad(srv,index,wot)
  %6558 = extractvalue %dx.types.ResRet.i32 %6557, 0
  %6559 = lshr i32 %6558, 16
  %6560 = and i32 %6558, 65535
  %6561 = lshr i32 %6558, 21
  %6562 = lshr i32 %6560, 5
  %6563 = call i32 @dx.op.binary.i32(i32 40, i32 %6562, i32 %6551)  ; UMin(a,b)
  %6564 = icmp ugt i32 %6561, %6563
  br i1 %6564, label %7079, label %6565

; <label>:6565                                    ; preds = %6516
  br label %6566

; <label>:6566                                    ; preds = %7069, %6565
  %6567 = phi i32 [ %7076, %7069 ], [ %6561, %6565 ]
  %6568 = phi float [ %7070, %7069 ], [ %6507, %6565 ]
  %6569 = phi float [ %7071, %7069 ], [ %6508, %6565 ]
  %6570 = phi float [ %7072, %7069 ], [ %6509, %6565 ]
  %6571 = phi float [ %7073, %7069 ], [ %6510, %6565 ]
  %6572 = phi float [ %7074, %7069 ], [ %6511, %6565 ]
  %6573 = phi float [ %7075, %7069 ], [ %6512, %6565 ]
  %6574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.i32 %6574, 0
  %6576 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6549, i32 %6575, i32 %6567)  ; UMad(a,b,c)
  %6577 = shl i32 %6576, 2
  %6578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6577, i32 undef)  ; BufferLoad(srv,index,wot)
  %6579 = extractvalue %dx.types.ResRet.i32 %6578, 0
  %6580 = shl i32 %6567, 5
  %6581 = sub nsw i32 %6559, %6580
  %6582 = call i32 @dx.op.binary.i32(i32 37, i32 %6581, i32 0)  ; IMax(a,b)
  %6583 = call i32 @dx.op.binary.i32(i32 38, i32 %6582, i32 31)  ; IMin(a,b)
  %6584 = sub nsw i32 1, %6559
  %6585 = add nsw i32 %6584, %6560
  %6586 = call i32 @dx.op.binary.i32(i32 37, i32 %6585, i32 0)  ; IMax(a,b)
  %6587 = call i32 @dx.op.binary.i32(i32 38, i32 %6586, i32 32)  ; IMin(a,b)
  %6588 = and i32 %6587, 31
  %6589 = shl i32 -1, %6588
  %6590 = xor i32 %6589, -1
  %6591 = and i32 %6583, 31
  %6592 = shl i32 %6590, %6591
  %6593 = icmp eq i32 %6587, 32
  %6594 = select i1 %6593, i32 -1, i32 %6592
  %6595 = and i32 %6594, %6579
  %6596 = icmp eq i32 %6595, 0
  br i1 %6596, label %7069, label %6597

; <label>:6597                                    ; preds = %6566
  br label %6598

; <label>:6598                                    ; preds = %6732, %6597
  %6599 = phi i32 [ %6610, %6732 ], [ %6595, %6597 ]
  %6600 = phi float [ %6733, %6732 ], [ %6568, %6597 ]
  %6601 = phi float [ %6734, %6732 ], [ %6569, %6597 ]
  %6602 = phi float [ %6735, %6732 ], [ %6570, %6597 ]
  %6603 = phi float [ %6736, %6732 ], [ %6571, %6597 ]
  %6604 = phi float [ %6737, %6732 ], [ %6572, %6597 ]
  %6605 = phi float [ %6738, %6732 ], [ %6573, %6597 ]
  %6606 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6599)  ; FirstbitLo(value)
  %6607 = add i32 %6606, %6580
  %6608 = and i32 %6606, 31
  %6609 = shl i32 1, %6608
  %6610 = xor i32 %6609, %6599
  %6611 = mul i32 %6607, 112
  %6612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6611, i32 undef)  ; BufferLoad(srv,index,wot)
  %6613 = extractvalue %dx.types.ResRet.f32 %6612, 0
  %6614 = extractvalue %dx.types.ResRet.f32 %6612, 1
  %6615 = extractvalue %dx.types.ResRet.f32 %6612, 2
  %6616 = or i32 %6611, 12
  %6617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6616, i32 undef)  ; BufferLoad(srv,index,wot)
  %6618 = extractvalue %dx.types.ResRet.f32 %6617, 0
  %6619 = add i32 %6611, 16
  %6620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6619, i32 undef)  ; BufferLoad(srv,index,wot)
  %6621 = extractvalue %dx.types.ResRet.f32 %6620, 0
  %6622 = extractvalue %dx.types.ResRet.f32 %6620, 1
  %6623 = extractvalue %dx.types.ResRet.f32 %6620, 2
  %6624 = add i32 %6611, 28
  %6625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6624, i32 undef)  ; BufferLoad(srv,index,wot)
  %6626 = extractvalue %dx.types.ResRet.i32 %6625, 0
  %6627 = add i32 %6611, 44
  %6628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6627, i32 undef)  ; BufferLoad(srv,index,wot)
  %6629 = extractvalue %dx.types.ResRet.f32 %6628, 0
  %6630 = add i32 %6611, 48
  %6631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6630, i32 undef)  ; BufferLoad(srv,index,wot)
  %6632 = extractvalue %dx.types.ResRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.ResRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.ResRet.f32 %6631, 2
  %6635 = extractvalue %dx.types.ResRet.f32 %6631, 3
  %6636 = add i32 %6611, 64
  %6637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6636, i32 undef)  ; BufferLoad(srv,index,wot)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.ResRet.f32 %6637, 2
  %6641 = extractvalue %dx.types.ResRet.f32 %6637, 3
  %6642 = add i32 %6611, 80
  %6643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6642, i32 undef)  ; BufferLoad(srv,index,wot)
  %6644 = extractvalue %dx.types.ResRet.f32 %6643, 1
  %6645 = extractvalue %dx.types.ResRet.f32 %6643, 2
  %6646 = add i32 %6611, 92
  %6647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6646, i32 undef)  ; BufferLoad(srv,index,wot)
  %6648 = extractvalue %dx.types.ResRet.i32 %6647, 0
  %6649 = call float @dx.op.dot3.f32(i32 55, float %6613, float %6614, float %6615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6650 = select i1 %261, float %6644, float %6613
  %6651 = select i1 %261, float %6649, float %6614
  %6652 = select i1 %261, float %6645, float %6615
  %6653 = and i32 %6648, 65535
  %6654 = uitofp i32 %6653 to float
  %6655 = lshr i32 %6648, 16
  %6656 = uitofp i32 %6655 to float
  %6657 = and i32 %6626, 65535
  %6658 = and i32 %6626, 50331648
  %6659 = icmp eq i32 %6658, 33554432
  %6660 = fsub fast float %6632, %189
  %6661 = fsub fast float %6633, %190
  %6662 = fsub fast float %6634, %191
  %6663 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6662, float %6660, float %6661, float %6662)  ; Dot3(ax,ay,az,bx,by,bz)
  %6664 = call float @dx.op.unary.f32(i32 24, float %6663)  ; Sqrt(value)
  %6665 = fdiv fast float 1.000000e+00, %6664
  %6666 = fmul fast float %6665, %6660
  %6667 = fmul fast float %6665, %6661
  %6668 = fmul fast float %6665, %6662
  %6669 = fadd fast float %6664, %6618
  %6670 = fdiv fast float 1.000000e+00, %6669
  %6671 = fmul float %6629, %6670
  %6672 = fmul float %6671, %6671
  %6673 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  br i1 %6659, label %6674, label %6695

; <label>:6674                                    ; preds = %6598
  %6675 = fmul fast float %6640, %6621
  %6676 = fmul fast float %6640, %6622
  %6677 = fmul fast float %6640, %6623
  %6678 = fadd fast float %6660, %6675
  %6679 = fadd fast float %6661, %6676
  %6680 = fadd fast float %6662, %6677
  %6681 = call float @dx.op.dot3.f32(i32 55, float %6678, float %6679, float %6680, float %6678, float %6679, float %6680)  ; Dot3(ax,ay,az,bx,by,bz)
  %6682 = call float @dx.op.unary.f32(i32 25, float %6681)  ; Rsqrt(value)
  %6683 = fmul fast float %6682, %6678
  %6684 = fmul fast float %6682, %6679
  %6685 = fmul fast float %6682, %6680
  %6686 = fsub fast float %189, %6632
  %6687 = fsub fast float %190, %6633
  %6688 = fsub fast float %191, %6634
  %6689 = fsub fast float -0.000000e+00, %6686
  %6690 = fsub fast float -0.000000e+00, %6687
  %6691 = fsub fast float -0.000000e+00, %6688
  %6692 = call float @dx.op.dot3.f32(i32 55, float %6689, float %6690, float %6691, float %6621, float %6622, float %6623)  ; Dot3(ax,ay,az,bx,by,bz)
  %6693 = fcmp fast ogt float %6692, 0.000000e+00
  %6694 = uitofp i1 %6693 to float
  br label %6695

; <label>:6695                                    ; preds = %6674, %6598
  %6696 = phi float [ %6694, %6674 ], [ 1.000000e+00, %6598 ]
  %6697 = phi float [ %6683, %6674 ], [ %6666, %6598 ]
  %6698 = phi float [ %6684, %6674 ], [ %6667, %6598 ]
  %6699 = phi float [ %6685, %6674 ], [ %6668, %6598 ]
  %6700 = call float @dx.op.dot3.f32(i32 55, float %6621, float %6622, float %6623, float %6697, float %6698, float %6699)  ; Dot3(ax,ay,az,bx,by,bz)
  %6701 = fmul fast float %6700, %6700
  %6702 = call float @dx.op.unary.f32(i32 7, float %6701)  ; Saturate(value)
  %6703 = fsub fast float 1.000000e+00, %6702
  %6704 = fmul fast float %6703, 5.000000e-01
  %6705 = fcmp fast ogt float %6700, 0.000000e+00
  %6706 = fsub fast float 1.000000e+00, %6704
  %6707 = select i1 %6705, float %6704, float %6706
  %6708 = fmul fast float %6707, %6656
  %6709 = fadd fast float %6708, %6654
  %6710 = fmul fast float %6709, 0x3EF0001000000000
  %6711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %6710, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6712 = extractvalue %dx.types.ResRet.f32 %6711, 0
  %6713 = fmul fast float %6700, %6638
  %6714 = fadd fast float %6713, %6639
  %6715 = call float @dx.op.unary.f32(i32 7, float %6714)  ; Saturate(value)
  %6716 = select i1 %6659, float 1.000000e+00, float %6715
  %6717 = select i1 %6659, float %6715, float 1.000000e+00
  %6718 = fmul fast float %6664, %6635
  %6719 = fsub fast float 1.000000e+00, %6718
  %6720 = fmul fast float %6719, %6641
  %6721 = call float @dx.op.unary.f32(i32 7, float %6720)  ; Saturate(value)
  %6722 = fmul fast float %6721, %6717
  %6723 = fmul fast float %6722, 2.000000e+00
  %6724 = fsub fast float 3.000000e+00, %6723
  %6725 = fmul fast float %6712, %6696
  %6726 = fmul fast float %6722, %6722
  %6727 = fmul fast float %6726, %6725
  %6728 = fmul fast float %6727, %6724
  %6729 = call float @dx.op.binary.f32(i32 36, float %6728, float %6728)  ; FMin(a,b)
  %6730 = call float @dx.op.binary.f32(i32 36, float %6728, float %6729)  ; FMin(a,b)
  %6731 = fcmp fast ogt float %6730, 0.000000e+00
  br i1 %6731, label %6740, label %6732, !dx.controlflow.hints !119

; <label>:6732                                    ; preds = %6907, %6840, %6695
  %6733 = phi float [ %6600, %6840 ], [ %6600, %6695 ], [ %7065, %6907 ]
  %6734 = phi float [ %6601, %6840 ], [ %6601, %6695 ], [ %7066, %6907 ]
  %6735 = phi float [ %6602, %6840 ], [ %6602, %6695 ], [ %7067, %6907 ]
  %6736 = phi float [ %6603, %6840 ], [ %6603, %6695 ], [ %7056, %6907 ]
  %6737 = phi float [ %6604, %6840 ], [ %6604, %6695 ], [ %7057, %6907 ]
  %6738 = phi float [ %6605, %6840 ], [ %6605, %6695 ], [ %7058, %6907 ]
  %6739 = icmp eq i32 %6599, %6609
  br i1 %6739, label %7068, label %6598

; <label>:6740                                    ; preds = %6695
  %6741 = icmp eq i32 %6657, 255
  br i1 %6741, label %6840, label %6742, !dx.controlflow.hints !120

; <label>:6742                                    ; preds = %6740
  %6743 = mul nuw nsw i32 %6657, 176
  %6744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6743, i32 undef)  ; BufferLoad(srv,index,wot)
  %6745 = extractvalue %dx.types.ResRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.ResRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.ResRet.f32 %6744, 2
  %6748 = extractvalue %dx.types.ResRet.f32 %6744, 3
  %6749 = add nuw nsw i32 %6743, 16
  %6750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6749, i32 undef)  ; BufferLoad(srv,index,wot)
  %6751 = extractvalue %dx.types.ResRet.f32 %6750, 0
  %6752 = extractvalue %dx.types.ResRet.f32 %6750, 1
  %6753 = add nuw nsw i32 %6743, 32
  %6754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6753, i32 undef)  ; BufferLoad(srv,index,wot)
  %6755 = extractvalue %dx.types.ResRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.ResRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.ResRet.f32 %6754, 2
  %6758 = add nuw nsw i32 %6743, 48
  %6759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6758, i32 undef)  ; BufferLoad(srv,index,wot)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.ResRet.f32 %6759, 1
  %6762 = extractvalue %dx.types.ResRet.f32 %6759, 2
  %6763 = extractvalue %dx.types.ResRet.f32 %6759, 3
  %6764 = add nuw nsw i32 %6743, 64
  %6765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6764, i32 undef)  ; BufferLoad(srv,index,wot)
  %6766 = extractvalue %dx.types.ResRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.ResRet.f32 %6765, 1
  %6768 = extractvalue %dx.types.ResRet.f32 %6765, 2
  %6769 = extractvalue %dx.types.ResRet.f32 %6765, 3
  %6770 = add nuw nsw i32 %6743, 80
  %6771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6770, i32 undef)  ; BufferLoad(srv,index,wot)
  %6772 = extractvalue %dx.types.ResRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.ResRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.ResRet.f32 %6771, 2
  %6775 = extractvalue %dx.types.ResRet.f32 %6771, 3
  %6776 = add nuw nsw i32 %6743, 96
  %6777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6776, i32 undef)  ; BufferLoad(srv,index,wot)
  %6778 = extractvalue %dx.types.ResRet.f32 %6777, 0
  %6779 = extractvalue %dx.types.ResRet.f32 %6777, 1
  %6780 = extractvalue %dx.types.ResRet.f32 %6777, 2
  %6781 = extractvalue %dx.types.ResRet.f32 %6777, 3
  %6782 = bitcast float %6752 to i32
  %6783 = fmul fast float %6757, %109
  %6784 = fmul fast float %6757, %110
  %6785 = fmul fast float %6757, %111
  %6786 = fadd fast float %6783, %189
  %6787 = fadd fast float %6784, %190
  %6788 = fadd fast float %6785, %191
  %6789 = fmul fast float %6786, %6760
  %6790 = call float @dx.op.tertiary.f32(i32 46, float %6787, float %6766, float %6789)  ; FMad(a,b,c)
  %6791 = call float @dx.op.tertiary.f32(i32 46, float %6788, float %6772, float %6790)  ; FMad(a,b,c)
  %6792 = fadd fast float %6791, %6778
  %6793 = fmul fast float %6786, %6761
  %6794 = call float @dx.op.tertiary.f32(i32 46, float %6787, float %6767, float %6793)  ; FMad(a,b,c)
  %6795 = call float @dx.op.tertiary.f32(i32 46, float %6788, float %6773, float %6794)  ; FMad(a,b,c)
  %6796 = fadd fast float %6795, %6779
  %6797 = fmul fast float %6786, %6762
  %6798 = call float @dx.op.tertiary.f32(i32 46, float %6787, float %6768, float %6797)  ; FMad(a,b,c)
  %6799 = call float @dx.op.tertiary.f32(i32 46, float %6788, float %6774, float %6798)  ; FMad(a,b,c)
  %6800 = fadd fast float %6799, %6780
  %6801 = fmul fast float %6786, %6763
  %6802 = call float @dx.op.tertiary.f32(i32 46, float %6787, float %6769, float %6801)  ; FMad(a,b,c)
  %6803 = call float @dx.op.tertiary.f32(i32 46, float %6788, float %6775, float %6802)  ; FMad(a,b,c)
  %6804 = fadd fast float %6803, %6781
  %6805 = fdiv fast float %6792, %6804
  %6806 = fdiv fast float %6796, %6804
  %6807 = fdiv fast float %6800, %6804
  %6808 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6807)  ; FMax(a,b)
  %6809 = fmul fast float %272, 0x401921FB60000000
  %6810 = call float @dx.op.unary.f32(i32 13, float %6809)  ; Sin(value)
  %6811 = call float @dx.op.unary.f32(i32 12, float %6809)  ; Cos(value)
  %6812 = fsub fast float -0.000000e+00, %6810
  %6813 = fmul fast float %6747, 5.000000e-01
  %6814 = call float @dx.op.dot2.f32(i32 54, float %272, float %272, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6815 = call float @dx.op.unary.f32(i32 22, float %6814)  ; Frc(value)
  %6816 = fmul fast float %6815, 0x404A7DD040000000
  %6817 = call float @dx.op.unary.f32(i32 22, float %6816)  ; Frc(value)
  %6818 = fmul fast float %6817, %6756
  %6819 = fadd fast float %6818, %6813
  %6820 = call float @dx.op.tertiary.f32(i32 46, float %6819, float %6812, float 0.000000e+00)  ; FMad(a,b,c)
  %6821 = call float @dx.op.tertiary.f32(i32 46, float %6819, float %6811, float 0.000000e+00)  ; FMad(a,b,c)
  %6822 = fadd fast float %6820, %6805
  %6823 = fadd fast float %6821, %6806
  %6824 = fmul fast float %6822, %6751
  %6825 = fmul fast float %6823, %6751
  %6826 = call float @dx.op.binary.f32(i32 35, float %6824, float %6747)  ; FMax(a,b)
  %6827 = call float @dx.op.binary.f32(i32 35, float %6825, float %6747)  ; FMax(a,b)
  %6828 = call float @dx.op.binary.f32(i32 36, float %6826, float %6748)  ; FMin(a,b)
  %6829 = call float @dx.op.binary.f32(i32 36, float %6827, float %6748)  ; FMin(a,b)
  %6830 = fadd fast float %6828, %6745
  %6831 = fadd fast float %6829, %6746
  %6832 = uitofp i32 %6782 to float
  %6833 = fadd fast float %6808, %6755
  %6834 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %47, float %6830, float %6831, float %6832, float undef, i32 0, i32 0, i32 undef, float %6833)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6835 = extractvalue %dx.types.ResRet.f32 %6834, 0
  %6836 = fadd fast float %6835, -1.000000e+00
  %6837 = fmul fast float %6836, %6716
  %6838 = fadd fast float %6837, 1.000000e+00
  %6839 = fmul fast float %6838, %6728
  br label %6840

; <label>:6840                                    ; preds = %6742, %6740
  %6841 = phi float [ %6839, %6742 ], [ %6728, %6740 ]
  %6842 = call float @dx.op.binary.f32(i32 36, float %6841, float %6841)  ; FMin(a,b)
  %6843 = call float @dx.op.binary.f32(i32 36, float %6841, float %6842)  ; FMin(a,b)
  %6844 = fcmp fast ogt float %6843, 0.000000e+00
  br i1 %6844, label %6845, label %6732, !dx.controlflow.hints !121

; <label>:6845                                    ; preds = %6840
  %6846 = fmul fast float %6841, %6650
  %6847 = fmul fast float %6841, %6651
  %6848 = fmul fast float %6841, %6652
  %6849 = fsub fast float %6634, %4462
  %6850 = fcmp fast ogt float %6849, 0.000000e+00
  %6851 = fsub fast float %191, %4462
  %6852 = fcmp fast ogt float %6851, 0.000000e+00
  %6853 = xor i1 %6852, %6850
  %6854 = fsub fast float %4462, %6634
  %6855 = fmul fast float %6854, 2.000000e+00
  %6856 = fadd fast float %6855, %6634
  %6857 = select i1 %6853, float %6634, float %6856
  %6858 = fsub fast float %6857, %191
  %6859 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6858, float %6660, float %6661, float %6858)  ; Dot3(ax,ay,az,bx,by,bz)
  %6860 = call float @dx.op.unary.f32(i32 25, float %6859)  ; Rsqrt(value)
  %6861 = fmul fast float %6860, %6660
  %6862 = fmul fast float %6860, %6661
  %6863 = fmul fast float %6860, %6858
  %6864 = fsub fast float %4462, %191
  %6865 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6864)  ; Dot3(ax,ay,az,bx,by,bz)
  %6866 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6861, float %6862, float %6863)  ; Dot3(ax,ay,az,bx,by,bz)
  %6867 = fdiv fast float 1.000000e+00, %6866
  %6868 = fmul fast float %6867, %6865
  %6869 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6851, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6870 = fcmp fast ogt float %6869, 0.000000e+00
  %6871 = fcmp fast olt float %6869, 0.000000e+00
  %6872 = zext i1 %6870 to i32
  %6873 = zext i1 %6871 to i32
  %6874 = sub nsw i32 %6872, %6873
  %6875 = sitofp i32 %6874 to float
  %6876 = fsub fast float %6857, %4462
  %6877 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6876, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6878 = fcmp fast ogt float %6877, 0.000000e+00
  %6879 = fcmp fast olt float %6877, 0.000000e+00
  %6880 = zext i1 %6878 to i32
  %6881 = zext i1 %6879 to i32
  %6882 = sub nsw i32 %6880, %6881
  %6883 = sitofp i32 %6882 to float
  %6884 = fcmp fast une float %6875, %6883
  br i1 %6884, label %6885, label %6895

; <label>:6885                                    ; preds = %6845
  %6886 = fmul fast float %6868, %6863
  %6887 = fmul fast float %6868, %6862
  %6888 = fmul fast float %6868, %6861
  %6889 = fmul fast float %6888, %6888
  %6890 = fmul fast float %6887, %6887
  %6891 = fadd fast float %6889, %6890
  %6892 = fmul fast float %6886, %6886
  %6893 = fadd fast float %6891, %6892
  %6894 = call float @dx.op.unary.f32(i32 24, float %6893)  ; Sqrt(value)
  br label %6907

; <label>:6895                                    ; preds = %6845
  %6896 = icmp slt i32 %6874, 0
  br i1 %6896, label %6897, label %6907

; <label>:6897                                    ; preds = %6895
  %6898 = fsub fast float %189, %6632
  %6899 = fsub fast float %190, %6633
  %6900 = fsub fast float %191, %6857
  %6901 = fmul fast float %6898, %6898
  %6902 = fmul fast float %6899, %6899
  %6903 = fadd fast float %6901, %6902
  %6904 = fmul fast float %6900, %6900
  %6905 = fadd fast float %6903, %6904
  %6906 = call float @dx.op.unary.f32(i32 24, float %6905)  ; Sqrt(value)
  br label %6907

; <label>:6907                                    ; preds = %6897, %6895, %6885
  %6908 = phi float [ %6894, %6885 ], [ %6906, %6897 ], [ 0.000000e+00, %6895 ]
  %6909 = and i1 %6852, %6850
  %6910 = fsub fast float -0.000000e+00, %6908
  %6911 = select i1 %6909, float -0.000000e+00, float %6910
  %6912 = fmul fast float %4463, 0x3FF7154760000000
  %6913 = fmul fast float %6912, %6911
  %6914 = fmul fast float %4464, 0x3FF7154760000000
  %6915 = fmul fast float %6914, %6911
  %6916 = fmul fast float %4465, 0x3FF7154760000000
  %6917 = fmul fast float %6916, %6911
  %6918 = call float @dx.op.unary.f32(i32 21, float %6913)  ; Exp(value)
  %6919 = call float @dx.op.unary.f32(i32 21, float %6915)  ; Exp(value)
  %6920 = call float @dx.op.unary.f32(i32 21, float %6917)  ; Exp(value)
  %6921 = call float @dx.op.unary.f32(i32 7, float %6918)  ; Saturate(value)
  %6922 = call float @dx.op.unary.f32(i32 7, float %6919)  ; Saturate(value)
  %6923 = call float @dx.op.unary.f32(i32 7, float %6920)  ; Saturate(value)
  %6924 = fmul fast float %6846, %6921
  %6925 = fmul fast float %6847, %6922
  %6926 = fmul fast float %6848, %6923
  %6927 = fsub fast float %6666, %5288
  %6928 = fsub fast float %6667, %5289
  %6929 = fsub fast float %6668, %5290
  %6930 = call float @dx.op.dot3.f32(i32 55, float %6927, float %6928, float %6929, float %6927, float %6928, float %6929)  ; Dot3(ax,ay,az,bx,by,bz)
  %6931 = call float @dx.op.unary.f32(i32 25, float %6930)  ; Rsqrt(value)
  %6932 = fmul fast float %6931, %6927
  %6933 = fmul fast float %6931, %6928
  %6934 = fmul fast float %6931, %6929
  %6935 = call float @dx.op.dot3.f32(i32 55, float %6666, float %6667, float %6668, float %5245, float %5246, float %5247)  ; Dot3(ax,ay,az,bx,by,bz)
  %6936 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %6932, float %6933, float %6934)  ; Dot3(ax,ay,az,bx,by,bz)
  %6937 = call float @dx.op.unary.f32(i32 7, float %6935)  ; Saturate(value)
  %6938 = fmul fast float %6937, %6673
  %6939 = fmul fast float %6937, %6937
  %6940 = fmul fast float %6939, %5309
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6942 = fmul fast float %6938, %6941
  %6943 = bitcast float %6663 to i32
  %6944 = ashr i32 %6943, 1
  %6945 = sub nsw i32 1597463007, %6944
  %6946 = bitcast i32 %6945 to float
  %6947 = fmul fast float %6946, %6660
  %6948 = fmul fast float %6946, %6661
  %6949 = fmul fast float %6946, %6662
  %6950 = fsub fast float %6947, %5288
  %6951 = fsub fast float %6948, %5289
  %6952 = fsub fast float %6949, %5290
  %6953 = call float @dx.op.dot3.f32(i32 55, float %6950, float %6951, float %6952, float %6950, float %6951, float %6952)  ; Dot3(ax,ay,az,bx,by,bz)
  %6954 = call float @dx.op.unary.f32(i32 25, float %6953)  ; Rsqrt(value)
  %6955 = fmul fast float %6950, %6954
  %6956 = fmul fast float %6951, %6954
  %6957 = fmul fast float %6952, %6954
  %6958 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float %6955, float %6956, float %6957)  ; Dot3(ax,ay,az,bx,by,bz)
  %6959 = fmul fast float %6958, %6958
  %6960 = call float @dx.op.unary.f32(i32 6, float %6935)  ; FAbs(value)
  %6961 = fsub fast float 1.000000e+00, %5251
  %6962 = call float @dx.op.binary.f32(i32 35, float %6961, float 0x3F847AE140000000)  ; FMax(a,b)
  %6963 = fmul fast float %6962, %6962
  %6964 = fmul fast float %6963, %6963
  %6965 = fsub fast float 1.000000e+00, %6964
  %6966 = fmul fast float %5296, %5296
  %6967 = fmul fast float %6966, %6965
  %6968 = fadd fast float %6967, %6964
  %6969 = bitcast float %6968 to i32
  %6970 = ashr i32 %6969, 1
  %6971 = add nsw i32 %6970, 532487669
  %6972 = bitcast i32 %6971 to float
  %6973 = fadd fast float %6972, %5296
  %6974 = fmul fast float %6964, %6959
  %6975 = fsub fast float 1.000000e+00, %6959
  %6976 = fadd fast float %6975, %6974
  %6977 = fmul fast float %6960, %6960
  %6978 = fmul fast float %6977, %6965
  %6979 = fadd fast float %6978, %6964
  %6980 = bitcast float %6979 to i32
  %6981 = ashr i32 %6980, 1
  %6982 = add nsw i32 %6981, 532487669
  %6983 = bitcast i32 %6982 to float
  %6984 = fadd fast float %6983, %6960
  %6985 = fmul fast float %6976, %6976
  %6986 = fmul fast float %6985, %6973
  %6987 = fmul fast float %6986, %6984
  %6988 = fdiv fast float 1.000000e+00, %6987
  %6989 = bitcast float %6964 to i32
  %6990 = sitofp i32 %6989 to float
  %6991 = fmul fast float %6990, 0x3FE7F73180000000
  %6992 = fadd fast float %6991, 0x41AFE27C40000000
  %6993 = fptosi float %6992 to i32
  %6994 = bitcast i32 %6993 to float
  %6995 = fmul fast float %6629, 0x3FD80E9D60000000
  %6996 = fmul fast float %6995, %6946
  %6997 = fadd fast float %6994, %6996
  %6998 = bitcast float %6997 to i32
  %6999 = sub nsw i32 2129859010, %6998
  %7000 = bitcast i32 %6999 to float
  %7001 = fmul fast float %6964, %6988
  %7002 = fmul fast float %7001, %6994
  %7003 = fmul fast float %7002, %7000
  %7004 = fmul fast float %5409, 0x3FF9999980000000
  %7005 = fsub fast float 5.000000e+00, %7004
  %7006 = call float @dx.op.unary.f32(i32 6, float %6936)  ; FAbs(value)
  %7007 = fsub fast float 1.000000e+00, %7006
  %7008 = fmul fast float %5409, 0x41D9660740000000
  %7009 = fadd fast float %7008, 0xC1EFBF8940000000
  %7010 = bitcast float %7007 to i32
  %7011 = sitofp i32 %7010 to float
  %7012 = fmul fast float %7011, %7005
  %7013 = fadd fast float %7009, %7012
  %7014 = fptosi float %7013 to i32
  %7015 = bitcast i32 %7014 to float
  %7016 = fsub fast float 1.000000e+00, %5242
  %7017 = fsub fast float 1.000000e+00, %5243
  %7018 = fsub fast float 1.000000e+00, %5294
  %7019 = fmul fast float %7015, %7016
  %7020 = fmul fast float %7015, %7017
  %7021 = fmul fast float %7015, %7018
  %7022 = fadd fast float %7019, %5242
  %7023 = fadd fast float %7020, %5243
  %7024 = fadd fast float %7021, %5294
  %7025 = fmul fast float %6935, 9.843750e-01
  %7026 = fadd fast float %7025, 7.812500e-03
  %7027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %7026, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7028 = extractvalue %dx.types.ResRet.f32 %7027, 0
  %7029 = extractvalue %dx.types.ResRet.f32 %7027, 1
  %7030 = extractvalue %dx.types.ResRet.f32 %7027, 2
  %7031 = extractvalue %dx.types.ResRet.f32 %7027, 3
  %7032 = fsub fast float %7030, %7028
  %7033 = fsub fast float %7031, %7029
  %7034 = fmul fast float %7032, %5419
  %7035 = fmul fast float %7033, %5419
  %7036 = fadd fast float %7034, %7028
  %7037 = fadd fast float %7035, %7029
  %7038 = fmul fast float %7036, %5242
  %7039 = fmul fast float %7036, %5243
  %7040 = fmul fast float %7036, %5294
  %7041 = fadd fast float %7038, %7037
  %7042 = fadd fast float %7039, %7037
  %7043 = fadd fast float %7040, %7037
  %7044 = call float @dx.op.binary.f32(i32 35, float %7042, float %7043)  ; FMax(a,b)
  %7045 = call float @dx.op.binary.f32(i32 35, float %7041, float %7044)  ; FMax(a,b)
  %7046 = fsub fast float 1.000000e+00, %7045
  %7047 = fmul fast float %6924, %1334
  %7048 = fmul fast float %7047, %6942
  %7049 = fmul fast float %7048, %7046
  %7050 = fmul fast float %6925, %1334
  %7051 = fmul fast float %7050, %6942
  %7052 = fmul fast float %7051, %7046
  %7053 = fmul fast float %6926, %1334
  %7054 = fmul fast float %7053, %6942
  %7055 = fmul fast float %7054, %7046
  %7056 = fadd fast float %7049, %6603
  %7057 = fadd fast float %7052, %6604
  %7058 = fadd fast float %7055, %6605
  %7059 = fmul fast float %7048, %7022
  %7060 = fmul fast float %7059, %7003
  %7061 = fmul fast float %7051, %7023
  %7062 = fmul fast float %7061, %7003
  %7063 = fmul fast float %7054, %7024
  %7064 = fmul fast float %7063, %7003
  %7065 = fadd fast float %7060, %6600
  %7066 = fadd fast float %7062, %6601
  %7067 = fadd fast float %7064, %6602
  br label %6732

; <label>:7068                                    ; preds = %6732
  br label %7069

; <label>:7069                                    ; preds = %7068, %6566
  %7070 = phi float [ %6568, %6566 ], [ %6733, %7068 ]
  %7071 = phi float [ %6569, %6566 ], [ %6734, %7068 ]
  %7072 = phi float [ %6570, %6566 ], [ %6735, %7068 ]
  %7073 = phi float [ %6571, %6566 ], [ %6736, %7068 ]
  %7074 = phi float [ %6572, %6566 ], [ %6737, %7068 ]
  %7075 = phi float [ %6573, %6566 ], [ %6738, %7068 ]
  %7076 = add i32 %6567, 1
  %7077 = icmp ugt i32 %7076, %6563
  br i1 %7077, label %7078, label %6566

; <label>:7078                                    ; preds = %7069
  br label %7079

; <label>:7079                                    ; preds = %7078, %6516, %6506
  %7080 = phi float [ %6507, %6506 ], [ %6507, %6516 ], [ %7070, %7078 ]
  %7081 = phi float [ %6508, %6506 ], [ %6508, %6516 ], [ %7071, %7078 ]
  %7082 = phi float [ %6509, %6506 ], [ %6509, %6516 ], [ %7072, %7078 ]
  %7083 = phi float [ %6510, %6506 ], [ %6510, %6516 ], [ %7073, %7078 ]
  %7084 = phi float [ %6511, %6506 ], [ %6511, %6516 ], [ %7074, %7078 ]
  %7085 = phi float [ %6512, %6506 ], [ %6512, %6516 ], [ %7075, %7078 ]
  %7086 = fmul fast float %1334, %1334
  %7087 = fmul fast float %7086, %5461
  %7088 = fsub fast float -0.000000e+00, %7087
  %7089 = fmul fast float %7086, %5462
  %7090 = fsub fast float -0.000000e+00, %7089
  %7091 = fmul fast float %7086, %5463
  %7092 = fsub fast float -0.000000e+00, %7091
  %7093 = fsub fast float 1.000000e+00, %5296
  %7094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7095 = extractvalue %dx.types.CBufRet.f32 %7094, 0
  %7096 = fmul fast float %7095, %7093
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 3
  %7099 = fsub fast float 1.000000e+00, %3987
  %7100 = call float @dx.op.unary.f32(i32 7, float %7099)  ; Saturate(value)
  %7101 = fadd fast float %4008, %7085
  %7102 = fmul fast float %7101, %3987
  %7103 = fmul fast float %7100, %7098
  %7104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.f32 %7104, 3
  %7106 = fmul fast float %7083, %5248
  %7107 = fmul fast float %7084, %5249
  %7108 = fmul fast float %7085, %5250
  %7109 = fcmp fast ogt float %93, %224
  %7110 = and i1 %7109, %4468
  %7111 = or i1 %4474, %7110
  %7112 = icmp eq i32 %4467, 2
  %7113 = fcmp fast ole float %93, %224
  %7114 = and i1 %7113, %7112
  %7115 = or i1 %7114, %7111
  br i1 %7110, label %7116, label %7373

; <label>:7116                                    ; preds = %7079
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 2
  %7119 = extractvalue %dx.types.CBufRet.f32 %7117, 3
  %7120 = fmul fast float %7118, %102
  %7121 = fmul fast float %7119, %103
  %7122 = call float @dx.op.unary.f32(i32 7, float %7120)  ; Saturate(value)
  %7123 = call float @dx.op.unary.f32(i32 7, float %7121)  ; Saturate(value)
  %7124 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %7122, float %7123, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = extractvalue %dx.types.ResRet.f32 %7124, 1
  %7127 = extractvalue %dx.types.ResRet.f32 %7124, 2
  %7128 = extractvalue %dx.types.ResRet.f32 %7124, 3
  %7129 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %7122, float %7123, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7130 = extractvalue %dx.types.ResRet.f32 %7129, 0
  %7131 = extractvalue %dx.types.ResRet.f32 %7129, 1
  %7132 = extractvalue %dx.types.ResRet.f32 %7129, 2
  %7133 = extractvalue %dx.types.ResRet.f32 %7129, 3
  %7134 = call float @dx.op.binary.f32(i32 35, float %7126, float %7127)  ; FMax(a,b)
  %7135 = call float @dx.op.binary.f32(i32 35, float %7125, float %7134)  ; FMax(a,b)
  %7136 = call float @dx.op.binary.f32(i32 35, float %7135, float %7128)  ; FMax(a,b)
  %7137 = call float @dx.op.binary.f32(i32 36, float %7131, float %7132)  ; FMin(a,b)
  %7138 = call float @dx.op.binary.f32(i32 36, float %7130, float %7137)  ; FMin(a,b)
  %7139 = call float @dx.op.binary.f32(i32 36, float %7138, float %7133)  ; FMin(a,b)
  %7140 = fmul fast float %7136, 2.550000e+02
  %7141 = fadd fast float %7140, 0x3F70101020000000
  %7142 = fptoui float %7141 to i32
  %7143 = fmul fast float %7139, 2.550000e+02
  %7144 = fadd fast float %7143, 0x3F70101020000000
  %7145 = fptoui float %7144 to i32
  %7146 = icmp ult i32 %7142, %7145
  br i1 %7146, label %7147, label %7315

; <label>:7147                                    ; preds = %7116
  %7148 = fcmp fast ogt float %92, 9.843750e-01
  %7149 = fadd fast float %93, -4.000000e+00
  %7150 = select i1 %7148, float -4.000000e+00, float %7149
  %7151 = call float @dx.op.binary.f32(i32 35, float %7150, float 0.000000e+00)  ; FMax(a,b)
  %7152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7153 = extractvalue %dx.types.CBufRet.f32 %7152, 0
  %7154 = fadd fast float %7153, %7151
  %7155 = extractvalue %dx.types.CBufRet.f32 %7152, 2
  %7156 = fmul fast float %7154, %7155
  %7157 = call float @dx.op.unary.f32(i32 23, float %7156)  ; Log(value)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7152, 3
  %7159 = fmul fast float %7158, %7157
  %7160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7160, 2
  %7162 = fmul fast float %7159, %7161
  %7163 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  %7164 = uitofp i32 %7142 to float
  %7165 = uitofp i32 %7145 to float
  %7166 = fadd fast float %7164, 5.000000e-01
  %7167 = fadd fast float %7165, 5.000000e-01
  %7168 = fmul fast float %7161, %7166
  %7169 = fmul fast float %7161, %7167
  %7170 = fadd fast float %7168, 0x3F0FFB4800000000
  %7171 = fadd fast float %7169, 0xBF0FFB4800000000
  %7172 = call float @dx.op.binary.f32(i32 35, float %7163, float %7170)  ; FMax(a,b)
  %7173 = call float @dx.op.binary.f32(i32 36, float %7172, float %7171)  ; FMin(a,b)
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7176 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7177 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7178 = fmul fast float %7175, %7173
  %7179 = fadd fast float %7177, %7178
  %7180 = fadd fast float %7177, %7176
  %7181 = fsub fast float %7175, %7176
  %7182 = fadd fast float %7181, %7177
  %7183 = call float @dx.op.binary.f32(i32 35, float %7179, float %7180)  ; FMax(a,b)
  %7184 = call float @dx.op.binary.f32(i32 36, float %7183, float %7182)  ; FMin(a,b)
  %7185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %7122, float %7123, float %7184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.ResRet.f32 %7185, 2
  %7189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7190 = extractvalue %dx.types.CBufRet.i32 %7189, 0
  %7191 = extractvalue %dx.types.CBufRet.i32 %7189, 1
  %7192 = uitofp i32 %7190 to float
  %7193 = uitofp i32 %7191 to float
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 0
  %7196 = extractvalue %dx.types.CBufRet.f32 %7194, 1
  %7197 = fmul fast float %7192, %7122
  %7198 = fmul fast float %7193, %7123
  %7199 = fadd fast float %7197, -5.000000e-01
  %7200 = fadd fast float %7198, -5.000000e-01
  %7201 = call float @dx.op.unary.f32(i32 22, float %7199)  ; Frc(value)
  %7202 = call float @dx.op.unary.f32(i32 22, float %7200)  ; Frc(value)
  %7203 = fmul fast float %7201, %7201
  %7204 = fmul fast float %7203, %7201
  %7205 = fsub fast float 3.000000e+00, %7201
  %7206 = fmul fast float %7203, %7205
  %7207 = fmul fast float %7201, 3.000000e+00
  %7208 = fmul fast float %7204, 3.000000e+00
  %7209 = fmul fast float %7203, 6.000000e+00
  %7210 = fsub fast float %7208, %7209
  %7211 = fadd fast float %7210, 4.000000e+00
  %7212 = fmul fast float %7211, 0x3FC5555560000000
  %7213 = fmul fast float %7204, -3.000000e+00
  %7214 = fadd fast float %7203, %7201
  %7215 = fmul fast float %7214, 3.000000e+00
  %7216 = fadd fast float %7213, 1.000000e+00
  %7217 = fadd fast float %7216, %7215
  %7218 = fmul fast float %7204, 0x3FC5555560000000
  %7219 = fmul fast float %7202, %7202
  %7220 = fmul fast float %7219, %7202
  %7221 = fsub fast float 3.000000e+00, %7202
  %7222 = fmul fast float %7219, %7221
  %7223 = fmul fast float %7202, 3.000000e+00
  %7224 = fmul fast float %7220, 3.000000e+00
  %7225 = fmul fast float %7219, 6.000000e+00
  %7226 = fsub fast float %7224, %7225
  %7227 = fadd fast float %7226, 4.000000e+00
  %7228 = fmul fast float %7227, 0x3FC5555560000000
  %7229 = fmul fast float %7220, -3.000000e+00
  %7230 = fadd fast float %7219, %7202
  %7231 = fmul fast float %7230, 3.000000e+00
  %7232 = fadd fast float %7229, 1.000000e+00
  %7233 = fadd fast float %7232, %7231
  %7234 = fmul fast float %7220, 0x3FC5555560000000
  %7235 = fadd fast float %7201, 1.000000e+00
  %7236 = fsub fast float 1.000000e+00, %7207
  %7237 = fadd fast float %7236, %7206
  %7238 = fadd fast float %7237, %7211
  %7239 = fmul fast float %7238, 0x3FC5555560000000
  %7240 = fdiv fast float %7212, %7239
  %7241 = fsub fast float %7235, %7240
  %7242 = fsub fast float 1.000000e+00, %7201
  %7243 = fadd fast float %7217, %7204
  %7244 = fmul fast float %7243, 0x3FC5555560000000
  %7245 = fdiv fast float %7218, %7244
  %7246 = fadd fast float %7242, %7245
  %7247 = fadd fast float %7202, 1.000000e+00
  %7248 = fsub fast float 1.000000e+00, %7223
  %7249 = fadd fast float %7248, %7222
  %7250 = fadd fast float %7249, %7227
  %7251 = fmul fast float %7250, 0x3FC5555560000000
  %7252 = fdiv fast float %7228, %7251
  %7253 = fsub fast float %7247, %7252
  %7254 = fsub fast float 1.000000e+00, %7202
  %7255 = fadd fast float %7233, %7220
  %7256 = fmul fast float %7255, 0x3FC5555560000000
  %7257 = fdiv fast float %7234, %7256
  %7258 = fadd fast float %7257, %7254
  %7259 = fmul fast float %7241, %7195
  %7260 = fsub fast float %7122, %7259
  %7261 = fmul fast float %7246, %7195
  %7262 = fadd fast float %7261, %7122
  %7263 = fmul fast float %7258, %7196
  %7264 = fadd fast float %7263, %7123
  %7265 = fmul fast float %7253, %7196
  %7266 = fsub fast float %7123, %7265
  %7267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7260, float %7266, float %7184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7268 = extractvalue %dx.types.ResRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.ResRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.ResRet.f32 %7267, 2
  %7271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7262, float %7266, float %7184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7272 = extractvalue %dx.types.ResRet.f32 %7271, 0
  %7273 = extractvalue %dx.types.ResRet.f32 %7271, 1
  %7274 = extractvalue %dx.types.ResRet.f32 %7271, 2
  %7275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7260, float %7264, float %7184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7276 = extractvalue %dx.types.ResRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.ResRet.f32 %7275, 1
  %7278 = extractvalue %dx.types.ResRet.f32 %7275, 2
  %7279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7262, float %7264, float %7184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7280 = extractvalue %dx.types.ResRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.ResRet.f32 %7279, 1
  %7282 = extractvalue %dx.types.ResRet.f32 %7279, 2
  %7283 = fsub fast float %7276, %7268
  %7284 = fsub fast float %7277, %7269
  %7285 = fsub fast float %7278, %7270
  %7286 = fmul fast float %7283, %7256
  %7287 = fmul fast float %7284, %7256
  %7288 = fmul fast float %7285, %7256
  %7289 = fadd fast float %7286, %7268
  %7290 = fadd fast float %7287, %7269
  %7291 = fadd fast float %7288, %7270
  %7292 = fsub fast float %7280, %7272
  %7293 = fsub fast float %7281, %7273
  %7294 = fsub fast float %7282, %7274
  %7295 = fmul fast float %7292, %7256
  %7296 = fmul fast float %7293, %7256
  %7297 = fmul fast float %7294, %7256
  %7298 = fsub fast float %7272, %7289
  %7299 = fadd fast float %7298, %7295
  %7300 = fsub fast float %7273, %7290
  %7301 = fadd fast float %7300, %7296
  %7302 = fsub fast float %7274, %7291
  %7303 = fadd fast float %7302, %7297
  %7304 = fmul fast float %7299, %7244
  %7305 = fmul fast float %7301, %7244
  %7306 = fmul fast float %7303, %7244
  %7307 = fadd fast float %7304, %7289
  %7308 = fadd fast float %7305, %7290
  %7309 = fadd fast float %7306, %7291
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7312 = fmul fast float %7307, %7311
  %7313 = fmul fast float %7308, %7311
  %7314 = fmul fast float %7309, %7311
  br label %7315

; <label>:7315                                    ; preds = %7147, %7116
  %7316 = phi float [ %7186, %7147 ], [ 1.000000e+00, %7116 ]
  %7317 = phi float [ %7187, %7147 ], [ 1.000000e+00, %7116 ]
  %7318 = phi float [ %7188, %7147 ], [ 1.000000e+00, %7116 ]
  %7319 = phi float [ %7312, %7147 ], [ 0.000000e+00, %7116 ]
  %7320 = phi float [ %7313, %7147 ], [ 0.000000e+00, %7116 ]
  %7321 = phi float [ %7314, %7147 ], [ 0.000000e+00, %7116 ]
  %7322 = fmul fast float %7319, %7088
  %7323 = fmul fast float %7320, %7090
  %7324 = fmul fast float %7321, %7092
  %7325 = call float @dx.op.dot3.f32(i32 55, float %7316, float %7317, float %7318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7326 = call float @dx.op.dot3.f32(i32 55, float %7322, float %7323, float %7324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7327 = select i1 %261, float %7325, float %7316
  %7328 = select i1 %261, float %7325, float %7317
  %7329 = select i1 %261, float 1.000000e+00, float %7318
  %7330 = select i1 %261, float %7326, float %7322
  %7331 = select i1 %261, float 0.000000e+00, float %7323
  %7332 = select i1 %261, float 0.000000e+00, float %7324
  %7333 = fmul fast float %7327, %7106
  %7334 = fmul fast float %7328, %7107
  %7335 = fmul fast float %7329, %7108
  %7336 = fadd fast float %7333, %7330
  %7337 = fadd fast float %7334, %7331
  %7338 = fadd fast float %7332, %7335
  %7339 = fmul fast float %7327, %7080
  %7340 = fmul fast float %7328, %7081
  %7341 = fmul fast float %7329, %7082
  %7342 = fmul fast float %138, %7118
  %7343 = fmul fast float %140, %7119
  %7344 = fsub fast float 1.000000e+00, %7342
  %7345 = fsub fast float 1.000000e+00, %7343
  %7346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.f32 %7346, 0
  %7348 = extractvalue %dx.types.CBufRet.f32 %7346, 1
  %7349 = extractvalue %dx.types.CBufRet.f32 %7346, 2
  %7350 = fmul fast float %7344, %7347
  %7351 = fmul fast float %7344, %7348
  %7352 = fmul fast float %7344, %7349
  %7353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.f32 %7353, 0
  %7355 = extractvalue %dx.types.CBufRet.f32 %7353, 1
  %7356 = extractvalue %dx.types.CBufRet.f32 %7353, 2
  %7357 = fmul fast float %7345, %7354
  %7358 = fmul fast float %7345, %7355
  %7359 = fmul fast float %7345, %7356
  %7360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7361 = extractvalue %dx.types.CBufRet.f32 %7360, 0
  %7362 = extractvalue %dx.types.CBufRet.f32 %7360, 1
  %7363 = extractvalue %dx.types.CBufRet.f32 %7360, 2
  %7364 = fadd fast float %7357, %7361
  %7365 = fadd fast float %7364, %7350
  %7366 = fadd fast float %7358, %7362
  %7367 = fadd fast float %7366, %7351
  %7368 = fadd fast float %7359, %7363
  %7369 = fadd fast float %7368, %7352
  %7370 = fmul fast float %7365, %224
  %7371 = fmul fast float %7367, %224
  %7372 = fmul fast float %7369, %224
  br label %7373

; <label>:7373                                    ; preds = %7315, %7079
  %7374 = phi float [ %7370, %7315 ], [ %189, %7079 ]
  %7375 = phi float [ %7371, %7315 ], [ %190, %7079 ]
  %7376 = phi float [ %7372, %7315 ], [ %191, %7079 ]
  %7377 = phi float [ %224, %7315 ], [ %93, %7079 ]
  %7378 = phi float [ %7336, %7315 ], [ %7106, %7079 ]
  %7379 = phi float [ %7337, %7315 ], [ %7107, %7079 ]
  %7380 = phi float [ %7338, %7315 ], [ %7108, %7079 ]
  %7381 = phi float [ %7339, %7315 ], [ %7080, %7079 ]
  %7382 = phi float [ %7340, %7315 ], [ %7081, %7079 ]
  %7383 = phi float [ %7341, %7315 ], [ %7082, %7079 ]
  %7384 = phi float [ %7316, %7315 ], [ 1.000000e+00, %7079 ]
  br i1 %7115, label %8539, label %7385

; <label>:7385                                    ; preds = %7373
  %7386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7387 = extractvalue %dx.types.CBufRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.CBufRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.CBufRet.f32 %7386, 2
  %7390 = extractvalue %dx.types.CBufRet.f32 %7386, 3
  %7391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7392 = extractvalue %dx.types.CBufRet.f32 %7391, 0
  %7393 = extractvalue %dx.types.CBufRet.f32 %7391, 1
  %7394 = extractvalue %dx.types.CBufRet.f32 %7391, 2
  %7395 = extractvalue %dx.types.CBufRet.f32 %7391, 3
  %7396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7396, 0
  %7398 = extractvalue %dx.types.CBufRet.f32 %7396, 1
  %7399 = extractvalue %dx.types.CBufRet.f32 %7396, 2
  %7400 = extractvalue %dx.types.CBufRet.f32 %7396, 3
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 0
  %7403 = extractvalue %dx.types.CBufRet.f32 %7401, 1
  %7404 = extractvalue %dx.types.CBufRet.f32 %7401, 2
  %7405 = extractvalue %dx.types.CBufRet.f32 %7401, 3
  %7406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7407 = extractvalue %dx.types.CBufRet.f32 %7406, 3
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 3
  %7410 = extractvalue %dx.types.CBufRet.f32 %7408, 0
  %7411 = extractvalue %dx.types.CBufRet.f32 %7408, 1
  %7412 = extractvalue %dx.types.CBufRet.f32 %7408, 2
  %7413 = fcmp fast olt float %7412, -5.000000e-01
  %7414 = call float @dx.op.dot3.f32(i32 55, float %7374, float %7375, float %7376, float %7374, float %7375, float %7376)  ; Dot3(ax,ay,az,bx,by,bz)
  %7415 = call float @dx.op.unary.f32(i32 25, float %7414)  ; Rsqrt(value)
  %7416 = fmul fast float %7415, %7414
  %7417 = fmul fast float %7415, %7374
  %7418 = fmul fast float %7415, %7375
  %7419 = fmul fast float %7415, %7376
  %7420 = fadd fast float %7416, %7390
  %7421 = call float @dx.op.dot3.f32(i32 55, float %7417, float %7418, float %7419, float %7387, float %7388, float %7389)  ; Dot3(ax,ay,az,bx,by,bz)
  %7422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.i32 %7422, 1
  %7424 = and i32 %7423, 1
  %7425 = icmp ne i32 %7424, 0
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 2
  %7428 = fcmp fast ogt float %7427, 0.000000e+00
  %7429 = and i1 %7425, %7428
  br i1 %7429, label %7430, label %7836, !dx.controlflow.hints !122

; <label>:7430                                    ; preds = %7385
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 3
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 2
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 2
  %7437 = fsub fast float %7434, %7436
  %7438 = and i32 %7423, 2
  %7439 = extractvalue %dx.types.CBufRet.i32 %7422, 0
  %7440 = call i32 @dx.op.binary.i32(i32 40, i32 %7439, i32 3)  ; UMin(a,b)
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 0
  %7443 = extractvalue %dx.types.CBufRet.f32 %7441, 1
  %7444 = extractvalue %dx.types.CBufRet.f32 %7435, 0
  %7445 = extractvalue %dx.types.CBufRet.f32 %7435, 1
  %7446 = fsub fast float %7442, %7444
  %7447 = fsub fast float %7443, %7445
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 0
  %7450 = fcmp fast ogt float %7449, 0.000000e+00
  %7451 = fsub fast float -0.000000e+00, %7446
  %7452 = fsub fast float -0.000000e+00, %7447
  %7453 = call float @dx.op.dot2.f32(i32 54, float %7417, float %7418, float %7417, float %7418)  ; Dot2(ax,ay,bx,by)
  %7454 = call float @dx.op.dot2.f32(i32 54, float %7417, float %7418, float %7451, float %7452)  ; Dot2(ax,ay,bx,by)
  %7455 = fmul fast float %7454, 2.000000e+00
  %7456 = call float @dx.op.dot2.f32(i32 54, float %7451, float %7452, float %7451, float %7452)  ; Dot2(ax,ay,bx,by)
  %7457 = fmul fast float %7449, %7449
  %7458 = fsub fast float %7456, %7457
  %7459 = fmul fast float %7455, %7455
  %7460 = fmul fast float %7453, 4.000000e+00
  %7461 = fmul fast float %7460, %7458
  %7462 = fsub fast float %7459, %7461
  %7463 = fcmp fast ogt float %7462, 0.000000e+00
  br i1 %7463, label %7464, label %7479

; <label>:7464                                    ; preds = %7430
  %7465 = fcmp fast ogt float %7455, 0.000000e+00
  %7466 = call float @dx.op.unary.f32(i32 24, float %7462)  ; Sqrt(value)
  %7467 = fsub fast float -0.000000e+00, %7466
  %7468 = select i1 %7465, float %7466, float %7467
  %7469 = fadd fast float %7468, %7455
  %7470 = fmul float %7469, -5.000000e-01
  %7471 = fdiv fast float %7470, %7453
  %7472 = call float @dx.op.binary.f32(i32 35, float %7471, float 0.000000e+00)  ; FMax(a,b)
  %7473 = call float @dx.op.binary.f32(i32 36, float %7416, float %7472)  ; FMin(a,b)
  %7474 = fdiv fast float %7458, %7470
  %7475 = call float @dx.op.binary.f32(i32 35, float %7474, float 0.000000e+00)  ; FMax(a,b)
  %7476 = call float @dx.op.binary.f32(i32 36, float %7416, float %7475)  ; FMin(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7473, float %7476)  ; FMin(a,b)
  %7478 = call float @dx.op.binary.f32(i32 35, float %7473, float %7476)  ; FMax(a,b)
  br label %7479

; <label>:7479                                    ; preds = %7464, %7430
  %7480 = phi float [ %7478, %7464 ], [ -1.000000e+00, %7430 ]
  %7481 = phi float [ %7477, %7464 ], [ -1.000000e+00, %7430 ]
  %7482 = phi i1 [ true, %7464 ], [ false, %7430 ]
  %7483 = and i1 %7450, %7482
  br i1 %7483, label %7484, label %7486

; <label>:7484                                    ; preds = %7479
  %7485 = fcmp fast oeq float %7481, %7480
  br i1 %7485, label %7789, label %7487

; <label>:7486                                    ; preds = %7479
  br i1 %7450, label %7789, label %7487

; <label>:7487                                    ; preds = %7486, %7484
  %7488 = phi float [ %7416, %7486 ], [ %7480, %7484 ]
  %7489 = phi float [ 0.000000e+00, %7486 ], [ %7481, %7484 ]
  %7490 = icmp ne i32 %7438, 0
  %7491 = fmul fast float %7488, %7419
  %7492 = fadd fast float %7491, %7432
  %7493 = fmul fast float %7492, %7488
  %7494 = select i1 %7490, float 0.000000e+00, float %7493
  %7495 = fcmp fast oeq float %7419, 0.000000e+00
  %7496 = fdiv fast float %7437, %7419
  %7497 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7496)  ; FMax(a,b)
  %7498 = select i1 %7495, float %7488, float %7497
  %7499 = call float @dx.op.binary.f32(i32 36, float %7488, float %7498)  ; FMin(a,b)
  %7500 = fcmp fast ogt float %7419, 0.000000e+00
  %7501 = fcmp fast olt float %7437, 0.000000e+00
  br i1 %7500, label %7502, label %7559

; <label>:7502                                    ; preds = %7487
  %7503 = icmp eq i32 %7438, 0
  br i1 %7501, label %7504, label %7548

; <label>:7504                                    ; preds = %7502
  %7505 = select i1 %7503, float %7488, float 0.000000e+00
  %7506 = fsub fast float -0.000000e+00, %7505
  %7507 = call float @dx.op.unary.f32(i32 6, float %7506)  ; FAbs(value)
  %7508 = fmul fast float %7505, %7419
  %7509 = fadd fast float %7508, %7432
  %7510 = fmul fast float %7507, %7509
  %7511 = fsub fast float %7494, %7510
  %7512 = fsub fast float %7488, %7507
  %7513 = select i1 %7503, float %7512, float 0.000000e+00
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 0
  %7516 = extractvalue %dx.types.CBufRet.f32 %7514, 1
  %7517 = extractvalue %dx.types.CBufRet.f32 %7514, 2
  %7518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7519 = extractvalue %dx.types.CBufRet.f32 %7518, 0
  %7520 = extractvalue %dx.types.CBufRet.f32 %7518, 1
  %7521 = extractvalue %dx.types.CBufRet.f32 %7518, 2
  %7522 = extractvalue %dx.types.CBufRet.f32 %7518, 3
  %7523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7524 = extractvalue %dx.types.CBufRet.f32 %7523, 3
  %7525 = call float @dx.op.binary.f32(i32 36, float %7511, float %7524)  ; FMin(a,b)
  %7526 = fmul fast float %7522, %7513
  %7527 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7528 = fsub fast float %7519, %7515
  %7529 = fsub fast float %7520, %7516
  %7530 = fsub fast float %7521, %7517
  %7531 = fmul fast float %7527, %7528
  %7532 = fmul fast float %7527, %7529
  %7533 = fmul fast float %7527, %7530
  %7534 = fadd fast float %7531, %7515
  %7535 = fadd fast float %7532, %7516
  %7536 = fadd fast float %7533, %7517
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 0
  %7539 = extractvalue %dx.types.CBufRet.f32 %7537, 1
  %7540 = fadd fast float %7539, %7538
  %7541 = call float @dx.op.unary.f32(i32 7, float %7540)  ; Saturate(value)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7537, 2
  %7543 = extractvalue %dx.types.CBufRet.f32 %7537, 3
  %7544 = fadd fast float %7543, %7542
  %7545 = call float @dx.op.unary.f32(i32 7, float %7544)  ; Saturate(value)
  %7546 = fmul fast float %7541, %7525
  %7547 = fmul fast float %7546, %7545
  br label %7789

; <label>:7548                                    ; preds = %7502
  br i1 %7503, label %7549, label %7570

; <label>:7549                                    ; preds = %7548
  %7550 = call float @dx.op.binary.f32(i32 36, float %7499, float %7489)  ; FMin(a,b)
  %7551 = fsub fast float %7499, %7550
  %7552 = fsub fast float %7551, %7488
  %7553 = call float @dx.op.unary.f32(i32 6, float %7552)  ; FAbs(value)
  %7554 = fadd fast float %7551, %7488
  %7555 = fmul fast float %7554, %7419
  %7556 = fadd fast float %7555, %7432
  %7557 = fmul fast float %7556, %7553
  %7558 = fsub fast float %7494, %7557
  br label %7570

; <label>:7559                                    ; preds = %7487
  br i1 %7501, label %7560, label %7570

; <label>:7560                                    ; preds = %7559
  %7561 = call float @dx.op.binary.f32(i32 35, float %7489, float %7499)  ; FMax(a,b)
  %7562 = icmp eq i32 %7438, 0
  %7563 = select i1 %7562, float %7499, float 0.000000e+00
  %7564 = fsub fast float -0.000000e+00, %7563
  %7565 = call float @dx.op.unary.f32(i32 6, float %7564)  ; FAbs(value)
  %7566 = fmul fast float %7563, %7419
  %7567 = fadd fast float %7566, %7432
  %7568 = fmul fast float %7565, %7567
  %7569 = fsub fast float %7494, %7568
  br label %7570

; <label>:7570                                    ; preds = %7560, %7559, %7549, %7548
  %7571 = phi float [ %7489, %7548 ], [ %7489, %7549 ], [ %7561, %7560 ], [ %7489, %7559 ]
  %7572 = phi float [ 0.000000e+00, %7548 ], [ %7553, %7549 ], [ %7565, %7560 ], [ 0.000000e+00, %7559 ]
  %7573 = phi float [ %7494, %7548 ], [ %7558, %7549 ], [ %7569, %7560 ], [ %7494, %7559 ]
  %7574 = phi float [ %7499, %7548 ], [ %7499, %7549 ], [ %7488, %7560 ], [ %7488, %7559 ]
  %7575 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %7575, align 4, !tbaa !123, !noalias !125
  %7576 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %7576, align 4, !tbaa !123, !noalias !125
  %7577 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %7577, align 4, !tbaa !123, !noalias !125
  %7578 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %7578, align 4, !tbaa !123, !noalias !125
  %7579 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %7579, align 4, !tbaa !123, !noalias !125
  %7580 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %7580, align 4, !tbaa !123, !noalias !125
  %7581 = icmp sgt i32 %7440, 0
  br i1 %7581, label %7582, label %7643

; <label>:7582                                    ; preds = %7570
  br label %7583

; <label>:7583                                    ; preds = %7632, %7582
  %7584 = phi i32 [ %7633, %7632 ], [ 0, %7582 ]
  %7585 = phi i32 [ %7634, %7632 ], [ 0, %7582 ]
  %7586 = add nuw i32 %7585, 171
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7586)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 0
  %7589 = extractvalue %dx.types.CBufRet.f32 %7587, 1
  %7590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7591 = extractvalue %dx.types.CBufRet.f32 %7590, 0
  %7592 = extractvalue %dx.types.CBufRet.f32 %7590, 1
  %7593 = fsub fast float %7588, %7591
  %7594 = fsub fast float %7589, %7592
  %7595 = extractvalue %dx.types.CBufRet.f32 %7587, 2
  %7596 = fsub fast float -0.000000e+00, %7593
  %7597 = fsub fast float -0.000000e+00, %7594
  %7598 = call float @dx.op.dot2.f32(i32 54, float %7417, float %7418, float %7596, float %7597)  ; Dot2(ax,ay,bx,by)
  %7599 = fmul fast float %7598, 2.000000e+00
  %7600 = call float @dx.op.dot2.f32(i32 54, float %7596, float %7597, float %7596, float %7597)  ; Dot2(ax,ay,bx,by)
  %7601 = fmul fast float %7595, %7595
  %7602 = fsub fast float %7600, %7601
  %7603 = fmul fast float %7599, %7599
  %7604 = fmul fast float %7460, %7602
  %7605 = fsub fast float %7603, %7604
  %7606 = fcmp fast ogt float %7605, 0.000000e+00
  br i1 %7606, label %7607, label %7622

; <label>:7607                                    ; preds = %7583
  %7608 = fcmp fast ogt float %7599, 0.000000e+00
  %7609 = call float @dx.op.unary.f32(i32 24, float %7605)  ; Sqrt(value)
  %7610 = fsub fast float -0.000000e+00, %7609
  %7611 = select i1 %7608, float %7609, float %7610
  %7612 = fadd fast float %7611, %7599
  %7613 = fmul float %7612, -5.000000e-01
  %7614 = fdiv fast float %7613, %7453
  %7615 = call float @dx.op.binary.f32(i32 35, float %7614, float 0.000000e+00)  ; FMax(a,b)
  %7616 = call float @dx.op.binary.f32(i32 36, float %7488, float %7615)  ; FMin(a,b)
  %7617 = fdiv fast float %7602, %7613
  %7618 = call float @dx.op.binary.f32(i32 35, float %7617, float 0.000000e+00)  ; FMax(a,b)
  %7619 = call float @dx.op.binary.f32(i32 36, float %7488, float %7618)  ; FMin(a,b)
  %7620 = call float @dx.op.binary.f32(i32 36, float %7616, float %7619)  ; FMin(a,b)
  %7621 = call float @dx.op.binary.f32(i32 35, float %7616, float %7619)  ; FMax(a,b)
  br label %7622

; <label>:7622                                    ; preds = %7607, %7583
  %7623 = phi float [ %7621, %7607 ], [ -1.000000e+00, %7583 ]
  %7624 = phi float [ %7620, %7607 ], [ -1.000000e+00, %7583 ]
  %7625 = phi i1 [ true, %7607 ], [ false, %7583 ]
  br i1 %7625, label %7626, label %7632

; <label>:7626                                    ; preds = %7622
  %7627 = call float @dx.op.binary.f32(i32 35, float %7571, float %7624)  ; FMax(a,b)
  %7628 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7585
  store float %7627, float* %7628, align 4, !tbaa !123, !noalias !125
  %7629 = call float @dx.op.binary.f32(i32 35, float %7571, float %7623)  ; FMax(a,b)
  %7630 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7585
  store float %7629, float* %7630, align 4, !tbaa !123, !noalias !125
  %7631 = add nsw i32 %7584, 1
  br label %7632

; <label>:7632                                    ; preds = %7626, %7622
  %7633 = phi i32 [ %7631, %7626 ], [ %7584, %7622 ]
  %7634 = add nuw nsw i32 %7585, 1
  %7635 = icmp eq i32 %7634, %7440
  br i1 %7635, label %7636, label %7583

; <label>:7636                                    ; preds = %7632
  %7637 = load float, float* %7577, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7638 = load float, float* %7576, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %7639 = load float, float* %7575, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %7640 = load float, float* %7580, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7641 = load float, float* %7579, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %7642 = load float, float* %7578, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %7643

; <label>:7643                                    ; preds = %7636, %7570
  %7644 = phi float [ -1.000000e+00, %7570 ], [ %7642, %7636 ]
  %7645 = phi float [ -1.000000e+00, %7570 ], [ %7641, %7636 ]
  %7646 = phi float [ -1.000000e+00, %7570 ], [ %7640, %7636 ]
  %7647 = phi float [ -1.000000e+00, %7570 ], [ %7639, %7636 ]
  %7648 = phi float [ -1.000000e+00, %7570 ], [ %7638, %7636 ]
  %7649 = phi float [ -1.000000e+00, %7570 ], [ %7637, %7636 ]
  %7650 = phi i32 [ 0, %7570 ], [ %7633, %7636 ]
  %7651 = call float @dx.op.binary.f32(i32 36, float %7648, float %7649)  ; FMin(a,b)
  %7652 = call float @dx.op.binary.f32(i32 36, float %7647, float %7651)  ; FMin(a,b)
  %7653 = call float @dx.op.binary.f32(i32 35, float %7647, float %7648)  ; FMax(a,b)
  %7654 = call float @dx.op.binary.f32(i32 36, float %7653, float %7649)  ; FMin(a,b)
  %7655 = call float @dx.op.binary.f32(i32 36, float %7647, float %7648)  ; FMin(a,b)
  %7656 = call float @dx.op.binary.f32(i32 35, float %7655, float %7654)  ; FMax(a,b)
  %7657 = call float @dx.op.binary.f32(i32 35, float %7648, float %7649)  ; FMax(a,b)
  %7658 = call float @dx.op.binary.f32(i32 35, float %7647, float %7657)  ; FMax(a,b)
  store float %7652, float* %7575, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %7656, float* %7576, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %7658, float* %7577, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7659 = call float @dx.op.binary.f32(i32 36, float %7645, float %7646)  ; FMin(a,b)
  %7660 = call float @dx.op.binary.f32(i32 36, float %7644, float %7659)  ; FMin(a,b)
  %7661 = call float @dx.op.binary.f32(i32 35, float %7644, float %7645)  ; FMax(a,b)
  %7662 = call float @dx.op.binary.f32(i32 36, float %7661, float %7646)  ; FMin(a,b)
  %7663 = call float @dx.op.binary.f32(i32 36, float %7644, float %7645)  ; FMin(a,b)
  %7664 = call float @dx.op.binary.f32(i32 35, float %7663, float %7662)  ; FMax(a,b)
  %7665 = call float @dx.op.binary.f32(i32 35, float %7645, float %7646)  ; FMax(a,b)
  %7666 = call float @dx.op.binary.f32(i32 35, float %7644, float %7665)  ; FMax(a,b)
  store float %7660, float* %7578, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %7664, float* %7579, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %7666, float* %7580, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7667 = sub nsw i32 3, %7650
  %7668 = icmp sgt i32 %7667, 2
  br i1 %7668, label %7669, label %7707

; <label>:7669                                    ; preds = %7643
  %7670 = icmp eq i32 %7438, 0
  %7671 = fsub fast float %7488, %7572
  %7672 = select i1 %7670, float %7671, float %7572
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.CBufRet.f32 %7673, 1
  %7676 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 0
  %7679 = extractvalue %dx.types.CBufRet.f32 %7677, 1
  %7680 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %7681 = extractvalue %dx.types.CBufRet.f32 %7677, 3
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 3
  %7684 = call float @dx.op.binary.f32(i32 36, float %7573, float %7683)  ; FMin(a,b)
  %7685 = fmul fast float %7681, %7672
  %7686 = call float @dx.op.unary.f32(i32 7, float %7685)  ; Saturate(value)
  %7687 = fsub fast float %7678, %7674
  %7688 = fsub fast float %7679, %7675
  %7689 = fsub fast float %7680, %7676
  %7690 = fmul fast float %7686, %7687
  %7691 = fmul fast float %7686, %7688
  %7692 = fmul fast float %7686, %7689
  %7693 = fadd fast float %7690, %7674
  %7694 = fadd fast float %7691, %7675
  %7695 = fadd fast float %7692, %7676
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7699 = fadd fast float %7698, %7697
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7702 = extractvalue %dx.types.CBufRet.f32 %7696, 3
  %7703 = fadd fast float %7702, %7701
  %7704 = call float @dx.op.unary.f32(i32 7, float %7703)  ; Saturate(value)
  %7705 = fmul fast float %7700, %7684
  %7706 = fmul fast float %7705, %7704
  br label %7789

; <label>:7707                                    ; preds = %7643
  %7708 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7667
  %7709 = load float, float* %7708, align 4, !tbaa !123, !noalias !125
  %7710 = fcmp fast olt float %7709, %7574
  %7711 = icmp sgt i32 %7650, 0
  %7712 = and i1 %7711, %7710
  br i1 %7712, label %7713, label %7750

; <label>:7713                                    ; preds = %7707
  br label %7714

; <label>:7714                                    ; preds = %7743, %7713
  %7715 = phi float [ %7744, %7743 ], [ %7572, %7713 ]
  %7716 = phi float [ %7745, %7743 ], [ %7573, %7713 ]
  %7717 = phi float [ %7725, %7743 ], [ %7709, %7713 ]
  %7718 = phi i32 [ %7722, %7743 ], [ %7667, %7713 ]
  %7719 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7718
  %7720 = load float, float* %7719, align 4, !tbaa !123, !noalias !125
  %7721 = icmp slt i32 %7718, 2
  %7722 = add nsw i32 %7718, 1
  %7723 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7722
  %7724 = load float, float* %7723, align 4, !tbaa !123, !noalias !125
  %7725 = select i1 %7721, float %7724, float %7488
  %7726 = call float @dx.op.binary.f32(i32 36, float %7725, float %7720)  ; FMin(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7574, float %7726)  ; FMin(a,b)
  %7728 = icmp eq i32 %7438, 0
  %7729 = fadd fast float %7727, %7717
  %7730 = fmul fast float %7729, %7419
  %7731 = fadd fast float %7730, %7432
  br i1 %7728, label %7737, label %7732

; <label>:7732                                    ; preds = %7714
  %7733 = fsub fast float %7727, %7717
  %7734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7733)  ; FMax(a,b)
  %7735 = fmul fast float %7734, %7731
  %7736 = fadd fast float %7735, %7716
  br label %7743

; <label>:7737                                    ; preds = %7714
  %7738 = fsub fast float %7717, %7727
  %7739 = call float @dx.op.unary.f32(i32 6, float %7738)  ; FAbs(value)
  %7740 = fadd fast float %7739, %7715
  %7741 = fmul fast float %7739, %7731
  %7742 = fsub fast float %7716, %7741
  br label %7743

; <label>:7743                                    ; preds = %7737, %7732
  %7744 = phi float [ %7734, %7732 ], [ %7740, %7737 ]
  %7745 = phi float [ %7736, %7732 ], [ %7742, %7737 ]
  %7746 = fcmp fast olt float %7725, %7574
  %7747 = icmp slt i32 %7722, 3
  %7748 = and i1 %7747, %7746
  br i1 %7748, label %7714, label %7749

; <label>:7749                                    ; preds = %7743
  br label %7750

; <label>:7750                                    ; preds = %7749, %7707
  %7751 = phi float [ %7572, %7707 ], [ %7744, %7749 ]
  %7752 = phi float [ %7573, %7707 ], [ %7745, %7749 ]
  %7753 = fsub fast float %7488, %7751
  %7754 = select i1 %7490, float %7751, float %7753
  %7755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7756 = extractvalue %dx.types.CBufRet.f32 %7755, 0
  %7757 = extractvalue %dx.types.CBufRet.f32 %7755, 1
  %7758 = extractvalue %dx.types.CBufRet.f32 %7755, 2
  %7759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7760 = extractvalue %dx.types.CBufRet.f32 %7759, 0
  %7761 = extractvalue %dx.types.CBufRet.f32 %7759, 1
  %7762 = extractvalue %dx.types.CBufRet.f32 %7759, 2
  %7763 = extractvalue %dx.types.CBufRet.f32 %7759, 3
  %7764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7765 = extractvalue %dx.types.CBufRet.f32 %7764, 3
  %7766 = call float @dx.op.binary.f32(i32 36, float %7752, float %7765)  ; FMin(a,b)
  %7767 = fmul fast float %7763, %7754
  %7768 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7769 = fsub fast float %7760, %7756
  %7770 = fsub fast float %7761, %7757
  %7771 = fsub fast float %7762, %7758
  %7772 = fmul fast float %7768, %7769
  %7773 = fmul fast float %7768, %7770
  %7774 = fmul fast float %7768, %7771
  %7775 = fadd fast float %7772, %7756
  %7776 = fadd fast float %7773, %7757
  %7777 = fadd fast float %7774, %7758
  %7778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7779 = extractvalue %dx.types.CBufRet.f32 %7778, 0
  %7780 = extractvalue %dx.types.CBufRet.f32 %7778, 1
  %7781 = fadd fast float %7780, %7779
  %7782 = call float @dx.op.unary.f32(i32 7, float %7781)  ; Saturate(value)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7778, 2
  %7784 = extractvalue %dx.types.CBufRet.f32 %7778, 3
  %7785 = fadd fast float %7784, %7783
  %7786 = call float @dx.op.unary.f32(i32 7, float %7785)  ; Saturate(value)
  %7787 = fmul fast float %7782, %7766
  %7788 = fmul fast float %7787, %7786
  br label %7789

; <label>:7789                                    ; preds = %7750, %7669, %7504, %7486, %7484
  %7790 = phi float [ %7513, %7504 ], [ %7672, %7669 ], [ %7754, %7750 ], [ 0.000000e+00, %7484 ], [ 0.000000e+00, %7486 ]
  %7791 = phi float [ %7547, %7504 ], [ %7706, %7669 ], [ %7788, %7750 ], [ 0.000000e+00, %7484 ], [ 0.000000e+00, %7486 ]
  %7792 = phi float [ %7534, %7504 ], [ %7693, %7669 ], [ %7775, %7750 ], [ 0.000000e+00, %7484 ], [ 0.000000e+00, %7486 ]
  %7793 = phi float [ %7535, %7504 ], [ %7694, %7669 ], [ %7776, %7750 ], [ 0.000000e+00, %7484 ], [ 0.000000e+00, %7486 ]
  %7794 = phi float [ %7536, %7504 ], [ %7695, %7669 ], [ %7777, %7750 ], [ 0.000000e+00, %7484 ], [ 0.000000e+00, %7486 ]
  %7795 = fmul fast float %7427, %7791
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 2
  %7798 = fsub fast float %7434, %7797
  %7799 = fcmp fast olt float %7795, -2.000000e+01
  %7800 = call float @dx.op.unary.f32(i32 21, float %7795)  ; Exp(value)
  %7801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.f32 %7801, 2
  %7803 = extractvalue %dx.types.CBufRet.f32 %7801, 3
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 2
  %7806 = fmul fast float %7803, %7798
  %7807 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7808 = fsub fast float 1.000000e+00, %7807
  %7809 = fmul fast float %7419, 5.000000e-01
  %7810 = fadd fast float %7809, 5.000000e-01
  %7811 = call float @dx.op.unary.f32(i32 7, float %7810)  ; Saturate(value)
  %7812 = fsub fast float 1.000000e+00, %7811
  %7813 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7808)  ; FMax(a,b)
  %7814 = fdiv fast float %7812, %7813
  %7815 = fsub fast float %7798, %7376
  %7816 = call float @dx.op.unary.f32(i32 6, float %7815)  ; FAbs(value)
  %7817 = fmul fast float %7816, %7802
  %7818 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7819 = fsub fast float 1.000000e+00, %7817
  %7820 = fmul fast float %7819, %7818
  %7821 = fadd fast float %7820, %7817
  %7822 = fmul fast float %7805, %7798
  %7823 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7824 = fsub fast float 1.000000e+00, %7821
  %7825 = fmul fast float %7824, %7823
  %7826 = fadd fast float %7825, %7821
  %7827 = call float @dx.op.unary.f32(i32 7, float %7826)  ; Saturate(value)
  %7828 = fadd fast float %7800, -1.000000e+00
  %7829 = select i1 %7799, float -1.000000e+00, float %7828
  %7830 = fmul fast float %7827, %7829
  %7831 = fadd fast float %7830, 1.000000e+00
  %7832 = fsub fast float -0.000000e+00, %7830
  %7833 = fmul fast float %7792, %7832
  %7834 = fmul fast float %7793, %7832
  %7835 = fmul fast float %7794, %7832
  br label %7836

; <label>:7836                                    ; preds = %7789, %7385
  %7837 = phi float [ %7790, %7789 ], [ 0.000000e+00, %7385 ]
  %7838 = phi float [ %7831, %7789 ], [ 1.000000e+00, %7385 ]
  %7839 = phi float [ %7833, %7789 ], [ 0.000000e+00, %7385 ]
  %7840 = phi float [ %7834, %7789 ], [ 0.000000e+00, %7385 ]
  %7841 = phi float [ %7835, %7789 ], [ 0.000000e+00, %7385 ]
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7844 = fsub fast float 1.000000e+00, %7838
  %7845 = fmul fast float %7844, %7420
  %7846 = fmul fast float %7845, %7843
  %7847 = fsub fast float %7420, %7846
  br i1 %7413, label %7848, label %7877, !dx.controlflow.hints !161

; <label>:7848                                    ; preds = %7836
  %7849 = fmul fast float %7421, %7410
  %7850 = fadd fast float %7849, %7411
  %7851 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7852 = fmul fast float %7392, %7847
  %7853 = fsub fast float -0.000000e+00, %7852
  %7854 = fmul fast float %7393, %7847
  %7855 = fsub fast float -0.000000e+00, %7854
  %7856 = call float @dx.op.unary.f32(i32 21, float %7853)  ; Exp(value)
  %7857 = call float @dx.op.unary.f32(i32 21, float %7855)  ; Exp(value)
  %7858 = call float @dx.op.binary.f32(i32 35, float %7400, float %7856)  ; FMax(a,b)
  %7859 = call float @dx.op.binary.f32(i32 35, float %7400, float %7857)  ; FMax(a,b)
  %7860 = fsub fast float %7859, %7858
  %7861 = fmul fast float %7860, %7851
  %7862 = fadd fast float %7861, %7858
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fsub fast float %7397, %7402
  %7865 = fsub fast float %7398, %7403
  %7866 = fsub fast float %7399, %7404
  %7867 = fmul fast float %7851, %7864
  %7868 = fmul fast float %7851, %7865
  %7869 = fmul fast float %7851, %7866
  %7870 = fadd fast float %7867, %7402
  %7871 = fadd fast float %7868, %7403
  %7872 = fadd fast float %7869, %7404
  %7873 = fsub fast float 1.000000e+00, %7863
  %7874 = fmul fast float %7873, %7870
  %7875 = fmul fast float %7873, %7871
  %7876 = fmul fast float %7873, %7872
  br label %7936

; <label>:7877                                    ; preds = %7836
  %7878 = fmul fast float %7847, %7409
  %7879 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  %7880 = fsub fast float 2.000000e+00, %7879
  %7881 = fmul fast float %7879, 9.921875e-01
  %7882 = fmul fast float %7881, %7880
  %7883 = fadd fast float %7882, 3.906250e-03
  %7884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %7883, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7885 = extractvalue %dx.types.ResRet.f32 %7884, 0
  %7886 = fsub fast float %7879, %7885
  %7887 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7886)  ; FMax(a,b)
  %7888 = fmul fast float %7395, %7376
  %7889 = call float @dx.op.unary.f32(i32 6, float %7888)  ; FAbs(value)
  %7890 = fcmp fast ogt float %7889, 0x3EB0C6F7A0000000
  br i1 %7890, label %7891, label %7897, !dx.controlflow.hints !162

; <label>:7891                                    ; preds = %7877
  %7892 = fmul fast float %7888, 0xBFF7154760000000
  %7893 = call float @dx.op.unary.f32(i32 21, float %7892)  ; Exp(value)
  %7894 = fsub fast float 1.000000e+00, %7893
  %7895 = fdiv fast float %7894, %7888
  %7896 = fmul fast float %7895, %7405
  br label %7897

; <label>:7897                                    ; preds = %7891, %7877
  %7898 = phi float [ %7896, %7891 ], [ %7405, %7877 ]
  %7899 = fadd fast float %7898, %7407
  %7900 = fmul fast float %7899, %7887
  %7901 = fmul fast float %7392, %7900
  %7902 = fsub fast float -0.000000e+00, %7901
  %7903 = fmul fast float %7393, %7900
  %7904 = fsub fast float -0.000000e+00, %7903
  %7905 = fmul fast float %7394, %7900
  %7906 = fsub fast float -0.000000e+00, %7905
  %7907 = call float @dx.op.unary.f32(i32 21, float %7902)  ; Exp(value)
  %7908 = call float @dx.op.unary.f32(i32 21, float %7904)  ; Exp(value)
  %7909 = call float @dx.op.unary.f32(i32 21, float %7906)  ; Exp(value)
  %7910 = fmul fast float %7421, %7421
  %7911 = fadd fast float %7910, 1.000000e+00
  %7912 = fmul fast float %7911, 0x3FAE8EC8A0000000
  %7913 = fmul fast float %7912, %7402
  %7914 = fmul fast float %7912, %7403
  %7915 = fmul fast float %7912, %7404
  %7916 = fmul fast float %7421, %7400
  %7917 = fsub fast float 1.000000e+00, %7916
  %7918 = fmul fast float %7400, %7400
  %7919 = fsub fast float 1.000000e+00, %7918
  %7920 = fmul fast float %7919, 0x3FB45F3060000000
  %7921 = fmul fast float %7917, %7917
  %7922 = fdiv fast float 1.000000e+00, %7921
  %7923 = fmul fast float %7920, %7922
  %7924 = fmul fast float %7923, %7397
  %7925 = fmul fast float %7923, %7398
  %7926 = fmul fast float %7923, %7399
  %7927 = fadd fast float %7924, %7913
  %7928 = fadd fast float %7925, %7914
  %7929 = fadd fast float %7926, %7915
  %7930 = fsub fast float 1.000000e+00, %7907
  %7931 = fsub fast float 1.000000e+00, %7908
  %7932 = fsub fast float 1.000000e+00, %7909
  %7933 = fmul fast float %7927, %7930
  %7934 = fmul fast float %7928, %7931
  %7935 = fmul fast float %7929, %7932
  br label %7936

; <label>:7936                                    ; preds = %7897, %7848
  %7937 = phi float [ %7874, %7848 ], [ %7933, %7897 ]
  %7938 = phi float [ %7875, %7848 ], [ %7934, %7897 ]
  %7939 = phi float [ %7876, %7848 ], [ %7935, %7897 ]
  %7940 = phi float [ %7863, %7848 ], [ %7907, %7897 ]
  %7941 = phi float [ %7863, %7848 ], [ %7908, %7897 ]
  %7942 = phi float [ %7863, %7848 ], [ %7909, %7897 ]
  br i1 %7429, label %7943, label %8141, !dx.controlflow.hints !163

; <label>:7943                                    ; preds = %7936
  %7944 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7945 = fmul fast float %7944, %7844
  %7946 = fsub fast float %7839, %7937
  %7947 = fsub fast float %7840, %7938
  %7948 = fsub fast float %7841, %7939
  %7949 = fmul fast float %7945, %7946
  %7950 = fmul fast float %7945, %7947
  %7951 = fmul fast float %7945, %7948
  %7952 = fadd fast float %7949, %7937
  %7953 = fadd fast float %7950, %7938
  %7954 = fadd fast float %7951, %7939
  %7955 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7940)  ; FMax(a,b)
  %7956 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7941)  ; FMax(a,b)
  %7957 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7942)  ; FMax(a,b)
  %7958 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7838)  ; FMax(a,b)
  %7959 = call float @dx.op.binary.f32(i32 35, float %7837, float %7847)  ; FMax(a,b)
  %7960 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7959)  ; FMax(a,b)
  %7961 = fdiv fast float %7837, %7960
  %7962 = call float @dx.op.unary.f32(i32 7, float %7961)  ; Saturate(value)
  %7963 = fdiv fast float %7847, %7960
  %7964 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7965 = fcmp fast une float %7958, 1.000000e+00
  br i1 %7965, label %7966, label %7979, !dx.controlflow.hints !164

; <label>:7966                                    ; preds = %7943
  %7967 = call float @dx.op.unary.f32(i32 23, float %7958)  ; Log(value)
  %7968 = fmul fast float %7967, 0x3FE62E4300000000
  %7969 = fmul fast float %7839, %7968
  %7970 = fsub fast float -0.000000e+00, %7969
  %7971 = fmul fast float %7840, %7968
  %7972 = fsub fast float -0.000000e+00, %7971
  %7973 = fmul fast float %7841, %7968
  %7974 = fsub fast float -0.000000e+00, %7973
  %7975 = fsub fast float 1.000000e+00, %7958
  %7976 = fdiv fast float %7970, %7975
  %7977 = fdiv fast float %7972, %7975
  %7978 = fdiv fast float %7974, %7975
  br label %7979

; <label>:7979                                    ; preds = %7966, %7943
  %7980 = phi float [ %7976, %7966 ], [ %7839, %7943 ]
  %7981 = phi float [ %7977, %7966 ], [ %7840, %7943 ]
  %7982 = phi float [ %7978, %7966 ], [ %7841, %7943 ]
  %7983 = phi float [ %7968, %7966 ], [ 0.000000e+00, %7943 ]
  %7984 = fcmp fast une float %7955, 1.000000e+00
  br i1 %7984, label %7985, label %7992, !dx.controlflow.hints !165

; <label>:7985                                    ; preds = %7979
  %7986 = call float @dx.op.unary.f32(i32 23, float %7955)  ; Log(value)
  %7987 = fmul fast float %7986, 0x3FE62E4300000000
  %7988 = fmul fast float %7952, %7987
  %7989 = fsub fast float -0.000000e+00, %7988
  %7990 = fsub fast float 1.000000e+00, %7955
  %7991 = fdiv fast float %7989, %7990
  br label %7992

; <label>:7992                                    ; preds = %7985, %7979
  %7993 = phi float [ %7991, %7985 ], [ %7952, %7979 ]
  %7994 = phi float [ %7987, %7985 ], [ 0.000000e+00, %7979 ]
  %7995 = fcmp fast une float %7956, 1.000000e+00
  br i1 %7995, label %7996, label %8003, !dx.controlflow.hints !165

; <label>:7996                                    ; preds = %7992
  %7997 = call float @dx.op.unary.f32(i32 23, float %7956)  ; Log(value)
  %7998 = fmul fast float %7997, 0x3FE62E4300000000
  %7999 = fmul fast float %7953, %7998
  %8000 = fsub fast float -0.000000e+00, %7999
  %8001 = fsub fast float 1.000000e+00, %7956
  %8002 = fdiv fast float %8000, %8001
  br label %8003

; <label>:8003                                    ; preds = %7996, %7992
  %8004 = phi float [ %8002, %7996 ], [ %7953, %7992 ]
  %8005 = phi float [ %7998, %7996 ], [ 0.000000e+00, %7992 ]
  %8006 = fcmp fast une float %7957, 1.000000e+00
  br i1 %8006, label %8007, label %8014, !dx.controlflow.hints !165

; <label>:8007                                    ; preds = %8003
  %8008 = call float @dx.op.unary.f32(i32 23, float %7957)  ; Log(value)
  %8009 = fmul fast float %8008, 0x3FE62E4300000000
  %8010 = fmul fast float %7954, %8009
  %8011 = fsub fast float -0.000000e+00, %8010
  %8012 = fsub fast float 1.000000e+00, %7957
  %8013 = fdiv fast float %8011, %8012
  br label %8014

; <label>:8014                                    ; preds = %8007, %8003
  %8015 = phi float [ %8013, %8007 ], [ %7954, %8003 ]
  %8016 = phi float [ %8009, %8007 ], [ 0.000000e+00, %8003 ]
  %8017 = fmul fast float %7980, %7964
  %8018 = fmul fast float %7981, %7964
  %8019 = fmul fast float %7982, %7964
  %8020 = fmul fast float %7983, %7964
  %8021 = fmul fast float %7993, %7962
  %8022 = fmul fast float %8004, %7962
  %8023 = fmul fast float %8015, %7962
  %8024 = fmul fast float %7994, %7962
  %8025 = fmul fast float %8005, %7962
  %8026 = fmul fast float %8016, %7962
  %8027 = fadd fast float %8021, %8017
  %8028 = fadd fast float %8022, %8018
  %8029 = fadd fast float %8023, %8019
  %8030 = fadd fast float %8024, %8020
  %8031 = fadd fast float %8025, %8020
  %8032 = fadd fast float %8026, %8020
  %8033 = fcmp fast une float %8030, 0.000000e+00
  br i1 %8033, label %8034, label %8041, !dx.controlflow.hints !166

; <label>:8034                                    ; preds = %8014
  %8035 = fmul fast float %8030, 0x3FF7154760000000
  %8036 = call float @dx.op.unary.f32(i32 21, float %8035)  ; Exp(value)
  %8037 = fsub fast float 1.000000e+00, %8036
  %8038 = fmul fast float %8027, %8037
  %8039 = fsub fast float -0.000000e+00, %8038
  %8040 = fdiv fast float %8039, %8030
  br label %8041

; <label>:8041                                    ; preds = %8034, %8014
  %8042 = phi float [ %8036, %8034 ], [ 1.000000e+00, %8014 ]
  %8043 = phi float [ %8040, %8034 ], [ %8027, %8014 ]
  %8044 = fcmp fast une float %8031, 0.000000e+00
  br i1 %8044, label %8045, label %8052, !dx.controlflow.hints !166

; <label>:8045                                    ; preds = %8041
  %8046 = fmul fast float %8031, 0x3FF7154760000000
  %8047 = call float @dx.op.unary.f32(i32 21, float %8046)  ; Exp(value)
  %8048 = fsub fast float 1.000000e+00, %8047
  %8049 = fmul fast float %8028, %8048
  %8050 = fsub fast float -0.000000e+00, %8049
  %8051 = fdiv fast float %8050, %8031
  br label %8052

; <label>:8052                                    ; preds = %8045, %8041
  %8053 = phi float [ %8047, %8045 ], [ 1.000000e+00, %8041 ]
  %8054 = phi float [ %8051, %8045 ], [ %8028, %8041 ]
  %8055 = fcmp fast une float %8032, 0.000000e+00
  br i1 %8055, label %8056, label %8063, !dx.controlflow.hints !166

; <label>:8056                                    ; preds = %8052
  %8057 = fmul fast float %8032, 0x3FF7154760000000
  %8058 = call float @dx.op.unary.f32(i32 21, float %8057)  ; Exp(value)
  %8059 = fsub fast float 1.000000e+00, %8058
  %8060 = fmul fast float %8029, %8059
  %8061 = fsub fast float -0.000000e+00, %8060
  %8062 = fdiv fast float %8061, %8032
  br label %8063

; <label>:8063                                    ; preds = %8056, %8052
  %8064 = phi float [ %8058, %8056 ], [ 1.000000e+00, %8052 ]
  %8065 = phi float [ %8062, %8056 ], [ %8029, %8052 ]
  %8066 = fcmp fast ogt float %7962, %7964
  br i1 %8066, label %8067, label %8087

; <label>:8067                                    ; preds = %8063
  %8068 = fsub fast float 1.000000e+00, %7964
  %8069 = fmul fast float %7980, %8068
  %8070 = fmul fast float %7981, %8068
  %8071 = fmul fast float %7982, %8068
  %8072 = fmul fast float %7983, %8068
  %8073 = fcmp fast une float %8072, 0.000000e+00
  br i1 %8073, label %8074, label %8125, !dx.controlflow.hints !167

; <label>:8074                                    ; preds = %8067
  %8075 = fmul fast float %8072, 0x3FF7154760000000
  %8076 = call float @dx.op.unary.f32(i32 21, float %8075)  ; Exp(value)
  %8077 = fsub fast float 1.000000e+00, %8076
  %8078 = fmul fast float %8069, %8077
  %8079 = fsub fast float -0.000000e+00, %8078
  %8080 = fmul fast float %8070, %8077
  %8081 = fsub fast float -0.000000e+00, %8080
  %8082 = fmul fast float %8071, %8077
  %8083 = fsub fast float -0.000000e+00, %8082
  %8084 = fdiv fast float %8079, %8072
  %8085 = fdiv fast float %8081, %8072
  %8086 = fdiv fast float %8083, %8072
  br label %8125

; <label>:8087                                    ; preds = %8063
  %8088 = fsub fast float 1.000000e+00, %7962
  %8089 = fmul fast float %7993, %8088
  %8090 = fmul fast float %8004, %8088
  %8091 = fmul fast float %8015, %8088
  %8092 = fmul fast float %7994, %8088
  %8093 = fmul fast float %8005, %8088
  %8094 = fmul fast float %8016, %8088
  %8095 = fcmp fast une float %8092, 0.000000e+00
  br i1 %8095, label %8096, label %8103, !dx.controlflow.hints !166

; <label>:8096                                    ; preds = %8087
  %8097 = fmul fast float %8092, 0x3FF7154760000000
  %8098 = call float @dx.op.unary.f32(i32 21, float %8097)  ; Exp(value)
  %8099 = fsub fast float 1.000000e+00, %8098
  %8100 = fmul fast float %8089, %8099
  %8101 = fsub fast float -0.000000e+00, %8100
  %8102 = fdiv fast float %8101, %8092
  br label %8103

; <label>:8103                                    ; preds = %8096, %8087
  %8104 = phi float [ %8102, %8096 ], [ %8089, %8087 ]
  %8105 = phi float [ %8098, %8096 ], [ 1.000000e+00, %8087 ]
  %8106 = fcmp fast une float %8093, 0.000000e+00
  br i1 %8106, label %8107, label %8114, !dx.controlflow.hints !166

; <label>:8107                                    ; preds = %8103
  %8108 = fmul fast float %8093, 0x3FF7154760000000
  %8109 = call float @dx.op.unary.f32(i32 21, float %8108)  ; Exp(value)
  %8110 = fsub fast float 1.000000e+00, %8109
  %8111 = fmul fast float %8090, %8110
  %8112 = fsub fast float -0.000000e+00, %8111
  %8113 = fdiv fast float %8112, %8093
  br label %8114

; <label>:8114                                    ; preds = %8107, %8103
  %8115 = phi float [ %8113, %8107 ], [ %8090, %8103 ]
  %8116 = phi float [ %8109, %8107 ], [ 1.000000e+00, %8103 ]
  %8117 = fcmp fast une float %8094, 0.000000e+00
  br i1 %8117, label %8118, label %8125, !dx.controlflow.hints !166

; <label>:8118                                    ; preds = %8114
  %8119 = fmul fast float %8094, 0x3FF7154760000000
  %8120 = call float @dx.op.unary.f32(i32 21, float %8119)  ; Exp(value)
  %8121 = fsub fast float 1.000000e+00, %8120
  %8122 = fmul fast float %8091, %8121
  %8123 = fsub fast float -0.000000e+00, %8122
  %8124 = fdiv fast float %8123, %8094
  br label %8125

; <label>:8125                                    ; preds = %8118, %8114, %8074, %8067
  %8126 = phi float [ %8124, %8118 ], [ %8086, %8074 ], [ %8071, %8067 ], [ %8091, %8114 ]
  %8127 = phi float [ %8115, %8118 ], [ %8085, %8074 ], [ %8070, %8067 ], [ %8115, %8114 ]
  %8128 = phi float [ %8104, %8118 ], [ %8084, %8074 ], [ %8069, %8067 ], [ %8104, %8114 ]
  %8129 = phi float [ %8120, %8118 ], [ %8076, %8074 ], [ 1.000000e+00, %8067 ], [ 1.000000e+00, %8114 ]
  %8130 = phi float [ %8116, %8118 ], [ %8076, %8074 ], [ 1.000000e+00, %8067 ], [ %8116, %8114 ]
  %8131 = phi float [ %8105, %8118 ], [ %8076, %8074 ], [ 1.000000e+00, %8067 ], [ %8105, %8114 ]
  %8132 = fmul fast float %8131, %8043
  %8133 = fmul fast float %8130, %8054
  %8134 = fmul fast float %8129, %8065
  %8135 = fadd fast float %8132, %8128
  %8136 = fadd fast float %8133, %8127
  %8137 = fadd fast float %8134, %8126
  %8138 = fmul fast float %8131, %8042
  %8139 = fmul fast float %8130, %8053
  %8140 = fmul fast float %8129, %8064
  br label %8141

; <label>:8141                                    ; preds = %8125, %7936
  %8142 = phi float [ %8140, %8125 ], [ %7942, %7936 ]
  %8143 = phi float [ %8139, %8125 ], [ %7941, %7936 ]
  %8144 = phi float [ %8138, %8125 ], [ %7940, %7936 ]
  %8145 = phi float [ %8137, %8125 ], [ %7939, %7936 ]
  %8146 = phi float [ %8136, %8125 ], [ %7938, %7936 ]
  %8147 = phi float [ %8135, %8125 ], [ %7937, %7936 ]
  %8148 = fmul fast float %8147, %7088
  %8149 = fmul fast float %8146, %7090
  %8150 = fmul fast float %8145, %7092
  %8151 = fmul fast float %8144, %7384
  %8152 = call float @dx.op.dot3.f32(i32 55, float %8144, float %8143, float %8142, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8153 = call float @dx.op.dot3.f32(i32 55, float %8148, float %8149, float %8150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8154 = select i1 %261, float %8152, float %8144
  %8155 = select i1 %261, float %8152, float %8143
  %8156 = select i1 %261, float 1.000000e+00, float %8142
  %8157 = select i1 %261, float %8153, float %8148
  %8158 = select i1 %261, float 0.000000e+00, float %8149
  %8159 = select i1 %261, float 0.000000e+00, float %8150
  %8160 = fmul fast float %8154, %7378
  %8161 = fmul fast float %8155, %7379
  %8162 = fmul fast float %8156, %7380
  %8163 = fadd fast float %8160, %8157
  %8164 = fadd fast float %8161, %8158
  %8165 = fadd fast float %8159, %8162
  %8166 = fmul fast float %8154, %7381
  %8167 = fmul fast float %8155, %7382
  %8168 = fmul fast float %8156, %7383
  %8169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.i32 %8169, 0
  %8171 = icmp eq i32 %8170, 0
  br i1 %8171, label %8539, label %8172, !dx.controlflow.hints !168

; <label>:8172                                    ; preds = %8141
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 2
  %8175 = extractvalue %dx.types.CBufRet.f32 %8173, 3
  %8176 = fmul fast float %8174, %102
  %8177 = fmul fast float %8175, %103
  %8178 = fmul fast float %8176, 2.000000e+00
  %8179 = fmul fast float %8177, 2.000000e+00
  %8180 = fsub fast float 1.000000e+00, %8178
  %8181 = fsub fast float 1.000000e+00, %8179
  %8182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8182, 0
  %8184 = extractvalue %dx.types.CBufRet.f32 %8182, 1
  %8185 = extractvalue %dx.types.CBufRet.f32 %8182, 2
  %8186 = fmul fast float %8180, %8183
  %8187 = fmul fast float %8180, %8184
  %8188 = fmul fast float %8180, %8185
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.CBufRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.CBufRet.f32 %8189, 2
  %8193 = fmul fast float %8181, %8190
  %8194 = fmul fast float %8181, %8191
  %8195 = fmul fast float %8181, %8192
  %8196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.f32 %8196, 0
  %8198 = extractvalue %dx.types.CBufRet.f32 %8196, 1
  %8199 = extractvalue %dx.types.CBufRet.f32 %8196, 2
  %8200 = fadd fast float %8193, %8197
  %8201 = fadd fast float %8200, %8186
  %8202 = fadd fast float %8194, %8198
  %8203 = fadd fast float %8202, %8187
  %8204 = fadd fast float %8195, %8199
  %8205 = fadd fast float %8204, %8188
  %8206 = fmul fast float %8201, %7377
  %8207 = fmul fast float %8203, %7377
  %8208 = fmul fast float %8205, %7377
  %8209 = fmul fast float %8206, %8206
  %8210 = fmul fast float %8207, %8207
  %8211 = fadd fast float %8209, %8210
  %8212 = fmul fast float %8208, %8208
  %8213 = fadd fast float %8211, %8212
  %8214 = call float @dx.op.unary.f32(i32 24, float %8213)  ; Sqrt(value)
  %8215 = extractvalue %dx.types.CBufRet.f32 %7104, 0
  %8216 = fsub fast float %8214, %8215
  %8217 = extractvalue %dx.types.CBufRet.f32 %7104, 2
  %8218 = fmul fast float %8216, %8217
  %8219 = call float @dx.op.unary.f32(i32 7, float %8218)  ; Saturate(value)
  %8220 = fadd fast float %8219, -5.000000e-01
  %8221 = fmul fast float %8220, 2.000000e+00
  %8222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8223 = extractvalue %dx.types.CBufRet.f32 %8222, 2
  %8224 = call float @dx.op.binary.f32(i32 36, float %8223, float %8221)  ; FMin(a,b)
  %8225 = fsub fast float -0.000000e+00, %8223
  %8226 = fcmp fast ogt float %8224, %8225
  br i1 %8226, label %8227, label %8539, !dx.controlflow.hints !169

; <label>:8227                                    ; preds = %8172
  %8228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8229 = extractvalue %dx.types.CBufRet.f32 %8228, 3
  %8230 = fcmp fast ogt float %8229, 0.000000e+00
  br i1 %8230, label %8231, label %8306, !dx.controlflow.hints !170

; <label>:8231                                    ; preds = %8227
  %8232 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8233 = extractvalue %dx.types.Dimensions %8232, 0
  %8234 = sitofp i32 %8233 to float
  %8235 = extractvalue %dx.types.Dimensions %8232, 1
  %8236 = sitofp i32 %8235 to float
  %8237 = fmul fast float %8176, %8234
  %8238 = fmul fast float %8177, %8236
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 1
  %8241 = fsub fast float -0.000000e+00, %8240
  %8242 = fptoui float %8241 to i32
  %8243 = fptoui float %8237 to i32
  %8244 = fptoui float %8238 to i32
  %8245 = and i32 %8242, 31
  %8246 = lshr i32 %8243, %8245
  %8247 = lshr i32 %8244, %8245
  %8248 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8242, i32 %8246, i32 %8247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8249 = extractvalue %dx.types.ResRet.f32 %8248, 0
  %8250 = fcmp fast olt float %8249, -1.000000e+00
  %8251 = fcmp fast ogt float %8249, -1.000000e+00
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 1
  %8254 = select i1 %8251, float %8253, float 1.000000e+00
  %8255 = fadd fast float %8249, 1.000000e+00
  %8256 = fmul fast float %8254, %8255
  %8257 = call float @dx.op.unary.f32(i32 6, float %8256)  ; FAbs(value)
  %8258 = extractvalue %dx.types.CBufRet.f32 %8252, 3
  %8259 = fcmp fast oge float %8257, %8258
  %8260 = select i1 %8259, float 0x4197782600000000, float %8257
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 0
  %8263 = extractvalue %dx.types.CBufRet.f32 %8261, 1
  %8264 = extractvalue %dx.types.CBufRet.f32 %8261, 2
  %8265 = select i1 %8250, float %8262, float %8183
  %8266 = select i1 %8250, float %8263, float %8184
  %8267 = select i1 %8250, float %8264, float %8185
  %8268 = fmul fast float %8265, %8180
  %8269 = fmul fast float %8266, %8180
  %8270 = fmul fast float %8267, %8180
  %8271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.f32 %8271, 0
  %8273 = extractvalue %dx.types.CBufRet.f32 %8271, 1
  %8274 = extractvalue %dx.types.CBufRet.f32 %8271, 2
  %8275 = select i1 %8250, float %8272, float %8190
  %8276 = select i1 %8250, float %8273, float %8191
  %8277 = select i1 %8250, float %8274, float %8192
  %8278 = fmul fast float %8275, %8181
  %8279 = fmul fast float %8276, %8181
  %8280 = fmul fast float %8277, %8181
  %8281 = fadd fast float %8278, %8268
  %8282 = fadd fast float %8279, %8269
  %8283 = fadd fast float %8280, %8270
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 0
  %8286 = extractvalue %dx.types.CBufRet.f32 %8284, 1
  %8287 = extractvalue %dx.types.CBufRet.f32 %8284, 2
  %8288 = select i1 %8250, float %8285, float %8197
  %8289 = select i1 %8250, float %8286, float %8198
  %8290 = select i1 %8250, float %8287, float %8199
  %8291 = fadd fast float %8281, %8288
  %8292 = fadd fast float %8282, %8289
  %8293 = fadd fast float %8283, %8290
  %8294 = fmul fast float %8291, %8260
  %8295 = fmul fast float %8292, %8260
  %8296 = fmul fast float %8293, %8260
  %8297 = fmul fast float %8294, %8294
  %8298 = fmul fast float %8295, %8295
  %8299 = fadd fast float %8297, %8298
  %8300 = fmul fast float %8296, %8296
  %8301 = fadd fast float %8299, %8300
  %8302 = call float @dx.op.unary.f32(i32 24, float %8301)  ; Sqrt(value)
  %8303 = fsub fast float %8302, %8215
  %8304 = fmul fast float %8303, %8217
  %8305 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  br label %8306

; <label>:8306                                    ; preds = %8231, %8227
  %8307 = phi float [ %8305, %8231 ], [ 1.000000e+00, %8227 ]
  %8308 = fmul fast float %8224, 5.000000e-01
  %8309 = fadd fast float %8308, 5.000000e-01
  %8310 = call float @dx.op.unary.f32(i32 22, float %8309)  ; Frc(value)
  %8311 = call float @dx.op.unary.f32(i32 27, float %8310)  ; Round_ni(value)
  %8312 = call float @dx.op.unary.f32(i32 22, float %8310)  ; Frc(value)
  %8313 = fmul fast float %8312, 2.000000e+00
  %8314 = fadd fast float %8313, -1.000000e+00
  %8315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %8176, float %8177, float %8311, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8316 = extractvalue %dx.types.ResRet.f32 %8315, 0
  %8317 = extractvalue %dx.types.ResRet.f32 %8315, 1
  %8318 = extractvalue %dx.types.ResRet.f32 %8315, 2
  %8319 = extractvalue %dx.types.ResRet.f32 %8315, 3
  %8320 = fadd fast float %8316, -5.000000e-01
  %8321 = fadd fast float %8318, -5.000000e-01
  %8322 = fmul fast float %8320, 0xBFD5555560000000
  %8323 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8321, float %8322)  ; FMad(a,b,c)
  %8324 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8317, float 0.000000e+00)  ; FMad(a,b,c)
  %8325 = fadd fast float %8324, %8319
  %8326 = fmul fast float %8320, -7.500000e-01
  %8327 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8321, float %8326)  ; FMad(a,b,c)
  %8328 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8317, float 0.000000e+00)  ; FMad(a,b,c)
  %8329 = fadd fast float %8328, %8319
  %8330 = call float @dx.op.binary.f32(i32 35, float %8323, float -1.000000e+00)  ; FMax(a,b)
  %8331 = call float @dx.op.binary.f32(i32 35, float %8325, float -1.000000e+00)  ; FMax(a,b)
  %8332 = call float @dx.op.binary.f32(i32 35, float %8327, float -1.000000e+00)  ; FMax(a,b)
  %8333 = call float @dx.op.binary.f32(i32 35, float %8329, float -1.000000e+00)  ; FMax(a,b)
  %8334 = call float @dx.op.binary.f32(i32 36, float %8330, float 1.000000e+00)  ; FMin(a,b)
  %8335 = call float @dx.op.binary.f32(i32 36, float %8331, float 1.000000e+00)  ; FMin(a,b)
  %8336 = call float @dx.op.binary.f32(i32 36, float %8332, float 1.000000e+00)  ; FMin(a,b)
  %8337 = call float @dx.op.binary.f32(i32 36, float %8333, float 1.000000e+00)  ; FMin(a,b)
  %8338 = fcmp fast olt float %8334, 0x3FEFFF8020000000
  br i1 %8338, label %8339, label %8454, !dx.controlflow.hints !171

; <label>:8339                                    ; preds = %8306
  %8340 = extractvalue %dx.types.CBufRet.f32 %8222, 3
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8345 = extractvalue %dx.types.CBufRet.f32 %8341, 3
  %8346 = fsub fast float %8342, %8334
  %8347 = fsub fast float %8343, %8335
  %8348 = fsub fast float %8344, %8336
  %8349 = fsub fast float %8345, %8337
  %8350 = fmul fast float %8346, %8340
  %8351 = fmul fast float %8347, %8340
  %8352 = fmul fast float %8348, %8340
  %8353 = fmul fast float %8349, %8340
  %8354 = fadd fast float %8350, %8334
  %8355 = fadd fast float %8351, %8335
  %8356 = fsub fast float -0.000000e+00, %8355
  %8357 = fadd fast float %8352, %8336
  %8358 = fadd fast float %8353, %8337
  %8359 = fmul fast float %8354, %8354
  %8360 = fsub fast float %8355, %8359
  %8361 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8360)  ; FMax(a,b)
  %8362 = fdiv fast float 1.000000e+00, %8361
  %8363 = fmul fast float %8355, %8354
  %8364 = fsub fast float %8357, %8363
  %8365 = fsub fast float %8314, %8354
  %8366 = fmul fast float %8314, %8314
  %8367 = fsub fast float %8366, %8355
  %8368 = fmul fast float %8365, %8362
  %8369 = fmul fast float %8368, %8364
  %8370 = fsub fast float %8367, %8369
  %8371 = fmul fast float %8355, %8355
  %8372 = fsub fast float %8358, %8371
  %8373 = fmul fast float %8364, %8364
  %8374 = fmul fast float %8373, %8362
  %8375 = fsub fast float %8372, %8374
  %8376 = fdiv fast float %8370, %8375
  %8377 = fmul fast float %8364, %8376
  %8378 = fsub fast float %8365, %8377
  %8379 = fmul fast float %8378, %8362
  %8380 = fmul fast float %8379, %8354
  %8381 = fsub fast float 1.000000e+00, %8380
  %8382 = fmul fast float %8355, %8376
  %8383 = fsub fast float %8381, %8382
  %8384 = fmul fast float %8379, %8379
  %8385 = fmul fast float %8376, 4.000000e+00
  %8386 = fmul fast float %8385, %8383
  %8387 = fsub fast float %8384, %8386
  %8388 = call float @dx.op.unary.f32(i32 24, float %8387)  ; Sqrt(value)
  %8389 = fcmp fast oge float %8379, 0.000000e+00
  %8390 = fsub fast float -0.000000e+00, %8388
  %8391 = select i1 %8389, float %8390, float %8388
  %8392 = fsub fast float %8391, %8379
  %8393 = fdiv fast float %8392, %8376
  %8394 = fdiv fast float %8383, %8392
  %8395 = fmul fast float %8393, 5.000000e-01
  %8396 = fmul fast float %8394, 2.000000e+00
  %8397 = select i1 %8389, float %8395, float %8396
  %8398 = select i1 %8389, float %8396, float %8395
  %8399 = call float @dx.op.binary.f32(i32 35, float %8397, float %8398)  ; FMax(a,b)
  %8400 = call float @dx.op.binary.f32(i32 36, float %8397, float %8398)  ; FMin(a,b)
  %8401 = fcmp fast ogt float %8314, %8400
  br i1 %8401, label %8402, label %8412

; <label>:8402                                    ; preds = %8339
  %8403 = fsub fast float %8314, %8400
  %8404 = fsub fast float %8399, %8400
  %8405 = fmul fast float %8403, %8404
  %8406 = fmul fast float %8399, %8314
  %8407 = fadd fast float %8399, %8314
  %8408 = fmul fast float %8407, %8354
  %8409 = fadd fast float %8406, %8355
  %8410 = fsub fast float %8409, %8408
  %8411 = fdiv fast float %8410, %8405
  br label %8412

; <label>:8412                                    ; preds = %8402, %8339
  %8413 = phi float [ %8411, %8402 ], [ 0.000000e+00, %8339 ]
  %8414 = fcmp fast ogt float %8314, %8399
  %8415 = fsub fast float %8314, %8399
  br i1 %8414, label %8416, label %8426

; <label>:8416                                    ; preds = %8412
  %8417 = fsub fast float %8399, %8400
  %8418 = fmul fast float %8417, %8415
  %8419 = fmul fast float %8400, %8314
  %8420 = fadd fast float %8400, %8314
  %8421 = fmul fast float %8420, %8354
  %8422 = fsub fast float %8356, %8419
  %8423 = fadd fast float %8422, %8421
  %8424 = fdiv fast float %8423, %8418
  %8425 = fadd fast float %8424, %8413
  br label %8426

; <label>:8426                                    ; preds = %8416, %8412
  %8427 = phi float [ %8425, %8416 ], [ %8413, %8412 ]
  %8428 = fsub fast float %8314, %8400
  %8429 = fmul fast float %8428, %8415
  %8430 = fmul fast float %8400, %8399
  %8431 = fadd fast float %8400, %8399
  %8432 = fmul fast float %8431, %8354
  %8433 = fadd fast float %8430, %8355
  %8434 = fsub fast float %8433, %8432
  %8435 = fdiv fast float %8434, %8429
  %8436 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8437 = fcmp fast oeq float %7105, 0.000000e+00
  %8438 = extractvalue %dx.types.CBufRet.f32 %8222, 0
  %8439 = fcmp fast oeq float %8438, 0.000000e+00
  %8440 = or i1 %8437, %8439
  %8441 = fmul fast float %8438, 2.000000e+00
  %8442 = fadd fast float %8223, %8224
  %8443 = fdiv fast float %8442, %8441
  %8444 = call float @dx.op.unary.f32(i32 7, float %8443)  ; Saturate(value)
  %8445 = fmul fast float %8444, 2.000000e+00
  %8446 = fsub fast float 3.000000e+00, %8445
  %8447 = fmul fast float %8444, %8444
  %8448 = fmul fast float %8447, %8446
  %8449 = select i1 %8440, float 1.000000e+00, float %8448
  %8450 = fmul fast float %8435, %7105
  %8451 = fadd fast float %8436, %8450
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = fmul fast float %8449, %8452
  br label %8454

; <label>:8454                                    ; preds = %8426, %8306
  %8455 = phi float [ %8453, %8426 ], [ 0.000000e+00, %8306 ]
  %8456 = fsub fast float 1.000000e+00, %8455
  %8457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %8176, float %8177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8458 = extractvalue %dx.types.ResRet.f32 %8457, 0
  %8459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.i32 %8459, 2
  %8461 = icmp eq i32 %8460, 0
  br i1 %8461, label %8467, label %8462

; <label>:8462                                    ; preds = %8454
  %8463 = call float @dx.op.unary.f32(i32 7, float %8455)  ; Saturate(value)
  %8464 = fadd fast float %8458, -1.000000e+00
  %8465 = fmul fast float %8463, %8464
  %8466 = fadd fast float %8465, 1.000000e+00
  br label %8467

; <label>:8467                                    ; preds = %8462, %8454
  %8468 = phi float [ %8466, %8462 ], [ %8456, %8454 ]
  br i1 %8230, label %8469, label %8487

; <label>:8469                                    ; preds = %8467
  %8470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.f32 %8470, 1
  %8472 = fsub fast float %8307, %8471
  %8473 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  %8474 = fsub fast float %8307, %8229
  %8475 = call float @dx.op.unary.f32(i32 7, float %8474)  ; Saturate(value)
  %8476 = fsub fast float %8473, %8475
  %8477 = fsub fast float %8309, %8475
  %8478 = fdiv fast float %8477, %8476
  %8479 = call float @dx.op.unary.f32(i32 7, float %8478)  ; Saturate(value)
  %8480 = fmul fast float %8479, 2.000000e+00
  %8481 = fsub fast float 3.000000e+00, %8480
  %8482 = fsub fast float %8458, %8468
  %8483 = fmul fast float %8479, %8479
  %8484 = fmul fast float %8483, %8482
  %8485 = fmul fast float %8484, %8481
  %8486 = fadd fast float %8485, %8468
  br label %8487

; <label>:8487                                    ; preds = %8469, %8467
  %8488 = phi float [ %8486, %8469 ], [ %8468, %8467 ]
  %8489 = call float @dx.op.binary.f32(i32 35, float %8458, float %8488)  ; FMax(a,b)
  %8490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.i32 %8490, 2
  %8492 = and i32 %8491, 1
  %8493 = icmp eq i32 %8492, 0
  %8494 = fcmp fast une float %8489, 1.000000e+00
  %8495 = and i1 %8494, %8493
  br i1 %8495, label %8496, label %8515

; <label>:8496                                    ; preds = %8487
  %8497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %8176, float %8177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8498 = extractvalue %dx.types.ResRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.ResRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.ResRet.f32 %8497, 2
  %8501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8501, 1
  %8503 = fmul fast float %8502, %8498
  %8504 = fmul fast float %8502, %8499
  %8505 = fmul fast float %8502, %8500
  %8506 = fcmp fast ogt float %8458, 0x3FEFFF2E40000000
  %8507 = fsub fast float 1.000000e+00, %8489
  %8508 = fsub fast float 1.000000e+00, %8458
  %8509 = fdiv fast float %8507, %8508
  %8510 = call float @dx.op.unary.f32(i32 7, float %8509)  ; Saturate(value)
  %8511 = select i1 %8506, float 0.000000e+00, float %8510
  %8512 = fmul fast float %8503, %8511
  %8513 = fmul fast float %8504, %8511
  %8514 = fmul fast float %8505, %8511
  br label %8515

; <label>:8515                                    ; preds = %8496, %8487
  %8516 = phi float [ 0.000000e+00, %8487 ], [ %8512, %8496 ]
  %8517 = phi float [ 0.000000e+00, %8487 ], [ %8513, %8496 ]
  %8518 = phi float [ 0.000000e+00, %8487 ], [ %8514, %8496 ]
  %8519 = fmul fast float %8516, %7088
  %8520 = fmul fast float %8517, %7090
  %8521 = fmul fast float %8518, %7092
  %8522 = fmul fast float %8489, %8151
  %8523 = call float @dx.op.dot3.f32(i32 55, float %8489, float %8489, float %8489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8524 = call float @dx.op.dot3.f32(i32 55, float %8519, float %8520, float %8521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8525 = select i1 %261, float %8523, float %8489
  %8526 = select i1 %261, float 1.000000e+00, float %8489
  %8527 = select i1 %261, float %8524, float %8519
  %8528 = select i1 %261, float 0.000000e+00, float %8520
  %8529 = select i1 %261, float 0.000000e+00, float %8521
  %8530 = fmul fast float %8525, %8163
  %8531 = fmul fast float %8525, %8164
  %8532 = fmul fast float %8526, %8165
  %8533 = fadd fast float %8530, %8527
  %8534 = fadd fast float %8531, %8528
  %8535 = fadd fast float %8529, %8532
  %8536 = fmul fast float %8525, %8166
  %8537 = fmul fast float %8525, %8167
  %8538 = fmul fast float %8526, %8168
  br label %8539

; <label>:8539                                    ; preds = %8515, %8172, %8141, %7373
  %8540 = phi float [ %7378, %7373 ], [ %8163, %8141 ], [ %8533, %8515 ], [ %8163, %8172 ]
  %8541 = phi float [ %7379, %7373 ], [ %8164, %8141 ], [ %8534, %8515 ], [ %8164, %8172 ]
  %8542 = phi float [ %7380, %7373 ], [ %8165, %8141 ], [ %8535, %8515 ], [ %8165, %8172 ]
  %8543 = phi float [ %7381, %7373 ], [ %8166, %8141 ], [ %8536, %8515 ], [ %8166, %8172 ]
  %8544 = phi float [ %7382, %7373 ], [ %8167, %8141 ], [ %8537, %8515 ], [ %8167, %8172 ]
  %8545 = phi float [ %7383, %7373 ], [ %8168, %8141 ], [ %8538, %8515 ], [ %8168, %8172 ]
  %8546 = phi float [ %7384, %7373 ], [ %8151, %8141 ], [ %8522, %8515 ], [ %8151, %8172 ]
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 2
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 3
  %8550 = fmul fast float %8548, %102
  %8551 = fmul fast float %8549, %103
  %8552 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  %8553 = call float @dx.op.unary.f32(i32 7, float %8551)  ; Saturate(value)
  %8554 = select i1 %7115, i32 2, i32 0
  %8555 = or i32 %8554, 1
  %8556 = uitofp i32 %8555 to float
  %8557 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8552, float %8553, float %8556, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8558 = extractvalue %dx.types.ResRet.f32 %8557, 0
  %8559 = extractvalue %dx.types.ResRet.f32 %8557, 1
  %8560 = extractvalue %dx.types.ResRet.f32 %8557, 2
  %8561 = extractvalue %dx.types.ResRet.f32 %8557, 3
  %8562 = add nuw nsw i32 %8554, 2
  %8563 = uitofp i32 %8562 to float
  %8564 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8552, float %8553, float %8563, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8565 = extractvalue %dx.types.ResRet.f32 %8564, 0
  %8566 = extractvalue %dx.types.ResRet.f32 %8564, 1
  %8567 = extractvalue %dx.types.ResRet.f32 %8564, 2
  %8568 = extractvalue %dx.types.ResRet.f32 %8564, 3
  %8569 = call float @dx.op.binary.f32(i32 35, float %8559, float %8560)  ; FMax(a,b)
  %8570 = call float @dx.op.binary.f32(i32 35, float %8558, float %8569)  ; FMax(a,b)
  %8571 = call float @dx.op.binary.f32(i32 35, float %8570, float %8561)  ; FMax(a,b)
  %8572 = call float @dx.op.binary.f32(i32 36, float %8566, float %8567)  ; FMin(a,b)
  %8573 = call float @dx.op.binary.f32(i32 36, float %8565, float %8572)  ; FMin(a,b)
  %8574 = call float @dx.op.binary.f32(i32 36, float %8573, float %8568)  ; FMin(a,b)
  %8575 = fmul fast float %8571, 2.550000e+02
  %8576 = fadd fast float %8575, 0x3F70101020000000
  %8577 = fptoui float %8576 to i32
  %8578 = fmul fast float %8574, 2.550000e+02
  %8579 = fadd fast float %8578, 0x3F70101020000000
  %8580 = fptoui float %8579 to i32
  %8581 = icmp ult i32 %8577, %8580
  br i1 %8581, label %8582, label %8751

; <label>:8582                                    ; preds = %8539
  %8583 = fcmp fast ogt float %92, 9.843750e-01
  %8584 = fadd fast float %7377, -4.000000e+00
  %8585 = select i1 %8583, float -4.000000e+00, float %8584
  %8586 = call float @dx.op.binary.f32(i32 35, float %8585, float 0.000000e+00)  ; FMax(a,b)
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 0
  %8589 = fadd fast float %8588, %8586
  %8590 = extractvalue %dx.types.CBufRet.f32 %8587, 2
  %8591 = fmul fast float %8589, %8590
  %8592 = call float @dx.op.unary.f32(i32 23, float %8591)  ; Log(value)
  %8593 = extractvalue %dx.types.CBufRet.f32 %8587, 3
  %8594 = fmul fast float %8593, %8592
  %8595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8595, 2
  %8597 = fmul fast float %8594, %8596
  %8598 = call float @dx.op.unary.f32(i32 7, float %8597)  ; Saturate(value)
  %8599 = uitofp i32 %8577 to float
  %8600 = uitofp i32 %8580 to float
  %8601 = fadd fast float %8599, 5.000000e-01
  %8602 = fadd fast float %8600, 5.000000e-01
  %8603 = fmul fast float %8596, %8601
  %8604 = fmul fast float %8596, %8602
  %8605 = fadd fast float %8603, 0x3F0FFB4800000000
  %8606 = fadd fast float %8604, 0xBF0FFB4800000000
  %8607 = call float @dx.op.binary.f32(i32 35, float %8598, float %8605)  ; FMax(a,b)
  %8608 = call float @dx.op.binary.f32(i32 36, float %8607, float %8606)  ; FMin(a,b)
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 1
  %8611 = extractvalue %dx.types.CBufRet.f32 %8609, 2
  %8612 = extractvalue %dx.types.CBufRet.f32 %8609, 0
  %8613 = select i1 %7115, float %8612, float 0.000000e+00
  %8614 = fmul fast float %8610, %8608
  %8615 = fadd fast float %8613, %8614
  %8616 = fadd fast float %8613, %8611
  %8617 = fsub fast float %8610, %8611
  %8618 = fadd fast float %8617, %8613
  %8619 = call float @dx.op.binary.f32(i32 35, float %8615, float %8616)  ; FMax(a,b)
  %8620 = call float @dx.op.binary.f32(i32 36, float %8619, float %8618)  ; FMin(a,b)
  %8621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %8552, float %8553, float %8620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8622 = extractvalue %dx.types.ResRet.f32 %8621, 0
  %8623 = extractvalue %dx.types.ResRet.f32 %8621, 1
  %8624 = extractvalue %dx.types.ResRet.f32 %8621, 2
  %8625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8626 = extractvalue %dx.types.CBufRet.i32 %8625, 0
  %8627 = extractvalue %dx.types.CBufRet.i32 %8625, 1
  %8628 = uitofp i32 %8626 to float
  %8629 = uitofp i32 %8627 to float
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.CBufRet.f32 %8630, 1
  %8633 = fmul fast float %8628, %8552
  %8634 = fmul fast float %8629, %8553
  %8635 = fadd fast float %8633, -5.000000e-01
  %8636 = fadd fast float %8634, -5.000000e-01
  %8637 = call float @dx.op.unary.f32(i32 22, float %8635)  ; Frc(value)
  %8638 = call float @dx.op.unary.f32(i32 22, float %8636)  ; Frc(value)
  %8639 = fmul fast float %8637, %8637
  %8640 = fmul fast float %8639, %8637
  %8641 = fsub fast float 3.000000e+00, %8637
  %8642 = fmul fast float %8639, %8641
  %8643 = fmul fast float %8637, 3.000000e+00
  %8644 = fmul fast float %8640, 3.000000e+00
  %8645 = fmul fast float %8639, 6.000000e+00
  %8646 = fsub fast float %8644, %8645
  %8647 = fadd fast float %8646, 4.000000e+00
  %8648 = fmul fast float %8647, 0x3FC5555560000000
  %8649 = fmul fast float %8640, -3.000000e+00
  %8650 = fadd fast float %8639, %8637
  %8651 = fmul fast float %8650, 3.000000e+00
  %8652 = fadd fast float %8649, 1.000000e+00
  %8653 = fadd fast float %8652, %8651
  %8654 = fmul fast float %8640, 0x3FC5555560000000
  %8655 = fmul fast float %8638, %8638
  %8656 = fmul fast float %8655, %8638
  %8657 = fsub fast float 3.000000e+00, %8638
  %8658 = fmul fast float %8655, %8657
  %8659 = fmul fast float %8638, 3.000000e+00
  %8660 = fmul fast float %8656, 3.000000e+00
  %8661 = fmul fast float %8655, 6.000000e+00
  %8662 = fsub fast float %8660, %8661
  %8663 = fadd fast float %8662, 4.000000e+00
  %8664 = fmul fast float %8663, 0x3FC5555560000000
  %8665 = fmul fast float %8656, -3.000000e+00
  %8666 = fadd fast float %8655, %8638
  %8667 = fmul fast float %8666, 3.000000e+00
  %8668 = fadd fast float %8665, 1.000000e+00
  %8669 = fadd fast float %8668, %8667
  %8670 = fmul fast float %8656, 0x3FC5555560000000
  %8671 = fadd fast float %8637, 1.000000e+00
  %8672 = fsub fast float 1.000000e+00, %8643
  %8673 = fadd fast float %8672, %8642
  %8674 = fadd fast float %8673, %8647
  %8675 = fmul fast float %8674, 0x3FC5555560000000
  %8676 = fdiv fast float %8648, %8675
  %8677 = fsub fast float %8671, %8676
  %8678 = fsub fast float 1.000000e+00, %8637
  %8679 = fadd fast float %8653, %8640
  %8680 = fmul fast float %8679, 0x3FC5555560000000
  %8681 = fdiv fast float %8654, %8680
  %8682 = fadd fast float %8678, %8681
  %8683 = fadd fast float %8638, 1.000000e+00
  %8684 = fsub fast float 1.000000e+00, %8659
  %8685 = fadd fast float %8684, %8658
  %8686 = fadd fast float %8685, %8663
  %8687 = fmul fast float %8686, 0x3FC5555560000000
  %8688 = fdiv fast float %8664, %8687
  %8689 = fsub fast float %8683, %8688
  %8690 = fsub fast float 1.000000e+00, %8638
  %8691 = fadd fast float %8669, %8656
  %8692 = fmul fast float %8691, 0x3FC5555560000000
  %8693 = fdiv fast float %8670, %8692
  %8694 = fadd fast float %8693, %8690
  %8695 = fmul fast float %8677, %8631
  %8696 = fsub fast float %8552, %8695
  %8697 = fmul fast float %8682, %8631
  %8698 = fadd fast float %8697, %8552
  %8699 = fmul fast float %8694, %8632
  %8700 = fadd fast float %8699, %8553
  %8701 = fmul fast float %8689, %8632
  %8702 = fsub fast float %8553, %8701
  %8703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8696, float %8702, float %8620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8704 = extractvalue %dx.types.ResRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.ResRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.ResRet.f32 %8703, 2
  %8707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8698, float %8702, float %8620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8708 = extractvalue %dx.types.ResRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.ResRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.ResRet.f32 %8707, 2
  %8711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8696, float %8700, float %8620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8712 = extractvalue %dx.types.ResRet.f32 %8711, 0
  %8713 = extractvalue %dx.types.ResRet.f32 %8711, 1
  %8714 = extractvalue %dx.types.ResRet.f32 %8711, 2
  %8715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8698, float %8700, float %8620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8716 = extractvalue %dx.types.ResRet.f32 %8715, 0
  %8717 = extractvalue %dx.types.ResRet.f32 %8715, 1
  %8718 = extractvalue %dx.types.ResRet.f32 %8715, 2
  %8719 = fsub fast float %8712, %8704
  %8720 = fsub fast float %8713, %8705
  %8721 = fsub fast float %8714, %8706
  %8722 = fmul fast float %8719, %8692
  %8723 = fmul fast float %8720, %8692
  %8724 = fmul fast float %8721, %8692
  %8725 = fadd fast float %8722, %8704
  %8726 = fadd fast float %8723, %8705
  %8727 = fadd fast float %8724, %8706
  %8728 = fsub fast float %8716, %8708
  %8729 = fsub fast float %8717, %8709
  %8730 = fsub fast float %8718, %8710
  %8731 = fmul fast float %8728, %8692
  %8732 = fmul fast float %8729, %8692
  %8733 = fmul fast float %8730, %8692
  %8734 = fsub fast float %8708, %8725
  %8735 = fadd fast float %8734, %8731
  %8736 = fsub fast float %8709, %8726
  %8737 = fadd fast float %8736, %8732
  %8738 = fsub fast float %8710, %8727
  %8739 = fadd fast float %8738, %8733
  %8740 = fmul fast float %8735, %8680
  %8741 = fmul fast float %8737, %8680
  %8742 = fmul fast float %8739, %8680
  %8743 = fadd fast float %8740, %8725
  %8744 = fadd fast float %8741, %8726
  %8745 = fadd fast float %8742, %8727
  %8746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8747 = extractvalue %dx.types.CBufRet.f32 %8746, 1
  %8748 = fmul fast float %8743, %8747
  %8749 = fmul fast float %8744, %8747
  %8750 = fmul fast float %8745, %8747
  br label %8751

; <label>:8751                                    ; preds = %8582, %8539
  %8752 = phi float [ %8622, %8582 ], [ 1.000000e+00, %8539 ]
  %8753 = phi float [ %8623, %8582 ], [ 1.000000e+00, %8539 ]
  %8754 = phi float [ %8624, %8582 ], [ 1.000000e+00, %8539 ]
  %8755 = phi float [ %8748, %8582 ], [ 0.000000e+00, %8539 ]
  %8756 = phi float [ %8749, %8582 ], [ 0.000000e+00, %8539 ]
  %8757 = phi float [ %8750, %8582 ], [ 0.000000e+00, %8539 ]
  %8758 = fmul fast float %8755, %7088
  %8759 = fmul fast float %8756, %7090
  %8760 = fmul fast float %8757, %7092
  %8761 = fmul fast float %8752, %8546
  %8762 = call float @dx.op.dot3.f32(i32 55, float %8752, float %8753, float %8754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8763 = call float @dx.op.dot3.f32(i32 55, float %8758, float %8759, float %8760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8764 = select i1 %261, float %8762, float %8752
  %8765 = select i1 %261, float %8762, float %8753
  %8766 = select i1 %261, float 1.000000e+00, float %8754
  %8767 = select i1 %261, float %8763, float %8758
  %8768 = select i1 %261, float 0.000000e+00, float %8759
  %8769 = select i1 %261, float 0.000000e+00, float %8760
  %8770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.i32 %8770, 3
  %8772 = and i32 %8771, 3
  %8773 = icmp ne i32 %8772, 0
  %8774 = and i32 %8771, 4
  %8775 = icmp ne i32 %8774, 0
  %8776 = and i1 %8773, %8775
  %8777 = and i1 %261, %8776
  br i1 %8777, label %8778, label %8784

; <label>:8778                                    ; preds = %8751
  %8779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8780 = extractvalue %dx.types.CBufRet.f32 %8779, 1
  %8781 = fadd fast float %8761, -1.000000e+00
  %8782 = fmul fast float %8780, %8781
  %8783 = fadd fast float %8782, 1.000000e+00
  br label %8784

; <label>:8784                                    ; preds = %8778, %8751
  %8785 = phi float [ %8783, %8778 ], [ %8761, %8751 ]
  %8786 = fadd fast float %8543, %8540
  %8787 = fmul fast float %8764, %8786
  %8788 = fadd fast float %8787, %8767
  %8789 = fadd fast float %8544, %8541
  %8790 = fmul fast float %8765, %8789
  %8791 = fadd fast float %8790, %8768
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  br i1 %261, label %8794, label %8809

; <label>:8794                                    ; preds = %8784
  %8795 = fadd fast float %8788, %8791
  %8796 = fmul fast float %8793, %8795
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 3
  %8799 = extractvalue %dx.types.CBufRet.f32 %7097, 1
  %8800 = fsub fast float %7102, %7096
  %8801 = fadd fast float %8800, %7103
  %8802 = fsub fast float %8801, %8799
  %8803 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %8804 = fmul fast float %8802, %8803
  %8805 = call float @dx.op.unary.f32(i32 7, float %8804)  ; Saturate(value)
  %8806 = fsub fast float %8805, %8798
  %8807 = fmul fast float %8806, %8785
  %8808 = fadd fast float %8807, %8798
  br label %8835

; <label>:8809                                    ; preds = %8784
  %8810 = fadd fast float %8545, %8542
  %8811 = fmul fast float %8766, %8810
  %8812 = fadd fast float %8811, %8769
  %8813 = fmul fast float %8793, %8788
  %8814 = fmul fast float %8793, %8791
  %8815 = fmul fast float %8793, %8812
  %8816 = call float @dx.op.binary.f32(i32 35, float %8814, float %8815)  ; FMax(a,b)
  %8817 = call float @dx.op.binary.f32(i32 35, float %8813, float %8816)  ; FMax(a,b)
  %8818 = call float @dx.op.binary.f32(i32 35, float %7090, float %7092)  ; FMax(a,b)
  %8819 = call float @dx.op.binary.f32(i32 35, float %7088, float %8818)  ; FMax(a,b)
  %8820 = call float @dx.op.binary.f32(i32 35, float %8817, float %8819)  ; FMax(a,b)
  %8821 = fcmp fast ugt float %8820, 0x3F10000000000000
  br i1 %8821, label %8823, label %8822

; <label>:8822                                    ; preds = %8809
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8823

; <label>:8823                                    ; preds = %8822, %8809
  %8824 = add i32 %51, 356
  %8825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %8824, i32 undef)  ; BufferLoad(srv,index,wot)
  %8826 = extractvalue %dx.types.ResRet.i32 %8825, 0
  %8827 = and i32 %8826, 32
  %8828 = icmp eq i32 %8827, 0
  br i1 %8828, label %8835, label %8829

; <label>:8829                                    ; preds = %8823
  %8830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8831 = extractvalue %dx.types.CBufRet.f32 %8830, 0
  %8832 = fmul fast float %8831, 0x3FE99999A0000000
  %8833 = fadd fast float %8831, %8813
  %8834 = fadd fast float %8832, %8815
  br label %8835

; <label>:8835                                    ; preds = %8829, %8823, %8794
  %8836 = phi float [ 1.000000e+00, %8794 ], [ %7090, %8829 ], [ %7090, %8823 ]
  %8837 = phi float [ 1.000000e+00, %8794 ], [ %7092, %8829 ], [ %7092, %8823 ]
  %8838 = phi float [ %8796, %8794 ], [ %8833, %8829 ], [ %8813, %8823 ]
  %8839 = phi float [ %8808, %8794 ], [ %8814, %8829 ], [ %8814, %8823 ]
  %8840 = phi float [ 1.000000e+00, %8794 ], [ %8834, %8829 ], [ %8815, %8823 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8841 = call float @dx.op.binary.f32(i32 36, float %8838, float 3.225500e+04)  ; FMin(a,b)
  %8842 = call float @dx.op.binary.f32(i32 36, float %8839, float 3.225500e+04)  ; FMin(a,b)
  %8843 = call float @dx.op.binary.f32(i32 36, float %8840, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8841)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8842)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8843)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8844 = call float @dx.op.binary.f32(i32 36, float %7088, float 3.225500e+04)  ; FMin(a,b)
  %8845 = call float @dx.op.binary.f32(i32 36, float %8836, float 3.225500e+04)  ; FMin(a,b)
  %8846 = call float @dx.op.binary.f32(i32 36, float %8837, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8844)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8845)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8846)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!64 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!65 = !{void ()* @ps_main, !"ps_main", !66, !4, !92}
!66 = !{!67, !88, null}
!67 = !{!68, !71, !72, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !87}
!68 = !{i32 0, !"SV_Position", i8 9, i8 3, !69, i8 4, i32 1, i8 4, i32 0, i8 0, !70}
!69 = !{i32 0}
!70 = !{i32 3, i32 15}
!71 = !{i32 1, !"COLOR", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 1, i8 0, !70}
!72 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 2, i8 0, !73}
!73 = !{i32 3, i32 3}
!74 = !{i32 3, !"NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 3, i8 0, !75}
!75 = !{i32 3, i32 7}
!76 = !{i32 4, !"TANGENT", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 4, i8 0, !70}
!77 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 5, i8 0, !75}
!78 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 6, i8 0, !70}
!79 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 7, i8 0, !75}
!80 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 8, i8 0, !70}
!81 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 2, i32 9, i8 0, !73}
!82 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 10, i8 0, !70}
!83 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 11, i8 0, !75}
!84 = !{i32 12, !"ENTITY_IDS", i8 5, i8 0, !69, i8 1, i32 1, i8 2, i32 12, i8 0, !73}
!85 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !69, i8 1, i32 1, i8 4, i32 13, i8 0, !86}
!86 = !{i32 3, i32 1}
!87 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !69, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89, !90}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!90 = !{i32 1, !"SV_Target", i8 9, i8 16, !91, i8 0, i32 1, i8 4, i32 1, i8 0, !70}
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
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !100, i64 0}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!140 = distinct !{!140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!149 = !{!145}
!150 = !{!146, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!159 = !{!155}
!160 = !{!156, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}

