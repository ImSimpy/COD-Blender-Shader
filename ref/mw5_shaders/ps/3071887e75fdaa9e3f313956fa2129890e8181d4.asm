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
; ENTITY_IDS               0   xy         12     NONE    uint   x   
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
; shader hash: dafd91236d847fabf2abeb006d9a8dab
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
;   [160 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     f32          2d      T7     t69,space2     1
;                                   texture     f32          2d      T8     t37,space2     1
;                                   texture     f32          2d      T9             t0     1
;                                   texture     f32          2d     T10     t58,space2     1
;                                   texture     f32          2d     T11     t59,space2     1
;                                   texture     f32          2d     T12     t60,space2     1
;                                   texture    byte         r/o     T13     t45,space1     1
;                                   texture    byte         r/o     T14     t46,space1     1
;                                   texture    byte         r/o     T15     t47,space1     1
;                                   texture    byte         r/o     T16     t48,space1     1
;                                   texture     f32          2d     T17     t57,space2     1
;                                   texture    byte         r/o     T18     t69,space1     1
;                                   texture     u32          2d     T19     t56,space2     1
;                                   texture    byte         r/o     T20     t10,space1     1
;                                   texture    byte         r/o     T21      t1,space1     1
;                                   texture     f32          1d     T22     t32,space2     1
;                                   texture     f32     2darray     T23      t8,space2     1
;                                   texture     f32          2d     T24      t1,space2     1
;                                   texture     f32          2d     T25      t2,space2     1
;                                   texture     f32          2d     T26      t3,space2     1
;                                   texture     f32          2d     T27      t4,space2     1
;                                   textureunorm_f32     2darray     T28     t80,space2     1
;                                   texture    byte         r/o     T29     t67,space1     1
;                                   texture     f32          2d     T30      t7,space2     1
;                                   texture     f32          2d     T31      t6,space2     1
;                                   texture     f32          2d     T32      t5,space2     1
;                                   texture     f32          2d     T33     t38,space2     1
;                                   texture    byte         r/o     T34     t12,space1     1
;                                   texture    byte         r/o     T35     t13,space1     1
;                                   texture     f32          1d     T36     t30,space2     1
;                                   texture     f32          3d     T37     t44,space2     1
;                                   texture     f32          3d     T38     t45,space2     1
;                                   texture     f32     2darray     T39     t47,space2     1
;                                   textureunorm_f32     2darray     T40     t85,space2     1
;                                   texture     f32          2d     T41     t83,space2     1
;                                   texture     f32          2d     T42     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %122 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %123 = bitcast float %122 to i32
  %124 = ashr i32 %123, 1
  %125 = sub nsw i32 1597250115, %124
  %126 = bitcast i32 %125 to float
  %127 = fmul fast float %126, %68
  %128 = fmul fast float %126, %69
  %129 = fmul fast float %126, %70
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = fcmp fast une float %131, 0.000000e+00
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %100, 2.000000e+00
  %137 = fmul fast float %136, %134
  %138 = fmul fast float %101, 2.000000e+00
  %139 = fmul fast float %138, %135
  %140 = fsub fast float 1.000000e+00, %137
  %141 = fsub fast float 1.000000e+00, %139
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = select i1 %132, float %143, float %147
  %151 = select i1 %132, float %144, float %148
  %152 = select i1 %132, float %145, float %149
  %153 = fmul fast float %150, %140
  %154 = fmul fast float %151, %140
  %155 = fmul fast float %152, %140
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = select i1 %132, float %157, float %161
  %165 = select i1 %132, float %158, float %162
  %166 = select i1 %132, float %159, float %163
  %167 = fmul fast float %164, %141
  %168 = fmul fast float %165, %141
  %169 = fmul fast float %166, %141
  %170 = fadd fast float %167, %153
  %171 = fadd fast float %168, %154
  %172 = fadd fast float %169, %155
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = select i1 %132, float %174, float %178
  %182 = select i1 %132, float %175, float %179
  %183 = select i1 %132, float %176, float %180
  %184 = fadd fast float %170, %181
  %185 = fadd fast float %171, %182
  %186 = fadd fast float %172, %183
  %187 = fmul fast float %184, %91
  %188 = fmul fast float %185, %91
  %189 = fmul fast float %186, %91
  %190 = shl i32 %51, 5
  %191 = add i32 %190, 4194304
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = extractvalue %dx.types.ResRet.i32 %192, 1
  %195 = extractvalue %dx.types.ResRet.i32 %192, 2
  %196 = extractvalue %dx.types.ResRet.i32 %192, 3
  %197 = add i32 %190, 4194320
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = bitcast i32 %199 to float
  %202 = bitcast i32 %200 to float
  %203 = fmul fast float %100, 5.000000e-01
  %204 = fmul fast float %101, 5.000000e-01
  %205 = fptosi float %203 to i32
  %206 = fptosi float %204 to i32
  %207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 18
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F4C00EBA0000000
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %215 = extractvalue %dx.types.Dimensions %214, 0
  %216 = sitofp i32 %215 to float
  %217 = extractvalue %dx.types.Dimensions %214, 1
  %218 = sitofp i32 %217 to float
  %219 = fcmp fast oge float %203, %216
  %220 = fcmp fast oge float %204, %218
  %221 = or i1 %219, %220
  %222 = select i1 %221, float 0x4197782600000000, float %213
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %226 = fmul fast float %224, %100
  %227 = fmul fast float %225, %101
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 114688
  %231 = icmp ne i32 %230, 0
  %232 = select i1 %231, float %226, float 0.000000e+00
  %233 = select i1 %231, float %227, float 0.000000e+00
  %234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %232, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = fmul fast float %235, 2.550000e+02
  %237 = fptoui float %236 to i32
  %238 = select i1 %231, i32 %237, i32 0
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 3
  %241 = and i32 %240, 3
  %242 = icmp ne i32 %241, 0
  %243 = and i32 %240, 4
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %242, %244
  br i1 %245, label %246, label %255

; <label>:246                                     ; preds = %0
  %247 = fmul fast float %135, %101
  %248 = fmul fast float %134, %100
  %249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %44, float %248, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = fsub fast float 1.000000e+00, %250
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = fcmp fast olt float %251, %253
  br label %258

; <label>:255                                     ; preds = %0
  %256 = icmp eq i32 %243, 0
  %257 = and i1 %242, %256
  br label %258

; <label>:258                                     ; preds = %255, %246
  %259 = phi i1 [ %254, %246 ], [ %257, %255 ]
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = fmul fast float %261, 0x3FE3C6EF40000000
  %263 = frem fast float %100, 2.560000e+02
  %264 = frem fast float %101, 2.560000e+02
  %265 = fptoui float %263 to i32
  %266 = fptoui float %264 to i32
  %267 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %265, i32 %266, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fadd fast float %268, %262
  %270 = call float @dx.op.unary.f32(i32 22, float %269)  ; Frc(value)
  %271 = add i32 %50, 156
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %283 = add i32 %50, 216
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %297 = add i32 %50, 36
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %50, 288
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %50, 172
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %325 = add i32 %50, 232
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %339 = add i32 %50, 52
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %50, 304
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %50, 188
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %367 = add i32 %50, 248
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %381 = add i32 %50, 68
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %50, 320
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %50, 204
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = shl i32 %399, 4
  %401 = and i32 %400, 32752
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %399, 7
  %404 = and i32 %403, 32752
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %399, 22
  %407 = shl nuw nsw i32 %406, 5
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = add i32 %50, 264
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 255
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F70101020000000
  %415 = lshr i32 %411, 8
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = lshr i32 %411, 16
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = add i32 %50, 84
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = add i32 %50, 336
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 65535
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %432, 16
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = fmul fast float %434, 0x3F50624DE0000000
  %438 = fmul fast float %436, 0x3F50624DE0000000
  %439 = add i32 %50, 348
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 32
  %443 = icmp eq i32 %442, 0
  %444 = and i32 %441, 64
  %445 = icmp eq i32 %444, 0
  %446 = and i32 %441, 128
  %447 = icmp eq i32 %446, 0
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 2
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %467, label %452

; <label>:452                                     ; preds = %258
  %453 = add i32 %50, 540
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = add i32 %455, 0
  %457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %457, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = extractvalue %dx.types.ResRet.f32 %458, 3
  %463 = fmul fast float %462, %84
  %464 = fmul fast float %459, %85
  %465 = fmul fast float %460, %86
  %466 = fmul fast float %461, %87
  br label %467

; <label>:467                                     ; preds = %452, %258
  %468 = phi float [ %87, %258 ], [ %466, %452 ]
  %469 = phi float [ %86, %258 ], [ %465, %452 ]
  %470 = phi float [ %85, %258 ], [ %464, %452 ]
  %471 = phi float [ %84, %258 ], [ %463, %452 ]
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 2
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %495, label %476

; <label>:476                                     ; preds = %467
  %477 = add i32 %50, 44
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 1
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %470, float 1.000000e+00
  %483 = add i32 %50, 60
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %469, float 1.000000e+00
  %489 = add i32 %50, 76
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 1
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %468, float 1.000000e+00
  br label %495

; <label>:495                                     ; preds = %476, %467
  %496 = phi float [ %468, %467 ], [ %494, %476 ]
  %497 = phi float [ %469, %467 ], [ %488, %476 ]
  %498 = phi float [ %470, %467 ], [ %482, %476 ]
  %499 = lshr i32 %473, 20
  %500 = and i32 %499, 3
  %501 = add nuw nsw i32 %500, 1
  %502 = add i32 %50, 24
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = add i32 %50, 28
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = or i32 %507, %504
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %1191, label %510

; <label>:510                                     ; preds = %495
  %511 = and i32 %504, 262144
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %55, float 1.000000e+00
  %514 = select i1 %512, float %56, float 0.000000e+00
  %515 = select i1 %512, float %57, float 0.000000e+00
  %516 = select i1 %512, float %58, float 1.000000e+00
  %517 = select i1 %512, float %59, float %82
  %518 = select i1 %512, float %60, float %83
  %519 = add i32 %50, 284
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = lshr i32 %521, 16
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = fmul fast float %523, 0x3F50624DE0000000
  %525 = add i32 %50, 88
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = and i32 %528, 255
  %530 = lshr i32 %527, 24
  %531 = add i32 %50, 292
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 65535
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %533, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = add i32 %50, 32
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = lshr i32 %540, 22
  %542 = shl nuw nsw i32 %541, 5
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = shl i32 %540, 4
  %545 = and i32 %544, 32752
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = lshr i32 %540, 7
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %552 = fmul fast float %551, 1.000000e+03
  %553 = fmul fast float %311, %552
  %554 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %555 = fadd fast float %554, %301
  %556 = fmul fast float %312, %552
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = fadd fast float %557, %303
  %559 = fmul fast float %524, %552
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = fmul fast float %560, 0x401921FB60000000
  %562 = fadd fast float %561, %543
  %563 = call float @dx.op.unary.f32(i32 13, float %562)  ; Sin(value)
  %564 = call float @dx.op.unary.f32(i32 12, float %562)  ; Cos(value)
  %565 = fsub fast float -0.000000e+00, %563
  %566 = fadd fast float %517, -5.000000e-01
  %567 = fadd fast float %518, -5.000000e-01
  %568 = fmul fast float %535, %566
  %569 = fmul fast float %537, %567
  %570 = fadd fast float %568, 5.000000e-01
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fmul fast float %546, %570
  %573 = fmul fast float %549, %571
  %574 = fmul fast float %564, %572
  %575 = call float @dx.op.tertiary.f32(i32 46, float %565, float %573, float %574)  ; FMad(a,b,c)
  %576 = fmul fast float %563, %572
  %577 = call float @dx.op.tertiary.f32(i32 46, float %564, float %573, float %576)  ; FMad(a,b,c)
  %578 = fadd fast float %555, %575
  %579 = fadd fast float %558, %577
  %580 = icmp ugt i32 %529, 1
  %581 = icmp ugt i32 %527, 33554431
  %582 = or i1 %581, %580
  br i1 %582, label %583, label %608

; <label>:583                                     ; preds = %510
  %584 = add i32 %50, 228
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = lshr i32 %586, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = fmul fast float %551, %588
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = mul nuw nsw i32 %529, %530
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %590, %592
  %594 = call float @dx.op.unary.f32(i32 27, float %593)  ; Round_ni(value)
  %595 = fptoui float %594 to i32
  %596 = urem i32 %595, %529
  %597 = udiv i32 %595, %530
  %598 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %599 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %600 = uitofp i32 %596 to float
  %601 = uitofp i32 %597 to float
  %602 = fadd fast float %598, %600
  %603 = fadd fast float %599, %601
  %604 = uitofp i32 %529 to float
  %605 = uitofp i32 %530 to float
  %606 = fdiv fast float %602, %604
  %607 = fdiv fast float %603, %605
  br label %608

; <label>:608                                     ; preds = %583, %510
  %609 = phi float [ %606, %583 ], [ %578, %510 ]
  %610 = phi float [ %607, %583 ], [ %579, %510 ]
  %611 = and i32 %504, 256
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %659, label %613

; <label>:613                                     ; preds = %608
  %614 = add i32 %50, 472
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = add i32 %616, 0
  %618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %618, %dx.types.Handle %97, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = add i32 %50, 100
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = shl i32 %623, 4
  %625 = and i32 %624, 32752
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %623, 7
  %628 = and i32 %627, 32752
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = fsub fast float 1.000000e+00, %471
  %631 = call float @dx.op.binary.f32(i32 35, float %630, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %632 = bitcast float %471 to i32
  %633 = sitofp i32 %632 to float
  %634 = fadd fast float %633, 0xC1CFBF8940000000
  %635 = fmul fast float %629, %634
  %636 = fadd fast float %635, 0x41CFBF8940000000
  %637 = fptosi float %636 to i32
  %638 = bitcast i32 %637 to float
  %639 = bitcast float %631 to i32
  %640 = sitofp i32 %639 to float
  %641 = fadd fast float %640, 0xC1CFBF8940000000
  %642 = fmul fast float %641, %629
  %643 = fadd fast float %642, 0x41CFBF8940000000
  %644 = fptosi float %643 to i32
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %638, %626
  %647 = fmul fast float %645, %626
  %648 = fsub fast float %631, %646
  %649 = fadd fast float %647, %631
  %650 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %651 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %652 = fsub fast float %620, %650
  %653 = fsub fast float %651, %650
  %654 = bitcast float %653 to i32
  %655 = sub nsw i32 2129859010, %654
  %656 = bitcast i32 %655 to float
  %657 = fmul fast float %656, %652
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  br label %659

; <label>:659                                     ; preds = %613, %608
  %660 = phi float [ %658, %613 ], [ %471, %608 ]
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 128
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %681, label %665

; <label>:665                                     ; preds = %659
  %666 = add i32 %50, 456
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = add i32 %668, 0
  %670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %670, %dx.types.Handle %97, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 524288
  %676 = icmp ne i32 %675, 0
  %677 = fcmp fast ogt float %672, 0x3FE0101020000000
  %678 = select i1 %677, float 1.000000e+00, float 0.000000e+00
  %679 = select i1 %676, float %678, float %672
  %680 = fmul fast float %679, %660
  br label %681

; <label>:681                                     ; preds = %665, %659
  %682 = phi float [ %680, %665 ], [ %660, %659 ]
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 16
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %885, label %687

; <label>:687                                     ; preds = %681
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %50, 408
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %96, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = extractvalue %dx.types.ResRet.f32 %695, 1
  %698 = extractvalue %dx.types.ResRet.f32 %695, 2
  %699 = extractvalue %dx.types.ResRet.f32 %695, 3
  %700 = and i32 %689, 255
  %701 = uitofp i32 %700 to float
  %702 = lshr i32 %689, 8
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %699, %701
  %706 = fadd fast float %705, %704
  %707 = fmul fast float %706, 0x3F70101000000000
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 512
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %720, label %712

; <label>:712                                     ; preds = %687
  %713 = add i32 %50, 492
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %715, 0
  %717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %717, %dx.types.Handle %97, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  br label %720

; <label>:720                                     ; preds = %712, %687
  %721 = phi float [ %719, %712 ], [ 1.000000e+00, %687 ]
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 33554432
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %832, label %726

; <label>:726                                     ; preds = %720
  %727 = add i32 %50, 224
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %729, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = add i32 %50, 228
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = and i32 %736, 65535
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = lshr i32 %740, 24
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101020000000
  %744 = and i32 %740, 255
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = lshr i32 %740, 8
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = lshr i32 %740, 16
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = add i32 %50, 220
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = lshr i32 %757, 24
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = and i32 %757, 255
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = lshr i32 %757, 8
  %765 = and i32 %764, 255
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = lshr i32 %757, 16
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = bitcast float %696 to i32
  %773 = ashr i32 %772, 1
  %774 = sub nsw i32 1597463174, %773
  %775 = bitcast i32 %774 to float
  %776 = fmul fast float %696, 5.000000e-01
  %777 = fmul fast float %775, %775
  %778 = fmul fast float %777, %776
  %779 = fsub fast float 1.500000e+00, %778
  %780 = fmul fast float %775, %696
  %781 = fmul fast float %780, %779
  %782 = bitcast float %697 to i32
  %783 = ashr i32 %782, 1
  %784 = sub nsw i32 1597463174, %783
  %785 = bitcast i32 %784 to float
  %786 = fmul fast float %697, 5.000000e-01
  %787 = fmul fast float %785, %785
  %788 = fmul fast float %787, %786
  %789 = fsub fast float 1.500000e+00, %788
  %790 = fmul fast float %785, %697
  %791 = fmul fast float %790, %789
  %792 = bitcast float %698 to i32
  %793 = ashr i32 %792, 1
  %794 = sub nsw i32 1597463174, %793
  %795 = bitcast i32 %794 to float
  %796 = fmul fast float %698, 5.000000e-01
  %797 = fmul fast float %795, %795
  %798 = fmul fast float %797, %796
  %799 = fsub fast float 1.500000e+00, %798
  %800 = fmul fast float %795, %698
  %801 = fmul fast float %800, %799
  %802 = fsub fast float %781, %763
  %803 = fsub fast float %791, %767
  %804 = fsub fast float %801, %771
  %805 = fmul fast float %802, %731
  %806 = fmul fast float %803, %733
  %807 = fmul fast float %804, %738
  %808 = fadd fast float %805, %746
  %809 = fadd fast float %806, %750
  %810 = fadd fast float %807, %754
  %811 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %812 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %814 = fmul fast float %811, %811
  %815 = fmul fast float %812, %812
  %816 = fmul fast float %813, %813
  %817 = fsub fast float %814, %696
  %818 = fsub fast float %815, %697
  %819 = fsub fast float %816, %698
  %820 = fmul fast float %817, %721
  %821 = fmul fast float %818, %721
  %822 = fmul fast float %819, %721
  %823 = fadd fast float %820, %696
  %824 = fadd fast float %821, %697
  %825 = fadd fast float %822, %698
  %826 = fadd fast float %743, %707
  %827 = fsub fast float %826, %760
  %828 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %829 = fsub fast float %828, %707
  %830 = fmul fast float %829, %721
  %831 = fadd fast float %830, %707
  br label %885

; <label>:832                                     ; preds = %720
  %833 = and i32 %723, 134217728
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %869, label %835

; <label>:835                                     ; preds = %832
  %836 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %837 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %839 = fadd fast float %836, -5.000000e-01
  %840 = fadd fast float %837, -5.000000e-01
  %841 = fadd fast float %838, -5.000000e-01
  %842 = fmul fast float %839, %721
  %843 = fmul fast float %840, %721
  %844 = fmul fast float %841, %721
  %845 = fadd fast float %842, 5.000000e-01
  %846 = fadd fast float %843, 5.000000e-01
  %847 = fadd fast float %844, 5.000000e-01
  %848 = call float @dx.op.unary.f32(i32 24, float %696)  ; Sqrt(value)
  %849 = call float @dx.op.unary.f32(i32 24, float %697)  ; Sqrt(value)
  %850 = call float @dx.op.unary.f32(i32 24, float %698)  ; Sqrt(value)
  %851 = fmul fast float %845, 2.000000e+00
  %852 = fsub fast float 1.000000e+00, %851
  %853 = fmul fast float %852, %848
  %854 = fadd fast float %853, %851
  %855 = fmul fast float %854, %848
  %856 = fmul fast float %846, 2.000000e+00
  %857 = fsub fast float 1.000000e+00, %856
  %858 = fmul fast float %857, %849
  %859 = fadd fast float %858, %856
  %860 = fmul fast float %859, %849
  %861 = fmul fast float %847, 2.000000e+00
  %862 = fsub fast float 1.000000e+00, %861
  %863 = fmul fast float %862, %850
  %864 = fadd fast float %863, %861
  %865 = fmul fast float %864, %850
  %866 = fmul fast float %855, %855
  %867 = fmul fast float %860, %860
  %868 = fmul fast float %865, %865
  br label %885

; <label>:869                                     ; preds = %832
  %870 = fmul fast float %288, %288
  %871 = fmul fast float %292, %292
  %872 = fmul fast float %296, %296
  %873 = fadd fast float %870, -1.000000e+00
  %874 = fadd fast float %871, -1.000000e+00
  %875 = fadd fast float %872, -1.000000e+00
  %876 = fmul fast float %721, %873
  %877 = fmul fast float %721, %874
  %878 = fmul fast float %721, %875
  %879 = fadd fast float %876, 1.000000e+00
  %880 = fadd fast float %877, 1.000000e+00
  %881 = fadd fast float %878, 1.000000e+00
  %882 = fmul fast float %879, %696
  %883 = fmul fast float %880, %697
  %884 = fmul fast float %881, %698
  br label %885

; <label>:885                                     ; preds = %869, %835, %726, %681
  %886 = phi float [ %831, %726 ], [ %707, %835 ], [ %707, %869 ], [ 0x3FA23C0BE0000000, %681 ]
  %887 = phi float [ %823, %726 ], [ %866, %835 ], [ %882, %869 ], [ 1.000000e+00, %681 ]
  %888 = phi float [ %824, %726 ], [ %867, %835 ], [ %883, %869 ], [ 1.000000e+00, %681 ]
  %889 = phi float [ %825, %726 ], [ %868, %835 ], [ %884, %869 ], [ 1.000000e+00, %681 ]
  %890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.i32 %890, 1
  %892 = and i32 %891, 1
  %893 = icmp ne i32 %892, 0
  %894 = add i32 %50, 356
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 32
  %898 = icmp ne i32 %897, 0
  %899 = and i1 %893, %898
  %900 = select i1 %899, float 1.000000e+00, float %887
  %901 = select i1 %899, float 0x3FD3333340000000, float %888
  %902 = select i1 %899, float 0x3FD3333340000000, float %889
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 32
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %1047, label %907

; <label>:907                                     ; preds = %885
  %908 = add i32 %50, 92
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = add i32 %50, 424
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %913, 0
  %915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %916 = add i32 %50, 376
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = extractvalue %dx.types.ResRet.i32 %917, 1
  %920 = extractvalue %dx.types.ResRet.i32 %917, 2
  %921 = extractvalue %dx.types.ResRet.i32 %917, 3
  %922 = bitcast i32 %919 to float
  %923 = bitcast i32 %920 to float
  %924 = bitcast i32 %921 to float
  %925 = add i32 %50, 392
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = extractvalue %dx.types.ResRet.i32 %926, 1
  %929 = extractvalue %dx.types.ResRet.i32 %926, 2
  %930 = extractvalue %dx.types.ResRet.i32 %926, 3
  %931 = bitcast i32 %928 to float
  %932 = bitcast i32 %929 to float
  %933 = bitcast i32 %930 to float
  %934 = fmul fast float %922, %609
  %935 = fmul fast float %922, %610
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 3
  %938 = fmul fast float %937, %923
  %939 = fmul fast float %937, %924
  %940 = fadd fast float %938, %934
  %941 = fadd fast float %939, %935
  %942 = fmul fast float %931, %609
  %943 = fmul fast float %931, %610
  %944 = fmul fast float %937, %932
  %945 = fmul fast float %937, %933
  %946 = fadd fast float %944, %942
  %947 = fadd fast float %945, %943
  %948 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %915, i32 0)  ; GetDimensions(handle,mipLevel)
  %949 = extractvalue %dx.types.Dimensions %948, 3
  %950 = sitofp i32 %949 to float
  %951 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %915, %dx.types.Handle %96, float %940, float %941, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %952 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %915, %dx.types.Handle %96, float %946, float %947, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %915, %dx.types.Handle %96, float %940, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = extractvalue %dx.types.ResRet.f32 %953, 2
  %957 = extractvalue %dx.types.ResRet.f32 %953, 3
  %958 = and i32 %910, 255
  %959 = uitofp i32 %958 to float
  %960 = lshr i32 %910, 8
  %961 = and i32 %960, 255
  %962 = uitofp i32 %961 to float
  %963 = lshr i32 %910, 16
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101000000000
  %967 = fmul fast float %954, %959
  %968 = fadd fast float %967, %962
  %969 = fadd fast float %955, -5.000000e-01
  %970 = fadd fast float %957, -5.000000e-01
  %971 = fmul fast float %969, %966
  %972 = fmul fast float %970, %966
  %973 = fadd fast float %971, 5.000000e-01
  %974 = fadd fast float %972, 5.000000e-01
  %975 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %915, %dx.types.Handle %96, float %946, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = extractvalue %dx.types.ResRet.f32 %975, 1
  %978 = extractvalue %dx.types.ResRet.f32 %975, 2
  %979 = extractvalue %dx.types.ResRet.f32 %975, 3
  %980 = fmul fast float %976, %959
  %981 = fadd fast float %980, %962
  %982 = fadd fast float %977, -5.000000e-01
  %983 = fadd fast float %979, -5.000000e-01
  %984 = fmul fast float %982, %966
  %985 = fmul fast float %983, %966
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fadd fast float %985, 5.000000e-01
  %988 = fmul fast float %973, 2.000000e+00
  %989 = fadd fast float %988, -1.000000e+00
  %990 = fmul fast float %974, 2.000000e+00
  %991 = fadd fast float %990, -1.000000e+00
  %992 = fadd fast float %989, %991
  %993 = fmul fast float %992, 5.000000e-01
  %994 = fsub fast float %989, %991
  %995 = fmul fast float %994, 5.000000e-01
  %996 = call float @dx.op.unary.f32(i32 6, float %993)  ; FAbs(value)
  %997 = fsub fast float 1.000000e+00, %996
  %998 = call float @dx.op.unary.f32(i32 6, float %995)  ; FAbs(value)
  %999 = fsub fast float %997, %998
  %1000 = call float @dx.op.dot3.f32(i32 55, float %993, float %995, float %999, float %993, float %995, float %999)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = call float @dx.op.unary.f32(i32 25, float %1000)  ; Rsqrt(value)
  %1002 = fmul fast float %986, 2.000000e+00
  %1003 = fadd fast float %1002, -1.000000e+00
  %1004 = fmul fast float %987, 2.000000e+00
  %1005 = fadd fast float %1004, -1.000000e+00
  %1006 = fadd fast float %1003, %1005
  %1007 = fmul fast float %1006, 5.000000e-01
  %1008 = fsub fast float %1003, %1005
  %1009 = fmul fast float %1008, 5.000000e-01
  %1010 = call float @dx.op.unary.f32(i32 6, float %1007)  ; FAbs(value)
  %1011 = fsub fast float 1.000000e+00, %1010
  %1012 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1013 = fsub fast float %1011, %1012
  %1014 = call float @dx.op.dot3.f32(i32 55, float %1007, float %1009, float %1013, float %1007, float %1009, float %1013)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = call float @dx.op.unary.f32(i32 25, float %1014)  ; Rsqrt(value)
  %1016 = fadd fast float %950, -1.000000e+00
  %1017 = fsub fast float %1016, %951
  %1018 = fmul fast float %1017, 5.000000e-01
  %1019 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1020 = fsub fast float %1016, %952
  %1021 = fmul fast float %1020, 5.000000e-01
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1023 = bitcast i32 %918 to float
  %1024 = bitcast i32 %927 to float
  %1025 = fmul fast float %993, %1023
  %1026 = fmul fast float %1025, %1001
  %1027 = fmul fast float %1026, %1019
  %1028 = fmul fast float %995, %1023
  %1029 = fmul fast float %1028, %1001
  %1030 = fmul fast float %1029, %1019
  %1031 = fmul fast float %1015, %1024
  %1032 = fmul fast float %1031, %1007
  %1033 = fmul fast float %1032, %1022
  %1034 = fmul fast float %1031, %1009
  %1035 = fmul fast float %1034, %1022
  %1036 = fadd fast float %1033, %1027
  %1037 = fadd fast float %1035, %1030
  %1038 = fmul fast float %956, %1023
  %1039 = fmul fast float %978, %1024
  %1040 = fadd fast float %1039, %1038
  %1041 = fmul fast float %968, %1023
  %1042 = fmul fast float %981, %1024
  %1043 = fadd fast float %1042, %1041
  %1044 = fmul fast float %1043, 0x3F70101000000000
  %1045 = call float @dx.op.dot2.f32(i32 54, float %1036, float %1037, float %513, float %514)  ; Dot2(ax,ay,bx,by)
  %1046 = call float @dx.op.dot2.f32(i32 54, float %1036, float %1037, float %515, float %516)  ; Dot2(ax,ay,bx,by)
  br label %1047

; <label>:1047                                    ; preds = %907, %885
  %1048 = phi float [ %1044, %907 ], [ 0x3FD6666660000000, %885 ]
  %1049 = phi float [ %1045, %907 ], [ 0.000000e+00, %885 ]
  %1050 = phi float [ %1046, %907 ], [ 0.000000e+00, %885 ]
  %1051 = phi float [ %1040, %907 ], [ 1.000000e+00, %885 ]
  %1052 = add i32 %50, 160
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = lshr i32 %1054, 22
  %1056 = shl nuw nsw i32 %1055, 5
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = and i32 %1059, 64
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1095, label %1062

; <label>:1062                                    ; preds = %1047
  %1063 = add i32 %50, 440
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = add i32 %1065, 0
  %1067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 131072
  %1071 = icmp eq i32 %1070, 0
  %1072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1067, %dx.types.Handle %96, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = fmul fast float %1073, %276
  %1077 = fmul fast float %1074, %279
  %1078 = fmul fast float %1075, %282
  br i1 %1071, label %1085, label %1079

; <label>:1079                                    ; preds = %1062
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1082 = fmul fast float %1081, %1076
  %1083 = fmul fast float %1081, %1077
  %1084 = fmul fast float %1081, %1078
  br label %1085

; <label>:1085                                    ; preds = %1079, %1062
  %1086 = phi float [ %1082, %1079 ], [ %1076, %1062 ]
  %1087 = phi float [ %1083, %1079 ], [ %1077, %1062 ]
  %1088 = phi float [ %1084, %1079 ], [ %1078, %1062 ]
  %1089 = fmul fast float %1086, %1057
  %1090 = select i1 %259, float %1089, float %1086
  %1091 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1087, float %1088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = select i1 %259, float 0.000000e+00, float %1086
  %1093 = select i1 %259, float %1091, float %1087
  %1094 = select i1 %259, float 0.000000e+00, float %1088
  br label %1095

; <label>:1095                                    ; preds = %1085, %1047
  %1096 = phi float [ %1092, %1085 ], [ 0.000000e+00, %1047 ]
  %1097 = phi float [ %1093, %1085 ], [ 0.000000e+00, %1047 ]
  %1098 = phi float [ %1094, %1085 ], [ 0.000000e+00, %1047 ]
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 1024
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1133, label %1103

; <label>:1103                                    ; preds = %1095
  %1104 = add i32 %50, 152
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 255
  %1108 = uitofp i32 %1107 to float
  %1109 = fmul fast float %1108, 0x3F70101020000000
  %1110 = lshr i32 %1106, 8
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F70101020000000
  %1114 = lshr i32 %1106, 16
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = fmul fast float %1109, %1109
  %1119 = fmul fast float %1113, %1113
  %1120 = fmul fast float %1117, %1117
  %1121 = add i32 %50, 508
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = add i32 %1123, 0
  %1125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1125, %dx.types.Handle %97, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = fmul fast float %1118, %1127
  %1131 = fmul fast float %1119, %1128
  %1132 = fmul fast float %1120, %1129
  br label %1133

; <label>:1133                                    ; preds = %1103, %1095
  %1134 = phi float [ %1130, %1103 ], [ 0.000000e+00, %1095 ]
  %1135 = phi float [ %1131, %1103 ], [ 0.000000e+00, %1095 ]
  %1136 = phi float [ %1132, %1103 ], [ 0.000000e+00, %1095 ]
  %1137 = fcmp fast ogt float %1134, 0.000000e+00
  %1138 = fcmp fast ogt float %1135, 0.000000e+00
  %1139 = fcmp fast ogt float %1136, 0.000000e+00
  %1140 = call float @dx.op.unary.f32(i32 23, float %1134)  ; Log(value)
  %1141 = call float @dx.op.unary.f32(i32 23, float %1135)  ; Log(value)
  %1142 = call float @dx.op.unary.f32(i32 23, float %1136)  ; Log(value)
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = lshr i32 %1144, 7
  %1146 = and i32 %1145, 32752
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = fmul fast float %1140, 0xBFE62E4300000000
  %1149 = fmul fast float %1148, %1147
  %1150 = fmul fast float %1141, 0xBFE62E4300000000
  %1151 = fmul fast float %1150, %1147
  %1152 = fmul fast float %1142, 0xBFE62E4300000000
  %1153 = fmul fast float %1152, %1147
  %1154 = select i1 %1137, float %1149, float 1.270000e+02
  %1155 = select i1 %1138, float %1151, float 1.270000e+02
  %1156 = select i1 %1139, float %1153, float 1.270000e+02
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 2048
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1176, label %1161

; <label>:1161                                    ; preds = %1133
  %1162 = add i32 %50, 524
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = add i32 %1164, 0
  %1166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1166, %dx.types.Handle %97, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 3
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = shl i32 %1170, 4
  %1172 = and i32 %1171, 32752
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = fmul fast float %1173, %1168
  %1175 = call float @dx.op.binary.f32(i32 35, float %1174, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1176

; <label>:1176                                    ; preds = %1161, %1133
  %1177 = phi float [ %1175, %1161 ], [ 0x3F70101020000000, %1133 ]
  %1178 = add i32 %50, 96
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 255
  %1182 = uitofp i32 %1181 to float
  %1183 = lshr i32 %1180, 8
  %1184 = and i32 %1183, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = fmul fast float %1185, %1186
  %1188 = fadd fast float %1187, %1182
  %1189 = fmul fast float %1188, 0x3F70101020000000
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  br label %1191

; <label>:1191                                    ; preds = %1176, %495
  %1192 = phi float [ 0.000000e+00, %495 ], [ %1049, %1176 ]
  %1193 = phi float [ 0.000000e+00, %495 ], [ %1050, %1176 ]
  %1194 = phi float [ 0.000000e+00, %495 ], [ %1154, %1176 ]
  %1195 = phi float [ 0.000000e+00, %495 ], [ %1155, %1176 ]
  %1196 = phi float [ 0.000000e+00, %495 ], [ %1156, %1176 ]
  %1197 = phi float [ 0.000000e+00, %495 ], [ %900, %1176 ]
  %1198 = phi float [ 0.000000e+00, %495 ], [ %901, %1176 ]
  %1199 = phi float [ 0.000000e+00, %495 ], [ %902, %1176 ]
  %1200 = phi float [ 0.000000e+00, %495 ], [ %1096, %1176 ]
  %1201 = phi float [ 0.000000e+00, %495 ], [ %1097, %1176 ]
  %1202 = phi float [ 0.000000e+00, %495 ], [ %1098, %1176 ]
  %1203 = phi float [ 0.000000e+00, %495 ], [ %886, %1176 ]
  %1204 = phi float [ 0.000000e+00, %495 ], [ %682, %1176 ]
  %1205 = phi float [ 0.000000e+00, %495 ], [ %1048, %1176 ]
  %1206 = phi float [ 0.000000e+00, %495 ], [ %1051, %1176 ]
  %1207 = phi float [ 0.000000e+00, %495 ], [ %1177, %1176 ]
  %1208 = phi float [ 0.000000e+00, %495 ], [ %1190, %1176 ]
  br i1 %443, label %2075, label %1209

; <label>:1209                                    ; preds = %1191
  %1210 = icmp ult i32 %501, 2
  %1211 = add i32 %50, 40
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %50, 44
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = or i32 %1216, %1213
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %2075, label %1219

; <label>:1219                                    ; preds = %1209
  %1220 = and i32 %1213, 262144
  %1221 = icmp ne i32 %1220, 0
  %1222 = select i1 %1221, float %55, float 1.000000e+00
  %1223 = select i1 %1221, float %56, float 0.000000e+00
  %1224 = select i1 %1221, float %57, float 0.000000e+00
  %1225 = select i1 %1221, float %58, float 1.000000e+00
  %1226 = select i1 %1221, float %59, float %82
  %1227 = select i1 %1221, float %60, float %83
  %1228 = add i32 %50, 300
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 16
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = fmul fast float %1232, 0x3F50624DE0000000
  %1234 = add i32 %50, 104
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = lshr i32 %1236, 16
  %1238 = and i32 %1237, 255
  %1239 = lshr i32 %1236, 24
  %1240 = add i32 %50, 308
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 65535
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = lshr i32 %1242, 16
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = add i32 %50, 48
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = lshr i32 %1249, 22
  %1251 = shl nuw nsw i32 %1250, 5
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = shl i32 %1249, 4
  %1254 = and i32 %1253, 32752
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = lshr i32 %1249, 7
  %1257 = and i32 %1256, 32752
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1261 = fmul fast float %1260, 1.000000e+03
  %1262 = fmul fast float %353, %1261
  %1263 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1264 = fadd fast float %1263, %343
  %1265 = fmul fast float %354, %1261
  %1266 = call float @dx.op.unary.f32(i32 22, float %1265)  ; Frc(value)
  %1267 = fadd fast float %1266, %345
  %1268 = fmul fast float %1233, %1261
  %1269 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1270 = fmul fast float %1269, 0x401921FB60000000
  %1271 = fadd fast float %1270, %1252
  %1272 = call float @dx.op.unary.f32(i32 13, float %1271)  ; Sin(value)
  %1273 = call float @dx.op.unary.f32(i32 12, float %1271)  ; Cos(value)
  %1274 = fsub fast float -0.000000e+00, %1272
  %1275 = fadd fast float %1226, -5.000000e-01
  %1276 = fadd fast float %1227, -5.000000e-01
  %1277 = fmul fast float %1244, %1275
  %1278 = fmul fast float %1246, %1276
  %1279 = fadd fast float %1277, 5.000000e-01
  %1280 = fadd fast float %1278, 5.000000e-01
  %1281 = fmul fast float %1255, %1279
  %1282 = fmul fast float %1258, %1280
  %1283 = fmul fast float %1273, %1281
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1282, float %1283)  ; FMad(a,b,c)
  %1285 = fmul fast float %1272, %1281
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1282, float %1285)  ; FMad(a,b,c)
  %1287 = fadd fast float %1264, %1284
  %1288 = fadd fast float %1267, %1286
  %1289 = icmp ugt i32 %1238, 1
  %1290 = icmp ugt i32 %1236, 33554431
  %1291 = or i1 %1290, %1289
  br i1 %1291, label %1292, label %1317

; <label>:1292                                    ; preds = %1219
  %1293 = add i32 %50, 244
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 16
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = fmul fast float %1260, %1297
  %1299 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1300 = mul nuw nsw i32 %1238, %1239
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1299, %1301
  %1303 = call float @dx.op.unary.f32(i32 27, float %1302)  ; Round_ni(value)
  %1304 = fptoui float %1303 to i32
  %1305 = urem i32 %1304, %1238
  %1306 = udiv i32 %1304, %1239
  %1307 = call float @dx.op.unary.f32(i32 22, float %1287)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 22, float %1288)  ; Frc(value)
  %1309 = uitofp i32 %1305 to float
  %1310 = uitofp i32 %1306 to float
  %1311 = fadd fast float %1307, %1309
  %1312 = fadd fast float %1308, %1310
  %1313 = uitofp i32 %1238 to float
  %1314 = uitofp i32 %1239 to float
  %1315 = fdiv fast float %1311, %1313
  %1316 = fdiv fast float %1312, %1314
  br label %1317

; <label>:1317                                    ; preds = %1292, %1219
  %1318 = phi float [ %1315, %1292 ], [ %1287, %1219 ]
  %1319 = phi float [ %1316, %1292 ], [ %1288, %1219 ]
  %1320 = and i32 %1213, 256
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1368, label %1322

; <label>:1322                                    ; preds = %1317
  %1323 = add i32 %50, 476
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = add i32 %1325, 0
  %1327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1327, %dx.types.Handle %97, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = add i32 %50, 116
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = shl i32 %1332, 4
  %1334 = and i32 %1333, 32752
  %1335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1334)  ; LegacyF16ToF32(value)
  %1336 = lshr i32 %1332, 7
  %1337 = and i32 %1336, 32752
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = fsub fast float 1.000000e+00, %498
  %1340 = call float @dx.op.binary.f32(i32 35, float %1339, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1341 = bitcast float %498 to i32
  %1342 = sitofp i32 %1341 to float
  %1343 = fadd fast float %1342, 0xC1CFBF8940000000
  %1344 = fmul fast float %1338, %1343
  %1345 = fadd fast float %1344, 0x41CFBF8940000000
  %1346 = fptosi float %1345 to i32
  %1347 = bitcast i32 %1346 to float
  %1348 = bitcast float %1340 to i32
  %1349 = sitofp i32 %1348 to float
  %1350 = fadd fast float %1349, 0xC1CFBF8940000000
  %1351 = fmul fast float %1350, %1338
  %1352 = fadd fast float %1351, 0x41CFBF8940000000
  %1353 = fptosi float %1352 to i32
  %1354 = bitcast i32 %1353 to float
  %1355 = fmul fast float %1347, %1335
  %1356 = fmul fast float %1354, %1335
  %1357 = fsub fast float %1340, %1355
  %1358 = fadd fast float %1356, %1340
  %1359 = call float @dx.op.unary.f32(i32 7, float %1357)  ; Saturate(value)
  %1360 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1361 = fsub fast float %1329, %1359
  %1362 = fsub fast float %1360, %1359
  %1363 = bitcast float %1362 to i32
  %1364 = sub nsw i32 2129859010, %1363
  %1365 = bitcast i32 %1364 to float
  %1366 = fmul fast float %1365, %1361
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  br label %1368

; <label>:1368                                    ; preds = %1322, %1317
  %1369 = phi float [ %1367, %1322 ], [ %498, %1317 ]
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 128
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1390, label %1374

; <label>:1374                                    ; preds = %1368
  %1375 = add i32 %50, 460
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = add i32 %1377, 0
  %1379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1379, %dx.types.Handle %97, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 524288
  %1385 = icmp ne i32 %1384, 0
  %1386 = fcmp fast ogt float %1381, 0x3FE0101020000000
  %1387 = select i1 %1386, float 1.000000e+00, float 0.000000e+00
  %1388 = select i1 %1385, float %1387, float %1381
  %1389 = fmul fast float %1388, %1369
  br label %1390

; <label>:1390                                    ; preds = %1374, %1368
  %1391 = phi float [ %1389, %1374 ], [ %1369, %1368 ]
  %1392 = fcmp fast ult float %1391, 0x3F70101020000000
  br i1 %1392, label %2075, label %1393

; <label>:1393                                    ; preds = %1390
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 16
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1596, label %1398

; <label>:1398                                    ; preds = %1393
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %50, 412
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %1403, 0
  %1405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1405, %dx.types.Handle %96, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = extractvalue %dx.types.ResRet.f32 %1406, 3
  %1411 = and i32 %1400, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1400, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1410, %1412
  %1417 = fadd fast float %1416, %1415
  %1418 = fmul fast float %1417, 0x3F70101000000000
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 512
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1431, label %1423

; <label>:1423                                    ; preds = %1398
  %1424 = add i32 %50, 496
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = add i32 %1426, 0
  %1428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1428, %dx.types.Handle %97, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  br label %1431

; <label>:1431                                    ; preds = %1423, %1398
  %1432 = phi float [ %1430, %1423 ], [ 1.000000e+00, %1398 ]
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 33554432
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1543, label %1437

; <label>:1437                                    ; preds = %1431
  %1438 = add i32 %50, 240
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 65535
  %1442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1441)  ; LegacyF16ToF32(value)
  %1443 = lshr i32 %1440, 16
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = add i32 %50, 244
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 65535
  %1449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1448)  ; LegacyF16ToF32(value)
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = lshr i32 %1451, 24
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F70101020000000
  %1455 = and i32 %1451, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = fmul fast float %1456, 0x3F70101020000000
  %1458 = lshr i32 %1451, 8
  %1459 = and i32 %1458, 255
  %1460 = uitofp i32 %1459 to float
  %1461 = fmul fast float %1460, 0x3F70101020000000
  %1462 = lshr i32 %1451, 16
  %1463 = and i32 %1462, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = fmul fast float %1464, 0x3F70101020000000
  %1466 = add i32 %50, 236
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = lshr i32 %1468, 24
  %1470 = uitofp i32 %1469 to float
  %1471 = fmul fast float %1470, 0x3F70101020000000
  %1472 = and i32 %1468, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = fmul fast float %1473, 0x3F70101020000000
  %1475 = lshr i32 %1468, 8
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = fmul fast float %1477, 0x3F70101020000000
  %1479 = lshr i32 %1468, 16
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, 0x3F70101020000000
  %1483 = bitcast float %1407 to i32
  %1484 = ashr i32 %1483, 1
  %1485 = sub nsw i32 1597463174, %1484
  %1486 = bitcast i32 %1485 to float
  %1487 = fmul fast float %1407, 5.000000e-01
  %1488 = fmul fast float %1486, %1486
  %1489 = fmul fast float %1488, %1487
  %1490 = fsub fast float 1.500000e+00, %1489
  %1491 = fmul fast float %1486, %1407
  %1492 = fmul fast float %1491, %1490
  %1493 = bitcast float %1408 to i32
  %1494 = ashr i32 %1493, 1
  %1495 = sub nsw i32 1597463174, %1494
  %1496 = bitcast i32 %1495 to float
  %1497 = fmul fast float %1408, 5.000000e-01
  %1498 = fmul fast float %1496, %1496
  %1499 = fmul fast float %1498, %1497
  %1500 = fsub fast float 1.500000e+00, %1499
  %1501 = fmul fast float %1496, %1408
  %1502 = fmul fast float %1501, %1500
  %1503 = bitcast float %1409 to i32
  %1504 = ashr i32 %1503, 1
  %1505 = sub nsw i32 1597463174, %1504
  %1506 = bitcast i32 %1505 to float
  %1507 = fmul fast float %1409, 5.000000e-01
  %1508 = fmul fast float %1506, %1506
  %1509 = fmul fast float %1508, %1507
  %1510 = fsub fast float 1.500000e+00, %1509
  %1511 = fmul fast float %1506, %1409
  %1512 = fmul fast float %1511, %1510
  %1513 = fsub fast float %1492, %1474
  %1514 = fsub fast float %1502, %1478
  %1515 = fsub fast float %1512, %1482
  %1516 = fmul fast float %1513, %1442
  %1517 = fmul fast float %1514, %1444
  %1518 = fmul fast float %1515, %1449
  %1519 = fadd fast float %1516, %1457
  %1520 = fadd fast float %1517, %1461
  %1521 = fadd fast float %1518, %1465
  %1522 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = fmul fast float %1522, %1522
  %1526 = fmul fast float %1523, %1523
  %1527 = fmul fast float %1524, %1524
  %1528 = fsub fast float %1525, %1407
  %1529 = fsub fast float %1526, %1408
  %1530 = fsub fast float %1527, %1409
  %1531 = fmul fast float %1528, %1432
  %1532 = fmul fast float %1529, %1432
  %1533 = fmul fast float %1530, %1432
  %1534 = fadd fast float %1531, %1407
  %1535 = fadd fast float %1532, %1408
  %1536 = fadd fast float %1533, %1409
  %1537 = fadd fast float %1454, %1418
  %1538 = fsub fast float %1537, %1471
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = fsub fast float %1539, %1418
  %1541 = fmul fast float %1540, %1432
  %1542 = fadd fast float %1541, %1418
  br label %1596

; <label>:1543                                    ; preds = %1431
  %1544 = and i32 %1434, 134217728
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1580, label %1546

; <label>:1546                                    ; preds = %1543
  %1547 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %1548 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %1549 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %1550 = fadd fast float %1547, -5.000000e-01
  %1551 = fadd fast float %1548, -5.000000e-01
  %1552 = fadd fast float %1549, -5.000000e-01
  %1553 = fmul fast float %1550, %1432
  %1554 = fmul fast float %1551, %1432
  %1555 = fmul fast float %1552, %1432
  %1556 = fadd fast float %1553, 5.000000e-01
  %1557 = fadd fast float %1554, 5.000000e-01
  %1558 = fadd fast float %1555, 5.000000e-01
  %1559 = call float @dx.op.unary.f32(i32 24, float %1407)  ; Sqrt(value)
  %1560 = call float @dx.op.unary.f32(i32 24, float %1408)  ; Sqrt(value)
  %1561 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1562 = fmul fast float %1556, 2.000000e+00
  %1563 = fsub fast float 1.000000e+00, %1562
  %1564 = fmul fast float %1563, %1559
  %1565 = fadd fast float %1564, %1562
  %1566 = fmul fast float %1565, %1559
  %1567 = fmul fast float %1557, 2.000000e+00
  %1568 = fsub fast float 1.000000e+00, %1567
  %1569 = fmul fast float %1568, %1560
  %1570 = fadd fast float %1569, %1567
  %1571 = fmul fast float %1570, %1560
  %1572 = fmul fast float %1558, 2.000000e+00
  %1573 = fsub fast float 1.000000e+00, %1572
  %1574 = fmul fast float %1573, %1561
  %1575 = fadd fast float %1574, %1572
  %1576 = fmul fast float %1575, %1561
  %1577 = fmul fast float %1566, %1566
  %1578 = fmul fast float %1571, %1571
  %1579 = fmul fast float %1576, %1576
  br label %1596

; <label>:1580                                    ; preds = %1543
  %1581 = fmul fast float %330, %330
  %1582 = fmul fast float %334, %334
  %1583 = fmul fast float %338, %338
  %1584 = fadd fast float %1581, -1.000000e+00
  %1585 = fadd fast float %1582, -1.000000e+00
  %1586 = fadd fast float %1583, -1.000000e+00
  %1587 = fmul fast float %1432, %1584
  %1588 = fmul fast float %1432, %1585
  %1589 = fmul fast float %1432, %1586
  %1590 = fadd fast float %1587, 1.000000e+00
  %1591 = fadd fast float %1588, 1.000000e+00
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fmul fast float %1590, %1407
  %1594 = fmul fast float %1591, %1408
  %1595 = fmul fast float %1592, %1409
  br label %1596

; <label>:1596                                    ; preds = %1580, %1546, %1437, %1393
  %1597 = phi float [ %1542, %1437 ], [ %1418, %1546 ], [ %1418, %1580 ], [ 0x3FA23C0BE0000000, %1393 ]
  %1598 = phi float [ %1534, %1437 ], [ %1577, %1546 ], [ %1593, %1580 ], [ 1.000000e+00, %1393 ]
  %1599 = phi float [ %1535, %1437 ], [ %1578, %1546 ], [ %1594, %1580 ], [ 1.000000e+00, %1393 ]
  %1600 = phi float [ %1536, %1437 ], [ %1579, %1546 ], [ %1595, %1580 ], [ 1.000000e+00, %1393 ]
  %1601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.i32 %1601, 1
  %1603 = and i32 %1602, 1
  %1604 = icmp ne i32 %1603, 0
  %1605 = add i32 %50, 356
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 32
  %1609 = icmp ne i32 %1608, 0
  %1610 = and i1 %1604, %1609
  %1611 = select i1 %1610, float 1.000000e+00, float %1598
  %1612 = select i1 %1610, float 0x3FD3333340000000, float %1599
  %1613 = select i1 %1610, float 0x3FD3333340000000, float %1600
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 32
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1690, label %1618

; <label>:1618                                    ; preds = %1596
  %1619 = add i32 %50, 108
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = add i32 %50, 428
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = add i32 %1624, 0
  %1626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1626, %dx.types.Handle %96, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1628 = extractvalue %dx.types.ResRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.ResRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.ResRet.f32 %1627, 2
  %1631 = extractvalue %dx.types.ResRet.f32 %1627, 3
  %1632 = and i32 %1621, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = lshr i32 %1621, 8
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = lshr i32 %1621, 16
  %1638 = and i32 %1637, 255
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1639, 0x3F70101000000000
  %1641 = fmul fast float %1628, %1633
  %1642 = fadd fast float %1641, %1636
  %1643 = fmul fast float %1642, 0x3F70101000000000
  %1644 = fadd fast float %1629, -5.000000e-01
  %1645 = fadd fast float %1631, -5.000000e-01
  %1646 = fmul fast float %1644, %1640
  %1647 = fmul fast float %1645, %1640
  %1648 = fadd fast float %1646, 5.000000e-01
  %1649 = fadd fast float %1647, 5.000000e-01
  %1650 = fmul fast float %1648, 2.000000e+00
  %1651 = fadd fast float %1650, -1.000000e+00
  %1652 = fmul fast float %1649, 2.000000e+00
  %1653 = fadd fast float %1652, -1.000000e+00
  %1654 = fadd fast float %1651, %1653
  %1655 = fmul fast float %1654, 5.000000e-01
  %1656 = fsub fast float %1651, %1653
  %1657 = fmul fast float %1656, 5.000000e-01
  %1658 = call float @dx.op.unary.f32(i32 6, float %1655)  ; FAbs(value)
  %1659 = fsub fast float 1.000000e+00, %1658
  %1660 = call float @dx.op.unary.f32(i32 6, float %1657)  ; FAbs(value)
  %1661 = fsub fast float %1659, %1660
  %1662 = call float @dx.op.dot3.f32(i32 55, float %1655, float %1657, float %1661, float %1655, float %1657, float %1661)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = call float @dx.op.unary.f32(i32 25, float %1662)  ; Rsqrt(value)
  %1664 = fmul fast float %1655, %1663
  %1665 = fmul fast float %1657, %1663
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 67108864
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1686, label %1670

; <label>:1670                                    ; preds = %1618
  %1671 = add i32 %50, 296
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 65535
  %1675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1674)  ; LegacyF16ToF32(value)
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = and i32 %1677, 65535
  %1679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1678)  ; LegacyF16ToF32(value)
  %1680 = lshr i32 %1673, 16
  %1681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1680)  ; LegacyF16ToF32(value)
  %1682 = fsub fast float %1643, %1681
  %1683 = fmul fast float %1682, %1675
  %1684 = fadd fast float %1683, %1679
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  br label %1686

; <label>:1686                                    ; preds = %1670, %1618
  %1687 = phi float [ %1685, %1670 ], [ %1643, %1618 ]
  %1688 = call float @dx.op.dot2.f32(i32 54, float %1664, float %1665, float %1222, float %1223)  ; Dot2(ax,ay,bx,by)
  %1689 = call float @dx.op.dot2.f32(i32 54, float %1664, float %1665, float %1224, float %1225)  ; Dot2(ax,ay,bx,by)
  br label %1690

; <label>:1690                                    ; preds = %1686, %1596
  %1691 = phi float [ %1687, %1686 ], [ 0x3FD6666660000000, %1596 ]
  %1692 = phi float [ %1688, %1686 ], [ 0.000000e+00, %1596 ]
  %1693 = phi float [ %1689, %1686 ], [ 0.000000e+00, %1596 ]
  %1694 = phi float [ %1630, %1686 ], [ 1.000000e+00, %1596 ]
  %1695 = add i32 %50, 176
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = lshr i32 %1697, 22
  %1699 = shl nuw nsw i32 %1698, 5
  %1700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1699)  ; LegacyF16ToF32(value)
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 64
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %1738, label %1705

; <label>:1705                                    ; preds = %1690
  %1706 = add i32 %50, 444
  %1707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.i32 %1707, 0
  %1709 = add i32 %1708, 0
  %1710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = and i32 %1712, 131072
  %1714 = icmp eq i32 %1713, 0
  %1715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1710, %dx.types.Handle %96, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1716 = extractvalue %dx.types.ResRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.ResRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.ResRet.f32 %1715, 2
  %1719 = fmul fast float %1716, %318
  %1720 = fmul fast float %1717, %321
  %1721 = fmul fast float %1718, %324
  br i1 %1714, label %1728, label %1722

; <label>:1722                                    ; preds = %1705
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 0
  %1725 = fmul fast float %1724, %1719
  %1726 = fmul fast float %1724, %1720
  %1727 = fmul fast float %1724, %1721
  br label %1728

; <label>:1728                                    ; preds = %1722, %1705
  %1729 = phi float [ %1725, %1722 ], [ %1719, %1705 ]
  %1730 = phi float [ %1726, %1722 ], [ %1720, %1705 ]
  %1731 = phi float [ %1727, %1722 ], [ %1721, %1705 ]
  %1732 = fmul fast float %1729, %1700
  %1733 = select i1 %259, float %1732, float %1729
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1733, float %1730, float %1731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = select i1 %259, float 0.000000e+00, float %1729
  %1736 = select i1 %259, float %1734, float %1730
  %1737 = select i1 %259, float 0.000000e+00, float %1731
  br label %1738

; <label>:1738                                    ; preds = %1728, %1690
  %1739 = phi float [ %1735, %1728 ], [ 0.000000e+00, %1690 ]
  %1740 = phi float [ %1736, %1728 ], [ 0.000000e+00, %1690 ]
  %1741 = phi float [ %1737, %1728 ], [ 0.000000e+00, %1690 ]
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = and i32 %1743, 1024
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1776, label %1746

; <label>:1746                                    ; preds = %1738
  %1747 = add i32 %50, 168
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = and i32 %1749, 255
  %1751 = uitofp i32 %1750 to float
  %1752 = fmul fast float %1751, 0x3F70101020000000
  %1753 = lshr i32 %1749, 8
  %1754 = and i32 %1753, 255
  %1755 = uitofp i32 %1754 to float
  %1756 = fmul fast float %1755, 0x3F70101020000000
  %1757 = lshr i32 %1749, 16
  %1758 = and i32 %1757, 255
  %1759 = uitofp i32 %1758 to float
  %1760 = fmul fast float %1759, 0x3F70101020000000
  %1761 = fmul fast float %1752, %1752
  %1762 = fmul fast float %1756, %1756
  %1763 = fmul fast float %1760, %1760
  %1764 = add i32 %50, 512
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = add i32 %1766, 0
  %1768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1768, %dx.types.Handle %97, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.ResRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.ResRet.f32 %1769, 2
  %1773 = fmul fast float %1761, %1770
  %1774 = fmul fast float %1762, %1771
  %1775 = fmul fast float %1763, %1772
  br label %1776

; <label>:1776                                    ; preds = %1746, %1738
  %1777 = phi float [ %1773, %1746 ], [ 0.000000e+00, %1738 ]
  %1778 = phi float [ %1774, %1746 ], [ 0.000000e+00, %1738 ]
  %1779 = phi float [ %1775, %1746 ], [ 0.000000e+00, %1738 ]
  %1780 = fcmp fast ogt float %1777, 0.000000e+00
  %1781 = fcmp fast ogt float %1778, 0.000000e+00
  %1782 = fcmp fast ogt float %1779, 0.000000e+00
  %1783 = call float @dx.op.unary.f32(i32 23, float %1777)  ; Log(value)
  %1784 = call float @dx.op.unary.f32(i32 23, float %1778)  ; Log(value)
  %1785 = call float @dx.op.unary.f32(i32 23, float %1779)  ; Log(value)
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 7
  %1789 = and i32 %1788, 32752
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = fmul fast float %1783, 0xBFE62E4300000000
  %1792 = fmul fast float %1791, %1790
  %1793 = fmul fast float %1784, 0xBFE62E4300000000
  %1794 = fmul fast float %1793, %1790
  %1795 = fmul fast float %1785, 0xBFE62E4300000000
  %1796 = fmul fast float %1795, %1790
  %1797 = select i1 %1780, float %1792, float 1.270000e+02
  %1798 = select i1 %1781, float %1794, float 1.270000e+02
  %1799 = select i1 %1782, float %1796, float 1.270000e+02
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 2048
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1819, label %1804

; <label>:1804                                    ; preds = %1776
  %1805 = add i32 %50, 528
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = add i32 %1807, 0
  %1809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1809, %dx.types.Handle %97, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 3
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = shl i32 %1813, 4
  %1815 = and i32 %1814, 32752
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = fmul fast float %1816, %1811
  %1818 = call float @dx.op.binary.f32(i32 35, float %1817, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1819

; <label>:1819                                    ; preds = %1804, %1776
  %1820 = phi float [ %1818, %1804 ], [ 0x3F70101020000000, %1776 ]
  %1821 = add i32 %50, 112
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = and i32 %1823, 255
  %1825 = uitofp i32 %1824 to float
  %1826 = lshr i32 %1823, 8
  %1827 = and i32 %1826, 255
  %1828 = uitofp i32 %1827 to float
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1611, float %1612, float %1613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = fmul fast float %1828, %1829
  %1831 = fadd fast float %1830, %1825
  %1832 = fmul fast float %1831, 0x3F70101020000000
  %1833 = call float @dx.op.unary.f32(i32 7, float %1832)  ; Saturate(value)
  br i1 %1210, label %1834, label %1869

; <label>:1834                                    ; preds = %1819
  %1835 = fmul fast float %1820, 2.000000e+00
  %1836 = fcmp fast olt float %1797, 1.270000e+02
  %1837 = fcmp fast olt float %1798, 1.270000e+02
  %1838 = fcmp fast olt float %1799, 1.270000e+02
  %1839 = fmul fast float %1797, 0xBFF7154760000000
  %1840 = fmul fast float %1839, %1835
  %1841 = fmul fast float %1798, 0xBFF7154760000000
  %1842 = fmul fast float %1841, %1835
  %1843 = fmul fast float %1799, 0xBFF7154760000000
  %1844 = fmul fast float %1843, %1835
  %1845 = call float @dx.op.unary.f32(i32 21, float %1840)  ; Exp(value)
  %1846 = call float @dx.op.unary.f32(i32 21, float %1842)  ; Exp(value)
  %1847 = call float @dx.op.unary.f32(i32 21, float %1844)  ; Exp(value)
  %1848 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1849 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %1850 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1851 = fadd fast float %1848, -1.000000e+00
  %1852 = select i1 %1836, float %1851, float -1.000000e+00
  %1853 = fadd fast float %1849, -1.000000e+00
  %1854 = select i1 %1837, float %1853, float -1.000000e+00
  %1855 = fadd fast float %1850, -1.000000e+00
  %1856 = select i1 %1838, float %1855, float -1.000000e+00
  %1857 = fmul fast float %1852, %1391
  %1858 = fmul fast float %1854, %1391
  %1859 = fmul fast float %1856, %1391
  %1860 = fadd fast float %1857, 1.000000e+00
  %1861 = fadd fast float %1858, 1.000000e+00
  %1862 = fadd fast float %1859, 1.000000e+00
  %1863 = fmul fast float %1860, %1197
  %1864 = fmul fast float %1861, %1198
  %1865 = fmul fast float %1862, %1199
  %1866 = fmul fast float %1860, %1200
  %1867 = fmul fast float %1861, %1201
  %1868 = fmul fast float %1862, %1202
  br label %1869

; <label>:1869                                    ; preds = %1834, %1819
  %1870 = phi float [ %1863, %1834 ], [ %1197, %1819 ]
  %1871 = phi float [ %1864, %1834 ], [ %1198, %1819 ]
  %1872 = phi float [ %1865, %1834 ], [ %1199, %1819 ]
  %1873 = phi float [ %1866, %1834 ], [ %1200, %1819 ]
  %1874 = phi float [ %1867, %1834 ], [ %1201, %1819 ]
  %1875 = phi float [ %1868, %1834 ], [ %1202, %1819 ]
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = and i32 %1877, 3
  %1879 = icmp eq i32 %1878, 3
  br i1 %1879, label %1958, label %1880

; <label>:1880                                    ; preds = %1869
  %1881 = and i32 %1877, 16
  %1882 = icmp ne i32 %1881, 0
  %1883 = select i1 %1882, float %1391, float 0.000000e+00
  %1884 = icmp eq i32 %1878, 0
  br i1 %1884, label %1885, label %1913

; <label>:1885                                    ; preds = %1880
  %1886 = and i32 %1877, 64
  %1887 = icmp ne i32 %1886, 0
  %1888 = select i1 %1887, float %1391, float 0.000000e+00
  %1889 = fsub fast float %1611, %1870
  %1890 = fsub fast float %1612, %1871
  %1891 = fsub fast float %1613, %1872
  %1892 = fmul fast float %1883, %1889
  %1893 = fmul fast float %1883, %1890
  %1894 = fmul fast float %1883, %1891
  %1895 = fadd fast float %1892, %1870
  %1896 = fadd fast float %1893, %1871
  %1897 = fadd fast float %1894, %1872
  %1898 = fsub fast float %1597, %1203
  %1899 = fmul fast float %1883, %1898
  %1900 = fadd fast float %1899, %1203
  %1901 = fsub fast float %1739, %1873
  %1902 = fsub fast float %1740, %1874
  %1903 = fsub fast float %1741, %1875
  %1904 = fmul fast float %1888, %1901
  %1905 = fmul fast float %1888, %1902
  %1906 = fmul fast float %1888, %1903
  %1907 = fadd fast float %1904, %1873
  %1908 = fadd fast float %1905, %1874
  %1909 = fadd fast float %1906, %1875
  %1910 = fsub fast float %1833, %1208
  %1911 = fmul fast float %1883, %1910
  %1912 = fadd fast float %1911, %1208
  br label %1958

; <label>:1913                                    ; preds = %1880
  %1914 = icmp eq i32 %1878, 1
  br i1 %1914, label %1915, label %1928

; <label>:1915                                    ; preds = %1913
  %1916 = fadd fast float %1611, -1.000000e+00
  %1917 = fadd fast float %1612, -1.000000e+00
  %1918 = fadd fast float %1613, -1.000000e+00
  %1919 = fmul fast float %1883, %1916
  %1920 = fmul fast float %1883, %1917
  %1921 = fmul fast float %1883, %1918
  %1922 = fadd fast float %1919, 1.000000e+00
  %1923 = fadd fast float %1920, 1.000000e+00
  %1924 = fadd fast float %1921, 1.000000e+00
  %1925 = fmul fast float %1922, %1870
  %1926 = fmul fast float %1923, %1871
  %1927 = fmul fast float %1924, %1872
  br label %1958

; <label>:1928                                    ; preds = %1913
  %1929 = icmp eq i32 %1878, 2
  br i1 %1929, label %1930, label %1958

; <label>:1930                                    ; preds = %1928
  %1931 = call float @dx.op.unary.f32(i32 24, float %1611)  ; Sqrt(value)
  %1932 = call float @dx.op.unary.f32(i32 24, float %1612)  ; Sqrt(value)
  %1933 = call float @dx.op.unary.f32(i32 24, float %1613)  ; Sqrt(value)
  %1934 = fadd fast float %1931, -5.000000e-01
  %1935 = fadd fast float %1932, -5.000000e-01
  %1936 = fadd fast float %1933, -5.000000e-01
  %1937 = fmul fast float %1934, %1883
  %1938 = fmul fast float %1935, %1883
  %1939 = fmul fast float %1936, %1883
  %1940 = fadd fast float %1937, 5.000000e-01
  %1941 = fadd fast float %1938, 5.000000e-01
  %1942 = fadd fast float %1939, 5.000000e-01
  %1943 = fmul fast float %1940, 2.000000e+00
  %1944 = fsub fast float 1.000000e+00, %1943
  %1945 = fmul fast float %1944, %1870
  %1946 = fadd fast float %1945, %1943
  %1947 = fmul fast float %1946, %1870
  %1948 = fmul fast float %1941, 2.000000e+00
  %1949 = fsub fast float 1.000000e+00, %1948
  %1950 = fmul fast float %1949, %1871
  %1951 = fadd fast float %1950, %1948
  %1952 = fmul fast float %1951, %1871
  %1953 = fmul fast float %1942, 2.000000e+00
  %1954 = fsub fast float 1.000000e+00, %1953
  %1955 = fmul fast float %1954, %1872
  %1956 = fadd fast float %1955, %1953
  %1957 = fmul fast float %1956, %1872
  br label %1958

; <label>:1958                                    ; preds = %1930, %1928, %1915, %1885, %1869
  %1959 = phi float [ %1870, %1869 ], [ %1947, %1930 ], [ %1870, %1928 ], [ %1925, %1915 ], [ %1895, %1885 ]
  %1960 = phi float [ %1871, %1869 ], [ %1952, %1930 ], [ %1871, %1928 ], [ %1926, %1915 ], [ %1896, %1885 ]
  %1961 = phi float [ %1872, %1869 ], [ %1957, %1930 ], [ %1872, %1928 ], [ %1927, %1915 ], [ %1897, %1885 ]
  %1962 = phi float [ %1873, %1869 ], [ %1873, %1930 ], [ %1873, %1928 ], [ %1873, %1915 ], [ %1907, %1885 ]
  %1963 = phi float [ %1874, %1869 ], [ %1874, %1930 ], [ %1874, %1928 ], [ %1874, %1915 ], [ %1908, %1885 ]
  %1964 = phi float [ %1875, %1869 ], [ %1875, %1930 ], [ %1875, %1928 ], [ %1875, %1915 ], [ %1909, %1885 ]
  %1965 = phi float [ %1203, %1869 ], [ %1203, %1930 ], [ %1203, %1928 ], [ %1203, %1915 ], [ %1900, %1885 ]
  %1966 = phi float [ %1208, %1869 ], [ %1208, %1930 ], [ %1208, %1928 ], [ %1208, %1915 ], [ %1912, %1885 ]
  %1967 = and i32 %1877, 12
  %1968 = icmp eq i32 %1967, 12
  br i1 %1968, label %2075, label %1969

; <label>:1969                                    ; preds = %1958
  %1970 = and i32 %1877, 2097184
  %1971 = icmp eq i32 %1970, 2097184
  %1972 = select i1 %1971, float %1391, float 0.000000e+00
  %1973 = and i32 %1877, 4194336
  %1974 = icmp eq i32 %1973, 4194336
  %1975 = select i1 %1974, float %1391, float 0.000000e+00
  %1976 = and i32 %1877, 8388640
  %1977 = icmp eq i32 %1976, 8388640
  %1978 = select i1 %1977, float %1391, float 0.000000e+00
  %1979 = and i32 %1877, 1024
  %1980 = icmp ne i32 %1979, 0
  %1981 = select i1 %1980, float %1391, float 0.000000e+00
  %1982 = and i32 %1877, 2048
  %1983 = icmp ne i32 %1982, 0
  %1984 = select i1 %1983, float %1391, float 0.000000e+00
  %1985 = icmp eq i32 %1967, 0
  br i1 %1985, label %1986, label %2011

; <label>:1986                                    ; preds = %1969
  %1987 = fsub fast float %1692, %1192
  %1988 = fsub fast float %1693, %1193
  %1989 = fmul fast float %1972, %1987
  %1990 = fmul fast float %1972, %1988
  %1991 = fadd fast float %1989, %1192
  %1992 = fadd fast float %1990, %1193
  %1993 = fsub fast float %1694, %1206
  %1994 = fmul fast float %1975, %1993
  %1995 = fadd fast float %1994, %1206
  %1996 = fsub fast float %1691, %1205
  %1997 = fmul fast float %1978, %1996
  %1998 = fadd fast float %1997, %1205
  %1999 = fsub fast float %1797, %1194
  %2000 = fsub fast float %1798, %1195
  %2001 = fsub fast float %1799, %1196
  %2002 = fmul fast float %1981, %1999
  %2003 = fmul fast float %1981, %2000
  %2004 = fmul fast float %1981, %2001
  %2005 = fadd fast float %2002, %1194
  %2006 = fadd fast float %2003, %1195
  %2007 = fadd fast float %2004, %1196
  %2008 = fsub fast float %1820, %1207
  %2009 = fmul fast float %1984, %2008
  %2010 = fadd fast float %2009, %1207
  br label %2075

; <label>:2011                                    ; preds = %1969
  %2012 = icmp eq i32 %1967, 4
  br i1 %2012, label %2013, label %2053

; <label>:2013                                    ; preds = %2011
  %2014 = fmul fast float %1972, %1692
  %2015 = fmul fast float %1972, %1693
  %2016 = fadd fast float %2014, %1192
  %2017 = fadd fast float %2015, %1193
  %2018 = call float @dx.op.binary.f32(i32 36, float %1206, float %1694)  ; FMin(a,b)
  %2019 = fsub fast float %2018, %1206
  %2020 = fmul fast float %2019, %1975
  %2021 = fadd fast float %2020, %1206
  %2022 = fadd fast float %1691, %1205
  %2023 = fmul fast float %2022, 0x3FF337FAE0000000
  %2024 = fmul fast float %1205, %1205
  %2025 = fmul fast float %1691, %1691
  %2026 = fadd fast float %2025, %2024
  %2027 = fmul fast float %2026, 0x3FE5152B00000000
  %2028 = fmul fast float %1205, 0xBFCC1F85E0000000
  %2029 = fmul fast float %2028, %1691
  %2030 = fadd fast float %2029, 0xBFE1363700000000
  %2031 = fadd fast float %2030, %2023
  %2032 = fsub fast float %2031, %2027
  %2033 = fmul fast float %2022, 0x3FBA6F0D00000000
  %2034 = fmul fast float %2026, 0x3FD0432880000000
  %2035 = fmul fast float %1205, 0xBFEF110800000000
  %2036 = fmul fast float %2035, %1691
  %2037 = fadd fast float %2036, 1.000000e+00
  %2038 = fsub fast float %2037, %2033
  %2039 = fadd fast float %2038, %2034
  %2040 = fdiv fast float %2032, %2039
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2042 = fsub fast float %2041, %1205
  %2043 = fmul fast float %2042, %1978
  %2044 = fadd fast float %2043, %1205
  %2045 = fmul fast float %1981, %1797
  %2046 = fmul fast float %1981, %1798
  %2047 = fmul fast float %1981, %1799
  %2048 = fadd fast float %2045, %1194
  %2049 = fadd fast float %2046, %1195
  %2050 = fadd fast float %2047, %1196
  %2051 = fmul fast float %1984, %1820
  %2052 = fadd fast float %2051, %1207
  br label %2075

; <label>:2053                                    ; preds = %2011
  %2054 = icmp eq i32 %1967, 8
  br i1 %2054, label %2055, label %2075

; <label>:2055                                    ; preds = %2053
  %2056 = fmul fast float %1972, %1692
  %2057 = fmul fast float %1972, %1693
  %2058 = fadd fast float %2056, %1192
  %2059 = fadd fast float %2057, %1193
  %2060 = call float @dx.op.binary.f32(i32 36, float %1206, float %1694)  ; FMin(a,b)
  %2061 = fsub fast float %2060, %1206
  %2062 = fmul fast float %2061, %1975
  %2063 = fadd fast float %2062, %1206
  %2064 = fsub fast float %1691, %1205
  %2065 = fmul fast float %1978, %2064
  %2066 = fadd fast float %2065, %1205
  %2067 = fmul fast float %1981, %1797
  %2068 = fmul fast float %1981, %1798
  %2069 = fmul fast float %1981, %1799
  %2070 = fadd fast float %2067, %1194
  %2071 = fadd fast float %2068, %1195
  %2072 = fadd fast float %2069, %1196
  %2073 = fmul fast float %1984, %1820
  %2074 = fadd fast float %2073, %1207
  br label %2075

; <label>:2075                                    ; preds = %2055, %2053, %2013, %1986, %1958, %1390, %1209, %1191
  %2076 = phi float [ %1192, %1958 ], [ %1192, %1390 ], [ %1192, %1191 ], [ %2058, %2055 ], [ %1192, %2053 ], [ %2016, %2013 ], [ %1991, %1986 ], [ %1192, %1209 ]
  %2077 = phi float [ %1193, %1958 ], [ %1193, %1390 ], [ %1193, %1191 ], [ %2059, %2055 ], [ %1193, %2053 ], [ %2017, %2013 ], [ %1992, %1986 ], [ %1193, %1209 ]
  %2078 = phi float [ %1194, %1958 ], [ %1194, %1390 ], [ %1194, %1191 ], [ %2070, %2055 ], [ %1194, %2053 ], [ %2048, %2013 ], [ %2005, %1986 ], [ %1194, %1209 ]
  %2079 = phi float [ %1195, %1958 ], [ %1195, %1390 ], [ %1195, %1191 ], [ %2071, %2055 ], [ %1195, %2053 ], [ %2049, %2013 ], [ %2006, %1986 ], [ %1195, %1209 ]
  %2080 = phi float [ %1196, %1958 ], [ %1196, %1390 ], [ %1196, %1191 ], [ %2072, %2055 ], [ %1196, %2053 ], [ %2050, %2013 ], [ %2007, %1986 ], [ %1196, %1209 ]
  %2081 = phi float [ %1959, %1958 ], [ %1197, %1390 ], [ %1197, %1191 ], [ %1959, %2055 ], [ %1959, %2053 ], [ %1959, %2013 ], [ %1959, %1986 ], [ %1197, %1209 ]
  %2082 = phi float [ %1960, %1958 ], [ %1198, %1390 ], [ %1198, %1191 ], [ %1960, %2055 ], [ %1960, %2053 ], [ %1960, %2013 ], [ %1960, %1986 ], [ %1198, %1209 ]
  %2083 = phi float [ %1961, %1958 ], [ %1199, %1390 ], [ %1199, %1191 ], [ %1961, %2055 ], [ %1961, %2053 ], [ %1961, %2013 ], [ %1961, %1986 ], [ %1199, %1209 ]
  %2084 = phi float [ %1962, %1958 ], [ %1200, %1390 ], [ %1200, %1191 ], [ %1962, %2055 ], [ %1962, %2053 ], [ %1962, %2013 ], [ %1962, %1986 ], [ %1200, %1209 ]
  %2085 = phi float [ %1963, %1958 ], [ %1201, %1390 ], [ %1201, %1191 ], [ %1963, %2055 ], [ %1963, %2053 ], [ %1963, %2013 ], [ %1963, %1986 ], [ %1201, %1209 ]
  %2086 = phi float [ %1964, %1958 ], [ %1202, %1390 ], [ %1202, %1191 ], [ %1964, %2055 ], [ %1964, %2053 ], [ %1964, %2013 ], [ %1964, %1986 ], [ %1202, %1209 ]
  %2087 = phi float [ %1965, %1958 ], [ %1203, %1390 ], [ %1203, %1191 ], [ %1965, %2055 ], [ %1965, %2053 ], [ %1965, %2013 ], [ %1965, %1986 ], [ %1203, %1209 ]
  %2088 = phi float [ %1205, %1958 ], [ %1205, %1390 ], [ %1205, %1191 ], [ %2066, %2055 ], [ %1205, %2053 ], [ %2044, %2013 ], [ %1998, %1986 ], [ %1205, %1209 ]
  %2089 = phi float [ %1206, %1958 ], [ %1206, %1390 ], [ %1206, %1191 ], [ %2063, %2055 ], [ %1206, %2053 ], [ %2021, %2013 ], [ %1995, %1986 ], [ %1206, %1209 ]
  %2090 = phi float [ %1207, %1958 ], [ %1207, %1390 ], [ %1207, %1191 ], [ %2074, %2055 ], [ %1207, %2053 ], [ %2052, %2013 ], [ %2010, %1986 ], [ %1207, %1209 ]
  %2091 = phi float [ %1966, %1958 ], [ %1208, %1390 ], [ %1208, %1191 ], [ %1966, %2055 ], [ %1966, %2053 ], [ %1966, %2013 ], [ %1966, %1986 ], [ %1208, %1209 ]
  br i1 %445, label %2958, label %2092

; <label>:2092                                    ; preds = %2075
  %2093 = icmp ult i32 %501, 3
  %2094 = add i32 %50, 56
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = add i32 %50, 60
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = or i32 %2099, %2096
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %2958, label %2102

; <label>:2102                                    ; preds = %2092
  %2103 = and i32 %2096, 262144
  %2104 = icmp ne i32 %2103, 0
  %2105 = select i1 %2104, float %55, float 1.000000e+00
  %2106 = select i1 %2104, float %56, float 0.000000e+00
  %2107 = select i1 %2104, float %57, float 0.000000e+00
  %2108 = select i1 %2104, float %58, float 1.000000e+00
  %2109 = select i1 %2104, float %59, float %82
  %2110 = select i1 %2104, float %60, float %83
  %2111 = add i32 %50, 316
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = lshr i32 %2113, 16
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = fmul fast float %2115, 0x3F50624DE0000000
  %2117 = add i32 %50, 120
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = lshr i32 %2119, 16
  %2121 = and i32 %2120, 255
  %2122 = lshr i32 %2119, 24
  %2123 = add i32 %50, 324
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = and i32 %2125, 65535
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = lshr i32 %2125, 16
  %2129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2128)  ; LegacyF16ToF32(value)
  %2130 = add i32 %50, 64
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = lshr i32 %2132, 22
  %2134 = shl nuw nsw i32 %2133, 5
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = shl i32 %2132, 4
  %2137 = and i32 %2136, 32752
  %2138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2137)  ; LegacyF16ToF32(value)
  %2139 = lshr i32 %2132, 7
  %2140 = and i32 %2139, 32752
  %2141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2140)  ; LegacyF16ToF32(value)
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 3
  %2144 = fmul fast float %2143, 1.000000e+03
  %2145 = fmul fast float %395, %2144
  %2146 = call float @dx.op.unary.f32(i32 22, float %2145)  ; Frc(value)
  %2147 = fadd fast float %2146, %385
  %2148 = fmul fast float %396, %2144
  %2149 = call float @dx.op.unary.f32(i32 22, float %2148)  ; Frc(value)
  %2150 = fadd fast float %2149, %387
  %2151 = fmul fast float %2116, %2144
  %2152 = call float @dx.op.unary.f32(i32 22, float %2151)  ; Frc(value)
  %2153 = fmul fast float %2152, 0x401921FB60000000
  %2154 = fadd fast float %2153, %2135
  %2155 = call float @dx.op.unary.f32(i32 13, float %2154)  ; Sin(value)
  %2156 = call float @dx.op.unary.f32(i32 12, float %2154)  ; Cos(value)
  %2157 = fsub fast float -0.000000e+00, %2155
  %2158 = fadd fast float %2109, -5.000000e-01
  %2159 = fadd fast float %2110, -5.000000e-01
  %2160 = fmul fast float %2127, %2158
  %2161 = fmul fast float %2129, %2159
  %2162 = fadd fast float %2160, 5.000000e-01
  %2163 = fadd fast float %2161, 5.000000e-01
  %2164 = fmul fast float %2138, %2162
  %2165 = fmul fast float %2141, %2163
  %2166 = fmul fast float %2156, %2164
  %2167 = call float @dx.op.tertiary.f32(i32 46, float %2157, float %2165, float %2166)  ; FMad(a,b,c)
  %2168 = fmul fast float %2155, %2164
  %2169 = call float @dx.op.tertiary.f32(i32 46, float %2156, float %2165, float %2168)  ; FMad(a,b,c)
  %2170 = fadd fast float %2147, %2167
  %2171 = fadd fast float %2150, %2169
  %2172 = icmp ugt i32 %2121, 1
  %2173 = icmp ugt i32 %2119, 33554431
  %2174 = or i1 %2173, %2172
  br i1 %2174, label %2175, label %2200

; <label>:2175                                    ; preds = %2102
  %2176 = add i32 %50, 260
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = lshr i32 %2178, 16
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = fmul fast float %2143, %2180
  %2182 = call float @dx.op.unary.f32(i32 22, float %2181)  ; Frc(value)
  %2183 = mul nuw nsw i32 %2121, %2122
  %2184 = uitofp i32 %2183 to float
  %2185 = fmul fast float %2182, %2184
  %2186 = call float @dx.op.unary.f32(i32 27, float %2185)  ; Round_ni(value)
  %2187 = fptoui float %2186 to i32
  %2188 = urem i32 %2187, %2121
  %2189 = udiv i32 %2187, %2122
  %2190 = call float @dx.op.unary.f32(i32 22, float %2170)  ; Frc(value)
  %2191 = call float @dx.op.unary.f32(i32 22, float %2171)  ; Frc(value)
  %2192 = uitofp i32 %2188 to float
  %2193 = uitofp i32 %2189 to float
  %2194 = fadd fast float %2190, %2192
  %2195 = fadd fast float %2191, %2193
  %2196 = uitofp i32 %2121 to float
  %2197 = uitofp i32 %2122 to float
  %2198 = fdiv fast float %2194, %2196
  %2199 = fdiv fast float %2195, %2197
  br label %2200

; <label>:2200                                    ; preds = %2175, %2102
  %2201 = phi float [ %2198, %2175 ], [ %2170, %2102 ]
  %2202 = phi float [ %2199, %2175 ], [ %2171, %2102 ]
  %2203 = and i32 %2096, 256
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2251, label %2205

; <label>:2205                                    ; preds = %2200
  %2206 = add i32 %50, 480
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = add i32 %2208, 0
  %2210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2210, %dx.types.Handle %97, float %2201, float %2202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2212 = extractvalue %dx.types.ResRet.f32 %2211, 0
  %2213 = add i32 %50, 132
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = shl i32 %2215, 4
  %2217 = and i32 %2216, 32752
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = lshr i32 %2215, 7
  %2220 = and i32 %2219, 32752
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = fsub fast float 1.000000e+00, %497
  %2223 = call float @dx.op.binary.f32(i32 35, float %2222, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2224 = bitcast float %497 to i32
  %2225 = sitofp i32 %2224 to float
  %2226 = fadd fast float %2225, 0xC1CFBF8940000000
  %2227 = fmul fast float %2221, %2226
  %2228 = fadd fast float %2227, 0x41CFBF8940000000
  %2229 = fptosi float %2228 to i32
  %2230 = bitcast i32 %2229 to float
  %2231 = bitcast float %2223 to i32
  %2232 = sitofp i32 %2231 to float
  %2233 = fadd fast float %2232, 0xC1CFBF8940000000
  %2234 = fmul fast float %2233, %2221
  %2235 = fadd fast float %2234, 0x41CFBF8940000000
  %2236 = fptosi float %2235 to i32
  %2237 = bitcast i32 %2236 to float
  %2238 = fmul fast float %2230, %2218
  %2239 = fmul fast float %2237, %2218
  %2240 = fsub fast float %2223, %2238
  %2241 = fadd fast float %2239, %2223
  %2242 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2243 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2244 = fsub fast float %2212, %2242
  %2245 = fsub fast float %2243, %2242
  %2246 = bitcast float %2245 to i32
  %2247 = sub nsw i32 2129859010, %2246
  %2248 = bitcast i32 %2247 to float
  %2249 = fmul fast float %2248, %2244
  %2250 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  br label %2251

; <label>:2251                                    ; preds = %2205, %2200
  %2252 = phi float [ %2250, %2205 ], [ %497, %2200 ]
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 128
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2273, label %2257

; <label>:2257                                    ; preds = %2251
  %2258 = add i32 %50, 464
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %97, float %2201, float %2202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = and i32 %2266, 524288
  %2268 = icmp ne i32 %2267, 0
  %2269 = fcmp fast ogt float %2264, 0x3FE0101020000000
  %2270 = select i1 %2269, float 1.000000e+00, float 0.000000e+00
  %2271 = select i1 %2268, float %2270, float %2264
  %2272 = fmul fast float %2271, %2252
  br label %2273

; <label>:2273                                    ; preds = %2257, %2251
  %2274 = phi float [ %2272, %2257 ], [ %2252, %2251 ]
  %2275 = fcmp fast ult float %2274, 0x3F70101020000000
  br i1 %2275, label %2958, label %2276

; <label>:2276                                    ; preds = %2273
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 16
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2479, label %2281

; <label>:2281                                    ; preds = %2276
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = add i32 %50, 416
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = add i32 %2286, 0
  %2288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2288, %dx.types.Handle %96, float %2201, float %2202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2290 = extractvalue %dx.types.ResRet.f32 %2289, 0
  %2291 = extractvalue %dx.types.ResRet.f32 %2289, 1
  %2292 = extractvalue %dx.types.ResRet.f32 %2289, 2
  %2293 = extractvalue %dx.types.ResRet.f32 %2289, 3
  %2294 = and i32 %2283, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = lshr i32 %2283, 8
  %2297 = and i32 %2296, 255
  %2298 = uitofp i32 %2297 to float
  %2299 = fmul fast float %2293, %2295
  %2300 = fadd fast float %2299, %2298
  %2301 = fmul fast float %2300, 0x3F70101000000000
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 512
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2314, label %2306

; <label>:2306                                    ; preds = %2281
  %2307 = add i32 %50, 500
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = add i32 %2309, 0
  %2311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2311, %dx.types.Handle %97, float %2201, float %2202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  br label %2314

; <label>:2314                                    ; preds = %2306, %2281
  %2315 = phi float [ %2313, %2306 ], [ 1.000000e+00, %2281 ]
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 33554432
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2426, label %2320

; <label>:2320                                    ; preds = %2314
  %2321 = add i32 %50, 256
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 65535
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = lshr i32 %2323, 16
  %2327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2326)  ; LegacyF16ToF32(value)
  %2328 = add i32 %50, 260
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 65535
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = lshr i32 %2334, 24
  %2336 = uitofp i32 %2335 to float
  %2337 = fmul fast float %2336, 0x3F70101020000000
  %2338 = and i32 %2334, 255
  %2339 = uitofp i32 %2338 to float
  %2340 = fmul fast float %2339, 0x3F70101020000000
  %2341 = lshr i32 %2334, 8
  %2342 = and i32 %2341, 255
  %2343 = uitofp i32 %2342 to float
  %2344 = fmul fast float %2343, 0x3F70101020000000
  %2345 = lshr i32 %2334, 16
  %2346 = and i32 %2345, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = add i32 %50, 252
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = lshr i32 %2351, 24
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2353, 0x3F70101020000000
  %2355 = and i32 %2351, 255
  %2356 = uitofp i32 %2355 to float
  %2357 = fmul fast float %2356, 0x3F70101020000000
  %2358 = lshr i32 %2351, 8
  %2359 = and i32 %2358, 255
  %2360 = uitofp i32 %2359 to float
  %2361 = fmul fast float %2360, 0x3F70101020000000
  %2362 = lshr i32 %2351, 16
  %2363 = and i32 %2362, 255
  %2364 = uitofp i32 %2363 to float
  %2365 = fmul fast float %2364, 0x3F70101020000000
  %2366 = bitcast float %2290 to i32
  %2367 = ashr i32 %2366, 1
  %2368 = sub nsw i32 1597463174, %2367
  %2369 = bitcast i32 %2368 to float
  %2370 = fmul fast float %2290, 5.000000e-01
  %2371 = fmul fast float %2369, %2369
  %2372 = fmul fast float %2371, %2370
  %2373 = fsub fast float 1.500000e+00, %2372
  %2374 = fmul fast float %2369, %2290
  %2375 = fmul fast float %2374, %2373
  %2376 = bitcast float %2291 to i32
  %2377 = ashr i32 %2376, 1
  %2378 = sub nsw i32 1597463174, %2377
  %2379 = bitcast i32 %2378 to float
  %2380 = fmul fast float %2291, 5.000000e-01
  %2381 = fmul fast float %2379, %2379
  %2382 = fmul fast float %2381, %2380
  %2383 = fsub fast float 1.500000e+00, %2382
  %2384 = fmul fast float %2379, %2291
  %2385 = fmul fast float %2384, %2383
  %2386 = bitcast float %2292 to i32
  %2387 = ashr i32 %2386, 1
  %2388 = sub nsw i32 1597463174, %2387
  %2389 = bitcast i32 %2388 to float
  %2390 = fmul fast float %2292, 5.000000e-01
  %2391 = fmul fast float %2389, %2389
  %2392 = fmul fast float %2391, %2390
  %2393 = fsub fast float 1.500000e+00, %2392
  %2394 = fmul fast float %2389, %2292
  %2395 = fmul fast float %2394, %2393
  %2396 = fsub fast float %2375, %2357
  %2397 = fsub fast float %2385, %2361
  %2398 = fsub fast float %2395, %2365
  %2399 = fmul fast float %2396, %2325
  %2400 = fmul fast float %2397, %2327
  %2401 = fmul fast float %2398, %2332
  %2402 = fadd fast float %2399, %2340
  %2403 = fadd fast float %2400, %2344
  %2404 = fadd fast float %2401, %2348
  %2405 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2406 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2407 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2408 = fmul fast float %2405, %2405
  %2409 = fmul fast float %2406, %2406
  %2410 = fmul fast float %2407, %2407
  %2411 = fsub fast float %2408, %2290
  %2412 = fsub fast float %2409, %2291
  %2413 = fsub fast float %2410, %2292
  %2414 = fmul fast float %2411, %2315
  %2415 = fmul fast float %2412, %2315
  %2416 = fmul fast float %2413, %2315
  %2417 = fadd fast float %2414, %2290
  %2418 = fadd fast float %2415, %2291
  %2419 = fadd fast float %2416, %2292
  %2420 = fadd fast float %2337, %2301
  %2421 = fsub fast float %2420, %2354
  %2422 = call float @dx.op.unary.f32(i32 7, float %2421)  ; Saturate(value)
  %2423 = fsub fast float %2422, %2301
  %2424 = fmul fast float %2423, %2315
  %2425 = fadd fast float %2424, %2301
  br label %2479

; <label>:2426                                    ; preds = %2314
  %2427 = and i32 %2317, 134217728
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2463, label %2429

; <label>:2429                                    ; preds = %2426
  %2430 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2431 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2432 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2433 = fadd fast float %2430, -5.000000e-01
  %2434 = fadd fast float %2431, -5.000000e-01
  %2435 = fadd fast float %2432, -5.000000e-01
  %2436 = fmul fast float %2433, %2315
  %2437 = fmul fast float %2434, %2315
  %2438 = fmul fast float %2435, %2315
  %2439 = fadd fast float %2436, 5.000000e-01
  %2440 = fadd fast float %2437, 5.000000e-01
  %2441 = fadd fast float %2438, 5.000000e-01
  %2442 = call float @dx.op.unary.f32(i32 24, float %2290)  ; Sqrt(value)
  %2443 = call float @dx.op.unary.f32(i32 24, float %2291)  ; Sqrt(value)
  %2444 = call float @dx.op.unary.f32(i32 24, float %2292)  ; Sqrt(value)
  %2445 = fmul fast float %2439, 2.000000e+00
  %2446 = fsub fast float 1.000000e+00, %2445
  %2447 = fmul fast float %2446, %2442
  %2448 = fadd fast float %2447, %2445
  %2449 = fmul fast float %2448, %2442
  %2450 = fmul fast float %2440, 2.000000e+00
  %2451 = fsub fast float 1.000000e+00, %2450
  %2452 = fmul fast float %2451, %2443
  %2453 = fadd fast float %2452, %2450
  %2454 = fmul fast float %2453, %2443
  %2455 = fmul fast float %2441, 2.000000e+00
  %2456 = fsub fast float 1.000000e+00, %2455
  %2457 = fmul fast float %2456, %2444
  %2458 = fadd fast float %2457, %2455
  %2459 = fmul fast float %2458, %2444
  %2460 = fmul fast float %2449, %2449
  %2461 = fmul fast float %2454, %2454
  %2462 = fmul fast float %2459, %2459
  br label %2479

; <label>:2463                                    ; preds = %2426
  %2464 = fmul fast float %372, %372
  %2465 = fmul fast float %376, %376
  %2466 = fmul fast float %380, %380
  %2467 = fadd fast float %2464, -1.000000e+00
  %2468 = fadd fast float %2465, -1.000000e+00
  %2469 = fadd fast float %2466, -1.000000e+00
  %2470 = fmul fast float %2315, %2467
  %2471 = fmul fast float %2315, %2468
  %2472 = fmul fast float %2315, %2469
  %2473 = fadd fast float %2470, 1.000000e+00
  %2474 = fadd fast float %2471, 1.000000e+00
  %2475 = fadd fast float %2472, 1.000000e+00
  %2476 = fmul fast float %2473, %2290
  %2477 = fmul fast float %2474, %2291
  %2478 = fmul fast float %2475, %2292
  br label %2479

; <label>:2479                                    ; preds = %2463, %2429, %2320, %2276
  %2480 = phi float [ %2425, %2320 ], [ %2301, %2429 ], [ %2301, %2463 ], [ 0x3FA23C0BE0000000, %2276 ]
  %2481 = phi float [ %2417, %2320 ], [ %2460, %2429 ], [ %2476, %2463 ], [ 1.000000e+00, %2276 ]
  %2482 = phi float [ %2418, %2320 ], [ %2461, %2429 ], [ %2477, %2463 ], [ 1.000000e+00, %2276 ]
  %2483 = phi float [ %2419, %2320 ], [ %2462, %2429 ], [ %2478, %2463 ], [ 1.000000e+00, %2276 ]
  %2484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.i32 %2484, 1
  %2486 = and i32 %2485, 1
  %2487 = icmp ne i32 %2486, 0
  %2488 = add i32 %50, 356
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = and i32 %2490, 32
  %2492 = icmp ne i32 %2491, 0
  %2493 = and i1 %2487, %2492
  %2494 = select i1 %2493, float 1.000000e+00, float %2481
  %2495 = select i1 %2493, float 0x3FD3333340000000, float %2482
  %2496 = select i1 %2493, float 0x3FD3333340000000, float %2483
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 32
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2573, label %2501

; <label>:2501                                    ; preds = %2479
  %2502 = add i32 %50, 124
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = add i32 %50, 432
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2505, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = add i32 %2507, 0
  %2509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2509, %dx.types.Handle %96, float %2201, float %2202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2511 = extractvalue %dx.types.ResRet.f32 %2510, 0
  %2512 = extractvalue %dx.types.ResRet.f32 %2510, 1
  %2513 = extractvalue %dx.types.ResRet.f32 %2510, 2
  %2514 = extractvalue %dx.types.ResRet.f32 %2510, 3
  %2515 = and i32 %2504, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = lshr i32 %2504, 8
  %2518 = and i32 %2517, 255
  %2519 = uitofp i32 %2518 to float
  %2520 = lshr i32 %2504, 16
  %2521 = and i32 %2520, 255
  %2522 = uitofp i32 %2521 to float
  %2523 = fmul fast float %2522, 0x3F70101000000000
  %2524 = fmul fast float %2511, %2516
  %2525 = fadd fast float %2524, %2519
  %2526 = fmul fast float %2525, 0x3F70101000000000
  %2527 = fadd fast float %2512, -5.000000e-01
  %2528 = fadd fast float %2514, -5.000000e-01
  %2529 = fmul fast float %2527, %2523
  %2530 = fmul fast float %2528, %2523
  %2531 = fadd fast float %2529, 5.000000e-01
  %2532 = fadd fast float %2530, 5.000000e-01
  %2533 = fmul fast float %2531, 2.000000e+00
  %2534 = fadd fast float %2533, -1.000000e+00
  %2535 = fmul fast float %2532, 2.000000e+00
  %2536 = fadd fast float %2535, -1.000000e+00
  %2537 = fadd fast float %2534, %2536
  %2538 = fmul fast float %2537, 5.000000e-01
  %2539 = fsub fast float %2534, %2536
  %2540 = fmul fast float %2539, 5.000000e-01
  %2541 = call float @dx.op.unary.f32(i32 6, float %2538)  ; FAbs(value)
  %2542 = fsub fast float 1.000000e+00, %2541
  %2543 = call float @dx.op.unary.f32(i32 6, float %2540)  ; FAbs(value)
  %2544 = fsub fast float %2542, %2543
  %2545 = call float @dx.op.dot3.f32(i32 55, float %2538, float %2540, float %2544, float %2538, float %2540, float %2544)  ; Dot3(ax,ay,az,bx,by,bz)
  %2546 = call float @dx.op.unary.f32(i32 25, float %2545)  ; Rsqrt(value)
  %2547 = fmul fast float %2538, %2546
  %2548 = fmul fast float %2540, %2546
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = and i32 %2550, 67108864
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2569, label %2553

; <label>:2553                                    ; preds = %2501
  %2554 = add i32 %50, 312
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2556, 65535
  %2558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2557)  ; LegacyF16ToF32(value)
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = and i32 %2560, 65535
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = lshr i32 %2556, 16
  %2564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2563)  ; LegacyF16ToF32(value)
  %2565 = fsub fast float %2526, %2564
  %2566 = fmul fast float %2565, %2558
  %2567 = fadd fast float %2566, %2562
  %2568 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  br label %2569

; <label>:2569                                    ; preds = %2553, %2501
  %2570 = phi float [ %2568, %2553 ], [ %2526, %2501 ]
  %2571 = call float @dx.op.dot2.f32(i32 54, float %2547, float %2548, float %2105, float %2106)  ; Dot2(ax,ay,bx,by)
  %2572 = call float @dx.op.dot2.f32(i32 54, float %2547, float %2548, float %2107, float %2108)  ; Dot2(ax,ay,bx,by)
  br label %2573

; <label>:2573                                    ; preds = %2569, %2479
  %2574 = phi float [ %2570, %2569 ], [ 0x3FD6666660000000, %2479 ]
  %2575 = phi float [ %2571, %2569 ], [ 0.000000e+00, %2479 ]
  %2576 = phi float [ %2572, %2569 ], [ 0.000000e+00, %2479 ]
  %2577 = phi float [ %2513, %2569 ], [ 1.000000e+00, %2479 ]
  %2578 = add i32 %50, 192
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = lshr i32 %2580, 22
  %2582 = shl nuw nsw i32 %2581, 5
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 64
  %2587 = icmp eq i32 %2586, 0
  br i1 %2587, label %2621, label %2588

; <label>:2588                                    ; preds = %2573
  %2589 = add i32 %50, 448
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2589, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = add i32 %2591, 0
  %2593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 131072
  %2597 = icmp eq i32 %2596, 0
  %2598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2593, %dx.types.Handle %96, float %2201, float %2202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2599 = extractvalue %dx.types.ResRet.f32 %2598, 0
  %2600 = extractvalue %dx.types.ResRet.f32 %2598, 1
  %2601 = extractvalue %dx.types.ResRet.f32 %2598, 2
  %2602 = fmul fast float %2599, %360
  %2603 = fmul fast float %2600, %363
  %2604 = fmul fast float %2601, %366
  br i1 %2597, label %2611, label %2605

; <label>:2605                                    ; preds = %2588
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2608 = fmul fast float %2607, %2602
  %2609 = fmul fast float %2607, %2603
  %2610 = fmul fast float %2607, %2604
  br label %2611

; <label>:2611                                    ; preds = %2605, %2588
  %2612 = phi float [ %2608, %2605 ], [ %2602, %2588 ]
  %2613 = phi float [ %2609, %2605 ], [ %2603, %2588 ]
  %2614 = phi float [ %2610, %2605 ], [ %2604, %2588 ]
  %2615 = fmul fast float %2612, %2583
  %2616 = select i1 %259, float %2615, float %2612
  %2617 = call float @dx.op.dot3.f32(i32 55, float %2616, float %2613, float %2614, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2618 = select i1 %259, float 0.000000e+00, float %2612
  %2619 = select i1 %259, float %2617, float %2613
  %2620 = select i1 %259, float 0.000000e+00, float %2614
  br label %2621

; <label>:2621                                    ; preds = %2611, %2573
  %2622 = phi float [ %2618, %2611 ], [ 0.000000e+00, %2573 ]
  %2623 = phi float [ %2619, %2611 ], [ 0.000000e+00, %2573 ]
  %2624 = phi float [ %2620, %2611 ], [ 0.000000e+00, %2573 ]
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 1024
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2659, label %2629

; <label>:2629                                    ; preds = %2621
  %2630 = add i32 %50, 184
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 255
  %2634 = uitofp i32 %2633 to float
  %2635 = fmul fast float %2634, 0x3F70101020000000
  %2636 = lshr i32 %2632, 8
  %2637 = and i32 %2636, 255
  %2638 = uitofp i32 %2637 to float
  %2639 = fmul fast float %2638, 0x3F70101020000000
  %2640 = lshr i32 %2632, 16
  %2641 = and i32 %2640, 255
  %2642 = uitofp i32 %2641 to float
  %2643 = fmul fast float %2642, 0x3F70101020000000
  %2644 = fmul fast float %2635, %2635
  %2645 = fmul fast float %2639, %2639
  %2646 = fmul fast float %2643, %2643
  %2647 = add i32 %50, 516
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = add i32 %2649, 0
  %2651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2651, %dx.types.Handle %97, float %2201, float %2202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2653 = extractvalue %dx.types.ResRet.f32 %2652, 0
  %2654 = extractvalue %dx.types.ResRet.f32 %2652, 1
  %2655 = extractvalue %dx.types.ResRet.f32 %2652, 2
  %2656 = fmul fast float %2644, %2653
  %2657 = fmul fast float %2645, %2654
  %2658 = fmul fast float %2646, %2655
  br label %2659

; <label>:2659                                    ; preds = %2629, %2621
  %2660 = phi float [ %2656, %2629 ], [ 0.000000e+00, %2621 ]
  %2661 = phi float [ %2657, %2629 ], [ 0.000000e+00, %2621 ]
  %2662 = phi float [ %2658, %2629 ], [ 0.000000e+00, %2621 ]
  %2663 = fcmp fast ogt float %2660, 0.000000e+00
  %2664 = fcmp fast ogt float %2661, 0.000000e+00
  %2665 = fcmp fast ogt float %2662, 0.000000e+00
  %2666 = call float @dx.op.unary.f32(i32 23, float %2660)  ; Log(value)
  %2667 = call float @dx.op.unary.f32(i32 23, float %2661)  ; Log(value)
  %2668 = call float @dx.op.unary.f32(i32 23, float %2662)  ; Log(value)
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = lshr i32 %2670, 7
  %2672 = and i32 %2671, 32752
  %2673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2672)  ; LegacyF16ToF32(value)
  %2674 = fmul fast float %2666, 0xBFE62E4300000000
  %2675 = fmul fast float %2674, %2673
  %2676 = fmul fast float %2667, 0xBFE62E4300000000
  %2677 = fmul fast float %2676, %2673
  %2678 = fmul fast float %2668, 0xBFE62E4300000000
  %2679 = fmul fast float %2678, %2673
  %2680 = select i1 %2663, float %2675, float 1.270000e+02
  %2681 = select i1 %2664, float %2677, float 1.270000e+02
  %2682 = select i1 %2665, float %2679, float 1.270000e+02
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = and i32 %2684, 2048
  %2686 = icmp eq i32 %2685, 0
  br i1 %2686, label %2702, label %2687

; <label>:2687                                    ; preds = %2659
  %2688 = add i32 %50, 532
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2688, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = add i32 %2690, 0
  %2692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2692, %dx.types.Handle %97, float %2201, float %2202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2694 = extractvalue %dx.types.ResRet.f32 %2693, 3
  %2695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.i32 %2695, 0
  %2697 = shl i32 %2696, 4
  %2698 = and i32 %2697, 32752
  %2699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2698)  ; LegacyF16ToF32(value)
  %2700 = fmul fast float %2699, %2694
  %2701 = call float @dx.op.binary.f32(i32 35, float %2700, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2702

; <label>:2702                                    ; preds = %2687, %2659
  %2703 = phi float [ %2701, %2687 ], [ 0x3F70101020000000, %2659 ]
  %2704 = add i32 %50, 128
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 255
  %2708 = uitofp i32 %2707 to float
  %2709 = lshr i32 %2706, 8
  %2710 = and i32 %2709, 255
  %2711 = uitofp i32 %2710 to float
  %2712 = call float @dx.op.dot3.f32(i32 55, float %2494, float %2495, float %2496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2713 = fmul fast float %2711, %2712
  %2714 = fadd fast float %2713, %2708
  %2715 = fmul fast float %2714, 0x3F70101020000000
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  br i1 %2093, label %2717, label %2752

; <label>:2717                                    ; preds = %2702
  %2718 = fmul fast float %2703, 2.000000e+00
  %2719 = fcmp fast olt float %2680, 1.270000e+02
  %2720 = fcmp fast olt float %2681, 1.270000e+02
  %2721 = fcmp fast olt float %2682, 1.270000e+02
  %2722 = fmul fast float %2680, 0xBFF7154760000000
  %2723 = fmul fast float %2722, %2718
  %2724 = fmul fast float %2681, 0xBFF7154760000000
  %2725 = fmul fast float %2724, %2718
  %2726 = fmul fast float %2682, 0xBFF7154760000000
  %2727 = fmul fast float %2726, %2718
  %2728 = call float @dx.op.unary.f32(i32 21, float %2723)  ; Exp(value)
  %2729 = call float @dx.op.unary.f32(i32 21, float %2725)  ; Exp(value)
  %2730 = call float @dx.op.unary.f32(i32 21, float %2727)  ; Exp(value)
  %2731 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2732 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2733 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2734 = fadd fast float %2731, -1.000000e+00
  %2735 = select i1 %2719, float %2734, float -1.000000e+00
  %2736 = fadd fast float %2732, -1.000000e+00
  %2737 = select i1 %2720, float %2736, float -1.000000e+00
  %2738 = fadd fast float %2733, -1.000000e+00
  %2739 = select i1 %2721, float %2738, float -1.000000e+00
  %2740 = fmul fast float %2735, %2274
  %2741 = fmul fast float %2737, %2274
  %2742 = fmul fast float %2739, %2274
  %2743 = fadd fast float %2740, 1.000000e+00
  %2744 = fadd fast float %2741, 1.000000e+00
  %2745 = fadd fast float %2742, 1.000000e+00
  %2746 = fmul fast float %2743, %2081
  %2747 = fmul fast float %2744, %2082
  %2748 = fmul fast float %2745, %2083
  %2749 = fmul fast float %2743, %2084
  %2750 = fmul fast float %2744, %2085
  %2751 = fmul fast float %2745, %2086
  br label %2752

; <label>:2752                                    ; preds = %2717, %2702
  %2753 = phi float [ %2746, %2717 ], [ %2081, %2702 ]
  %2754 = phi float [ %2747, %2717 ], [ %2082, %2702 ]
  %2755 = phi float [ %2748, %2717 ], [ %2083, %2702 ]
  %2756 = phi float [ %2749, %2717 ], [ %2084, %2702 ]
  %2757 = phi float [ %2750, %2717 ], [ %2085, %2702 ]
  %2758 = phi float [ %2751, %2717 ], [ %2086, %2702 ]
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = and i32 %2760, 3
  %2762 = icmp eq i32 %2761, 3
  br i1 %2762, label %2841, label %2763

; <label>:2763                                    ; preds = %2752
  %2764 = and i32 %2760, 16
  %2765 = icmp ne i32 %2764, 0
  %2766 = select i1 %2765, float %2274, float 0.000000e+00
  %2767 = icmp eq i32 %2761, 0
  br i1 %2767, label %2768, label %2796

; <label>:2768                                    ; preds = %2763
  %2769 = and i32 %2760, 64
  %2770 = icmp ne i32 %2769, 0
  %2771 = select i1 %2770, float %2274, float 0.000000e+00
  %2772 = fsub fast float %2494, %2753
  %2773 = fsub fast float %2495, %2754
  %2774 = fsub fast float %2496, %2755
  %2775 = fmul fast float %2766, %2772
  %2776 = fmul fast float %2766, %2773
  %2777 = fmul fast float %2766, %2774
  %2778 = fadd fast float %2775, %2753
  %2779 = fadd fast float %2776, %2754
  %2780 = fadd fast float %2777, %2755
  %2781 = fsub fast float %2480, %2087
  %2782 = fmul fast float %2766, %2781
  %2783 = fadd fast float %2782, %2087
  %2784 = fsub fast float %2622, %2756
  %2785 = fsub fast float %2623, %2757
  %2786 = fsub fast float %2624, %2758
  %2787 = fmul fast float %2771, %2784
  %2788 = fmul fast float %2771, %2785
  %2789 = fmul fast float %2771, %2786
  %2790 = fadd fast float %2787, %2756
  %2791 = fadd fast float %2788, %2757
  %2792 = fadd fast float %2789, %2758
  %2793 = fsub fast float %2716, %2091
  %2794 = fmul fast float %2766, %2793
  %2795 = fadd fast float %2794, %2091
  br label %2841

; <label>:2796                                    ; preds = %2763
  %2797 = icmp eq i32 %2761, 1
  br i1 %2797, label %2798, label %2811

; <label>:2798                                    ; preds = %2796
  %2799 = fadd fast float %2494, -1.000000e+00
  %2800 = fadd fast float %2495, -1.000000e+00
  %2801 = fadd fast float %2496, -1.000000e+00
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
  %2814 = call float @dx.op.unary.f32(i32 24, float %2494)  ; Sqrt(value)
  %2815 = call float @dx.op.unary.f32(i32 24, float %2495)  ; Sqrt(value)
  %2816 = call float @dx.op.unary.f32(i32 24, float %2496)  ; Sqrt(value)
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
  %2848 = phi float [ %2087, %2752 ], [ %2087, %2813 ], [ %2087, %2811 ], [ %2087, %2798 ], [ %2783, %2768 ]
  %2849 = phi float [ %2091, %2752 ], [ %2091, %2813 ], [ %2091, %2811 ], [ %2091, %2798 ], [ %2795, %2768 ]
  %2850 = and i32 %2760, 12
  %2851 = icmp eq i32 %2850, 12
  br i1 %2851, label %2958, label %2852

; <label>:2852                                    ; preds = %2841
  %2853 = and i32 %2760, 2097184
  %2854 = icmp eq i32 %2853, 2097184
  %2855 = select i1 %2854, float %2274, float 0.000000e+00
  %2856 = and i32 %2760, 4194336
  %2857 = icmp eq i32 %2856, 4194336
  %2858 = select i1 %2857, float %2274, float 0.000000e+00
  %2859 = and i32 %2760, 8388640
  %2860 = icmp eq i32 %2859, 8388640
  %2861 = select i1 %2860, float %2274, float 0.000000e+00
  %2862 = and i32 %2760, 1024
  %2863 = icmp ne i32 %2862, 0
  %2864 = select i1 %2863, float %2274, float 0.000000e+00
  %2865 = and i32 %2760, 2048
  %2866 = icmp ne i32 %2865, 0
  %2867 = select i1 %2866, float %2274, float 0.000000e+00
  %2868 = icmp eq i32 %2850, 0
  br i1 %2868, label %2869, label %2894

; <label>:2869                                    ; preds = %2852
  %2870 = fsub fast float %2575, %2076
  %2871 = fsub fast float %2576, %2077
  %2872 = fmul fast float %2855, %2870
  %2873 = fmul fast float %2855, %2871
  %2874 = fadd fast float %2872, %2076
  %2875 = fadd fast float %2873, %2077
  %2876 = fsub fast float %2577, %2089
  %2877 = fmul fast float %2858, %2876
  %2878 = fadd fast float %2877, %2089
  %2879 = fsub fast float %2574, %2088
  %2880 = fmul fast float %2861, %2879
  %2881 = fadd fast float %2880, %2088
  %2882 = fsub fast float %2680, %2078
  %2883 = fsub fast float %2681, %2079
  %2884 = fsub fast float %2682, %2080
  %2885 = fmul fast float %2864, %2882
  %2886 = fmul fast float %2864, %2883
  %2887 = fmul fast float %2864, %2884
  %2888 = fadd fast float %2885, %2078
  %2889 = fadd fast float %2886, %2079
  %2890 = fadd fast float %2887, %2080
  %2891 = fsub fast float %2703, %2090
  %2892 = fmul fast float %2867, %2891
  %2893 = fadd fast float %2892, %2090
  br label %2958

; <label>:2894                                    ; preds = %2852
  %2895 = icmp eq i32 %2850, 4
  br i1 %2895, label %2896, label %2936

; <label>:2896                                    ; preds = %2894
  %2897 = fmul fast float %2855, %2575
  %2898 = fmul fast float %2855, %2576
  %2899 = fadd fast float %2897, %2076
  %2900 = fadd fast float %2898, %2077
  %2901 = call float @dx.op.binary.f32(i32 36, float %2089, float %2577)  ; FMin(a,b)
  %2902 = fsub fast float %2901, %2089
  %2903 = fmul fast float %2902, %2858
  %2904 = fadd fast float %2903, %2089
  %2905 = fadd fast float %2574, %2088
  %2906 = fmul fast float %2905, 0x3FF337FAE0000000
  %2907 = fmul fast float %2088, %2088
  %2908 = fmul fast float %2574, %2574
  %2909 = fadd fast float %2908, %2907
  %2910 = fmul fast float %2909, 0x3FE5152B00000000
  %2911 = fmul fast float %2088, 0xBFCC1F85E0000000
  %2912 = fmul fast float %2911, %2574
  %2913 = fadd fast float %2912, 0xBFE1363700000000
  %2914 = fadd fast float %2913, %2906
  %2915 = fsub fast float %2914, %2910
  %2916 = fmul fast float %2905, 0x3FBA6F0D00000000
  %2917 = fmul fast float %2909, 0x3FD0432880000000
  %2918 = fmul fast float %2088, 0xBFEF110800000000
  %2919 = fmul fast float %2918, %2574
  %2920 = fadd fast float %2919, 1.000000e+00
  %2921 = fsub fast float %2920, %2916
  %2922 = fadd fast float %2921, %2917
  %2923 = fdiv fast float %2915, %2922
  %2924 = call float @dx.op.unary.f32(i32 7, float %2923)  ; Saturate(value)
  %2925 = fsub fast float %2924, %2088
  %2926 = fmul fast float %2925, %2861
  %2927 = fadd fast float %2926, %2088
  %2928 = fmul fast float %2864, %2680
  %2929 = fmul fast float %2864, %2681
  %2930 = fmul fast float %2864, %2682
  %2931 = fadd fast float %2928, %2078
  %2932 = fadd fast float %2929, %2079
  %2933 = fadd fast float %2930, %2080
  %2934 = fmul fast float %2867, %2703
  %2935 = fadd fast float %2934, %2090
  br label %2958

; <label>:2936                                    ; preds = %2894
  %2937 = icmp eq i32 %2850, 8
  br i1 %2937, label %2938, label %2958

; <label>:2938                                    ; preds = %2936
  %2939 = fmul fast float %2855, %2575
  %2940 = fmul fast float %2855, %2576
  %2941 = fadd fast float %2939, %2076
  %2942 = fadd fast float %2940, %2077
  %2943 = call float @dx.op.binary.f32(i32 36, float %2089, float %2577)  ; FMin(a,b)
  %2944 = fsub fast float %2943, %2089
  %2945 = fmul fast float %2944, %2858
  %2946 = fadd fast float %2945, %2089
  %2947 = fsub fast float %2574, %2088
  %2948 = fmul fast float %2861, %2947
  %2949 = fadd fast float %2948, %2088
  %2950 = fmul fast float %2864, %2680
  %2951 = fmul fast float %2864, %2681
  %2952 = fmul fast float %2864, %2682
  %2953 = fadd fast float %2950, %2078
  %2954 = fadd fast float %2951, %2079
  %2955 = fadd fast float %2952, %2080
  %2956 = fmul fast float %2867, %2703
  %2957 = fadd fast float %2956, %2090
  br label %2958

; <label>:2958                                    ; preds = %2938, %2936, %2896, %2869, %2841, %2273, %2092, %2075
  %2959 = phi float [ %2076, %2841 ], [ %2076, %2273 ], [ %2076, %2075 ], [ %2941, %2938 ], [ %2076, %2936 ], [ %2899, %2896 ], [ %2874, %2869 ], [ %2076, %2092 ]
  %2960 = phi float [ %2077, %2841 ], [ %2077, %2273 ], [ %2077, %2075 ], [ %2942, %2938 ], [ %2077, %2936 ], [ %2900, %2896 ], [ %2875, %2869 ], [ %2077, %2092 ]
  %2961 = phi float [ %2078, %2841 ], [ %2078, %2273 ], [ %2078, %2075 ], [ %2953, %2938 ], [ %2078, %2936 ], [ %2931, %2896 ], [ %2888, %2869 ], [ %2078, %2092 ]
  %2962 = phi float [ %2079, %2841 ], [ %2079, %2273 ], [ %2079, %2075 ], [ %2954, %2938 ], [ %2079, %2936 ], [ %2932, %2896 ], [ %2889, %2869 ], [ %2079, %2092 ]
  %2963 = phi float [ %2080, %2841 ], [ %2080, %2273 ], [ %2080, %2075 ], [ %2955, %2938 ], [ %2080, %2936 ], [ %2933, %2896 ], [ %2890, %2869 ], [ %2080, %2092 ]
  %2964 = phi float [ %2842, %2841 ], [ %2081, %2273 ], [ %2081, %2075 ], [ %2842, %2938 ], [ %2842, %2936 ], [ %2842, %2896 ], [ %2842, %2869 ], [ %2081, %2092 ]
  %2965 = phi float [ %2843, %2841 ], [ %2082, %2273 ], [ %2082, %2075 ], [ %2843, %2938 ], [ %2843, %2936 ], [ %2843, %2896 ], [ %2843, %2869 ], [ %2082, %2092 ]
  %2966 = phi float [ %2844, %2841 ], [ %2083, %2273 ], [ %2083, %2075 ], [ %2844, %2938 ], [ %2844, %2936 ], [ %2844, %2896 ], [ %2844, %2869 ], [ %2083, %2092 ]
  %2967 = phi float [ %2845, %2841 ], [ %2084, %2273 ], [ %2084, %2075 ], [ %2845, %2938 ], [ %2845, %2936 ], [ %2845, %2896 ], [ %2845, %2869 ], [ %2084, %2092 ]
  %2968 = phi float [ %2846, %2841 ], [ %2085, %2273 ], [ %2085, %2075 ], [ %2846, %2938 ], [ %2846, %2936 ], [ %2846, %2896 ], [ %2846, %2869 ], [ %2085, %2092 ]
  %2969 = phi float [ %2847, %2841 ], [ %2086, %2273 ], [ %2086, %2075 ], [ %2847, %2938 ], [ %2847, %2936 ], [ %2847, %2896 ], [ %2847, %2869 ], [ %2086, %2092 ]
  %2970 = phi float [ %2848, %2841 ], [ %2087, %2273 ], [ %2087, %2075 ], [ %2848, %2938 ], [ %2848, %2936 ], [ %2848, %2896 ], [ %2848, %2869 ], [ %2087, %2092 ]
  %2971 = phi float [ %2088, %2841 ], [ %2088, %2273 ], [ %2088, %2075 ], [ %2949, %2938 ], [ %2088, %2936 ], [ %2927, %2896 ], [ %2881, %2869 ], [ %2088, %2092 ]
  %2972 = phi float [ %2089, %2841 ], [ %2089, %2273 ], [ %2089, %2075 ], [ %2946, %2938 ], [ %2089, %2936 ], [ %2904, %2896 ], [ %2878, %2869 ], [ %2089, %2092 ]
  %2973 = phi float [ %2090, %2841 ], [ %2090, %2273 ], [ %2090, %2075 ], [ %2957, %2938 ], [ %2090, %2936 ], [ %2935, %2896 ], [ %2893, %2869 ], [ %2090, %2092 ]
  %2974 = phi float [ %2849, %2841 ], [ %2091, %2273 ], [ %2091, %2075 ], [ %2849, %2938 ], [ %2849, %2936 ], [ %2849, %2896 ], [ %2849, %2869 ], [ %2091, %2092 ]
  br i1 %447, label %3841, label %2975

; <label>:2975                                    ; preds = %2958
  %2976 = icmp ult i32 %501, 4
  %2977 = add i32 %50, 72
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = add i32 %50, 76
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = or i32 %2982, %2979
  %2984 = icmp eq i32 %2983, 0
  br i1 %2984, label %3841, label %2985

; <label>:2985                                    ; preds = %2975
  %2986 = and i32 %2979, 262144
  %2987 = icmp ne i32 %2986, 0
  %2988 = select i1 %2987, float %55, float 1.000000e+00
  %2989 = select i1 %2987, float %56, float 0.000000e+00
  %2990 = select i1 %2987, float %57, float 0.000000e+00
  %2991 = select i1 %2987, float %58, float 1.000000e+00
  %2992 = select i1 %2987, float %59, float %82
  %2993 = select i1 %2987, float %60, float %83
  %2994 = add i32 %50, 332
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = lshr i32 %2996, 16
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = fmul fast float %2998, 0x3F50624DE0000000
  %3000 = add i32 %50, 136
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = lshr i32 %3002, 16
  %3004 = and i32 %3003, 255
  %3005 = lshr i32 %3002, 24
  %3006 = add i32 %50, 340
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = and i32 %3008, 65535
  %3010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3009)  ; LegacyF16ToF32(value)
  %3011 = lshr i32 %3008, 16
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = add i32 %50, 80
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.f32 %3025, 3
  %3027 = fmul fast float %3026, 1.000000e+03
  %3028 = fmul fast float %437, %3027
  %3029 = call float @dx.op.unary.f32(i32 22, float %3028)  ; Frc(value)
  %3030 = fadd fast float %3029, %427
  %3031 = fmul fast float %438, %3027
  %3032 = call float @dx.op.unary.f32(i32 22, float %3031)  ; Frc(value)
  %3033 = fadd fast float %3032, %429
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
  %3059 = add i32 %50, 276
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3089 = add i32 %50, 484
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = add i32 %3091, 0
  %3093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3093, %dx.types.Handle %97, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = add i32 %50, 148
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = shl i32 %3098, 4
  %3100 = and i32 %3099, 32752
  %3101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3100)  ; LegacyF16ToF32(value)
  %3102 = lshr i32 %3098, 7
  %3103 = and i32 %3102, 32752
  %3104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3103)  ; LegacyF16ToF32(value)
  %3105 = fsub fast float 1.000000e+00, %496
  %3106 = call float @dx.op.binary.f32(i32 35, float %3105, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3107 = bitcast float %496 to i32
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
  %3135 = phi float [ %3133, %3088 ], [ %496, %3083 ]
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 128
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3156, label %3140

; <label>:3140                                    ; preds = %3134
  %3141 = add i32 %50, 468
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = add i32 %3143, 0
  %3145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3145, %dx.types.Handle %97, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %3158, label %3841, label %3159

; <label>:3159                                    ; preds = %3156
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 16
  %3163 = icmp eq i32 %3162, 0
  br i1 %3163, label %3362, label %3164

; <label>:3164                                    ; preds = %3159
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = add i32 %50, 420
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = add i32 %3169, 0
  %3171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3171, %dx.types.Handle %96, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %3186, 512
  %3188 = icmp eq i32 %3187, 0
  br i1 %3188, label %3197, label %3189

; <label>:3189                                    ; preds = %3164
  %3190 = add i32 %50, 504
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = add i32 %3192, 0
  %3194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3194, %dx.types.Handle %97, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  br label %3197

; <label>:3197                                    ; preds = %3189, %3164
  %3198 = phi float [ %3196, %3189 ], [ 1.000000e+00, %3164 ]
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 33554432
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3309, label %3203

; <label>:3203                                    ; preds = %3197
  %3204 = add i32 %50, 272
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 65535
  %3208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3207)  ; LegacyF16ToF32(value)
  %3209 = lshr i32 %3206, 16
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = add i32 %50, 276
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 65535
  %3215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3214)  ; LegacyF16ToF32(value)
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3232 = add i32 %50, 268
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3313 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %3314 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %3315 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
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
  %3347 = fmul fast float %414, %414
  %3348 = fmul fast float %418, %418
  %3349 = fmul fast float %422, %422
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
  %3367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.i32 %3367, 1
  %3369 = and i32 %3368, 1
  %3370 = icmp ne i32 %3369, 0
  %3371 = add i32 %50, 356
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = and i32 %3373, 32
  %3375 = icmp ne i32 %3374, 0
  %3376 = and i1 %3370, %3375
  %3377 = select i1 %3376, float 1.000000e+00, float %3364
  %3378 = select i1 %3376, float 0x3FD3333340000000, float %3365
  %3379 = select i1 %3376, float 0x3FD3333340000000, float %3366
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 32
  %3383 = icmp eq i32 %3382, 0
  br i1 %3383, label %3456, label %3384

; <label>:3384                                    ; preds = %3362
  %3385 = add i32 %50, 140
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = add i32 %50, 436
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = add i32 %3390, 0
  %3392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3392, %dx.types.Handle %96, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 67108864
  %3435 = icmp eq i32 %3434, 0
  br i1 %3435, label %3452, label %3436

; <label>:3436                                    ; preds = %3384
  %3437 = add i32 %50, 328
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 65535
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3461 = add i32 %50, 208
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = lshr i32 %3463, 22
  %3465 = shl nuw nsw i32 %3464, 5
  %3466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3465)  ; LegacyF16ToF32(value)
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 64
  %3470 = icmp eq i32 %3469, 0
  br i1 %3470, label %3504, label %3471

; <label>:3471                                    ; preds = %3456
  %3472 = add i32 %50, 452
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = add i32 %3474, 0
  %3476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = and i32 %3478, 131072
  %3480 = icmp eq i32 %3479, 0
  %3481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3476, %dx.types.Handle %96, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3484 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3485 = fmul fast float %3482, %402
  %3486 = fmul fast float %3483, %405
  %3487 = fmul fast float %3484, %408
  br i1 %3480, label %3494, label %3488

; <label>:3488                                    ; preds = %3471
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3499 = select i1 %259, float %3498, float %3495
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3499, float %3496, float %3497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = select i1 %259, float 0.000000e+00, float %3495
  %3502 = select i1 %259, float %3500, float %3496
  %3503 = select i1 %259, float 0.000000e+00, float %3497
  br label %3504

; <label>:3504                                    ; preds = %3494, %3456
  %3505 = phi float [ %3501, %3494 ], [ 0.000000e+00, %3456 ]
  %3506 = phi float [ %3502, %3494 ], [ 0.000000e+00, %3456 ]
  %3507 = phi float [ %3503, %3494 ], [ 0.000000e+00, %3456 ]
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = and i32 %3509, 1024
  %3511 = icmp eq i32 %3510, 0
  br i1 %3511, label %3542, label %3512

; <label>:3512                                    ; preds = %3504
  %3513 = add i32 %50, 200
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 255
  %3517 = uitofp i32 %3516 to float
  %3518 = fmul fast float %3517, 0x3F70101020000000
  %3519 = lshr i32 %3515, 8
  %3520 = and i32 %3519, 255
  %3521 = uitofp i32 %3520 to float
  %3522 = fmul fast float %3521, 0x3F70101020000000
  %3523 = lshr i32 %3515, 16
  %3524 = and i32 %3523, 255
  %3525 = uitofp i32 %3524 to float
  %3526 = fmul fast float %3525, 0x3F70101020000000
  %3527 = fmul fast float %3518, %3518
  %3528 = fmul fast float %3522, %3522
  %3529 = fmul fast float %3526, %3526
  %3530 = add i32 %50, 520
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = add i32 %3532, 0
  %3534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3534, %dx.types.Handle %97, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3537 = extractvalue %dx.types.ResRet.f32 %3535, 1
  %3538 = extractvalue %dx.types.ResRet.f32 %3535, 2
  %3539 = fmul fast float %3527, %3536
  %3540 = fmul fast float %3528, %3537
  %3541 = fmul fast float %3529, %3538
  br label %3542

; <label>:3542                                    ; preds = %3512, %3504
  %3543 = phi float [ %3539, %3512 ], [ 0.000000e+00, %3504 ]
  %3544 = phi float [ %3540, %3512 ], [ 0.000000e+00, %3504 ]
  %3545 = phi float [ %3541, %3512 ], [ 0.000000e+00, %3504 ]
  %3546 = fcmp fast ogt float %3543, 0.000000e+00
  %3547 = fcmp fast ogt float %3544, 0.000000e+00
  %3548 = fcmp fast ogt float %3545, 0.000000e+00
  %3549 = call float @dx.op.unary.f32(i32 23, float %3543)  ; Log(value)
  %3550 = call float @dx.op.unary.f32(i32 23, float %3544)  ; Log(value)
  %3551 = call float @dx.op.unary.f32(i32 23, float %3545)  ; Log(value)
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = lshr i32 %3553, 7
  %3555 = and i32 %3554, 32752
  %3556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3555)  ; LegacyF16ToF32(value)
  %3557 = fmul fast float %3549, 0xBFE62E4300000000
  %3558 = fmul fast float %3557, %3556
  %3559 = fmul fast float %3550, 0xBFE62E4300000000
  %3560 = fmul fast float %3559, %3556
  %3561 = fmul fast float %3551, 0xBFE62E4300000000
  %3562 = fmul fast float %3561, %3556
  %3563 = select i1 %3546, float %3558, float 1.270000e+02
  %3564 = select i1 %3547, float %3560, float 1.270000e+02
  %3565 = select i1 %3548, float %3562, float 1.270000e+02
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = and i32 %3567, 2048
  %3569 = icmp eq i32 %3568, 0
  br i1 %3569, label %3585, label %3570

; <label>:3570                                    ; preds = %3542
  %3571 = add i32 %50, 536
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = add i32 %3573, 0
  %3575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3575, %dx.types.Handle %97, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 3
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = shl i32 %3579, 4
  %3581 = and i32 %3580, 32752
  %3582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3581)  ; LegacyF16ToF32(value)
  %3583 = fmul fast float %3582, %3577
  %3584 = call float @dx.op.binary.f32(i32 35, float %3583, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3585

; <label>:3585                                    ; preds = %3570, %3542
  %3586 = phi float [ %3584, %3570 ], [ 0x3F70101020000000, %3542 ]
  %3587 = add i32 %50, 144
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = and i32 %3589, 255
  %3591 = uitofp i32 %3590 to float
  %3592 = lshr i32 %3589, 8
  %3593 = and i32 %3592, 255
  %3594 = uitofp i32 %3593 to float
  %3595 = call float @dx.op.dot3.f32(i32 55, float %3377, float %3378, float %3379, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3596 = fmul fast float %3594, %3595
  %3597 = fadd fast float %3596, %3591
  %3598 = fmul fast float %3597, 0x3F70101020000000
  %3599 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  br i1 %2976, label %3600, label %3635

; <label>:3600                                    ; preds = %3585
  %3601 = fmul fast float %3586, 2.000000e+00
  %3602 = fcmp fast olt float %3563, 1.270000e+02
  %3603 = fcmp fast olt float %3564, 1.270000e+02
  %3604 = fcmp fast olt float %3565, 1.270000e+02
  %3605 = fmul fast float %3563, 0xBFF7154760000000
  %3606 = fmul fast float %3605, %3601
  %3607 = fmul fast float %3564, 0xBFF7154760000000
  %3608 = fmul fast float %3607, %3601
  %3609 = fmul fast float %3565, 0xBFF7154760000000
  %3610 = fmul fast float %3609, %3601
  %3611 = call float @dx.op.unary.f32(i32 21, float %3606)  ; Exp(value)
  %3612 = call float @dx.op.unary.f32(i32 21, float %3608)  ; Exp(value)
  %3613 = call float @dx.op.unary.f32(i32 21, float %3610)  ; Exp(value)
  %3614 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  %3615 = call float @dx.op.unary.f32(i32 7, float %3612)  ; Saturate(value)
  %3616 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3617 = fadd fast float %3614, -1.000000e+00
  %3618 = select i1 %3602, float %3617, float -1.000000e+00
  %3619 = fadd fast float %3615, -1.000000e+00
  %3620 = select i1 %3603, float %3619, float -1.000000e+00
  %3621 = fadd fast float %3616, -1.000000e+00
  %3622 = select i1 %3604, float %3621, float -1.000000e+00
  %3623 = fmul fast float %3618, %3157
  %3624 = fmul fast float %3620, %3157
  %3625 = fmul fast float %3622, %3157
  %3626 = fadd fast float %3623, 1.000000e+00
  %3627 = fadd fast float %3624, 1.000000e+00
  %3628 = fadd fast float %3625, 1.000000e+00
  %3629 = fmul fast float %3626, %2964
  %3630 = fmul fast float %3627, %2965
  %3631 = fmul fast float %3628, %2966
  %3632 = fmul fast float %3626, %2967
  %3633 = fmul fast float %3627, %2968
  %3634 = fmul fast float %3628, %2969
  br label %3635

; <label>:3635                                    ; preds = %3600, %3585
  %3636 = phi float [ %3629, %3600 ], [ %2964, %3585 ]
  %3637 = phi float [ %3630, %3600 ], [ %2965, %3585 ]
  %3638 = phi float [ %3631, %3600 ], [ %2966, %3585 ]
  %3639 = phi float [ %3632, %3600 ], [ %2967, %3585 ]
  %3640 = phi float [ %3633, %3600 ], [ %2968, %3585 ]
  %3641 = phi float [ %3634, %3600 ], [ %2969, %3585 ]
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = and i32 %3643, 3
  %3645 = icmp eq i32 %3644, 3
  br i1 %3645, label %3724, label %3646

; <label>:3646                                    ; preds = %3635
  %3647 = and i32 %3643, 16
  %3648 = icmp ne i32 %3647, 0
  %3649 = select i1 %3648, float %3157, float 0.000000e+00
  %3650 = icmp eq i32 %3644, 0
  br i1 %3650, label %3651, label %3679

; <label>:3651                                    ; preds = %3646
  %3652 = and i32 %3643, 64
  %3653 = icmp ne i32 %3652, 0
  %3654 = select i1 %3653, float %3157, float 0.000000e+00
  %3655 = fsub fast float %3377, %3636
  %3656 = fsub fast float %3378, %3637
  %3657 = fsub fast float %3379, %3638
  %3658 = fmul fast float %3649, %3655
  %3659 = fmul fast float %3649, %3656
  %3660 = fmul fast float %3649, %3657
  %3661 = fadd fast float %3658, %3636
  %3662 = fadd fast float %3659, %3637
  %3663 = fadd fast float %3660, %3638
  %3664 = fsub fast float %3363, %2970
  %3665 = fmul fast float %3649, %3664
  %3666 = fadd fast float %3665, %2970
  %3667 = fsub fast float %3505, %3639
  %3668 = fsub fast float %3506, %3640
  %3669 = fsub fast float %3507, %3641
  %3670 = fmul fast float %3654, %3667
  %3671 = fmul fast float %3654, %3668
  %3672 = fmul fast float %3654, %3669
  %3673 = fadd fast float %3670, %3639
  %3674 = fadd fast float %3671, %3640
  %3675 = fadd fast float %3672, %3641
  %3676 = fsub fast float %3599, %2974
  %3677 = fmul fast float %3649, %3676
  %3678 = fadd fast float %3677, %2974
  br label %3724

; <label>:3679                                    ; preds = %3646
  %3680 = icmp eq i32 %3644, 1
  br i1 %3680, label %3681, label %3694

; <label>:3681                                    ; preds = %3679
  %3682 = fadd fast float %3377, -1.000000e+00
  %3683 = fadd fast float %3378, -1.000000e+00
  %3684 = fadd fast float %3379, -1.000000e+00
  %3685 = fmul fast float %3649, %3682
  %3686 = fmul fast float %3649, %3683
  %3687 = fmul fast float %3649, %3684
  %3688 = fadd fast float %3685, 1.000000e+00
  %3689 = fadd fast float %3686, 1.000000e+00
  %3690 = fadd fast float %3687, 1.000000e+00
  %3691 = fmul fast float %3688, %3636
  %3692 = fmul fast float %3689, %3637
  %3693 = fmul fast float %3690, %3638
  br label %3724

; <label>:3694                                    ; preds = %3679
  %3695 = icmp eq i32 %3644, 2
  br i1 %3695, label %3696, label %3724

; <label>:3696                                    ; preds = %3694
  %3697 = call float @dx.op.unary.f32(i32 24, float %3377)  ; Sqrt(value)
  %3698 = call float @dx.op.unary.f32(i32 24, float %3378)  ; Sqrt(value)
  %3699 = call float @dx.op.unary.f32(i32 24, float %3379)  ; Sqrt(value)
  %3700 = fadd fast float %3697, -5.000000e-01
  %3701 = fadd fast float %3698, -5.000000e-01
  %3702 = fadd fast float %3699, -5.000000e-01
  %3703 = fmul fast float %3700, %3649
  %3704 = fmul fast float %3701, %3649
  %3705 = fmul fast float %3702, %3649
  %3706 = fadd fast float %3703, 5.000000e-01
  %3707 = fadd fast float %3704, 5.000000e-01
  %3708 = fadd fast float %3705, 5.000000e-01
  %3709 = fmul fast float %3706, 2.000000e+00
  %3710 = fsub fast float 1.000000e+00, %3709
  %3711 = fmul fast float %3710, %3636
  %3712 = fadd fast float %3711, %3709
  %3713 = fmul fast float %3712, %3636
  %3714 = fmul fast float %3707, 2.000000e+00
  %3715 = fsub fast float 1.000000e+00, %3714
  %3716 = fmul fast float %3715, %3637
  %3717 = fadd fast float %3716, %3714
  %3718 = fmul fast float %3717, %3637
  %3719 = fmul fast float %3708, 2.000000e+00
  %3720 = fsub fast float 1.000000e+00, %3719
  %3721 = fmul fast float %3720, %3638
  %3722 = fadd fast float %3721, %3719
  %3723 = fmul fast float %3722, %3638
  br label %3724

; <label>:3724                                    ; preds = %3696, %3694, %3681, %3651, %3635
  %3725 = phi float [ %3636, %3635 ], [ %3713, %3696 ], [ %3636, %3694 ], [ %3691, %3681 ], [ %3661, %3651 ]
  %3726 = phi float [ %3637, %3635 ], [ %3718, %3696 ], [ %3637, %3694 ], [ %3692, %3681 ], [ %3662, %3651 ]
  %3727 = phi float [ %3638, %3635 ], [ %3723, %3696 ], [ %3638, %3694 ], [ %3693, %3681 ], [ %3663, %3651 ]
  %3728 = phi float [ %3639, %3635 ], [ %3639, %3696 ], [ %3639, %3694 ], [ %3639, %3681 ], [ %3673, %3651 ]
  %3729 = phi float [ %3640, %3635 ], [ %3640, %3696 ], [ %3640, %3694 ], [ %3640, %3681 ], [ %3674, %3651 ]
  %3730 = phi float [ %3641, %3635 ], [ %3641, %3696 ], [ %3641, %3694 ], [ %3641, %3681 ], [ %3675, %3651 ]
  %3731 = phi float [ %2970, %3635 ], [ %2970, %3696 ], [ %2970, %3694 ], [ %2970, %3681 ], [ %3666, %3651 ]
  %3732 = phi float [ %2974, %3635 ], [ %2974, %3696 ], [ %2974, %3694 ], [ %2974, %3681 ], [ %3678, %3651 ]
  %3733 = and i32 %3643, 12
  %3734 = icmp eq i32 %3733, 12
  br i1 %3734, label %3841, label %3735

; <label>:3735                                    ; preds = %3724
  %3736 = and i32 %3643, 2097184
  %3737 = icmp eq i32 %3736, 2097184
  %3738 = select i1 %3737, float %3157, float 0.000000e+00
  %3739 = and i32 %3643, 4194336
  %3740 = icmp eq i32 %3739, 4194336
  %3741 = select i1 %3740, float %3157, float 0.000000e+00
  %3742 = and i32 %3643, 8388640
  %3743 = icmp eq i32 %3742, 8388640
  %3744 = select i1 %3743, float %3157, float 0.000000e+00
  %3745 = and i32 %3643, 1024
  %3746 = icmp ne i32 %3745, 0
  %3747 = select i1 %3746, float %3157, float 0.000000e+00
  %3748 = and i32 %3643, 2048
  %3749 = icmp ne i32 %3748, 0
  %3750 = select i1 %3749, float %3157, float 0.000000e+00
  %3751 = icmp eq i32 %3733, 0
  br i1 %3751, label %3752, label %3777

; <label>:3752                                    ; preds = %3735
  %3753 = fsub fast float %3458, %2959
  %3754 = fsub fast float %3459, %2960
  %3755 = fmul fast float %3738, %3753
  %3756 = fmul fast float %3738, %3754
  %3757 = fadd fast float %3755, %2959
  %3758 = fadd fast float %3756, %2960
  %3759 = fsub fast float %3460, %2972
  %3760 = fmul fast float %3741, %3759
  %3761 = fadd fast float %3760, %2972
  %3762 = fsub fast float %3457, %2971
  %3763 = fmul fast float %3744, %3762
  %3764 = fadd fast float %3763, %2971
  %3765 = fsub fast float %3563, %2961
  %3766 = fsub fast float %3564, %2962
  %3767 = fsub fast float %3565, %2963
  %3768 = fmul fast float %3747, %3765
  %3769 = fmul fast float %3747, %3766
  %3770 = fmul fast float %3747, %3767
  %3771 = fadd fast float %3768, %2961
  %3772 = fadd fast float %3769, %2962
  %3773 = fadd fast float %3770, %2963
  %3774 = fsub fast float %3586, %2973
  %3775 = fmul fast float %3750, %3774
  %3776 = fadd fast float %3775, %2973
  br label %3841

; <label>:3777                                    ; preds = %3735
  %3778 = icmp eq i32 %3733, 4
  br i1 %3778, label %3779, label %3819

; <label>:3779                                    ; preds = %3777
  %3780 = fmul fast float %3738, %3458
  %3781 = fmul fast float %3738, %3459
  %3782 = fadd fast float %3780, %2959
  %3783 = fadd fast float %3781, %2960
  %3784 = call float @dx.op.binary.f32(i32 36, float %2972, float %3460)  ; FMin(a,b)
  %3785 = fsub fast float %3784, %2972
  %3786 = fmul fast float %3785, %3741
  %3787 = fadd fast float %3786, %2972
  %3788 = fadd fast float %3457, %2971
  %3789 = fmul fast float %3788, 0x3FF337FAE0000000
  %3790 = fmul fast float %2971, %2971
  %3791 = fmul fast float %3457, %3457
  %3792 = fadd fast float %3791, %3790
  %3793 = fmul fast float %3792, 0x3FE5152B00000000
  %3794 = fmul fast float %2971, 0xBFCC1F85E0000000
  %3795 = fmul fast float %3794, %3457
  %3796 = fadd fast float %3795, 0xBFE1363700000000
  %3797 = fadd fast float %3796, %3789
  %3798 = fsub fast float %3797, %3793
  %3799 = fmul fast float %3788, 0x3FBA6F0D00000000
  %3800 = fmul fast float %3792, 0x3FD0432880000000
  %3801 = fmul fast float %2971, 0xBFEF110800000000
  %3802 = fmul fast float %3801, %3457
  %3803 = fadd fast float %3802, 1.000000e+00
  %3804 = fsub fast float %3803, %3799
  %3805 = fadd fast float %3804, %3800
  %3806 = fdiv fast float %3798, %3805
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fsub fast float %3807, %2971
  %3809 = fmul fast float %3808, %3744
  %3810 = fadd fast float %3809, %2971
  %3811 = fmul fast float %3747, %3563
  %3812 = fmul fast float %3747, %3564
  %3813 = fmul fast float %3747, %3565
  %3814 = fadd fast float %3811, %2961
  %3815 = fadd fast float %3812, %2962
  %3816 = fadd fast float %3813, %2963
  %3817 = fmul fast float %3750, %3586
  %3818 = fadd fast float %3817, %2973
  br label %3841

; <label>:3819                                    ; preds = %3777
  %3820 = icmp eq i32 %3733, 8
  br i1 %3820, label %3821, label %3841

; <label>:3821                                    ; preds = %3819
  %3822 = fmul fast float %3738, %3458
  %3823 = fmul fast float %3738, %3459
  %3824 = fadd fast float %3822, %2959
  %3825 = fadd fast float %3823, %2960
  %3826 = call float @dx.op.binary.f32(i32 36, float %2972, float %3460)  ; FMin(a,b)
  %3827 = fsub fast float %3826, %2972
  %3828 = fmul fast float %3827, %3741
  %3829 = fadd fast float %3828, %2972
  %3830 = fsub fast float %3457, %2971
  %3831 = fmul fast float %3744, %3830
  %3832 = fadd fast float %3831, %2971
  %3833 = fmul fast float %3747, %3563
  %3834 = fmul fast float %3747, %3564
  %3835 = fmul fast float %3747, %3565
  %3836 = fadd fast float %3833, %2961
  %3837 = fadd fast float %3834, %2962
  %3838 = fadd fast float %3835, %2963
  %3839 = fmul fast float %3750, %3586
  %3840 = fadd fast float %3839, %2973
  br label %3841

; <label>:3841                                    ; preds = %3821, %3819, %3779, %3752, %3724, %3156, %2975, %2958
  %3842 = phi float [ %2959, %3724 ], [ %2959, %3156 ], [ %2959, %2958 ], [ %2959, %2975 ], [ %3757, %3752 ], [ %3782, %3779 ], [ %2959, %3819 ], [ %3824, %3821 ]
  %3843 = phi float [ %2960, %3724 ], [ %2960, %3156 ], [ %2960, %2958 ], [ %2960, %2975 ], [ %3758, %3752 ], [ %3783, %3779 ], [ %2960, %3819 ], [ %3825, %3821 ]
  %3844 = phi float [ %2961, %3724 ], [ %2961, %3156 ], [ %2961, %2958 ], [ %2961, %2975 ], [ %3771, %3752 ], [ %3814, %3779 ], [ %2961, %3819 ], [ %3836, %3821 ]
  %3845 = phi float [ %2962, %3724 ], [ %2962, %3156 ], [ %2962, %2958 ], [ %2962, %2975 ], [ %3772, %3752 ], [ %3815, %3779 ], [ %2962, %3819 ], [ %3837, %3821 ]
  %3846 = phi float [ %2963, %3724 ], [ %2963, %3156 ], [ %2963, %2958 ], [ %2963, %2975 ], [ %3773, %3752 ], [ %3816, %3779 ], [ %2963, %3819 ], [ %3838, %3821 ]
  %3847 = phi float [ %3725, %3724 ], [ %2964, %3156 ], [ %2964, %2958 ], [ %2964, %2975 ], [ %3725, %3752 ], [ %3725, %3779 ], [ %3725, %3819 ], [ %3725, %3821 ]
  %3848 = phi float [ %3726, %3724 ], [ %2965, %3156 ], [ %2965, %2958 ], [ %2965, %2975 ], [ %3726, %3752 ], [ %3726, %3779 ], [ %3726, %3819 ], [ %3726, %3821 ]
  %3849 = phi float [ %3727, %3724 ], [ %2966, %3156 ], [ %2966, %2958 ], [ %2966, %2975 ], [ %3727, %3752 ], [ %3727, %3779 ], [ %3727, %3819 ], [ %3727, %3821 ]
  %3850 = phi float [ %3728, %3724 ], [ %2967, %3156 ], [ %2967, %2958 ], [ %2967, %2975 ], [ %3728, %3752 ], [ %3728, %3779 ], [ %3728, %3819 ], [ %3728, %3821 ]
  %3851 = phi float [ %3729, %3724 ], [ %2968, %3156 ], [ %2968, %2958 ], [ %2968, %2975 ], [ %3729, %3752 ], [ %3729, %3779 ], [ %3729, %3819 ], [ %3729, %3821 ]
  %3852 = phi float [ %3730, %3724 ], [ %2969, %3156 ], [ %2969, %2958 ], [ %2969, %2975 ], [ %3730, %3752 ], [ %3730, %3779 ], [ %3730, %3819 ], [ %3730, %3821 ]
  %3853 = phi float [ %3731, %3724 ], [ %2970, %3156 ], [ %2970, %2958 ], [ %2970, %2975 ], [ %3731, %3752 ], [ %3731, %3779 ], [ %3731, %3819 ], [ %3731, %3821 ]
  %3854 = phi float [ %2971, %3724 ], [ %2971, %3156 ], [ %2971, %2958 ], [ %2971, %2975 ], [ %3764, %3752 ], [ %3810, %3779 ], [ %2971, %3819 ], [ %3832, %3821 ]
  %3855 = phi float [ %2972, %3724 ], [ %2972, %3156 ], [ %2972, %2958 ], [ %2972, %2975 ], [ %3761, %3752 ], [ %3787, %3779 ], [ %2972, %3819 ], [ %3829, %3821 ]
  %3856 = phi float [ %2973, %3724 ], [ %2973, %3156 ], [ %2973, %2958 ], [ %2973, %2975 ], [ %3776, %3752 ], [ %3818, %3779 ], [ %2973, %3819 ], [ %3840, %3821 ]
  %3857 = phi float [ %3732, %3724 ], [ %2974, %3156 ], [ %2974, %2958 ], [ %2974, %2975 ], [ %3732, %3752 ], [ %3732, %3779 ], [ %3732, %3819 ], [ %3732, %3821 ]
  %3858 = add i32 %50, 360
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = extractvalue %dx.types.ResRet.i32 %3859, 1
  %3862 = bitcast i32 %3860 to float
  %3863 = bitcast i32 %3861 to float
  %3864 = fcmp fast oge float %3862, 0.000000e+00
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 0
  %3867 = select i1 %3864, float %3862, float %3866
  %3868 = fadd fast float %3867, %201
  %3869 = fmul fast float %3863, %202
  %3870 = add i32 %50, 488
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = add i32 %3872, 0
  %3874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3874, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = fmul fast float %3869, %3876
  %3878 = fadd fast float %3868, %3877
  %3879 = and i32 %193, 65535
  %3880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3879)  ; LegacyF16ToF32(value)
  %3881 = lshr i32 %193, 16
  %3882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3881)  ; LegacyF16ToF32(value)
  %3883 = and i32 %194, 65535
  %3884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3883)  ; LegacyF16ToF32(value)
  %3885 = fmul fast float %3880, %3847
  %3886 = fmul fast float %3882, %3848
  %3887 = fmul fast float %3884, %3849
  %3888 = shl i32 %195, 4
  %3889 = and i32 %3888, 32752
  %3890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3889)  ; LegacyF16ToF32(value)
  %3891 = lshr i32 %195, 7
  %3892 = and i32 %3891, 32752
  %3893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3892)  ; LegacyF16ToF32(value)
  %3894 = lshr i32 %195, 22
  %3895 = shl nuw nsw i32 %3894, 5
  %3896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3895)  ; LegacyF16ToF32(value)
  %3897 = and i32 %196, 65535
  %3898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3897)  ; LegacyF16ToF32(value)
  %3899 = fmul fast float %3890, %3850
  %3900 = fmul fast float %3899, %3898
  %3901 = fmul fast float %3893, %3851
  %3902 = fmul fast float %3901, %3898
  %3903 = fmul fast float %3896, %3852
  %3904 = fmul fast float %3903, %3898
  %3905 = call float @dx.op.dot2.f32(i32 54, float %3842, float %3843, float %3842, float %3843)  ; Dot2(ax,ay,bx,by)
  %3906 = fmul fast float %3905, 0x3FE3333340000000
  %3907 = fsub fast float 1.000000e+00, %3906
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3907, float %3842, float %3843, float %3907)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call float @dx.op.unary.f32(i32 25, float %3908)  ; Rsqrt(value)
  %3910 = fmul fast float %3909, %3842
  %3911 = fmul fast float %3909, %3843
  %3912 = fmul fast float %3907, %3909
  %3913 = fmul fast float %3912, %107
  %3914 = fmul fast float %3912, %108
  %3915 = fmul fast float %3912, %109
  %3916 = fmul fast float %3910, %75
  %3917 = fmul fast float %3910, %76
  %3918 = fmul fast float %3910, %77
  %3919 = fadd fast float %3913, %3916
  %3920 = fadd fast float %3914, %3917
  %3921 = fadd fast float %3915, %3918
  %3922 = fmul fast float %119, %3911
  %3923 = fmul fast float %120, %3911
  %3924 = fmul fast float %121, %3911
  %3925 = fadd fast float %3919, %3922
  %3926 = fadd fast float %3920, %3923
  %3927 = fadd fast float %3921, %3924
  %3928 = call float @dx.op.dot3.f32(i32 55, float %3925, float %3926, float %3927, float %3925, float %3926, float %3927)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = call float @dx.op.unary.f32(i32 25, float %3928)  ; Rsqrt(value)
  %3930 = fmul fast float %3925, %3929
  %3931 = fmul fast float %3926, %3929
  %3932 = fmul fast float %3927, %3929
  %3933 = fadd fast float %3853, 0xBFB99999A0000000
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = fmul fast float %3934, 0x3FF1C71C80000000
  %3936 = call float @dx.op.binary.f32(i32 36, float %3853, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3937 = fsub fast float 1.000000e+00, %3935
  %3938 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  %3939 = fmul fast float %3938, %3885
  %3940 = fmul fast float %3938, %3886
  %3941 = fmul fast float %3938, %3887
  %3942 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  %3943 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3944 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3945 = fmul fast float %3935, %3885
  %3946 = fmul fast float %3935, %3886
  %3947 = fmul fast float %3935, %3887
  %3948 = fadd fast float %3945, %3936
  %3949 = fadd fast float %3946, %3936
  %3950 = fadd fast float %3947, %3936
  %3951 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3952 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3953 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3954 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3955 = call float @dx.op.binary.f32(i32 36, float %3844, float 1.270000e+02)  ; FMin(a,b)
  %3956 = call float @dx.op.binary.f32(i32 36, float %3845, float 1.270000e+02)  ; FMin(a,b)
  %3957 = call float @dx.op.binary.f32(i32 36, float %3846, float 1.270000e+02)  ; FMin(a,b)
  %3958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.i32 %3958, 3
  %3960 = and i32 %3959, 8
  %3961 = icmp ne i32 %3960, 0
  %3962 = call float @dx.op.binary.f32(i32 35, float %3942, float %3885)  ; FMax(a,b)
  %3963 = call float @dx.op.binary.f32(i32 35, float %3943, float %3885)  ; FMax(a,b)
  %3964 = call float @dx.op.binary.f32(i32 35, float %3944, float %3885)  ; FMax(a,b)
  %3965 = call float @dx.op.dot3.f32(i32 55, float %3942, float %3943, float %3944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3966 = select i1 %259, float %3885, float %3942
  %3967 = select i1 %259, float %3965, float %3943
  %3968 = select i1 %259, float 1.000000e+00, float %3944
  %3969 = select i1 %3961, float %3962, float %3966
  %3970 = select i1 %3961, float %3963, float %3967
  %3971 = select i1 %3961, float %3964, float %3968
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.CBufRet.f32 %3972, 2
  %3976 = fadd fast float %3973, %187
  %3977 = fadd fast float %3974, %188
  %3978 = fadd fast float %3975, %189
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 0
  %3981 = extractvalue %dx.types.CBufRet.f32 %3979, 1
  %3982 = fsub fast float %3976, %3980
  %3983 = fsub fast float %3977, %3981
  %3984 = fmul fast float %3982, %3982
  %3985 = fmul fast float %3983, %3983
  %3986 = fadd fast float %3984, %3985
  %3987 = call float @dx.op.unary.f32(i32 24, float %3986)  ; Sqrt(value)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3979, 2
  %3989 = fcmp fast olt float %3987, %3988
  br i1 %3989, label %3990, label %4057

; <label>:3990                                    ; preds = %3841
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3998 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3999 = extractvalue %dx.types.CBufRet.f32 %3995, 1
  %4000 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %4001 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %4002 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %4003 = fadd fast float %4000, %3976
  %4004 = fadd fast float %4001, %3977
  %4005 = fadd fast float %4002, %3978
  %4006 = fmul fast float %4003, %3992
  %4007 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %3994, float %4006)  ; FMad(a,b,c)
  %4008 = call float @dx.op.tertiary.f32(i32 46, float %4005, float %3996, float %4007)  ; FMad(a,b,c)
  %4009 = fmul fast float %4003, %3997
  %4010 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %3998, float %4009)  ; FMad(a,b,c)
  %4011 = call float @dx.op.tertiary.f32(i32 46, float %4005, float %3999, float %4010)  ; FMad(a,b,c)
  %4012 = fsub fast float %4008, %4000
  %4013 = fsub fast float %4011, %4001
  %4014 = fsub fast float %4012, %3980
  %4015 = fadd fast float %4014, %3988
  %4016 = fsub fast float %4013, %3981
  %4017 = fadd fast float %4016, %3988
  %4018 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %4019 = fmul fast float %4015, %4018
  %4020 = fmul fast float %4017, %4018
  %4021 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4022 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4023 = fsub fast float 1.000000e+00, %4021
  %4024 = fsub fast float 1.000000e+00, %4022
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %4023, float %4024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = fcmp fast ugt float %4026, 0.000000e+00
  br i1 %4027, label %4028, label %4331

; <label>:4028                                    ; preds = %3990
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4031 = fmul fast float %4030, %4026
  %4032 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4033 = fadd fast float %4032, %4031
  %4034 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %4035 = fadd fast float %4033, %4002
  %4036 = fmul fast float %4008, %3996
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %4011, float %3999, float %4036)  ; FMad(a,b,c)
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %4035, float %4034, float %4037)  ; FMad(a,b,c)
  %4039 = fsub fast float %4038, %4002
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 2
  %4042 = fsub fast float %4039, %4041
  %4043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %4023, float %4024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.ResRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %4043, 2
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %4023, float %4024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.ResRet.f32 %4047, 1
  %4050 = extractvalue %dx.types.ResRet.f32 %4047, 2
  %4051 = fadd fast float %4048, %4044
  %4052 = fmul fast float %4051, 0x3F847AE140000000
  %4053 = fadd fast float %4049, %4045
  %4054 = fmul fast float %4053, 0x3F847AE140000000
  %4055 = fadd fast float %4050, %4046
  %4056 = fmul fast float %4055, 0x3F847AE140000000
  br label %4331

; <label>:4057                                    ; preds = %3841
  %4058 = and i32 %238, 1
  %4059 = icmp eq i32 %4058, 0
  br i1 %4059, label %4331, label %4060

; <label>:4060                                    ; preds = %4057
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4068 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4069 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4071 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4072 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4073 = fadd fast float %4070, %3976
  %4074 = fadd fast float %4071, %3977
  %4075 = fadd fast float %4072, %3978
  %4076 = fmul fast float %4073, %4062
  %4077 = call float @dx.op.tertiary.f32(i32 46, float %4074, float %4064, float %4076)  ; FMad(a,b,c)
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %4075, float %4066, float %4077)  ; FMad(a,b,c)
  %4079 = fmul fast float %4073, %4067
  %4080 = call float @dx.op.tertiary.f32(i32 46, float %4074, float %4068, float %4079)  ; FMad(a,b,c)
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4075, float %4069, float %4080)  ; FMad(a,b,c)
  %4082 = fsub fast float %4078, %4070
  %4083 = fsub fast float %4081, %4071
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.CBufRet.f32 %4084, 2
  %4088 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.i32 %4091, 0
  %4093 = extractvalue %dx.types.CBufRet.i32 %4091, 1
  %4094 = udiv i32 %4093, %4092
  %4095 = fsub fast float %4082, %4085
  %4096 = fsub fast float %4083, %4086
  %4097 = call float @dx.op.binary.f32(i32 35, float %4095, float 0.000000e+00)  ; FMax(a,b)
  %4098 = call float @dx.op.binary.f32(i32 35, float %4096, float 0.000000e+00)  ; FMax(a,b)
  %4099 = call float @dx.op.binary.f32(i32 36, float %4097, float %4087)  ; FMin(a,b)
  %4100 = call float @dx.op.binary.f32(i32 36, float %4098, float %4088)  ; FMin(a,b)
  %4101 = add i32 %4092, -1
  %4102 = add i32 %4094, -1
  %4103 = fmul fast float %4099, %4090
  %4104 = fmul fast float %4100, %4090
  %4105 = fptoui float %4103 to i32
  %4106 = fptoui float %4104 to i32
  %4107 = call i32 @dx.op.binary.i32(i32 40, i32 %4105, i32 %4101)  ; UMin(a,b)
  %4108 = call i32 @dx.op.binary.i32(i32 40, i32 %4106, i32 %4102)  ; UMin(a,b)
  %4109 = mul i32 %4108, %4092
  %4110 = add i32 %4109, %4107
  %4111 = shl i32 %4110, 2
  %4112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.i32 %4112, 0
  %4114 = icmp eq i32 %4113, -1
  br i1 %4114, label %4331, label %4115

; <label>:4115                                    ; preds = %4060
  %4116 = mul i32 %4113, 148
  %4117 = add i32 %4116, 4
  %4118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = add i32 %4116, 8
  %4121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4120, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = add i32 %4116, 36
  %4124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = add i32 %4116, 60
  %4127 = add i32 %4116, 92
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = add i32 %4116, 116
  %4131 = fsub fast float %4082, %4119
  %4132 = fsub fast float %4083, %4122
  %4133 = fmul fast float %4090, %4131
  %4134 = fmul fast float %4090, %4132
  %4135 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4136 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4137 = fsub fast float 1.000000e+00, %4136
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4140 = call float @dx.op.unary.f32(i32 83, float %4135)  ; DerivCoarseX(value)
  %4141 = call float @dx.op.unary.f32(i32 83, float %4137)  ; DerivCoarseX(value)
  %4142 = call float @dx.op.unary.f32(i32 84, float %4135)  ; DerivCoarseY(value)
  %4143 = call float @dx.op.unary.f32(i32 84, float %4137)  ; DerivCoarseY(value)
  %4144 = fmul fast float %4140, %4139
  %4145 = fmul fast float %4141, %4139
  %4146 = fmul fast float %4142, %4139
  %4147 = fmul fast float %4143, %4139
  %4148 = call float @dx.op.dot2.f32(i32 54, float %4146, float %4147, float %4146, float %4147)  ; Dot2(ax,ay,bx,by)
  %4149 = call float @dx.op.dot2.f32(i32 54, float %4144, float %4145, float %4144, float %4145)  ; Dot2(ax,ay,bx,by)
  %4150 = call float @dx.op.binary.f32(i32 35, float %4149, float %4148)  ; FMax(a,b)
  %4151 = call float @dx.op.unary.f32(i32 23, float %4150)  ; Log(value)
  %4152 = fmul fast float %4151, 5.000000e-01
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 1
  %4155 = fadd fast float %4154, %4152
  %4156 = call float @dx.op.binary.f32(i32 35, float %4155, float 0.000000e+00)  ; FMax(a,b)
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4159 = fadd fast float %4158, %4156
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4162 = fadd fast float %4159, %4161
  %4163 = add i32 %4129, 0
  %4164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4163, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4165 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4164, i32 0)  ; GetDimensions(handle,mipLevel)
  %4166 = extractvalue %dx.types.Dimensions %4165, 0
  %4167 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4166)  ; FirstbitLo(value)
  %4168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.i32 %4168, 1
  %4170 = sub nsw i32 %4169, %4167
  %4171 = sitofp i32 %4170 to float
  %4172 = fsub fast float %4162, %4171
  %4173 = call float @dx.op.binary.f32(i32 35, float %4172, float 0.000000e+00)  ; FMax(a,b)
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4164, %dx.types.Handle %42, float %4135, float %4137, float %4125, float undef, i32 0, i32 0, i32 undef, float %4173)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = fcmp ule float %4175, 0x3FE0101020000000
  %4177 = extractvalue %dx.types.CBufRet.i32 %4168, 0
  %4178 = and i32 %4177, 128
  %4179 = icmp ne i32 %4178, 0
  %4180 = and i1 %4176, %4179
  br i1 %4180, label %4331, label %4181

; <label>:4181                                    ; preds = %4115
  %4182 = add i32 %4116, 20
  %4183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4182, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 0
  %4185 = add i32 %4116, 24
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = add i32 %4116, 40
  %4189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = add i32 %4116, 96
  %4192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.i32 %4192, 0
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4196 = fmul fast float %4195, %4135
  %4197 = fmul fast float %4195, %4137
  %4198 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4199 = fadd fast float %4196, %4198
  %4200 = fadd fast float %4197, %4198
  %4201 = add i32 %4193, 0
  %4202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4201, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4202, i32 0)  ; GetDimensions(handle,mipLevel)
  %4204 = extractvalue %dx.types.Dimensions %4203, 0
  %4205 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4204)  ; FirstbitLo(value)
  %4206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.i32 %4206, 1
  %4208 = sub nsw i32 %4207, %4205
  %4209 = sitofp i32 %4208 to float
  %4210 = fsub fast float %4159, %4209
  %4211 = call float @dx.op.binary.f32(i32 35, float %4210, float 0.000000e+00)  ; FMax(a,b)
  %4212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4202, %dx.types.Handle %42, float %4199, float %4200, float %4190, float undef, i32 0, i32 0, i32 undef, float %4211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = fmul fast float %4213, %4184
  %4215 = fadd fast float %4214, %4187
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.CBufRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.CBufRet.f32 %4216, 2
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4224 = extractvalue %dx.types.CBufRet.f32 %4216, 3
  %4225 = fadd fast float %4221, %4082
  %4226 = fadd fast float %4223, %4083
  %4227 = fadd fast float %4215, %4224
  %4228 = fmul fast float %4225, %4217
  %4229 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4218, float %4228)  ; FMad(a,b,c)
  %4230 = call float @dx.op.tertiary.f32(i32 46, float %4227, float %4219, float %4229)  ; FMad(a,b,c)
  %4231 = fsub fast float %4230, %4224
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 2
  %4234 = fsub fast float %4231, %4233
  %4235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.i32 %4235, 0
  %4237 = call i32 @dx.op.binary.i32(i32 40, i32 %4113, i32 %4236)  ; UMin(a,b)
  %4238 = mul i32 %4237, 36
  %4239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4238, i32 undef)  ; BufferLoad(srv,index,wot)
  %4240 = extractvalue %dx.types.ResRet.i32 %4239, 0
  %4241 = add i32 %4238, 4
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = fmul fast float %4243, %4135
  %4245 = fmul fast float %4243, %4137
  %4246 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4247 = fadd fast float %4244, %4246
  %4248 = fadd fast float %4245, %4246
  %4249 = icmp eq i32 %4240, 0
  br i1 %4249, label %4318, label %4250

; <label>:4250                                    ; preds = %4181
  br label %4251

; <label>:4251                                    ; preds = %4308, %4250
  %4252 = phi float [ %4309, %4308 ], [ 0.000000e+00, %4250 ]
  %4253 = phi float [ %4310, %4308 ], [ 0.000000e+00, %4250 ]
  %4254 = phi float [ %4311, %4308 ], [ 0.000000e+00, %4250 ]
  %4255 = phi float [ %4312, %4308 ], [ 0.000000e+00, %4250 ]
  %4256 = phi float [ %4313, %4308 ], [ 0.000000e+00, %4250 ]
  %4257 = phi float [ %4314, %4308 ], [ 0.000000e+00, %4250 ]
  %4258 = phi i32 [ %4315, %4308 ], [ 0, %4250 ]
  %4259 = shl i32 %4258, 2
  %4260 = add i32 %4126, %4259
  %4261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4260, i32 undef)  ; BufferLoad(srv,index,wot)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = add i32 %4130, %4259
  %4264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.i32 %4264, 0
  %4266 = add i32 %4265, 0
  %4267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4266, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4267, i32 0)  ; GetDimensions(handle,mipLevel)
  %4269 = extractvalue %dx.types.Dimensions %4268, 0
  %4270 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4269)  ; FirstbitLo(value)
  %4271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.i32 %4271, 1
  %4273 = sub nsw i32 %4272, %4270
  %4274 = sitofp i32 %4273 to float
  %4275 = fsub fast float %4159, %4274
  %4276 = call float @dx.op.binary.f32(i32 35, float %4275, float 0.000000e+00)  ; FMax(a,b)
  %4277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4267, %dx.types.Handle %42, float %4247, float %4248, float %4262, float undef, i32 0, i32 0, i32 undef, float %4276)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = fcmp fast ogt float %4278, 0.000000e+00
  br i1 %4279, label %4280, label %4308

; <label>:4280                                    ; preds = %4251
  %4281 = add i32 %4241, %4259
  %4282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.i32 %4282, 0
  %4284 = and i32 %4283, 32767
  %4285 = mul nuw nsw i32 %4284, 928
  %4286 = add nuw nsw i32 %4285, 48
  %4287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = extractvalue %dx.types.ResRet.f32 %4287, 1
  %4290 = extractvalue %dx.types.ResRet.f32 %4287, 2
  %4291 = add nuw nsw i32 %4285, 60
  %4292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.f32 %4292, 1
  %4295 = extractvalue %dx.types.ResRet.f32 %4292, 2
  %4296 = fmul fast float %4288, %4278
  %4297 = fmul fast float %4289, %4278
  %4298 = fmul fast float %4290, %4278
  %4299 = fadd fast float %4296, %4252
  %4300 = fadd fast float %4297, %4253
  %4301 = fadd fast float %4298, %4254
  %4302 = fmul fast float %4293, %4278
  %4303 = fmul fast float %4294, %4278
  %4304 = fmul fast float %4295, %4278
  %4305 = fadd fast float %4302, %4255
  %4306 = fadd fast float %4303, %4256
  %4307 = fadd fast float %4304, %4257
  br label %4308

; <label>:4308                                    ; preds = %4280, %4251
  %4309 = phi float [ %4299, %4280 ], [ %4252, %4251 ]
  %4310 = phi float [ %4300, %4280 ], [ %4253, %4251 ]
  %4311 = phi float [ %4301, %4280 ], [ %4254, %4251 ]
  %4312 = phi float [ %4305, %4280 ], [ %4255, %4251 ]
  %4313 = phi float [ %4306, %4280 ], [ %4256, %4251 ]
  %4314 = phi float [ %4307, %4280 ], [ %4257, %4251 ]
  %4315 = add nuw i32 %4258, 1
  %4316 = icmp eq i32 %4315, %4240
  br i1 %4316, label %4317, label %4251

; <label>:4317                                    ; preds = %4308
  br label %4318

; <label>:4318                                    ; preds = %4317, %4181
  %4319 = phi float [ 0.000000e+00, %4181 ], [ %4309, %4317 ]
  %4320 = phi float [ 0.000000e+00, %4181 ], [ %4310, %4317 ]
  %4321 = phi float [ 0.000000e+00, %4181 ], [ %4311, %4317 ]
  %4322 = phi float [ 0.000000e+00, %4181 ], [ %4312, %4317 ]
  %4323 = phi float [ 0.000000e+00, %4181 ], [ %4313, %4317 ]
  %4324 = phi float [ 0.000000e+00, %4181 ], [ %4314, %4317 ]
  %4325 = fadd fast float %4322, %4319
  %4326 = fmul fast float %4325, 0x3F847AE140000000
  %4327 = fadd fast float %4323, %4320
  %4328 = fmul fast float %4327, 0x3F847AE140000000
  %4329 = fadd fast float %4324, %4321
  %4330 = fmul fast float %4329, 0x3F847AE140000000
  br label %4331

; <label>:4331                                    ; preds = %4318, %4115, %4060, %4057, %4028, %3990
  %4332 = phi float [ %4042, %4028 ], [ -1.310720e+05, %3990 ], [ %4234, %4318 ], [ -1.310720e+05, %4060 ], [ -1.310720e+05, %4115 ], [ -1.310720e+05, %4057 ]
  %4333 = phi float [ %4052, %4028 ], [ 0.000000e+00, %3990 ], [ %4326, %4318 ], [ 0.000000e+00, %4060 ], [ 0.000000e+00, %4115 ], [ 0.000000e+00, %4057 ]
  %4334 = phi float [ %4054, %4028 ], [ 0.000000e+00, %3990 ], [ %4328, %4318 ], [ 0.000000e+00, %4060 ], [ 0.000000e+00, %4115 ], [ 0.000000e+00, %4057 ]
  %4335 = phi float [ %4056, %4028 ], [ 0.000000e+00, %3990 ], [ %4330, %4318 ], [ 0.000000e+00, %4060 ], [ 0.000000e+00, %4115 ], [ 0.000000e+00, %4057 ]
  %4336 = phi i1 [ true, %4028 ], [ false, %3990 ], [ true, %4318 ], [ false, %4060 ], [ false, %4115 ], [ false, %4057 ]
  %4337 = and i32 %238, 3
  %4338 = icmp eq i32 %4337, 1
  %4339 = select i1 %4338, float 1.000000e+00, float 0.000000e+00
  %4340 = fsub fast float %4332, %189
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = select i1 %4336, float %4341, float 1.000000e+00
  %4343 = fmul fast float %4342, %4339
  %4344 = icmp eq i32 %4337, 3
  %4345 = select i1 %4344, float 1.000000e+00, float %4343
  %4346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4345)  ; FMax(a,b)
  %4347 = fcmp fast olt float %4345, 1.000000e+00
  %4348 = fcmp uge float %65, 0.000000e+00
  %4349 = and i1 %4348, %4347
  br i1 %4349, label %4350, label %4360

; <label>:4350                                    ; preds = %4331
  %4351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %42, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4352 = extractvalue %dx.types.ResRet.f32 %4351, 0
  %4353 = extractvalue %dx.types.ResRet.f32 %4351, 1
  %4354 = extractvalue %dx.types.ResRet.f32 %4351, 2
  %4355 = fadd fast float %4352, %4346
  %4356 = fcmp ule float %64, 0.000000e+00
  %4357 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4358 = select i1 %4356, float %4357, float 1.000000e+00
  %4359 = fmul fast float %4358, %4354
  br label %4360

; <label>:4360                                    ; preds = %4350, %4331
  %4361 = phi float [ %4355, %4350 ], [ %4346, %4331 ]
  %4362 = phi float [ %4353, %4350 ], [ 0.000000e+00, %4331 ]
  %4363 = phi float [ %4359, %4350 ], [ 0.000000e+00, %4331 ]
  %4364 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4365 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4366 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4367 = fcmp fast une float %4365, 0.000000e+00
  %4368 = fcmp fast une float %4366, 0.000000e+00
  %4369 = or i1 %4367, %4368
  br i1 %4369, label %4370, label %4929

; <label>:4370                                    ; preds = %4360
  br i1 %4367, label %4371, label %4644

; <label>:4371                                    ; preds = %4370
  %4372 = call float @dx.op.unary.f32(i32 23, float %3855)  ; Log(value)
  %4373 = fmul fast float %4372, 4.000000e+00
  %4374 = call float @dx.op.unary.f32(i32 21, float %4373)  ; Exp(value)
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = fmul fast float %4376, %52
  %4378 = fmul fast float %4376, %53
  %4379 = fmul fast float %4376, %54
  %4380 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4381 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4382 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4383 = call float @dx.op.unary.f32(i32 23, float %4380)  ; Log(value)
  %4384 = call float @dx.op.unary.f32(i32 23, float %4381)  ; Log(value)
  %4385 = call float @dx.op.unary.f32(i32 23, float %4382)  ; Log(value)
  %4386 = fmul fast float %4383, 4.000000e+00
  %4387 = fmul fast float %4384, 4.000000e+00
  %4388 = fmul fast float %4385, 4.000000e+00
  %4389 = call float @dx.op.unary.f32(i32 21, float %4386)  ; Exp(value)
  %4390 = call float @dx.op.unary.f32(i32 21, float %4387)  ; Exp(value)
  %4391 = call float @dx.op.unary.f32(i32 21, float %4388)  ; Exp(value)
  %4392 = fadd fast float %4390, %4389
  %4393 = fadd fast float %4392, %4391
  %4394 = fdiv fast float 1.000000e+00, %4393
  %4395 = fmul fast float %4394, %4389
  %4396 = fcmp fast ogt float %61, 0.000000e+00
  %4397 = fcmp fast ogt float %62, 0.000000e+00
  %4398 = fcmp fast ogt float %63, 0.000000e+00
  %4399 = fcmp fast olt float %61, 0.000000e+00
  %4400 = fcmp fast olt float %62, 0.000000e+00
  %4401 = fcmp fast olt float %63, 0.000000e+00
  %4402 = zext i1 %4396 to i32
  %4403 = zext i1 %4397 to i32
  %4404 = zext i1 %4398 to i32
  %4405 = zext i1 %4399 to i32
  %4406 = zext i1 %4400 to i32
  %4407 = zext i1 %4401 to i32
  %4408 = sub nsw i32 %4402, %4405
  %4409 = sub nsw i32 %4403, %4406
  %4410 = sub nsw i32 %4404, %4407
  %4411 = call float @dx.op.unary.f32(i32 83, float %4377)  ; DerivCoarseX(value)
  %4412 = call float @dx.op.unary.f32(i32 83, float %4378)  ; DerivCoarseX(value)
  %4413 = call float @dx.op.unary.f32(i32 83, float %4379)  ; DerivCoarseX(value)
  %4414 = call float @dx.op.unary.f32(i32 84, float %4377)  ; DerivCoarseY(value)
  %4415 = call float @dx.op.unary.f32(i32 84, float %4378)  ; DerivCoarseY(value)
  %4416 = call float @dx.op.unary.f32(i32 84, float %4379)  ; DerivCoarseY(value)
  %4417 = fcmp fast ole float %270, %4395
  %4418 = fmul fast float %4394, %4392
  %4419 = fcmp fast ole float %270, %4418
  %4420 = select i1 %4419, float %4379, float %4377
  %4421 = select i1 %4419, float %4377, float %4378
  %4422 = select i1 %4417, float %4378, float %4420
  %4423 = select i1 %4417, float %4379, float %4421
  %4424 = select i1 %4419, float %4413, float %4411
  %4425 = select i1 %4419, float %4411, float %4412
  %4426 = select i1 %4417, float %4412, float %4424
  %4427 = select i1 %4417, float %4413, float %4425
  %4428 = select i1 %4419, float %4416, float %4414
  %4429 = select i1 %4419, float %4414, float %4415
  %4430 = select i1 %4417, float %4415, float %4428
  %4431 = select i1 %4417, float %4416, float %4429
  %4432 = call float @dx.op.unary.f32(i32 27, float %4422)  ; Round_ni(value)
  %4433 = call float @dx.op.unary.f32(i32 27, float %4423)  ; Round_ni(value)
  %4434 = fptosi float %4432 to i32
  %4435 = fptosi float %4433 to i32
  %4436 = xor i32 %4435, %4434
  %4437 = sitofp i32 %4436 to float
  %4438 = fptosi float %4437 to i32
  %4439 = sitofp i32 %4438 to float
  %4440 = fmul fast float %4439, 0x3FE3C6EF40000000
  %4441 = frem fast float %4432, 2.560000e+02
  %4442 = frem fast float %4433, 2.560000e+02
  %4443 = fptoui float %4441 to i32
  %4444 = fptoui float %4442 to i32
  %4445 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4443, i32 %4444, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4446 = extractvalue %dx.types.ResRet.f32 %4445, 0
  %4447 = extractvalue %dx.types.ResRet.f32 %4445, 1
  %4448 = extractvalue %dx.types.ResRet.f32 %4445, 2
  %4449 = fadd fast float %4446, %4440
  %4450 = fadd fast float %4447, %4440
  %4451 = fadd fast float %4448, %4440
  %4452 = call float @dx.op.unary.f32(i32 22, float %4449)  ; Frc(value)
  %4453 = call float @dx.op.unary.f32(i32 22, float %4450)  ; Frc(value)
  %4454 = call float @dx.op.unary.f32(i32 22, float %4451)  ; Frc(value)
  %4455 = fmul fast float %4454, 0x401921FB60000000
  %4456 = call float @dx.op.unary.f32(i32 13, float %4455)  ; Sin(value)
  %4457 = call float @dx.op.unary.f32(i32 12, float %4455)  ; Cos(value)
  %4458 = fsub fast float -0.000000e+00, %4457
  %4459 = fmul fast float %4457, %4422
  %4460 = call float @dx.op.tertiary.f32(i32 46, float %4456, float %4423, float %4459)  ; FMad(a,b,c)
  %4461 = fmul fast float %4456, %4422
  %4462 = call float @dx.op.tertiary.f32(i32 46, float %4458, float %4423, float %4461)  ; FMad(a,b,c)
  %4463 = fadd fast float %4460, %4452
  %4464 = fadd fast float %4462, %4453
  %4465 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4466 = bitcast float %4465 to i32
  %4467 = icmp eq i32 %4466, 0
  br i1 %4467, label %4506, label %4468

; <label>:4468                                    ; preds = %4371
  %4469 = add i32 %4466, 0
  %4470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4471 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4470, %dx.types.Handle %97, float %4463, float %4464, float undef, float undef, i32 0, i32 0, i32 undef, float %4426, float %4427, float undef, float %4430, float %4431, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4472 = extractvalue %dx.types.ResRet.f32 %4471, 0
  %4473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4473, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4473, 2
  %4476 = fsub fast float 1.000000e+00, %4365
  %4477 = call float @dx.op.binary.f32(i32 35, float %4476, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4478 = bitcast float %4365 to i32
  %4479 = sitofp i32 %4478 to float
  %4480 = fadd fast float %4479, 0xC1CFBF8940000000
  %4481 = fmul fast float %4475, %4480
  %4482 = fadd fast float %4481, 0x41CFBF8940000000
  %4483 = fptosi float %4482 to i32
  %4484 = bitcast i32 %4483 to float
  %4485 = bitcast float %4477 to i32
  %4486 = sitofp i32 %4485 to float
  %4487 = fadd fast float %4486, 0xC1CFBF8940000000
  %4488 = fmul fast float %4487, %4475
  %4489 = fadd fast float %4488, 0x41CFBF8940000000
  %4490 = fptosi float %4489 to i32
  %4491 = bitcast i32 %4490 to float
  %4492 = fmul fast float %4484, %4474
  %4493 = fmul fast float %4491, %4474
  %4494 = fsub fast float %4477, %4492
  %4495 = fadd fast float %4493, %4477
  %4496 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4498 = fsub fast float %4472, %4496
  %4499 = fsub fast float %4497, %4496
  %4500 = bitcast float %4499 to i32
  %4501 = sub nsw i32 2129859010, %4500
  %4502 = bitcast i32 %4501 to float
  %4503 = fmul fast float %4502, %4498
  %4504 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4505 = fcmp fast olt float %4504, 0x3F70101020000000
  br i1 %4505, label %4644, label %4506

; <label>:4506                                    ; preds = %4468, %4371
  %4507 = phi float [ %4504, %4468 ], [ %4365, %4371 ]
  %4508 = fmul fast float %4507, %4374
  %4509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.i32 %4509, 1
  %4511 = extractvalue %dx.types.CBufRet.i32 %4509, 0
  %4512 = add i32 %4511, 0
  %4513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4514 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4513, %dx.types.Handle %96, float %4463, float %4464, float undef, float undef, i32 0, i32 0, i32 undef, float %4426, float %4427, float undef, float %4430, float %4431, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.ResRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.ResRet.f32 %4514, 2
  %4518 = extractvalue %dx.types.ResRet.f32 %4514, 3
  %4519 = and i32 %4510, 255
  %4520 = uitofp i32 %4519 to float
  %4521 = lshr i32 %4510, 8
  %4522 = and i32 %4521, 255
  %4523 = uitofp i32 %4522 to float
  %4524 = fmul fast float %4518, %4520
  %4525 = fadd fast float %4524, %4523
  %4526 = fmul fast float %4525, 0x3F70101000000000
  %4527 = fadd fast float %4526, 0xBFB99999A0000000
  %4528 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4529 = fmul fast float %4528, 0x3FF1C71C80000000
  %4530 = call float @dx.op.binary.f32(i32 36, float %4526, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4531 = fsub fast float 1.000000e+00, %4529
  %4532 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4533 = fmul fast float %4532, %4515
  %4534 = fmul fast float %4532, %4516
  %4535 = fmul fast float %4532, %4517
  %4536 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4537 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4538 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4539 = fmul fast float %4529, %4515
  %4540 = fmul fast float %4529, %4516
  %4541 = fmul fast float %4529, %4517
  %4542 = fadd fast float %4539, %4530
  %4543 = fadd fast float %4540, %4530
  %4544 = fadd fast float %4541, %4530
  %4545 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4546 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4547 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.i32 %4548, 3
  %4550 = extractvalue %dx.types.CBufRet.i32 %4548, 2
  %4551 = add i32 %4550, 0
  %4552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4553 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4552, %dx.types.Handle %96, float %4463, float %4464, float undef, float undef, i32 0, i32 0, i32 undef, float %4426, float %4427, float undef, float %4430, float %4431, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4557 = extractvalue %dx.types.ResRet.f32 %4553, 3
  %4558 = and i32 %4549, 255
  %4559 = uitofp i32 %4558 to float
  %4560 = lshr i32 %4549, 8
  %4561 = and i32 %4560, 255
  %4562 = uitofp i32 %4561 to float
  %4563 = lshr i32 %4549, 16
  %4564 = and i32 %4563, 255
  %4565 = uitofp i32 %4564 to float
  %4566 = fmul fast float %4565, 0x3F70101000000000
  %4567 = fmul fast float %4554, %4559
  %4568 = fadd fast float %4567, %4562
  %4569 = fmul fast float %4568, 0x3F70101000000000
  %4570 = fadd fast float %4555, -5.000000e-01
  %4571 = fadd fast float %4557, -5.000000e-01
  %4572 = fmul fast float %4570, %4566
  %4573 = fmul fast float %4571, %4566
  %4574 = fadd fast float %4572, 5.000000e-01
  %4575 = fadd fast float %4573, 5.000000e-01
  %4576 = fmul fast float %4574, 2.000000e+00
  %4577 = fadd fast float %4576, -1.000000e+00
  %4578 = fmul fast float %4575, 2.000000e+00
  %4579 = fadd fast float %4578, -1.000000e+00
  %4580 = fadd fast float %4577, %4579
  %4581 = fmul fast float %4580, 5.000000e-01
  %4582 = fsub fast float %4577, %4579
  %4583 = fmul fast float %4582, 5.000000e-01
  %4584 = call float @dx.op.unary.f32(i32 6, float %4581)  ; FAbs(value)
  %4585 = fsub fast float 1.000000e+00, %4584
  %4586 = call float @dx.op.unary.f32(i32 6, float %4583)  ; FAbs(value)
  %4587 = fsub fast float %4585, %4586
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4583, float %4587, float %4581, float %4583, float %4587)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = call float @dx.op.unary.f32(i32 25, float %4588)  ; Rsqrt(value)
  %4590 = fmul fast float %4581, %4589
  %4591 = fmul fast float %4583, %4589
  %4592 = select i1 %4419, i32 %4409, i32 %4410
  %4593 = select i1 %4417, i32 %4408, i32 %4592
  %4594 = sitofp i32 %4593 to float
  %4595 = fmul fast float %4587, %4594
  %4596 = fmul fast float %4595, %4589
  %4597 = select i1 %4419, float %4596, float %4591
  %4598 = select i1 %4419, float %4591, float %4596
  %4599 = select i1 %4417, float %4596, float %4590
  %4600 = select i1 %4417, float %4591, float %4597
  %4601 = select i1 %4417, float %4590, float %4598
  %4602 = fsub fast float %4536, %3969
  %4603 = fsub fast float %4537, %3970
  %4604 = fsub fast float %4538, %3971
  %4605 = fmul fast float %4602, %4508
  %4606 = fmul fast float %4603, %4508
  %4607 = fmul fast float %4604, %4508
  %4608 = fadd fast float %4605, %3969
  %4609 = fadd fast float %4606, %3970
  %4610 = fadd fast float %4607, %3971
  %4611 = fsub fast float %4545, %3951
  %4612 = fsub fast float %4546, %3952
  %4613 = fsub fast float %4547, %3953
  %4614 = fmul fast float %4611, %4508
  %4615 = fmul fast float %4612, %4508
  %4616 = fmul fast float %4613, %4508
  %4617 = fadd fast float %4614, %3951
  %4618 = fadd fast float %4615, %3952
  %4619 = fadd fast float %4616, %3953
  %4620 = fadd fast float %4599, %3930
  %4621 = fadd fast float %4600, %3931
  %4622 = fadd fast float %4601, %3932
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %4620, float %4621, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.unary.f32(i32 25, float %4623)  ; Rsqrt(value)
  %4625 = fmul fast float %4620, %4624
  %4626 = fmul fast float %4621, %4624
  %4627 = fmul fast float %4622, %4624
  %4628 = fsub fast float %4625, %3930
  %4629 = fsub fast float %4626, %3931
  %4630 = fsub fast float %4627, %3932
  %4631 = fmul fast float %4628, %4508
  %4632 = fmul fast float %4629, %4508
  %4633 = fmul fast float %4630, %4508
  %4634 = fadd fast float %4631, %3930
  %4635 = fadd fast float %4632, %3931
  %4636 = fadd fast float %4633, %3932
  %4637 = call float @dx.op.binary.f32(i32 36, float %3855, float %4556)  ; FMin(a,b)
  %4638 = fsub fast float %4637, %3855
  %4639 = fmul fast float %4638, %4508
  %4640 = fadd fast float %4639, %3855
  %4641 = fsub fast float %4569, %3954
  %4642 = fmul fast float %4641, %4508
  %4643 = fadd fast float %4642, %3954
  br label %4644

; <label>:4644                                    ; preds = %4506, %4468, %4370
  %4645 = phi float [ %4617, %4506 ], [ %3951, %4468 ], [ %3951, %4370 ]
  %4646 = phi float [ %4618, %4506 ], [ %3952, %4468 ], [ %3952, %4370 ]
  %4647 = phi float [ %4619, %4506 ], [ %3953, %4468 ], [ %3953, %4370 ]
  %4648 = phi float [ %4608, %4506 ], [ %3969, %4468 ], [ %3969, %4370 ]
  %4649 = phi float [ %4609, %4506 ], [ %3970, %4468 ], [ %3970, %4370 ]
  %4650 = phi float [ %4610, %4506 ], [ %3971, %4468 ], [ %3971, %4370 ]
  %4651 = phi float [ %4634, %4506 ], [ %3930, %4468 ], [ %3930, %4370 ]
  %4652 = phi float [ %4635, %4506 ], [ %3931, %4468 ], [ %3931, %4370 ]
  %4653 = phi float [ %4636, %4506 ], [ %3932, %4468 ], [ %3932, %4370 ]
  %4654 = phi float [ %4643, %4506 ], [ %3954, %4468 ], [ %3954, %4370 ]
  %4655 = phi float [ %4640, %4506 ], [ %3855, %4468 ], [ %3855, %4370 ]
  br i1 %4368, label %4656, label %4929

; <label>:4656                                    ; preds = %4644
  %4657 = call float @dx.op.unary.f32(i32 23, float %4655)  ; Log(value)
  %4658 = fmul fast float %4657, 4.000000e+00
  %4659 = call float @dx.op.unary.f32(i32 21, float %4658)  ; Exp(value)
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4662 = fmul fast float %4661, %52
  %4663 = fmul fast float %4661, %53
  %4664 = fmul fast float %4661, %54
  %4665 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4666 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4667 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4668 = call float @dx.op.unary.f32(i32 23, float %4665)  ; Log(value)
  %4669 = call float @dx.op.unary.f32(i32 23, float %4666)  ; Log(value)
  %4670 = call float @dx.op.unary.f32(i32 23, float %4667)  ; Log(value)
  %4671 = fmul fast float %4668, 4.000000e+00
  %4672 = fmul fast float %4669, 4.000000e+00
  %4673 = fmul fast float %4670, 4.000000e+00
  %4674 = call float @dx.op.unary.f32(i32 21, float %4671)  ; Exp(value)
  %4675 = call float @dx.op.unary.f32(i32 21, float %4672)  ; Exp(value)
  %4676 = call float @dx.op.unary.f32(i32 21, float %4673)  ; Exp(value)
  %4677 = fadd fast float %4675, %4674
  %4678 = fadd fast float %4677, %4676
  %4679 = fdiv fast float 1.000000e+00, %4678
  %4680 = fmul fast float %4679, %4674
  %4681 = fcmp fast ogt float %61, 0.000000e+00
  %4682 = fcmp fast ogt float %62, 0.000000e+00
  %4683 = fcmp fast ogt float %63, 0.000000e+00
  %4684 = fcmp fast olt float %61, 0.000000e+00
  %4685 = fcmp fast olt float %62, 0.000000e+00
  %4686 = fcmp fast olt float %63, 0.000000e+00
  %4687 = zext i1 %4681 to i32
  %4688 = zext i1 %4682 to i32
  %4689 = zext i1 %4683 to i32
  %4690 = zext i1 %4684 to i32
  %4691 = zext i1 %4685 to i32
  %4692 = zext i1 %4686 to i32
  %4693 = sub nsw i32 %4687, %4690
  %4694 = sub nsw i32 %4688, %4691
  %4695 = sub nsw i32 %4689, %4692
  %4696 = call float @dx.op.unary.f32(i32 83, float %4662)  ; DerivCoarseX(value)
  %4697 = call float @dx.op.unary.f32(i32 83, float %4663)  ; DerivCoarseX(value)
  %4698 = call float @dx.op.unary.f32(i32 83, float %4664)  ; DerivCoarseX(value)
  %4699 = call float @dx.op.unary.f32(i32 84, float %4662)  ; DerivCoarseY(value)
  %4700 = call float @dx.op.unary.f32(i32 84, float %4663)  ; DerivCoarseY(value)
  %4701 = call float @dx.op.unary.f32(i32 84, float %4664)  ; DerivCoarseY(value)
  %4702 = fcmp fast ole float %270, %4680
  %4703 = fmul fast float %4679, %4677
  %4704 = fcmp fast ole float %270, %4703
  %4705 = select i1 %4704, float %4664, float %4662
  %4706 = select i1 %4704, float %4662, float %4663
  %4707 = select i1 %4702, float %4663, float %4705
  %4708 = select i1 %4702, float %4664, float %4706
  %4709 = select i1 %4704, float %4698, float %4696
  %4710 = select i1 %4704, float %4696, float %4697
  %4711 = select i1 %4702, float %4697, float %4709
  %4712 = select i1 %4702, float %4698, float %4710
  %4713 = select i1 %4704, float %4701, float %4699
  %4714 = select i1 %4704, float %4699, float %4700
  %4715 = select i1 %4702, float %4700, float %4713
  %4716 = select i1 %4702, float %4701, float %4714
  %4717 = call float @dx.op.unary.f32(i32 27, float %4707)  ; Round_ni(value)
  %4718 = call float @dx.op.unary.f32(i32 27, float %4708)  ; Round_ni(value)
  %4719 = fptosi float %4717 to i32
  %4720 = fptosi float %4718 to i32
  %4721 = xor i32 %4720, %4719
  %4722 = sitofp i32 %4721 to float
  %4723 = fptosi float %4722 to i32
  %4724 = sitofp i32 %4723 to float
  %4725 = fmul fast float %4724, 0x3FE3C6EF40000000
  %4726 = frem fast float %4717, 2.560000e+02
  %4727 = frem fast float %4718, 2.560000e+02
  %4728 = fptoui float %4726 to i32
  %4729 = fptoui float %4727 to i32
  %4730 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4728, i32 %4729, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4731 = extractvalue %dx.types.ResRet.f32 %4730, 0
  %4732 = extractvalue %dx.types.ResRet.f32 %4730, 1
  %4733 = extractvalue %dx.types.ResRet.f32 %4730, 2
  %4734 = fadd fast float %4731, %4725
  %4735 = fadd fast float %4732, %4725
  %4736 = fadd fast float %4733, %4725
  %4737 = call float @dx.op.unary.f32(i32 22, float %4734)  ; Frc(value)
  %4738 = call float @dx.op.unary.f32(i32 22, float %4735)  ; Frc(value)
  %4739 = call float @dx.op.unary.f32(i32 22, float %4736)  ; Frc(value)
  %4740 = fmul fast float %4739, 0x401921FB60000000
  %4741 = call float @dx.op.unary.f32(i32 13, float %4740)  ; Sin(value)
  %4742 = call float @dx.op.unary.f32(i32 12, float %4740)  ; Cos(value)
  %4743 = fsub fast float -0.000000e+00, %4742
  %4744 = fmul fast float %4742, %4707
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4741, float %4708, float %4744)  ; FMad(a,b,c)
  %4746 = fmul fast float %4741, %4707
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %4743, float %4708, float %4746)  ; FMad(a,b,c)
  %4748 = fadd fast float %4745, %4737
  %4749 = fadd fast float %4747, %4738
  %4750 = extractvalue %dx.types.CBufRet.f32 %4660, 3
  %4751 = bitcast float %4750 to i32
  %4752 = icmp eq i32 %4751, 0
  br i1 %4752, label %4791, label %4753

; <label>:4753                                    ; preds = %4656
  %4754 = add i32 %4751, 0
  %4755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4756 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4755, %dx.types.Handle %97, float %4748, float %4749, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4712, float undef, float %4715, float %4716, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4757 = extractvalue %dx.types.ResRet.f32 %4756, 0
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 1
  %4760 = extractvalue %dx.types.CBufRet.f32 %4758, 2
  %4761 = fsub fast float 1.000000e+00, %4366
  %4762 = call float @dx.op.binary.f32(i32 35, float %4761, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4763 = bitcast float %4366 to i32
  %4764 = sitofp i32 %4763 to float
  %4765 = fadd fast float %4764, 0xC1CFBF8940000000
  %4766 = fmul fast float %4760, %4765
  %4767 = fadd fast float %4766, 0x41CFBF8940000000
  %4768 = fptosi float %4767 to i32
  %4769 = bitcast i32 %4768 to float
  %4770 = bitcast float %4762 to i32
  %4771 = sitofp i32 %4770 to float
  %4772 = fadd fast float %4771, 0xC1CFBF8940000000
  %4773 = fmul fast float %4772, %4760
  %4774 = fadd fast float %4773, 0x41CFBF8940000000
  %4775 = fptosi float %4774 to i32
  %4776 = bitcast i32 %4775 to float
  %4777 = fmul fast float %4769, %4759
  %4778 = fmul fast float %4776, %4759
  %4779 = fsub fast float %4762, %4777
  %4780 = fadd fast float %4778, %4762
  %4781 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4783 = fsub fast float %4757, %4781
  %4784 = fsub fast float %4782, %4781
  %4785 = bitcast float %4784 to i32
  %4786 = sub nsw i32 2129859010, %4785
  %4787 = bitcast i32 %4786 to float
  %4788 = fmul fast float %4787, %4783
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4790 = fcmp fast olt float %4789, 0x3F70101020000000
  br i1 %4790, label %4929, label %4791

; <label>:4791                                    ; preds = %4753, %4656
  %4792 = phi float [ %4789, %4753 ], [ %4366, %4656 ]
  %4793 = fmul fast float %4792, %4659
  %4794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.i32 %4794, 1
  %4796 = extractvalue %dx.types.CBufRet.i32 %4794, 0
  %4797 = add i32 %4796, 0
  %4798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4797, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4799 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4798, %dx.types.Handle %96, float %4748, float %4749, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4712, float undef, float %4715, float %4716, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = extractvalue %dx.types.ResRet.f32 %4799, 1
  %4802 = extractvalue %dx.types.ResRet.f32 %4799, 2
  %4803 = extractvalue %dx.types.ResRet.f32 %4799, 3
  %4804 = and i32 %4795, 255
  %4805 = uitofp i32 %4804 to float
  %4806 = lshr i32 %4795, 8
  %4807 = and i32 %4806, 255
  %4808 = uitofp i32 %4807 to float
  %4809 = fmul fast float %4803, %4805
  %4810 = fadd fast float %4809, %4808
  %4811 = fmul fast float %4810, 0x3F70101000000000
  %4812 = fadd fast float %4811, 0xBFB99999A0000000
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = fmul fast float %4813, 0x3FF1C71C80000000
  %4815 = call float @dx.op.binary.f32(i32 36, float %4811, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4816 = fsub fast float 1.000000e+00, %4814
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = fmul fast float %4817, %4800
  %4819 = fmul fast float %4817, %4801
  %4820 = fmul fast float %4817, %4802
  %4821 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4822 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4823 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4824 = fmul fast float %4814, %4800
  %4825 = fmul fast float %4814, %4801
  %4826 = fmul fast float %4814, %4802
  %4827 = fadd fast float %4824, %4815
  %4828 = fadd fast float %4825, %4815
  %4829 = fadd fast float %4826, %4815
  %4830 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4831 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4832 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.i32 %4833, 3
  %4835 = extractvalue %dx.types.CBufRet.i32 %4833, 2
  %4836 = add i32 %4835, 0
  %4837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4838 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4837, %dx.types.Handle %96, float %4748, float %4749, float undef, float undef, i32 0, i32 0, i32 undef, float %4711, float %4712, float undef, float %4715, float %4716, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4839 = extractvalue %dx.types.ResRet.f32 %4838, 0
  %4840 = extractvalue %dx.types.ResRet.f32 %4838, 1
  %4841 = extractvalue %dx.types.ResRet.f32 %4838, 2
  %4842 = extractvalue %dx.types.ResRet.f32 %4838, 3
  %4843 = and i32 %4834, 255
  %4844 = uitofp i32 %4843 to float
  %4845 = lshr i32 %4834, 8
  %4846 = and i32 %4845, 255
  %4847 = uitofp i32 %4846 to float
  %4848 = lshr i32 %4834, 16
  %4849 = and i32 %4848, 255
  %4850 = uitofp i32 %4849 to float
  %4851 = fmul fast float %4850, 0x3F70101000000000
  %4852 = fmul fast float %4839, %4844
  %4853 = fadd fast float %4852, %4847
  %4854 = fmul fast float %4853, 0x3F70101000000000
  %4855 = fadd fast float %4840, -5.000000e-01
  %4856 = fadd fast float %4842, -5.000000e-01
  %4857 = fmul fast float %4855, %4851
  %4858 = fmul fast float %4856, %4851
  %4859 = fadd fast float %4857, 5.000000e-01
  %4860 = fadd fast float %4858, 5.000000e-01
  %4861 = fmul fast float %4859, 2.000000e+00
  %4862 = fadd fast float %4861, -1.000000e+00
  %4863 = fmul fast float %4860, 2.000000e+00
  %4864 = fadd fast float %4863, -1.000000e+00
  %4865 = fadd fast float %4862, %4864
  %4866 = fmul fast float %4865, 5.000000e-01
  %4867 = fsub fast float %4862, %4864
  %4868 = fmul fast float %4867, 5.000000e-01
  %4869 = call float @dx.op.unary.f32(i32 6, float %4866)  ; FAbs(value)
  %4870 = fsub fast float 1.000000e+00, %4869
  %4871 = call float @dx.op.unary.f32(i32 6, float %4868)  ; FAbs(value)
  %4872 = fsub fast float %4870, %4871
  %4873 = call float @dx.op.dot3.f32(i32 55, float %4866, float %4868, float %4872, float %4866, float %4868, float %4872)  ; Dot3(ax,ay,az,bx,by,bz)
  %4874 = call float @dx.op.unary.f32(i32 25, float %4873)  ; Rsqrt(value)
  %4875 = fmul fast float %4866, %4874
  %4876 = fmul fast float %4868, %4874
  %4877 = select i1 %4704, i32 %4694, i32 %4695
  %4878 = select i1 %4702, i32 %4693, i32 %4877
  %4879 = sitofp i32 %4878 to float
  %4880 = fmul fast float %4872, %4879
  %4881 = fmul fast float %4880, %4874
  %4882 = select i1 %4704, float %4881, float %4876
  %4883 = select i1 %4704, float %4876, float %4881
  %4884 = select i1 %4702, float %4881, float %4875
  %4885 = select i1 %4702, float %4876, float %4882
  %4886 = select i1 %4702, float %4875, float %4883
  %4887 = fsub fast float %4821, %4648
  %4888 = fsub fast float %4822, %4649
  %4889 = fsub fast float %4823, %4650
  %4890 = fmul fast float %4887, %4793
  %4891 = fmul fast float %4888, %4793
  %4892 = fmul fast float %4889, %4793
  %4893 = fadd fast float %4890, %4648
  %4894 = fadd fast float %4891, %4649
  %4895 = fadd fast float %4892, %4650
  %4896 = fsub fast float %4830, %4645
  %4897 = fsub fast float %4831, %4646
  %4898 = fsub fast float %4832, %4647
  %4899 = fmul fast float %4896, %4793
  %4900 = fmul fast float %4897, %4793
  %4901 = fmul fast float %4898, %4793
  %4902 = fadd fast float %4899, %4645
  %4903 = fadd fast float %4900, %4646
  %4904 = fadd fast float %4901, %4647
  %4905 = fadd fast float %4884, %4651
  %4906 = fadd fast float %4885, %4652
  %4907 = fadd fast float %4886, %4653
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %4905, float %4906, float %4907)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = call float @dx.op.unary.f32(i32 25, float %4908)  ; Rsqrt(value)
  %4910 = fmul fast float %4905, %4909
  %4911 = fmul fast float %4906, %4909
  %4912 = fmul fast float %4907, %4909
  %4913 = fsub fast float %4910, %4651
  %4914 = fsub fast float %4911, %4652
  %4915 = fsub fast float %4912, %4653
  %4916 = fmul fast float %4913, %4793
  %4917 = fmul fast float %4914, %4793
  %4918 = fmul fast float %4915, %4793
  %4919 = fadd fast float %4916, %4651
  %4920 = fadd fast float %4917, %4652
  %4921 = fadd fast float %4918, %4653
  %4922 = call float @dx.op.binary.f32(i32 36, float %4655, float %4841)  ; FMin(a,b)
  %4923 = fsub fast float %4922, %4655
  %4924 = fmul fast float %4923, %4793
  %4925 = fadd fast float %4924, %4655
  %4926 = fsub fast float %4854, %4654
  %4927 = fmul fast float %4926, %4793
  %4928 = fadd fast float %4927, %4654
  br label %4929

; <label>:4929                                    ; preds = %4791, %4753, %4644, %4360
  %4930 = phi float [ %4902, %4791 ], [ %4645, %4753 ], [ %4645, %4644 ], [ %3951, %4360 ]
  %4931 = phi float [ %4903, %4791 ], [ %4646, %4753 ], [ %4646, %4644 ], [ %3952, %4360 ]
  %4932 = phi float [ %4904, %4791 ], [ %4647, %4753 ], [ %4647, %4644 ], [ %3953, %4360 ]
  %4933 = phi float [ %4893, %4791 ], [ %4648, %4753 ], [ %4648, %4644 ], [ %3969, %4360 ]
  %4934 = phi float [ %4894, %4791 ], [ %4649, %4753 ], [ %4649, %4644 ], [ %3970, %4360 ]
  %4935 = phi float [ %4895, %4791 ], [ %4650, %4753 ], [ %4650, %4644 ], [ %3971, %4360 ]
  %4936 = phi float [ %4919, %4791 ], [ %4651, %4753 ], [ %4651, %4644 ], [ %3930, %4360 ]
  %4937 = phi float [ %4920, %4791 ], [ %4652, %4753 ], [ %4652, %4644 ], [ %3931, %4360 ]
  %4938 = phi float [ %4921, %4791 ], [ %4653, %4753 ], [ %4653, %4644 ], [ %3932, %4360 ]
  %4939 = phi float [ %4928, %4791 ], [ %4654, %4753 ], [ %4654, %4644 ], [ %3954, %4360 ]
  %4940 = phi float [ %4925, %4791 ], [ %4655, %4753 ], [ %4655, %4644 ], [ %3855, %4360 ]
  %4941 = fcmp fast une float %4364, 0.000000e+00
  %4942 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.unary.f32(i32 25, float %4942)  ; Rsqrt(value)
  br i1 %4941, label %4951, label %4944

; <label>:4944                                    ; preds = %4929
  %4945 = fmul fast float %4943, %187
  %4946 = fmul fast float %4943, %188
  %4947 = fmul fast float %4943, %189
  %4948 = fsub fast float -0.000000e+00, %4945
  %4949 = fsub fast float -0.000000e+00, %4946
  %4950 = fsub fast float -0.000000e+00, %4947
  br label %5118

; <label>:4951                                    ; preds = %4929
  %4952 = fmul fast float %187, %4943
  %4953 = fsub fast float -0.000000e+00, %4952
  %4954 = fmul fast float %188, %4943
  %4955 = fsub fast float -0.000000e+00, %4954
  %4956 = fmul fast float %189, %4943
  %4957 = fsub fast float -0.000000e+00, %4956
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4955, float %4957, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = fmul fast float %4364, 2.500000e+00
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = fmul fast float %4364, 0x4013FFFFE0000000
  %4962 = fadd fast float %4961, 0xBFFFFFFFE0000000
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4364, 0x4004000020000000
  %4965 = fadd fast float %4964, 0xBFF8000040000000
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = fmul fast float %3933, 1.000000e+01
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = fmul fast float %4968, 2.000000e+00
  %4970 = fsub fast float 3.000000e+00, %4969
  %4971 = fmul fast float %4968, %4968
  %4972 = fmul fast float %4971, %4970
  %4973 = fsub fast float 1.000000e+00, %4972
  %4974 = fsub fast float 0x3FE3333340000000, %4939
  %4975 = fmul fast float %4974, 0x400AAAAAA0000000
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fmul fast float %4973, %4976
  %4978 = fmul fast float %4933, 0x3FEA2B8620000000
  %4979 = fmul fast float %4934, 0x3FEA2B8620000000
  %4980 = fmul fast float %4935, 0x3FEA2B8620000000
  %4981 = fadd fast float %4978, 0x3FC81DFBA0000000
  %4982 = fmul fast float %4981, %4933
  %4983 = fadd fast float %4982, 0x3F910E6020000000
  %4984 = fadd fast float %4979, 0x3FC81DFBA0000000
  %4985 = fmul fast float %4984, %4934
  %4986 = fadd fast float %4985, 0x3F910E6020000000
  %4987 = fadd fast float %4980, 0x3FC81DFBA0000000
  %4988 = fmul fast float %4987, %4935
  %4989 = fadd fast float %4988, 0x3F910E6020000000
  %4990 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = fsub fast float %4990, %4933
  %4994 = fsub fast float %4991, %4934
  %4995 = fsub fast float %4992, %4935
  %4996 = fmul fast float %4993, %4960
  %4997 = fmul fast float %4996, %4977
  %4998 = fmul fast float %4994, %4960
  %4999 = fmul fast float %4998, %4977
  %5000 = fmul fast float %4995, %4960
  %5001 = fmul fast float %5000, %4977
  %5002 = fadd fast float %4997, %4933
  %5003 = fadd fast float %4999, %4934
  %5004 = fadd fast float %5001, %4935
  %5005 = fmul fast float %4940, %4940
  %5006 = fmul fast float %5005, %5005
  %5007 = fadd fast float %4963, 1.000000e+00
  %5008 = fsub fast float %5007, %4977
  %5009 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5010 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5011 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5012 = fsub fast float 1.000000e+00, %5006
  %5013 = call float @dx.op.binary.f32(i32 36, float %5009, float %5012)  ; FMin(a,b)
  %5014 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %5015 = call float @dx.op.binary.f32(i32 35, float %5013, float %5014)  ; FMax(a,b)
  %5016 = fadd fast float %5011, 0xBFE4CCCCC0000000
  %5017 = fmul fast float %5016, 0x4006DB6DA0000000
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fmul fast float %5018, 2.000000e+00
  %5020 = fsub fast float 3.000000e+00, %5019
  %5021 = bitcast float %4930 to i32
  %5022 = ashr i32 %5021, 1
  %5023 = add nsw i32 %5022, 532487669
  %5024 = bitcast i32 %5023 to float
  %5025 = fsub fast float 1.000000e+00, %5024
  %5026 = bitcast float %5025 to i32
  %5027 = sub nsw i32 2129859010, %5026
  %5028 = bitcast i32 %5027 to float
  %5029 = fmul fast float %5028, 2.000000e+00
  %5030 = bitcast float %4931 to i32
  %5031 = ashr i32 %5030, 1
  %5032 = add nsw i32 %5031, 532487669
  %5033 = bitcast i32 %5032 to float
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = bitcast float %5034 to i32
  %5036 = sub nsw i32 2129859010, %5035
  %5037 = bitcast i32 %5036 to float
  %5038 = fmul fast float %5037, 2.000000e+00
  %5039 = bitcast float %4932 to i32
  %5040 = ashr i32 %5039, 1
  %5041 = add nsw i32 %5040, 532487669
  %5042 = bitcast i32 %5041 to float
  %5043 = fsub fast float 1.000000e+00, %5042
  %5044 = bitcast float %5043 to i32
  %5045 = sub nsw i32 2129859010, %5044
  %5046 = bitcast i32 %5045 to float
  %5047 = fmul fast float %5046, 2.000000e+00
  %5048 = fsub fast float 0x4002A9FBE0000000, %5029
  %5049 = fadd fast float %5029, 0x3FD54FDF00000000
  %5050 = bitcast float %5049 to i32
  %5051 = sub nsw i32 2129859010, %5050
  %5052 = bitcast i32 %5051 to float
  %5053 = fmul fast float %5052, %5048
  %5054 = fmul fast float %5053, %5053
  %5055 = fsub fast float 0x4002A9FBE0000000, %5038
  %5056 = fadd fast float %5038, 0x3FD54FDF00000000
  %5057 = bitcast float %5056 to i32
  %5058 = sub nsw i32 2129859010, %5057
  %5059 = bitcast i32 %5058 to float
  %5060 = fmul fast float %5059, %5055
  %5061 = fmul fast float %5060, %5060
  %5062 = fsub fast float 0x4002A9FBE0000000, %5047
  %5063 = fadd fast float %5047, 0x3FD54FDF00000000
  %5064 = bitcast float %5063 to i32
  %5065 = sub nsw i32 2129859010, %5064
  %5066 = bitcast i32 %5065 to float
  %5067 = fmul fast float %5066, %5062
  %5068 = fmul fast float %5067, %5067
  %5069 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5054)  ; FMax(a,b)
  %5070 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5061)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5068)  ; FMax(a,b)
  %5072 = fsub fast float 1.000000e+00, %4958
  %5073 = fadd fast float %5072, %4973
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fsub fast float 1.000000e+00, %4345
  %5076 = fmul fast float %5015, %5075
  %5077 = fmul fast float %5018, %5018
  %5078 = fmul fast float %5077, %5076
  %5079 = fmul fast float %5078, %5020
  %5080 = fmul fast float %5075, 0xBFE99999A0000000
  %5081 = fmul fast float %5080, %4960
  %5082 = fmul fast float %5081, %4977
  %5083 = fadd fast float %5082, 1.000000e+00
  %5084 = fadd fast float %4939, -1.000000e+00
  %5085 = fmul fast float %5083, %5084
  %5086 = fadd fast float %5085, 1.000000e+00
  %5087 = fsub fast float %5069, %4930
  %5088 = fsub fast float %5070, %4931
  %5089 = fsub fast float %5071, %4932
  %5090 = fmul fast float %5079, %5087
  %5091 = fmul fast float %5079, %5088
  %5092 = fmul fast float %5079, %5089
  %5093 = fadd fast float %5090, %4930
  %5094 = fadd fast float %5091, %4931
  %5095 = fadd fast float %5092, %4932
  %5096 = fsub fast float %107, %4936
  %5097 = fsub fast float %108, %4937
  %5098 = fsub fast float %109, %4938
  %5099 = fmul fast float %5079, %5096
  %5100 = fmul fast float %5079, %5097
  %5101 = fmul fast float %5079, %5098
  %5102 = fadd fast float %5099, %4936
  %5103 = fadd fast float %5100, %4937
  %5104 = fadd fast float %5101, %4938
  %5105 = fmul fast float %5079, %5074
  %5106 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5107 = fsub fast float 1.000000e+00, %5106
  %5108 = fmul fast float %5105, %5107
  %5109 = fadd fast float %5108, %5106
  %5110 = fsub fast float 1.000000e+00, %4940
  %5111 = fmul fast float %5079, %5110
  %5112 = fadd fast float %5111, %4940
  %5113 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5102, float %5103, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = call float @dx.op.unary.f32(i32 25, float %5113)  ; Rsqrt(value)
  %5115 = fmul fast float %5102, %5114
  %5116 = fmul fast float %5103, %5114
  %5117 = fmul fast float %5104, %5114
  br label %5118

; <label>:5118                                    ; preds = %4951, %4944
  %5119 = phi float [ %4950, %4944 ], [ %4957, %4951 ]
  %5120 = phi float [ %4949, %4944 ], [ %4955, %4951 ]
  %5121 = phi float [ %4948, %4944 ], [ %4953, %4951 ]
  %5122 = phi float [ %4947, %4944 ], [ %4956, %4951 ]
  %5123 = phi float [ %4946, %4944 ], [ %4954, %4951 ]
  %5124 = phi float [ %4945, %4944 ], [ %4952, %4951 ]
  %5125 = phi float [ %4930, %4944 ], [ %5093, %4951 ]
  %5126 = phi float [ %4931, %4944 ], [ %5094, %4951 ]
  %5127 = phi float [ %4932, %4944 ], [ %5095, %4951 ]
  %5128 = phi float [ %4933, %4944 ], [ %5002, %4951 ]
  %5129 = phi float [ %4934, %4944 ], [ %5003, %4951 ]
  %5130 = phi float [ %4935, %4944 ], [ %5004, %4951 ]
  %5131 = phi float [ %4936, %4944 ], [ %5115, %4951 ]
  %5132 = phi float [ %4937, %4944 ], [ %5116, %4951 ]
  %5133 = phi float [ %4938, %4944 ], [ %5117, %4951 ]
  %5134 = phi float [ %4939, %4944 ], [ %5109, %4951 ]
  %5135 = phi float [ %4940, %4944 ], [ %5112, %4951 ]
  %5136 = fsub fast float -0.000000e+00, %189
  %5137 = select i1 %259, float 0.000000e+00, float %5127
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5121, float %5120, float %5119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5124, float %5123, float %5122, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = fmul fast float %5140, 2.000000e+00
  %5142 = fmul fast float %5141, %5131
  %5143 = fmul fast float %5141, %5132
  %5144 = fmul fast float %5141, %5133
  %5145 = fsub fast float %5124, %5142
  %5146 = fsub fast float %5123, %5143
  %5147 = fsub fast float %5122, %5144
  %5148 = call float @dx.op.binary.f32(i32 36, float %5135, float 1.000000e+00)  ; FMin(a,b)
  %5149 = fsub fast float 1.000000e+00, %5135
  %5150 = bitcast float %5149 to i32
  %5151 = sub nsw i32 2129859010, %5150
  %5152 = bitcast i32 %5151 to float
  %5153 = fsub fast float 1.000000e+00, %71
  %5154 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.binary.f32(i32 35, float %5154, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5156 = fdiv fast float %5153, %5155
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = fmul fast float %5158, 5.000000e-01
  %5160 = fadd fast float %5159, 5.000000e-01
  %5161 = fmul fast float %5160, %71
  %5162 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = fmul fast float %5163, %5156
  %5165 = fadd fast float %5161, %5164
  %5166 = fsub fast float 5.000000e-01, %5159
  %5167 = fmul fast float %5166, %5128
  %5168 = fmul fast float %5166, %5129
  %5169 = fmul fast float %5166, %5130
  %5170 = fadd fast float %5165, %5167
  %5171 = fadd fast float %5165, %5168
  %5172 = fadd fast float %5165, %5169
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = fmul fast float %5174, 5.000000e-01
  %5176 = fadd fast float %5175, 5.000000e-01
  %5177 = fmul fast float %5176, %71
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fmul fast float %5179, %5156
  %5181 = fadd fast float %5177, %5180
  %5182 = fsub fast float 5.000000e-01, %5175
  %5183 = fmul fast float %5182, %5128
  %5184 = fmul fast float %5182, %5129
  %5185 = fmul fast float %5182, %5130
  %5186 = fadd fast float %5181, %5183
  %5187 = fadd fast float %5181, %5184
  %5188 = fadd fast float %5181, %5185
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 0
  %5191 = call float @dx.op.binary.f32(i32 36, float %5128, float %5190)  ; FMin(a,b)
  %5192 = fsub fast float 1.000000e+00, %5148
  %5193 = fmul fast float %5191, %5192
  %5194 = fsub fast float 1.000000e+00, %5193
  %5195 = bitcast float %5194 to i32
  %5196 = sub nsw i32 2129859010, %5195
  %5197 = bitcast i32 %5196 to float
  %5198 = call float @dx.op.binary.f32(i32 36, float %5129, float %5190)  ; FMin(a,b)
  %5199 = fmul fast float %5198, %5192
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = bitcast float %5200 to i32
  %5202 = sub nsw i32 2129859010, %5201
  %5203 = bitcast i32 %5202 to float
  %5204 = call float @dx.op.binary.f32(i32 36, float %5130, float %5190)  ; FMin(a,b)
  %5205 = fmul fast float %5204, %5192
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = bitcast float %5206 to i32
  %5208 = sub nsw i32 2129859010, %5207
  %5209 = bitcast i32 %5208 to float
  %5210 = fmul fast float %5148, %72
  %5211 = fmul fast float %5210, %5170
  %5212 = fmul fast float %5211, %5197
  %5213 = fmul fast float %5148, %73
  %5214 = fmul fast float %5213, %5171
  %5215 = fmul fast float %5214, %5203
  %5216 = fmul fast float %5148, %74
  %5217 = fmul fast float %5216, %5172
  %5218 = fmul fast float %5217, %5209
  %5219 = call float @dx.op.binary.f32(i32 36, float %5125, float %5190)  ; FMin(a,b)
  %5220 = fmul fast float %5219, %5192
  %5221 = fsub fast float 1.000000e+00, %5220
  %5222 = bitcast float %5221 to i32
  %5223 = sub nsw i32 2129859010, %5222
  %5224 = bitcast i32 %5223 to float
  %5225 = call float @dx.op.binary.f32(i32 36, float %5126, float %5190)  ; FMin(a,b)
  %5226 = fmul fast float %5225, %5192
  %5227 = fsub fast float 1.000000e+00, %5226
  %5228 = bitcast float %5227 to i32
  %5229 = sub nsw i32 2129859010, %5228
  %5230 = bitcast i32 %5229 to float
  %5231 = call float @dx.op.binary.f32(i32 36, float %5137, float %5190)  ; FMin(a,b)
  %5232 = fmul fast float %5231, %5192
  %5233 = fsub fast float 1.000000e+00, %5232
  %5234 = bitcast float %5233 to i32
  %5235 = sub nsw i32 2129859010, %5234
  %5236 = bitcast i32 %5235 to float
  %5237 = fmul fast float %5210, %5186
  %5238 = fmul fast float %5237, %5224
  %5239 = fmul fast float %5213, %5187
  %5240 = fmul fast float %5239, %5230
  %5241 = fmul fast float %5216, %5188
  %5242 = fmul fast float %5241, %5236
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5215, float %5218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = select i1 %259, float 0.000000e+00, float %5212
  %5245 = select i1 %259, float %5243, float %5215
  %5246 = select i1 %259, float 0.000000e+00, float %5218
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5240, float %5242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = select i1 %259, float 0.000000e+00, float %5238
  %5249 = select i1 %259, float %5247, float %5240
  %5250 = select i1 %259, float 0.000000e+00, float %5242
  %5251 = fmul fast float %3856, %3856
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = fmul fast float %5139, 9.843750e-01
  %5254 = fmul fast float %5134, 9.843750e-01
  %5255 = fadd fast float %5253, 7.812500e-03
  %5256 = fadd fast float %5254, 7.812500e-03
  %5257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %5255, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.ResRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.ResRet.f32 %5257, 3
  %5262 = fsub fast float 1.000000e+00, %5252
  %5263 = fsub fast float %5260, %5258
  %5264 = fsub fast float %5261, %5259
  %5265 = fmul fast float %5263, %5262
  %5266 = fmul fast float %5264, %5262
  %5267 = fadd fast float %5265, %5258
  %5268 = fadd fast float %5266, %5259
  %5269 = fmul fast float %5267, %5125
  %5270 = fmul fast float %5267, %5126
  %5271 = fmul fast float %5267, %5137
  %5272 = fadd fast float %5269, %5268
  %5273 = fadd fast float %5270, %5268
  %5274 = fadd fast float %5271, %5268
  %5275 = call float @dx.op.binary.f32(i32 35, float %5273, float %5274)  ; FMax(a,b)
  %5276 = call float @dx.op.binary.f32(i32 35, float %5272, float %5275)  ; FMax(a,b)
  %5277 = fsub fast float 1.000000e+00, %5276
  %5278 = fmul fast float %5277, %5244
  %5279 = fmul fast float %5277, %5245
  %5280 = fmul fast float %5277, %5246
  %5281 = call float @dx.op.binary.f32(i32 35, float %5139, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5282 = fdiv fast float %3856, %5281
  %5283 = fcmp fast olt float %3955, 1.270000e+02
  %5284 = fcmp fast olt float %3956, 1.270000e+02
  %5285 = fcmp fast olt float %3957, 1.270000e+02
  %5286 = fmul fast float %3955, 0xBFF7154760000000
  %5287 = fmul fast float %5286, %5282
  %5288 = fmul fast float %3956, 0xBFF7154760000000
  %5289 = fmul fast float %5288, %5282
  %5290 = fmul fast float %3957, 0xBFF7154760000000
  %5291 = fmul fast float %5290, %5282
  %5292 = call float @dx.op.unary.f32(i32 21, float %5287)  ; Exp(value)
  %5293 = call float @dx.op.unary.f32(i32 21, float %5289)  ; Exp(value)
  %5294 = call float @dx.op.unary.f32(i32 21, float %5291)  ; Exp(value)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5296 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5298 = select i1 %5283, float %5295, float 0.000000e+00
  %5299 = select i1 %5284, float %5296, float 0.000000e+00
  %5300 = select i1 %5285, float %5297, float 0.000000e+00
  %5301 = fmul fast float %5298, %5277
  %5302 = fmul fast float %5299, %5277
  %5303 = fmul fast float %5300, %5277
  %5304 = fadd fast float %5301, -1.000000e+00
  %5305 = fadd fast float %5302, -1.000000e+00
  %5306 = fadd fast float %5303, -1.000000e+00
  %5307 = fmul fast float %5272, %5248
  %5308 = fmul fast float %5273, %5249
  %5309 = fmul fast float %5274, %5250
  %5310 = fmul fast float %5278, %1204
  %5311 = fmul fast float %5279, %1204
  %5312 = fmul fast float %5280, %1204
  %5313 = fadd fast float %5307, %3900
  %5314 = fmul fast float %5313, %1204
  %5315 = fadd fast float %5308, %3902
  %5316 = fmul fast float %5315, %1204
  %5317 = fadd fast float %5309, %3904
  %5318 = fmul fast float %5317, %1204
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5321 = fcmp fast oeq float %5320, 0.000000e+00
  br i1 %5321, label %6349, label %5322

; <label>:5322                                    ; preds = %5118
  %5323 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5324 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5325 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.CBufRet.f32 %5326, 2
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5327, float %5328, float %5329, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = select i1 %259, float %5331, float %5327
  %5335 = select i1 %259, float %5333, float %5328
  %5336 = select i1 %259, float %5332, float %5329
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 2
  %5339 = fmul fast float %5338, %107
  %5340 = fmul fast float %5338, %108
  %5341 = fmul fast float %5338, %109
  %5342 = fadd fast float %5339, %187
  %5343 = fadd fast float %5340, %188
  %5344 = fadd fast float %5341, %189
  %5345 = fcmp fast olt float %5320, 0.000000e+00
  br i1 %5345, label %5985, label %5346

; <label>:5346                                    ; preds = %5322
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.CBufRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.CBufRet.f32 %5347, 2
  %5351 = extractvalue %dx.types.CBufRet.f32 %5347, 3
  %5352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5352, 0
  %5354 = extractvalue %dx.types.CBufRet.f32 %5352, 1
  %5355 = extractvalue %dx.types.CBufRet.f32 %5352, 2
  %5356 = extractvalue %dx.types.CBufRet.f32 %5352, 3
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.CBufRet.f32 %5357, 1
  %5360 = extractvalue %dx.types.CBufRet.f32 %5357, 2
  %5361 = extractvalue %dx.types.CBufRet.f32 %5357, 3
  %5362 = fmul fast float %5348, %5342
  %5363 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5349, float %5362)  ; FMad(a,b,c)
  %5364 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5350, float %5363)  ; FMad(a,b,c)
  %5365 = fadd fast float %5364, %5351
  %5366 = fmul fast float %5353, %5342
  %5367 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5354, float %5366)  ; FMad(a,b,c)
  %5368 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5355, float %5367)  ; FMad(a,b,c)
  %5369 = fadd fast float %5368, %5356
  %5370 = fmul fast float %5358, %5342
  %5371 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5359, float %5370)  ; FMad(a,b,c)
  %5372 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5360, float %5371)  ; FMad(a,b,c)
  %5373 = fadd fast float %5372, %5361
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = fcmp fast une float %5375, 0.000000e+00
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.CBufRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.CBufRet.f32 %5377, 3
  %5381 = fmul fast float %5380, %5365
  %5382 = fmul fast float %5380, %5369
  %5383 = fadd fast float %5381, %5378
  %5384 = fadd fast float %5382, %5379
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.CBufRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.CBufRet.f32 %5385, 3
  %5389 = fmul fast float %5388, %5365
  %5390 = fmul fast float %5388, %5369
  %5391 = fadd fast float %5389, %5386
  %5392 = fadd fast float %5390, %5387
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 1
  %5395 = fsub fast float %5394, %5373
  %5396 = extractvalue %dx.types.CBufRet.f32 %5393, 2
  %5397 = fmul fast float %5395, %5396
  %5398 = fsub fast float 1.000000e+00, %5397
  %5399 = call float @dx.op.unary.f32(i32 7, float %5398)  ; Saturate(value)
  br i1 %5376, label %5460, label %5400

; <label>:5400                                    ; preds = %5346
  %5401 = extractvalue %dx.types.CBufRet.f32 %5385, 2
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 2
  %5404 = fadd fast float %5403, %5401
  %5405 = fcmp fast ogt float %5404, 0.000000e+00
  br i1 %5405, label %5406, label %5430

; <label>:5406                                    ; preds = %5400
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.CBufRet.f32 %5407, 1
  %5410 = fsub fast float %5391, %5408
  %5411 = fsub fast float %5392, %5409
  %5412 = fcmp fast olt float %5410, 0.000000e+00
  %5413 = fcmp fast olt float %5411, 0.000000e+00
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.CBufRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.CBufRet.f32 %5414, 2
  %5418 = extractvalue %dx.types.CBufRet.f32 %5414, 3
  %5419 = select i1 %5412, float %5415, float %5417
  %5420 = select i1 %5413, float %5416, float %5418
  %5421 = fmul fast float %5419, %5410
  %5422 = fmul fast float %5420, %5411
  %5423 = call float @dx.op.unary.f32(i32 6, float %5421)  ; FAbs(value)
  %5424 = call float @dx.op.unary.f32(i32 6, float %5422)  ; FAbs(value)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5426 = call float @dx.op.binary.f32(i32 35, float %5423, float %5424)  ; FMax(a,b)
  %5427 = fsub fast float %5425, %5426
  %5428 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5429 = fmul fast float %5428, %5399
  br label %5430

; <label>:5430                                    ; preds = %5406, %5400
  %5431 = phi float [ %5429, %5406 ], [ 0.000000e+00, %5400 ]
  %5432 = extractvalue %dx.types.CBufRet.f32 %5377, 2
  %5433 = extractvalue %dx.types.CBufRet.f32 %5402, 1
  %5434 = fadd fast float %5433, %5432
  %5435 = fcmp fast ogt float %5434, 0.000000e+00
  br i1 %5435, label %5436, label %5460

; <label>:5436                                    ; preds = %5430
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5440 = fsub fast float %5383, %5438
  %5441 = fsub fast float %5384, %5439
  %5442 = fcmp fast olt float %5440, 0.000000e+00
  %5443 = fcmp fast olt float %5441, 0.000000e+00
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5447 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5448 = extractvalue %dx.types.CBufRet.f32 %5444, 3
  %5449 = select i1 %5442, float %5445, float %5447
  %5450 = select i1 %5443, float %5446, float %5448
  %5451 = fmul fast float %5449, %5440
  %5452 = fmul fast float %5450, %5441
  %5453 = call float @dx.op.unary.f32(i32 6, float %5451)  ; FAbs(value)
  %5454 = call float @dx.op.unary.f32(i32 6, float %5452)  ; FAbs(value)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5456 = call float @dx.op.binary.f32(i32 35, float %5453, float %5454)  ; FMax(a,b)
  %5457 = fsub fast float %5455, %5456
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = fmul fast float %5458, %5399
  br label %5460

; <label>:5460                                    ; preds = %5436, %5430, %5346
  %5461 = phi float [ 0.000000e+00, %5346 ], [ %5459, %5436 ], [ 0.000000e+00, %5430 ]
  %5462 = phi float [ 0.000000e+00, %5346 ], [ %5431, %5436 ], [ %5431, %5430 ]
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 1
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.CBufRet.f32 %5466, 1
  %5469 = fsub fast float %5365, %5467
  %5470 = fsub fast float %5369, %5468
  %5471 = fcmp fast olt float %5469, 0.000000e+00
  %5472 = fcmp fast olt float %5470, 0.000000e+00
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 0
  %5475 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5476 = extractvalue %dx.types.CBufRet.f32 %5473, 2
  %5477 = extractvalue %dx.types.CBufRet.f32 %5473, 3
  %5478 = select i1 %5471, float %5474, float %5476
  %5479 = select i1 %5472, float %5475, float %5477
  %5480 = fmul fast float %5478, %5469
  %5481 = fmul fast float %5479, %5470
  %5482 = call float @dx.op.unary.f32(i32 6, float %5480)  ; FAbs(value)
  %5483 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5485 = call float @dx.op.binary.f32(i32 35, float %5482, float %5483)  ; FMax(a,b)
  %5486 = fsub fast float %5484, %5485
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5488 = call float @dx.op.binary.f32(i32 36, float %5487, float %5465)  ; FMin(a,b)
  %5489 = fmul fast float %5488, %5399
  %5490 = fsub fast float %5461, %5489
  %5491 = fsub fast float %5462, %5461
  %5492 = fsub fast float %5491, %5489
  %5493 = call float @dx.op.binary.f32(i32 35, float %5461, float %5462)  ; FMax(a,b)
  %5494 = call float @dx.op.binary.f32(i32 35, float %5489, float %5493)  ; FMax(a,b)
  %5495 = fcmp fast olt float %5494, 1.000000e+00
  br i1 %5495, label %5496, label %5894, !dx.controlflow.hints !92

; <label>:5496                                    ; preds = %5460
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5499 = fcmp fast une float %5498, 0.000000e+00
  br i1 %5499, label %5500, label %5894, !dx.controlflow.hints !93

; <label>:5500                                    ; preds = %5496
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.CBufRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.CBufRet.f32 %5501, 2
  %5505 = extractvalue %dx.types.CBufRet.f32 %5501, 3
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 0
  %5508 = extractvalue %dx.types.CBufRet.f32 %5506, 1
  %5509 = extractvalue %dx.types.CBufRet.f32 %5506, 2
  %5510 = extractvalue %dx.types.CBufRet.f32 %5506, 3
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5514 = extractvalue %dx.types.CBufRet.f32 %5511, 2
  %5515 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5516 = fmul fast float %5502, %5342
  %5517 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5503, float %5516)  ; FMad(a,b,c)
  %5518 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5504, float %5517)  ; FMad(a,b,c)
  %5519 = fadd fast float %5518, %5505
  %5520 = fmul fast float %5507, %5342
  %5521 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5508, float %5520)  ; FMad(a,b,c)
  %5522 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5509, float %5521)  ; FMad(a,b,c)
  %5523 = fadd fast float %5522, %5510
  %5524 = fmul fast float %5512, %5342
  %5525 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5513, float %5524)  ; FMad(a,b,c)
  %5526 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5514, float %5525)  ; FMad(a,b,c)
  %5527 = fadd fast float %5526, %5515
  %5528 = fcmp fast oge float %5519, 1.000000e+00
  %5529 = fcmp fast oge float %5523, 1.000000e+00
  %5530 = or i1 %5528, %5529
  %5531 = fcmp fast olt float %5519, 0.000000e+00
  %5532 = fcmp fast olt float %5523, 0.000000e+00
  %5533 = or i1 %5531, %5532
  %5534 = or i1 %5530, %5533
  br i1 %5534, label %5894, label %5535, !dx.controlflow.hints !94

; <label>:5535                                    ; preds = %5500
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5539 = extractvalue %dx.types.CBufRet.f32 %5536, 2
  %5540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.i32 %5540, 2
  %5542 = uitofp i32 %5541 to float
  %5543 = extractvalue %dx.types.CBufRet.i32 %5540, 3
  %5544 = uitofp i32 %5543 to float
  %5545 = extractvalue %dx.types.CBufRet.f32 %5536, 3
  %5546 = fmul fast float %5545, 2.000000e+00
  %5547 = fsub fast float %5519, %5537
  %5548 = fsub fast float %5523, %5538
  %5549 = fmul fast float %5546, %5547
  %5550 = fmul fast float %5546, %5548
  %5551 = fdiv fast float 1.000000e+00, %5325
  %5552 = fmul fast float %5550, %5551
  %5553 = call float @dx.op.unary.f32(i32 6, float %5552)  ; FAbs(value)
  %5554 = fmul fast float %5539, %5344
  %5555 = fmul fast float %5554, %5546
  %5556 = call float @dx.op.unary.f32(i32 6, float %5555)  ; FAbs(value)
  %5557 = call float @dx.op.unary.f32(i32 6, float %5549)  ; FAbs(value)
  %5558 = call float @dx.op.binary.f32(i32 35, float %5556, float %5553)  ; FMax(a,b)
  %5559 = call float @dx.op.binary.f32(i32 35, float %5557, float %5558)  ; FMax(a,b)
  %5560 = fmul fast float %5559, 2.000000e+00
  %5561 = call float @dx.op.unary.f32(i32 23, float %5560)  ; Log(value)
  %5562 = call float @dx.op.binary.f32(i32 35, float %5561, float %5542)  ; FMax(a,b)
  %5563 = call float @dx.op.unary.f32(i32 22, float %5562)  ; Frc(value)
  %5564 = fadd fast float %5563, 0xBFEA666660000000
  %5565 = fmul fast float %5564, 8.000000e+00
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = call float @dx.op.unary.f32(i32 27, float %5562)  ; Round_ni(value)
  %5568 = fadd fast float %5567, %5566
  %5569 = call float @dx.op.binary.f32(i32 36, float %5568, float %5544)  ; FMin(a,b)
  %5570 = call float @dx.op.unary.f32(i32 27, float %5569)  ; Round_ni(value)
  %5571 = fsub fast float -0.000000e+00, %5570
  %5572 = call float @dx.op.unary.f32(i32 21, float %5571)  ; Exp(value)
  %5573 = fmul fast float %5572, %5546
  %5574 = fmul fast float %5573, %5519
  %5575 = fmul fast float %5573, %5523
  %5576 = fmul fast float %5574, 2.500000e-01
  %5577 = fmul fast float %5575, 2.500000e-01
  %5578 = fadd fast float %5576, 5.000000e-01
  %5579 = fadd fast float %5577, 5.000000e-01
  %5580 = fsub fast float %5544, %5542
  %5581 = fptoui float %5580 to i32
  %5582 = add i32 %5581, 320
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %5582)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5586 = fcmp fast une float %5569, %5544
  %5587 = fsub fast float %5519, %5584
  %5588 = fsub fast float %5523, %5585
  %5589 = call float @dx.op.unary.f32(i32 6, float %5587)  ; FAbs(value)
  %5590 = call float @dx.op.unary.f32(i32 6, float %5588)  ; FAbs(value)
  %5591 = fmul fast float %5589, %5573
  %5592 = fmul fast float %5590, %5573
  %5593 = fcmp fast olt float %5591, 1.000000e+00
  %5594 = fcmp fast olt float %5592, 1.000000e+00
  %5595 = and i1 %5593, %5594
  %5596 = or i1 %5586, %5595
  br i1 %5596, label %5597, label %5894, !dx.controlflow.hints !95

; <label>:5597                                    ; preds = %5535
  %5598 = fmul fast float %5575, 5.000000e-01
  %5599 = fmul fast float %5574, 5.000000e-01
  %5600 = fadd fast float %5598, 5.000000e-01
  %5601 = fadd fast float %5599, 5.000000e-01
  %5602 = sitofp i32 %5541 to float
  %5603 = fsub fast float %5569, %5602
  %5604 = call float @dx.op.unary.f32(i32 27, float %5603)  ; Round_ni(value)
  %5605 = call float @dx.op.unary.f32(i32 22, float %5569)  ; Frc(value)
  %5606 = call float @dx.op.unary.f32(i32 22, float %5601)  ; Frc(value)
  %5607 = call float @dx.op.unary.f32(i32 22, float %5600)  ; Frc(value)
  %5608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %5606, float %5607, float %5604, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5609 = extractvalue %dx.types.ResRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.ResRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.ResRet.f32 %5608, 2
  %5612 = extractvalue %dx.types.ResRet.f32 %5608, 3
  %5613 = fcmp fast ogt float %5605, 0.000000e+00
  br i1 %5613, label %5614, label %5635, !dx.controlflow.hints !96

; <label>:5614                                    ; preds = %5597
  %5615 = fadd fast float %5604, 1.000000e+00
  %5616 = call float @dx.op.unary.f32(i32 22, float %5578)  ; Frc(value)
  %5617 = call float @dx.op.unary.f32(i32 22, float %5579)  ; Frc(value)
  %5618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %5616, float %5617, float %5615, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5619 = extractvalue %dx.types.ResRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.ResRet.f32 %5618, 1
  %5621 = extractvalue %dx.types.ResRet.f32 %5618, 2
  %5622 = extractvalue %dx.types.ResRet.f32 %5618, 3
  %5623 = fsub fast float %5619, %5609
  %5624 = fsub fast float %5620, %5610
  %5625 = fsub fast float %5621, %5611
  %5626 = fsub fast float %5622, %5612
  %5627 = fmul fast float %5623, %5605
  %5628 = fmul fast float %5624, %5605
  %5629 = fmul fast float %5625, %5605
  %5630 = fmul fast float %5626, %5605
  %5631 = fadd fast float %5627, %5609
  %5632 = fadd fast float %5628, %5610
  %5633 = fadd fast float %5629, %5611
  %5634 = fadd fast float %5630, %5612
  br label %5635

; <label>:5635                                    ; preds = %5614, %5597
  %5636 = phi float [ %5631, %5614 ], [ %5609, %5597 ]
  %5637 = phi float [ %5632, %5614 ], [ %5610, %5597 ]
  %5638 = phi float [ %5633, %5614 ], [ %5611, %5597 ]
  %5639 = phi float [ %5634, %5614 ], [ %5612, %5597 ]
  %5640 = fadd fast float %5636, -5.000000e-01
  %5641 = fadd fast float %5638, -5.000000e-01
  %5642 = fmul fast float %5640, 0xBFD5555560000000
  %5643 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5641, float %5642)  ; FMad(a,b,c)
  %5644 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5637, float 0.000000e+00)  ; FMad(a,b,c)
  %5645 = fadd fast float %5644, %5639
  %5646 = fmul fast float %5640, -7.500000e-01
  %5647 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5641, float %5646)  ; FMad(a,b,c)
  %5648 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5637, float 0.000000e+00)  ; FMad(a,b,c)
  %5649 = fadd fast float %5648, %5639
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 0
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5656 = extractvalue %dx.types.CBufRet.f32 %5652, 3
  %5657 = fsub fast float %5653, %5643
  %5658 = fsub fast float %5654, %5645
  %5659 = fsub fast float %5655, %5647
  %5660 = fsub fast float %5656, %5649
  %5661 = fmul fast float %5657, %5651
  %5662 = fmul fast float %5658, %5651
  %5663 = fmul fast float %5659, %5651
  %5664 = fmul fast float %5660, %5651
  %5665 = fadd fast float %5661, %5643
  %5666 = fadd fast float %5662, %5645
  %5667 = fadd fast float %5663, %5647
  %5668 = fadd fast float %5664, %5649
  %5669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5670 = extractvalue %dx.types.ResRet.i32 %5669, 0
  %5671 = and i32 %5670, 536870911
  %5672 = uitofp i32 %5671 to float
  %5673 = fmul fast float %5672, %5519
  %5674 = fmul fast float %5672, %5523
  %5675 = fptoui float %5673 to i32
  %5676 = fptoui float %5674 to i32
  %5677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5678 = extractvalue %dx.types.ResRet.i32 %5677, 0
  %5679 = and i32 %5678, 31
  %5680 = lshr i32 %5675, %5679
  %5681 = lshr i32 %5676, %5679
  %5682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5683 = extractvalue %dx.types.ResRet.i32 %5682, 0
  %5684 = and i32 %5683, 31
  %5685 = shl i32 1, %5684
  %5686 = call i32 @dx.op.binary.i32(i32 40, i32 %5685, i32 4)  ; UMin(a,b)
  %5687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5688 = extractvalue %dx.types.ResRet.i32 %5687, 0
  %5689 = extractvalue %dx.types.ResRet.i32 %5687, 1
  %5690 = icmp eq i32 %5686, 0
  br i1 %5690, label %5732, label %5691

; <label>:5691                                    ; preds = %5635
  br label %5692

; <label>:5692                                    ; preds = %5720, %5691
  %5693 = phi i32 [ %5723, %5720 ], [ 0, %5691 ]
  %5694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5695 = extractvalue %dx.types.ResRet.i32 %5694, 0
  %5696 = lshr i32 %5695, 16
  %5697 = and i32 %5696, 31
  %5698 = shl i32 %5681, %5697
  %5699 = add i32 %5698, %5680
  %5700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5701 = extractvalue %dx.types.ResRet.i32 %5700, 0
  %5702 = and i32 %5701, 31
  %5703 = shl i32 %5699, %5702
  %5704 = add i32 %5703, %5693
  %5705 = shl i32 %5704, 2
  %5706 = add i32 %5705, 32
  %5707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5706, i32 undef)  ; BufferLoad(srv,index,wot)
  %5708 = extractvalue %dx.types.ResRet.i32 %5707, 0
  %5709 = icmp slt i32 %5708, 0
  %5710 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %5693
  %5711 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5693
  %5712 = bitcast float* %5710 to i32*
  %5713 = bitcast float* %5711 to i32*
  br i1 %5709, label %5714, label %5720

; <label>:5714                                    ; preds = %5692
  %5715 = and i32 %5708, 1073741823
  %5716 = add nuw nsw i32 %5715, 20
  %5717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5716, i32 undef)  ; BufferLoad(srv,index,wot)
  %5718 = extractvalue %dx.types.ResRet.i32 %5717, 0
  %5719 = extractvalue %dx.types.ResRet.i32 %5717, 1
  br label %5720

; <label>:5720                                    ; preds = %5714, %5692
  %5721 = phi i32 [ %5718, %5714 ], [ %5688, %5692 ]
  %5722 = phi i32 [ %5719, %5714 ], [ %5689, %5692 ]
  store i32 %5721, i32* %5712, align 4
  store i32 %5722, i32* %5713, align 4
  %5723 = add nuw i32 %5693, 1
  %5724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.i32 %5724, 2
  %5726 = icmp eq i32 %5725, 0
  %5727 = icmp ugt i32 %5708, -1073741825
  %5728 = and i1 %5727, %5726
  %5729 = icmp ult i32 %5723, %5686
  %5730 = and i1 %5728, %5729
  br i1 %5730, label %5692, label %5731

; <label>:5731                                    ; preds = %5720
  br label %5732

; <label>:5732                                    ; preds = %5731, %5635
  %5733 = phi i32 [ 0, %5635 ], [ %5723, %5731 ]
  %5734 = extractvalue %dx.types.CBufRet.f32 %5497, 2
  %5735 = fptoui float %5734 to i32
  %5736 = icmp eq i32 %5735, 0
  br i1 %5736, label %5788, label %5737

; <label>:5737                                    ; preds = %5732
  br label %5738

; <label>:5738                                    ; preds = %5783, %5737
  %5739 = phi i32 [ %5784, %5783 ], [ %5733, %5737 ]
  %5740 = phi i32 [ %5785, %5783 ], [ 0, %5737 ]
  %5741 = lshr i32 %5740, 2
  %5742 = and i32 %5740, 3
  %5743 = add nuw nsw i32 %5741, 83
  %5744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %5743)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.i32 %5744, 0
  %5746 = extractvalue %dx.types.CBufRet.i32 %5744, 1
  %5747 = extractvalue %dx.types.CBufRet.i32 %5744, 2
  %5748 = extractvalue %dx.types.CBufRet.i32 %5744, 3
  %5749 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %5745, i32* %5749, align 4
  %5750 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %5746, i32* %5750, align 4
  %5751 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %5747, i32* %5751, align 4
  %5752 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %5748, i32* %5752, align 4
  %5753 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %5742
  %5754 = load i32, i32* %5753, align 4, !tbaa !97, !noalias !101
  %5755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5756 = extractvalue %dx.types.ResRet.i32 %5755, 0
  %5757 = lshr i32 %5756, 16
  %5758 = and i32 %5757, 31
  %5759 = shl i32 %5681, %5758
  %5760 = add i32 %5759, %5680
  %5761 = shl i32 %5760, 2
  %5762 = add i32 %5761, %5754
  %5763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5762, i32 undef)  ; BufferLoad(srv,index,wot)
  %5764 = extractvalue %dx.types.ResRet.i32 %5763, 0
  %5765 = icmp eq i32 %5764, 0
  br i1 %5765, label %5783, label %5766

; <label>:5766                                    ; preds = %5738
  %5767 = icmp slt i32 %5764, 0
  %5768 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %5739
  %5769 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5739
  %5770 = bitcast float* %5768 to i32*
  %5771 = bitcast float* %5769 to i32*
  br i1 %5767, label %5772, label %5779

; <label>:5772                                    ; preds = %5766
  %5773 = and i32 %5764, 1073741823
  %5774 = add i32 %5754, 20
  %5775 = add i32 %5774, %5773
  %5776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5775, i32 undef)  ; BufferLoad(srv,index,wot)
  %5777 = extractvalue %dx.types.ResRet.i32 %5776, 0
  %5778 = extractvalue %dx.types.ResRet.i32 %5776, 1
  br label %5779

; <label>:5779                                    ; preds = %5772, %5766
  %5780 = phi i32 [ %5777, %5772 ], [ %5688, %5766 ]
  %5781 = phi i32 [ %5778, %5772 ], [ %5689, %5766 ]
  store i32 %5780, i32* %5770, align 4
  store i32 %5781, i32* %5771, align 4
  %5782 = add i32 %5739, 1
  br label %5783

; <label>:5783                                    ; preds = %5779, %5738
  %5784 = phi i32 [ %5739, %5738 ], [ %5782, %5779 ]
  %5785 = add nuw i32 %5740, 1
  %5786 = icmp eq i32 %5785, %5735
  br i1 %5786, label %5787, label %5738

; <label>:5787                                    ; preds = %5783
  br label %5788

; <label>:5788                                    ; preds = %5787, %5732
  %5789 = phi i32 [ %5733, %5732 ], [ %5784, %5787 ]
  %5790 = icmp eq i32 %5789, 1
  %5791 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %5792 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %5790, label %5793, label %5796

; <label>:5793                                    ; preds = %5788
  %5794 = load float, float* %5791, align 4
  %5795 = load float, float* %5792, align 4
  br label %5823

; <label>:5796                                    ; preds = %5788
  %5797 = load float, float* %5791, align 4
  %5798 = load float, float* %5792, align 4
  %5799 = fdiv fast float 1.000000e+00, %5798
  %5800 = fsub fast float %5797, %5799
  %5801 = icmp ugt i32 %5789, 1
  br i1 %5801, label %5802, label %5818

; <label>:5802                                    ; preds = %5796
  br label %5803

; <label>:5803                                    ; preds = %5803, %5802
  %5804 = phi float [ %5813, %5803 ], [ %5800, %5802 ]
  %5805 = phi float [ %5814, %5803 ], [ %5797, %5802 ]
  %5806 = phi i32 [ %5815, %5803 ], [ 1, %5802 ]
  %5807 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %5806
  %5808 = load float, float* %5807, align 4
  %5809 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5806
  %5810 = load float, float* %5809, align 4
  %5811 = fdiv fast float 1.000000e+00, %5810
  %5812 = fsub fast float %5808, %5811
  %5813 = call float @dx.op.binary.f32(i32 36, float %5804, float %5812)  ; FMin(a,b)
  %5814 = call float @dx.op.binary.f32(i32 35, float %5805, float %5808)  ; FMax(a,b)
  %5815 = add nuw i32 %5806, 1
  %5816 = icmp eq i32 %5815, %5789
  br i1 %5816, label %5817, label %5803

; <label>:5817                                    ; preds = %5803
  br label %5818

; <label>:5818                                    ; preds = %5817, %5796
  %5819 = phi float [ %5800, %5796 ], [ %5813, %5817 ]
  %5820 = phi float [ %5797, %5796 ], [ %5814, %5817 ]
  %5821 = fsub fast float %5820, %5819
  %5822 = fdiv fast float 1.000000e+00, %5821
  br label %5823

; <label>:5823                                    ; preds = %5818, %5793
  %5824 = phi float [ %5794, %5793 ], [ %5820, %5818 ]
  %5825 = phi float [ %5795, %5793 ], [ %5822, %5818 ]
  %5826 = fadd fast float %5527, %5824
  %5827 = fmul fast float %5826, %5825
  %5828 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5829 = fmul fast float %5828, 2.000000e+00
  %5830 = fsub fast float 1.000000e+00, %5829
  %5831 = fmul fast float %5665, %5665
  %5832 = fsub fast float %5666, %5831
  %5833 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5832)  ; FMax(a,b)
  %5834 = fdiv fast float 1.000000e+00, %5833
  %5835 = fmul fast float %5666, %5665
  %5836 = fsub fast float %5667, %5835
  %5837 = fsub fast float %5830, %5665
  %5838 = fmul fast float %5830, %5830
  %5839 = fsub fast float %5838, %5666
  %5840 = fmul fast float %5834, %5836
  %5841 = fmul fast float %5840, %5837
  %5842 = fsub fast float %5839, %5841
  %5843 = fmul fast float %5666, %5666
  %5844 = fsub fast float %5668, %5843
  %5845 = fmul fast float %5836, %5836
  %5846 = fmul fast float %5845, %5834
  %5847 = fsub fast float %5844, %5846
  %5848 = fdiv fast float %5842, %5847
  %5849 = fmul fast float %5848, %5836
  %5850 = fsub fast float %5837, %5849
  %5851 = fmul fast float %5850, %5834
  %5852 = fmul fast float %5851, %5665
  %5853 = fsub fast float 1.000000e+00, %5852
  %5854 = fmul fast float %5848, %5666
  %5855 = fsub fast float %5853, %5854
  %5856 = fmul fast float %5851, %5851
  %5857 = fmul fast float %5848, 4.000000e+00
  %5858 = fmul fast float %5857, %5855
  %5859 = fsub fast float %5856, %5858
  %5860 = call float @dx.op.unary.f32(i32 24, float %5859)  ; Sqrt(value)
  %5861 = fcmp fast oge float %5851, 0.000000e+00
  %5862 = fsub fast float -0.000000e+00, %5860
  %5863 = select i1 %5861, float %5862, float %5860
  %5864 = fsub fast float %5863, %5851
  %5865 = fdiv fast float %5864, %5848
  %5866 = fdiv fast float %5855, %5864
  %5867 = fmul fast float %5865, 5.000000e-01
  %5868 = fmul fast float %5866, 2.000000e+00
  %5869 = select i1 %5861, float %5867, float %5868
  %5870 = select i1 %5861, float %5868, float %5867
  %5871 = call float @dx.op.binary.f32(i32 35, float %5869, float %5870)  ; FMax(a,b)
  %5872 = call float @dx.op.binary.f32(i32 36, float %5869, float %5870)  ; FMin(a,b)
  %5873 = fcmp fast ogt float %5830, %5871
  %5874 = fsub fast float %5830, %5872
  %5875 = fsub fast float %5830, %5871
  %5876 = fsub fast float %5871, %5872
  %5877 = select i1 %5873, float %5875, float %5876
  %5878 = fmul float %5874, %5877
  %5879 = select i1 %5873, float %5872, float %5830
  %5880 = fcmp fast ogt float %5830, %5872
  %5881 = fmul fast float %5879, %5871
  %5882 = fadd fast float %5879, %5871
  %5883 = fmul fast float %5882, %5665
  %5884 = fadd fast float %5881, %5666
  %5885 = fsub fast float %5884, %5883
  %5886 = fdiv fast float %5885, %5878
  %5887 = select i1 %5880, float %5886, float 0.000000e+00
  %5888 = fsub fast float 1.000000e+00, %5887
  %5889 = select i1 %5873, float %5888, float %5887
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5650, 3
  %5892 = fmul fast float %5891, %5890
  %5893 = fsub fast float 1.000000e+00, %5892
  br label %5894

; <label>:5894                                    ; preds = %5823, %5535, %5500, %5496, %5460
  %5895 = phi float [ 1.000000e+00, %5460 ], [ %5893, %5823 ], [ 1.000000e+00, %5500 ], [ 1.000000e+00, %5535 ], [ 1.000000e+00, %5496 ]
  %5896 = fcmp fast ogt float %5492, 0.000000e+00
  br i1 %5896, label %5897, label %5905, !dx.controlflow.hints !110

; <label>:5897                                    ; preds = %5894
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 2
  %5900 = fadd fast float %5899, %5373
  %5901 = call float @dx.op.binary.f32(i32 35, float %5900, float 0.000000e+00)  ; FMax(a,b)
  %5902 = fadd fast float %5901, 0x3F10000000000000
  %5903 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %5391, float %5392, float undef, float undef, i32 0, i32 0, i32 undef, float %5902)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 0
  br label %5905

; <label>:5905                                    ; preds = %5897, %5894
  %5906 = phi float [ %5904, %5897 ], [ 1.000000e+00, %5894 ]
  %5907 = fcmp fast ogt float %5490, 0.000000e+00
  br i1 %5907, label %5908, label %5916, !dx.controlflow.hints !111

; <label>:5908                                    ; preds = %5905
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 1
  %5911 = fadd fast float %5910, %5373
  %5912 = call float @dx.op.binary.f32(i32 35, float %5911, float 0.000000e+00)  ; FMax(a,b)
  %5913 = fadd fast float %5912, 0x3F10000000000000
  %5914 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %5383, float %5384, float undef, float undef, i32 0, i32 0, i32 undef, float %5913)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  br label %5916

; <label>:5916                                    ; preds = %5908, %5905
  %5917 = phi float [ %5915, %5908 ], [ 1.000000e+00, %5905 ]
  %5918 = fcmp fast ogt float %5489, 0.000000e+00
  br i1 %5918, label %5919, label %5931, !dx.controlflow.hints !112

; <label>:5919                                    ; preds = %5916
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = fadd fast float %5921, %5373
  %5923 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5924 = fadd fast float %5923, 0x3F10000000000000
  br i1 %5376, label %5925, label %5928, !dx.controlflow.hints !113

; <label>:5925                                    ; preds = %5919
  %5926 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %5365, float %5369, float undef, float undef, i32 0, i32 0, i32 undef, float %5924)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5927 = extractvalue %dx.types.ResRet.f32 %5926, 0
  br label %5931

; <label>:5928                                    ; preds = %5919
  %5929 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %5365, float %5369, float undef, float undef, i32 0, i32 0, i32 undef, float %5924)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5930 = extractvalue %dx.types.ResRet.f32 %5929, 0
  br label %5931

; <label>:5931                                    ; preds = %5928, %5925, %5916
  %5932 = phi float [ %5927, %5925 ], [ %5930, %5928 ], [ 1.000000e+00, %5916 ]
  %5933 = fsub fast float %5906, %5895
  %5934 = fmul fast float %5933, %5462
  %5935 = fadd fast float %5934, %5895
  %5936 = fsub fast float %5917, %5935
  %5937 = fmul fast float %5936, %5461
  %5938 = fadd fast float %5937, %5935
  %5939 = fsub fast float %5932, %5938
  %5940 = fmul fast float %5939, %5489
  %5941 = fadd fast float %5940, %5938
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 2
  %5944 = fcmp fast ogt float %5943, 0.000000e+00
  br i1 %5944, label %5945, label %5985, !dx.controlflow.hints !114

; <label>:5945                                    ; preds = %5931
  %5946 = fcmp fast ugt float %5943, 0.000000e+00
  br i1 %5946, label %5947, label %5982

; <label>:5947                                    ; preds = %5945
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.CBufRet.f32 %5948, 2
  %5952 = extractvalue %dx.types.CBufRet.f32 %5948, 3
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %5957 = extractvalue %dx.types.CBufRet.f32 %5953, 3
  %5958 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5959 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5964 = fadd fast float %5961, %5342
  %5965 = fadd fast float %5962, %5343
  %5966 = fadd fast float %5963, %5344
  %5967 = fmul fast float %5964, %5949
  %5968 = call float @dx.op.tertiary.f32(i32 46, float %5950, float %5965, float %5967)  ; FMad(a,b,c)
  %5969 = call float @dx.op.tertiary.f32(i32 46, float %5951, float %5966, float %5968)  ; FMad(a,b,c)
  %5970 = fadd fast float %5969, %5952
  %5971 = fmul fast float %5964, %5954
  %5972 = call float @dx.op.tertiary.f32(i32 46, float %5955, float %5965, float %5971)  ; FMad(a,b,c)
  %5973 = call float @dx.op.tertiary.f32(i32 46, float %5956, float %5966, float %5972)  ; FMad(a,b,c)
  %5974 = fadd fast float %5973, %5957
  %5975 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %5970, float %5974, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 0
  %5977 = fmul fast float %5976, %5959
  %5978 = fadd fast float %5977, %5958
  %5979 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5980 = fmul fast float %5979, %5943
  %5981 = fsub fast float 1.000000e+00, %5980
  br label %5982

; <label>:5982                                    ; preds = %5947, %5945
  %5983 = phi float [ %5981, %5947 ], [ 1.000000e+00, %5945 ]
  %5984 = fmul fast float %5983, %5941
  br label %5985

; <label>:5985                                    ; preds = %5982, %5931, %5322
  %5986 = phi float [ 1.000000e+00, %5322 ], [ %5984, %5982 ], [ %5941, %5931 ]
  %5987 = call float @dx.op.binary.f32(i32 36, float %5986, float %5986)  ; FMin(a,b)
  %5988 = call float @dx.op.binary.f32(i32 36, float %5986, float %5987)  ; FMin(a,b)
  %5989 = fcmp fast ogt float %5988, 0.000000e+00
  br i1 %5989, label %5990, label %6150, !dx.controlflow.hints !115

; <label>:5990                                    ; preds = %5985
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %5994 = extractvalue %dx.types.CBufRet.f32 %5991, 2
  %5995 = extractvalue %dx.types.CBufRet.f32 %5991, 3
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 0
  %5998 = extractvalue %dx.types.CBufRet.f32 %5996, 1
  %5999 = extractvalue %dx.types.CBufRet.f32 %5996, 2
  %6000 = extractvalue %dx.types.CBufRet.f32 %5996, 3
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.CBufRet.f32 %6001, 2
  %6005 = extractvalue %dx.types.CBufRet.f32 %6001, 3
  %6006 = fmul fast float %5992, %5342
  %6007 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5993, float %6006)  ; FMad(a,b,c)
  %6008 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5994, float %6007)  ; FMad(a,b,c)
  %6009 = fadd fast float %6008, %5995
  %6010 = fmul fast float %5997, %5342
  %6011 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5998, float %6010)  ; FMad(a,b,c)
  %6012 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5999, float %6011)  ; FMad(a,b,c)
  %6013 = fadd fast float %6012, %6000
  %6014 = fmul fast float %6002, %5342
  %6015 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %6003, float %6014)  ; FMad(a,b,c)
  %6016 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %6004, float %6015)  ; FMad(a,b,c)
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.CBufRet.f32 %6017, 3
  %6021 = fmul fast float %6020, %6009
  %6022 = fmul fast float %6020, %6013
  %6023 = fadd fast float %6021, %6018
  %6024 = fadd fast float %6022, %6019
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.CBufRet.f32 %6025, 1
  %6028 = fsub fast float %6023, %6026
  %6029 = fsub fast float %6024, %6027
  %6030 = fcmp fast olt float %6028, 0.000000e+00
  %6031 = fcmp fast olt float %6029, 0.000000e+00
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 0
  %6034 = extractvalue %dx.types.CBufRet.f32 %6032, 1
  %6035 = extractvalue %dx.types.CBufRet.f32 %6032, 2
  %6036 = extractvalue %dx.types.CBufRet.f32 %6032, 3
  %6037 = select i1 %6030, float %6033, float %6035
  %6038 = select i1 %6031, float %6034, float %6036
  %6039 = fmul fast float %6037, %6028
  %6040 = fmul fast float %6038, %6029
  %6041 = call float @dx.op.unary.f32(i32 6, float %6039)  ; FAbs(value)
  %6042 = call float @dx.op.unary.f32(i32 6, float %6040)  ; FAbs(value)
  %6043 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %6044 = call float @dx.op.binary.f32(i32 35, float %6041, float %6042)  ; FMax(a,b)
  %6045 = fsub fast float %6043, %6044
  %6046 = call float @dx.op.unary.f32(i32 7, float %6045)  ; Saturate(value)
  %6047 = fcmp fast ogt float %6046, 0.000000e+00
  br i1 %6047, label %6048, label %6089, !dx.controlflow.hints !116

; <label>:6048                                    ; preds = %5990
  %6049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %6023, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 1
  %6051 = fcmp fast ogt float %6050, 0.000000e+00
  br i1 %6051, label %6052, label %6084

; <label>:6052                                    ; preds = %6048
  %6053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %6023, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6054 = extractvalue %dx.types.ResRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.ResRet.f32 %6053, 1
  %6056 = extractvalue %dx.types.ResRet.f32 %6053, 2
  %6057 = extractvalue %dx.types.ResRet.f32 %6053, 3
  %6058 = fsub fast float 1.000000e+00, %6005
  %6059 = fsub fast float %6058, %6016
  %6060 = fmul fast float %6059, 0x400921FB60000000
  %6061 = fadd fast float %6060, 0x3FF921FB60000000
  %6062 = call float @dx.op.unary.f32(i32 13, float %6061)  ; Sin(value)
  %6063 = fadd fast float %6062, -1.000000e+00
  %6064 = fmul fast float %6063, 0x3FD45F3060000000
  %6065 = fmul fast float %6059, 0x401921FB60000000
  %6066 = fadd fast float %6065, 0x400921FB60000000
  %6067 = call float @dx.op.unary.f32(i32 13, float %6066)  ; Sin(value)
  %6068 = fadd fast float %6067, 0x3E7777A5C0000000
  %6069 = fmul fast float %6068, 0x3FC45F3060000000
  %6070 = fmul fast float %6059, 0x4022D97C80000000
  %6071 = fadd fast float %6070, 0x4012D97C80000000
  %6072 = call float @dx.op.unary.f32(i32 13, float %6071)  ; Sin(value)
  %6073 = fadd fast float %6072, 1.000000e+00
  %6074 = fmul fast float %6073, 0x3FBB2995E0000000
  %6075 = fmul fast float %6059, 0x402921FB60000000
  %6076 = fadd fast float %6075, 0x401921FB60000000
  %6077 = call float @dx.op.unary.f32(i32 13, float %6076)  ; Sin(value)
  %6078 = fadd fast float %6077, 0xBE8777A5C0000000
  %6079 = fmul fast float %6078, 0x3FB45F3060000000
  %6080 = call float @dx.op.dot4.f32(i32 56, float %6054, float %6055, float %6056, float %6057, float %6064, float %6069, float %6074, float %6079)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6081 = fmul fast float %6080, 0xBFF7154760000000
  %6082 = call float @dx.op.unary.f32(i32 21, float %6081)  ; Exp(value)
  %6083 = call float @dx.op.unary.f32(i32 7, float %6082)  ; Saturate(value)
  br label %6084

; <label>:6084                                    ; preds = %6052, %6048
  %6085 = phi float [ %6083, %6052 ], [ 1.000000e+00, %6048 ]
  %6086 = fadd fast float %6085, -1.000000e+00
  %6087 = fmul fast float %6086, %6046
  %6088 = fadd fast float %6087, 1.000000e+00
  br label %6089

; <label>:6089                                    ; preds = %6084, %5990
  %6090 = phi float [ %6088, %6084 ], [ 1.000000e+00, %5990 ]
  %6091 = fmul fast float %6090, %5986
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6096 = fadd fast float %6093, %187
  %6097 = fadd fast float %6094, %188
  %6098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6099 = extractvalue %dx.types.CBufRet.f32 %6098, 1
  %6100 = fsub fast float -0.000000e+00, %6096
  %6101 = fsub fast float -0.000000e+00, %6097
  %6102 = fsub fast float %5136, %6095
  %6103 = fadd fast float %6102, %6099
  %6104 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6100, float %6101, float %6103)  ; Dot3(ax,ay,az,bx,by,bz)
  %6105 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5323, float %5324, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %6106 = fdiv fast float 1.000000e+00, %6105
  %6107 = fmul fast float %6106, %6104
  %6108 = fmul fast float %5323, %6107
  %6109 = fmul fast float %5324, %6107
  %6110 = fadd fast float %6108, %6096
  %6111 = fadd fast float %6109, %6097
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6115 = fsub fast float %6110, %6113
  %6116 = fsub fast float %6111, %6114
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 3
  %6120 = fmul fast float %6115, %6118
  %6121 = fmul fast float %6116, %6119
  %6122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.i32 %6122, 3
  %6124 = icmp eq i32 %6123, 0
  br i1 %6124, label %6130, label %6125

; <label>:6125                                    ; preds = %6089
  %6126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %6120, float %6121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.ResRet.f32 %6126, 2
  br label %6135

; <label>:6130                                    ; preds = %6089
  %6131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %6120, float %6121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6132 = extractvalue %dx.types.ResRet.f32 %6131, 0
  %6133 = extractvalue %dx.types.ResRet.f32 %6131, 1
  %6134 = extractvalue %dx.types.ResRet.f32 %6131, 2
  br label %6135

; <label>:6135                                    ; preds = %6130, %6125
  %6136 = phi float [ %6127, %6125 ], [ %6132, %6130 ]
  %6137 = phi float [ %6128, %6125 ], [ %6133, %6130 ]
  %6138 = phi float [ %6129, %6125 ], [ %6134, %6130 ]
  %6139 = extractvalue %dx.types.CBufRet.f32 %6098, 2
  %6140 = fmul fast float %6139, %6136
  %6141 = extractvalue %dx.types.CBufRet.f32 %6098, 0
  %6142 = fsub fast float %6107, %6141
  %6143 = fsub fast float %6142, %6140
  %6144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6143)  ; FMax(a,b)
  %6145 = fmul fast float %6144, %6137
  %6146 = call float @dx.op.binary.f32(i32 36, float %6138, float %6145)  ; FMin(a,b)
  %6147 = fmul fast float %6146, 0xBFF7154760000000
  %6148 = call float @dx.op.unary.f32(i32 21, float %6147)  ; Exp(value)
  %6149 = fmul fast float %6091, %6148
  br label %6150

; <label>:6150                                    ; preds = %6135, %5985
  %6151 = phi float [ %6149, %6135 ], [ %5986, %5985 ]
  %6152 = call float @dx.op.binary.f32(i32 36, float %6151, float %6151)  ; FMin(a,b)
  %6153 = call float @dx.op.binary.f32(i32 36, float %6151, float %6152)  ; FMin(a,b)
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  br i1 %6154, label %6155, label %6349, !dx.controlflow.hints !117

; <label>:6155                                    ; preds = %6150
  %6156 = fmul fast float %6151, %5334
  %6157 = fmul fast float %6151, %5335
  %6158 = fmul fast float %6151, %5336
  %6159 = fsub fast float %189, %4332
  %6160 = fcmp fast ogt float %6159, 0.000000e+00
  %6161 = fmul fast float %5323, 5.120000e+02
  %6162 = fmul fast float %5324, 5.120000e+02
  %6163 = fmul fast float %5325, 5.120000e+02
  %6164 = fadd fast float %6163, %189
  %6165 = fsub fast float %4332, %6164
  %6166 = fmul fast float %6165, 2.000000e+00
  %6167 = fadd fast float %6166, %6164
  %6168 = select i1 %6160, float %6167, float %6164
  %6169 = fsub fast float %6168, %189
  %6170 = call float @dx.op.dot3.f32(i32 55, float %6161, float %6162, float %6169, float %6161, float %6162, float %6169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = call float @dx.op.unary.f32(i32 25, float %6170)  ; Rsqrt(value)
  %6172 = fmul fast float %6171, %6161
  %6173 = fmul fast float %6171, %6162
  %6174 = fmul fast float %6171, %6169
  %6175 = fsub fast float %4332, %189
  %6176 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6175)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6172, float %6173, float %6174)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = fdiv fast float 1.000000e+00, %6177
  %6179 = fmul fast float %6178, %6176
  %6180 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6159, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6181 = fcmp fast ogt float %6180, 0.000000e+00
  %6182 = fcmp fast olt float %6180, 0.000000e+00
  %6183 = zext i1 %6181 to i32
  %6184 = zext i1 %6182 to i32
  %6185 = sub nsw i32 %6183, %6184
  %6186 = sitofp i32 %6185 to float
  %6187 = fsub fast float %6168, %4332
  %6188 = call float @dx.op.dot3.f32(i32 55, float %6161, float %6162, float %6187, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6189 = fcmp fast ogt float %6188, 0.000000e+00
  %6190 = fcmp fast olt float %6188, 0.000000e+00
  %6191 = zext i1 %6189 to i32
  %6192 = zext i1 %6190 to i32
  %6193 = sub nsw i32 %6191, %6192
  %6194 = sitofp i32 %6193 to float
  %6195 = fcmp fast une float %6186, %6194
  br i1 %6195, label %6196, label %6206

; <label>:6196                                    ; preds = %6155
  %6197 = fmul fast float %6179, %6174
  %6198 = fmul fast float %6179, %6173
  %6199 = fmul fast float %6179, %6172
  %6200 = fmul fast float %6199, %6199
  %6201 = fmul fast float %6198, %6198
  %6202 = fadd fast float %6200, %6201
  %6203 = fmul fast float %6197, %6197
  %6204 = fadd fast float %6202, %6203
  %6205 = call float @dx.op.unary.f32(i32 24, float %6204)  ; Sqrt(value)
  br label %6216

; <label>:6206                                    ; preds = %6155
  %6207 = icmp slt i32 %6185, 0
  br i1 %6207, label %6208, label %6216

; <label>:6208                                    ; preds = %6206
  %6209 = fsub fast float %189, %6168
  %6210 = fmul fast float %6161, %6161
  %6211 = fmul fast float %6162, %6162
  %6212 = fadd fast float %6210, %6211
  %6213 = fmul fast float %6209, %6209
  %6214 = fadd fast float %6212, %6213
  %6215 = call float @dx.op.unary.f32(i32 24, float %6214)  ; Sqrt(value)
  br label %6216

; <label>:6216                                    ; preds = %6208, %6206, %6196
  %6217 = phi float [ %6205, %6196 ], [ %6215, %6208 ], [ 0.000000e+00, %6206 ]
  %6218 = fsub fast float -0.000000e+00, %6217
  %6219 = select i1 %6160, float -0.000000e+00, float %6218
  %6220 = fmul fast float %4333, 0x3FF7154760000000
  %6221 = fmul fast float %6220, %6219
  %6222 = fmul fast float %4334, 0x3FF7154760000000
  %6223 = fmul fast float %6222, %6219
  %6224 = fmul fast float %4335, 0x3FF7154760000000
  %6225 = fmul fast float %6224, %6219
  %6226 = call float @dx.op.unary.f32(i32 21, float %6221)  ; Exp(value)
  %6227 = call float @dx.op.unary.f32(i32 21, float %6223)  ; Exp(value)
  %6228 = call float @dx.op.unary.f32(i32 21, float %6225)  ; Exp(value)
  %6229 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6230 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  %6231 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  %6232 = fmul fast float %6156, %6229
  %6233 = fmul fast float %6157, %6230
  %6234 = fmul fast float %6158, %6231
  %6235 = fsub fast float %5323, %5124
  %6236 = fsub fast float %5324, %5123
  %6237 = fsub fast float %5325, %5122
  %6238 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %6235, float %6236, float %6237)  ; Dot3(ax,ay,az,bx,by,bz)
  %6239 = call float @dx.op.unary.f32(i32 25, float %6238)  ; Rsqrt(value)
  %6240 = fmul fast float %6239, %6235
  %6241 = fmul fast float %6239, %6236
  %6242 = fmul fast float %6239, %6237
  %6243 = call float @dx.op.dot3.f32(i32 55, float %5323, float %5324, float %5325, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6244 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5120, float %5119, float %6240, float %6241, float %6242)  ; Dot3(ax,ay,az,bx,by,bz)
  %6245 = call float @dx.op.unary.f32(i32 7, float %6243)  ; Saturate(value)
  %6246 = fmul fast float %6245, %6245
  %6247 = fmul fast float %6246, %5152
  %6248 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  %6249 = fmul fast float %6248, %6245
  %6250 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %6240, float %6241, float %6242)  ; Dot3(ax,ay,az,bx,by,bz)
  %6251 = fmul fast float %6250, %6250
  %6252 = call float @dx.op.unary.f32(i32 6, float %6243)  ; FAbs(value)
  %6253 = fsub fast float 1.000000e+00, %5134
  %6254 = call float @dx.op.binary.f32(i32 35, float %6253, float 0x3F847AE140000000)  ; FMax(a,b)
  %6255 = fmul fast float %6254, %6254
  %6256 = fmul fast float %6255, %6255
  %6257 = fsub fast float 1.000000e+00, %6256
  %6258 = fmul fast float %5139, %5139
  %6259 = fmul fast float %6258, %6257
  %6260 = fadd fast float %6259, %6256
  %6261 = bitcast float %6260 to i32
  %6262 = ashr i32 %6261, 1
  %6263 = add nsw i32 %6262, 532487669
  %6264 = bitcast i32 %6263 to float
  %6265 = fadd fast float %6264, %5139
  %6266 = fmul fast float %6256, %6251
  %6267 = fsub fast float 1.000000e+00, %6251
  %6268 = fadd fast float %6267, %6266
  %6269 = fmul fast float %6252, %6252
  %6270 = fmul fast float %6269, %6257
  %6271 = fadd fast float %6270, %6256
  %6272 = bitcast float %6271 to i32
  %6273 = ashr i32 %6272, 1
  %6274 = add nsw i32 %6273, 532487669
  %6275 = bitcast i32 %6274 to float
  %6276 = fadd fast float %6275, %6252
  %6277 = fmul fast float %6268, %6268
  %6278 = fmul fast float %6277, %6265
  %6279 = fmul fast float %6278, %6276
  %6280 = fdiv fast float 0x3FF0A00000000000, %6279
  %6281 = fmul fast float %6280, %6256
  %6282 = fmul fast float %5252, 0x3FF9999980000000
  %6283 = fsub fast float 5.000000e+00, %6282
  %6284 = call float @dx.op.unary.f32(i32 6, float %6244)  ; FAbs(value)
  %6285 = fsub fast float 1.000000e+00, %6284
  %6286 = fmul fast float %5252, 0x41D9660740000000
  %6287 = fadd fast float %6286, 0xC1EFBF8940000000
  %6288 = bitcast float %6285 to i32
  %6289 = sitofp i32 %6288 to float
  %6290 = fmul fast float %6289, %6283
  %6291 = fadd fast float %6287, %6290
  %6292 = fptosi float %6291 to i32
  %6293 = bitcast i32 %6292 to float
  %6294 = fsub fast float 1.000000e+00, %5125
  %6295 = fsub fast float 1.000000e+00, %5126
  %6296 = fsub fast float 1.000000e+00, %5137
  %6297 = fmul fast float %6293, %6294
  %6298 = fmul fast float %6293, %6295
  %6299 = fmul fast float %6293, %6296
  %6300 = fadd fast float %6297, %5125
  %6301 = fadd fast float %6298, %5126
  %6302 = fadd fast float %6299, %5137
  %6303 = fmul fast float %6243, 9.843750e-01
  %6304 = fadd fast float %6303, 7.812500e-03
  %6305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %6304, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.ResRet.f32 %6305, 1
  %6308 = extractvalue %dx.types.ResRet.f32 %6305, 2
  %6309 = extractvalue %dx.types.ResRet.f32 %6305, 3
  %6310 = fsub fast float %6308, %6306
  %6311 = fsub fast float %6309, %6307
  %6312 = fmul fast float %6310, %5262
  %6313 = fmul fast float %6311, %5262
  %6314 = fadd fast float %6312, %6306
  %6315 = fadd fast float %6313, %6307
  %6316 = fmul fast float %6314, %5125
  %6317 = fmul fast float %6314, %5126
  %6318 = fmul fast float %6314, %5137
  %6319 = fadd fast float %6316, %6315
  %6320 = fadd fast float %6317, %6315
  %6321 = fadd fast float %6318, %6315
  %6322 = call float @dx.op.binary.f32(i32 35, float %6320, float %6321)  ; FMax(a,b)
  %6323 = call float @dx.op.binary.f32(i32 35, float %6319, float %6322)  ; FMax(a,b)
  %6324 = fsub fast float 1.000000e+00, %6323
  %6325 = fmul fast float %6249, %6232
  %6326 = fmul fast float %6325, %6324
  %6327 = fmul fast float %6249, %6233
  %6328 = fmul fast float %6327, %6324
  %6329 = fmul fast float %6249, %6234
  %6330 = fmul fast float %6329, %6324
  %6331 = fmul fast float %6325, %6281
  %6332 = fmul fast float %6331, %6300
  %6333 = fmul fast float %6327, %6281
  %6334 = fmul fast float %6333, %6301
  %6335 = fmul fast float %6329, %6281
  %6336 = fmul fast float %6335, %6302
  %6337 = fadd fast float %6326, %5278
  %6338 = fmul fast float %6337, %1204
  %6339 = fadd fast float %6328, %5279
  %6340 = fmul fast float %6339, %1204
  %6341 = fadd fast float %6330, %5280
  %6342 = fmul fast float %6341, %1204
  %6343 = fadd fast float %6332, %5313
  %6344 = fmul fast float %6343, %1204
  %6345 = fadd fast float %6334, %5315
  %6346 = fmul fast float %6345, %1204
  %6347 = fadd fast float %6336, %5317
  %6348 = fmul fast float %6347, %1204
  br label %6349

; <label>:6349                                    ; preds = %6216, %6150, %5118
  %6350 = phi float [ %5314, %5118 ], [ %5314, %6150 ], [ %6344, %6216 ]
  %6351 = phi float [ %5316, %5118 ], [ %5316, %6150 ], [ %6346, %6216 ]
  %6352 = phi float [ %5318, %5118 ], [ %5318, %6150 ], [ %6348, %6216 ]
  %6353 = phi float [ %5310, %5118 ], [ %5310, %6150 ], [ %6338, %6216 ]
  %6354 = phi float [ %5311, %5118 ], [ %5311, %6150 ], [ %6340, %6216 ]
  %6355 = phi float [ %5312, %5118 ], [ %5312, %6150 ], [ %6342, %6216 ]
  %6356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.i32 %6356, 0
  %6358 = icmp eq i32 %6357, 0
  br i1 %6358, label %6922, label %6359

; <label>:6359                                    ; preds = %6349
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 2
  %6362 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6363 = fmul fast float %6361, %100
  %6364 = fmul fast float %6362, %101
  %6365 = fptoui float %6363 to i32
  %6366 = fptoui float %6364 to i32
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6371 = fadd fast float %91, -4.000000e+00
  %6372 = call float @dx.op.binary.f32(i32 35, float %6371, float 0.000000e+00)  ; FMax(a,b)
  %6373 = fadd fast float %6372, %6368
  %6374 = fmul fast float %6373, %6369
  %6375 = call float @dx.op.unary.f32(i32 23, float %6374)  ; Log(value)
  %6376 = fmul fast float %6375, %6370
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6379 = fmul fast float %6376, %6378
  %6380 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.i32 %6381, 1
  %6383 = add i32 %6382, -1
  %6384 = uitofp i32 %6382 to float
  %6385 = fmul fast float %6384, %6380
  %6386 = fptoui float %6385 to i32
  %6387 = call i32 @dx.op.binary.i32(i32 40, i32 %6386, i32 %6383)  ; UMin(a,b)
  %6388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.i32 %6388, 2
  %6390 = extractvalue %dx.types.CBufRet.i32 %6388, 3
  %6391 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6366, i32 %6389, i32 %6365)  ; UMad(a,b,c)
  %6392 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6387, i32 %6390, i32 %6391)  ; UMad(a,b,c)
  %6393 = add nsw i32 %6357, -1
  %6394 = call i32 @dx.op.binary.i32(i32 37, i32 %6393, i32 0)  ; IMax(a,b)
  %6395 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %6396 = fptoui float %6395 to i32
  %6397 = lshr i32 %6396, 5
  %6398 = call i32 @dx.op.binary.i32(i32 40, i32 %6397, i32 8191)  ; UMin(a,b)
  %6399 = shl i32 %6398, 2
  %6400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6399, i32 undef)  ; BufferLoad(srv,index,wot)
  %6401 = extractvalue %dx.types.ResRet.i32 %6400, 0
  %6402 = lshr i32 %6401, 16
  %6403 = and i32 %6401, 65535
  %6404 = lshr i32 %6401, 21
  %6405 = lshr i32 %6403, 5
  %6406 = call i32 @dx.op.binary.i32(i32 40, i32 %6405, i32 %6394)  ; UMin(a,b)
  %6407 = icmp ugt i32 %6404, %6406
  br i1 %6407, label %6922, label %6408

; <label>:6408                                    ; preds = %6359
  br label %6409

; <label>:6409                                    ; preds = %6912, %6408
  %6410 = phi i32 [ %6919, %6912 ], [ %6404, %6408 ]
  %6411 = phi float [ %6913, %6912 ], [ %6350, %6408 ]
  %6412 = phi float [ %6914, %6912 ], [ %6351, %6408 ]
  %6413 = phi float [ %6915, %6912 ], [ %6352, %6408 ]
  %6414 = phi float [ %6916, %6912 ], [ %6353, %6408 ]
  %6415 = phi float [ %6917, %6912 ], [ %6354, %6408 ]
  %6416 = phi float [ %6918, %6912 ], [ %6355, %6408 ]
  %6417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6418 = extractvalue %dx.types.CBufRet.i32 %6417, 0
  %6419 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6392, i32 %6418, i32 %6410)  ; UMad(a,b,c)
  %6420 = shl i32 %6419, 2
  %6421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6420, i32 undef)  ; BufferLoad(srv,index,wot)
  %6422 = extractvalue %dx.types.ResRet.i32 %6421, 0
  %6423 = shl i32 %6410, 5
  %6424 = sub nsw i32 %6402, %6423
  %6425 = call i32 @dx.op.binary.i32(i32 37, i32 %6424, i32 0)  ; IMax(a,b)
  %6426 = call i32 @dx.op.binary.i32(i32 38, i32 %6425, i32 31)  ; IMin(a,b)
  %6427 = sub nsw i32 1, %6402
  %6428 = add nsw i32 %6427, %6403
  %6429 = call i32 @dx.op.binary.i32(i32 37, i32 %6428, i32 0)  ; IMax(a,b)
  %6430 = call i32 @dx.op.binary.i32(i32 38, i32 %6429, i32 32)  ; IMin(a,b)
  %6431 = and i32 %6430, 31
  %6432 = shl i32 -1, %6431
  %6433 = xor i32 %6432, -1
  %6434 = and i32 %6426, 31
  %6435 = shl i32 %6433, %6434
  %6436 = icmp eq i32 %6430, 32
  %6437 = select i1 %6436, i32 -1, i32 %6435
  %6438 = and i32 %6437, %6422
  %6439 = icmp eq i32 %6438, 0
  br i1 %6439, label %6912, label %6440

; <label>:6440                                    ; preds = %6409
  br label %6441

; <label>:6441                                    ; preds = %6575, %6440
  %6442 = phi i32 [ %6453, %6575 ], [ %6438, %6440 ]
  %6443 = phi float [ %6576, %6575 ], [ %6411, %6440 ]
  %6444 = phi float [ %6577, %6575 ], [ %6412, %6440 ]
  %6445 = phi float [ %6578, %6575 ], [ %6413, %6440 ]
  %6446 = phi float [ %6579, %6575 ], [ %6414, %6440 ]
  %6447 = phi float [ %6580, %6575 ], [ %6415, %6440 ]
  %6448 = phi float [ %6581, %6575 ], [ %6416, %6440 ]
  %6449 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6442)  ; FirstbitLo(value)
  %6450 = add i32 %6449, %6423
  %6451 = and i32 %6449, 31
  %6452 = shl i32 1, %6451
  %6453 = xor i32 %6452, %6442
  %6454 = mul i32 %6450, 112
  %6455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6454, i32 undef)  ; BufferLoad(srv,index,wot)
  %6456 = extractvalue %dx.types.ResRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.ResRet.f32 %6455, 1
  %6458 = extractvalue %dx.types.ResRet.f32 %6455, 2
  %6459 = or i32 %6454, 12
  %6460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6459, i32 undef)  ; BufferLoad(srv,index,wot)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 0
  %6462 = add i32 %6454, 16
  %6463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6462, i32 undef)  ; BufferLoad(srv,index,wot)
  %6464 = extractvalue %dx.types.ResRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.ResRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.ResRet.f32 %6463, 2
  %6467 = add i32 %6454, 28
  %6468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6467, i32 undef)  ; BufferLoad(srv,index,wot)
  %6469 = extractvalue %dx.types.ResRet.i32 %6468, 0
  %6470 = add i32 %6454, 44
  %6471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6470, i32 undef)  ; BufferLoad(srv,index,wot)
  %6472 = extractvalue %dx.types.ResRet.f32 %6471, 0
  %6473 = add i32 %6454, 48
  %6474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6473, i32 undef)  ; BufferLoad(srv,index,wot)
  %6475 = extractvalue %dx.types.ResRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.ResRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.ResRet.f32 %6474, 2
  %6478 = extractvalue %dx.types.ResRet.f32 %6474, 3
  %6479 = add i32 %6454, 64
  %6480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6479, i32 undef)  ; BufferLoad(srv,index,wot)
  %6481 = extractvalue %dx.types.ResRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.ResRet.f32 %6480, 1
  %6483 = extractvalue %dx.types.ResRet.f32 %6480, 2
  %6484 = extractvalue %dx.types.ResRet.f32 %6480, 3
  %6485 = add i32 %6454, 80
  %6486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6485, i32 undef)  ; BufferLoad(srv,index,wot)
  %6487 = extractvalue %dx.types.ResRet.f32 %6486, 1
  %6488 = extractvalue %dx.types.ResRet.f32 %6486, 2
  %6489 = add i32 %6454, 92
  %6490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6489, i32 undef)  ; BufferLoad(srv,index,wot)
  %6491 = extractvalue %dx.types.ResRet.i32 %6490, 0
  %6492 = call float @dx.op.dot3.f32(i32 55, float %6456, float %6457, float %6458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6493 = select i1 %259, float %6487, float %6456
  %6494 = select i1 %259, float %6492, float %6457
  %6495 = select i1 %259, float %6488, float %6458
  %6496 = and i32 %6491, 65535
  %6497 = uitofp i32 %6496 to float
  %6498 = lshr i32 %6491, 16
  %6499 = uitofp i32 %6498 to float
  %6500 = and i32 %6469, 65535
  %6501 = and i32 %6469, 50331648
  %6502 = icmp eq i32 %6501, 33554432
  %6503 = fsub fast float %6475, %187
  %6504 = fsub fast float %6476, %188
  %6505 = fsub fast float %6477, %189
  %6506 = call float @dx.op.dot3.f32(i32 55, float %6503, float %6504, float %6505, float %6503, float %6504, float %6505)  ; Dot3(ax,ay,az,bx,by,bz)
  %6507 = call float @dx.op.unary.f32(i32 24, float %6506)  ; Sqrt(value)
  %6508 = fdiv fast float 1.000000e+00, %6507
  %6509 = fmul fast float %6508, %6503
  %6510 = fmul fast float %6508, %6504
  %6511 = fmul fast float %6508, %6505
  %6512 = fadd fast float %6507, %6461
  %6513 = fdiv fast float 1.000000e+00, %6512
  %6514 = fmul float %6472, %6513
  %6515 = fmul float %6514, %6514
  %6516 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  br i1 %6502, label %6517, label %6538

; <label>:6517                                    ; preds = %6441
  %6518 = fmul fast float %6483, %6464
  %6519 = fmul fast float %6483, %6465
  %6520 = fmul fast float %6483, %6466
  %6521 = fadd fast float %6503, %6518
  %6522 = fadd fast float %6504, %6519
  %6523 = fadd fast float %6505, %6520
  %6524 = call float @dx.op.dot3.f32(i32 55, float %6521, float %6522, float %6523, float %6521, float %6522, float %6523)  ; Dot3(ax,ay,az,bx,by,bz)
  %6525 = call float @dx.op.unary.f32(i32 25, float %6524)  ; Rsqrt(value)
  %6526 = fmul fast float %6525, %6521
  %6527 = fmul fast float %6525, %6522
  %6528 = fmul fast float %6525, %6523
  %6529 = fsub fast float %187, %6475
  %6530 = fsub fast float %188, %6476
  %6531 = fsub fast float %189, %6477
  %6532 = fsub fast float -0.000000e+00, %6529
  %6533 = fsub fast float -0.000000e+00, %6530
  %6534 = fsub fast float -0.000000e+00, %6531
  %6535 = call float @dx.op.dot3.f32(i32 55, float %6532, float %6533, float %6534, float %6464, float %6465, float %6466)  ; Dot3(ax,ay,az,bx,by,bz)
  %6536 = fcmp fast ogt float %6535, 0.000000e+00
  %6537 = uitofp i1 %6536 to float
  br label %6538

; <label>:6538                                    ; preds = %6517, %6441
  %6539 = phi float [ %6537, %6517 ], [ 1.000000e+00, %6441 ]
  %6540 = phi float [ %6526, %6517 ], [ %6509, %6441 ]
  %6541 = phi float [ %6527, %6517 ], [ %6510, %6441 ]
  %6542 = phi float [ %6528, %6517 ], [ %6511, %6441 ]
  %6543 = call float @dx.op.dot3.f32(i32 55, float %6464, float %6465, float %6466, float %6540, float %6541, float %6542)  ; Dot3(ax,ay,az,bx,by,bz)
  %6544 = fmul fast float %6543, %6543
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = fsub fast float 1.000000e+00, %6545
  %6547 = fmul fast float %6546, 5.000000e-01
  %6548 = fcmp fast ogt float %6543, 0.000000e+00
  %6549 = fsub fast float 1.000000e+00, %6547
  %6550 = select i1 %6548, float %6547, float %6549
  %6551 = fmul fast float %6550, %6499
  %6552 = fadd fast float %6551, %6497
  %6553 = fmul fast float %6552, 0x3EF0001000000000
  %6554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %6553, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6555 = extractvalue %dx.types.ResRet.f32 %6554, 0
  %6556 = fmul fast float %6543, %6481
  %6557 = fadd fast float %6556, %6482
  %6558 = call float @dx.op.unary.f32(i32 7, float %6557)  ; Saturate(value)
  %6559 = select i1 %6502, float 1.000000e+00, float %6558
  %6560 = select i1 %6502, float %6558, float 1.000000e+00
  %6561 = fmul fast float %6507, %6478
  %6562 = fsub fast float 1.000000e+00, %6561
  %6563 = fmul fast float %6562, %6484
  %6564 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6565 = fmul fast float %6564, %6560
  %6566 = fmul fast float %6565, 2.000000e+00
  %6567 = fsub fast float 3.000000e+00, %6566
  %6568 = fmul fast float %6555, %6539
  %6569 = fmul fast float %6565, %6565
  %6570 = fmul fast float %6569, %6568
  %6571 = fmul fast float %6570, %6567
  %6572 = call float @dx.op.binary.f32(i32 36, float %6571, float %6571)  ; FMin(a,b)
  %6573 = call float @dx.op.binary.f32(i32 36, float %6571, float %6572)  ; FMin(a,b)
  %6574 = fcmp fast ogt float %6573, 0.000000e+00
  br i1 %6574, label %6583, label %6575, !dx.controlflow.hints !118

; <label>:6575                                    ; preds = %6750, %6683, %6538
  %6576 = phi float [ %6443, %6683 ], [ %6443, %6538 ], [ %6908, %6750 ]
  %6577 = phi float [ %6444, %6683 ], [ %6444, %6538 ], [ %6909, %6750 ]
  %6578 = phi float [ %6445, %6683 ], [ %6445, %6538 ], [ %6910, %6750 ]
  %6579 = phi float [ %6446, %6683 ], [ %6446, %6538 ], [ %6899, %6750 ]
  %6580 = phi float [ %6447, %6683 ], [ %6447, %6538 ], [ %6900, %6750 ]
  %6581 = phi float [ %6448, %6683 ], [ %6448, %6538 ], [ %6901, %6750 ]
  %6582 = icmp eq i32 %6442, %6452
  br i1 %6582, label %6911, label %6441

; <label>:6583                                    ; preds = %6538
  %6584 = icmp eq i32 %6500, 255
  br i1 %6584, label %6683, label %6585, !dx.controlflow.hints !119

; <label>:6585                                    ; preds = %6583
  %6586 = mul nuw nsw i32 %6500, 176
  %6587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6586, i32 undef)  ; BufferLoad(srv,index,wot)
  %6588 = extractvalue %dx.types.ResRet.f32 %6587, 0
  %6589 = extractvalue %dx.types.ResRet.f32 %6587, 1
  %6590 = extractvalue %dx.types.ResRet.f32 %6587, 2
  %6591 = extractvalue %dx.types.ResRet.f32 %6587, 3
  %6592 = add nuw nsw i32 %6586, 16
  %6593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6592, i32 undef)  ; BufferLoad(srv,index,wot)
  %6594 = extractvalue %dx.types.ResRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.ResRet.f32 %6593, 1
  %6596 = add nuw nsw i32 %6586, 32
  %6597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6596, i32 undef)  ; BufferLoad(srv,index,wot)
  %6598 = extractvalue %dx.types.ResRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.ResRet.f32 %6597, 1
  %6600 = extractvalue %dx.types.ResRet.f32 %6597, 2
  %6601 = add nuw nsw i32 %6586, 48
  %6602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6601, i32 undef)  ; BufferLoad(srv,index,wot)
  %6603 = extractvalue %dx.types.ResRet.f32 %6602, 0
  %6604 = extractvalue %dx.types.ResRet.f32 %6602, 1
  %6605 = extractvalue %dx.types.ResRet.f32 %6602, 2
  %6606 = extractvalue %dx.types.ResRet.f32 %6602, 3
  %6607 = add nuw nsw i32 %6586, 64
  %6608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6607, i32 undef)  ; BufferLoad(srv,index,wot)
  %6609 = extractvalue %dx.types.ResRet.f32 %6608, 0
  %6610 = extractvalue %dx.types.ResRet.f32 %6608, 1
  %6611 = extractvalue %dx.types.ResRet.f32 %6608, 2
  %6612 = extractvalue %dx.types.ResRet.f32 %6608, 3
  %6613 = add nuw nsw i32 %6586, 80
  %6614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6613, i32 undef)  ; BufferLoad(srv,index,wot)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  %6618 = extractvalue %dx.types.ResRet.f32 %6614, 3
  %6619 = add nuw nsw i32 %6586, 96
  %6620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6619, i32 undef)  ; BufferLoad(srv,index,wot)
  %6621 = extractvalue %dx.types.ResRet.f32 %6620, 0
  %6622 = extractvalue %dx.types.ResRet.f32 %6620, 1
  %6623 = extractvalue %dx.types.ResRet.f32 %6620, 2
  %6624 = extractvalue %dx.types.ResRet.f32 %6620, 3
  %6625 = bitcast float %6595 to i32
  %6626 = fmul fast float %6600, %107
  %6627 = fmul fast float %6600, %108
  %6628 = fmul fast float %6600, %109
  %6629 = fadd fast float %6626, %187
  %6630 = fadd fast float %6627, %188
  %6631 = fadd fast float %6628, %189
  %6632 = fmul fast float %6629, %6603
  %6633 = call float @dx.op.tertiary.f32(i32 46, float %6630, float %6609, float %6632)  ; FMad(a,b,c)
  %6634 = call float @dx.op.tertiary.f32(i32 46, float %6631, float %6615, float %6633)  ; FMad(a,b,c)
  %6635 = fadd fast float %6634, %6621
  %6636 = fmul fast float %6629, %6604
  %6637 = call float @dx.op.tertiary.f32(i32 46, float %6630, float %6610, float %6636)  ; FMad(a,b,c)
  %6638 = call float @dx.op.tertiary.f32(i32 46, float %6631, float %6616, float %6637)  ; FMad(a,b,c)
  %6639 = fadd fast float %6638, %6622
  %6640 = fmul fast float %6629, %6605
  %6641 = call float @dx.op.tertiary.f32(i32 46, float %6630, float %6611, float %6640)  ; FMad(a,b,c)
  %6642 = call float @dx.op.tertiary.f32(i32 46, float %6631, float %6617, float %6641)  ; FMad(a,b,c)
  %6643 = fadd fast float %6642, %6623
  %6644 = fmul fast float %6629, %6606
  %6645 = call float @dx.op.tertiary.f32(i32 46, float %6630, float %6612, float %6644)  ; FMad(a,b,c)
  %6646 = call float @dx.op.tertiary.f32(i32 46, float %6631, float %6618, float %6645)  ; FMad(a,b,c)
  %6647 = fadd fast float %6646, %6624
  %6648 = fdiv fast float %6635, %6647
  %6649 = fdiv fast float %6639, %6647
  %6650 = fdiv fast float %6643, %6647
  %6651 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6650)  ; FMax(a,b)
  %6652 = fmul fast float %270, 0x401921FB60000000
  %6653 = call float @dx.op.unary.f32(i32 13, float %6652)  ; Sin(value)
  %6654 = call float @dx.op.unary.f32(i32 12, float %6652)  ; Cos(value)
  %6655 = fsub fast float -0.000000e+00, %6653
  %6656 = fmul fast float %6590, 5.000000e-01
  %6657 = call float @dx.op.dot2.f32(i32 54, float %270, float %270, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6658 = call float @dx.op.unary.f32(i32 22, float %6657)  ; Frc(value)
  %6659 = fmul fast float %6658, 0x404A7DD040000000
  %6660 = call float @dx.op.unary.f32(i32 22, float %6659)  ; Frc(value)
  %6661 = fmul fast float %6660, %6599
  %6662 = fadd fast float %6661, %6656
  %6663 = call float @dx.op.tertiary.f32(i32 46, float %6662, float %6655, float 0.000000e+00)  ; FMad(a,b,c)
  %6664 = call float @dx.op.tertiary.f32(i32 46, float %6662, float %6654, float 0.000000e+00)  ; FMad(a,b,c)
  %6665 = fadd fast float %6663, %6648
  %6666 = fadd fast float %6664, %6649
  %6667 = fmul fast float %6665, %6594
  %6668 = fmul fast float %6666, %6594
  %6669 = call float @dx.op.binary.f32(i32 35, float %6667, float %6590)  ; FMax(a,b)
  %6670 = call float @dx.op.binary.f32(i32 35, float %6668, float %6590)  ; FMax(a,b)
  %6671 = call float @dx.op.binary.f32(i32 36, float %6669, float %6591)  ; FMin(a,b)
  %6672 = call float @dx.op.binary.f32(i32 36, float %6670, float %6591)  ; FMin(a,b)
  %6673 = fadd fast float %6671, %6588
  %6674 = fadd fast float %6672, %6589
  %6675 = uitofp i32 %6625 to float
  %6676 = fadd fast float %6651, %6598
  %6677 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %46, float %6673, float %6674, float %6675, float undef, i32 0, i32 0, i32 undef, float %6676)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6678 = extractvalue %dx.types.ResRet.f32 %6677, 0
  %6679 = fadd fast float %6678, -1.000000e+00
  %6680 = fmul fast float %6679, %6559
  %6681 = fadd fast float %6680, 1.000000e+00
  %6682 = fmul fast float %6681, %6571
  br label %6683

; <label>:6683                                    ; preds = %6585, %6583
  %6684 = phi float [ %6682, %6585 ], [ %6571, %6583 ]
  %6685 = call float @dx.op.binary.f32(i32 36, float %6684, float %6684)  ; FMin(a,b)
  %6686 = call float @dx.op.binary.f32(i32 36, float %6684, float %6685)  ; FMin(a,b)
  %6687 = fcmp fast ogt float %6686, 0.000000e+00
  br i1 %6687, label %6688, label %6575, !dx.controlflow.hints !120

; <label>:6688                                    ; preds = %6683
  %6689 = fmul fast float %6684, %6493
  %6690 = fmul fast float %6684, %6494
  %6691 = fmul fast float %6684, %6495
  %6692 = fsub fast float %6477, %4332
  %6693 = fcmp fast ogt float %6692, 0.000000e+00
  %6694 = fsub fast float %189, %4332
  %6695 = fcmp fast ogt float %6694, 0.000000e+00
  %6696 = xor i1 %6695, %6693
  %6697 = fsub fast float %4332, %6477
  %6698 = fmul fast float %6697, 2.000000e+00
  %6699 = fadd fast float %6698, %6477
  %6700 = select i1 %6696, float %6477, float %6699
  %6701 = fsub fast float %6700, %189
  %6702 = call float @dx.op.dot3.f32(i32 55, float %6503, float %6504, float %6701, float %6503, float %6504, float %6701)  ; Dot3(ax,ay,az,bx,by,bz)
  %6703 = call float @dx.op.unary.f32(i32 25, float %6702)  ; Rsqrt(value)
  %6704 = fmul fast float %6703, %6503
  %6705 = fmul fast float %6703, %6504
  %6706 = fmul fast float %6703, %6701
  %6707 = fsub fast float %4332, %189
  %6708 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6707)  ; Dot3(ax,ay,az,bx,by,bz)
  %6709 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6704, float %6705, float %6706)  ; Dot3(ax,ay,az,bx,by,bz)
  %6710 = fdiv fast float 1.000000e+00, %6709
  %6711 = fmul fast float %6710, %6708
  %6712 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6694, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6713 = fcmp fast ogt float %6712, 0.000000e+00
  %6714 = fcmp fast olt float %6712, 0.000000e+00
  %6715 = zext i1 %6713 to i32
  %6716 = zext i1 %6714 to i32
  %6717 = sub nsw i32 %6715, %6716
  %6718 = sitofp i32 %6717 to float
  %6719 = fsub fast float %6700, %4332
  %6720 = call float @dx.op.dot3.f32(i32 55, float %6503, float %6504, float %6719, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6721 = fcmp fast ogt float %6720, 0.000000e+00
  %6722 = fcmp fast olt float %6720, 0.000000e+00
  %6723 = zext i1 %6721 to i32
  %6724 = zext i1 %6722 to i32
  %6725 = sub nsw i32 %6723, %6724
  %6726 = sitofp i32 %6725 to float
  %6727 = fcmp fast une float %6718, %6726
  br i1 %6727, label %6728, label %6738

; <label>:6728                                    ; preds = %6688
  %6729 = fmul fast float %6711, %6706
  %6730 = fmul fast float %6711, %6705
  %6731 = fmul fast float %6711, %6704
  %6732 = fmul fast float %6731, %6731
  %6733 = fmul fast float %6730, %6730
  %6734 = fadd fast float %6732, %6733
  %6735 = fmul fast float %6729, %6729
  %6736 = fadd fast float %6734, %6735
  %6737 = call float @dx.op.unary.f32(i32 24, float %6736)  ; Sqrt(value)
  br label %6750

; <label>:6738                                    ; preds = %6688
  %6739 = icmp slt i32 %6717, 0
  br i1 %6739, label %6740, label %6750

; <label>:6740                                    ; preds = %6738
  %6741 = fsub fast float %187, %6475
  %6742 = fsub fast float %188, %6476
  %6743 = fsub fast float %189, %6700
  %6744 = fmul fast float %6741, %6741
  %6745 = fmul fast float %6742, %6742
  %6746 = fadd fast float %6744, %6745
  %6747 = fmul fast float %6743, %6743
  %6748 = fadd fast float %6746, %6747
  %6749 = call float @dx.op.unary.f32(i32 24, float %6748)  ; Sqrt(value)
  br label %6750

; <label>:6750                                    ; preds = %6740, %6738, %6728
  %6751 = phi float [ %6737, %6728 ], [ %6749, %6740 ], [ 0.000000e+00, %6738 ]
  %6752 = and i1 %6695, %6693
  %6753 = fsub fast float -0.000000e+00, %6751
  %6754 = select i1 %6752, float -0.000000e+00, float %6753
  %6755 = fmul fast float %4333, 0x3FF7154760000000
  %6756 = fmul fast float %6755, %6754
  %6757 = fmul fast float %4334, 0x3FF7154760000000
  %6758 = fmul fast float %6757, %6754
  %6759 = fmul fast float %4335, 0x3FF7154760000000
  %6760 = fmul fast float %6759, %6754
  %6761 = call float @dx.op.unary.f32(i32 21, float %6756)  ; Exp(value)
  %6762 = call float @dx.op.unary.f32(i32 21, float %6758)  ; Exp(value)
  %6763 = call float @dx.op.unary.f32(i32 21, float %6760)  ; Exp(value)
  %6764 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6765 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  %6766 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  %6767 = fmul fast float %6689, %6764
  %6768 = fmul fast float %6690, %6765
  %6769 = fmul fast float %6691, %6766
  %6770 = fsub fast float %6509, %5124
  %6771 = fsub fast float %6510, %5123
  %6772 = fsub fast float %6511, %5122
  %6773 = call float @dx.op.dot3.f32(i32 55, float %6770, float %6771, float %6772, float %6770, float %6771, float %6772)  ; Dot3(ax,ay,az,bx,by,bz)
  %6774 = call float @dx.op.unary.f32(i32 25, float %6773)  ; Rsqrt(value)
  %6775 = fmul fast float %6774, %6770
  %6776 = fmul fast float %6774, %6771
  %6777 = fmul fast float %6774, %6772
  %6778 = call float @dx.op.dot3.f32(i32 55, float %6509, float %6510, float %6511, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6779 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5120, float %5119, float %6775, float %6776, float %6777)  ; Dot3(ax,ay,az,bx,by,bz)
  %6780 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6781 = fmul fast float %6780, %6516
  %6782 = fmul fast float %6780, %6780
  %6783 = fmul fast float %6782, %5152
  %6784 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6785 = fmul fast float %6781, %6784
  %6786 = bitcast float %6506 to i32
  %6787 = ashr i32 %6786, 1
  %6788 = sub nsw i32 1597463007, %6787
  %6789 = bitcast i32 %6788 to float
  %6790 = fmul fast float %6789, %6503
  %6791 = fmul fast float %6789, %6504
  %6792 = fmul fast float %6789, %6505
  %6793 = fsub fast float %6790, %5124
  %6794 = fsub fast float %6791, %5123
  %6795 = fsub fast float %6792, %5122
  %6796 = call float @dx.op.dot3.f32(i32 55, float %6793, float %6794, float %6795, float %6793, float %6794, float %6795)  ; Dot3(ax,ay,az,bx,by,bz)
  %6797 = call float @dx.op.unary.f32(i32 25, float %6796)  ; Rsqrt(value)
  %6798 = fmul fast float %6793, %6797
  %6799 = fmul fast float %6794, %6797
  %6800 = fmul fast float %6795, %6797
  %6801 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %6798, float %6799, float %6800)  ; Dot3(ax,ay,az,bx,by,bz)
  %6802 = fmul fast float %6801, %6801
  %6803 = call float @dx.op.unary.f32(i32 6, float %6778)  ; FAbs(value)
  %6804 = fsub fast float 1.000000e+00, %5134
  %6805 = call float @dx.op.binary.f32(i32 35, float %6804, float 0x3F847AE140000000)  ; FMax(a,b)
  %6806 = fmul fast float %6805, %6805
  %6807 = fmul fast float %6806, %6806
  %6808 = fsub fast float 1.000000e+00, %6807
  %6809 = fmul fast float %5139, %5139
  %6810 = fmul fast float %6809, %6808
  %6811 = fadd fast float %6810, %6807
  %6812 = bitcast float %6811 to i32
  %6813 = ashr i32 %6812, 1
  %6814 = add nsw i32 %6813, 532487669
  %6815 = bitcast i32 %6814 to float
  %6816 = fadd fast float %6815, %5139
  %6817 = fmul fast float %6807, %6802
  %6818 = fsub fast float 1.000000e+00, %6802
  %6819 = fadd fast float %6818, %6817
  %6820 = fmul fast float %6803, %6803
  %6821 = fmul fast float %6820, %6808
  %6822 = fadd fast float %6821, %6807
  %6823 = bitcast float %6822 to i32
  %6824 = ashr i32 %6823, 1
  %6825 = add nsw i32 %6824, 532487669
  %6826 = bitcast i32 %6825 to float
  %6827 = fadd fast float %6826, %6803
  %6828 = fmul fast float %6819, %6819
  %6829 = fmul fast float %6828, %6816
  %6830 = fmul fast float %6829, %6827
  %6831 = fdiv fast float 1.000000e+00, %6830
  %6832 = bitcast float %6807 to i32
  %6833 = sitofp i32 %6832 to float
  %6834 = fmul fast float %6833, 0x3FE7F73180000000
  %6835 = fadd fast float %6834, 0x41AFE27C40000000
  %6836 = fptosi float %6835 to i32
  %6837 = bitcast i32 %6836 to float
  %6838 = fmul fast float %6472, 0x3FD80E9D60000000
  %6839 = fmul fast float %6838, %6789
  %6840 = fadd fast float %6837, %6839
  %6841 = bitcast float %6840 to i32
  %6842 = sub nsw i32 2129859010, %6841
  %6843 = bitcast i32 %6842 to float
  %6844 = fmul fast float %6807, %6831
  %6845 = fmul fast float %6844, %6837
  %6846 = fmul fast float %6845, %6843
  %6847 = fmul fast float %5252, 0x3FF9999980000000
  %6848 = fsub fast float 5.000000e+00, %6847
  %6849 = call float @dx.op.unary.f32(i32 6, float %6779)  ; FAbs(value)
  %6850 = fsub fast float 1.000000e+00, %6849
  %6851 = fmul fast float %5252, 0x41D9660740000000
  %6852 = fadd fast float %6851, 0xC1EFBF8940000000
  %6853 = bitcast float %6850 to i32
  %6854 = sitofp i32 %6853 to float
  %6855 = fmul fast float %6854, %6848
  %6856 = fadd fast float %6852, %6855
  %6857 = fptosi float %6856 to i32
  %6858 = bitcast i32 %6857 to float
  %6859 = fsub fast float 1.000000e+00, %5125
  %6860 = fsub fast float 1.000000e+00, %5126
  %6861 = fsub fast float 1.000000e+00, %5137
  %6862 = fmul fast float %6858, %6859
  %6863 = fmul fast float %6858, %6860
  %6864 = fmul fast float %6858, %6861
  %6865 = fadd fast float %6862, %5125
  %6866 = fadd fast float %6863, %5126
  %6867 = fadd fast float %6864, %5137
  %6868 = fmul fast float %6778, 9.843750e-01
  %6869 = fadd fast float %6868, 7.812500e-03
  %6870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %6869, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.ResRet.f32 %6870, 1
  %6873 = extractvalue %dx.types.ResRet.f32 %6870, 2
  %6874 = extractvalue %dx.types.ResRet.f32 %6870, 3
  %6875 = fsub fast float %6873, %6871
  %6876 = fsub fast float %6874, %6872
  %6877 = fmul fast float %6875, %5262
  %6878 = fmul fast float %6876, %5262
  %6879 = fadd fast float %6877, %6871
  %6880 = fadd fast float %6878, %6872
  %6881 = fmul fast float %6879, %5125
  %6882 = fmul fast float %6879, %5126
  %6883 = fmul fast float %6879, %5137
  %6884 = fadd fast float %6881, %6880
  %6885 = fadd fast float %6882, %6880
  %6886 = fadd fast float %6883, %6880
  %6887 = call float @dx.op.binary.f32(i32 35, float %6885, float %6886)  ; FMax(a,b)
  %6888 = call float @dx.op.binary.f32(i32 35, float %6884, float %6887)  ; FMax(a,b)
  %6889 = fsub fast float 1.000000e+00, %6888
  %6890 = fmul fast float %6767, %1204
  %6891 = fmul fast float %6890, %6785
  %6892 = fmul fast float %6891, %6889
  %6893 = fmul fast float %6768, %1204
  %6894 = fmul fast float %6893, %6785
  %6895 = fmul fast float %6894, %6889
  %6896 = fmul fast float %6769, %1204
  %6897 = fmul fast float %6896, %6785
  %6898 = fmul fast float %6897, %6889
  %6899 = fadd fast float %6892, %6446
  %6900 = fadd fast float %6895, %6447
  %6901 = fadd fast float %6898, %6448
  %6902 = fmul fast float %6891, %6865
  %6903 = fmul fast float %6902, %6846
  %6904 = fmul fast float %6894, %6866
  %6905 = fmul fast float %6904, %6846
  %6906 = fmul fast float %6897, %6867
  %6907 = fmul fast float %6906, %6846
  %6908 = fadd fast float %6903, %6443
  %6909 = fadd fast float %6905, %6444
  %6910 = fadd fast float %6907, %6445
  br label %6575

; <label>:6911                                    ; preds = %6575
  br label %6912

; <label>:6912                                    ; preds = %6911, %6409
  %6913 = phi float [ %6411, %6409 ], [ %6576, %6911 ]
  %6914 = phi float [ %6412, %6409 ], [ %6577, %6911 ]
  %6915 = phi float [ %6413, %6409 ], [ %6578, %6911 ]
  %6916 = phi float [ %6414, %6409 ], [ %6579, %6911 ]
  %6917 = phi float [ %6415, %6409 ], [ %6580, %6911 ]
  %6918 = phi float [ %6416, %6409 ], [ %6581, %6911 ]
  %6919 = add i32 %6410, 1
  %6920 = icmp ugt i32 %6919, %6406
  br i1 %6920, label %6921, label %6409

; <label>:6921                                    ; preds = %6912
  br label %6922

; <label>:6922                                    ; preds = %6921, %6359, %6349
  %6923 = phi float [ %6350, %6349 ], [ %6350, %6359 ], [ %6913, %6921 ]
  %6924 = phi float [ %6351, %6349 ], [ %6351, %6359 ], [ %6914, %6921 ]
  %6925 = phi float [ %6352, %6349 ], [ %6352, %6359 ], [ %6915, %6921 ]
  %6926 = phi float [ %6353, %6349 ], [ %6353, %6359 ], [ %6916, %6921 ]
  %6927 = phi float [ %6354, %6349 ], [ %6354, %6359 ], [ %6917, %6921 ]
  %6928 = phi float [ %6355, %6349 ], [ %6355, %6359 ], [ %6918, %6921 ]
  %6929 = fmul fast float %1204, %1204
  %6930 = fmul fast float %6929, %5304
  %6931 = fsub fast float -0.000000e+00, %6930
  %6932 = fmul fast float %6929, %5305
  %6933 = fsub fast float -0.000000e+00, %6932
  %6934 = fmul fast float %6929, %5306
  %6935 = fsub fast float -0.000000e+00, %6934
  %6936 = fsub fast float 1.000000e+00, %5139
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = fmul fast float %6938, %6936
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 3
  %6942 = fsub fast float 1.000000e+00, %3857
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = fadd fast float %3878, %6928
  %6945 = fmul fast float %6944, %3857
  %6946 = fmul fast float %6943, %6941
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 3
  %6949 = fmul fast float %6926, %5128
  %6950 = fmul fast float %6927, %5129
  %6951 = fmul fast float %6928, %5130
  %6952 = fcmp fast ogt float %91, %222
  %6953 = and i1 %6952, %4338
  %6954 = or i1 %4344, %6953
  %6955 = icmp eq i32 %4337, 2
  %6956 = fcmp fast ole float %91, %222
  %6957 = and i1 %6956, %6955
  %6958 = or i1 %6957, %6954
  br i1 %6953, label %6959, label %7216

; <label>:6959                                    ; preds = %6922
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6962 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6963 = fmul fast float %6961, %100
  %6964 = fmul fast float %6962, %101
  %6965 = call float @dx.op.unary.f32(i32 7, float %6963)  ; Saturate(value)
  %6966 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6967 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6965, float %6966, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = extractvalue %dx.types.ResRet.f32 %6967, 1
  %6970 = extractvalue %dx.types.ResRet.f32 %6967, 2
  %6971 = extractvalue %dx.types.ResRet.f32 %6967, 3
  %6972 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6965, float %6966, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.ResRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.ResRet.f32 %6972, 2
  %6976 = extractvalue %dx.types.ResRet.f32 %6972, 3
  %6977 = call float @dx.op.binary.f32(i32 35, float %6969, float %6970)  ; FMax(a,b)
  %6978 = call float @dx.op.binary.f32(i32 35, float %6968, float %6977)  ; FMax(a,b)
  %6979 = call float @dx.op.binary.f32(i32 35, float %6978, float %6971)  ; FMax(a,b)
  %6980 = call float @dx.op.binary.f32(i32 36, float %6974, float %6975)  ; FMin(a,b)
  %6981 = call float @dx.op.binary.f32(i32 36, float %6973, float %6980)  ; FMin(a,b)
  %6982 = call float @dx.op.binary.f32(i32 36, float %6981, float %6976)  ; FMin(a,b)
  %6983 = fmul fast float %6979, 2.550000e+02
  %6984 = fadd fast float %6983, 0x3F70101020000000
  %6985 = fptoui float %6984 to i32
  %6986 = fmul fast float %6982, 2.550000e+02
  %6987 = fadd fast float %6986, 0x3F70101020000000
  %6988 = fptoui float %6987 to i32
  %6989 = icmp ult i32 %6985, %6988
  br i1 %6989, label %6990, label %7158

; <label>:6990                                    ; preds = %6959
  %6991 = fcmp fast ogt float %90, 9.843750e-01
  %6992 = fadd fast float %91, -4.000000e+00
  %6993 = select i1 %6991, float -4.000000e+00, float %6992
  %6994 = call float @dx.op.binary.f32(i32 35, float %6993, float 0.000000e+00)  ; FMax(a,b)
  %6995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6996 = extractvalue %dx.types.CBufRet.f32 %6995, 0
  %6997 = fadd fast float %6996, %6994
  %6998 = extractvalue %dx.types.CBufRet.f32 %6995, 2
  %6999 = fmul fast float %6997, %6998
  %7000 = call float @dx.op.unary.f32(i32 23, float %6999)  ; Log(value)
  %7001 = extractvalue %dx.types.CBufRet.f32 %6995, 3
  %7002 = fmul fast float %7001, %7000
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 2
  %7005 = fmul fast float %7002, %7004
  %7006 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  %7007 = uitofp i32 %6985 to float
  %7008 = uitofp i32 %6988 to float
  %7009 = fadd fast float %7007, 5.000000e-01
  %7010 = fadd fast float %7008, 5.000000e-01
  %7011 = fmul fast float %7004, %7009
  %7012 = fmul fast float %7004, %7010
  %7013 = fadd fast float %7011, 0x3F0FFB4800000000
  %7014 = fadd fast float %7012, 0xBF0FFB4800000000
  %7015 = call float @dx.op.binary.f32(i32 35, float %7006, float %7013)  ; FMax(a,b)
  %7016 = call float @dx.op.binary.f32(i32 36, float %7015, float %7014)  ; FMin(a,b)
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 1
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7020 = extractvalue %dx.types.CBufRet.f32 %7017, 0
  %7021 = fmul fast float %7018, %7016
  %7022 = fadd fast float %7020, %7021
  %7023 = fadd fast float %7020, %7019
  %7024 = fsub fast float %7018, %7019
  %7025 = fadd fast float %7024, %7020
  %7026 = call float @dx.op.binary.f32(i32 35, float %7022, float %7023)  ; FMax(a,b)
  %7027 = call float @dx.op.binary.f32(i32 36, float %7026, float %7025)  ; FMin(a,b)
  %7028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %6965, float %6966, float %7027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  %7030 = extractvalue %dx.types.ResRet.f32 %7028, 1
  %7031 = extractvalue %dx.types.ResRet.f32 %7028, 2
  %7032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.i32 %7032, 0
  %7034 = extractvalue %dx.types.CBufRet.i32 %7032, 1
  %7035 = uitofp i32 %7033 to float
  %7036 = uitofp i32 %7034 to float
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 0
  %7039 = extractvalue %dx.types.CBufRet.f32 %7037, 1
  %7040 = fmul fast float %7035, %6965
  %7041 = fmul fast float %7036, %6966
  %7042 = fadd fast float %7040, -5.000000e-01
  %7043 = fadd fast float %7041, -5.000000e-01
  %7044 = call float @dx.op.unary.f32(i32 22, float %7042)  ; Frc(value)
  %7045 = call float @dx.op.unary.f32(i32 22, float %7043)  ; Frc(value)
  %7046 = fmul fast float %7044, %7044
  %7047 = fmul fast float %7046, %7044
  %7048 = fsub fast float 3.000000e+00, %7044
  %7049 = fmul fast float %7046, %7048
  %7050 = fmul fast float %7044, 3.000000e+00
  %7051 = fmul fast float %7047, 3.000000e+00
  %7052 = fmul fast float %7046, 6.000000e+00
  %7053 = fsub fast float %7051, %7052
  %7054 = fadd fast float %7053, 4.000000e+00
  %7055 = fmul fast float %7054, 0x3FC5555560000000
  %7056 = fmul fast float %7047, -3.000000e+00
  %7057 = fadd fast float %7046, %7044
  %7058 = fmul fast float %7057, 3.000000e+00
  %7059 = fadd fast float %7056, 1.000000e+00
  %7060 = fadd fast float %7059, %7058
  %7061 = fmul fast float %7047, 0x3FC5555560000000
  %7062 = fmul fast float %7045, %7045
  %7063 = fmul fast float %7062, %7045
  %7064 = fsub fast float 3.000000e+00, %7045
  %7065 = fmul fast float %7062, %7064
  %7066 = fmul fast float %7045, 3.000000e+00
  %7067 = fmul fast float %7063, 3.000000e+00
  %7068 = fmul fast float %7062, 6.000000e+00
  %7069 = fsub fast float %7067, %7068
  %7070 = fadd fast float %7069, 4.000000e+00
  %7071 = fmul fast float %7070, 0x3FC5555560000000
  %7072 = fmul fast float %7063, -3.000000e+00
  %7073 = fadd fast float %7062, %7045
  %7074 = fmul fast float %7073, 3.000000e+00
  %7075 = fadd fast float %7072, 1.000000e+00
  %7076 = fadd fast float %7075, %7074
  %7077 = fmul fast float %7063, 0x3FC5555560000000
  %7078 = fadd fast float %7044, 1.000000e+00
  %7079 = fsub fast float 1.000000e+00, %7050
  %7080 = fadd fast float %7079, %7049
  %7081 = fadd fast float %7080, %7054
  %7082 = fmul fast float %7081, 0x3FC5555560000000
  %7083 = fdiv fast float %7055, %7082
  %7084 = fsub fast float %7078, %7083
  %7085 = fsub fast float 1.000000e+00, %7044
  %7086 = fadd fast float %7060, %7047
  %7087 = fmul fast float %7086, 0x3FC5555560000000
  %7088 = fdiv fast float %7061, %7087
  %7089 = fadd fast float %7085, %7088
  %7090 = fadd fast float %7045, 1.000000e+00
  %7091 = fsub fast float 1.000000e+00, %7066
  %7092 = fadd fast float %7091, %7065
  %7093 = fadd fast float %7092, %7070
  %7094 = fmul fast float %7093, 0x3FC5555560000000
  %7095 = fdiv fast float %7071, %7094
  %7096 = fsub fast float %7090, %7095
  %7097 = fsub fast float 1.000000e+00, %7045
  %7098 = fadd fast float %7076, %7063
  %7099 = fmul fast float %7098, 0x3FC5555560000000
  %7100 = fdiv fast float %7077, %7099
  %7101 = fadd fast float %7100, %7097
  %7102 = fmul fast float %7084, %7038
  %7103 = fsub fast float %6965, %7102
  %7104 = fmul fast float %7089, %7038
  %7105 = fadd fast float %7104, %6965
  %7106 = fmul fast float %7101, %7039
  %7107 = fadd fast float %7106, %6966
  %7108 = fmul fast float %7096, %7039
  %7109 = fsub fast float %6966, %7108
  %7110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %7103, float %7109, float %7027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7111 = extractvalue %dx.types.ResRet.f32 %7110, 0
  %7112 = extractvalue %dx.types.ResRet.f32 %7110, 1
  %7113 = extractvalue %dx.types.ResRet.f32 %7110, 2
  %7114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %7105, float %7109, float %7027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7115 = extractvalue %dx.types.ResRet.f32 %7114, 0
  %7116 = extractvalue %dx.types.ResRet.f32 %7114, 1
  %7117 = extractvalue %dx.types.ResRet.f32 %7114, 2
  %7118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %7103, float %7107, float %7027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7119 = extractvalue %dx.types.ResRet.f32 %7118, 0
  %7120 = extractvalue %dx.types.ResRet.f32 %7118, 1
  %7121 = extractvalue %dx.types.ResRet.f32 %7118, 2
  %7122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %7105, float %7107, float %7027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7123 = extractvalue %dx.types.ResRet.f32 %7122, 0
  %7124 = extractvalue %dx.types.ResRet.f32 %7122, 1
  %7125 = extractvalue %dx.types.ResRet.f32 %7122, 2
  %7126 = fsub fast float %7119, %7111
  %7127 = fsub fast float %7120, %7112
  %7128 = fsub fast float %7121, %7113
  %7129 = fmul fast float %7126, %7099
  %7130 = fmul fast float %7127, %7099
  %7131 = fmul fast float %7128, %7099
  %7132 = fadd fast float %7129, %7111
  %7133 = fadd fast float %7130, %7112
  %7134 = fadd fast float %7131, %7113
  %7135 = fsub fast float %7123, %7115
  %7136 = fsub fast float %7124, %7116
  %7137 = fsub fast float %7125, %7117
  %7138 = fmul fast float %7135, %7099
  %7139 = fmul fast float %7136, %7099
  %7140 = fmul fast float %7137, %7099
  %7141 = fsub fast float %7115, %7132
  %7142 = fadd fast float %7141, %7138
  %7143 = fsub fast float %7116, %7133
  %7144 = fadd fast float %7143, %7139
  %7145 = fsub fast float %7117, %7134
  %7146 = fadd fast float %7145, %7140
  %7147 = fmul fast float %7142, %7087
  %7148 = fmul fast float %7144, %7087
  %7149 = fmul fast float %7146, %7087
  %7150 = fadd fast float %7147, %7132
  %7151 = fadd fast float %7148, %7133
  %7152 = fadd fast float %7149, %7134
  %7153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.f32 %7153, 1
  %7155 = fmul fast float %7150, %7154
  %7156 = fmul fast float %7151, %7154
  %7157 = fmul fast float %7152, %7154
  br label %7158

; <label>:7158                                    ; preds = %6990, %6959
  %7159 = phi float [ %7029, %6990 ], [ 1.000000e+00, %6959 ]
  %7160 = phi float [ %7030, %6990 ], [ 1.000000e+00, %6959 ]
  %7161 = phi float [ %7031, %6990 ], [ 1.000000e+00, %6959 ]
  %7162 = phi float [ %7155, %6990 ], [ 0.000000e+00, %6959 ]
  %7163 = phi float [ %7156, %6990 ], [ 0.000000e+00, %6959 ]
  %7164 = phi float [ %7157, %6990 ], [ 0.000000e+00, %6959 ]
  %7165 = fmul fast float %7162, %6931
  %7166 = fmul fast float %7163, %6933
  %7167 = fmul fast float %7164, %6935
  %7168 = call float @dx.op.dot3.f32(i32 55, float %7159, float %7160, float %7161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7169 = call float @dx.op.dot3.f32(i32 55, float %7165, float %7166, float %7167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7170 = select i1 %259, float %7168, float %7159
  %7171 = select i1 %259, float %7168, float %7160
  %7172 = select i1 %259, float 1.000000e+00, float %7161
  %7173 = select i1 %259, float %7169, float %7165
  %7174 = select i1 %259, float 0.000000e+00, float %7166
  %7175 = select i1 %259, float 0.000000e+00, float %7167
  %7176 = fmul fast float %7170, %6949
  %7177 = fmul fast float %7171, %6950
  %7178 = fmul fast float %7172, %6951
  %7179 = fadd fast float %7176, %7173
  %7180 = fadd fast float %7177, %7174
  %7181 = fadd fast float %7175, %7178
  %7182 = fmul fast float %7170, %6923
  %7183 = fmul fast float %7171, %6924
  %7184 = fmul fast float %7172, %6925
  %7185 = fmul fast float %136, %6961
  %7186 = fmul fast float %138, %6962
  %7187 = fsub fast float 1.000000e+00, %7185
  %7188 = fsub fast float 1.000000e+00, %7186
  %7189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7190 = extractvalue %dx.types.CBufRet.f32 %7189, 0
  %7191 = extractvalue %dx.types.CBufRet.f32 %7189, 1
  %7192 = extractvalue %dx.types.CBufRet.f32 %7189, 2
  %7193 = fmul fast float %7187, %7190
  %7194 = fmul fast float %7187, %7191
  %7195 = fmul fast float %7187, %7192
  %7196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7197 = extractvalue %dx.types.CBufRet.f32 %7196, 0
  %7198 = extractvalue %dx.types.CBufRet.f32 %7196, 1
  %7199 = extractvalue %dx.types.CBufRet.f32 %7196, 2
  %7200 = fmul fast float %7188, %7197
  %7201 = fmul fast float %7188, %7198
  %7202 = fmul fast float %7188, %7199
  %7203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7204 = extractvalue %dx.types.CBufRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.CBufRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.CBufRet.f32 %7203, 2
  %7207 = fadd fast float %7200, %7204
  %7208 = fadd fast float %7207, %7193
  %7209 = fadd fast float %7201, %7205
  %7210 = fadd fast float %7209, %7194
  %7211 = fadd fast float %7202, %7206
  %7212 = fadd fast float %7211, %7195
  %7213 = fmul fast float %7208, %222
  %7214 = fmul fast float %7210, %222
  %7215 = fmul fast float %7212, %222
  br label %7216

; <label>:7216                                    ; preds = %7158, %6922
  %7217 = phi float [ %7213, %7158 ], [ %187, %6922 ]
  %7218 = phi float [ %7214, %7158 ], [ %188, %6922 ]
  %7219 = phi float [ %7215, %7158 ], [ %189, %6922 ]
  %7220 = phi float [ %222, %7158 ], [ %91, %6922 ]
  %7221 = phi float [ %7179, %7158 ], [ %6949, %6922 ]
  %7222 = phi float [ %7180, %7158 ], [ %6950, %6922 ]
  %7223 = phi float [ %7181, %7158 ], [ %6951, %6922 ]
  %7224 = phi float [ %7182, %7158 ], [ %6923, %6922 ]
  %7225 = phi float [ %7183, %7158 ], [ %6924, %6922 ]
  %7226 = phi float [ %7184, %7158 ], [ %6925, %6922 ]
  %7227 = phi float [ %7159, %7158 ], [ 1.000000e+00, %6922 ]
  br i1 %6958, label %8382, label %7228

; <label>:7228                                    ; preds = %7216
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 0
  %7231 = extractvalue %dx.types.CBufRet.f32 %7229, 1
  %7232 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7233 = extractvalue %dx.types.CBufRet.f32 %7229, 3
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 0
  %7236 = extractvalue %dx.types.CBufRet.f32 %7234, 1
  %7237 = extractvalue %dx.types.CBufRet.f32 %7234, 2
  %7238 = extractvalue %dx.types.CBufRet.f32 %7234, 3
  %7239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7240 = extractvalue %dx.types.CBufRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.CBufRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.CBufRet.f32 %7239, 2
  %7243 = extractvalue %dx.types.CBufRet.f32 %7239, 3
  %7244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7245 = extractvalue %dx.types.CBufRet.f32 %7244, 0
  %7246 = extractvalue %dx.types.CBufRet.f32 %7244, 1
  %7247 = extractvalue %dx.types.CBufRet.f32 %7244, 2
  %7248 = extractvalue %dx.types.CBufRet.f32 %7244, 3
  %7249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7250 = extractvalue %dx.types.CBufRet.f32 %7249, 3
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 3
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7254 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7255 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7256 = fcmp fast olt float %7255, -5.000000e-01
  %7257 = call float @dx.op.dot3.f32(i32 55, float %7217, float %7218, float %7219, float %7217, float %7218, float %7219)  ; Dot3(ax,ay,az,bx,by,bz)
  %7258 = call float @dx.op.unary.f32(i32 25, float %7257)  ; Rsqrt(value)
  %7259 = fmul fast float %7258, %7257
  %7260 = fmul fast float %7258, %7217
  %7261 = fmul fast float %7258, %7218
  %7262 = fmul fast float %7258, %7219
  %7263 = fadd fast float %7259, %7233
  %7264 = call float @dx.op.dot3.f32(i32 55, float %7260, float %7261, float %7262, float %7230, float %7231, float %7232)  ; Dot3(ax,ay,az,bx,by,bz)
  %7265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.i32 %7265, 1
  %7267 = and i32 %7266, 1
  %7268 = icmp ne i32 %7267, 0
  %7269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7270 = extractvalue %dx.types.CBufRet.f32 %7269, 2
  %7271 = fcmp fast ogt float %7270, 0.000000e+00
  %7272 = and i1 %7268, %7271
  br i1 %7272, label %7273, label %7679, !dx.controlflow.hints !121

; <label>:7273                                    ; preds = %7228
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 3
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 2
  %7280 = fsub fast float %7277, %7279
  %7281 = and i32 %7266, 2
  %7282 = extractvalue %dx.types.CBufRet.i32 %7265, 0
  %7283 = call i32 @dx.op.binary.i32(i32 40, i32 %7282, i32 3)  ; UMin(a,b)
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 0
  %7286 = extractvalue %dx.types.CBufRet.f32 %7284, 1
  %7287 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7288 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7289 = fsub fast float %7285, %7287
  %7290 = fsub fast float %7286, %7288
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = fcmp fast ogt float %7292, 0.000000e+00
  %7294 = fsub fast float -0.000000e+00, %7289
  %7295 = fsub fast float -0.000000e+00, %7290
  %7296 = call float @dx.op.dot2.f32(i32 54, float %7260, float %7261, float %7260, float %7261)  ; Dot2(ax,ay,bx,by)
  %7297 = call float @dx.op.dot2.f32(i32 54, float %7260, float %7261, float %7294, float %7295)  ; Dot2(ax,ay,bx,by)
  %7298 = fmul fast float %7297, 2.000000e+00
  %7299 = call float @dx.op.dot2.f32(i32 54, float %7294, float %7295, float %7294, float %7295)  ; Dot2(ax,ay,bx,by)
  %7300 = fmul fast float %7292, %7292
  %7301 = fsub fast float %7299, %7300
  %7302 = fmul fast float %7298, %7298
  %7303 = fmul fast float %7296, 4.000000e+00
  %7304 = fmul fast float %7303, %7301
  %7305 = fsub fast float %7302, %7304
  %7306 = fcmp fast ogt float %7305, 0.000000e+00
  br i1 %7306, label %7307, label %7322

; <label>:7307                                    ; preds = %7273
  %7308 = fcmp fast ogt float %7298, 0.000000e+00
  %7309 = call float @dx.op.unary.f32(i32 24, float %7305)  ; Sqrt(value)
  %7310 = fsub fast float -0.000000e+00, %7309
  %7311 = select i1 %7308, float %7309, float %7310
  %7312 = fadd fast float %7311, %7298
  %7313 = fmul float %7312, -5.000000e-01
  %7314 = fdiv fast float %7313, %7296
  %7315 = call float @dx.op.binary.f32(i32 35, float %7314, float 0.000000e+00)  ; FMax(a,b)
  %7316 = call float @dx.op.binary.f32(i32 36, float %7259, float %7315)  ; FMin(a,b)
  %7317 = fdiv fast float %7301, %7313
  %7318 = call float @dx.op.binary.f32(i32 35, float %7317, float 0.000000e+00)  ; FMax(a,b)
  %7319 = call float @dx.op.binary.f32(i32 36, float %7259, float %7318)  ; FMin(a,b)
  %7320 = call float @dx.op.binary.f32(i32 36, float %7316, float %7319)  ; FMin(a,b)
  %7321 = call float @dx.op.binary.f32(i32 35, float %7316, float %7319)  ; FMax(a,b)
  br label %7322

; <label>:7322                                    ; preds = %7307, %7273
  %7323 = phi float [ %7321, %7307 ], [ -1.000000e+00, %7273 ]
  %7324 = phi float [ %7320, %7307 ], [ -1.000000e+00, %7273 ]
  %7325 = phi i1 [ true, %7307 ], [ false, %7273 ]
  %7326 = and i1 %7293, %7325
  br i1 %7326, label %7327, label %7329

; <label>:7327                                    ; preds = %7322
  %7328 = fcmp fast oeq float %7324, %7323
  br i1 %7328, label %7632, label %7330

; <label>:7329                                    ; preds = %7322
  br i1 %7293, label %7632, label %7330

; <label>:7330                                    ; preds = %7329, %7327
  %7331 = phi float [ %7259, %7329 ], [ %7323, %7327 ]
  %7332 = phi float [ 0.000000e+00, %7329 ], [ %7324, %7327 ]
  %7333 = icmp ne i32 %7281, 0
  %7334 = fmul fast float %7331, %7262
  %7335 = fadd fast float %7334, %7275
  %7336 = fmul fast float %7335, %7331
  %7337 = select i1 %7333, float 0.000000e+00, float %7336
  %7338 = fcmp fast oeq float %7262, 0.000000e+00
  %7339 = fdiv fast float %7280, %7262
  %7340 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7339)  ; FMax(a,b)
  %7341 = select i1 %7338, float %7331, float %7340
  %7342 = call float @dx.op.binary.f32(i32 36, float %7331, float %7341)  ; FMin(a,b)
  %7343 = fcmp fast ogt float %7262, 0.000000e+00
  %7344 = fcmp fast olt float %7280, 0.000000e+00
  br i1 %7343, label %7345, label %7402

; <label>:7345                                    ; preds = %7330
  %7346 = icmp eq i32 %7281, 0
  br i1 %7344, label %7347, label %7391

; <label>:7347                                    ; preds = %7345
  %7348 = select i1 %7346, float %7331, float 0.000000e+00
  %7349 = fsub fast float -0.000000e+00, %7348
  %7350 = call float @dx.op.unary.f32(i32 6, float %7349)  ; FAbs(value)
  %7351 = fmul fast float %7348, %7262
  %7352 = fadd fast float %7351, %7275
  %7353 = fmul fast float %7350, %7352
  %7354 = fsub fast float %7337, %7353
  %7355 = fsub fast float %7331, %7350
  %7356 = select i1 %7346, float %7355, float 0.000000e+00
  %7357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7358 = extractvalue %dx.types.CBufRet.f32 %7357, 0
  %7359 = extractvalue %dx.types.CBufRet.f32 %7357, 1
  %7360 = extractvalue %dx.types.CBufRet.f32 %7357, 2
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7364 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7365 = extractvalue %dx.types.CBufRet.f32 %7361, 3
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 3
  %7368 = call float @dx.op.binary.f32(i32 36, float %7354, float %7367)  ; FMin(a,b)
  %7369 = fmul fast float %7365, %7356
  %7370 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7371 = fsub fast float %7362, %7358
  %7372 = fsub fast float %7363, %7359
  %7373 = fsub fast float %7364, %7360
  %7374 = fmul fast float %7370, %7371
  %7375 = fmul fast float %7370, %7372
  %7376 = fmul fast float %7370, %7373
  %7377 = fadd fast float %7374, %7358
  %7378 = fadd fast float %7375, %7359
  %7379 = fadd fast float %7376, %7360
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7382 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7383 = fadd fast float %7382, %7381
  %7384 = call float @dx.op.unary.f32(i32 7, float %7383)  ; Saturate(value)
  %7385 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7386 = extractvalue %dx.types.CBufRet.f32 %7380, 3
  %7387 = fadd fast float %7386, %7385
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7389 = fmul fast float %7384, %7368
  %7390 = fmul fast float %7389, %7388
  br label %7632

; <label>:7391                                    ; preds = %7345
  br i1 %7346, label %7392, label %7413

; <label>:7392                                    ; preds = %7391
  %7393 = call float @dx.op.binary.f32(i32 36, float %7342, float %7332)  ; FMin(a,b)
  %7394 = fsub fast float %7342, %7393
  %7395 = fsub fast float %7394, %7331
  %7396 = call float @dx.op.unary.f32(i32 6, float %7395)  ; FAbs(value)
  %7397 = fadd fast float %7394, %7331
  %7398 = fmul fast float %7397, %7262
  %7399 = fadd fast float %7398, %7275
  %7400 = fmul fast float %7399, %7396
  %7401 = fsub fast float %7337, %7400
  br label %7413

; <label>:7402                                    ; preds = %7330
  br i1 %7344, label %7403, label %7413

; <label>:7403                                    ; preds = %7402
  %7404 = call float @dx.op.binary.f32(i32 35, float %7332, float %7342)  ; FMax(a,b)
  %7405 = icmp eq i32 %7281, 0
  %7406 = select i1 %7405, float %7342, float 0.000000e+00
  %7407 = fsub fast float -0.000000e+00, %7406
  %7408 = call float @dx.op.unary.f32(i32 6, float %7407)  ; FAbs(value)
  %7409 = fmul fast float %7406, %7262
  %7410 = fadd fast float %7409, %7275
  %7411 = fmul fast float %7408, %7410
  %7412 = fsub fast float %7337, %7411
  br label %7413

; <label>:7413                                    ; preds = %7403, %7402, %7392, %7391
  %7414 = phi float [ %7332, %7391 ], [ %7332, %7392 ], [ %7404, %7403 ], [ %7332, %7402 ]
  %7415 = phi float [ 0.000000e+00, %7391 ], [ %7396, %7392 ], [ %7408, %7403 ], [ 0.000000e+00, %7402 ]
  %7416 = phi float [ %7337, %7391 ], [ %7401, %7392 ], [ %7412, %7403 ], [ %7337, %7402 ]
  %7417 = phi float [ %7342, %7391 ], [ %7342, %7392 ], [ %7331, %7403 ], [ %7331, %7402 ]
  %7418 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7418, align 4, !tbaa !122, !noalias !124
  %7419 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7419, align 4, !tbaa !122, !noalias !124
  %7420 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7420, align 4, !tbaa !122, !noalias !124
  %7421 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %7421, align 4, !tbaa !122, !noalias !124
  %7422 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %7422, align 4, !tbaa !122, !noalias !124
  %7423 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %7423, align 4, !tbaa !122, !noalias !124
  %7424 = icmp sgt i32 %7283, 0
  br i1 %7424, label %7425, label %7486

; <label>:7425                                    ; preds = %7413
  br label %7426

; <label>:7426                                    ; preds = %7475, %7425
  %7427 = phi i32 [ %7476, %7475 ], [ 0, %7425 ]
  %7428 = phi i32 [ %7477, %7475 ], [ 0, %7425 ]
  %7429 = add nuw i32 %7428, 171
  %7430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7429)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.CBufRet.f32 %7430, 1
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7436 = fsub fast float %7431, %7434
  %7437 = fsub fast float %7432, %7435
  %7438 = extractvalue %dx.types.CBufRet.f32 %7430, 2
  %7439 = fsub fast float -0.000000e+00, %7436
  %7440 = fsub fast float -0.000000e+00, %7437
  %7441 = call float @dx.op.dot2.f32(i32 54, float %7260, float %7261, float %7439, float %7440)  ; Dot2(ax,ay,bx,by)
  %7442 = fmul fast float %7441, 2.000000e+00
  %7443 = call float @dx.op.dot2.f32(i32 54, float %7439, float %7440, float %7439, float %7440)  ; Dot2(ax,ay,bx,by)
  %7444 = fmul fast float %7438, %7438
  %7445 = fsub fast float %7443, %7444
  %7446 = fmul fast float %7442, %7442
  %7447 = fmul fast float %7303, %7445
  %7448 = fsub fast float %7446, %7447
  %7449 = fcmp fast ogt float %7448, 0.000000e+00
  br i1 %7449, label %7450, label %7465

; <label>:7450                                    ; preds = %7426
  %7451 = fcmp fast ogt float %7442, 0.000000e+00
  %7452 = call float @dx.op.unary.f32(i32 24, float %7448)  ; Sqrt(value)
  %7453 = fsub fast float -0.000000e+00, %7452
  %7454 = select i1 %7451, float %7452, float %7453
  %7455 = fadd fast float %7454, %7442
  %7456 = fmul float %7455, -5.000000e-01
  %7457 = fdiv fast float %7456, %7296
  %7458 = call float @dx.op.binary.f32(i32 35, float %7457, float 0.000000e+00)  ; FMax(a,b)
  %7459 = call float @dx.op.binary.f32(i32 36, float %7331, float %7458)  ; FMin(a,b)
  %7460 = fdiv fast float %7445, %7456
  %7461 = call float @dx.op.binary.f32(i32 35, float %7460, float 0.000000e+00)  ; FMax(a,b)
  %7462 = call float @dx.op.binary.f32(i32 36, float %7331, float %7461)  ; FMin(a,b)
  %7463 = call float @dx.op.binary.f32(i32 36, float %7459, float %7462)  ; FMin(a,b)
  %7464 = call float @dx.op.binary.f32(i32 35, float %7459, float %7462)  ; FMax(a,b)
  br label %7465

; <label>:7465                                    ; preds = %7450, %7426
  %7466 = phi float [ %7464, %7450 ], [ -1.000000e+00, %7426 ]
  %7467 = phi float [ %7463, %7450 ], [ -1.000000e+00, %7426 ]
  %7468 = phi i1 [ true, %7450 ], [ false, %7426 ]
  br i1 %7468, label %7469, label %7475

; <label>:7469                                    ; preds = %7465
  %7470 = call float @dx.op.binary.f32(i32 35, float %7414, float %7467)  ; FMax(a,b)
  %7471 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7428
  store float %7470, float* %7471, align 4, !tbaa !122, !noalias !124
  %7472 = call float @dx.op.binary.f32(i32 35, float %7414, float %7466)  ; FMax(a,b)
  %7473 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7428
  store float %7472, float* %7473, align 4, !tbaa !122, !noalias !124
  %7474 = add nsw i32 %7427, 1
  br label %7475

; <label>:7475                                    ; preds = %7469, %7465
  %7476 = phi i32 [ %7474, %7469 ], [ %7427, %7465 ]
  %7477 = add nuw nsw i32 %7428, 1
  %7478 = icmp eq i32 %7477, %7283
  br i1 %7478, label %7479, label %7426

; <label>:7479                                    ; preds = %7475
  %7480 = load float, float* %7420, align 4, !tbaa !122, !alias.scope !140, !noalias !143
  %7481 = load float, float* %7419, align 4, !tbaa !122, !alias.scope !146, !noalias !147
  %7482 = load float, float* %7418, align 4, !tbaa !122, !alias.scope !148, !noalias !149
  %7483 = load float, float* %7423, align 4, !tbaa !122, !alias.scope !150, !noalias !153
  %7484 = load float, float* %7422, align 4, !tbaa !122, !alias.scope !156, !noalias !157
  %7485 = load float, float* %7421, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  br label %7486

; <label>:7486                                    ; preds = %7479, %7413
  %7487 = phi float [ -1.000000e+00, %7413 ], [ %7485, %7479 ]
  %7488 = phi float [ -1.000000e+00, %7413 ], [ %7484, %7479 ]
  %7489 = phi float [ -1.000000e+00, %7413 ], [ %7483, %7479 ]
  %7490 = phi float [ -1.000000e+00, %7413 ], [ %7482, %7479 ]
  %7491 = phi float [ -1.000000e+00, %7413 ], [ %7481, %7479 ]
  %7492 = phi float [ -1.000000e+00, %7413 ], [ %7480, %7479 ]
  %7493 = phi i32 [ 0, %7413 ], [ %7476, %7479 ]
  %7494 = call float @dx.op.binary.f32(i32 36, float %7491, float %7492)  ; FMin(a,b)
  %7495 = call float @dx.op.binary.f32(i32 36, float %7490, float %7494)  ; FMin(a,b)
  %7496 = call float @dx.op.binary.f32(i32 35, float %7490, float %7491)  ; FMax(a,b)
  %7497 = call float @dx.op.binary.f32(i32 36, float %7496, float %7492)  ; FMin(a,b)
  %7498 = call float @dx.op.binary.f32(i32 36, float %7490, float %7491)  ; FMin(a,b)
  %7499 = call float @dx.op.binary.f32(i32 35, float %7498, float %7497)  ; FMax(a,b)
  %7500 = call float @dx.op.binary.f32(i32 35, float %7491, float %7492)  ; FMax(a,b)
  %7501 = call float @dx.op.binary.f32(i32 35, float %7490, float %7500)  ; FMax(a,b)
  store float %7495, float* %7418, align 4, !tbaa !122, !alias.scope !148, !noalias !149
  store float %7499, float* %7419, align 4, !tbaa !122, !alias.scope !146, !noalias !147
  store float %7501, float* %7420, align 4, !tbaa !122, !alias.scope !140, !noalias !143
  %7502 = call float @dx.op.binary.f32(i32 36, float %7488, float %7489)  ; FMin(a,b)
  %7503 = call float @dx.op.binary.f32(i32 36, float %7487, float %7502)  ; FMin(a,b)
  %7504 = call float @dx.op.binary.f32(i32 35, float %7487, float %7488)  ; FMax(a,b)
  %7505 = call float @dx.op.binary.f32(i32 36, float %7504, float %7489)  ; FMin(a,b)
  %7506 = call float @dx.op.binary.f32(i32 36, float %7487, float %7488)  ; FMin(a,b)
  %7507 = call float @dx.op.binary.f32(i32 35, float %7506, float %7505)  ; FMax(a,b)
  %7508 = call float @dx.op.binary.f32(i32 35, float %7488, float %7489)  ; FMax(a,b)
  %7509 = call float @dx.op.binary.f32(i32 35, float %7487, float %7508)  ; FMax(a,b)
  store float %7503, float* %7421, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %7507, float* %7422, align 4, !tbaa !122, !alias.scope !156, !noalias !157
  store float %7509, float* %7423, align 4, !tbaa !122, !alias.scope !150, !noalias !153
  %7510 = sub nsw i32 3, %7493
  %7511 = icmp sgt i32 %7510, 2
  br i1 %7511, label %7512, label %7550

; <label>:7512                                    ; preds = %7486
  %7513 = icmp eq i32 %7281, 0
  %7514 = fsub fast float %7331, %7415
  %7515 = select i1 %7513, float %7514, float %7415
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.CBufRet.f32 %7516, 1
  %7519 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7520, 0
  %7522 = extractvalue %dx.types.CBufRet.f32 %7520, 1
  %7523 = extractvalue %dx.types.CBufRet.f32 %7520, 2
  %7524 = extractvalue %dx.types.CBufRet.f32 %7520, 3
  %7525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7525, 3
  %7527 = call float @dx.op.binary.f32(i32 36, float %7416, float %7526)  ; FMin(a,b)
  %7528 = fmul fast float %7524, %7515
  %7529 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7530 = fsub fast float %7521, %7517
  %7531 = fsub fast float %7522, %7518
  %7532 = fsub fast float %7523, %7519
  %7533 = fmul fast float %7529, %7530
  %7534 = fmul fast float %7529, %7531
  %7535 = fmul fast float %7529, %7532
  %7536 = fadd fast float %7533, %7517
  %7537 = fadd fast float %7534, %7518
  %7538 = fadd fast float %7535, %7519
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 0
  %7541 = extractvalue %dx.types.CBufRet.f32 %7539, 1
  %7542 = fadd fast float %7541, %7540
  %7543 = call float @dx.op.unary.f32(i32 7, float %7542)  ; Saturate(value)
  %7544 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7545 = extractvalue %dx.types.CBufRet.f32 %7539, 3
  %7546 = fadd fast float %7545, %7544
  %7547 = call float @dx.op.unary.f32(i32 7, float %7546)  ; Saturate(value)
  %7548 = fmul fast float %7543, %7527
  %7549 = fmul fast float %7548, %7547
  br label %7632

; <label>:7550                                    ; preds = %7486
  %7551 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7510
  %7552 = load float, float* %7551, align 4, !tbaa !122, !noalias !124
  %7553 = fcmp fast olt float %7552, %7417
  %7554 = icmp sgt i32 %7493, 0
  %7555 = and i1 %7554, %7553
  br i1 %7555, label %7556, label %7593

; <label>:7556                                    ; preds = %7550
  br label %7557

; <label>:7557                                    ; preds = %7586, %7556
  %7558 = phi float [ %7587, %7586 ], [ %7415, %7556 ]
  %7559 = phi float [ %7588, %7586 ], [ %7416, %7556 ]
  %7560 = phi float [ %7568, %7586 ], [ %7552, %7556 ]
  %7561 = phi i32 [ %7565, %7586 ], [ %7510, %7556 ]
  %7562 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7561
  %7563 = load float, float* %7562, align 4, !tbaa !122, !noalias !124
  %7564 = icmp slt i32 %7561, 2
  %7565 = add nsw i32 %7561, 1
  %7566 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7565
  %7567 = load float, float* %7566, align 4, !tbaa !122, !noalias !124
  %7568 = select i1 %7564, float %7567, float %7331
  %7569 = call float @dx.op.binary.f32(i32 36, float %7568, float %7563)  ; FMin(a,b)
  %7570 = call float @dx.op.binary.f32(i32 36, float %7417, float %7569)  ; FMin(a,b)
  %7571 = icmp eq i32 %7281, 0
  %7572 = fadd fast float %7570, %7560
  %7573 = fmul fast float %7572, %7262
  %7574 = fadd fast float %7573, %7275
  br i1 %7571, label %7580, label %7575

; <label>:7575                                    ; preds = %7557
  %7576 = fsub fast float %7570, %7560
  %7577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7576)  ; FMax(a,b)
  %7578 = fmul fast float %7577, %7574
  %7579 = fadd fast float %7578, %7559
  br label %7586

; <label>:7580                                    ; preds = %7557
  %7581 = fsub fast float %7560, %7570
  %7582 = call float @dx.op.unary.f32(i32 6, float %7581)  ; FAbs(value)
  %7583 = fadd fast float %7582, %7558
  %7584 = fmul fast float %7582, %7574
  %7585 = fsub fast float %7559, %7584
  br label %7586

; <label>:7586                                    ; preds = %7580, %7575
  %7587 = phi float [ %7577, %7575 ], [ %7583, %7580 ]
  %7588 = phi float [ %7579, %7575 ], [ %7585, %7580 ]
  %7589 = fcmp fast olt float %7568, %7417
  %7590 = icmp slt i32 %7565, 3
  %7591 = and i1 %7590, %7589
  br i1 %7591, label %7557, label %7592

; <label>:7592                                    ; preds = %7586
  br label %7593

; <label>:7593                                    ; preds = %7592, %7550
  %7594 = phi float [ %7415, %7550 ], [ %7587, %7592 ]
  %7595 = phi float [ %7416, %7550 ], [ %7588, %7592 ]
  %7596 = fsub fast float %7331, %7594
  %7597 = select i1 %7333, float %7594, float %7596
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.CBufRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.CBufRet.f32 %7598, 2
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 0
  %7604 = extractvalue %dx.types.CBufRet.f32 %7602, 1
  %7605 = extractvalue %dx.types.CBufRet.f32 %7602, 2
  %7606 = extractvalue %dx.types.CBufRet.f32 %7602, 3
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 3
  %7609 = call float @dx.op.binary.f32(i32 36, float %7595, float %7608)  ; FMin(a,b)
  %7610 = fmul fast float %7606, %7597
  %7611 = call float @dx.op.unary.f32(i32 7, float %7610)  ; Saturate(value)
  %7612 = fsub fast float %7603, %7599
  %7613 = fsub fast float %7604, %7600
  %7614 = fsub fast float %7605, %7601
  %7615 = fmul fast float %7611, %7612
  %7616 = fmul fast float %7611, %7613
  %7617 = fmul fast float %7611, %7614
  %7618 = fadd fast float %7615, %7599
  %7619 = fadd fast float %7616, %7600
  %7620 = fadd fast float %7617, %7601
  %7621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7622 = extractvalue %dx.types.CBufRet.f32 %7621, 0
  %7623 = extractvalue %dx.types.CBufRet.f32 %7621, 1
  %7624 = fadd fast float %7623, %7622
  %7625 = call float @dx.op.unary.f32(i32 7, float %7624)  ; Saturate(value)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7621, 2
  %7627 = extractvalue %dx.types.CBufRet.f32 %7621, 3
  %7628 = fadd fast float %7627, %7626
  %7629 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  %7630 = fmul fast float %7625, %7609
  %7631 = fmul fast float %7630, %7629
  br label %7632

; <label>:7632                                    ; preds = %7593, %7512, %7347, %7329, %7327
  %7633 = phi float [ %7356, %7347 ], [ %7515, %7512 ], [ %7597, %7593 ], [ 0.000000e+00, %7327 ], [ 0.000000e+00, %7329 ]
  %7634 = phi float [ %7390, %7347 ], [ %7549, %7512 ], [ %7631, %7593 ], [ 0.000000e+00, %7327 ], [ 0.000000e+00, %7329 ]
  %7635 = phi float [ %7377, %7347 ], [ %7536, %7512 ], [ %7618, %7593 ], [ 0.000000e+00, %7327 ], [ 0.000000e+00, %7329 ]
  %7636 = phi float [ %7378, %7347 ], [ %7537, %7512 ], [ %7619, %7593 ], [ 0.000000e+00, %7327 ], [ 0.000000e+00, %7329 ]
  %7637 = phi float [ %7379, %7347 ], [ %7538, %7512 ], [ %7620, %7593 ], [ 0.000000e+00, %7327 ], [ 0.000000e+00, %7329 ]
  %7638 = fmul fast float %7270, %7634
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 2
  %7641 = fsub fast float %7277, %7640
  %7642 = fcmp fast olt float %7638, -2.000000e+01
  %7643 = call float @dx.op.unary.f32(i32 21, float %7638)  ; Exp(value)
  %7644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7645 = extractvalue %dx.types.CBufRet.f32 %7644, 2
  %7646 = extractvalue %dx.types.CBufRet.f32 %7644, 3
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 2
  %7649 = fmul fast float %7646, %7641
  %7650 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  %7651 = fsub fast float 1.000000e+00, %7650
  %7652 = fmul fast float %7262, 5.000000e-01
  %7653 = fadd fast float %7652, 5.000000e-01
  %7654 = call float @dx.op.unary.f32(i32 7, float %7653)  ; Saturate(value)
  %7655 = fsub fast float 1.000000e+00, %7654
  %7656 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7651)  ; FMax(a,b)
  %7657 = fdiv fast float %7655, %7656
  %7658 = fsub fast float %7641, %7219
  %7659 = call float @dx.op.unary.f32(i32 6, float %7658)  ; FAbs(value)
  %7660 = fmul fast float %7659, %7645
  %7661 = call float @dx.op.unary.f32(i32 7, float %7657)  ; Saturate(value)
  %7662 = fsub fast float 1.000000e+00, %7660
  %7663 = fmul fast float %7662, %7661
  %7664 = fadd fast float %7663, %7660
  %7665 = fmul fast float %7648, %7641
  %7666 = call float @dx.op.unary.f32(i32 7, float %7665)  ; Saturate(value)
  %7667 = fsub fast float 1.000000e+00, %7664
  %7668 = fmul fast float %7667, %7666
  %7669 = fadd fast float %7668, %7664
  %7670 = call float @dx.op.unary.f32(i32 7, float %7669)  ; Saturate(value)
  %7671 = fadd fast float %7643, -1.000000e+00
  %7672 = select i1 %7642, float -1.000000e+00, float %7671
  %7673 = fmul fast float %7670, %7672
  %7674 = fadd fast float %7673, 1.000000e+00
  %7675 = fsub fast float -0.000000e+00, %7673
  %7676 = fmul fast float %7635, %7675
  %7677 = fmul fast float %7636, %7675
  %7678 = fmul fast float %7637, %7675
  br label %7679

; <label>:7679                                    ; preds = %7632, %7228
  %7680 = phi float [ %7633, %7632 ], [ 0.000000e+00, %7228 ]
  %7681 = phi float [ %7674, %7632 ], [ 1.000000e+00, %7228 ]
  %7682 = phi float [ %7676, %7632 ], [ 0.000000e+00, %7228 ]
  %7683 = phi float [ %7677, %7632 ], [ 0.000000e+00, %7228 ]
  %7684 = phi float [ %7678, %7632 ], [ 0.000000e+00, %7228 ]
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %7687 = fsub fast float 1.000000e+00, %7681
  %7688 = fmul fast float %7687, %7263
  %7689 = fmul fast float %7688, %7686
  %7690 = fsub fast float %7263, %7689
  br i1 %7256, label %7691, label %7720, !dx.controlflow.hints !160

; <label>:7691                                    ; preds = %7679
  %7692 = fmul fast float %7264, %7253
  %7693 = fadd fast float %7692, %7254
  %7694 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7695 = fmul fast float %7235, %7690
  %7696 = fsub fast float -0.000000e+00, %7695
  %7697 = fmul fast float %7236, %7690
  %7698 = fsub fast float -0.000000e+00, %7697
  %7699 = call float @dx.op.unary.f32(i32 21, float %7696)  ; Exp(value)
  %7700 = call float @dx.op.unary.f32(i32 21, float %7698)  ; Exp(value)
  %7701 = call float @dx.op.binary.f32(i32 35, float %7243, float %7699)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 35, float %7243, float %7700)  ; FMax(a,b)
  %7703 = fsub fast float %7702, %7701
  %7704 = fmul fast float %7703, %7694
  %7705 = fadd fast float %7704, %7701
  %7706 = call float @dx.op.unary.f32(i32 7, float %7705)  ; Saturate(value)
  %7707 = fsub fast float %7240, %7245
  %7708 = fsub fast float %7241, %7246
  %7709 = fsub fast float %7242, %7247
  %7710 = fmul fast float %7694, %7707
  %7711 = fmul fast float %7694, %7708
  %7712 = fmul fast float %7694, %7709
  %7713 = fadd fast float %7710, %7245
  %7714 = fadd fast float %7711, %7246
  %7715 = fadd fast float %7712, %7247
  %7716 = fsub fast float 1.000000e+00, %7706
  %7717 = fmul fast float %7716, %7713
  %7718 = fmul fast float %7716, %7714
  %7719 = fmul fast float %7716, %7715
  br label %7779

; <label>:7720                                    ; preds = %7679
  %7721 = fmul fast float %7690, %7252
  %7722 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7723 = fsub fast float 2.000000e+00, %7722
  %7724 = fmul fast float %7722, 9.921875e-01
  %7725 = fmul fast float %7724, %7723
  %7726 = fadd fast float %7725, 3.906250e-03
  %7727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %7726, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7728 = extractvalue %dx.types.ResRet.f32 %7727, 0
  %7729 = fsub fast float %7722, %7728
  %7730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7729)  ; FMax(a,b)
  %7731 = fmul fast float %7238, %7219
  %7732 = call float @dx.op.unary.f32(i32 6, float %7731)  ; FAbs(value)
  %7733 = fcmp fast ogt float %7732, 0x3EB0C6F7A0000000
  br i1 %7733, label %7734, label %7740, !dx.controlflow.hints !161

; <label>:7734                                    ; preds = %7720
  %7735 = fmul fast float %7731, 0xBFF7154760000000
  %7736 = call float @dx.op.unary.f32(i32 21, float %7735)  ; Exp(value)
  %7737 = fsub fast float 1.000000e+00, %7736
  %7738 = fdiv fast float %7737, %7731
  %7739 = fmul fast float %7738, %7248
  br label %7740

; <label>:7740                                    ; preds = %7734, %7720
  %7741 = phi float [ %7739, %7734 ], [ %7248, %7720 ]
  %7742 = fadd fast float %7741, %7250
  %7743 = fmul fast float %7742, %7730
  %7744 = fmul fast float %7235, %7743
  %7745 = fsub fast float -0.000000e+00, %7744
  %7746 = fmul fast float %7236, %7743
  %7747 = fsub fast float -0.000000e+00, %7746
  %7748 = fmul fast float %7237, %7743
  %7749 = fsub fast float -0.000000e+00, %7748
  %7750 = call float @dx.op.unary.f32(i32 21, float %7745)  ; Exp(value)
  %7751 = call float @dx.op.unary.f32(i32 21, float %7747)  ; Exp(value)
  %7752 = call float @dx.op.unary.f32(i32 21, float %7749)  ; Exp(value)
  %7753 = fmul fast float %7264, %7264
  %7754 = fadd fast float %7753, 1.000000e+00
  %7755 = fmul fast float %7754, 0x3FAE8EC8A0000000
  %7756 = fmul fast float %7755, %7245
  %7757 = fmul fast float %7755, %7246
  %7758 = fmul fast float %7755, %7247
  %7759 = fmul fast float %7264, %7243
  %7760 = fsub fast float 1.000000e+00, %7759
  %7761 = fmul fast float %7243, %7243
  %7762 = fsub fast float 1.000000e+00, %7761
  %7763 = fmul fast float %7762, 0x3FB45F3060000000
  %7764 = fmul fast float %7760, %7760
  %7765 = fdiv fast float 1.000000e+00, %7764
  %7766 = fmul fast float %7763, %7765
  %7767 = fmul fast float %7766, %7240
  %7768 = fmul fast float %7766, %7241
  %7769 = fmul fast float %7766, %7242
  %7770 = fadd fast float %7767, %7756
  %7771 = fadd fast float %7768, %7757
  %7772 = fadd fast float %7769, %7758
  %7773 = fsub fast float 1.000000e+00, %7750
  %7774 = fsub fast float 1.000000e+00, %7751
  %7775 = fsub fast float 1.000000e+00, %7752
  %7776 = fmul fast float %7770, %7773
  %7777 = fmul fast float %7771, %7774
  %7778 = fmul fast float %7772, %7775
  br label %7779

; <label>:7779                                    ; preds = %7740, %7691
  %7780 = phi float [ %7717, %7691 ], [ %7776, %7740 ]
  %7781 = phi float [ %7718, %7691 ], [ %7777, %7740 ]
  %7782 = phi float [ %7719, %7691 ], [ %7778, %7740 ]
  %7783 = phi float [ %7706, %7691 ], [ %7750, %7740 ]
  %7784 = phi float [ %7706, %7691 ], [ %7751, %7740 ]
  %7785 = phi float [ %7706, %7691 ], [ %7752, %7740 ]
  br i1 %7272, label %7786, label %7984, !dx.controlflow.hints !162

; <label>:7786                                    ; preds = %7779
  %7787 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7788 = fmul fast float %7787, %7687
  %7789 = fsub fast float %7682, %7780
  %7790 = fsub fast float %7683, %7781
  %7791 = fsub fast float %7684, %7782
  %7792 = fmul fast float %7788, %7789
  %7793 = fmul fast float %7788, %7790
  %7794 = fmul fast float %7788, %7791
  %7795 = fadd fast float %7792, %7780
  %7796 = fadd fast float %7793, %7781
  %7797 = fadd fast float %7794, %7782
  %7798 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7783)  ; FMax(a,b)
  %7799 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7784)  ; FMax(a,b)
  %7800 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7785)  ; FMax(a,b)
  %7801 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7681)  ; FMax(a,b)
  %7802 = call float @dx.op.binary.f32(i32 35, float %7680, float %7690)  ; FMax(a,b)
  %7803 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7802)  ; FMax(a,b)
  %7804 = fdiv fast float %7680, %7803
  %7805 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  %7806 = fdiv fast float %7690, %7803
  %7807 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7808 = fcmp fast une float %7801, 1.000000e+00
  br i1 %7808, label %7809, label %7822, !dx.controlflow.hints !163

; <label>:7809                                    ; preds = %7786
  %7810 = call float @dx.op.unary.f32(i32 23, float %7801)  ; Log(value)
  %7811 = fmul fast float %7810, 0x3FE62E4300000000
  %7812 = fmul fast float %7682, %7811
  %7813 = fsub fast float -0.000000e+00, %7812
  %7814 = fmul fast float %7683, %7811
  %7815 = fsub fast float -0.000000e+00, %7814
  %7816 = fmul fast float %7684, %7811
  %7817 = fsub fast float -0.000000e+00, %7816
  %7818 = fsub fast float 1.000000e+00, %7801
  %7819 = fdiv fast float %7813, %7818
  %7820 = fdiv fast float %7815, %7818
  %7821 = fdiv fast float %7817, %7818
  br label %7822

; <label>:7822                                    ; preds = %7809, %7786
  %7823 = phi float [ %7819, %7809 ], [ %7682, %7786 ]
  %7824 = phi float [ %7820, %7809 ], [ %7683, %7786 ]
  %7825 = phi float [ %7821, %7809 ], [ %7684, %7786 ]
  %7826 = phi float [ %7811, %7809 ], [ 0.000000e+00, %7786 ]
  %7827 = fcmp fast une float %7798, 1.000000e+00
  br i1 %7827, label %7828, label %7835, !dx.controlflow.hints !164

; <label>:7828                                    ; preds = %7822
  %7829 = call float @dx.op.unary.f32(i32 23, float %7798)  ; Log(value)
  %7830 = fmul fast float %7829, 0x3FE62E4300000000
  %7831 = fmul fast float %7795, %7830
  %7832 = fsub fast float -0.000000e+00, %7831
  %7833 = fsub fast float 1.000000e+00, %7798
  %7834 = fdiv fast float %7832, %7833
  br label %7835

; <label>:7835                                    ; preds = %7828, %7822
  %7836 = phi float [ %7834, %7828 ], [ %7795, %7822 ]
  %7837 = phi float [ %7830, %7828 ], [ 0.000000e+00, %7822 ]
  %7838 = fcmp fast une float %7799, 1.000000e+00
  br i1 %7838, label %7839, label %7846, !dx.controlflow.hints !164

; <label>:7839                                    ; preds = %7835
  %7840 = call float @dx.op.unary.f32(i32 23, float %7799)  ; Log(value)
  %7841 = fmul fast float %7840, 0x3FE62E4300000000
  %7842 = fmul fast float %7796, %7841
  %7843 = fsub fast float -0.000000e+00, %7842
  %7844 = fsub fast float 1.000000e+00, %7799
  %7845 = fdiv fast float %7843, %7844
  br label %7846

; <label>:7846                                    ; preds = %7839, %7835
  %7847 = phi float [ %7845, %7839 ], [ %7796, %7835 ]
  %7848 = phi float [ %7841, %7839 ], [ 0.000000e+00, %7835 ]
  %7849 = fcmp fast une float %7800, 1.000000e+00
  br i1 %7849, label %7850, label %7857, !dx.controlflow.hints !164

; <label>:7850                                    ; preds = %7846
  %7851 = call float @dx.op.unary.f32(i32 23, float %7800)  ; Log(value)
  %7852 = fmul fast float %7851, 0x3FE62E4300000000
  %7853 = fmul fast float %7797, %7852
  %7854 = fsub fast float -0.000000e+00, %7853
  %7855 = fsub fast float 1.000000e+00, %7800
  %7856 = fdiv fast float %7854, %7855
  br label %7857

; <label>:7857                                    ; preds = %7850, %7846
  %7858 = phi float [ %7856, %7850 ], [ %7797, %7846 ]
  %7859 = phi float [ %7852, %7850 ], [ 0.000000e+00, %7846 ]
  %7860 = fmul fast float %7823, %7807
  %7861 = fmul fast float %7824, %7807
  %7862 = fmul fast float %7825, %7807
  %7863 = fmul fast float %7826, %7807
  %7864 = fmul fast float %7836, %7805
  %7865 = fmul fast float %7847, %7805
  %7866 = fmul fast float %7858, %7805
  %7867 = fmul fast float %7837, %7805
  %7868 = fmul fast float %7848, %7805
  %7869 = fmul fast float %7859, %7805
  %7870 = fadd fast float %7864, %7860
  %7871 = fadd fast float %7865, %7861
  %7872 = fadd fast float %7866, %7862
  %7873 = fadd fast float %7867, %7863
  %7874 = fadd fast float %7868, %7863
  %7875 = fadd fast float %7869, %7863
  %7876 = fcmp fast une float %7873, 0.000000e+00
  br i1 %7876, label %7877, label %7884, !dx.controlflow.hints !165

; <label>:7877                                    ; preds = %7857
  %7878 = fmul fast float %7873, 0x3FF7154760000000
  %7879 = call float @dx.op.unary.f32(i32 21, float %7878)  ; Exp(value)
  %7880 = fsub fast float 1.000000e+00, %7879
  %7881 = fmul fast float %7870, %7880
  %7882 = fsub fast float -0.000000e+00, %7881
  %7883 = fdiv fast float %7882, %7873
  br label %7884

; <label>:7884                                    ; preds = %7877, %7857
  %7885 = phi float [ %7879, %7877 ], [ 1.000000e+00, %7857 ]
  %7886 = phi float [ %7883, %7877 ], [ %7870, %7857 ]
  %7887 = fcmp fast une float %7874, 0.000000e+00
  br i1 %7887, label %7888, label %7895, !dx.controlflow.hints !165

; <label>:7888                                    ; preds = %7884
  %7889 = fmul fast float %7874, 0x3FF7154760000000
  %7890 = call float @dx.op.unary.f32(i32 21, float %7889)  ; Exp(value)
  %7891 = fsub fast float 1.000000e+00, %7890
  %7892 = fmul fast float %7871, %7891
  %7893 = fsub fast float -0.000000e+00, %7892
  %7894 = fdiv fast float %7893, %7874
  br label %7895

; <label>:7895                                    ; preds = %7888, %7884
  %7896 = phi float [ %7890, %7888 ], [ 1.000000e+00, %7884 ]
  %7897 = phi float [ %7894, %7888 ], [ %7871, %7884 ]
  %7898 = fcmp fast une float %7875, 0.000000e+00
  br i1 %7898, label %7899, label %7906, !dx.controlflow.hints !165

; <label>:7899                                    ; preds = %7895
  %7900 = fmul fast float %7875, 0x3FF7154760000000
  %7901 = call float @dx.op.unary.f32(i32 21, float %7900)  ; Exp(value)
  %7902 = fsub fast float 1.000000e+00, %7901
  %7903 = fmul fast float %7872, %7902
  %7904 = fsub fast float -0.000000e+00, %7903
  %7905 = fdiv fast float %7904, %7875
  br label %7906

; <label>:7906                                    ; preds = %7899, %7895
  %7907 = phi float [ %7901, %7899 ], [ 1.000000e+00, %7895 ]
  %7908 = phi float [ %7905, %7899 ], [ %7872, %7895 ]
  %7909 = fcmp fast ogt float %7805, %7807
  br i1 %7909, label %7910, label %7930

; <label>:7910                                    ; preds = %7906
  %7911 = fsub fast float 1.000000e+00, %7807
  %7912 = fmul fast float %7823, %7911
  %7913 = fmul fast float %7824, %7911
  %7914 = fmul fast float %7825, %7911
  %7915 = fmul fast float %7826, %7911
  %7916 = fcmp fast une float %7915, 0.000000e+00
  br i1 %7916, label %7917, label %7968, !dx.controlflow.hints !166

; <label>:7917                                    ; preds = %7910
  %7918 = fmul fast float %7915, 0x3FF7154760000000
  %7919 = call float @dx.op.unary.f32(i32 21, float %7918)  ; Exp(value)
  %7920 = fsub fast float 1.000000e+00, %7919
  %7921 = fmul fast float %7912, %7920
  %7922 = fsub fast float -0.000000e+00, %7921
  %7923 = fmul fast float %7913, %7920
  %7924 = fsub fast float -0.000000e+00, %7923
  %7925 = fmul fast float %7914, %7920
  %7926 = fsub fast float -0.000000e+00, %7925
  %7927 = fdiv fast float %7922, %7915
  %7928 = fdiv fast float %7924, %7915
  %7929 = fdiv fast float %7926, %7915
  br label %7968

; <label>:7930                                    ; preds = %7906
  %7931 = fsub fast float 1.000000e+00, %7805
  %7932 = fmul fast float %7836, %7931
  %7933 = fmul fast float %7847, %7931
  %7934 = fmul fast float %7858, %7931
  %7935 = fmul fast float %7837, %7931
  %7936 = fmul fast float %7848, %7931
  %7937 = fmul fast float %7859, %7931
  %7938 = fcmp fast une float %7935, 0.000000e+00
  br i1 %7938, label %7939, label %7946, !dx.controlflow.hints !165

; <label>:7939                                    ; preds = %7930
  %7940 = fmul fast float %7935, 0x3FF7154760000000
  %7941 = call float @dx.op.unary.f32(i32 21, float %7940)  ; Exp(value)
  %7942 = fsub fast float 1.000000e+00, %7941
  %7943 = fmul fast float %7932, %7942
  %7944 = fsub fast float -0.000000e+00, %7943
  %7945 = fdiv fast float %7944, %7935
  br label %7946

; <label>:7946                                    ; preds = %7939, %7930
  %7947 = phi float [ %7945, %7939 ], [ %7932, %7930 ]
  %7948 = phi float [ %7941, %7939 ], [ 1.000000e+00, %7930 ]
  %7949 = fcmp fast une float %7936, 0.000000e+00
  br i1 %7949, label %7950, label %7957, !dx.controlflow.hints !165

; <label>:7950                                    ; preds = %7946
  %7951 = fmul fast float %7936, 0x3FF7154760000000
  %7952 = call float @dx.op.unary.f32(i32 21, float %7951)  ; Exp(value)
  %7953 = fsub fast float 1.000000e+00, %7952
  %7954 = fmul fast float %7933, %7953
  %7955 = fsub fast float -0.000000e+00, %7954
  %7956 = fdiv fast float %7955, %7936
  br label %7957

; <label>:7957                                    ; preds = %7950, %7946
  %7958 = phi float [ %7956, %7950 ], [ %7933, %7946 ]
  %7959 = phi float [ %7952, %7950 ], [ 1.000000e+00, %7946 ]
  %7960 = fcmp fast une float %7937, 0.000000e+00
  br i1 %7960, label %7961, label %7968, !dx.controlflow.hints !165

; <label>:7961                                    ; preds = %7957
  %7962 = fmul fast float %7937, 0x3FF7154760000000
  %7963 = call float @dx.op.unary.f32(i32 21, float %7962)  ; Exp(value)
  %7964 = fsub fast float 1.000000e+00, %7963
  %7965 = fmul fast float %7934, %7964
  %7966 = fsub fast float -0.000000e+00, %7965
  %7967 = fdiv fast float %7966, %7937
  br label %7968

; <label>:7968                                    ; preds = %7961, %7957, %7917, %7910
  %7969 = phi float [ %7967, %7961 ], [ %7929, %7917 ], [ %7914, %7910 ], [ %7934, %7957 ]
  %7970 = phi float [ %7958, %7961 ], [ %7928, %7917 ], [ %7913, %7910 ], [ %7958, %7957 ]
  %7971 = phi float [ %7947, %7961 ], [ %7927, %7917 ], [ %7912, %7910 ], [ %7947, %7957 ]
  %7972 = phi float [ %7963, %7961 ], [ %7919, %7917 ], [ 1.000000e+00, %7910 ], [ 1.000000e+00, %7957 ]
  %7973 = phi float [ %7959, %7961 ], [ %7919, %7917 ], [ 1.000000e+00, %7910 ], [ %7959, %7957 ]
  %7974 = phi float [ %7948, %7961 ], [ %7919, %7917 ], [ 1.000000e+00, %7910 ], [ %7948, %7957 ]
  %7975 = fmul fast float %7974, %7886
  %7976 = fmul fast float %7973, %7897
  %7977 = fmul fast float %7972, %7908
  %7978 = fadd fast float %7975, %7971
  %7979 = fadd fast float %7976, %7970
  %7980 = fadd fast float %7977, %7969
  %7981 = fmul fast float %7974, %7885
  %7982 = fmul fast float %7973, %7896
  %7983 = fmul fast float %7972, %7907
  br label %7984

; <label>:7984                                    ; preds = %7968, %7779
  %7985 = phi float [ %7983, %7968 ], [ %7785, %7779 ]
  %7986 = phi float [ %7982, %7968 ], [ %7784, %7779 ]
  %7987 = phi float [ %7981, %7968 ], [ %7783, %7779 ]
  %7988 = phi float [ %7980, %7968 ], [ %7782, %7779 ]
  %7989 = phi float [ %7979, %7968 ], [ %7781, %7779 ]
  %7990 = phi float [ %7978, %7968 ], [ %7780, %7779 ]
  %7991 = fmul fast float %7990, %6931
  %7992 = fmul fast float %7989, %6933
  %7993 = fmul fast float %7988, %6935
  %7994 = fmul fast float %7987, %7227
  %7995 = call float @dx.op.dot3.f32(i32 55, float %7987, float %7986, float %7985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7996 = call float @dx.op.dot3.f32(i32 55, float %7991, float %7992, float %7993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7997 = select i1 %259, float %7995, float %7987
  %7998 = select i1 %259, float %7995, float %7986
  %7999 = select i1 %259, float 1.000000e+00, float %7985
  %8000 = select i1 %259, float %7996, float %7991
  %8001 = select i1 %259, float 0.000000e+00, float %7992
  %8002 = select i1 %259, float 0.000000e+00, float %7993
  %8003 = fmul fast float %7997, %7221
  %8004 = fmul fast float %7998, %7222
  %8005 = fmul fast float %7999, %7223
  %8006 = fadd fast float %8003, %8000
  %8007 = fadd fast float %8004, %8001
  %8008 = fadd fast float %8002, %8005
  %8009 = fmul fast float %7997, %7224
  %8010 = fmul fast float %7998, %7225
  %8011 = fmul fast float %7999, %7226
  %8012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8013 = extractvalue %dx.types.CBufRet.i32 %8012, 0
  %8014 = icmp eq i32 %8013, 0
  br i1 %8014, label %8382, label %8015, !dx.controlflow.hints !167

; <label>:8015                                    ; preds = %7984
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 2
  %8018 = extractvalue %dx.types.CBufRet.f32 %8016, 3
  %8019 = fmul fast float %8017, %100
  %8020 = fmul fast float %8018, %101
  %8021 = fmul fast float %8019, 2.000000e+00
  %8022 = fmul fast float %8020, 2.000000e+00
  %8023 = fsub fast float 1.000000e+00, %8021
  %8024 = fsub fast float 1.000000e+00, %8022
  %8025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8026 = extractvalue %dx.types.CBufRet.f32 %8025, 0
  %8027 = extractvalue %dx.types.CBufRet.f32 %8025, 1
  %8028 = extractvalue %dx.types.CBufRet.f32 %8025, 2
  %8029 = fmul fast float %8023, %8026
  %8030 = fmul fast float %8023, %8027
  %8031 = fmul fast float %8023, %8028
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 0
  %8034 = extractvalue %dx.types.CBufRet.f32 %8032, 1
  %8035 = extractvalue %dx.types.CBufRet.f32 %8032, 2
  %8036 = fmul fast float %8024, %8033
  %8037 = fmul fast float %8024, %8034
  %8038 = fmul fast float %8024, %8035
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 0
  %8041 = extractvalue %dx.types.CBufRet.f32 %8039, 1
  %8042 = extractvalue %dx.types.CBufRet.f32 %8039, 2
  %8043 = fadd fast float %8036, %8040
  %8044 = fadd fast float %8043, %8029
  %8045 = fadd fast float %8037, %8041
  %8046 = fadd fast float %8045, %8030
  %8047 = fadd fast float %8038, %8042
  %8048 = fadd fast float %8047, %8031
  %8049 = fmul fast float %8044, %7220
  %8050 = fmul fast float %8046, %7220
  %8051 = fmul fast float %8048, %7220
  %8052 = fmul fast float %8049, %8049
  %8053 = fmul fast float %8050, %8050
  %8054 = fadd fast float %8052, %8053
  %8055 = fmul fast float %8051, %8051
  %8056 = fadd fast float %8054, %8055
  %8057 = call float @dx.op.unary.f32(i32 24, float %8056)  ; Sqrt(value)
  %8058 = extractvalue %dx.types.CBufRet.f32 %6947, 0
  %8059 = fsub fast float %8057, %8058
  %8060 = extractvalue %dx.types.CBufRet.f32 %6947, 2
  %8061 = fmul fast float %8059, %8060
  %8062 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8063 = fadd fast float %8062, -5.000000e-01
  %8064 = fmul fast float %8063, 2.000000e+00
  %8065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8066 = extractvalue %dx.types.CBufRet.f32 %8065, 2
  %8067 = call float @dx.op.binary.f32(i32 36, float %8066, float %8064)  ; FMin(a,b)
  %8068 = fsub fast float -0.000000e+00, %8066
  %8069 = fcmp fast ogt float %8067, %8068
  br i1 %8069, label %8070, label %8382, !dx.controlflow.hints !168

; <label>:8070                                    ; preds = %8015
  %8071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8072 = extractvalue %dx.types.CBufRet.f32 %8071, 3
  %8073 = fcmp fast ogt float %8072, 0.000000e+00
  br i1 %8073, label %8074, label %8149, !dx.controlflow.hints !169

; <label>:8074                                    ; preds = %8070
  %8075 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8076 = extractvalue %dx.types.Dimensions %8075, 0
  %8077 = sitofp i32 %8076 to float
  %8078 = extractvalue %dx.types.Dimensions %8075, 1
  %8079 = sitofp i32 %8078 to float
  %8080 = fmul fast float %8019, %8077
  %8081 = fmul fast float %8020, %8079
  %8082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %8083 = extractvalue %dx.types.CBufRet.f32 %8082, 1
  %8084 = fsub fast float -0.000000e+00, %8083
  %8085 = fptoui float %8084 to i32
  %8086 = fptoui float %8080 to i32
  %8087 = fptoui float %8081 to i32
  %8088 = and i32 %8085, 31
  %8089 = lshr i32 %8086, %8088
  %8090 = lshr i32 %8087, %8088
  %8091 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8085, i32 %8089, i32 %8090, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8092 = extractvalue %dx.types.ResRet.f32 %8091, 0
  %8093 = fcmp fast olt float %8092, -1.000000e+00
  %8094 = fcmp fast ogt float %8092, -1.000000e+00
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 1
  %8097 = select i1 %8094, float %8096, float 1.000000e+00
  %8098 = fadd fast float %8092, 1.000000e+00
  %8099 = fmul fast float %8097, %8098
  %8100 = call float @dx.op.unary.f32(i32 6, float %8099)  ; FAbs(value)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8095, 3
  %8102 = fcmp fast oge float %8100, %8101
  %8103 = select i1 %8102, float 0x4197782600000000, float %8100
  %8104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8105 = extractvalue %dx.types.CBufRet.f32 %8104, 0
  %8106 = extractvalue %dx.types.CBufRet.f32 %8104, 1
  %8107 = extractvalue %dx.types.CBufRet.f32 %8104, 2
  %8108 = select i1 %8093, float %8105, float %8026
  %8109 = select i1 %8093, float %8106, float %8027
  %8110 = select i1 %8093, float %8107, float %8028
  %8111 = fmul fast float %8108, %8023
  %8112 = fmul fast float %8109, %8023
  %8113 = fmul fast float %8110, %8023
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 0
  %8116 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8117 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8118 = select i1 %8093, float %8115, float %8033
  %8119 = select i1 %8093, float %8116, float %8034
  %8120 = select i1 %8093, float %8117, float %8035
  %8121 = fmul fast float %8118, %8024
  %8122 = fmul fast float %8119, %8024
  %8123 = fmul fast float %8120, %8024
  %8124 = fadd fast float %8121, %8111
  %8125 = fadd fast float %8122, %8112
  %8126 = fadd fast float %8123, %8113
  %8127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.f32 %8127, 0
  %8129 = extractvalue %dx.types.CBufRet.f32 %8127, 1
  %8130 = extractvalue %dx.types.CBufRet.f32 %8127, 2
  %8131 = select i1 %8093, float %8128, float %8040
  %8132 = select i1 %8093, float %8129, float %8041
  %8133 = select i1 %8093, float %8130, float %8042
  %8134 = fadd fast float %8124, %8131
  %8135 = fadd fast float %8125, %8132
  %8136 = fadd fast float %8126, %8133
  %8137 = fmul fast float %8134, %8103
  %8138 = fmul fast float %8135, %8103
  %8139 = fmul fast float %8136, %8103
  %8140 = fmul fast float %8137, %8137
  %8141 = fmul fast float %8138, %8138
  %8142 = fadd fast float %8140, %8141
  %8143 = fmul fast float %8139, %8139
  %8144 = fadd fast float %8142, %8143
  %8145 = call float @dx.op.unary.f32(i32 24, float %8144)  ; Sqrt(value)
  %8146 = fsub fast float %8145, %8058
  %8147 = fmul fast float %8146, %8060
  %8148 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  br label %8149

; <label>:8149                                    ; preds = %8074, %8070
  %8150 = phi float [ %8148, %8074 ], [ 1.000000e+00, %8070 ]
  %8151 = fmul fast float %8067, 5.000000e-01
  %8152 = fadd fast float %8151, 5.000000e-01
  %8153 = call float @dx.op.unary.f32(i32 22, float %8152)  ; Frc(value)
  %8154 = call float @dx.op.unary.f32(i32 27, float %8153)  ; Round_ni(value)
  %8155 = call float @dx.op.unary.f32(i32 22, float %8153)  ; Frc(value)
  %8156 = fmul fast float %8155, 2.000000e+00
  %8157 = fadd fast float %8156, -1.000000e+00
  %8158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %8019, float %8020, float %8154, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8159 = extractvalue %dx.types.ResRet.f32 %8158, 0
  %8160 = extractvalue %dx.types.ResRet.f32 %8158, 1
  %8161 = extractvalue %dx.types.ResRet.f32 %8158, 2
  %8162 = extractvalue %dx.types.ResRet.f32 %8158, 3
  %8163 = fadd fast float %8159, -5.000000e-01
  %8164 = fadd fast float %8161, -5.000000e-01
  %8165 = fmul fast float %8163, 0xBFD5555560000000
  %8166 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8164, float %8165)  ; FMad(a,b,c)
  %8167 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8160, float 0.000000e+00)  ; FMad(a,b,c)
  %8168 = fadd fast float %8167, %8162
  %8169 = fmul fast float %8163, -7.500000e-01
  %8170 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8164, float %8169)  ; FMad(a,b,c)
  %8171 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8160, float 0.000000e+00)  ; FMad(a,b,c)
  %8172 = fadd fast float %8171, %8162
  %8173 = call float @dx.op.binary.f32(i32 35, float %8166, float -1.000000e+00)  ; FMax(a,b)
  %8174 = call float @dx.op.binary.f32(i32 35, float %8168, float -1.000000e+00)  ; FMax(a,b)
  %8175 = call float @dx.op.binary.f32(i32 35, float %8170, float -1.000000e+00)  ; FMax(a,b)
  %8176 = call float @dx.op.binary.f32(i32 35, float %8172, float -1.000000e+00)  ; FMax(a,b)
  %8177 = call float @dx.op.binary.f32(i32 36, float %8173, float 1.000000e+00)  ; FMin(a,b)
  %8178 = call float @dx.op.binary.f32(i32 36, float %8174, float 1.000000e+00)  ; FMin(a,b)
  %8179 = call float @dx.op.binary.f32(i32 36, float %8175, float 1.000000e+00)  ; FMin(a,b)
  %8180 = call float @dx.op.binary.f32(i32 36, float %8176, float 1.000000e+00)  ; FMin(a,b)
  %8181 = fcmp fast olt float %8177, 0x3FEFFF8020000000
  br i1 %8181, label %8182, label %8297, !dx.controlflow.hints !170

; <label>:8182                                    ; preds = %8149
  %8183 = extractvalue %dx.types.CBufRet.f32 %8065, 3
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 0
  %8186 = extractvalue %dx.types.CBufRet.f32 %8184, 1
  %8187 = extractvalue %dx.types.CBufRet.f32 %8184, 2
  %8188 = extractvalue %dx.types.CBufRet.f32 %8184, 3
  %8189 = fsub fast float %8185, %8177
  %8190 = fsub fast float %8186, %8178
  %8191 = fsub fast float %8187, %8179
  %8192 = fsub fast float %8188, %8180
  %8193 = fmul fast float %8189, %8183
  %8194 = fmul fast float %8190, %8183
  %8195 = fmul fast float %8191, %8183
  %8196 = fmul fast float %8192, %8183
  %8197 = fadd fast float %8193, %8177
  %8198 = fadd fast float %8194, %8178
  %8199 = fsub fast float -0.000000e+00, %8198
  %8200 = fadd fast float %8195, %8179
  %8201 = fadd fast float %8196, %8180
  %8202 = fmul fast float %8197, %8197
  %8203 = fsub fast float %8198, %8202
  %8204 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8203)  ; FMax(a,b)
  %8205 = fdiv fast float 1.000000e+00, %8204
  %8206 = fmul fast float %8198, %8197
  %8207 = fsub fast float %8200, %8206
  %8208 = fsub fast float %8157, %8197
  %8209 = fmul fast float %8157, %8157
  %8210 = fsub fast float %8209, %8198
  %8211 = fmul fast float %8208, %8205
  %8212 = fmul fast float %8211, %8207
  %8213 = fsub fast float %8210, %8212
  %8214 = fmul fast float %8198, %8198
  %8215 = fsub fast float %8201, %8214
  %8216 = fmul fast float %8207, %8207
  %8217 = fmul fast float %8216, %8205
  %8218 = fsub fast float %8215, %8217
  %8219 = fdiv fast float %8213, %8218
  %8220 = fmul fast float %8207, %8219
  %8221 = fsub fast float %8208, %8220
  %8222 = fmul fast float %8221, %8205
  %8223 = fmul fast float %8222, %8197
  %8224 = fsub fast float 1.000000e+00, %8223
  %8225 = fmul fast float %8198, %8219
  %8226 = fsub fast float %8224, %8225
  %8227 = fmul fast float %8222, %8222
  %8228 = fmul fast float %8219, 4.000000e+00
  %8229 = fmul fast float %8228, %8226
  %8230 = fsub fast float %8227, %8229
  %8231 = call float @dx.op.unary.f32(i32 24, float %8230)  ; Sqrt(value)
  %8232 = fcmp fast oge float %8222, 0.000000e+00
  %8233 = fsub fast float -0.000000e+00, %8231
  %8234 = select i1 %8232, float %8233, float %8231
  %8235 = fsub fast float %8234, %8222
  %8236 = fdiv fast float %8235, %8219
  %8237 = fdiv fast float %8226, %8235
  %8238 = fmul fast float %8236, 5.000000e-01
  %8239 = fmul fast float %8237, 2.000000e+00
  %8240 = select i1 %8232, float %8238, float %8239
  %8241 = select i1 %8232, float %8239, float %8238
  %8242 = call float @dx.op.binary.f32(i32 35, float %8240, float %8241)  ; FMax(a,b)
  %8243 = call float @dx.op.binary.f32(i32 36, float %8240, float %8241)  ; FMin(a,b)
  %8244 = fcmp fast ogt float %8157, %8243
  br i1 %8244, label %8245, label %8255

; <label>:8245                                    ; preds = %8182
  %8246 = fsub fast float %8157, %8243
  %8247 = fsub fast float %8242, %8243
  %8248 = fmul fast float %8246, %8247
  %8249 = fmul fast float %8242, %8157
  %8250 = fadd fast float %8242, %8157
  %8251 = fmul fast float %8250, %8197
  %8252 = fadd fast float %8249, %8198
  %8253 = fsub fast float %8252, %8251
  %8254 = fdiv fast float %8253, %8248
  br label %8255

; <label>:8255                                    ; preds = %8245, %8182
  %8256 = phi float [ %8254, %8245 ], [ 0.000000e+00, %8182 ]
  %8257 = fcmp fast ogt float %8157, %8242
  %8258 = fsub fast float %8157, %8242
  br i1 %8257, label %8259, label %8269

; <label>:8259                                    ; preds = %8255
  %8260 = fsub fast float %8242, %8243
  %8261 = fmul fast float %8260, %8258
  %8262 = fmul fast float %8243, %8157
  %8263 = fadd fast float %8243, %8157
  %8264 = fmul fast float %8263, %8197
  %8265 = fsub fast float %8199, %8262
  %8266 = fadd fast float %8265, %8264
  %8267 = fdiv fast float %8266, %8261
  %8268 = fadd fast float %8267, %8256
  br label %8269

; <label>:8269                                    ; preds = %8259, %8255
  %8270 = phi float [ %8268, %8259 ], [ %8256, %8255 ]
  %8271 = fsub fast float %8157, %8243
  %8272 = fmul fast float %8271, %8258
  %8273 = fmul fast float %8243, %8242
  %8274 = fadd fast float %8243, %8242
  %8275 = fmul fast float %8274, %8197
  %8276 = fadd fast float %8273, %8198
  %8277 = fsub fast float %8276, %8275
  %8278 = fdiv fast float %8277, %8272
  %8279 = call float @dx.op.unary.f32(i32 7, float %8270)  ; Saturate(value)
  %8280 = fcmp fast oeq float %6948, 0.000000e+00
  %8281 = extractvalue %dx.types.CBufRet.f32 %8065, 0
  %8282 = fcmp fast oeq float %8281, 0.000000e+00
  %8283 = or i1 %8280, %8282
  %8284 = fmul fast float %8281, 2.000000e+00
  %8285 = fadd fast float %8066, %8067
  %8286 = fdiv fast float %8285, %8284
  %8287 = call float @dx.op.unary.f32(i32 7, float %8286)  ; Saturate(value)
  %8288 = fmul fast float %8287, 2.000000e+00
  %8289 = fsub fast float 3.000000e+00, %8288
  %8290 = fmul fast float %8287, %8287
  %8291 = fmul fast float %8290, %8289
  %8292 = select i1 %8283, float 1.000000e+00, float %8291
  %8293 = fmul fast float %8278, %6948
  %8294 = fadd fast float %8279, %8293
  %8295 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8296 = fmul fast float %8292, %8295
  br label %8297

; <label>:8297                                    ; preds = %8269, %8149
  %8298 = phi float [ %8296, %8269 ], [ 0.000000e+00, %8149 ]
  %8299 = fsub fast float 1.000000e+00, %8298
  %8300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %8019, float %8020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8301 = extractvalue %dx.types.ResRet.f32 %8300, 0
  %8302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8303 = extractvalue %dx.types.CBufRet.i32 %8302, 2
  %8304 = icmp eq i32 %8303, 0
  br i1 %8304, label %8310, label %8305

; <label>:8305                                    ; preds = %8297
  %8306 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8307 = fadd fast float %8301, -1.000000e+00
  %8308 = fmul fast float %8306, %8307
  %8309 = fadd fast float %8308, 1.000000e+00
  br label %8310

; <label>:8310                                    ; preds = %8305, %8297
  %8311 = phi float [ %8309, %8305 ], [ %8299, %8297 ]
  br i1 %8073, label %8312, label %8330

; <label>:8312                                    ; preds = %8310
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8315 = fsub fast float %8150, %8314
  %8316 = call float @dx.op.unary.f32(i32 7, float %8315)  ; Saturate(value)
  %8317 = fsub fast float %8150, %8072
  %8318 = call float @dx.op.unary.f32(i32 7, float %8317)  ; Saturate(value)
  %8319 = fsub fast float %8316, %8318
  %8320 = fsub fast float %8152, %8318
  %8321 = fdiv fast float %8320, %8319
  %8322 = call float @dx.op.unary.f32(i32 7, float %8321)  ; Saturate(value)
  %8323 = fmul fast float %8322, 2.000000e+00
  %8324 = fsub fast float 3.000000e+00, %8323
  %8325 = fsub fast float %8301, %8311
  %8326 = fmul fast float %8322, %8322
  %8327 = fmul fast float %8326, %8325
  %8328 = fmul fast float %8327, %8324
  %8329 = fadd fast float %8328, %8311
  br label %8330

; <label>:8330                                    ; preds = %8312, %8310
  %8331 = phi float [ %8329, %8312 ], [ %8311, %8310 ]
  %8332 = call float @dx.op.binary.f32(i32 35, float %8301, float %8331)  ; FMax(a,b)
  %8333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.i32 %8333, 2
  %8335 = and i32 %8334, 1
  %8336 = icmp eq i32 %8335, 0
  %8337 = fcmp fast une float %8332, 1.000000e+00
  %8338 = and i1 %8337, %8336
  br i1 %8338, label %8339, label %8358

; <label>:8339                                    ; preds = %8330
  %8340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %8019, float %8020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8341 = extractvalue %dx.types.ResRet.f32 %8340, 0
  %8342 = extractvalue %dx.types.ResRet.f32 %8340, 1
  %8343 = extractvalue %dx.types.ResRet.f32 %8340, 2
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8346 = fmul fast float %8345, %8341
  %8347 = fmul fast float %8345, %8342
  %8348 = fmul fast float %8345, %8343
  %8349 = fcmp fast ogt float %8301, 0x3FEFFF2E40000000
  %8350 = fsub fast float 1.000000e+00, %8332
  %8351 = fsub fast float 1.000000e+00, %8301
  %8352 = fdiv fast float %8350, %8351
  %8353 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8354 = select i1 %8349, float 0.000000e+00, float %8353
  %8355 = fmul fast float %8346, %8354
  %8356 = fmul fast float %8347, %8354
  %8357 = fmul fast float %8348, %8354
  br label %8358

; <label>:8358                                    ; preds = %8339, %8330
  %8359 = phi float [ 0.000000e+00, %8330 ], [ %8355, %8339 ]
  %8360 = phi float [ 0.000000e+00, %8330 ], [ %8356, %8339 ]
  %8361 = phi float [ 0.000000e+00, %8330 ], [ %8357, %8339 ]
  %8362 = fmul fast float %8359, %6931
  %8363 = fmul fast float %8360, %6933
  %8364 = fmul fast float %8361, %6935
  %8365 = fmul fast float %8332, %7994
  %8366 = call float @dx.op.dot3.f32(i32 55, float %8332, float %8332, float %8332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8367 = call float @dx.op.dot3.f32(i32 55, float %8362, float %8363, float %8364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8368 = select i1 %259, float %8366, float %8332
  %8369 = select i1 %259, float 1.000000e+00, float %8332
  %8370 = select i1 %259, float %8367, float %8362
  %8371 = select i1 %259, float 0.000000e+00, float %8363
  %8372 = select i1 %259, float 0.000000e+00, float %8364
  %8373 = fmul fast float %8368, %8006
  %8374 = fmul fast float %8368, %8007
  %8375 = fmul fast float %8369, %8008
  %8376 = fadd fast float %8373, %8370
  %8377 = fadd fast float %8374, %8371
  %8378 = fadd fast float %8372, %8375
  %8379 = fmul fast float %8368, %8009
  %8380 = fmul fast float %8368, %8010
  %8381 = fmul fast float %8369, %8011
  br label %8382

; <label>:8382                                    ; preds = %8358, %8015, %7984, %7216
  %8383 = phi float [ %7221, %7216 ], [ %8006, %7984 ], [ %8376, %8358 ], [ %8006, %8015 ]
  %8384 = phi float [ %7222, %7216 ], [ %8007, %7984 ], [ %8377, %8358 ], [ %8007, %8015 ]
  %8385 = phi float [ %7223, %7216 ], [ %8008, %7984 ], [ %8378, %8358 ], [ %8008, %8015 ]
  %8386 = phi float [ %7224, %7216 ], [ %8009, %7984 ], [ %8379, %8358 ], [ %8009, %8015 ]
  %8387 = phi float [ %7225, %7216 ], [ %8010, %7984 ], [ %8380, %8358 ], [ %8010, %8015 ]
  %8388 = phi float [ %7226, %7216 ], [ %8011, %7984 ], [ %8381, %8358 ], [ %8011, %8015 ]
  %8389 = phi float [ %7227, %7216 ], [ %7994, %7984 ], [ %8365, %8358 ], [ %7994, %8015 ]
  %8390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8391 = extractvalue %dx.types.CBufRet.f32 %8390, 2
  %8392 = extractvalue %dx.types.CBufRet.f32 %8390, 3
  %8393 = fmul fast float %8391, %100
  %8394 = fmul fast float %8392, %101
  %8395 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8396 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  %8397 = select i1 %6958, i32 2, i32 0
  %8398 = or i32 %8397, 1
  %8399 = uitofp i32 %8398 to float
  %8400 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8395, float %8396, float %8399, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8401 = extractvalue %dx.types.ResRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.ResRet.f32 %8400, 1
  %8403 = extractvalue %dx.types.ResRet.f32 %8400, 2
  %8404 = extractvalue %dx.types.ResRet.f32 %8400, 3
  %8405 = add nuw nsw i32 %8397, 2
  %8406 = uitofp i32 %8405 to float
  %8407 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8395, float %8396, float %8406, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = extractvalue %dx.types.ResRet.f32 %8407, 3
  %8412 = call float @dx.op.binary.f32(i32 35, float %8402, float %8403)  ; FMax(a,b)
  %8413 = call float @dx.op.binary.f32(i32 35, float %8401, float %8412)  ; FMax(a,b)
  %8414 = call float @dx.op.binary.f32(i32 35, float %8413, float %8404)  ; FMax(a,b)
  %8415 = call float @dx.op.binary.f32(i32 36, float %8409, float %8410)  ; FMin(a,b)
  %8416 = call float @dx.op.binary.f32(i32 36, float %8408, float %8415)  ; FMin(a,b)
  %8417 = call float @dx.op.binary.f32(i32 36, float %8416, float %8411)  ; FMin(a,b)
  %8418 = fmul fast float %8414, 2.550000e+02
  %8419 = fadd fast float %8418, 0x3F70101020000000
  %8420 = fptoui float %8419 to i32
  %8421 = fmul fast float %8417, 2.550000e+02
  %8422 = fadd fast float %8421, 0x3F70101020000000
  %8423 = fptoui float %8422 to i32
  %8424 = icmp ult i32 %8420, %8423
  br i1 %8424, label %8425, label %8594

; <label>:8425                                    ; preds = %8382
  %8426 = fcmp fast ogt float %90, 9.843750e-01
  %8427 = fadd fast float %7220, -4.000000e+00
  %8428 = select i1 %8426, float -4.000000e+00, float %8427
  %8429 = call float @dx.op.binary.f32(i32 35, float %8428, float 0.000000e+00)  ; FMax(a,b)
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 0
  %8432 = fadd fast float %8431, %8429
  %8433 = extractvalue %dx.types.CBufRet.f32 %8430, 2
  %8434 = fmul fast float %8432, %8433
  %8435 = call float @dx.op.unary.f32(i32 23, float %8434)  ; Log(value)
  %8436 = extractvalue %dx.types.CBufRet.f32 %8430, 3
  %8437 = fmul fast float %8436, %8435
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 2
  %8440 = fmul fast float %8437, %8439
  %8441 = call float @dx.op.unary.f32(i32 7, float %8440)  ; Saturate(value)
  %8442 = uitofp i32 %8420 to float
  %8443 = uitofp i32 %8423 to float
  %8444 = fadd fast float %8442, 5.000000e-01
  %8445 = fadd fast float %8443, 5.000000e-01
  %8446 = fmul fast float %8439, %8444
  %8447 = fmul fast float %8439, %8445
  %8448 = fadd fast float %8446, 0x3F0FFB4800000000
  %8449 = fadd fast float %8447, 0xBF0FFB4800000000
  %8450 = call float @dx.op.binary.f32(i32 35, float %8441, float %8448)  ; FMax(a,b)
  %8451 = call float @dx.op.binary.f32(i32 36, float %8450, float %8449)  ; FMin(a,b)
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 1
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8455 = extractvalue %dx.types.CBufRet.f32 %8452, 0
  %8456 = select i1 %6958, float %8455, float 0.000000e+00
  %8457 = fmul fast float %8453, %8451
  %8458 = fadd fast float %8456, %8457
  %8459 = fadd fast float %8456, %8454
  %8460 = fsub fast float %8453, %8454
  %8461 = fadd fast float %8460, %8456
  %8462 = call float @dx.op.binary.f32(i32 35, float %8458, float %8459)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 36, float %8462, float %8461)  ; FMin(a,b)
  %8464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %8395, float %8396, float %8463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8465 = extractvalue %dx.types.ResRet.f32 %8464, 0
  %8466 = extractvalue %dx.types.ResRet.f32 %8464, 1
  %8467 = extractvalue %dx.types.ResRet.f32 %8464, 2
  %8468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.i32 %8468, 0
  %8470 = extractvalue %dx.types.CBufRet.i32 %8468, 1
  %8471 = uitofp i32 %8469 to float
  %8472 = uitofp i32 %8470 to float
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.CBufRet.f32 %8473, 1
  %8476 = fmul fast float %8471, %8395
  %8477 = fmul fast float %8472, %8396
  %8478 = fadd fast float %8476, -5.000000e-01
  %8479 = fadd fast float %8477, -5.000000e-01
  %8480 = call float @dx.op.unary.f32(i32 22, float %8478)  ; Frc(value)
  %8481 = call float @dx.op.unary.f32(i32 22, float %8479)  ; Frc(value)
  %8482 = fmul fast float %8480, %8480
  %8483 = fmul fast float %8482, %8480
  %8484 = fsub fast float 3.000000e+00, %8480
  %8485 = fmul fast float %8482, %8484
  %8486 = fmul fast float %8480, 3.000000e+00
  %8487 = fmul fast float %8483, 3.000000e+00
  %8488 = fmul fast float %8482, 6.000000e+00
  %8489 = fsub fast float %8487, %8488
  %8490 = fadd fast float %8489, 4.000000e+00
  %8491 = fmul fast float %8490, 0x3FC5555560000000
  %8492 = fmul fast float %8483, -3.000000e+00
  %8493 = fadd fast float %8482, %8480
  %8494 = fmul fast float %8493, 3.000000e+00
  %8495 = fadd fast float %8492, 1.000000e+00
  %8496 = fadd fast float %8495, %8494
  %8497 = fmul fast float %8483, 0x3FC5555560000000
  %8498 = fmul fast float %8481, %8481
  %8499 = fmul fast float %8498, %8481
  %8500 = fsub fast float 3.000000e+00, %8481
  %8501 = fmul fast float %8498, %8500
  %8502 = fmul fast float %8481, 3.000000e+00
  %8503 = fmul fast float %8499, 3.000000e+00
  %8504 = fmul fast float %8498, 6.000000e+00
  %8505 = fsub fast float %8503, %8504
  %8506 = fadd fast float %8505, 4.000000e+00
  %8507 = fmul fast float %8506, 0x3FC5555560000000
  %8508 = fmul fast float %8499, -3.000000e+00
  %8509 = fadd fast float %8498, %8481
  %8510 = fmul fast float %8509, 3.000000e+00
  %8511 = fadd fast float %8508, 1.000000e+00
  %8512 = fadd fast float %8511, %8510
  %8513 = fmul fast float %8499, 0x3FC5555560000000
  %8514 = fadd fast float %8480, 1.000000e+00
  %8515 = fsub fast float 1.000000e+00, %8486
  %8516 = fadd fast float %8515, %8485
  %8517 = fadd fast float %8516, %8490
  %8518 = fmul fast float %8517, 0x3FC5555560000000
  %8519 = fdiv fast float %8491, %8518
  %8520 = fsub fast float %8514, %8519
  %8521 = fsub fast float 1.000000e+00, %8480
  %8522 = fadd fast float %8496, %8483
  %8523 = fmul fast float %8522, 0x3FC5555560000000
  %8524 = fdiv fast float %8497, %8523
  %8525 = fadd fast float %8521, %8524
  %8526 = fadd fast float %8481, 1.000000e+00
  %8527 = fsub fast float 1.000000e+00, %8502
  %8528 = fadd fast float %8527, %8501
  %8529 = fadd fast float %8528, %8506
  %8530 = fmul fast float %8529, 0x3FC5555560000000
  %8531 = fdiv fast float %8507, %8530
  %8532 = fsub fast float %8526, %8531
  %8533 = fsub fast float 1.000000e+00, %8481
  %8534 = fadd fast float %8512, %8499
  %8535 = fmul fast float %8534, 0x3FC5555560000000
  %8536 = fdiv fast float %8513, %8535
  %8537 = fadd fast float %8536, %8533
  %8538 = fmul fast float %8520, %8474
  %8539 = fsub fast float %8395, %8538
  %8540 = fmul fast float %8525, %8474
  %8541 = fadd fast float %8540, %8395
  %8542 = fmul fast float %8537, %8475
  %8543 = fadd fast float %8542, %8396
  %8544 = fmul fast float %8532, %8475
  %8545 = fsub fast float %8396, %8544
  %8546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8539, float %8545, float %8463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8547 = extractvalue %dx.types.ResRet.f32 %8546, 0
  %8548 = extractvalue %dx.types.ResRet.f32 %8546, 1
  %8549 = extractvalue %dx.types.ResRet.f32 %8546, 2
  %8550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8541, float %8545, float %8463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8551 = extractvalue %dx.types.ResRet.f32 %8550, 0
  %8552 = extractvalue %dx.types.ResRet.f32 %8550, 1
  %8553 = extractvalue %dx.types.ResRet.f32 %8550, 2
  %8554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8539, float %8543, float %8463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8555 = extractvalue %dx.types.ResRet.f32 %8554, 0
  %8556 = extractvalue %dx.types.ResRet.f32 %8554, 1
  %8557 = extractvalue %dx.types.ResRet.f32 %8554, 2
  %8558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8541, float %8543, float %8463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8559 = extractvalue %dx.types.ResRet.f32 %8558, 0
  %8560 = extractvalue %dx.types.ResRet.f32 %8558, 1
  %8561 = extractvalue %dx.types.ResRet.f32 %8558, 2
  %8562 = fsub fast float %8555, %8547
  %8563 = fsub fast float %8556, %8548
  %8564 = fsub fast float %8557, %8549
  %8565 = fmul fast float %8562, %8535
  %8566 = fmul fast float %8563, %8535
  %8567 = fmul fast float %8564, %8535
  %8568 = fadd fast float %8565, %8547
  %8569 = fadd fast float %8566, %8548
  %8570 = fadd fast float %8567, %8549
  %8571 = fsub fast float %8559, %8551
  %8572 = fsub fast float %8560, %8552
  %8573 = fsub fast float %8561, %8553
  %8574 = fmul fast float %8571, %8535
  %8575 = fmul fast float %8572, %8535
  %8576 = fmul fast float %8573, %8535
  %8577 = fsub fast float %8551, %8568
  %8578 = fadd fast float %8577, %8574
  %8579 = fsub fast float %8552, %8569
  %8580 = fadd fast float %8579, %8575
  %8581 = fsub fast float %8553, %8570
  %8582 = fadd fast float %8581, %8576
  %8583 = fmul fast float %8578, %8523
  %8584 = fmul fast float %8580, %8523
  %8585 = fmul fast float %8582, %8523
  %8586 = fadd fast float %8583, %8568
  %8587 = fadd fast float %8584, %8569
  %8588 = fadd fast float %8585, %8570
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 1
  %8591 = fmul fast float %8586, %8590
  %8592 = fmul fast float %8587, %8590
  %8593 = fmul fast float %8588, %8590
  br label %8594

; <label>:8594                                    ; preds = %8425, %8382
  %8595 = phi float [ %8465, %8425 ], [ 1.000000e+00, %8382 ]
  %8596 = phi float [ %8466, %8425 ], [ 1.000000e+00, %8382 ]
  %8597 = phi float [ %8467, %8425 ], [ 1.000000e+00, %8382 ]
  %8598 = phi float [ %8591, %8425 ], [ 0.000000e+00, %8382 ]
  %8599 = phi float [ %8592, %8425 ], [ 0.000000e+00, %8382 ]
  %8600 = phi float [ %8593, %8425 ], [ 0.000000e+00, %8382 ]
  %8601 = fmul fast float %8598, %6931
  %8602 = fmul fast float %8599, %6933
  %8603 = fmul fast float %8600, %6935
  %8604 = fmul fast float %8595, %8389
  %8605 = call float @dx.op.dot3.f32(i32 55, float %8595, float %8596, float %8597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8606 = call float @dx.op.dot3.f32(i32 55, float %8601, float %8602, float %8603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8607 = select i1 %259, float %8605, float %8595
  %8608 = select i1 %259, float %8605, float %8596
  %8609 = select i1 %259, float 1.000000e+00, float %8597
  %8610 = select i1 %259, float %8606, float %8601
  %8611 = select i1 %259, float 0.000000e+00, float %8602
  %8612 = select i1 %259, float 0.000000e+00, float %8603
  %8613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8614 = extractvalue %dx.types.CBufRet.i32 %8613, 3
  %8615 = and i32 %8614, 3
  %8616 = icmp ne i32 %8615, 0
  %8617 = and i32 %8614, 4
  %8618 = icmp ne i32 %8617, 0
  %8619 = and i1 %8616, %8618
  %8620 = and i1 %259, %8619
  br i1 %8620, label %8621, label %8627

; <label>:8621                                    ; preds = %8594
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 1
  %8624 = fadd fast float %8604, -1.000000e+00
  %8625 = fmul fast float %8623, %8624
  %8626 = fadd fast float %8625, 1.000000e+00
  br label %8627

; <label>:8627                                    ; preds = %8621, %8594
  %8628 = phi float [ %8626, %8621 ], [ %8604, %8594 ]
  %8629 = fadd fast float %8386, %8383
  %8630 = fmul fast float %8607, %8629
  %8631 = fadd fast float %8630, %8610
  %8632 = fadd fast float %8387, %8384
  %8633 = fmul fast float %8608, %8632
  %8634 = fadd fast float %8633, %8611
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 0
  br i1 %259, label %8637, label %8653

; <label>:8637                                    ; preds = %8627
  %8638 = fadd fast float %8631, %8634
  %8639 = fmul fast float %8636, %8638
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 3
  %8642 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %8643 = fsub fast float %6945, %6939
  %8644 = fadd fast float %8643, %6946
  %8645 = fsub fast float %8644, %8642
  %8646 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %8647 = fmul fast float %8645, %8646
  %8648 = call float @dx.op.unary.f32(i32 7, float %8647)  ; Saturate(value)
  %8649 = fsub fast float %8648, %8641
  %8650 = fmul fast float %8649, %8628
  %8651 = fadd fast float %8650, %8641
  %8652 = fmul fast float %8651, %1204
  br label %8679

; <label>:8653                                    ; preds = %8627
  %8654 = fadd fast float %8388, %8385
  %8655 = fmul fast float %8609, %8654
  %8656 = fadd fast float %8655, %8612
  %8657 = fmul fast float %8636, %8631
  %8658 = fmul fast float %8636, %8634
  %8659 = fmul fast float %8636, %8656
  %8660 = call float @dx.op.binary.f32(i32 35, float %8658, float %8659)  ; FMax(a,b)
  %8661 = call float @dx.op.binary.f32(i32 35, float %8657, float %8660)  ; FMax(a,b)
  %8662 = call float @dx.op.binary.f32(i32 35, float %6933, float %6935)  ; FMax(a,b)
  %8663 = call float @dx.op.binary.f32(i32 35, float %6931, float %8662)  ; FMax(a,b)
  %8664 = call float @dx.op.binary.f32(i32 35, float %8661, float %8663)  ; FMax(a,b)
  %8665 = fcmp fast ugt float %8664, 0x3F10000000000000
  br i1 %8665, label %8667, label %8666

; <label>:8666                                    ; preds = %8653
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8667

; <label>:8667                                    ; preds = %8666, %8653
  %8668 = add i32 %50, 356
  %8669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %8668, i32 undef)  ; BufferLoad(srv,index,wot)
  %8670 = extractvalue %dx.types.ResRet.i32 %8669, 0
  %8671 = and i32 %8670, 32
  %8672 = icmp eq i32 %8671, 0
  br i1 %8672, label %8679, label %8673

; <label>:8673                                    ; preds = %8667
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 0
  %8676 = fmul fast float %8675, 0x3FE99999A0000000
  %8677 = fadd fast float %8675, %8657
  %8678 = fadd fast float %8676, %8659
  br label %8679

; <label>:8679                                    ; preds = %8673, %8667, %8637
  %8680 = phi float [ %1204, %8637 ], [ %6933, %8673 ], [ %6933, %8667 ]
  %8681 = phi float [ %1204, %8637 ], [ %6935, %8673 ], [ %6935, %8667 ]
  %8682 = phi float [ %8639, %8637 ], [ %8677, %8673 ], [ %8657, %8667 ]
  %8683 = phi float [ %8652, %8637 ], [ %8658, %8673 ], [ %8658, %8667 ]
  %8684 = phi float [ %1204, %8637 ], [ %8678, %8673 ], [ %8659, %8667 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8685 = call float @dx.op.binary.f32(i32 36, float %8682, float 3.225500e+04)  ; FMin(a,b)
  %8686 = call float @dx.op.binary.f32(i32 36, float %8683, float 3.225500e+04)  ; FMin(a,b)
  %8687 = call float @dx.op.binary.f32(i32 36, float %8684, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8685)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8686)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8687)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8688 = call float @dx.op.binary.f32(i32 36, float %6931, float 3.225500e+04)  ; FMin(a,b)
  %8689 = call float @dx.op.binary.f32(i32 36, float %8680, float 3.225500e+04)  ; FMin(a,b)
  %8690 = call float @dx.op.binary.f32(i32 36, float %8681, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8688)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8689)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8690)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !52, !55}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !27}
!27 = !{i32 0, i32 5}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !37}
!37 = !{i32 0, i32 14}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !37}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!52 = !{!53, !54}
!53 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!54 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!57 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!58 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!59 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!60 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!61 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!62 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!63 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !91}
!65 = !{!66, !87, null}
!66 = !{!67, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 15}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !69}
!71 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !72}
!72 = !{i32 3, i32 3}
!73 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!76 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 5, i8 0, !74}
!77 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!78 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 7, i8 0, !74}
!79 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 8, i8 0, !69}
!80 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 9, i8 0, !72}
!81 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 10, i8 0, !69}
!82 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 11, i8 0, !74}
!83 = !{i32 12, !"ENTITY_IDS", i8 5, i8 0, !68, i8 1, i32 1, i8 2, i32 12, i8 0, !84}
!84 = !{i32 3, i32 1}
!85 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 13, i8 0, !84}
!86 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!87 = !{!88, !89}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!89 = !{i32 1, !"SV_Target", i8 9, i8 16, !90, i8 0, i32 1, i8 4, i32 1, i8 0, !69}
!90 = !{i32 1}
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
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !99, i64 0}
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

