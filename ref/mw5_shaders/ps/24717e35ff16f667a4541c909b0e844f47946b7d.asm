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
; ENTITY_IDS               0   xy         13     NONE    uint    y  
; SV_IsFrontFace           0     z        13    FFACE    uint     z 
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 1a95619e10638064ee0c4cae892575b7
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
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 56 }
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
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = icmp ne i32 %50, 0
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = alloca [12 x float], align 4
  %101 = alloca [12 x float], align 4
  %102 = alloca [3 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fmul fast float %107, %96
  %109 = fmul fast float %107, %97
  %110 = select i1 %51, float 1.000000e+00, float -1.000000e+00
  %111 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %112 = bitcast float %111 to i32
  %113 = ashr i32 %112, 1
  %114 = sub nsw i32 1597250115, %113
  %115 = bitcast i32 %114 to float
  %116 = fmul fast float %87, %110
  %117 = fmul fast float %116, %115
  %118 = fmul fast float %88, %110
  %119 = fmul fast float %118, %115
  %120 = fmul fast float %89, %110
  %121 = fmul fast float %120, %115
  %122 = fmul fast float %88, %85
  %123 = fmul fast float %89, %84
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %89, %83
  %126 = fmul fast float %87, %85
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %87, %84
  %129 = fmul fast float %88, %83
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %124, %86
  %132 = fmul fast float %127, %86
  %133 = fmul fast float %130, %86
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = fcmp fast une float %135, 0.000000e+00
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %108, 2.000000e+00
  %141 = fmul fast float %140, %138
  %142 = fmul fast float %109, 2.000000e+00
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 1.000000e+00, %141
  %145 = fsub fast float 1.000000e+00, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = select i1 %136, float %147, float %151
  %155 = select i1 %136, float %148, float %152
  %156 = select i1 %136, float %149, float %153
  %157 = fmul fast float %154, %144
  %158 = fmul fast float %155, %144
  %159 = fmul fast float %156, %144
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %136, float %161, float %165
  %169 = select i1 %136, float %162, float %166
  %170 = select i1 %136, float %163, float %167
  %171 = fmul fast float %168, %145
  %172 = fmul fast float %169, %145
  %173 = fmul fast float %170, %145
  %174 = fadd fast float %171, %157
  %175 = fadd fast float %172, %158
  %176 = fadd fast float %173, %159
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = select i1 %136, float %178, float %182
  %186 = select i1 %136, float %179, float %183
  %187 = select i1 %136, float %180, float %184
  %188 = fadd fast float %174, %185
  %189 = fadd fast float %175, %186
  %190 = fadd fast float %176, %187
  %191 = fmul fast float %188, %99
  %192 = fmul fast float %189, %99
  %193 = fmul fast float %190, %99
  %194 = fmul fast float %108, 5.000000e-01
  %195 = fmul fast float %109, 5.000000e-01
  %196 = fptosi float %194 to i32
  %197 = fptosi float %195 to i32
  %198 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %196, i32 %197, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = lshr i32 %199, 18
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F4C00EBA0000000
  %203 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %204 = fadd fast float %203, -1.000000e+00
  %205 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %206 = extractvalue %dx.types.Dimensions %205, 0
  %207 = sitofp i32 %206 to float
  %208 = extractvalue %dx.types.Dimensions %205, 1
  %209 = sitofp i32 %208 to float
  %210 = fcmp fast oge float %194, %207
  %211 = fcmp fast oge float %195, %209
  %212 = or i1 %210, %211
  %213 = select i1 %212, float 0x4197782600000000, float %204
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %217 = fmul fast float %215, %108
  %218 = fmul fast float %216, %109
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 114688
  %222 = icmp ne i32 %221, 0
  %223 = select i1 %222, float %217, float 0.000000e+00
  %224 = select i1 %222, float %218, float 0.000000e+00
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, 2.550000e+02
  %228 = fptoui float %227 to i32
  %229 = select i1 %222, i32 %228, i32 0
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 3
  %232 = and i32 %231, 3
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 4
  %235 = icmp ne i32 %234, 0
  %236 = and i1 %233, %235
  br i1 %236, label %237, label %246

; <label>:237                                     ; preds = %0
  %238 = fmul fast float %139, %109
  %239 = fmul fast float %138, %108
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %44, float %239, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fsub fast float 1.000000e+00, %241
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = fcmp fast olt float %242, %244
  br label %249

; <label>:246                                     ; preds = %0
  %247 = icmp eq i32 %234, 0
  %248 = and i1 %233, %247
  br label %249

; <label>:249                                     ; preds = %246, %237
  %250 = phi i1 [ %245, %237 ], [ %248, %246 ]
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %253 = fmul fast float %252, 0x3FE3C6EF40000000
  %254 = frem fast float %108, 2.560000e+02
  %255 = frem fast float %109, 2.560000e+02
  %256 = fptoui float %254 to i32
  %257 = fptoui float %255 to i32
  %258 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %256, i32 %257, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fadd fast float %259, %253
  %261 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %262 = add i32 %52, 156
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %264, 7
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %52, 216
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %52, 36
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %52, 288
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = mul i32 %53, 100
  %305 = add i32 %304, 28
  %306 = add i32 %304, 40
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = add i32 %52, 172
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = shl i32 %311, 4
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %311, 7
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %311, 22
  %319 = shl nuw nsw i32 %318, 5
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = add i32 %52, 232
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %323, 8
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %323, 16
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = add i32 %52, 52
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %52, 304
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = shl i32 %350, 4
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %350, 7
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %350, 22
  %358 = shl nuw nsw i32 %357, 5
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = and i32 %308, 1
  %361 = icmp ne i32 %360, 0
  %362 = select i1 %361, float %353, float %314
  %363 = select i1 %361, float %356, float %317
  %364 = select i1 %361, float %359, float %320
  %365 = add i32 %304, 44
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = fmul fast float %367, %362
  %369 = fmul fast float %367, %363
  %370 = fmul fast float %367, %364
  %371 = add i32 %304, 48
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = shl i32 %373, 4
  %375 = and i32 %374, 32752
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %373, 7
  %378 = and i32 %377, 32752
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %373, 22
  %381 = shl nuw nsw i32 %380, 5
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = and i32 %308, 8
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %384, float %376, float %326
  %386 = select i1 %384, float %379, float %330
  %387 = select i1 %384, float %382, float %334
  %388 = add i32 %304, 52
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = and i32 %308, 2
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %392, float %339
  %398 = select i1 %396, float %394, float %341
  %399 = add i32 %304, 56
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %401, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = and i32 %308, 4
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %403, float %346
  %409 = fmul float %408, 0x3F50624DE0000000
  %410 = select i1 %407, float %405, float %348
  %411 = fmul float %410, 0x3F50624DE0000000
  %412 = add i32 %304, 60
  %413 = add i32 %304, 32
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = add i32 %52, 188
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = shl i32 %418, 4
  %420 = and i32 %419, 32752
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %418, 7
  %423 = and i32 %422, 32752
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %418, 22
  %426 = shl nuw nsw i32 %425, 5
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %52, 248
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 255
  %432 = uitofp i32 %431 to float
  %433 = fmul fast float %432, 0x3F70101020000000
  %434 = lshr i32 %430, 8
  %435 = and i32 %434, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = lshr i32 %430, 16
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = add i32 %52, 68
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 65535
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %444, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %52, 320
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 65535
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %451, 16
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = shl i32 %457, 4
  %459 = and i32 %458, 32752
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %457, 7
  %462 = and i32 %461, 32752
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %457, 22
  %465 = shl nuw nsw i32 %464, 5
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = and i32 %415, 1
  %468 = icmp ne i32 %467, 0
  %469 = select i1 %468, float %460, float %421
  %470 = select i1 %468, float %463, float %424
  %471 = select i1 %468, float %466, float %427
  %472 = add i32 %304, 64
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = fmul fast float %474, %469
  %476 = fmul fast float %474, %470
  %477 = fmul fast float %474, %471
  %478 = add i32 %304, 68
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = shl i32 %480, 4
  %482 = and i32 %481, 32752
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = lshr i32 %480, 7
  %485 = and i32 %484, 32752
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = lshr i32 %480, 22
  %488 = shl nuw nsw i32 %487, 5
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = and i32 %415, 8
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %483, float %433
  %493 = select i1 %491, float %486, float %437
  %494 = select i1 %491, float %489, float %441
  %495 = add i32 %304, 72
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 65535
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = lshr i32 %497, 16
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = and i32 %415, 2
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %499, float %446
  %505 = select i1 %503, float %501, float %448
  %506 = add i32 %304, 76
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 65535
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %508, 16
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = and i32 %415, 4
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %510, float %453
  %516 = fmul float %515, 0x3F50624DE0000000
  %517 = select i1 %514, float %512, float %455
  %518 = fmul float %517, 0x3F50624DE0000000
  %519 = add i32 %304, 80
  %520 = add i32 %304, 36
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = add i32 %52, 204
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = shl i32 %525, 4
  %527 = and i32 %526, 32752
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %525, 7
  %530 = and i32 %529, 32752
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = lshr i32 %525, 22
  %533 = shl nuw nsw i32 %532, 5
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = add i32 %52, 264
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 255
  %539 = uitofp i32 %538 to float
  %540 = fmul fast float %539, 0x3F70101020000000
  %541 = lshr i32 %537, 8
  %542 = and i32 %541, 255
  %543 = uitofp i32 %542 to float
  %544 = fmul fast float %543, 0x3F70101020000000
  %545 = lshr i32 %537, 16
  %546 = and i32 %545, 255
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %547, 0x3F70101020000000
  %549 = add i32 %52, 84
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 65535
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %551, 16
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = add i32 %52, 336
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %558, 16
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = shl i32 %564, 4
  %566 = and i32 %565, 32752
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %564, 7
  %569 = and i32 %568, 32752
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %564, 22
  %572 = shl nuw nsw i32 %571, 5
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = and i32 %522, 1
  %575 = icmp ne i32 %574, 0
  %576 = select i1 %575, float %567, float %528
  %577 = select i1 %575, float %570, float %531
  %578 = select i1 %575, float %573, float %534
  %579 = add i32 %304, 84
  %580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = fmul fast float %581, %576
  %583 = fmul fast float %581, %577
  %584 = fmul fast float %581, %578
  %585 = add i32 %304, 88
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = shl i32 %587, 4
  %589 = and i32 %588, 32752
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %587, 7
  %592 = and i32 %591, 32752
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = lshr i32 %587, 22
  %595 = shl nuw nsw i32 %594, 5
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = and i32 %522, 8
  %598 = icmp ne i32 %597, 0
  %599 = select i1 %598, float %590, float %540
  %600 = select i1 %598, float %593, float %544
  %601 = select i1 %598, float %596, float %548
  %602 = add i32 %304, 92
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = and i32 %604, 65535
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = lshr i32 %604, 16
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = and i32 %522, 2
  %610 = icmp ne i32 %609, 0
  %611 = select i1 %610, float %606, float %553
  %612 = select i1 %610, float %608, float %555
  %613 = add i32 %304, 96
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 65535
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %615, 16
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = and i32 %522, 4
  %621 = icmp ne i32 %620, 0
  %622 = select i1 %621, float %617, float %560
  %623 = fmul float %622, 0x3F50624DE0000000
  %624 = select i1 %621, float %619, float %562
  %625 = fmul float %624, 0x3F50624DE0000000
  %626 = add i32 %52, 348
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %628, 32
  %630 = icmp eq i32 %629, 0
  %631 = and i32 %628, 64
  %632 = icmp eq i32 %631, 0
  %633 = and i32 %628, 128
  %634 = icmp eq i32 %633, 0
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 2
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %654, label %639

; <label>:639                                     ; preds = %249
  %640 = add i32 %52, 504
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = add i32 %642, 0
  %644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %644, %dx.types.Handle %105, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = extractvalue %dx.types.ResRet.f32 %645, 3
  %650 = fmul fast float %649, %92
  %651 = fmul fast float %646, %93
  %652 = fmul fast float %647, %94
  %653 = fmul fast float %648, %95
  br label %654

; <label>:654                                     ; preds = %639, %249
  %655 = phi float [ %95, %249 ], [ %653, %639 ]
  %656 = phi float [ %94, %249 ], [ %652, %639 ]
  %657 = phi float [ %93, %249 ], [ %651, %639 ]
  %658 = phi float [ %92, %249 ], [ %650, %639 ]
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = and i32 %660, 2
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %682, label %663

; <label>:663                                     ; preds = %654
  %664 = add i32 %52, 44
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 1
  %668 = icmp ne i32 %667, 0
  %669 = select i1 %668, float %657, float 1.000000e+00
  %670 = add i32 %52, 60
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 1
  %674 = icmp ne i32 %673, 0
  %675 = select i1 %674, float %656, float 1.000000e+00
  %676 = add i32 %52, 76
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 1
  %680 = icmp ne i32 %679, 0
  %681 = select i1 %680, float %655, float 1.000000e+00
  br label %682

; <label>:682                                     ; preds = %663, %654
  %683 = phi float [ %655, %654 ], [ %681, %663 ]
  %684 = phi float [ %656, %654 ], [ %675, %663 ]
  %685 = phi float [ %657, %654 ], [ %669, %663 ]
  %686 = lshr i32 %660, 20
  %687 = and i32 %686, 3
  %688 = add nuw nsw i32 %687, 1
  %689 = add i32 %52, 24
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = add i32 %52, 28
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = or i32 %694, %691
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %1231, label %697

; <label>:697                                     ; preds = %682
  %698 = and i32 %691, 262144
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, float %58, float 1.000000e+00
  %701 = select i1 %699, float %59, float 0.000000e+00
  %702 = select i1 %699, float %60, float 0.000000e+00
  %703 = select i1 %699, float %61, float 1.000000e+00
  %704 = select i1 %699, float %62, float %90
  %705 = select i1 %699, float %63, float %91
  %706 = add i32 %52, 284
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = lshr i32 %708, 16
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = fmul fast float %710, 0x3F50624DE0000000
  %712 = add i32 %52, 88
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = lshr i32 %714, 16
  %716 = and i32 %715, 255
  %717 = lshr i32 %714, 24
  %718 = add i32 %52, 292
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 65535
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = lshr i32 %720, 16
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = add i32 %52, 32
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 22
  %729 = shl nuw nsw i32 %728, 5
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = shl i32 %727, 4
  %732 = and i32 %731, 32752
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = lshr i32 %727, 7
  %735 = and i32 %734, 32752
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 3
  %739 = fmul fast float %738, 1.000000e+03
  %740 = fmul fast float %302, %739
  %741 = call float @dx.op.unary.f32(i32 22, float %740)  ; Frc(value)
  %742 = fadd fast float %741, %292
  %743 = fmul fast float %303, %739
  %744 = call float @dx.op.unary.f32(i32 22, float %743)  ; Frc(value)
  %745 = fadd fast float %744, %294
  %746 = fmul fast float %711, %739
  %747 = call float @dx.op.unary.f32(i32 22, float %746)  ; Frc(value)
  %748 = fmul fast float %747, 0x401921FB60000000
  %749 = fadd fast float %748, %730
  %750 = call float @dx.op.unary.f32(i32 13, float %749)  ; Sin(value)
  %751 = call float @dx.op.unary.f32(i32 12, float %749)  ; Cos(value)
  %752 = fsub fast float -0.000000e+00, %750
  %753 = fadd fast float %704, -5.000000e-01
  %754 = fadd fast float %705, -5.000000e-01
  %755 = fmul fast float %722, %753
  %756 = fmul fast float %724, %754
  %757 = fadd fast float %755, 5.000000e-01
  %758 = fadd fast float %756, 5.000000e-01
  %759 = fmul fast float %733, %757
  %760 = fmul fast float %736, %758
  %761 = fmul fast float %751, %759
  %762 = call float @dx.op.tertiary.f32(i32 46, float %752, float %760, float %761)  ; FMad(a,b,c)
  %763 = fmul fast float %750, %759
  %764 = call float @dx.op.tertiary.f32(i32 46, float %751, float %760, float %763)  ; FMad(a,b,c)
  %765 = fadd fast float %742, %762
  %766 = fadd fast float %745, %764
  %767 = icmp ugt i32 %716, 1
  %768 = icmp ugt i32 %714, 33554431
  %769 = or i1 %768, %767
  br i1 %769, label %770, label %795

; <label>:770                                     ; preds = %697
  %771 = add i32 %52, 228
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = lshr i32 %773, 16
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = fmul fast float %738, %775
  %777 = call float @dx.op.unary.f32(i32 22, float %776)  ; Frc(value)
  %778 = mul nuw nsw i32 %716, %717
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %777, %779
  %781 = call float @dx.op.unary.f32(i32 27, float %780)  ; Round_ni(value)
  %782 = fptoui float %781 to i32
  %783 = urem i32 %782, %716
  %784 = udiv i32 %782, %717
  %785 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %786 = call float @dx.op.unary.f32(i32 22, float %766)  ; Frc(value)
  %787 = uitofp i32 %783 to float
  %788 = uitofp i32 %784 to float
  %789 = fadd fast float %785, %787
  %790 = fadd fast float %786, %788
  %791 = uitofp i32 %716 to float
  %792 = uitofp i32 %717 to float
  %793 = fdiv fast float %789, %791
  %794 = fdiv fast float %790, %792
  br label %795

; <label>:795                                     ; preds = %770, %697
  %796 = phi float [ %793, %770 ], [ %765, %697 ]
  %797 = phi float [ %794, %770 ], [ %766, %697 ]
  %798 = and i32 %691, 256
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %846, label %800

; <label>:800                                     ; preds = %795
  %801 = add i32 %52, 456
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = add i32 %803, 0
  %805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %806 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %805, %dx.types.Handle %105, float %796, float %797, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = add i32 %52, 100
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = shl i32 %810, 4
  %812 = and i32 %811, 32752
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = lshr i32 %810, 7
  %815 = and i32 %814, 32752
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = fsub fast float 1.000000e+00, %658
  %818 = call float @dx.op.binary.f32(i32 35, float %817, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %819 = bitcast float %658 to i32
  %820 = sitofp i32 %819 to float
  %821 = fadd fast float %820, 0xC1CFBF8940000000
  %822 = fmul fast float %816, %821
  %823 = fadd fast float %822, 0x41CFBF8940000000
  %824 = fptosi float %823 to i32
  %825 = bitcast i32 %824 to float
  %826 = bitcast float %818 to i32
  %827 = sitofp i32 %826 to float
  %828 = fadd fast float %827, 0xC1CFBF8940000000
  %829 = fmul fast float %828, %816
  %830 = fadd fast float %829, 0x41CFBF8940000000
  %831 = fptosi float %830 to i32
  %832 = bitcast i32 %831 to float
  %833 = fmul fast float %825, %813
  %834 = fmul fast float %832, %813
  %835 = fsub fast float %818, %833
  %836 = fadd fast float %834, %818
  %837 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %838 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %839 = fsub fast float %807, %837
  %840 = fsub fast float %838, %837
  %841 = bitcast float %840 to i32
  %842 = sub nsw i32 2129859010, %841
  %843 = bitcast i32 %842 to float
  %844 = fmul fast float %843, %839
  %845 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  br label %846

; <label>:846                                     ; preds = %800, %795
  %847 = phi float [ %845, %800 ], [ %658, %795 ]
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 128
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %868, label %852

; <label>:852                                     ; preds = %846
  %853 = add i32 %52, 440
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = add i32 %855, 0
  %857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %857, %dx.types.Handle %105, float %796, float %797, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 524288
  %863 = icmp ne i32 %862, 0
  %864 = fcmp fast ogt float %859, 0x3FE0101020000000
  %865 = select i1 %864, float 1.000000e+00, float 0.000000e+00
  %866 = select i1 %863, float %865, float %859
  %867 = fmul fast float %866, %847
  br label %868

; <label>:868                                     ; preds = %852, %846
  %869 = phi float [ %867, %852 ], [ %847, %846 ]
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 16
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %1072, label %874

; <label>:874                                     ; preds = %868
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %52, 392
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = add i32 %879, 0
  %881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %882 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %881, %dx.types.Handle %104, float %796, float %797, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = extractvalue %dx.types.ResRet.f32 %882, 3
  %887 = and i32 %876, 255
  %888 = uitofp i32 %887 to float
  %889 = lshr i32 %876, 8
  %890 = and i32 %889, 255
  %891 = uitofp i32 %890 to float
  %892 = fmul fast float %886, %888
  %893 = fadd fast float %892, %891
  %894 = fmul fast float %893, 0x3F70101000000000
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 512
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %907, label %899

; <label>:899                                     ; preds = %874
  %900 = add i32 %52, 472
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = add i32 %902, 0
  %904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %904, %dx.types.Handle %105, float %796, float %797, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  br label %907

; <label>:907                                     ; preds = %899, %874
  %908 = phi float [ %906, %899 ], [ 1.000000e+00, %874 ]
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 33554432
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %1019, label %913

; <label>:913                                     ; preds = %907
  %914 = add i32 %52, 224
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = and i32 %916, 65535
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = lshr i32 %916, 16
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = add i32 %52, 228
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 65535
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = lshr i32 %927, 24
  %929 = uitofp i32 %928 to float
  %930 = fmul fast float %929, 0x3F70101020000000
  %931 = and i32 %927, 255
  %932 = uitofp i32 %931 to float
  %933 = fmul fast float %932, 0x3F70101020000000
  %934 = lshr i32 %927, 8
  %935 = and i32 %934, 255
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %936, 0x3F70101020000000
  %938 = lshr i32 %927, 16
  %939 = and i32 %938, 255
  %940 = uitofp i32 %939 to float
  %941 = fmul fast float %940, 0x3F70101020000000
  %942 = add i32 %52, 220
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = lshr i32 %944, 24
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F70101020000000
  %948 = and i32 %944, 255
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = lshr i32 %944, 8
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %944, 16
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = bitcast float %883 to i32
  %960 = ashr i32 %959, 1
  %961 = sub nsw i32 1597463174, %960
  %962 = bitcast i32 %961 to float
  %963 = fmul fast float %883, 5.000000e-01
  %964 = fmul fast float %962, %962
  %965 = fmul fast float %964, %963
  %966 = fsub fast float 1.500000e+00, %965
  %967 = fmul fast float %962, %883
  %968 = fmul fast float %967, %966
  %969 = bitcast float %884 to i32
  %970 = ashr i32 %969, 1
  %971 = sub nsw i32 1597463174, %970
  %972 = bitcast i32 %971 to float
  %973 = fmul fast float %884, 5.000000e-01
  %974 = fmul fast float %972, %972
  %975 = fmul fast float %974, %973
  %976 = fsub fast float 1.500000e+00, %975
  %977 = fmul fast float %972, %884
  %978 = fmul fast float %977, %976
  %979 = bitcast float %885 to i32
  %980 = ashr i32 %979, 1
  %981 = sub nsw i32 1597463174, %980
  %982 = bitcast i32 %981 to float
  %983 = fmul fast float %885, 5.000000e-01
  %984 = fmul fast float %982, %982
  %985 = fmul fast float %984, %983
  %986 = fsub fast float 1.500000e+00, %985
  %987 = fmul fast float %982, %885
  %988 = fmul fast float %987, %986
  %989 = fsub fast float %968, %950
  %990 = fsub fast float %978, %954
  %991 = fsub fast float %988, %958
  %992 = fmul fast float %989, %918
  %993 = fmul fast float %990, %920
  %994 = fmul fast float %991, %925
  %995 = fadd fast float %992, %933
  %996 = fadd fast float %993, %937
  %997 = fadd fast float %994, %941
  %998 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %999 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %1000 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %1001 = fmul fast float %998, %998
  %1002 = fmul fast float %999, %999
  %1003 = fmul fast float %1000, %1000
  %1004 = fsub fast float %1001, %883
  %1005 = fsub fast float %1002, %884
  %1006 = fsub fast float %1003, %885
  %1007 = fmul fast float %1004, %908
  %1008 = fmul fast float %1005, %908
  %1009 = fmul fast float %1006, %908
  %1010 = fadd fast float %1007, %883
  %1011 = fadd fast float %1008, %884
  %1012 = fadd fast float %1009, %885
  %1013 = fadd fast float %930, %894
  %1014 = fsub fast float %1013, %947
  %1015 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1016 = fsub fast float %1015, %894
  %1017 = fmul fast float %1016, %908
  %1018 = fadd fast float %1017, %894
  br label %1072

; <label>:1019                                    ; preds = %907
  %1020 = and i32 %910, 134217728
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1056, label %1022

; <label>:1022                                    ; preds = %1019
  %1023 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %1024 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %1025 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1026 = fadd fast float %1023, -5.000000e-01
  %1027 = fadd fast float %1024, -5.000000e-01
  %1028 = fadd fast float %1025, -5.000000e-01
  %1029 = fmul fast float %1026, %908
  %1030 = fmul fast float %1027, %908
  %1031 = fmul fast float %1028, %908
  %1032 = fadd fast float %1029, 5.000000e-01
  %1033 = fadd fast float %1030, 5.000000e-01
  %1034 = fadd fast float %1031, 5.000000e-01
  %1035 = call float @dx.op.unary.f32(i32 24, float %883)  ; Sqrt(value)
  %1036 = call float @dx.op.unary.f32(i32 24, float %884)  ; Sqrt(value)
  %1037 = call float @dx.op.unary.f32(i32 24, float %885)  ; Sqrt(value)
  %1038 = fmul fast float %1032, 2.000000e+00
  %1039 = fsub fast float 1.000000e+00, %1038
  %1040 = fmul fast float %1039, %1035
  %1041 = fadd fast float %1040, %1038
  %1042 = fmul fast float %1041, %1035
  %1043 = fmul fast float %1033, 2.000000e+00
  %1044 = fsub fast float 1.000000e+00, %1043
  %1045 = fmul fast float %1044, %1036
  %1046 = fadd fast float %1045, %1043
  %1047 = fmul fast float %1046, %1036
  %1048 = fmul fast float %1034, 2.000000e+00
  %1049 = fsub fast float 1.000000e+00, %1048
  %1050 = fmul fast float %1049, %1037
  %1051 = fadd fast float %1050, %1048
  %1052 = fmul fast float %1051, %1037
  %1053 = fmul fast float %1042, %1042
  %1054 = fmul fast float %1047, %1047
  %1055 = fmul fast float %1052, %1052
  br label %1072

; <label>:1056                                    ; preds = %1019
  %1057 = fmul fast float %279, %279
  %1058 = fmul fast float %283, %283
  %1059 = fmul fast float %287, %287
  %1060 = fadd fast float %1057, -1.000000e+00
  %1061 = fadd fast float %1058, -1.000000e+00
  %1062 = fadd fast float %1059, -1.000000e+00
  %1063 = fmul fast float %908, %1060
  %1064 = fmul fast float %908, %1061
  %1065 = fmul fast float %908, %1062
  %1066 = fadd fast float %1063, 1.000000e+00
  %1067 = fadd fast float %1064, 1.000000e+00
  %1068 = fadd fast float %1065, 1.000000e+00
  %1069 = fmul fast float %1066, %883
  %1070 = fmul fast float %1067, %884
  %1071 = fmul fast float %1068, %885
  br label %1072

; <label>:1072                                    ; preds = %1056, %1022, %913, %868
  %1073 = phi float [ %1018, %913 ], [ %894, %1022 ], [ %894, %1056 ], [ 0x3FA23C0BE0000000, %868 ]
  %1074 = phi float [ %1010, %913 ], [ %1053, %1022 ], [ %1069, %1056 ], [ 1.000000e+00, %868 ]
  %1075 = phi float [ %1011, %913 ], [ %1054, %1022 ], [ %1070, %1056 ], [ 1.000000e+00, %868 ]
  %1076 = phi float [ %1012, %913 ], [ %1055, %1022 ], [ %1071, %1056 ], [ 1.000000e+00, %868 ]
  %1077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.i32 %1077, 1
  %1079 = and i32 %1078, 1
  %1080 = icmp ne i32 %1079, 0
  %1081 = add i32 %52, 356
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 32
  %1085 = icmp ne i32 %1084, 0
  %1086 = and i1 %1080, %1085
  %1087 = select i1 %1086, float 1.000000e+00, float %1074
  %1088 = select i1 %1086, float 0x3FD3333340000000, float %1075
  %1089 = select i1 %1086, float 0x3FD3333340000000, float %1076
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 32
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1166, label %1094

; <label>:1094                                    ; preds = %1072
  %1095 = add i32 %52, 92
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = add i32 %52, 408
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = add i32 %1100, 0
  %1102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1102, %dx.types.Handle %104, float %796, float %797, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.ResRet.f32 %1103, 2
  %1107 = extractvalue %dx.types.ResRet.f32 %1103, 3
  %1108 = and i32 %1097, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = lshr i32 %1097, 8
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = lshr i32 %1097, 16
  %1114 = and i32 %1113, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = fmul fast float %1115, 0x3F70101000000000
  %1117 = fmul fast float %1104, %1109
  %1118 = fadd fast float %1117, %1112
  %1119 = fmul fast float %1118, 0x3F70101000000000
  %1120 = fadd fast float %1105, -5.000000e-01
  %1121 = fadd fast float %1107, -5.000000e-01
  %1122 = fmul fast float %1120, %1116
  %1123 = fmul fast float %1121, %1116
  %1124 = fadd fast float %1122, 5.000000e-01
  %1125 = fadd fast float %1123, 5.000000e-01
  %1126 = fmul fast float %1124, 2.000000e+00
  %1127 = fadd fast float %1126, -1.000000e+00
  %1128 = fmul fast float %1125, 2.000000e+00
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = fadd fast float %1127, %1129
  %1131 = fmul fast float %1130, 5.000000e-01
  %1132 = fsub fast float %1127, %1129
  %1133 = fmul fast float %1132, 5.000000e-01
  %1134 = call float @dx.op.unary.f32(i32 6, float %1131)  ; FAbs(value)
  %1135 = fsub fast float 1.000000e+00, %1134
  %1136 = call float @dx.op.unary.f32(i32 6, float %1133)  ; FAbs(value)
  %1137 = fsub fast float %1135, %1136
  %1138 = call float @dx.op.dot3.f32(i32 55, float %1131, float %1133, float %1137, float %1131, float %1133, float %1137)  ; Dot3(ax,ay,az,bx,by,bz)
  %1139 = call float @dx.op.unary.f32(i32 25, float %1138)  ; Rsqrt(value)
  %1140 = fmul fast float %1131, %1139
  %1141 = fmul fast float %1133, %1139
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 67108864
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1162, label %1146

; <label>:1146                                    ; preds = %1094
  %1147 = add i32 %52, 280
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = and i32 %1149, 65535
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 65535
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = lshr i32 %1149, 16
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fsub fast float %1119, %1157
  %1159 = fmul fast float %1158, %1151
  %1160 = fadd fast float %1159, %1155
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  br label %1162

; <label>:1162                                    ; preds = %1146, %1094
  %1163 = phi float [ %1161, %1146 ], [ %1119, %1094 ]
  %1164 = call float @dx.op.dot2.f32(i32 54, float %1140, float %1141, float %700, float %701)  ; Dot2(ax,ay,bx,by)
  %1165 = call float @dx.op.dot2.f32(i32 54, float %1140, float %1141, float %702, float %703)  ; Dot2(ax,ay,bx,by)
  br label %1166

; <label>:1166                                    ; preds = %1162, %1072
  %1167 = phi float [ %1163, %1162 ], [ 0x3FD6666660000000, %1072 ]
  %1168 = phi float [ %1164, %1162 ], [ 0.000000e+00, %1072 ]
  %1169 = phi float [ %1165, %1162 ], [ 0.000000e+00, %1072 ]
  %1170 = phi float [ %1106, %1162 ], [ 1.000000e+00, %1072 ]
  %1171 = add i32 %52, 160
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = lshr i32 %1173, 22
  %1175 = shl nuw nsw i32 %1174, 5
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 64
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1214, label %1181

; <label>:1181                                    ; preds = %1166
  %1182 = add i32 %52, 424
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1184, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = and i32 %1188, 131072
  %1190 = icmp eq i32 %1189, 0
  %1191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1186, %dx.types.Handle %104, float %796, float %797, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.ResRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.ResRet.f32 %1191, 2
  %1195 = fmul fast float %1192, %267
  %1196 = fmul fast float %1193, %270
  %1197 = fmul fast float %1194, %273
  br i1 %1190, label %1204, label %1198

; <label>:1198                                    ; preds = %1181
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = fmul fast float %1200, %1195
  %1202 = fmul fast float %1200, %1196
  %1203 = fmul fast float %1200, %1197
  br label %1204

; <label>:1204                                    ; preds = %1198, %1181
  %1205 = phi float [ %1201, %1198 ], [ %1195, %1181 ]
  %1206 = phi float [ %1202, %1198 ], [ %1196, %1181 ]
  %1207 = phi float [ %1203, %1198 ], [ %1197, %1181 ]
  %1208 = fmul fast float %1205, %1176
  %1209 = select i1 %250, float %1208, float %1205
  %1210 = call float @dx.op.dot3.f32(i32 55, float %1209, float %1206, float %1207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1211 = select i1 %250, float 0.000000e+00, float %1205
  %1212 = select i1 %250, float %1210, float %1206
  %1213 = select i1 %250, float 0.000000e+00, float %1207
  br label %1214

; <label>:1214                                    ; preds = %1204, %1166
  %1215 = phi float [ %1211, %1204 ], [ 0.000000e+00, %1166 ]
  %1216 = phi float [ %1212, %1204 ], [ 0.000000e+00, %1166 ]
  %1217 = phi float [ %1213, %1204 ], [ 0.000000e+00, %1166 ]
  %1218 = add i32 %52, 96
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = lshr i32 %1220, 8
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1088, float %1089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = fmul fast float %1225, %1226
  %1228 = fadd fast float %1227, %1222
  %1229 = fmul fast float %1228, 0x3F70101020000000
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  br label %1231

; <label>:1231                                    ; preds = %1214, %682
  %1232 = phi float [ 0.000000e+00, %682 ], [ %1168, %1214 ]
  %1233 = phi float [ 0.000000e+00, %682 ], [ %1169, %1214 ]
  %1234 = phi float [ 0.000000e+00, %682 ], [ %1087, %1214 ]
  %1235 = phi float [ 0.000000e+00, %682 ], [ %1088, %1214 ]
  %1236 = phi float [ 0.000000e+00, %682 ], [ %1089, %1214 ]
  %1237 = phi float [ 0.000000e+00, %682 ], [ %1215, %1214 ]
  %1238 = phi float [ 0.000000e+00, %682 ], [ %1216, %1214 ]
  %1239 = phi float [ 0.000000e+00, %682 ], [ %1217, %1214 ]
  %1240 = phi float [ 0.000000e+00, %682 ], [ %1073, %1214 ]
  %1241 = phi float [ 0.000000e+00, %682 ], [ %869, %1214 ]
  %1242 = phi float [ 0.000000e+00, %682 ], [ %1167, %1214 ]
  %1243 = phi float [ 0.000000e+00, %682 ], [ %1170, %1214 ]
  %1244 = phi float [ 0.000000e+00, %682 ], [ %1230, %1214 ]
  br i1 %630, label %1971, label %1245

; <label>:1245                                    ; preds = %1231
  %1246 = icmp ult i32 %688, 2
  %1247 = add i32 %52, 40
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %52, 44
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = or i32 %1252, %1249
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1971, label %1255

; <label>:1255                                    ; preds = %1245
  %1256 = and i32 %1249, 262144
  %1257 = icmp ne i32 %1256, 0
  %1258 = select i1 %1257, float %58, float 1.000000e+00
  %1259 = select i1 %1257, float %59, float 0.000000e+00
  %1260 = select i1 %1257, float %60, float 0.000000e+00
  %1261 = select i1 %1257, float %61, float 1.000000e+00
  %1262 = select i1 %1257, float %62, float %90
  %1263 = select i1 %1257, float %63, float %91
  %1264 = add i32 %52, 300
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = lshr i32 %1266, 16
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = fmul fast float %1268, 0x3F50624DE0000000
  %1270 = add i32 %52, 104
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = lshr i32 %1272, 16
  %1274 = and i32 %1273, 255
  %1275 = lshr i32 %1272, 24
  %1276 = add i32 %52, 308
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 65535
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = lshr i32 %1278, 16
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = add i32 %52, 48
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = lshr i32 %1285, 22
  %1287 = shl nuw nsw i32 %1286, 5
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = shl i32 %1285, 4
  %1290 = and i32 %1289, 32752
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = lshr i32 %1285, 7
  %1293 = and i32 %1292, 32752
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1297 = fmul fast float %1296, 1.000000e+03
  %1298 = fmul fast float %1297, %409
  %1299 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1300 = fadd fast float %1299, %397
  %1301 = fmul fast float %1297, %411
  %1302 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1303 = fadd fast float %1302, %398
  %1304 = fmul fast float %1269, %1297
  %1305 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1306 = fmul fast float %1305, 0x401921FB60000000
  %1307 = fadd fast float %1306, %1288
  %1308 = call float @dx.op.unary.f32(i32 13, float %1307)  ; Sin(value)
  %1309 = call float @dx.op.unary.f32(i32 12, float %1307)  ; Cos(value)
  %1310 = fsub fast float -0.000000e+00, %1308
  %1311 = fadd fast float %1262, -5.000000e-01
  %1312 = fadd fast float %1263, -5.000000e-01
  %1313 = fmul fast float %1280, %1311
  %1314 = fmul fast float %1282, %1312
  %1315 = fadd fast float %1313, 5.000000e-01
  %1316 = fadd fast float %1314, 5.000000e-01
  %1317 = fmul fast float %1291, %1315
  %1318 = fmul fast float %1294, %1316
  %1319 = fmul fast float %1309, %1317
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1310, float %1318, float %1319)  ; FMad(a,b,c)
  %1321 = fmul fast float %1308, %1317
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1309, float %1318, float %1321)  ; FMad(a,b,c)
  %1323 = fadd fast float %1300, %1320
  %1324 = fadd fast float %1303, %1322
  %1325 = icmp ugt i32 %1274, 1
  %1326 = icmp ugt i32 %1272, 33554431
  %1327 = or i1 %1326, %1325
  br i1 %1327, label %1328, label %1353

; <label>:1328                                    ; preds = %1255
  %1329 = add i32 %52, 244
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = lshr i32 %1331, 16
  %1333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1332)  ; LegacyF16ToF32(value)
  %1334 = fmul fast float %1296, %1333
  %1335 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1336 = mul nuw nsw i32 %1274, %1275
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1335, %1337
  %1339 = call float @dx.op.unary.f32(i32 27, float %1338)  ; Round_ni(value)
  %1340 = fptoui float %1339 to i32
  %1341 = urem i32 %1340, %1274
  %1342 = udiv i32 %1340, %1275
  %1343 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1344 = call float @dx.op.unary.f32(i32 22, float %1324)  ; Frc(value)
  %1345 = uitofp i32 %1341 to float
  %1346 = uitofp i32 %1342 to float
  %1347 = fadd fast float %1343, %1345
  %1348 = fadd fast float %1344, %1346
  %1349 = uitofp i32 %1274 to float
  %1350 = uitofp i32 %1275 to float
  %1351 = fdiv fast float %1347, %1349
  %1352 = fdiv fast float %1348, %1350
  br label %1353

; <label>:1353                                    ; preds = %1328, %1255
  %1354 = phi float [ %1351, %1328 ], [ %1323, %1255 ]
  %1355 = phi float [ %1352, %1328 ], [ %1324, %1255 ]
  %1356 = and i32 %1249, 256
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1404, label %1358

; <label>:1358                                    ; preds = %1353
  %1359 = add i32 %52, 460
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = add i32 %1361, 0
  %1363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1363, %dx.types.Handle %105, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = add i32 %52, 116
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = shl i32 %1368, 4
  %1370 = and i32 %1369, 32752
  %1371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1370)  ; LegacyF16ToF32(value)
  %1372 = lshr i32 %1368, 7
  %1373 = and i32 %1372, 32752
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = fsub fast float 1.000000e+00, %685
  %1376 = call float @dx.op.binary.f32(i32 35, float %1375, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1377 = bitcast float %685 to i32
  %1378 = sitofp i32 %1377 to float
  %1379 = fadd fast float %1378, 0xC1CFBF8940000000
  %1380 = fmul fast float %1374, %1379
  %1381 = fadd fast float %1380, 0x41CFBF8940000000
  %1382 = fptosi float %1381 to i32
  %1383 = bitcast i32 %1382 to float
  %1384 = bitcast float %1376 to i32
  %1385 = sitofp i32 %1384 to float
  %1386 = fadd fast float %1385, 0xC1CFBF8940000000
  %1387 = fmul fast float %1386, %1374
  %1388 = fadd fast float %1387, 0x41CFBF8940000000
  %1389 = fptosi float %1388 to i32
  %1390 = bitcast i32 %1389 to float
  %1391 = fmul fast float %1383, %1371
  %1392 = fmul fast float %1390, %1371
  %1393 = fsub fast float %1376, %1391
  %1394 = fadd fast float %1392, %1376
  %1395 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1396 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1397 = fsub fast float %1365, %1395
  %1398 = fsub fast float %1396, %1395
  %1399 = bitcast float %1398 to i32
  %1400 = sub nsw i32 2129859010, %1399
  %1401 = bitcast i32 %1400 to float
  %1402 = fmul fast float %1401, %1397
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  br label %1404

; <label>:1404                                    ; preds = %1358, %1353
  %1405 = phi float [ %1403, %1358 ], [ %685, %1353 ]
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = and i32 %1407, 128
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1426, label %1410

; <label>:1410                                    ; preds = %1404
  %1411 = add i32 %52, 444
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = add i32 %1413, 0
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1415, %dx.types.Handle %105, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 524288
  %1421 = icmp ne i32 %1420, 0
  %1422 = fcmp fast ogt float %1417, 0x3FE0101020000000
  %1423 = select i1 %1422, float 1.000000e+00, float 0.000000e+00
  %1424 = select i1 %1421, float %1423, float %1417
  %1425 = fmul fast float %1424, %1405
  br label %1426

; <label>:1426                                    ; preds = %1410, %1404
  %1427 = phi float [ %1425, %1410 ], [ %1405, %1404 ]
  %1428 = fcmp fast ult float %1427, 0x3F70101020000000
  br i1 %1428, label %1971, label %1429

; <label>:1429                                    ; preds = %1426
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 16
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1632, label %1434

; <label>:1434                                    ; preds = %1429
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %52, 396
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = add i32 %1439, 0
  %1441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1442 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1441, %dx.types.Handle %104, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = extractvalue %dx.types.ResRet.f32 %1442, 3
  %1447 = and i32 %1436, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = lshr i32 %1436, 8
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1446, %1448
  %1453 = fadd fast float %1452, %1451
  %1454 = fmul fast float %1453, 0x3F70101000000000
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 512
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1467, label %1459

; <label>:1459                                    ; preds = %1434
  %1460 = add i32 %52, 476
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %1462, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1464, %dx.types.Handle %105, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  br label %1467

; <label>:1467                                    ; preds = %1459, %1434
  %1468 = phi float [ %1466, %1459 ], [ 1.000000e+00, %1434 ]
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 33554432
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1579, label %1473

; <label>:1473                                    ; preds = %1467
  %1474 = add i32 %52, 240
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 65535
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = lshr i32 %1476, 16
  %1480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1479)  ; LegacyF16ToF32(value)
  %1481 = add i32 %52, 244
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 65535
  %1485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1484)  ; LegacyF16ToF32(value)
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = lshr i32 %1487, 24
  %1489 = uitofp i32 %1488 to float
  %1490 = fmul fast float %1489, 0x3F70101020000000
  %1491 = and i32 %1487, 255
  %1492 = uitofp i32 %1491 to float
  %1493 = fmul fast float %1492, 0x3F70101020000000
  %1494 = lshr i32 %1487, 8
  %1495 = and i32 %1494, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101020000000
  %1498 = lshr i32 %1487, 16
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = fmul fast float %1500, 0x3F70101020000000
  %1502 = add i32 %52, 236
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = lshr i32 %1504, 24
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = and i32 %1504, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101020000000
  %1511 = lshr i32 %1504, 8
  %1512 = and i32 %1511, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1504, 16
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = bitcast float %1443 to i32
  %1520 = ashr i32 %1519, 1
  %1521 = sub nsw i32 1597463174, %1520
  %1522 = bitcast i32 %1521 to float
  %1523 = fmul fast float %1443, 5.000000e-01
  %1524 = fmul fast float %1522, %1522
  %1525 = fmul fast float %1524, %1523
  %1526 = fsub fast float 1.500000e+00, %1525
  %1527 = fmul fast float %1522, %1443
  %1528 = fmul fast float %1527, %1526
  %1529 = bitcast float %1444 to i32
  %1530 = ashr i32 %1529, 1
  %1531 = sub nsw i32 1597463174, %1530
  %1532 = bitcast i32 %1531 to float
  %1533 = fmul fast float %1444, 5.000000e-01
  %1534 = fmul fast float %1532, %1532
  %1535 = fmul fast float %1534, %1533
  %1536 = fsub fast float 1.500000e+00, %1535
  %1537 = fmul fast float %1532, %1444
  %1538 = fmul fast float %1537, %1536
  %1539 = bitcast float %1445 to i32
  %1540 = ashr i32 %1539, 1
  %1541 = sub nsw i32 1597463174, %1540
  %1542 = bitcast i32 %1541 to float
  %1543 = fmul fast float %1445, 5.000000e-01
  %1544 = fmul fast float %1542, %1542
  %1545 = fmul fast float %1544, %1543
  %1546 = fsub fast float 1.500000e+00, %1545
  %1547 = fmul fast float %1542, %1445
  %1548 = fmul fast float %1547, %1546
  %1549 = fsub fast float %1528, %1510
  %1550 = fsub fast float %1538, %1514
  %1551 = fsub fast float %1548, %1518
  %1552 = fmul fast float %1549, %1478
  %1553 = fmul fast float %1550, %1480
  %1554 = fmul fast float %1551, %1485
  %1555 = fadd fast float %1552, %1493
  %1556 = fadd fast float %1553, %1497
  %1557 = fadd fast float %1554, %1501
  %1558 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1559 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1561 = fmul fast float %1558, %1558
  %1562 = fmul fast float %1559, %1559
  %1563 = fmul fast float %1560, %1560
  %1564 = fsub fast float %1561, %1443
  %1565 = fsub fast float %1562, %1444
  %1566 = fsub fast float %1563, %1445
  %1567 = fmul fast float %1564, %1468
  %1568 = fmul fast float %1565, %1468
  %1569 = fmul fast float %1566, %1468
  %1570 = fadd fast float %1567, %1443
  %1571 = fadd fast float %1568, %1444
  %1572 = fadd fast float %1569, %1445
  %1573 = fadd fast float %1490, %1454
  %1574 = fsub fast float %1573, %1507
  %1575 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1576 = fsub fast float %1575, %1454
  %1577 = fmul fast float %1576, %1468
  %1578 = fadd fast float %1577, %1454
  br label %1632

; <label>:1579                                    ; preds = %1467
  %1580 = and i32 %1470, 134217728
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1616, label %1582

; <label>:1582                                    ; preds = %1579
  %1583 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %1584 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %1585 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %1586 = fadd fast float %1583, -5.000000e-01
  %1587 = fadd fast float %1584, -5.000000e-01
  %1588 = fadd fast float %1585, -5.000000e-01
  %1589 = fmul fast float %1586, %1468
  %1590 = fmul fast float %1587, %1468
  %1591 = fmul fast float %1588, %1468
  %1592 = fadd fast float %1589, 5.000000e-01
  %1593 = fadd fast float %1590, 5.000000e-01
  %1594 = fadd fast float %1591, 5.000000e-01
  %1595 = call float @dx.op.unary.f32(i32 24, float %1443)  ; Sqrt(value)
  %1596 = call float @dx.op.unary.f32(i32 24, float %1444)  ; Sqrt(value)
  %1597 = call float @dx.op.unary.f32(i32 24, float %1445)  ; Sqrt(value)
  %1598 = fmul fast float %1592, 2.000000e+00
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = fmul fast float %1599, %1595
  %1601 = fadd fast float %1600, %1598
  %1602 = fmul fast float %1601, %1595
  %1603 = fmul fast float %1593, 2.000000e+00
  %1604 = fsub fast float 1.000000e+00, %1603
  %1605 = fmul fast float %1604, %1596
  %1606 = fadd fast float %1605, %1603
  %1607 = fmul fast float %1606, %1596
  %1608 = fmul fast float %1594, 2.000000e+00
  %1609 = fsub fast float 1.000000e+00, %1608
  %1610 = fmul fast float %1609, %1597
  %1611 = fadd fast float %1610, %1608
  %1612 = fmul fast float %1611, %1597
  %1613 = fmul fast float %1602, %1602
  %1614 = fmul fast float %1607, %1607
  %1615 = fmul fast float %1612, %1612
  br label %1632

; <label>:1616                                    ; preds = %1579
  %1617 = fmul fast float %385, %385
  %1618 = fmul fast float %386, %386
  %1619 = fmul fast float %387, %387
  %1620 = fadd fast float %1617, -1.000000e+00
  %1621 = fadd fast float %1618, -1.000000e+00
  %1622 = fadd fast float %1619, -1.000000e+00
  %1623 = fmul fast float %1468, %1620
  %1624 = fmul fast float %1468, %1621
  %1625 = fmul fast float %1468, %1622
  %1626 = fadd fast float %1623, 1.000000e+00
  %1627 = fadd fast float %1624, 1.000000e+00
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fmul fast float %1626, %1443
  %1630 = fmul fast float %1627, %1444
  %1631 = fmul fast float %1628, %1445
  br label %1632

; <label>:1632                                    ; preds = %1616, %1582, %1473, %1429
  %1633 = phi float [ %1578, %1473 ], [ %1454, %1582 ], [ %1454, %1616 ], [ 0x3FA23C0BE0000000, %1429 ]
  %1634 = phi float [ %1570, %1473 ], [ %1613, %1582 ], [ %1629, %1616 ], [ 1.000000e+00, %1429 ]
  %1635 = phi float [ %1571, %1473 ], [ %1614, %1582 ], [ %1630, %1616 ], [ 1.000000e+00, %1429 ]
  %1636 = phi float [ %1572, %1473 ], [ %1615, %1582 ], [ %1631, %1616 ], [ 1.000000e+00, %1429 ]
  %1637 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.i32 %1637, 1
  %1639 = and i32 %1638, 1
  %1640 = icmp ne i32 %1639, 0
  %1641 = add i32 %52, 356
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 32
  %1645 = icmp ne i32 %1644, 0
  %1646 = and i1 %1640, %1645
  %1647 = select i1 %1646, float 1.000000e+00, float %1634
  %1648 = select i1 %1646, float 0x3FD3333340000000, float %1635
  %1649 = select i1 %1646, float 0x3FD3333340000000, float %1636
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 32
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1726, label %1654

; <label>:1654                                    ; preds = %1632
  %1655 = add i32 %52, 108
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = add i32 %52, 412
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1658, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = add i32 %1660, 0
  %1662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1662, %dx.types.Handle %104, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  %1667 = extractvalue %dx.types.ResRet.f32 %1663, 3
  %1668 = and i32 %1657, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = lshr i32 %1657, 8
  %1671 = and i32 %1670, 255
  %1672 = uitofp i32 %1671 to float
  %1673 = lshr i32 %1657, 16
  %1674 = and i32 %1673, 255
  %1675 = uitofp i32 %1674 to float
  %1676 = fmul fast float %1675, 0x3F70101000000000
  %1677 = fmul fast float %1664, %1669
  %1678 = fadd fast float %1677, %1672
  %1679 = fmul fast float %1678, 0x3F70101000000000
  %1680 = fadd fast float %1665, -5.000000e-01
  %1681 = fadd fast float %1667, -5.000000e-01
  %1682 = fmul fast float %1680, %1676
  %1683 = fmul fast float %1681, %1676
  %1684 = fadd fast float %1682, 5.000000e-01
  %1685 = fadd fast float %1683, 5.000000e-01
  %1686 = fmul fast float %1684, 2.000000e+00
  %1687 = fadd fast float %1686, -1.000000e+00
  %1688 = fmul fast float %1685, 2.000000e+00
  %1689 = fadd fast float %1688, -1.000000e+00
  %1690 = fadd fast float %1687, %1689
  %1691 = fmul fast float %1690, 5.000000e-01
  %1692 = fsub fast float %1687, %1689
  %1693 = fmul fast float %1692, 5.000000e-01
  %1694 = call float @dx.op.unary.f32(i32 6, float %1691)  ; FAbs(value)
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = call float @dx.op.unary.f32(i32 6, float %1693)  ; FAbs(value)
  %1697 = fsub fast float %1695, %1696
  %1698 = call float @dx.op.dot3.f32(i32 55, float %1691, float %1693, float %1697, float %1691, float %1693, float %1697)  ; Dot3(ax,ay,az,bx,by,bz)
  %1699 = call float @dx.op.unary.f32(i32 25, float %1698)  ; Rsqrt(value)
  %1700 = fmul fast float %1691, %1699
  %1701 = fmul fast float %1693, %1699
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = and i32 %1703, 67108864
  %1705 = icmp eq i32 %1704, 0
  br i1 %1705, label %1722, label %1706

; <label>:1706                                    ; preds = %1654
  %1707 = add i32 %52, 296
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 65535
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 65535
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = lshr i32 %1709, 16
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = fsub fast float %1679, %1717
  %1719 = fmul fast float %1718, %1711
  %1720 = fadd fast float %1719, %1715
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  br label %1722

; <label>:1722                                    ; preds = %1706, %1654
  %1723 = phi float [ %1721, %1706 ], [ %1679, %1654 ]
  %1724 = call float @dx.op.dot2.f32(i32 54, float %1700, float %1701, float %1258, float %1259)  ; Dot2(ax,ay,bx,by)
  %1725 = call float @dx.op.dot2.f32(i32 54, float %1700, float %1701, float %1260, float %1261)  ; Dot2(ax,ay,bx,by)
  br label %1726

; <label>:1726                                    ; preds = %1722, %1632
  %1727 = phi float [ %1723, %1722 ], [ 0x3FD6666660000000, %1632 ]
  %1728 = phi float [ %1724, %1722 ], [ 0.000000e+00, %1632 ]
  %1729 = phi float [ %1725, %1722 ], [ 0.000000e+00, %1632 ]
  %1730 = phi float [ %1666, %1722 ], [ 1.000000e+00, %1632 ]
  %1731 = add i32 %52, 176
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = lshr i32 %1733, 22
  %1735 = shl nuw nsw i32 %1734, 5
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 64
  %1740 = icmp eq i32 %1739, 0
  br i1 %1740, label %1774, label %1741

; <label>:1741                                    ; preds = %1726
  %1742 = add i32 %52, 428
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = add i32 %1744, 0
  %1746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = and i32 %1748, 131072
  %1750 = icmp eq i32 %1749, 0
  %1751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1746, %dx.types.Handle %104, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.ResRet.f32 %1751, 2
  %1755 = fmul fast float %368, %1752
  %1756 = fmul fast float %369, %1753
  %1757 = fmul fast float %370, %1754
  br i1 %1750, label %1764, label %1758

; <label>:1758                                    ; preds = %1741
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 0
  %1761 = fmul fast float %1760, %1755
  %1762 = fmul fast float %1760, %1756
  %1763 = fmul fast float %1760, %1757
  br label %1764

; <label>:1764                                    ; preds = %1758, %1741
  %1765 = phi float [ %1761, %1758 ], [ %1755, %1741 ]
  %1766 = phi float [ %1762, %1758 ], [ %1756, %1741 ]
  %1767 = phi float [ %1763, %1758 ], [ %1757, %1741 ]
  %1768 = fmul fast float %1765, %1736
  %1769 = select i1 %250, float %1768, float %1765
  %1770 = call float @dx.op.dot3.f32(i32 55, float %1769, float %1766, float %1767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1771 = select i1 %250, float 0.000000e+00, float %1765
  %1772 = select i1 %250, float %1770, float %1766
  %1773 = select i1 %250, float 0.000000e+00, float %1767
  br label %1774

; <label>:1774                                    ; preds = %1764, %1726
  %1775 = phi float [ %1771, %1764 ], [ 0.000000e+00, %1726 ]
  %1776 = phi float [ %1772, %1764 ], [ 0.000000e+00, %1726 ]
  %1777 = phi float [ %1773, %1764 ], [ 0.000000e+00, %1726 ]
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = add i32 %52, 112
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = and i32 %1782, 255
  %1784 = uitofp i32 %1783 to float
  %1785 = lshr i32 %1782, 8
  %1786 = and i32 %1785, 255
  %1787 = uitofp i32 %1786 to float
  %1788 = call float @dx.op.dot3.f32(i32 55, float %1647, float %1648, float %1649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1789 = fmul fast float %1787, %1788
  %1790 = fadd fast float %1789, %1784
  %1791 = fmul fast float %1790, 0x3F70101020000000
  %1792 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  br i1 %1246, label %1793, label %1801

; <label>:1793                                    ; preds = %1774
  %1794 = fsub fast float 1.000000e+00, %1427
  %1795 = fmul fast float %1794, %1234
  %1796 = fmul fast float %1794, %1235
  %1797 = fmul fast float %1794, %1236
  %1798 = fmul fast float %1794, %1237
  %1799 = fmul fast float %1794, %1238
  %1800 = fmul fast float %1794, %1239
  br label %1801

; <label>:1801                                    ; preds = %1793, %1774
  %1802 = phi float [ %1795, %1793 ], [ %1234, %1774 ]
  %1803 = phi float [ %1796, %1793 ], [ %1235, %1774 ]
  %1804 = phi float [ %1797, %1793 ], [ %1236, %1774 ]
  %1805 = phi float [ %1798, %1793 ], [ %1237, %1774 ]
  %1806 = phi float [ %1799, %1793 ], [ %1238, %1774 ]
  %1807 = phi float [ %1800, %1793 ], [ %1239, %1774 ]
  %1808 = and i32 %1779, 3
  %1809 = icmp eq i32 %1808, 3
  br i1 %1809, label %1888, label %1810

; <label>:1810                                    ; preds = %1801
  %1811 = and i32 %1779, 16
  %1812 = icmp ne i32 %1811, 0
  %1813 = select i1 %1812, float %1427, float 0.000000e+00
  %1814 = icmp eq i32 %1808, 0
  br i1 %1814, label %1815, label %1843

; <label>:1815                                    ; preds = %1810
  %1816 = and i32 %1779, 64
  %1817 = icmp ne i32 %1816, 0
  %1818 = select i1 %1817, float %1427, float 0.000000e+00
  %1819 = fsub fast float %1647, %1802
  %1820 = fsub fast float %1648, %1803
  %1821 = fsub fast float %1649, %1804
  %1822 = fmul fast float %1813, %1819
  %1823 = fmul fast float %1813, %1820
  %1824 = fmul fast float %1813, %1821
  %1825 = fadd fast float %1822, %1802
  %1826 = fadd fast float %1823, %1803
  %1827 = fadd fast float %1824, %1804
  %1828 = fsub fast float %1633, %1240
  %1829 = fmul fast float %1813, %1828
  %1830 = fadd fast float %1829, %1240
  %1831 = fsub fast float %1775, %1805
  %1832 = fsub fast float %1776, %1806
  %1833 = fsub fast float %1777, %1807
  %1834 = fmul fast float %1818, %1831
  %1835 = fmul fast float %1818, %1832
  %1836 = fmul fast float %1818, %1833
  %1837 = fadd fast float %1834, %1805
  %1838 = fadd fast float %1835, %1806
  %1839 = fadd fast float %1836, %1807
  %1840 = fsub fast float %1792, %1244
  %1841 = fmul fast float %1813, %1840
  %1842 = fadd fast float %1841, %1244
  br label %1888

; <label>:1843                                    ; preds = %1810
  %1844 = icmp eq i32 %1808, 1
  br i1 %1844, label %1845, label %1858

; <label>:1845                                    ; preds = %1843
  %1846 = fadd fast float %1647, -1.000000e+00
  %1847 = fadd fast float %1648, -1.000000e+00
  %1848 = fadd fast float %1649, -1.000000e+00
  %1849 = fmul fast float %1813, %1846
  %1850 = fmul fast float %1813, %1847
  %1851 = fmul fast float %1813, %1848
  %1852 = fadd fast float %1849, 1.000000e+00
  %1853 = fadd fast float %1850, 1.000000e+00
  %1854 = fadd fast float %1851, 1.000000e+00
  %1855 = fmul fast float %1852, %1802
  %1856 = fmul fast float %1853, %1803
  %1857 = fmul fast float %1854, %1804
  br label %1888

; <label>:1858                                    ; preds = %1843
  %1859 = icmp eq i32 %1808, 2
  br i1 %1859, label %1860, label %1888

; <label>:1860                                    ; preds = %1858
  %1861 = call float @dx.op.unary.f32(i32 24, float %1647)  ; Sqrt(value)
  %1862 = call float @dx.op.unary.f32(i32 24, float %1648)  ; Sqrt(value)
  %1863 = call float @dx.op.unary.f32(i32 24, float %1649)  ; Sqrt(value)
  %1864 = fadd fast float %1861, -5.000000e-01
  %1865 = fadd fast float %1862, -5.000000e-01
  %1866 = fadd fast float %1863, -5.000000e-01
  %1867 = fmul fast float %1864, %1813
  %1868 = fmul fast float %1865, %1813
  %1869 = fmul fast float %1866, %1813
  %1870 = fadd fast float %1867, 5.000000e-01
  %1871 = fadd fast float %1868, 5.000000e-01
  %1872 = fadd fast float %1869, 5.000000e-01
  %1873 = fmul fast float %1870, 2.000000e+00
  %1874 = fsub fast float 1.000000e+00, %1873
  %1875 = fmul fast float %1874, %1802
  %1876 = fadd fast float %1875, %1873
  %1877 = fmul fast float %1876, %1802
  %1878 = fmul fast float %1871, 2.000000e+00
  %1879 = fsub fast float 1.000000e+00, %1878
  %1880 = fmul fast float %1879, %1803
  %1881 = fadd fast float %1880, %1878
  %1882 = fmul fast float %1881, %1803
  %1883 = fmul fast float %1872, 2.000000e+00
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = fmul fast float %1884, %1804
  %1886 = fadd fast float %1885, %1883
  %1887 = fmul fast float %1886, %1804
  br label %1888

; <label>:1888                                    ; preds = %1860, %1858, %1845, %1815, %1801
  %1889 = phi float [ %1802, %1801 ], [ %1877, %1860 ], [ %1802, %1858 ], [ %1855, %1845 ], [ %1825, %1815 ]
  %1890 = phi float [ %1803, %1801 ], [ %1882, %1860 ], [ %1803, %1858 ], [ %1856, %1845 ], [ %1826, %1815 ]
  %1891 = phi float [ %1804, %1801 ], [ %1887, %1860 ], [ %1804, %1858 ], [ %1857, %1845 ], [ %1827, %1815 ]
  %1892 = phi float [ %1805, %1801 ], [ %1805, %1860 ], [ %1805, %1858 ], [ %1805, %1845 ], [ %1837, %1815 ]
  %1893 = phi float [ %1806, %1801 ], [ %1806, %1860 ], [ %1806, %1858 ], [ %1806, %1845 ], [ %1838, %1815 ]
  %1894 = phi float [ %1807, %1801 ], [ %1807, %1860 ], [ %1807, %1858 ], [ %1807, %1845 ], [ %1839, %1815 ]
  %1895 = phi float [ %1240, %1801 ], [ %1240, %1860 ], [ %1240, %1858 ], [ %1240, %1845 ], [ %1830, %1815 ]
  %1896 = phi float [ %1244, %1801 ], [ %1244, %1860 ], [ %1244, %1858 ], [ %1244, %1845 ], [ %1842, %1815 ]
  %1897 = and i32 %1779, 12
  %1898 = icmp eq i32 %1897, 12
  br i1 %1898, label %1971, label %1899

; <label>:1899                                    ; preds = %1888
  %1900 = and i32 %1779, 2097184
  %1901 = icmp eq i32 %1900, 2097184
  %1902 = select i1 %1901, float %1427, float 0.000000e+00
  %1903 = and i32 %1779, 4194336
  %1904 = icmp eq i32 %1903, 4194336
  %1905 = select i1 %1904, float %1427, float 0.000000e+00
  %1906 = and i32 %1779, 8388640
  %1907 = icmp eq i32 %1906, 8388640
  %1908 = select i1 %1907, float %1427, float 0.000000e+00
  %1909 = icmp eq i32 %1897, 0
  br i1 %1909, label %1910, label %1923

; <label>:1910                                    ; preds = %1899
  %1911 = fsub fast float %1728, %1232
  %1912 = fsub fast float %1729, %1233
  %1913 = fmul fast float %1902, %1911
  %1914 = fmul fast float %1902, %1912
  %1915 = fadd fast float %1913, %1232
  %1916 = fadd fast float %1914, %1233
  %1917 = fsub fast float %1730, %1243
  %1918 = fmul fast float %1905, %1917
  %1919 = fadd fast float %1918, %1243
  %1920 = fsub fast float %1727, %1242
  %1921 = fmul fast float %1908, %1920
  %1922 = fadd fast float %1921, %1242
  br label %1971

; <label>:1923                                    ; preds = %1899
  %1924 = icmp eq i32 %1897, 4
  br i1 %1924, label %1925, label %1957

; <label>:1925                                    ; preds = %1923
  %1926 = fmul fast float %1902, %1728
  %1927 = fmul fast float %1902, %1729
  %1928 = fadd fast float %1926, %1232
  %1929 = fadd fast float %1927, %1233
  %1930 = call float @dx.op.binary.f32(i32 36, float %1243, float %1730)  ; FMin(a,b)
  %1931 = fsub fast float %1930, %1243
  %1932 = fmul fast float %1931, %1905
  %1933 = fadd fast float %1932, %1243
  %1934 = fadd fast float %1727, %1242
  %1935 = fmul fast float %1934, 0x3FF337FAE0000000
  %1936 = fmul fast float %1242, %1242
  %1937 = fmul fast float %1727, %1727
  %1938 = fadd fast float %1937, %1936
  %1939 = fmul fast float %1938, 0x3FE5152B00000000
  %1940 = fmul fast float %1242, 0xBFCC1F85E0000000
  %1941 = fmul fast float %1940, %1727
  %1942 = fadd fast float %1941, 0xBFE1363700000000
  %1943 = fadd fast float %1942, %1935
  %1944 = fsub fast float %1943, %1939
  %1945 = fmul fast float %1934, 0x3FBA6F0D00000000
  %1946 = fmul fast float %1938, 0x3FD0432880000000
  %1947 = fmul fast float %1242, 0xBFEF110800000000
  %1948 = fmul fast float %1947, %1727
  %1949 = fadd fast float %1948, 1.000000e+00
  %1950 = fsub fast float %1949, %1945
  %1951 = fadd fast float %1950, %1946
  %1952 = fdiv fast float %1944, %1951
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = fsub fast float %1953, %1242
  %1955 = fmul fast float %1954, %1908
  %1956 = fadd fast float %1955, %1242
  br label %1971

; <label>:1957                                    ; preds = %1923
  %1958 = icmp eq i32 %1897, 8
  br i1 %1958, label %1959, label %1971

; <label>:1959                                    ; preds = %1957
  %1960 = fmul fast float %1902, %1728
  %1961 = fmul fast float %1902, %1729
  %1962 = fadd fast float %1960, %1232
  %1963 = fadd fast float %1961, %1233
  %1964 = call float @dx.op.binary.f32(i32 36, float %1243, float %1730)  ; FMin(a,b)
  %1965 = fsub fast float %1964, %1243
  %1966 = fmul fast float %1965, %1905
  %1967 = fadd fast float %1966, %1243
  %1968 = fsub fast float %1727, %1242
  %1969 = fmul fast float %1908, %1968
  %1970 = fadd fast float %1969, %1242
  br label %1971

; <label>:1971                                    ; preds = %1959, %1957, %1925, %1910, %1888, %1426, %1245, %1231
  %1972 = phi float [ %1232, %1888 ], [ %1232, %1426 ], [ %1232, %1231 ], [ %1962, %1959 ], [ %1232, %1957 ], [ %1928, %1925 ], [ %1915, %1910 ], [ %1232, %1245 ]
  %1973 = phi float [ %1233, %1888 ], [ %1233, %1426 ], [ %1233, %1231 ], [ %1963, %1959 ], [ %1233, %1957 ], [ %1929, %1925 ], [ %1916, %1910 ], [ %1233, %1245 ]
  %1974 = phi float [ %1889, %1888 ], [ %1234, %1426 ], [ %1234, %1231 ], [ %1889, %1959 ], [ %1889, %1957 ], [ %1889, %1925 ], [ %1889, %1910 ], [ %1234, %1245 ]
  %1975 = phi float [ %1890, %1888 ], [ %1235, %1426 ], [ %1235, %1231 ], [ %1890, %1959 ], [ %1890, %1957 ], [ %1890, %1925 ], [ %1890, %1910 ], [ %1235, %1245 ]
  %1976 = phi float [ %1891, %1888 ], [ %1236, %1426 ], [ %1236, %1231 ], [ %1891, %1959 ], [ %1891, %1957 ], [ %1891, %1925 ], [ %1891, %1910 ], [ %1236, %1245 ]
  %1977 = phi float [ %1892, %1888 ], [ %1237, %1426 ], [ %1237, %1231 ], [ %1892, %1959 ], [ %1892, %1957 ], [ %1892, %1925 ], [ %1892, %1910 ], [ %1237, %1245 ]
  %1978 = phi float [ %1893, %1888 ], [ %1238, %1426 ], [ %1238, %1231 ], [ %1893, %1959 ], [ %1893, %1957 ], [ %1893, %1925 ], [ %1893, %1910 ], [ %1238, %1245 ]
  %1979 = phi float [ %1894, %1888 ], [ %1239, %1426 ], [ %1239, %1231 ], [ %1894, %1959 ], [ %1894, %1957 ], [ %1894, %1925 ], [ %1894, %1910 ], [ %1239, %1245 ]
  %1980 = phi float [ %1895, %1888 ], [ %1240, %1426 ], [ %1240, %1231 ], [ %1895, %1959 ], [ %1895, %1957 ], [ %1895, %1925 ], [ %1895, %1910 ], [ %1240, %1245 ]
  %1981 = phi float [ %1242, %1888 ], [ %1242, %1426 ], [ %1242, %1231 ], [ %1970, %1959 ], [ %1242, %1957 ], [ %1956, %1925 ], [ %1922, %1910 ], [ %1242, %1245 ]
  %1982 = phi float [ %1243, %1888 ], [ %1243, %1426 ], [ %1243, %1231 ], [ %1967, %1959 ], [ %1243, %1957 ], [ %1933, %1925 ], [ %1919, %1910 ], [ %1243, %1245 ]
  %1983 = phi float [ %1896, %1888 ], [ %1244, %1426 ], [ %1244, %1231 ], [ %1896, %1959 ], [ %1896, %1957 ], [ %1896, %1925 ], [ %1896, %1910 ], [ %1244, %1245 ]
  br i1 %632, label %2710, label %1984

; <label>:1984                                    ; preds = %1971
  %1985 = icmp ult i32 %688, 3
  %1986 = add i32 %52, 56
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = add i32 %52, 60
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = or i32 %1991, %1988
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2710, label %1994

; <label>:1994                                    ; preds = %1984
  %1995 = and i32 %1988, 262144
  %1996 = icmp ne i32 %1995, 0
  %1997 = select i1 %1996, float %58, float 1.000000e+00
  %1998 = select i1 %1996, float %59, float 0.000000e+00
  %1999 = select i1 %1996, float %60, float 0.000000e+00
  %2000 = select i1 %1996, float %61, float 1.000000e+00
  %2001 = select i1 %1996, float %62, float %90
  %2002 = select i1 %1996, float %63, float %91
  %2003 = add i32 %52, 316
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = lshr i32 %2005, 16
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = fmul fast float %2007, 0x3F50624DE0000000
  %2009 = add i32 %52, 120
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = lshr i32 %2011, 16
  %2013 = and i32 %2012, 255
  %2014 = lshr i32 %2011, 24
  %2015 = add i32 %52, 324
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 65535
  %2019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2018)  ; LegacyF16ToF32(value)
  %2020 = lshr i32 %2017, 16
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = add i32 %52, 64
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = lshr i32 %2024, 22
  %2026 = shl nuw nsw i32 %2025, 5
  %2027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2026)  ; LegacyF16ToF32(value)
  %2028 = shl i32 %2024, 4
  %2029 = and i32 %2028, 32752
  %2030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2029)  ; LegacyF16ToF32(value)
  %2031 = lshr i32 %2024, 7
  %2032 = and i32 %2031, 32752
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 3
  %2036 = fmul fast float %2035, 1.000000e+03
  %2037 = fmul fast float %2036, %516
  %2038 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2039 = fadd fast float %2038, %504
  %2040 = fmul fast float %2036, %518
  %2041 = call float @dx.op.unary.f32(i32 22, float %2040)  ; Frc(value)
  %2042 = fadd fast float %2041, %505
  %2043 = fmul fast float %2008, %2036
  %2044 = call float @dx.op.unary.f32(i32 22, float %2043)  ; Frc(value)
  %2045 = fmul fast float %2044, 0x401921FB60000000
  %2046 = fadd fast float %2045, %2027
  %2047 = call float @dx.op.unary.f32(i32 13, float %2046)  ; Sin(value)
  %2048 = call float @dx.op.unary.f32(i32 12, float %2046)  ; Cos(value)
  %2049 = fsub fast float -0.000000e+00, %2047
  %2050 = fadd fast float %2001, -5.000000e-01
  %2051 = fadd fast float %2002, -5.000000e-01
  %2052 = fmul fast float %2019, %2050
  %2053 = fmul fast float %2021, %2051
  %2054 = fadd fast float %2052, 5.000000e-01
  %2055 = fadd fast float %2053, 5.000000e-01
  %2056 = fmul fast float %2030, %2054
  %2057 = fmul fast float %2033, %2055
  %2058 = fmul fast float %2048, %2056
  %2059 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2057, float %2058)  ; FMad(a,b,c)
  %2060 = fmul fast float %2047, %2056
  %2061 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2057, float %2060)  ; FMad(a,b,c)
  %2062 = fadd fast float %2039, %2059
  %2063 = fadd fast float %2042, %2061
  %2064 = icmp ugt i32 %2013, 1
  %2065 = icmp ugt i32 %2011, 33554431
  %2066 = or i1 %2065, %2064
  br i1 %2066, label %2067, label %2092

; <label>:2067                                    ; preds = %1994
  %2068 = add i32 %52, 260
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = lshr i32 %2070, 16
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = fmul fast float %2035, %2072
  %2074 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2075 = mul nuw nsw i32 %2013, %2014
  %2076 = uitofp i32 %2075 to float
  %2077 = fmul fast float %2074, %2076
  %2078 = call float @dx.op.unary.f32(i32 27, float %2077)  ; Round_ni(value)
  %2079 = fptoui float %2078 to i32
  %2080 = urem i32 %2079, %2013
  %2081 = udiv i32 %2079, %2014
  %2082 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2083 = call float @dx.op.unary.f32(i32 22, float %2063)  ; Frc(value)
  %2084 = uitofp i32 %2080 to float
  %2085 = uitofp i32 %2081 to float
  %2086 = fadd fast float %2082, %2084
  %2087 = fadd fast float %2083, %2085
  %2088 = uitofp i32 %2013 to float
  %2089 = uitofp i32 %2014 to float
  %2090 = fdiv fast float %2086, %2088
  %2091 = fdiv fast float %2087, %2089
  br label %2092

; <label>:2092                                    ; preds = %2067, %1994
  %2093 = phi float [ %2090, %2067 ], [ %2062, %1994 ]
  %2094 = phi float [ %2091, %2067 ], [ %2063, %1994 ]
  %2095 = and i32 %1988, 256
  %2096 = icmp eq i32 %2095, 0
  br i1 %2096, label %2143, label %2097

; <label>:2097                                    ; preds = %2092
  %2098 = add i32 %52, 464
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = add i32 %2100, 0
  %2102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2102, %dx.types.Handle %105, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  %2105 = add i32 %52, 132
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2105, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = shl i32 %2107, 4
  %2109 = and i32 %2108, 32752
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = lshr i32 %2107, 7
  %2112 = and i32 %2111, 32752
  %2113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2112)  ; LegacyF16ToF32(value)
  %2114 = fsub fast float 1.000000e+00, %684
  %2115 = call float @dx.op.binary.f32(i32 35, float %2114, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2116 = bitcast float %684 to i32
  %2117 = sitofp i32 %2116 to float
  %2118 = fadd fast float %2117, 0xC1CFBF8940000000
  %2119 = fmul fast float %2113, %2118
  %2120 = fadd fast float %2119, 0x41CFBF8940000000
  %2121 = fptosi float %2120 to i32
  %2122 = bitcast i32 %2121 to float
  %2123 = bitcast float %2115 to i32
  %2124 = sitofp i32 %2123 to float
  %2125 = fadd fast float %2124, 0xC1CFBF8940000000
  %2126 = fmul fast float %2125, %2113
  %2127 = fadd fast float %2126, 0x41CFBF8940000000
  %2128 = fptosi float %2127 to i32
  %2129 = bitcast i32 %2128 to float
  %2130 = fmul fast float %2122, %2110
  %2131 = fmul fast float %2129, %2110
  %2132 = fsub fast float %2115, %2130
  %2133 = fadd fast float %2131, %2115
  %2134 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2135 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2136 = fsub fast float %2104, %2134
  %2137 = fsub fast float %2135, %2134
  %2138 = bitcast float %2137 to i32
  %2139 = sub nsw i32 2129859010, %2138
  %2140 = bitcast i32 %2139 to float
  %2141 = fmul fast float %2140, %2136
  %2142 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  br label %2143

; <label>:2143                                    ; preds = %2097, %2092
  %2144 = phi float [ %2142, %2097 ], [ %684, %2092 ]
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = and i32 %2146, 128
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2165, label %2149

; <label>:2149                                    ; preds = %2143
  %2150 = add i32 %52, 448
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = add i32 %2152, 0
  %2154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2154, %dx.types.Handle %105, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 524288
  %2160 = icmp ne i32 %2159, 0
  %2161 = fcmp fast ogt float %2156, 0x3FE0101020000000
  %2162 = select i1 %2161, float 1.000000e+00, float 0.000000e+00
  %2163 = select i1 %2160, float %2162, float %2156
  %2164 = fmul fast float %2163, %2144
  br label %2165

; <label>:2165                                    ; preds = %2149, %2143
  %2166 = phi float [ %2164, %2149 ], [ %2144, %2143 ]
  %2167 = fcmp fast ult float %2166, 0x3F70101020000000
  br i1 %2167, label %2710, label %2168

; <label>:2168                                    ; preds = %2165
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 16
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2371, label %2173

; <label>:2173                                    ; preds = %2168
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = add i32 %52, 400
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = add i32 %2178, 0
  %2180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2180, %dx.types.Handle %104, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2182 = extractvalue %dx.types.ResRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.ResRet.f32 %2181, 1
  %2184 = extractvalue %dx.types.ResRet.f32 %2181, 2
  %2185 = extractvalue %dx.types.ResRet.f32 %2181, 3
  %2186 = and i32 %2175, 255
  %2187 = uitofp i32 %2186 to float
  %2188 = lshr i32 %2175, 8
  %2189 = and i32 %2188, 255
  %2190 = uitofp i32 %2189 to float
  %2191 = fmul fast float %2185, %2187
  %2192 = fadd fast float %2191, %2190
  %2193 = fmul fast float %2192, 0x3F70101000000000
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 512
  %2197 = icmp eq i32 %2196, 0
  br i1 %2197, label %2206, label %2198

; <label>:2198                                    ; preds = %2173
  %2199 = add i32 %52, 480
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = add i32 %2201, 0
  %2203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2203, %dx.types.Handle %105, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  br label %2206

; <label>:2206                                    ; preds = %2198, %2173
  %2207 = phi float [ %2205, %2198 ], [ 1.000000e+00, %2173 ]
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 33554432
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2318, label %2212

; <label>:2212                                    ; preds = %2206
  %2213 = add i32 %52, 256
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = and i32 %2215, 65535
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = lshr i32 %2215, 16
  %2219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2218)  ; LegacyF16ToF32(value)
  %2220 = add i32 %52, 260
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, 65535
  %2224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2223)  ; LegacyF16ToF32(value)
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = lshr i32 %2226, 24
  %2228 = uitofp i32 %2227 to float
  %2229 = fmul fast float %2228, 0x3F70101020000000
  %2230 = and i32 %2226, 255
  %2231 = uitofp i32 %2230 to float
  %2232 = fmul fast float %2231, 0x3F70101020000000
  %2233 = lshr i32 %2226, 8
  %2234 = and i32 %2233, 255
  %2235 = uitofp i32 %2234 to float
  %2236 = fmul fast float %2235, 0x3F70101020000000
  %2237 = lshr i32 %2226, 16
  %2238 = and i32 %2237, 255
  %2239 = uitofp i32 %2238 to float
  %2240 = fmul fast float %2239, 0x3F70101020000000
  %2241 = add i32 %52, 252
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = lshr i32 %2243, 24
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = and i32 %2243, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = lshr i32 %2243, 8
  %2251 = and i32 %2250, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = lshr i32 %2243, 16
  %2255 = and i32 %2254, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = bitcast float %2182 to i32
  %2259 = ashr i32 %2258, 1
  %2260 = sub nsw i32 1597463174, %2259
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2182, 5.000000e-01
  %2263 = fmul fast float %2261, %2261
  %2264 = fmul fast float %2263, %2262
  %2265 = fsub fast float 1.500000e+00, %2264
  %2266 = fmul fast float %2261, %2182
  %2267 = fmul fast float %2266, %2265
  %2268 = bitcast float %2183 to i32
  %2269 = ashr i32 %2268, 1
  %2270 = sub nsw i32 1597463174, %2269
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2183, 5.000000e-01
  %2273 = fmul fast float %2271, %2271
  %2274 = fmul fast float %2273, %2272
  %2275 = fsub fast float 1.500000e+00, %2274
  %2276 = fmul fast float %2271, %2183
  %2277 = fmul fast float %2276, %2275
  %2278 = bitcast float %2184 to i32
  %2279 = ashr i32 %2278, 1
  %2280 = sub nsw i32 1597463174, %2279
  %2281 = bitcast i32 %2280 to float
  %2282 = fmul fast float %2184, 5.000000e-01
  %2283 = fmul fast float %2281, %2281
  %2284 = fmul fast float %2283, %2282
  %2285 = fsub fast float 1.500000e+00, %2284
  %2286 = fmul fast float %2281, %2184
  %2287 = fmul fast float %2286, %2285
  %2288 = fsub fast float %2267, %2249
  %2289 = fsub fast float %2277, %2253
  %2290 = fsub fast float %2287, %2257
  %2291 = fmul fast float %2288, %2217
  %2292 = fmul fast float %2289, %2219
  %2293 = fmul fast float %2290, %2224
  %2294 = fadd fast float %2291, %2232
  %2295 = fadd fast float %2292, %2236
  %2296 = fadd fast float %2293, %2240
  %2297 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2298 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2299 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2300 = fmul fast float %2297, %2297
  %2301 = fmul fast float %2298, %2298
  %2302 = fmul fast float %2299, %2299
  %2303 = fsub fast float %2300, %2182
  %2304 = fsub fast float %2301, %2183
  %2305 = fsub fast float %2302, %2184
  %2306 = fmul fast float %2303, %2207
  %2307 = fmul fast float %2304, %2207
  %2308 = fmul fast float %2305, %2207
  %2309 = fadd fast float %2306, %2182
  %2310 = fadd fast float %2307, %2183
  %2311 = fadd fast float %2308, %2184
  %2312 = fadd fast float %2229, %2193
  %2313 = fsub fast float %2312, %2246
  %2314 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2315 = fsub fast float %2314, %2193
  %2316 = fmul fast float %2315, %2207
  %2317 = fadd fast float %2316, %2193
  br label %2371

; <label>:2318                                    ; preds = %2206
  %2319 = and i32 %2209, 134217728
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2355, label %2321

; <label>:2321                                    ; preds = %2318
  %2322 = call float @dx.op.unary.f32(i32 24, float %492)  ; Sqrt(value)
  %2323 = call float @dx.op.unary.f32(i32 24, float %493)  ; Sqrt(value)
  %2324 = call float @dx.op.unary.f32(i32 24, float %494)  ; Sqrt(value)
  %2325 = fadd fast float %2322, -5.000000e-01
  %2326 = fadd fast float %2323, -5.000000e-01
  %2327 = fadd fast float %2324, -5.000000e-01
  %2328 = fmul fast float %2325, %2207
  %2329 = fmul fast float %2326, %2207
  %2330 = fmul fast float %2327, %2207
  %2331 = fadd fast float %2328, 5.000000e-01
  %2332 = fadd fast float %2329, 5.000000e-01
  %2333 = fadd fast float %2330, 5.000000e-01
  %2334 = call float @dx.op.unary.f32(i32 24, float %2182)  ; Sqrt(value)
  %2335 = call float @dx.op.unary.f32(i32 24, float %2183)  ; Sqrt(value)
  %2336 = call float @dx.op.unary.f32(i32 24, float %2184)  ; Sqrt(value)
  %2337 = fmul fast float %2331, 2.000000e+00
  %2338 = fsub fast float 1.000000e+00, %2337
  %2339 = fmul fast float %2338, %2334
  %2340 = fadd fast float %2339, %2337
  %2341 = fmul fast float %2340, %2334
  %2342 = fmul fast float %2332, 2.000000e+00
  %2343 = fsub fast float 1.000000e+00, %2342
  %2344 = fmul fast float %2343, %2335
  %2345 = fadd fast float %2344, %2342
  %2346 = fmul fast float %2345, %2335
  %2347 = fmul fast float %2333, 2.000000e+00
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = fmul fast float %2348, %2336
  %2350 = fadd fast float %2349, %2347
  %2351 = fmul fast float %2350, %2336
  %2352 = fmul fast float %2341, %2341
  %2353 = fmul fast float %2346, %2346
  %2354 = fmul fast float %2351, %2351
  br label %2371

; <label>:2355                                    ; preds = %2318
  %2356 = fmul fast float %492, %492
  %2357 = fmul fast float %493, %493
  %2358 = fmul fast float %494, %494
  %2359 = fadd fast float %2356, -1.000000e+00
  %2360 = fadd fast float %2357, -1.000000e+00
  %2361 = fadd fast float %2358, -1.000000e+00
  %2362 = fmul fast float %2207, %2359
  %2363 = fmul fast float %2207, %2360
  %2364 = fmul fast float %2207, %2361
  %2365 = fadd fast float %2362, 1.000000e+00
  %2366 = fadd fast float %2363, 1.000000e+00
  %2367 = fadd fast float %2364, 1.000000e+00
  %2368 = fmul fast float %2365, %2182
  %2369 = fmul fast float %2366, %2183
  %2370 = fmul fast float %2367, %2184
  br label %2371

; <label>:2371                                    ; preds = %2355, %2321, %2212, %2168
  %2372 = phi float [ %2317, %2212 ], [ %2193, %2321 ], [ %2193, %2355 ], [ 0x3FA23C0BE0000000, %2168 ]
  %2373 = phi float [ %2309, %2212 ], [ %2352, %2321 ], [ %2368, %2355 ], [ 1.000000e+00, %2168 ]
  %2374 = phi float [ %2310, %2212 ], [ %2353, %2321 ], [ %2369, %2355 ], [ 1.000000e+00, %2168 ]
  %2375 = phi float [ %2311, %2212 ], [ %2354, %2321 ], [ %2370, %2355 ], [ 1.000000e+00, %2168 ]
  %2376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.i32 %2376, 1
  %2378 = and i32 %2377, 1
  %2379 = icmp ne i32 %2378, 0
  %2380 = add i32 %52, 356
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 32
  %2384 = icmp ne i32 %2383, 0
  %2385 = and i1 %2379, %2384
  %2386 = select i1 %2385, float 1.000000e+00, float %2373
  %2387 = select i1 %2385, float 0x3FD3333340000000, float %2374
  %2388 = select i1 %2385, float 0x3FD3333340000000, float %2375
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = and i32 %2390, 32
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %2465, label %2393

; <label>:2393                                    ; preds = %2371
  %2394 = add i32 %52, 124
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = add i32 %52, 416
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = add i32 %2399, 0
  %2401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2402 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2401, %dx.types.Handle %104, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2403 = extractvalue %dx.types.ResRet.f32 %2402, 0
  %2404 = extractvalue %dx.types.ResRet.f32 %2402, 1
  %2405 = extractvalue %dx.types.ResRet.f32 %2402, 2
  %2406 = extractvalue %dx.types.ResRet.f32 %2402, 3
  %2407 = and i32 %2396, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = lshr i32 %2396, 8
  %2410 = and i32 %2409, 255
  %2411 = uitofp i32 %2410 to float
  %2412 = lshr i32 %2396, 16
  %2413 = and i32 %2412, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, 0x3F70101000000000
  %2416 = fmul fast float %2403, %2408
  %2417 = fadd fast float %2416, %2411
  %2418 = fmul fast float %2417, 0x3F70101000000000
  %2419 = fadd fast float %2404, -5.000000e-01
  %2420 = fadd fast float %2406, -5.000000e-01
  %2421 = fmul fast float %2419, %2415
  %2422 = fmul fast float %2420, %2415
  %2423 = fadd fast float %2421, 5.000000e-01
  %2424 = fadd fast float %2422, 5.000000e-01
  %2425 = fmul fast float %2423, 2.000000e+00
  %2426 = fadd fast float %2425, -1.000000e+00
  %2427 = fmul fast float %2424, 2.000000e+00
  %2428 = fadd fast float %2427, -1.000000e+00
  %2429 = fadd fast float %2426, %2428
  %2430 = fmul fast float %2429, 5.000000e-01
  %2431 = fsub fast float %2426, %2428
  %2432 = fmul fast float %2431, 5.000000e-01
  %2433 = call float @dx.op.unary.f32(i32 6, float %2430)  ; FAbs(value)
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = call float @dx.op.unary.f32(i32 6, float %2432)  ; FAbs(value)
  %2436 = fsub fast float %2434, %2435
  %2437 = call float @dx.op.dot3.f32(i32 55, float %2430, float %2432, float %2436, float %2430, float %2432, float %2436)  ; Dot3(ax,ay,az,bx,by,bz)
  %2438 = call float @dx.op.unary.f32(i32 25, float %2437)  ; Rsqrt(value)
  %2439 = fmul fast float %2430, %2438
  %2440 = fmul fast float %2432, %2438
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 67108864
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2461, label %2445

; <label>:2445                                    ; preds = %2393
  %2446 = add i32 %52, 312
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 65535
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = and i32 %2452, 65535
  %2454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2453)  ; LegacyF16ToF32(value)
  %2455 = lshr i32 %2448, 16
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = fsub fast float %2418, %2456
  %2458 = fmul fast float %2457, %2450
  %2459 = fadd fast float %2458, %2454
  %2460 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  br label %2461

; <label>:2461                                    ; preds = %2445, %2393
  %2462 = phi float [ %2460, %2445 ], [ %2418, %2393 ]
  %2463 = call float @dx.op.dot2.f32(i32 54, float %2439, float %2440, float %1997, float %1998)  ; Dot2(ax,ay,bx,by)
  %2464 = call float @dx.op.dot2.f32(i32 54, float %2439, float %2440, float %1999, float %2000)  ; Dot2(ax,ay,bx,by)
  br label %2465

; <label>:2465                                    ; preds = %2461, %2371
  %2466 = phi float [ %2462, %2461 ], [ 0x3FD6666660000000, %2371 ]
  %2467 = phi float [ %2463, %2461 ], [ 0.000000e+00, %2371 ]
  %2468 = phi float [ %2464, %2461 ], [ 0.000000e+00, %2371 ]
  %2469 = phi float [ %2405, %2461 ], [ 1.000000e+00, %2371 ]
  %2470 = add i32 %52, 192
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2470, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = lshr i32 %2472, 22
  %2474 = shl nuw nsw i32 %2473, 5
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 64
  %2479 = icmp eq i32 %2478, 0
  br i1 %2479, label %2513, label %2480

; <label>:2480                                    ; preds = %2465
  %2481 = add i32 %52, 432
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = add i32 %2483, 0
  %2485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 131072
  %2489 = icmp eq i32 %2488, 0
  %2490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2485, %dx.types.Handle %104, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = fmul fast float %475, %2491
  %2495 = fmul fast float %476, %2492
  %2496 = fmul fast float %477, %2493
  br i1 %2489, label %2503, label %2497

; <label>:2497                                    ; preds = %2480
  %2498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.f32 %2498, 0
  %2500 = fmul fast float %2499, %2494
  %2501 = fmul fast float %2499, %2495
  %2502 = fmul fast float %2499, %2496
  br label %2503

; <label>:2503                                    ; preds = %2497, %2480
  %2504 = phi float [ %2500, %2497 ], [ %2494, %2480 ]
  %2505 = phi float [ %2501, %2497 ], [ %2495, %2480 ]
  %2506 = phi float [ %2502, %2497 ], [ %2496, %2480 ]
  %2507 = fmul fast float %2504, %2475
  %2508 = select i1 %250, float %2507, float %2504
  %2509 = call float @dx.op.dot3.f32(i32 55, float %2508, float %2505, float %2506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2510 = select i1 %250, float 0.000000e+00, float %2504
  %2511 = select i1 %250, float %2509, float %2505
  %2512 = select i1 %250, float 0.000000e+00, float %2506
  br label %2513

; <label>:2513                                    ; preds = %2503, %2465
  %2514 = phi float [ %2510, %2503 ], [ 0.000000e+00, %2465 ]
  %2515 = phi float [ %2511, %2503 ], [ 0.000000e+00, %2465 ]
  %2516 = phi float [ %2512, %2503 ], [ 0.000000e+00, %2465 ]
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %52, 128
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = and i32 %2521, 255
  %2523 = uitofp i32 %2522 to float
  %2524 = lshr i32 %2521, 8
  %2525 = and i32 %2524, 255
  %2526 = uitofp i32 %2525 to float
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2386, float %2387, float %2388, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = fmul fast float %2526, %2527
  %2529 = fadd fast float %2528, %2523
  %2530 = fmul fast float %2529, 0x3F70101020000000
  %2531 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  br i1 %1985, label %2532, label %2540

; <label>:2532                                    ; preds = %2513
  %2533 = fsub fast float 1.000000e+00, %2166
  %2534 = fmul fast float %2533, %1974
  %2535 = fmul fast float %2533, %1975
  %2536 = fmul fast float %2533, %1976
  %2537 = fmul fast float %2533, %1977
  %2538 = fmul fast float %2533, %1978
  %2539 = fmul fast float %2533, %1979
  br label %2540

; <label>:2540                                    ; preds = %2532, %2513
  %2541 = phi float [ %2534, %2532 ], [ %1974, %2513 ]
  %2542 = phi float [ %2535, %2532 ], [ %1975, %2513 ]
  %2543 = phi float [ %2536, %2532 ], [ %1976, %2513 ]
  %2544 = phi float [ %2537, %2532 ], [ %1977, %2513 ]
  %2545 = phi float [ %2538, %2532 ], [ %1978, %2513 ]
  %2546 = phi float [ %2539, %2532 ], [ %1979, %2513 ]
  %2547 = and i32 %2518, 3
  %2548 = icmp eq i32 %2547, 3
  br i1 %2548, label %2627, label %2549

; <label>:2549                                    ; preds = %2540
  %2550 = and i32 %2518, 16
  %2551 = icmp ne i32 %2550, 0
  %2552 = select i1 %2551, float %2166, float 0.000000e+00
  %2553 = icmp eq i32 %2547, 0
  br i1 %2553, label %2554, label %2582

; <label>:2554                                    ; preds = %2549
  %2555 = and i32 %2518, 64
  %2556 = icmp ne i32 %2555, 0
  %2557 = select i1 %2556, float %2166, float 0.000000e+00
  %2558 = fsub fast float %2386, %2541
  %2559 = fsub fast float %2387, %2542
  %2560 = fsub fast float %2388, %2543
  %2561 = fmul fast float %2552, %2558
  %2562 = fmul fast float %2552, %2559
  %2563 = fmul fast float %2552, %2560
  %2564 = fadd fast float %2561, %2541
  %2565 = fadd fast float %2562, %2542
  %2566 = fadd fast float %2563, %2543
  %2567 = fsub fast float %2372, %1980
  %2568 = fmul fast float %2552, %2567
  %2569 = fadd fast float %2568, %1980
  %2570 = fsub fast float %2514, %2544
  %2571 = fsub fast float %2515, %2545
  %2572 = fsub fast float %2516, %2546
  %2573 = fmul fast float %2557, %2570
  %2574 = fmul fast float %2557, %2571
  %2575 = fmul fast float %2557, %2572
  %2576 = fadd fast float %2573, %2544
  %2577 = fadd fast float %2574, %2545
  %2578 = fadd fast float %2575, %2546
  %2579 = fsub fast float %2531, %1983
  %2580 = fmul fast float %2552, %2579
  %2581 = fadd fast float %2580, %1983
  br label %2627

; <label>:2582                                    ; preds = %2549
  %2583 = icmp eq i32 %2547, 1
  br i1 %2583, label %2584, label %2597

; <label>:2584                                    ; preds = %2582
  %2585 = fadd fast float %2386, -1.000000e+00
  %2586 = fadd fast float %2387, -1.000000e+00
  %2587 = fadd fast float %2388, -1.000000e+00
  %2588 = fmul fast float %2552, %2585
  %2589 = fmul fast float %2552, %2586
  %2590 = fmul fast float %2552, %2587
  %2591 = fadd fast float %2588, 1.000000e+00
  %2592 = fadd fast float %2589, 1.000000e+00
  %2593 = fadd fast float %2590, 1.000000e+00
  %2594 = fmul fast float %2591, %2541
  %2595 = fmul fast float %2592, %2542
  %2596 = fmul fast float %2593, %2543
  br label %2627

; <label>:2597                                    ; preds = %2582
  %2598 = icmp eq i32 %2547, 2
  br i1 %2598, label %2599, label %2627

; <label>:2599                                    ; preds = %2597
  %2600 = call float @dx.op.unary.f32(i32 24, float %2386)  ; Sqrt(value)
  %2601 = call float @dx.op.unary.f32(i32 24, float %2387)  ; Sqrt(value)
  %2602 = call float @dx.op.unary.f32(i32 24, float %2388)  ; Sqrt(value)
  %2603 = fadd fast float %2600, -5.000000e-01
  %2604 = fadd fast float %2601, -5.000000e-01
  %2605 = fadd fast float %2602, -5.000000e-01
  %2606 = fmul fast float %2603, %2552
  %2607 = fmul fast float %2604, %2552
  %2608 = fmul fast float %2605, %2552
  %2609 = fadd fast float %2606, 5.000000e-01
  %2610 = fadd fast float %2607, 5.000000e-01
  %2611 = fadd fast float %2608, 5.000000e-01
  %2612 = fmul fast float %2609, 2.000000e+00
  %2613 = fsub fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2613, %2541
  %2615 = fadd fast float %2614, %2612
  %2616 = fmul fast float %2615, %2541
  %2617 = fmul fast float %2610, 2.000000e+00
  %2618 = fsub fast float 1.000000e+00, %2617
  %2619 = fmul fast float %2618, %2542
  %2620 = fadd fast float %2619, %2617
  %2621 = fmul fast float %2620, %2542
  %2622 = fmul fast float %2611, 2.000000e+00
  %2623 = fsub fast float 1.000000e+00, %2622
  %2624 = fmul fast float %2623, %2543
  %2625 = fadd fast float %2624, %2622
  %2626 = fmul fast float %2625, %2543
  br label %2627

; <label>:2627                                    ; preds = %2599, %2597, %2584, %2554, %2540
  %2628 = phi float [ %2541, %2540 ], [ %2616, %2599 ], [ %2541, %2597 ], [ %2594, %2584 ], [ %2564, %2554 ]
  %2629 = phi float [ %2542, %2540 ], [ %2621, %2599 ], [ %2542, %2597 ], [ %2595, %2584 ], [ %2565, %2554 ]
  %2630 = phi float [ %2543, %2540 ], [ %2626, %2599 ], [ %2543, %2597 ], [ %2596, %2584 ], [ %2566, %2554 ]
  %2631 = phi float [ %2544, %2540 ], [ %2544, %2599 ], [ %2544, %2597 ], [ %2544, %2584 ], [ %2576, %2554 ]
  %2632 = phi float [ %2545, %2540 ], [ %2545, %2599 ], [ %2545, %2597 ], [ %2545, %2584 ], [ %2577, %2554 ]
  %2633 = phi float [ %2546, %2540 ], [ %2546, %2599 ], [ %2546, %2597 ], [ %2546, %2584 ], [ %2578, %2554 ]
  %2634 = phi float [ %1980, %2540 ], [ %1980, %2599 ], [ %1980, %2597 ], [ %1980, %2584 ], [ %2569, %2554 ]
  %2635 = phi float [ %1983, %2540 ], [ %1983, %2599 ], [ %1983, %2597 ], [ %1983, %2584 ], [ %2581, %2554 ]
  %2636 = and i32 %2518, 12
  %2637 = icmp eq i32 %2636, 12
  br i1 %2637, label %2710, label %2638

; <label>:2638                                    ; preds = %2627
  %2639 = and i32 %2518, 2097184
  %2640 = icmp eq i32 %2639, 2097184
  %2641 = select i1 %2640, float %2166, float 0.000000e+00
  %2642 = and i32 %2518, 4194336
  %2643 = icmp eq i32 %2642, 4194336
  %2644 = select i1 %2643, float %2166, float 0.000000e+00
  %2645 = and i32 %2518, 8388640
  %2646 = icmp eq i32 %2645, 8388640
  %2647 = select i1 %2646, float %2166, float 0.000000e+00
  %2648 = icmp eq i32 %2636, 0
  br i1 %2648, label %2649, label %2662

; <label>:2649                                    ; preds = %2638
  %2650 = fsub fast float %2467, %1972
  %2651 = fsub fast float %2468, %1973
  %2652 = fmul fast float %2641, %2650
  %2653 = fmul fast float %2641, %2651
  %2654 = fadd fast float %2652, %1972
  %2655 = fadd fast float %2653, %1973
  %2656 = fsub fast float %2469, %1982
  %2657 = fmul fast float %2644, %2656
  %2658 = fadd fast float %2657, %1982
  %2659 = fsub fast float %2466, %1981
  %2660 = fmul fast float %2647, %2659
  %2661 = fadd fast float %2660, %1981
  br label %2710

; <label>:2662                                    ; preds = %2638
  %2663 = icmp eq i32 %2636, 4
  br i1 %2663, label %2664, label %2696

; <label>:2664                                    ; preds = %2662
  %2665 = fmul fast float %2641, %2467
  %2666 = fmul fast float %2641, %2468
  %2667 = fadd fast float %2665, %1972
  %2668 = fadd fast float %2666, %1973
  %2669 = call float @dx.op.binary.f32(i32 36, float %1982, float %2469)  ; FMin(a,b)
  %2670 = fsub fast float %2669, %1982
  %2671 = fmul fast float %2670, %2644
  %2672 = fadd fast float %2671, %1982
  %2673 = fadd fast float %2466, %1981
  %2674 = fmul fast float %2673, 0x3FF337FAE0000000
  %2675 = fmul fast float %1981, %1981
  %2676 = fmul fast float %2466, %2466
  %2677 = fadd fast float %2676, %2675
  %2678 = fmul fast float %2677, 0x3FE5152B00000000
  %2679 = fmul fast float %1981, 0xBFCC1F85E0000000
  %2680 = fmul fast float %2679, %2466
  %2681 = fadd fast float %2680, 0xBFE1363700000000
  %2682 = fadd fast float %2681, %2674
  %2683 = fsub fast float %2682, %2678
  %2684 = fmul fast float %2673, 0x3FBA6F0D00000000
  %2685 = fmul fast float %2677, 0x3FD0432880000000
  %2686 = fmul fast float %1981, 0xBFEF110800000000
  %2687 = fmul fast float %2686, %2466
  %2688 = fadd fast float %2687, 1.000000e+00
  %2689 = fsub fast float %2688, %2684
  %2690 = fadd fast float %2689, %2685
  %2691 = fdiv fast float %2683, %2690
  %2692 = call float @dx.op.unary.f32(i32 7, float %2691)  ; Saturate(value)
  %2693 = fsub fast float %2692, %1981
  %2694 = fmul fast float %2693, %2647
  %2695 = fadd fast float %2694, %1981
  br label %2710

; <label>:2696                                    ; preds = %2662
  %2697 = icmp eq i32 %2636, 8
  br i1 %2697, label %2698, label %2710

; <label>:2698                                    ; preds = %2696
  %2699 = fmul fast float %2641, %2467
  %2700 = fmul fast float %2641, %2468
  %2701 = fadd fast float %2699, %1972
  %2702 = fadd fast float %2700, %1973
  %2703 = call float @dx.op.binary.f32(i32 36, float %1982, float %2469)  ; FMin(a,b)
  %2704 = fsub fast float %2703, %1982
  %2705 = fmul fast float %2704, %2644
  %2706 = fadd fast float %2705, %1982
  %2707 = fsub fast float %2466, %1981
  %2708 = fmul fast float %2647, %2707
  %2709 = fadd fast float %2708, %1981
  br label %2710

; <label>:2710                                    ; preds = %2698, %2696, %2664, %2649, %2627, %2165, %1984, %1971
  %2711 = phi float [ %1972, %2627 ], [ %1972, %2165 ], [ %1972, %1971 ], [ %2701, %2698 ], [ %1972, %2696 ], [ %2667, %2664 ], [ %2654, %2649 ], [ %1972, %1984 ]
  %2712 = phi float [ %1973, %2627 ], [ %1973, %2165 ], [ %1973, %1971 ], [ %2702, %2698 ], [ %1973, %2696 ], [ %2668, %2664 ], [ %2655, %2649 ], [ %1973, %1984 ]
  %2713 = phi float [ %2628, %2627 ], [ %1974, %2165 ], [ %1974, %1971 ], [ %2628, %2698 ], [ %2628, %2696 ], [ %2628, %2664 ], [ %2628, %2649 ], [ %1974, %1984 ]
  %2714 = phi float [ %2629, %2627 ], [ %1975, %2165 ], [ %1975, %1971 ], [ %2629, %2698 ], [ %2629, %2696 ], [ %2629, %2664 ], [ %2629, %2649 ], [ %1975, %1984 ]
  %2715 = phi float [ %2630, %2627 ], [ %1976, %2165 ], [ %1976, %1971 ], [ %2630, %2698 ], [ %2630, %2696 ], [ %2630, %2664 ], [ %2630, %2649 ], [ %1976, %1984 ]
  %2716 = phi float [ %2631, %2627 ], [ %1977, %2165 ], [ %1977, %1971 ], [ %2631, %2698 ], [ %2631, %2696 ], [ %2631, %2664 ], [ %2631, %2649 ], [ %1977, %1984 ]
  %2717 = phi float [ %2632, %2627 ], [ %1978, %2165 ], [ %1978, %1971 ], [ %2632, %2698 ], [ %2632, %2696 ], [ %2632, %2664 ], [ %2632, %2649 ], [ %1978, %1984 ]
  %2718 = phi float [ %2633, %2627 ], [ %1979, %2165 ], [ %1979, %1971 ], [ %2633, %2698 ], [ %2633, %2696 ], [ %2633, %2664 ], [ %2633, %2649 ], [ %1979, %1984 ]
  %2719 = phi float [ %2634, %2627 ], [ %1980, %2165 ], [ %1980, %1971 ], [ %2634, %2698 ], [ %2634, %2696 ], [ %2634, %2664 ], [ %2634, %2649 ], [ %1980, %1984 ]
  %2720 = phi float [ %1981, %2627 ], [ %1981, %2165 ], [ %1981, %1971 ], [ %2709, %2698 ], [ %1981, %2696 ], [ %2695, %2664 ], [ %2661, %2649 ], [ %1981, %1984 ]
  %2721 = phi float [ %1982, %2627 ], [ %1982, %2165 ], [ %1982, %1971 ], [ %2706, %2698 ], [ %1982, %2696 ], [ %2672, %2664 ], [ %2658, %2649 ], [ %1982, %1984 ]
  %2722 = phi float [ %2635, %2627 ], [ %1983, %2165 ], [ %1983, %1971 ], [ %2635, %2698 ], [ %2635, %2696 ], [ %2635, %2664 ], [ %2635, %2649 ], [ %1983, %1984 ]
  br i1 %634, label %3449, label %2723

; <label>:2723                                    ; preds = %2710
  %2724 = icmp ult i32 %688, 4
  %2725 = add i32 %52, 72
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %52, 76
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = or i32 %2730, %2727
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %3449, label %2733

; <label>:2733                                    ; preds = %2723
  %2734 = and i32 %2727, 262144
  %2735 = icmp ne i32 %2734, 0
  %2736 = select i1 %2735, float %58, float 1.000000e+00
  %2737 = select i1 %2735, float %59, float 0.000000e+00
  %2738 = select i1 %2735, float %60, float 0.000000e+00
  %2739 = select i1 %2735, float %61, float 1.000000e+00
  %2740 = select i1 %2735, float %62, float %90
  %2741 = select i1 %2735, float %63, float %91
  %2742 = add i32 %52, 332
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = lshr i32 %2744, 16
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = fmul fast float %2746, 0x3F50624DE0000000
  %2748 = add i32 %52, 136
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = lshr i32 %2750, 16
  %2752 = and i32 %2751, 255
  %2753 = lshr i32 %2750, 24
  %2754 = add i32 %52, 340
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 65535
  %2758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2757)  ; LegacyF16ToF32(value)
  %2759 = lshr i32 %2756, 16
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = add i32 %52, 80
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = lshr i32 %2763, 22
  %2765 = shl nuw nsw i32 %2764, 5
  %2766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2765)  ; LegacyF16ToF32(value)
  %2767 = shl i32 %2763, 4
  %2768 = and i32 %2767, 32752
  %2769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2768)  ; LegacyF16ToF32(value)
  %2770 = lshr i32 %2763, 7
  %2771 = and i32 %2770, 32752
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 3
  %2775 = fmul fast float %2774, 1.000000e+03
  %2776 = fmul fast float %2775, %623
  %2777 = call float @dx.op.unary.f32(i32 22, float %2776)  ; Frc(value)
  %2778 = fadd fast float %2777, %611
  %2779 = fmul fast float %2775, %625
  %2780 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2781 = fadd fast float %2780, %612
  %2782 = fmul fast float %2747, %2775
  %2783 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2784 = fmul fast float %2783, 0x401921FB60000000
  %2785 = fadd fast float %2784, %2766
  %2786 = call float @dx.op.unary.f32(i32 13, float %2785)  ; Sin(value)
  %2787 = call float @dx.op.unary.f32(i32 12, float %2785)  ; Cos(value)
  %2788 = fsub fast float -0.000000e+00, %2786
  %2789 = fadd fast float %2740, -5.000000e-01
  %2790 = fadd fast float %2741, -5.000000e-01
  %2791 = fmul fast float %2758, %2789
  %2792 = fmul fast float %2760, %2790
  %2793 = fadd fast float %2791, 5.000000e-01
  %2794 = fadd fast float %2792, 5.000000e-01
  %2795 = fmul fast float %2769, %2793
  %2796 = fmul fast float %2772, %2794
  %2797 = fmul fast float %2787, %2795
  %2798 = call float @dx.op.tertiary.f32(i32 46, float %2788, float %2796, float %2797)  ; FMad(a,b,c)
  %2799 = fmul fast float %2786, %2795
  %2800 = call float @dx.op.tertiary.f32(i32 46, float %2787, float %2796, float %2799)  ; FMad(a,b,c)
  %2801 = fadd fast float %2778, %2798
  %2802 = fadd fast float %2781, %2800
  %2803 = icmp ugt i32 %2752, 1
  %2804 = icmp ugt i32 %2750, 33554431
  %2805 = or i1 %2804, %2803
  br i1 %2805, label %2806, label %2831

; <label>:2806                                    ; preds = %2733
  %2807 = add i32 %52, 276
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = lshr i32 %2809, 16
  %2811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2810)  ; LegacyF16ToF32(value)
  %2812 = fmul fast float %2774, %2811
  %2813 = call float @dx.op.unary.f32(i32 22, float %2812)  ; Frc(value)
  %2814 = mul nuw nsw i32 %2752, %2753
  %2815 = uitofp i32 %2814 to float
  %2816 = fmul fast float %2813, %2815
  %2817 = call float @dx.op.unary.f32(i32 27, float %2816)  ; Round_ni(value)
  %2818 = fptoui float %2817 to i32
  %2819 = urem i32 %2818, %2752
  %2820 = udiv i32 %2818, %2753
  %2821 = call float @dx.op.unary.f32(i32 22, float %2801)  ; Frc(value)
  %2822 = call float @dx.op.unary.f32(i32 22, float %2802)  ; Frc(value)
  %2823 = uitofp i32 %2819 to float
  %2824 = uitofp i32 %2820 to float
  %2825 = fadd fast float %2821, %2823
  %2826 = fadd fast float %2822, %2824
  %2827 = uitofp i32 %2752 to float
  %2828 = uitofp i32 %2753 to float
  %2829 = fdiv fast float %2825, %2827
  %2830 = fdiv fast float %2826, %2828
  br label %2831

; <label>:2831                                    ; preds = %2806, %2733
  %2832 = phi float [ %2829, %2806 ], [ %2801, %2733 ]
  %2833 = phi float [ %2830, %2806 ], [ %2802, %2733 ]
  %2834 = and i32 %2727, 256
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2882, label %2836

; <label>:2836                                    ; preds = %2831
  %2837 = add i32 %52, 468
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %2839, 0
  %2841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2842 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2841, %dx.types.Handle %105, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = add i32 %52, 148
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = shl i32 %2846, 4
  %2848 = and i32 %2847, 32752
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = lshr i32 %2846, 7
  %2851 = and i32 %2850, 32752
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = fsub fast float 1.000000e+00, %683
  %2854 = call float @dx.op.binary.f32(i32 35, float %2853, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2855 = bitcast float %683 to i32
  %2856 = sitofp i32 %2855 to float
  %2857 = fadd fast float %2856, 0xC1CFBF8940000000
  %2858 = fmul fast float %2852, %2857
  %2859 = fadd fast float %2858, 0x41CFBF8940000000
  %2860 = fptosi float %2859 to i32
  %2861 = bitcast i32 %2860 to float
  %2862 = bitcast float %2854 to i32
  %2863 = sitofp i32 %2862 to float
  %2864 = fadd fast float %2863, 0xC1CFBF8940000000
  %2865 = fmul fast float %2864, %2852
  %2866 = fadd fast float %2865, 0x41CFBF8940000000
  %2867 = fptosi float %2866 to i32
  %2868 = bitcast i32 %2867 to float
  %2869 = fmul fast float %2861, %2849
  %2870 = fmul fast float %2868, %2849
  %2871 = fsub fast float %2854, %2869
  %2872 = fadd fast float %2870, %2854
  %2873 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2874 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2875 = fsub fast float %2843, %2873
  %2876 = fsub fast float %2874, %2873
  %2877 = bitcast float %2876 to i32
  %2878 = sub nsw i32 2129859010, %2877
  %2879 = bitcast i32 %2878 to float
  %2880 = fmul fast float %2879, %2875
  %2881 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  br label %2882

; <label>:2882                                    ; preds = %2836, %2831
  %2883 = phi float [ %2881, %2836 ], [ %683, %2831 ]
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 128
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2904, label %2888

; <label>:2888                                    ; preds = %2882
  %2889 = add i32 %52, 452
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = add i32 %2891, 0
  %2893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2893, %dx.types.Handle %105, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2895 = extractvalue %dx.types.ResRet.f32 %2894, 0
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 524288
  %2899 = icmp ne i32 %2898, 0
  %2900 = fcmp fast ogt float %2895, 0x3FE0101020000000
  %2901 = select i1 %2900, float 1.000000e+00, float 0.000000e+00
  %2902 = select i1 %2899, float %2901, float %2895
  %2903 = fmul fast float %2902, %2883
  br label %2904

; <label>:2904                                    ; preds = %2888, %2882
  %2905 = phi float [ %2903, %2888 ], [ %2883, %2882 ]
  %2906 = fcmp fast ult float %2905, 0x3F70101020000000
  br i1 %2906, label %3449, label %2907

; <label>:2907                                    ; preds = %2904
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = and i32 %2909, 16
  %2911 = icmp eq i32 %2910, 0
  br i1 %2911, label %3110, label %2912

; <label>:2912                                    ; preds = %2907
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %52, 404
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = add i32 %2917, 0
  %2919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2919, %dx.types.Handle %104, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2921 = extractvalue %dx.types.ResRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.ResRet.f32 %2920, 1
  %2923 = extractvalue %dx.types.ResRet.f32 %2920, 2
  %2924 = extractvalue %dx.types.ResRet.f32 %2920, 3
  %2925 = and i32 %2914, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = lshr i32 %2914, 8
  %2928 = and i32 %2927, 255
  %2929 = uitofp i32 %2928 to float
  %2930 = fmul fast float %2924, %2926
  %2931 = fadd fast float %2930, %2929
  %2932 = fmul fast float %2931, 0x3F70101000000000
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 512
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %2945, label %2937

; <label>:2937                                    ; preds = %2912
  %2938 = add i32 %52, 484
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = add i32 %2940, 0
  %2942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2942, %dx.types.Handle %105, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2944 = extractvalue %dx.types.ResRet.f32 %2943, 0
  br label %2945

; <label>:2945                                    ; preds = %2937, %2912
  %2946 = phi float [ %2944, %2937 ], [ 1.000000e+00, %2912 ]
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 33554432
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3057, label %2951

; <label>:2951                                    ; preds = %2945
  %2952 = add i32 %52, 272
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 65535
  %2956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2955)  ; LegacyF16ToF32(value)
  %2957 = lshr i32 %2954, 16
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = add i32 %52, 276
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 65535
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = lshr i32 %2965, 24
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = and i32 %2965, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = lshr i32 %2965, 8
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = lshr i32 %2965, 16
  %2977 = and i32 %2976, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = add i32 %52, 268
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = lshr i32 %2982, 24
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = and i32 %2982, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = lshr i32 %2982, 8
  %2990 = and i32 %2989, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2982, 16
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = bitcast float %2921 to i32
  %2998 = ashr i32 %2997, 1
  %2999 = sub nsw i32 1597463174, %2998
  %3000 = bitcast i32 %2999 to float
  %3001 = fmul fast float %2921, 5.000000e-01
  %3002 = fmul fast float %3000, %3000
  %3003 = fmul fast float %3002, %3001
  %3004 = fsub fast float 1.500000e+00, %3003
  %3005 = fmul fast float %3000, %2921
  %3006 = fmul fast float %3005, %3004
  %3007 = bitcast float %2922 to i32
  %3008 = ashr i32 %3007, 1
  %3009 = sub nsw i32 1597463174, %3008
  %3010 = bitcast i32 %3009 to float
  %3011 = fmul fast float %2922, 5.000000e-01
  %3012 = fmul fast float %3010, %3010
  %3013 = fmul fast float %3012, %3011
  %3014 = fsub fast float 1.500000e+00, %3013
  %3015 = fmul fast float %3010, %2922
  %3016 = fmul fast float %3015, %3014
  %3017 = bitcast float %2923 to i32
  %3018 = ashr i32 %3017, 1
  %3019 = sub nsw i32 1597463174, %3018
  %3020 = bitcast i32 %3019 to float
  %3021 = fmul fast float %2923, 5.000000e-01
  %3022 = fmul fast float %3020, %3020
  %3023 = fmul fast float %3022, %3021
  %3024 = fsub fast float 1.500000e+00, %3023
  %3025 = fmul fast float %3020, %2923
  %3026 = fmul fast float %3025, %3024
  %3027 = fsub fast float %3006, %2988
  %3028 = fsub fast float %3016, %2992
  %3029 = fsub fast float %3026, %2996
  %3030 = fmul fast float %3027, %2956
  %3031 = fmul fast float %3028, %2958
  %3032 = fmul fast float %3029, %2963
  %3033 = fadd fast float %3030, %2971
  %3034 = fadd fast float %3031, %2975
  %3035 = fadd fast float %3032, %2979
  %3036 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3037 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = fmul fast float %3036, %3036
  %3040 = fmul fast float %3037, %3037
  %3041 = fmul fast float %3038, %3038
  %3042 = fsub fast float %3039, %2921
  %3043 = fsub fast float %3040, %2922
  %3044 = fsub fast float %3041, %2923
  %3045 = fmul fast float %3042, %2946
  %3046 = fmul fast float %3043, %2946
  %3047 = fmul fast float %3044, %2946
  %3048 = fadd fast float %3045, %2921
  %3049 = fadd fast float %3046, %2922
  %3050 = fadd fast float %3047, %2923
  %3051 = fadd fast float %2968, %2932
  %3052 = fsub fast float %3051, %2985
  %3053 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3054 = fsub fast float %3053, %2932
  %3055 = fmul fast float %3054, %2946
  %3056 = fadd fast float %3055, %2932
  br label %3110

; <label>:3057                                    ; preds = %2945
  %3058 = and i32 %2948, 134217728
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3094, label %3060

; <label>:3060                                    ; preds = %3057
  %3061 = call float @dx.op.unary.f32(i32 24, float %599)  ; Sqrt(value)
  %3062 = call float @dx.op.unary.f32(i32 24, float %600)  ; Sqrt(value)
  %3063 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %3064 = fadd fast float %3061, -5.000000e-01
  %3065 = fadd fast float %3062, -5.000000e-01
  %3066 = fadd fast float %3063, -5.000000e-01
  %3067 = fmul fast float %3064, %2946
  %3068 = fmul fast float %3065, %2946
  %3069 = fmul fast float %3066, %2946
  %3070 = fadd fast float %3067, 5.000000e-01
  %3071 = fadd fast float %3068, 5.000000e-01
  %3072 = fadd fast float %3069, 5.000000e-01
  %3073 = call float @dx.op.unary.f32(i32 24, float %2921)  ; Sqrt(value)
  %3074 = call float @dx.op.unary.f32(i32 24, float %2922)  ; Sqrt(value)
  %3075 = call float @dx.op.unary.f32(i32 24, float %2923)  ; Sqrt(value)
  %3076 = fmul fast float %3070, 2.000000e+00
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = fmul fast float %3077, %3073
  %3079 = fadd fast float %3078, %3076
  %3080 = fmul fast float %3079, %3073
  %3081 = fmul fast float %3071, 2.000000e+00
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = fmul fast float %3082, %3074
  %3084 = fadd fast float %3083, %3081
  %3085 = fmul fast float %3084, %3074
  %3086 = fmul fast float %3072, 2.000000e+00
  %3087 = fsub fast float 1.000000e+00, %3086
  %3088 = fmul fast float %3087, %3075
  %3089 = fadd fast float %3088, %3086
  %3090 = fmul fast float %3089, %3075
  %3091 = fmul fast float %3080, %3080
  %3092 = fmul fast float %3085, %3085
  %3093 = fmul fast float %3090, %3090
  br label %3110

; <label>:3094                                    ; preds = %3057
  %3095 = fmul fast float %599, %599
  %3096 = fmul fast float %600, %600
  %3097 = fmul fast float %601, %601
  %3098 = fadd fast float %3095, -1.000000e+00
  %3099 = fadd fast float %3096, -1.000000e+00
  %3100 = fadd fast float %3097, -1.000000e+00
  %3101 = fmul fast float %2946, %3098
  %3102 = fmul fast float %2946, %3099
  %3103 = fmul fast float %2946, %3100
  %3104 = fadd fast float %3101, 1.000000e+00
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fmul fast float %3104, %2921
  %3108 = fmul fast float %3105, %2922
  %3109 = fmul fast float %3106, %2923
  br label %3110

; <label>:3110                                    ; preds = %3094, %3060, %2951, %2907
  %3111 = phi float [ %3056, %2951 ], [ %2932, %3060 ], [ %2932, %3094 ], [ 0x3FA23C0BE0000000, %2907 ]
  %3112 = phi float [ %3048, %2951 ], [ %3091, %3060 ], [ %3107, %3094 ], [ 1.000000e+00, %2907 ]
  %3113 = phi float [ %3049, %2951 ], [ %3092, %3060 ], [ %3108, %3094 ], [ 1.000000e+00, %2907 ]
  %3114 = phi float [ %3050, %2951 ], [ %3093, %3060 ], [ %3109, %3094 ], [ 1.000000e+00, %2907 ]
  %3115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.i32 %3115, 1
  %3117 = and i32 %3116, 1
  %3118 = icmp ne i32 %3117, 0
  %3119 = add i32 %52, 356
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 32
  %3123 = icmp ne i32 %3122, 0
  %3124 = and i1 %3118, %3123
  %3125 = select i1 %3124, float 1.000000e+00, float %3112
  %3126 = select i1 %3124, float 0x3FD3333340000000, float %3113
  %3127 = select i1 %3124, float 0x3FD3333340000000, float %3114
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 32
  %3131 = icmp eq i32 %3130, 0
  br i1 %3131, label %3204, label %3132

; <label>:3132                                    ; preds = %3110
  %3133 = add i32 %52, 140
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %52, 420
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = add i32 %3138, 0
  %3140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3140, %dx.types.Handle %104, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.ResRet.f32 %3141, 1
  %3144 = extractvalue %dx.types.ResRet.f32 %3141, 2
  %3145 = extractvalue %dx.types.ResRet.f32 %3141, 3
  %3146 = and i32 %3135, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = lshr i32 %3135, 8
  %3149 = and i32 %3148, 255
  %3150 = uitofp i32 %3149 to float
  %3151 = lshr i32 %3135, 16
  %3152 = and i32 %3151, 255
  %3153 = uitofp i32 %3152 to float
  %3154 = fmul fast float %3153, 0x3F70101000000000
  %3155 = fmul fast float %3142, %3147
  %3156 = fadd fast float %3155, %3150
  %3157 = fmul fast float %3156, 0x3F70101000000000
  %3158 = fadd fast float %3143, -5.000000e-01
  %3159 = fadd fast float %3145, -5.000000e-01
  %3160 = fmul fast float %3158, %3154
  %3161 = fmul fast float %3159, %3154
  %3162 = fadd fast float %3160, 5.000000e-01
  %3163 = fadd fast float %3161, 5.000000e-01
  %3164 = fmul fast float %3162, 2.000000e+00
  %3165 = fadd fast float %3164, -1.000000e+00
  %3166 = fmul fast float %3163, 2.000000e+00
  %3167 = fadd fast float %3166, -1.000000e+00
  %3168 = fadd fast float %3165, %3167
  %3169 = fmul fast float %3168, 5.000000e-01
  %3170 = fsub fast float %3165, %3167
  %3171 = fmul fast float %3170, 5.000000e-01
  %3172 = call float @dx.op.unary.f32(i32 6, float %3169)  ; FAbs(value)
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = call float @dx.op.unary.f32(i32 6, float %3171)  ; FAbs(value)
  %3175 = fsub fast float %3173, %3174
  %3176 = call float @dx.op.dot3.f32(i32 55, float %3169, float %3171, float %3175, float %3169, float %3171, float %3175)  ; Dot3(ax,ay,az,bx,by,bz)
  %3177 = call float @dx.op.unary.f32(i32 25, float %3176)  ; Rsqrt(value)
  %3178 = fmul fast float %3169, %3177
  %3179 = fmul fast float %3171, %3177
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 67108864
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3200, label %3184

; <label>:3184                                    ; preds = %3132
  %3185 = add i32 %52, 328
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 65535
  %3189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3188)  ; LegacyF16ToF32(value)
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = lshr i32 %3187, 16
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = fsub fast float %3157, %3195
  %3197 = fmul fast float %3196, %3189
  %3198 = fadd fast float %3197, %3193
  %3199 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  br label %3200

; <label>:3200                                    ; preds = %3184, %3132
  %3201 = phi float [ %3199, %3184 ], [ %3157, %3132 ]
  %3202 = call float @dx.op.dot2.f32(i32 54, float %3178, float %3179, float %2736, float %2737)  ; Dot2(ax,ay,bx,by)
  %3203 = call float @dx.op.dot2.f32(i32 54, float %3178, float %3179, float %2738, float %2739)  ; Dot2(ax,ay,bx,by)
  br label %3204

; <label>:3204                                    ; preds = %3200, %3110
  %3205 = phi float [ %3201, %3200 ], [ 0x3FD6666660000000, %3110 ]
  %3206 = phi float [ %3202, %3200 ], [ 0.000000e+00, %3110 ]
  %3207 = phi float [ %3203, %3200 ], [ 0.000000e+00, %3110 ]
  %3208 = phi float [ %3144, %3200 ], [ 1.000000e+00, %3110 ]
  %3209 = add i32 %52, 208
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = lshr i32 %3211, 22
  %3213 = shl nuw nsw i32 %3212, 5
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 64
  %3218 = icmp eq i32 %3217, 0
  br i1 %3218, label %3252, label %3219

; <label>:3219                                    ; preds = %3204
  %3220 = add i32 %52, 436
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = add i32 %3222, 0
  %3224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 131072
  %3228 = icmp eq i32 %3227, 0
  %3229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3224, %dx.types.Handle %104, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3230 = extractvalue %dx.types.ResRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.ResRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.ResRet.f32 %3229, 2
  %3233 = fmul fast float %582, %3230
  %3234 = fmul fast float %583, %3231
  %3235 = fmul fast float %584, %3232
  br i1 %3228, label %3242, label %3236

; <label>:3236                                    ; preds = %3219
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 0
  %3239 = fmul fast float %3238, %3233
  %3240 = fmul fast float %3238, %3234
  %3241 = fmul fast float %3238, %3235
  br label %3242

; <label>:3242                                    ; preds = %3236, %3219
  %3243 = phi float [ %3239, %3236 ], [ %3233, %3219 ]
  %3244 = phi float [ %3240, %3236 ], [ %3234, %3219 ]
  %3245 = phi float [ %3241, %3236 ], [ %3235, %3219 ]
  %3246 = fmul fast float %3243, %3214
  %3247 = select i1 %250, float %3246, float %3243
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3247, float %3244, float %3245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = select i1 %250, float 0.000000e+00, float %3243
  %3250 = select i1 %250, float %3248, float %3244
  %3251 = select i1 %250, float 0.000000e+00, float %3245
  br label %3252

; <label>:3252                                    ; preds = %3242, %3204
  %3253 = phi float [ %3249, %3242 ], [ 0.000000e+00, %3204 ]
  %3254 = phi float [ %3250, %3242 ], [ 0.000000e+00, %3204 ]
  %3255 = phi float [ %3251, %3242 ], [ 0.000000e+00, %3204 ]
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = add i32 %52, 144
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = and i32 %3260, 255
  %3262 = uitofp i32 %3261 to float
  %3263 = lshr i32 %3260, 8
  %3264 = and i32 %3263, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = call float @dx.op.dot3.f32(i32 55, float %3125, float %3126, float %3127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3267 = fmul fast float %3265, %3266
  %3268 = fadd fast float %3267, %3262
  %3269 = fmul fast float %3268, 0x3F70101020000000
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  br i1 %2724, label %3271, label %3279

; <label>:3271                                    ; preds = %3252
  %3272 = fsub fast float 1.000000e+00, %2905
  %3273 = fmul fast float %3272, %2713
  %3274 = fmul fast float %3272, %2714
  %3275 = fmul fast float %3272, %2715
  %3276 = fmul fast float %3272, %2716
  %3277 = fmul fast float %3272, %2717
  %3278 = fmul fast float %3272, %2718
  br label %3279

; <label>:3279                                    ; preds = %3271, %3252
  %3280 = phi float [ %3273, %3271 ], [ %2713, %3252 ]
  %3281 = phi float [ %3274, %3271 ], [ %2714, %3252 ]
  %3282 = phi float [ %3275, %3271 ], [ %2715, %3252 ]
  %3283 = phi float [ %3276, %3271 ], [ %2716, %3252 ]
  %3284 = phi float [ %3277, %3271 ], [ %2717, %3252 ]
  %3285 = phi float [ %3278, %3271 ], [ %2718, %3252 ]
  %3286 = and i32 %3257, 3
  %3287 = icmp eq i32 %3286, 3
  br i1 %3287, label %3366, label %3288

; <label>:3288                                    ; preds = %3279
  %3289 = and i32 %3257, 16
  %3290 = icmp ne i32 %3289, 0
  %3291 = select i1 %3290, float %2905, float 0.000000e+00
  %3292 = icmp eq i32 %3286, 0
  br i1 %3292, label %3293, label %3321

; <label>:3293                                    ; preds = %3288
  %3294 = and i32 %3257, 64
  %3295 = icmp ne i32 %3294, 0
  %3296 = select i1 %3295, float %2905, float 0.000000e+00
  %3297 = fsub fast float %3125, %3280
  %3298 = fsub fast float %3126, %3281
  %3299 = fsub fast float %3127, %3282
  %3300 = fmul fast float %3291, %3297
  %3301 = fmul fast float %3291, %3298
  %3302 = fmul fast float %3291, %3299
  %3303 = fadd fast float %3300, %3280
  %3304 = fadd fast float %3301, %3281
  %3305 = fadd fast float %3302, %3282
  %3306 = fsub fast float %3111, %2719
  %3307 = fmul fast float %3291, %3306
  %3308 = fadd fast float %3307, %2719
  %3309 = fsub fast float %3253, %3283
  %3310 = fsub fast float %3254, %3284
  %3311 = fsub fast float %3255, %3285
  %3312 = fmul fast float %3296, %3309
  %3313 = fmul fast float %3296, %3310
  %3314 = fmul fast float %3296, %3311
  %3315 = fadd fast float %3312, %3283
  %3316 = fadd fast float %3313, %3284
  %3317 = fadd fast float %3314, %3285
  %3318 = fsub fast float %3270, %2722
  %3319 = fmul fast float %3291, %3318
  %3320 = fadd fast float %3319, %2722
  br label %3366

; <label>:3321                                    ; preds = %3288
  %3322 = icmp eq i32 %3286, 1
  br i1 %3322, label %3323, label %3336

; <label>:3323                                    ; preds = %3321
  %3324 = fadd fast float %3125, -1.000000e+00
  %3325 = fadd fast float %3126, -1.000000e+00
  %3326 = fadd fast float %3127, -1.000000e+00
  %3327 = fmul fast float %3291, %3324
  %3328 = fmul fast float %3291, %3325
  %3329 = fmul fast float %3291, %3326
  %3330 = fadd fast float %3327, 1.000000e+00
  %3331 = fadd fast float %3328, 1.000000e+00
  %3332 = fadd fast float %3329, 1.000000e+00
  %3333 = fmul fast float %3330, %3280
  %3334 = fmul fast float %3331, %3281
  %3335 = fmul fast float %3332, %3282
  br label %3366

; <label>:3336                                    ; preds = %3321
  %3337 = icmp eq i32 %3286, 2
  br i1 %3337, label %3338, label %3366

; <label>:3338                                    ; preds = %3336
  %3339 = call float @dx.op.unary.f32(i32 24, float %3125)  ; Sqrt(value)
  %3340 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3341 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3342 = fadd fast float %3339, -5.000000e-01
  %3343 = fadd fast float %3340, -5.000000e-01
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fmul fast float %3342, %3291
  %3346 = fmul fast float %3343, %3291
  %3347 = fmul fast float %3344, %3291
  %3348 = fadd fast float %3345, 5.000000e-01
  %3349 = fadd fast float %3346, 5.000000e-01
  %3350 = fadd fast float %3347, 5.000000e-01
  %3351 = fmul fast float %3348, 2.000000e+00
  %3352 = fsub fast float 1.000000e+00, %3351
  %3353 = fmul fast float %3352, %3280
  %3354 = fadd fast float %3353, %3351
  %3355 = fmul fast float %3354, %3280
  %3356 = fmul fast float %3349, 2.000000e+00
  %3357 = fsub fast float 1.000000e+00, %3356
  %3358 = fmul fast float %3357, %3281
  %3359 = fadd fast float %3358, %3356
  %3360 = fmul fast float %3359, %3281
  %3361 = fmul fast float %3350, 2.000000e+00
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = fmul fast float %3362, %3282
  %3364 = fadd fast float %3363, %3361
  %3365 = fmul fast float %3364, %3282
  br label %3366

; <label>:3366                                    ; preds = %3338, %3336, %3323, %3293, %3279
  %3367 = phi float [ %3280, %3279 ], [ %3355, %3338 ], [ %3280, %3336 ], [ %3333, %3323 ], [ %3303, %3293 ]
  %3368 = phi float [ %3281, %3279 ], [ %3360, %3338 ], [ %3281, %3336 ], [ %3334, %3323 ], [ %3304, %3293 ]
  %3369 = phi float [ %3282, %3279 ], [ %3365, %3338 ], [ %3282, %3336 ], [ %3335, %3323 ], [ %3305, %3293 ]
  %3370 = phi float [ %3283, %3279 ], [ %3283, %3338 ], [ %3283, %3336 ], [ %3283, %3323 ], [ %3315, %3293 ]
  %3371 = phi float [ %3284, %3279 ], [ %3284, %3338 ], [ %3284, %3336 ], [ %3284, %3323 ], [ %3316, %3293 ]
  %3372 = phi float [ %3285, %3279 ], [ %3285, %3338 ], [ %3285, %3336 ], [ %3285, %3323 ], [ %3317, %3293 ]
  %3373 = phi float [ %2719, %3279 ], [ %2719, %3338 ], [ %2719, %3336 ], [ %2719, %3323 ], [ %3308, %3293 ]
  %3374 = phi float [ %2722, %3279 ], [ %2722, %3338 ], [ %2722, %3336 ], [ %2722, %3323 ], [ %3320, %3293 ]
  %3375 = and i32 %3257, 12
  %3376 = icmp eq i32 %3375, 12
  br i1 %3376, label %3449, label %3377

; <label>:3377                                    ; preds = %3366
  %3378 = and i32 %3257, 2097184
  %3379 = icmp eq i32 %3378, 2097184
  %3380 = select i1 %3379, float %2905, float 0.000000e+00
  %3381 = and i32 %3257, 4194336
  %3382 = icmp eq i32 %3381, 4194336
  %3383 = select i1 %3382, float %2905, float 0.000000e+00
  %3384 = and i32 %3257, 8388640
  %3385 = icmp eq i32 %3384, 8388640
  %3386 = select i1 %3385, float %2905, float 0.000000e+00
  %3387 = icmp eq i32 %3375, 0
  br i1 %3387, label %3388, label %3401

; <label>:3388                                    ; preds = %3377
  %3389 = fsub fast float %3206, %2711
  %3390 = fsub fast float %3207, %2712
  %3391 = fmul fast float %3380, %3389
  %3392 = fmul fast float %3380, %3390
  %3393 = fadd fast float %3391, %2711
  %3394 = fadd fast float %3392, %2712
  %3395 = fsub fast float %3208, %2721
  %3396 = fmul fast float %3383, %3395
  %3397 = fadd fast float %3396, %2721
  %3398 = fsub fast float %3205, %2720
  %3399 = fmul fast float %3386, %3398
  %3400 = fadd fast float %3399, %2720
  br label %3449

; <label>:3401                                    ; preds = %3377
  %3402 = icmp eq i32 %3375, 4
  br i1 %3402, label %3403, label %3435

; <label>:3403                                    ; preds = %3401
  %3404 = fmul fast float %3380, %3206
  %3405 = fmul fast float %3380, %3207
  %3406 = fadd fast float %3404, %2711
  %3407 = fadd fast float %3405, %2712
  %3408 = call float @dx.op.binary.f32(i32 36, float %2721, float %3208)  ; FMin(a,b)
  %3409 = fsub fast float %3408, %2721
  %3410 = fmul fast float %3409, %3383
  %3411 = fadd fast float %3410, %2721
  %3412 = fadd fast float %3205, %2720
  %3413 = fmul fast float %3412, 0x3FF337FAE0000000
  %3414 = fmul fast float %2720, %2720
  %3415 = fmul fast float %3205, %3205
  %3416 = fadd fast float %3415, %3414
  %3417 = fmul fast float %3416, 0x3FE5152B00000000
  %3418 = fmul fast float %2720, 0xBFCC1F85E0000000
  %3419 = fmul fast float %3418, %3205
  %3420 = fadd fast float %3419, 0xBFE1363700000000
  %3421 = fadd fast float %3420, %3413
  %3422 = fsub fast float %3421, %3417
  %3423 = fmul fast float %3412, 0x3FBA6F0D00000000
  %3424 = fmul fast float %3416, 0x3FD0432880000000
  %3425 = fmul fast float %2720, 0xBFEF110800000000
  %3426 = fmul fast float %3425, %3205
  %3427 = fadd fast float %3426, 1.000000e+00
  %3428 = fsub fast float %3427, %3423
  %3429 = fadd fast float %3428, %3424
  %3430 = fdiv fast float %3422, %3429
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = fsub fast float %3431, %2720
  %3433 = fmul fast float %3432, %3386
  %3434 = fadd fast float %3433, %2720
  br label %3449

; <label>:3435                                    ; preds = %3401
  %3436 = icmp eq i32 %3375, 8
  br i1 %3436, label %3437, label %3449

; <label>:3437                                    ; preds = %3435
  %3438 = fmul fast float %3380, %3206
  %3439 = fmul fast float %3380, %3207
  %3440 = fadd fast float %3438, %2711
  %3441 = fadd fast float %3439, %2712
  %3442 = call float @dx.op.binary.f32(i32 36, float %2721, float %3208)  ; FMin(a,b)
  %3443 = fsub fast float %3442, %2721
  %3444 = fmul fast float %3443, %3383
  %3445 = fadd fast float %3444, %2721
  %3446 = fsub fast float %3205, %2720
  %3447 = fmul fast float %3386, %3446
  %3448 = fadd fast float %3447, %2720
  br label %3449

; <label>:3449                                    ; preds = %3437, %3435, %3403, %3388, %3366, %2904, %2723, %2710
  %3450 = phi float [ %2711, %3366 ], [ %2711, %2904 ], [ %2711, %2710 ], [ %2711, %2723 ], [ %3393, %3388 ], [ %3406, %3403 ], [ %2711, %3435 ], [ %3440, %3437 ]
  %3451 = phi float [ %2712, %3366 ], [ %2712, %2904 ], [ %2712, %2710 ], [ %2712, %2723 ], [ %3394, %3388 ], [ %3407, %3403 ], [ %2712, %3435 ], [ %3441, %3437 ]
  %3452 = phi float [ %3367, %3366 ], [ %2713, %2904 ], [ %2713, %2710 ], [ %2713, %2723 ], [ %3367, %3388 ], [ %3367, %3403 ], [ %3367, %3435 ], [ %3367, %3437 ]
  %3453 = phi float [ %3368, %3366 ], [ %2714, %2904 ], [ %2714, %2710 ], [ %2714, %2723 ], [ %3368, %3388 ], [ %3368, %3403 ], [ %3368, %3435 ], [ %3368, %3437 ]
  %3454 = phi float [ %3369, %3366 ], [ %2715, %2904 ], [ %2715, %2710 ], [ %2715, %2723 ], [ %3369, %3388 ], [ %3369, %3403 ], [ %3369, %3435 ], [ %3369, %3437 ]
  %3455 = phi float [ %3370, %3366 ], [ %2716, %2904 ], [ %2716, %2710 ], [ %2716, %2723 ], [ %3370, %3388 ], [ %3370, %3403 ], [ %3370, %3435 ], [ %3370, %3437 ]
  %3456 = phi float [ %3371, %3366 ], [ %2717, %2904 ], [ %2717, %2710 ], [ %2717, %2723 ], [ %3371, %3388 ], [ %3371, %3403 ], [ %3371, %3435 ], [ %3371, %3437 ]
  %3457 = phi float [ %3372, %3366 ], [ %2718, %2904 ], [ %2718, %2710 ], [ %2718, %2723 ], [ %3372, %3388 ], [ %3372, %3403 ], [ %3372, %3435 ], [ %3372, %3437 ]
  %3458 = phi float [ %3373, %3366 ], [ %2719, %2904 ], [ %2719, %2710 ], [ %2719, %2723 ], [ %3373, %3388 ], [ %3373, %3403 ], [ %3373, %3435 ], [ %3373, %3437 ]
  %3459 = phi float [ %2720, %3366 ], [ %2720, %2904 ], [ %2720, %2710 ], [ %2720, %2723 ], [ %3400, %3388 ], [ %3434, %3403 ], [ %2720, %3435 ], [ %3448, %3437 ]
  %3460 = phi float [ %2721, %3366 ], [ %2721, %2904 ], [ %2721, %2710 ], [ %2721, %2723 ], [ %3397, %3388 ], [ %3411, %3403 ], [ %2721, %3435 ], [ %3445, %3437 ]
  %3461 = phi float [ %3374, %3366 ], [ %2722, %2904 ], [ %2722, %2710 ], [ %2722, %2723 ], [ %3374, %3388 ], [ %3374, %3403 ], [ %3374, %3435 ], [ %3374, %3437 ]
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 0
  %3464 = call float @dx.op.dot2.f32(i32 54, float %3450, float %3451, float %3450, float %3451)  ; Dot2(ax,ay,bx,by)
  %3465 = fmul fast float %3464, 0x3FE3333340000000
  %3466 = fsub fast float 1.000000e+00, %3465
  %3467 = call float @dx.op.dot3.f32(i32 55, float %3450, float %3451, float %3466, float %3450, float %3451, float %3466)  ; Dot3(ax,ay,az,bx,by,bz)
  %3468 = call float @dx.op.unary.f32(i32 25, float %3467)  ; Rsqrt(value)
  %3469 = fmul fast float %3468, %3450
  %3470 = fmul fast float %3468, %3451
  %3471 = fmul fast float %3466, %3468
  %3472 = fmul fast float %3471, %117
  %3473 = fmul fast float %3471, %119
  %3474 = fmul fast float %3471, %121
  %3475 = fmul fast float %3469, %83
  %3476 = fmul fast float %3469, %84
  %3477 = fmul fast float %3469, %85
  %3478 = fadd fast float %3472, %3475
  %3479 = fadd fast float %3473, %3476
  %3480 = fadd fast float %3474, %3477
  %3481 = fmul fast float %131, %3470
  %3482 = fmul fast float %132, %3470
  %3483 = fmul fast float %133, %3470
  %3484 = fadd fast float %3478, %3481
  %3485 = fadd fast float %3479, %3482
  %3486 = fadd fast float %3480, %3483
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3485, float %3486, float %3484, float %3485, float %3486)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = call float @dx.op.unary.f32(i32 25, float %3487)  ; Rsqrt(value)
  %3489 = fmul fast float %3484, %3488
  %3490 = fmul fast float %3485, %3488
  %3491 = fmul fast float %3486, %3488
  %3492 = fadd fast float %3458, 0xBFB99999A0000000
  %3493 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3494 = fmul fast float %3493, 0x3FF1C71C80000000
  %3495 = call float @dx.op.binary.f32(i32 36, float %3458, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3496 = fsub fast float 1.000000e+00, %3494
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3498 = fmul fast float %3497, %3452
  %3499 = fmul fast float %3497, %3453
  %3500 = fmul fast float %3497, %3454
  %3501 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3502 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3503 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3504 = fmul fast float %3494, %3452
  %3505 = fmul fast float %3494, %3453
  %3506 = fmul fast float %3494, %3454
  %3507 = fadd fast float %3504, %3495
  %3508 = fadd fast float %3505, %3495
  %3509 = fadd fast float %3506, %3495
  %3510 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3511 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3512 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3513 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.i32 %3514, 3
  %3516 = and i32 %3515, 8
  %3517 = icmp ne i32 %3516, 0
  %3518 = call float @dx.op.binary.f32(i32 35, float %3501, float %3452)  ; FMax(a,b)
  %3519 = call float @dx.op.binary.f32(i32 35, float %3502, float %3452)  ; FMax(a,b)
  %3520 = call float @dx.op.binary.f32(i32 35, float %3503, float %3452)  ; FMax(a,b)
  %3521 = call float @dx.op.dot3.f32(i32 55, float %3501, float %3502, float %3503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = select i1 %250, float %3452, float %3501
  %3523 = select i1 %250, float %3521, float %3502
  %3524 = select i1 %250, float 1.000000e+00, float %3503
  %3525 = select i1 %3517, float %3518, float %3522
  %3526 = select i1 %3517, float %3519, float %3523
  %3527 = select i1 %3517, float %3520, float %3524
  %3528 = fmul fast float %3513, 0x3FE99999A0000000
  %3529 = fmul fast float %3513, 0x3FF75C2900000000
  %3530 = call float @dx.op.unary.f32(i32 7, float %3529)  ; Saturate(value)
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 0
  %3533 = extractvalue %dx.types.CBufRet.f32 %3531, 1
  %3534 = extractvalue %dx.types.CBufRet.f32 %3531, 2
  %3535 = fadd fast float %3532, %191
  %3536 = fadd fast float %3533, %192
  %3537 = fadd fast float %3534, %193
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.CBufRet.f32 %3538, 1
  %3541 = fsub fast float %3535, %3539
  %3542 = fsub fast float %3536, %3540
  %3543 = fmul fast float %3541, %3541
  %3544 = fmul fast float %3542, %3542
  %3545 = fadd fast float %3543, %3544
  %3546 = call float @dx.op.unary.f32(i32 24, float %3545)  ; Sqrt(value)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3538, 2
  %3548 = fcmp fast olt float %3546, %3547
  br i1 %3548, label %3549, label %3616

; <label>:3549                                    ; preds = %3449
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3557 = extractvalue %dx.types.CBufRet.f32 %3552, 1
  %3558 = extractvalue %dx.types.CBufRet.f32 %3554, 1
  %3559 = extractvalue %dx.types.CBufRet.f32 %3550, 3
  %3560 = extractvalue %dx.types.CBufRet.f32 %3552, 3
  %3561 = extractvalue %dx.types.CBufRet.f32 %3554, 3
  %3562 = fadd fast float %3559, %3535
  %3563 = fadd fast float %3560, %3536
  %3564 = fadd fast float %3561, %3537
  %3565 = fmul fast float %3562, %3551
  %3566 = call float @dx.op.tertiary.f32(i32 46, float %3563, float %3553, float %3565)  ; FMad(a,b,c)
  %3567 = call float @dx.op.tertiary.f32(i32 46, float %3564, float %3555, float %3566)  ; FMad(a,b,c)
  %3568 = fmul fast float %3562, %3556
  %3569 = call float @dx.op.tertiary.f32(i32 46, float %3563, float %3557, float %3568)  ; FMad(a,b,c)
  %3570 = call float @dx.op.tertiary.f32(i32 46, float %3564, float %3558, float %3569)  ; FMad(a,b,c)
  %3571 = fsub fast float %3567, %3559
  %3572 = fsub fast float %3570, %3560
  %3573 = fsub fast float %3571, %3539
  %3574 = fadd fast float %3573, %3547
  %3575 = fsub fast float %3572, %3540
  %3576 = fadd fast float %3575, %3547
  %3577 = extractvalue %dx.types.CBufRet.f32 %3538, 3
  %3578 = fmul fast float %3574, %3577
  %3579 = fmul fast float %3576, %3577
  %3580 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3581 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3582 = fsub fast float 1.000000e+00, %3580
  %3583 = fsub fast float 1.000000e+00, %3581
  %3584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %3582, float %3583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = fcmp fast ugt float %3585, 0.000000e+00
  br i1 %3586, label %3587, label %3890

; <label>:3587                                    ; preds = %3549
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 2
  %3590 = fmul fast float %3589, %3585
  %3591 = extractvalue %dx.types.CBufRet.f32 %3588, 3
  %3592 = fadd fast float %3591, %3590
  %3593 = extractvalue %dx.types.CBufRet.f32 %3554, 2
  %3594 = fadd fast float %3592, %3561
  %3595 = fmul fast float %3567, %3555
  %3596 = call float @dx.op.tertiary.f32(i32 46, float %3570, float %3558, float %3595)  ; FMad(a,b,c)
  %3597 = call float @dx.op.tertiary.f32(i32 46, float %3594, float %3593, float %3596)  ; FMad(a,b,c)
  %3598 = fsub fast float %3597, %3561
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 2
  %3601 = fsub fast float %3598, %3600
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %3582, float %3583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %3582, float %3583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = fadd fast float %3607, %3603
  %3611 = fmul fast float %3610, 0x3F847AE140000000
  %3612 = fadd fast float %3608, %3604
  %3613 = fmul fast float %3612, 0x3F847AE140000000
  %3614 = fadd fast float %3609, %3605
  %3615 = fmul fast float %3614, 0x3F847AE140000000
  br label %3890

; <label>:3616                                    ; preds = %3449
  %3617 = and i32 %229, 1
  %3618 = icmp eq i32 %3617, 0
  br i1 %3618, label %3890, label %3619

; <label>:3619                                    ; preds = %3616
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3623 = extractvalue %dx.types.CBufRet.f32 %3622, 0
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3627 = extractvalue %dx.types.CBufRet.f32 %3622, 1
  %3628 = extractvalue %dx.types.CBufRet.f32 %3624, 1
  %3629 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3630 = extractvalue %dx.types.CBufRet.f32 %3622, 3
  %3631 = extractvalue %dx.types.CBufRet.f32 %3624, 3
  %3632 = fadd fast float %3629, %3535
  %3633 = fadd fast float %3630, %3536
  %3634 = fadd fast float %3631, %3537
  %3635 = fmul fast float %3632, %3621
  %3636 = call float @dx.op.tertiary.f32(i32 46, float %3633, float %3623, float %3635)  ; FMad(a,b,c)
  %3637 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3625, float %3636)  ; FMad(a,b,c)
  %3638 = fmul fast float %3632, %3626
  %3639 = call float @dx.op.tertiary.f32(i32 46, float %3633, float %3627, float %3638)  ; FMad(a,b,c)
  %3640 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3628, float %3639)  ; FMad(a,b,c)
  %3641 = fsub fast float %3637, %3629
  %3642 = fsub fast float %3640, %3630
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.CBufRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %3647 = extractvalue %dx.types.CBufRet.f32 %3643, 3
  %3648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3649 = extractvalue %dx.types.CBufRet.f32 %3648, 3
  %3650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.i32 %3650, 0
  %3652 = extractvalue %dx.types.CBufRet.i32 %3650, 1
  %3653 = udiv i32 %3652, %3651
  %3654 = fsub fast float %3641, %3644
  %3655 = fsub fast float %3642, %3645
  %3656 = call float @dx.op.binary.f32(i32 35, float %3654, float 0.000000e+00)  ; FMax(a,b)
  %3657 = call float @dx.op.binary.f32(i32 35, float %3655, float 0.000000e+00)  ; FMax(a,b)
  %3658 = call float @dx.op.binary.f32(i32 36, float %3656, float %3646)  ; FMin(a,b)
  %3659 = call float @dx.op.binary.f32(i32 36, float %3657, float %3647)  ; FMin(a,b)
  %3660 = add i32 %3651, -1
  %3661 = add i32 %3653, -1
  %3662 = fmul fast float %3658, %3649
  %3663 = fmul fast float %3659, %3649
  %3664 = fptoui float %3662 to i32
  %3665 = fptoui float %3663 to i32
  %3666 = call i32 @dx.op.binary.i32(i32 40, i32 %3664, i32 %3660)  ; UMin(a,b)
  %3667 = call i32 @dx.op.binary.i32(i32 40, i32 %3665, i32 %3661)  ; UMin(a,b)
  %3668 = mul i32 %3667, %3651
  %3669 = add i32 %3668, %3666
  %3670 = shl i32 %3669, 2
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = icmp eq i32 %3672, -1
  br i1 %3673, label %3890, label %3674

; <label>:3674                                    ; preds = %3619
  %3675 = mul i32 %3672, 148
  %3676 = add i32 %3675, 4
  %3677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = add i32 %3675, 8
  %3680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = add i32 %3675, 36
  %3683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = add i32 %3675, 60
  %3686 = add i32 %3675, 92
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = add i32 %3675, 116
  %3690 = fsub fast float %3641, %3678
  %3691 = fsub fast float %3642, %3681
  %3692 = fmul fast float %3649, %3690
  %3693 = fmul fast float %3649, %3691
  %3694 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3695 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3696 = fsub fast float 1.000000e+00, %3695
  %3697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3698 = extractvalue %dx.types.CBufRet.f32 %3697, 2
  %3699 = call float @dx.op.unary.f32(i32 83, float %3694)  ; DerivCoarseX(value)
  %3700 = call float @dx.op.unary.f32(i32 83, float %3696)  ; DerivCoarseX(value)
  %3701 = call float @dx.op.unary.f32(i32 84, float %3694)  ; DerivCoarseY(value)
  %3702 = call float @dx.op.unary.f32(i32 84, float %3696)  ; DerivCoarseY(value)
  %3703 = fmul fast float %3699, %3698
  %3704 = fmul fast float %3700, %3698
  %3705 = fmul fast float %3701, %3698
  %3706 = fmul fast float %3702, %3698
  %3707 = call float @dx.op.dot2.f32(i32 54, float %3705, float %3706, float %3705, float %3706)  ; Dot2(ax,ay,bx,by)
  %3708 = call float @dx.op.dot2.f32(i32 54, float %3703, float %3704, float %3703, float %3704)  ; Dot2(ax,ay,bx,by)
  %3709 = call float @dx.op.binary.f32(i32 35, float %3708, float %3707)  ; FMax(a,b)
  %3710 = call float @dx.op.unary.f32(i32 23, float %3709)  ; Log(value)
  %3711 = fmul fast float %3710, 5.000000e-01
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 1
  %3714 = fadd fast float %3713, %3711
  %3715 = call float @dx.op.binary.f32(i32 35, float %3714, float 0.000000e+00)  ; FMax(a,b)
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 3
  %3718 = fadd fast float %3717, %3715
  %3719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3719, 3
  %3721 = fadd fast float %3718, %3720
  %3722 = add i32 %3688, 0
  %3723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3722, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3724 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3723, i32 0)  ; GetDimensions(handle,mipLevel)
  %3725 = extractvalue %dx.types.Dimensions %3724, 0
  %3726 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3725)  ; FirstbitLo(value)
  %3727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.i32 %3727, 1
  %3729 = sub nsw i32 %3728, %3726
  %3730 = sitofp i32 %3729 to float
  %3731 = fsub fast float %3721, %3730
  %3732 = call float @dx.op.binary.f32(i32 35, float %3731, float 0.000000e+00)  ; FMax(a,b)
  %3733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3723, %dx.types.Handle %42, float %3694, float %3696, float %3684, float undef, i32 0, i32 0, i32 undef, float %3732)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3735 = fcmp ule float %3734, 0x3FE0101020000000
  %3736 = extractvalue %dx.types.CBufRet.i32 %3727, 0
  %3737 = and i32 %3736, 128
  %3738 = icmp ne i32 %3737, 0
  %3739 = and i1 %3735, %3738
  br i1 %3739, label %3890, label %3740

; <label>:3740                                    ; preds = %3674
  %3741 = add i32 %3675, 20
  %3742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = add i32 %3675, 24
  %3745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = add i32 %3675, 40
  %3748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3750 = add i32 %3675, 96
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 2
  %3755 = fmul fast float %3754, %3694
  %3756 = fmul fast float %3754, %3696
  %3757 = extractvalue %dx.types.CBufRet.f32 %3753, 3
  %3758 = fadd fast float %3755, %3757
  %3759 = fadd fast float %3756, %3757
  %3760 = add i32 %3752, 0
  %3761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3760, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3762 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3761, i32 0)  ; GetDimensions(handle,mipLevel)
  %3763 = extractvalue %dx.types.Dimensions %3762, 0
  %3764 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3763)  ; FirstbitLo(value)
  %3765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.i32 %3765, 1
  %3767 = sub nsw i32 %3766, %3764
  %3768 = sitofp i32 %3767 to float
  %3769 = fsub fast float %3718, %3768
  %3770 = call float @dx.op.binary.f32(i32 35, float %3769, float 0.000000e+00)  ; FMax(a,b)
  %3771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3761, %dx.types.Handle %42, float %3758, float %3759, float %3749, float undef, i32 0, i32 0, i32 undef, float %3770)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = fmul fast float %3772, %3743
  %3774 = fadd fast float %3773, %3746
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 3
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 3
  %3783 = extractvalue %dx.types.CBufRet.f32 %3775, 3
  %3784 = fadd fast float %3780, %3641
  %3785 = fadd fast float %3782, %3642
  %3786 = fadd fast float %3774, %3783
  %3787 = fmul fast float %3784, %3776
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3785, float %3777, float %3787)  ; FMad(a,b,c)
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3786, float %3778, float %3788)  ; FMad(a,b,c)
  %3790 = fsub fast float %3789, %3783
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 2
  %3793 = fsub fast float %3790, %3792
  %3794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.i32 %3794, 0
  %3796 = call i32 @dx.op.binary.i32(i32 40, i32 %3672, i32 %3795)  ; UMin(a,b)
  %3797 = mul i32 %3796, 36
  %3798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.i32 %3798, 0
  %3800 = add i32 %3797, 4
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = fmul fast float %3802, %3694
  %3804 = fmul fast float %3802, %3696
  %3805 = extractvalue %dx.types.CBufRet.f32 %3801, 1
  %3806 = fadd fast float %3803, %3805
  %3807 = fadd fast float %3804, %3805
  %3808 = icmp eq i32 %3799, 0
  br i1 %3808, label %3877, label %3809

; <label>:3809                                    ; preds = %3740
  br label %3810

; <label>:3810                                    ; preds = %3867, %3809
  %3811 = phi float [ %3868, %3867 ], [ 0.000000e+00, %3809 ]
  %3812 = phi float [ %3869, %3867 ], [ 0.000000e+00, %3809 ]
  %3813 = phi float [ %3870, %3867 ], [ 0.000000e+00, %3809 ]
  %3814 = phi float [ %3871, %3867 ], [ 0.000000e+00, %3809 ]
  %3815 = phi float [ %3872, %3867 ], [ 0.000000e+00, %3809 ]
  %3816 = phi float [ %3873, %3867 ], [ 0.000000e+00, %3809 ]
  %3817 = phi i32 [ %3874, %3867 ], [ 0, %3809 ]
  %3818 = shl i32 %3817, 2
  %3819 = add i32 %3685, %3818
  %3820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.f32 %3820, 0
  %3822 = add i32 %3689, %3818
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = add i32 %3824, 0
  %3826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3825, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3827 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3826, i32 0)  ; GetDimensions(handle,mipLevel)
  %3828 = extractvalue %dx.types.Dimensions %3827, 0
  %3829 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3828)  ; FirstbitLo(value)
  %3830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.i32 %3830, 1
  %3832 = sub nsw i32 %3831, %3829
  %3833 = sitofp i32 %3832 to float
  %3834 = fsub fast float %3718, %3833
  %3835 = call float @dx.op.binary.f32(i32 35, float %3834, float 0.000000e+00)  ; FMax(a,b)
  %3836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3826, %dx.types.Handle %42, float %3806, float %3807, float %3821, float undef, i32 0, i32 0, i32 undef, float %3835)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = fcmp fast ogt float %3837, 0.000000e+00
  br i1 %3838, label %3839, label %3867

; <label>:3839                                    ; preds = %3810
  %3840 = add i32 %3800, %3818
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = and i32 %3842, 32767
  %3844 = mul nuw nsw i32 %3843, 928
  %3845 = add nuw nsw i32 %3844, 48
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = add nuw nsw i32 %3844, 60
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = fmul fast float %3847, %3837
  %3856 = fmul fast float %3848, %3837
  %3857 = fmul fast float %3849, %3837
  %3858 = fadd fast float %3855, %3811
  %3859 = fadd fast float %3856, %3812
  %3860 = fadd fast float %3857, %3813
  %3861 = fmul fast float %3852, %3837
  %3862 = fmul fast float %3853, %3837
  %3863 = fmul fast float %3854, %3837
  %3864 = fadd fast float %3861, %3814
  %3865 = fadd fast float %3862, %3815
  %3866 = fadd fast float %3863, %3816
  br label %3867

; <label>:3867                                    ; preds = %3839, %3810
  %3868 = phi float [ %3858, %3839 ], [ %3811, %3810 ]
  %3869 = phi float [ %3859, %3839 ], [ %3812, %3810 ]
  %3870 = phi float [ %3860, %3839 ], [ %3813, %3810 ]
  %3871 = phi float [ %3864, %3839 ], [ %3814, %3810 ]
  %3872 = phi float [ %3865, %3839 ], [ %3815, %3810 ]
  %3873 = phi float [ %3866, %3839 ], [ %3816, %3810 ]
  %3874 = add nuw i32 %3817, 1
  %3875 = icmp eq i32 %3874, %3799
  br i1 %3875, label %3876, label %3810

; <label>:3876                                    ; preds = %3867
  br label %3877

; <label>:3877                                    ; preds = %3876, %3740
  %3878 = phi float [ 0.000000e+00, %3740 ], [ %3868, %3876 ]
  %3879 = phi float [ 0.000000e+00, %3740 ], [ %3869, %3876 ]
  %3880 = phi float [ 0.000000e+00, %3740 ], [ %3870, %3876 ]
  %3881 = phi float [ 0.000000e+00, %3740 ], [ %3871, %3876 ]
  %3882 = phi float [ 0.000000e+00, %3740 ], [ %3872, %3876 ]
  %3883 = phi float [ 0.000000e+00, %3740 ], [ %3873, %3876 ]
  %3884 = fadd fast float %3881, %3878
  %3885 = fmul fast float %3884, 0x3F847AE140000000
  %3886 = fadd fast float %3882, %3879
  %3887 = fmul fast float %3886, 0x3F847AE140000000
  %3888 = fadd fast float %3883, %3880
  %3889 = fmul fast float %3888, 0x3F847AE140000000
  br label %3890

; <label>:3890                                    ; preds = %3877, %3674, %3619, %3616, %3587, %3549
  %3891 = phi float [ %3601, %3587 ], [ -1.310720e+05, %3549 ], [ %3793, %3877 ], [ -1.310720e+05, %3619 ], [ -1.310720e+05, %3674 ], [ -1.310720e+05, %3616 ]
  %3892 = phi float [ %3611, %3587 ], [ 0.000000e+00, %3549 ], [ %3885, %3877 ], [ 0.000000e+00, %3619 ], [ 0.000000e+00, %3674 ], [ 0.000000e+00, %3616 ]
  %3893 = phi float [ %3613, %3587 ], [ 0.000000e+00, %3549 ], [ %3887, %3877 ], [ 0.000000e+00, %3619 ], [ 0.000000e+00, %3674 ], [ 0.000000e+00, %3616 ]
  %3894 = phi float [ %3615, %3587 ], [ 0.000000e+00, %3549 ], [ %3889, %3877 ], [ 0.000000e+00, %3619 ], [ 0.000000e+00, %3674 ], [ 0.000000e+00, %3616 ]
  %3895 = phi i1 [ true, %3587 ], [ false, %3549 ], [ true, %3877 ], [ false, %3619 ], [ false, %3674 ], [ false, %3616 ]
  %3896 = and i32 %229, 3
  %3897 = icmp eq i32 %3896, 1
  %3898 = select i1 %3897, float 1.000000e+00, float 0.000000e+00
  %3899 = fsub fast float %3891, %193
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = select i1 %3895, float %3900, float 1.000000e+00
  %3902 = fmul fast float %3901, %3898
  %3903 = icmp eq i32 %3896, 3
  %3904 = select i1 %3903, float 1.000000e+00, float %3902
  %3905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3904)  ; FMax(a,b)
  %3906 = fcmp fast olt float %3904, 1.000000e+00
  %3907 = fcmp uge float %68, 0.000000e+00
  %3908 = and i1 %3907, %3906
  br i1 %3908, label %3909, label %3919

; <label>:3909                                    ; preds = %3890
  %3910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %42, float %68, float %69, float %70, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.ResRet.f32 %3910, 1
  %3913 = extractvalue %dx.types.ResRet.f32 %3910, 2
  %3914 = fadd fast float %3911, %3905
  %3915 = fcmp ule float %67, 0.000000e+00
  %3916 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = select i1 %3915, float %3916, float 1.000000e+00
  %3918 = fmul fast float %3917, %3913
  br label %3919

; <label>:3919                                    ; preds = %3909, %3890
  %3920 = phi float [ %3914, %3909 ], [ %3905, %3890 ]
  %3921 = phi float [ %3912, %3909 ], [ 0.000000e+00, %3890 ]
  %3922 = phi float [ %3918, %3909 ], [ 0.000000e+00, %3890 ]
  %3923 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3924 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3925 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3926 = fcmp fast une float %3924, 0.000000e+00
  %3927 = fcmp fast une float %3925, 0.000000e+00
  %3928 = or i1 %3926, %3927
  br i1 %3928, label %3929, label %4488

; <label>:3929                                    ; preds = %3919
  br i1 %3926, label %3930, label %4203

; <label>:3930                                    ; preds = %3929
  %3931 = call float @dx.op.unary.f32(i32 23, float %3460)  ; Log(value)
  %3932 = fmul fast float %3931, 4.000000e+00
  %3933 = call float @dx.op.unary.f32(i32 21, float %3932)  ; Exp(value)
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = fmul fast float %3935, %54
  %3937 = fmul fast float %3935, %55
  %3938 = fmul fast float %3935, %56
  %3939 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %3940 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %3941 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %3942 = call float @dx.op.unary.f32(i32 23, float %3939)  ; Log(value)
  %3943 = call float @dx.op.unary.f32(i32 23, float %3940)  ; Log(value)
  %3944 = call float @dx.op.unary.f32(i32 23, float %3941)  ; Log(value)
  %3945 = fmul fast float %3942, 4.000000e+00
  %3946 = fmul fast float %3943, 4.000000e+00
  %3947 = fmul fast float %3944, 4.000000e+00
  %3948 = call float @dx.op.unary.f32(i32 21, float %3945)  ; Exp(value)
  %3949 = call float @dx.op.unary.f32(i32 21, float %3946)  ; Exp(value)
  %3950 = call float @dx.op.unary.f32(i32 21, float %3947)  ; Exp(value)
  %3951 = fadd fast float %3949, %3948
  %3952 = fadd fast float %3951, %3950
  %3953 = fdiv fast float 1.000000e+00, %3952
  %3954 = fmul fast float %3953, %3948
  %3955 = fcmp fast ogt float %64, 0.000000e+00
  %3956 = fcmp fast ogt float %65, 0.000000e+00
  %3957 = fcmp fast ogt float %66, 0.000000e+00
  %3958 = fcmp fast olt float %64, 0.000000e+00
  %3959 = fcmp fast olt float %65, 0.000000e+00
  %3960 = fcmp fast olt float %66, 0.000000e+00
  %3961 = zext i1 %3955 to i32
  %3962 = zext i1 %3956 to i32
  %3963 = zext i1 %3957 to i32
  %3964 = zext i1 %3958 to i32
  %3965 = zext i1 %3959 to i32
  %3966 = zext i1 %3960 to i32
  %3967 = sub nsw i32 %3961, %3964
  %3968 = sub nsw i32 %3962, %3965
  %3969 = sub nsw i32 %3963, %3966
  %3970 = call float @dx.op.unary.f32(i32 83, float %3936)  ; DerivCoarseX(value)
  %3971 = call float @dx.op.unary.f32(i32 83, float %3937)  ; DerivCoarseX(value)
  %3972 = call float @dx.op.unary.f32(i32 83, float %3938)  ; DerivCoarseX(value)
  %3973 = call float @dx.op.unary.f32(i32 84, float %3936)  ; DerivCoarseY(value)
  %3974 = call float @dx.op.unary.f32(i32 84, float %3937)  ; DerivCoarseY(value)
  %3975 = call float @dx.op.unary.f32(i32 84, float %3938)  ; DerivCoarseY(value)
  %3976 = fcmp fast ole float %261, %3954
  %3977 = fmul fast float %3953, %3951
  %3978 = fcmp fast ole float %261, %3977
  %3979 = select i1 %3978, float %3938, float %3936
  %3980 = select i1 %3978, float %3936, float %3937
  %3981 = select i1 %3976, float %3937, float %3979
  %3982 = select i1 %3976, float %3938, float %3980
  %3983 = select i1 %3978, float %3972, float %3970
  %3984 = select i1 %3978, float %3970, float %3971
  %3985 = select i1 %3976, float %3971, float %3983
  %3986 = select i1 %3976, float %3972, float %3984
  %3987 = select i1 %3978, float %3975, float %3973
  %3988 = select i1 %3978, float %3973, float %3974
  %3989 = select i1 %3976, float %3974, float %3987
  %3990 = select i1 %3976, float %3975, float %3988
  %3991 = call float @dx.op.unary.f32(i32 27, float %3981)  ; Round_ni(value)
  %3992 = call float @dx.op.unary.f32(i32 27, float %3982)  ; Round_ni(value)
  %3993 = fptosi float %3991 to i32
  %3994 = fptosi float %3992 to i32
  %3995 = xor i32 %3994, %3993
  %3996 = sitofp i32 %3995 to float
  %3997 = fptosi float %3996 to i32
  %3998 = sitofp i32 %3997 to float
  %3999 = fmul fast float %3998, 0x3FE3C6EF40000000
  %4000 = frem fast float %3991, 2.560000e+02
  %4001 = frem fast float %3992, 2.560000e+02
  %4002 = fptoui float %4000 to i32
  %4003 = fptoui float %4001 to i32
  %4004 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4002, i32 %4003, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = extractvalue %dx.types.ResRet.f32 %4004, 1
  %4007 = extractvalue %dx.types.ResRet.f32 %4004, 2
  %4008 = fadd fast float %4005, %3999
  %4009 = fadd fast float %4006, %3999
  %4010 = fadd fast float %4007, %3999
  %4011 = call float @dx.op.unary.f32(i32 22, float %4008)  ; Frc(value)
  %4012 = call float @dx.op.unary.f32(i32 22, float %4009)  ; Frc(value)
  %4013 = call float @dx.op.unary.f32(i32 22, float %4010)  ; Frc(value)
  %4014 = fmul fast float %4013, 0x401921FB60000000
  %4015 = call float @dx.op.unary.f32(i32 13, float %4014)  ; Sin(value)
  %4016 = call float @dx.op.unary.f32(i32 12, float %4014)  ; Cos(value)
  %4017 = fsub fast float -0.000000e+00, %4016
  %4018 = fmul fast float %4016, %3981
  %4019 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %3982, float %4018)  ; FMad(a,b,c)
  %4020 = fmul fast float %4015, %3981
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %3982, float %4020)  ; FMad(a,b,c)
  %4022 = fadd fast float %4019, %4011
  %4023 = fadd fast float %4021, %4012
  %4024 = extractvalue %dx.types.CBufRet.f32 %3934, 3
  %4025 = bitcast float %4024 to i32
  %4026 = icmp eq i32 %4025, 0
  br i1 %4026, label %4065, label %4027

; <label>:4027                                    ; preds = %3930
  %4028 = add i32 %4025, 0
  %4029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4030 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4029, %dx.types.Handle %105, float %4022, float %4023, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3986, float undef, float %3989, float %3990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4034 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4035 = fsub fast float 1.000000e+00, %3924
  %4036 = call float @dx.op.binary.f32(i32 35, float %4035, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4037 = bitcast float %3924 to i32
  %4038 = sitofp i32 %4037 to float
  %4039 = fadd fast float %4038, 0xC1CFBF8940000000
  %4040 = fmul fast float %4034, %4039
  %4041 = fadd fast float %4040, 0x41CFBF8940000000
  %4042 = fptosi float %4041 to i32
  %4043 = bitcast i32 %4042 to float
  %4044 = bitcast float %4036 to i32
  %4045 = sitofp i32 %4044 to float
  %4046 = fadd fast float %4045, 0xC1CFBF8940000000
  %4047 = fmul fast float %4046, %4034
  %4048 = fadd fast float %4047, 0x41CFBF8940000000
  %4049 = fptosi float %4048 to i32
  %4050 = bitcast i32 %4049 to float
  %4051 = fmul fast float %4043, %4033
  %4052 = fmul fast float %4050, %4033
  %4053 = fsub fast float %4036, %4051
  %4054 = fadd fast float %4052, %4036
  %4055 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4056 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4057 = fsub fast float %4031, %4055
  %4058 = fsub fast float %4056, %4055
  %4059 = bitcast float %4058 to i32
  %4060 = sub nsw i32 2129859010, %4059
  %4061 = bitcast i32 %4060 to float
  %4062 = fmul fast float %4061, %4057
  %4063 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4064 = fcmp fast olt float %4063, 0x3F70101020000000
  br i1 %4064, label %4203, label %4065

; <label>:4065                                    ; preds = %4027, %3930
  %4066 = phi float [ %4063, %4027 ], [ %3924, %3930 ]
  %4067 = fmul fast float %4066, %3933
  %4068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.i32 %4068, 1
  %4070 = extractvalue %dx.types.CBufRet.i32 %4068, 0
  %4071 = add i32 %4070, 0
  %4072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4073 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4072, %dx.types.Handle %104, float %4022, float %4023, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3986, float undef, float %3989, float %3990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.ResRet.f32 %4073, 1
  %4076 = extractvalue %dx.types.ResRet.f32 %4073, 2
  %4077 = extractvalue %dx.types.ResRet.f32 %4073, 3
  %4078 = and i32 %4069, 255
  %4079 = uitofp i32 %4078 to float
  %4080 = lshr i32 %4069, 8
  %4081 = and i32 %4080, 255
  %4082 = uitofp i32 %4081 to float
  %4083 = fmul fast float %4077, %4079
  %4084 = fadd fast float %4083, %4082
  %4085 = fmul fast float %4084, 0x3F70101000000000
  %4086 = fadd fast float %4085, 0xBFB99999A0000000
  %4087 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4088 = fmul fast float %4087, 0x3FF1C71C80000000
  %4089 = call float @dx.op.binary.f32(i32 36, float %4085, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4090 = fsub fast float 1.000000e+00, %4088
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %4091, %4074
  %4093 = fmul fast float %4091, %4075
  %4094 = fmul fast float %4091, %4076
  %4095 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4096 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4097 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4098 = fmul fast float %4088, %4074
  %4099 = fmul fast float %4088, %4075
  %4100 = fmul fast float %4088, %4076
  %4101 = fadd fast float %4098, %4089
  %4102 = fadd fast float %4099, %4089
  %4103 = fadd fast float %4100, %4089
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.i32 %4107, 3
  %4109 = extractvalue %dx.types.CBufRet.i32 %4107, 2
  %4110 = add i32 %4109, 0
  %4111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4111, %dx.types.Handle %104, float %4022, float %4023, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3986, float undef, float %3989, float %3990, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4115 = extractvalue %dx.types.ResRet.f32 %4112, 2
  %4116 = extractvalue %dx.types.ResRet.f32 %4112, 3
  %4117 = and i32 %4108, 255
  %4118 = uitofp i32 %4117 to float
  %4119 = lshr i32 %4108, 8
  %4120 = and i32 %4119, 255
  %4121 = uitofp i32 %4120 to float
  %4122 = lshr i32 %4108, 16
  %4123 = and i32 %4122, 255
  %4124 = uitofp i32 %4123 to float
  %4125 = fmul fast float %4124, 0x3F70101000000000
  %4126 = fmul fast float %4113, %4118
  %4127 = fadd fast float %4126, %4121
  %4128 = fmul fast float %4127, 0x3F70101000000000
  %4129 = fadd fast float %4114, -5.000000e-01
  %4130 = fadd fast float %4116, -5.000000e-01
  %4131 = fmul fast float %4129, %4125
  %4132 = fmul fast float %4130, %4125
  %4133 = fadd fast float %4131, 5.000000e-01
  %4134 = fadd fast float %4132, 5.000000e-01
  %4135 = fmul fast float %4133, 2.000000e+00
  %4136 = fadd fast float %4135, -1.000000e+00
  %4137 = fmul fast float %4134, 2.000000e+00
  %4138 = fadd fast float %4137, -1.000000e+00
  %4139 = fadd fast float %4136, %4138
  %4140 = fmul fast float %4139, 5.000000e-01
  %4141 = fsub fast float %4136, %4138
  %4142 = fmul fast float %4141, 5.000000e-01
  %4143 = call float @dx.op.unary.f32(i32 6, float %4140)  ; FAbs(value)
  %4144 = fsub fast float 1.000000e+00, %4143
  %4145 = call float @dx.op.unary.f32(i32 6, float %4142)  ; FAbs(value)
  %4146 = fsub fast float %4144, %4145
  %4147 = call float @dx.op.dot3.f32(i32 55, float %4140, float %4142, float %4146, float %4140, float %4142, float %4146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4148 = call float @dx.op.unary.f32(i32 25, float %4147)  ; Rsqrt(value)
  %4149 = fmul fast float %4140, %4148
  %4150 = fmul fast float %4142, %4148
  %4151 = select i1 %3978, i32 %3968, i32 %3969
  %4152 = select i1 %3976, i32 %3967, i32 %4151
  %4153 = sitofp i32 %4152 to float
  %4154 = fmul fast float %4146, %4153
  %4155 = fmul fast float %4154, %4148
  %4156 = select i1 %3978, float %4155, float %4150
  %4157 = select i1 %3978, float %4150, float %4155
  %4158 = select i1 %3976, float %4155, float %4149
  %4159 = select i1 %3976, float %4150, float %4156
  %4160 = select i1 %3976, float %4149, float %4157
  %4161 = fsub fast float %4095, %3525
  %4162 = fsub fast float %4096, %3526
  %4163 = fsub fast float %4097, %3527
  %4164 = fmul fast float %4161, %4067
  %4165 = fmul fast float %4162, %4067
  %4166 = fmul fast float %4163, %4067
  %4167 = fadd fast float %4164, %3525
  %4168 = fadd fast float %4165, %3526
  %4169 = fadd fast float %4166, %3527
  %4170 = fsub fast float %4104, %3510
  %4171 = fsub fast float %4105, %3511
  %4172 = fsub fast float %4106, %3512
  %4173 = fmul fast float %4170, %4067
  %4174 = fmul fast float %4171, %4067
  %4175 = fmul fast float %4172, %4067
  %4176 = fadd fast float %4173, %3510
  %4177 = fadd fast float %4174, %3511
  %4178 = fadd fast float %4175, %3512
  %4179 = fadd fast float %4158, %3489
  %4180 = fadd fast float %4159, %3490
  %4181 = fadd fast float %4160, %3491
  %4182 = call float @dx.op.dot3.f32(i32 55, float %4179, float %4180, float %4181, float %4179, float %4180, float %4181)  ; Dot3(ax,ay,az,bx,by,bz)
  %4183 = call float @dx.op.unary.f32(i32 25, float %4182)  ; Rsqrt(value)
  %4184 = fmul fast float %4179, %4183
  %4185 = fmul fast float %4180, %4183
  %4186 = fmul fast float %4181, %4183
  %4187 = fsub fast float %4184, %3489
  %4188 = fsub fast float %4185, %3490
  %4189 = fsub fast float %4186, %3491
  %4190 = fmul fast float %4187, %4067
  %4191 = fmul fast float %4188, %4067
  %4192 = fmul fast float %4189, %4067
  %4193 = fadd fast float %4190, %3489
  %4194 = fadd fast float %4191, %3490
  %4195 = fadd fast float %4192, %3491
  %4196 = call float @dx.op.binary.f32(i32 36, float %3460, float %4115)  ; FMin(a,b)
  %4197 = fsub fast float %4196, %3460
  %4198 = fmul fast float %4197, %4067
  %4199 = fadd fast float %4198, %3460
  %4200 = fsub fast float %4128, %3528
  %4201 = fmul fast float %4200, %4067
  %4202 = fadd fast float %4201, %3528
  br label %4203

; <label>:4203                                    ; preds = %4065, %4027, %3929
  %4204 = phi float [ %4167, %4065 ], [ %3525, %4027 ], [ %3525, %3929 ]
  %4205 = phi float [ %4168, %4065 ], [ %3526, %4027 ], [ %3526, %3929 ]
  %4206 = phi float [ %4169, %4065 ], [ %3527, %4027 ], [ %3527, %3929 ]
  %4207 = phi float [ %4176, %4065 ], [ %3510, %4027 ], [ %3510, %3929 ]
  %4208 = phi float [ %4177, %4065 ], [ %3511, %4027 ], [ %3511, %3929 ]
  %4209 = phi float [ %4178, %4065 ], [ %3512, %4027 ], [ %3512, %3929 ]
  %4210 = phi float [ %4193, %4065 ], [ %3489, %4027 ], [ %3489, %3929 ]
  %4211 = phi float [ %4194, %4065 ], [ %3490, %4027 ], [ %3490, %3929 ]
  %4212 = phi float [ %4195, %4065 ], [ %3491, %4027 ], [ %3491, %3929 ]
  %4213 = phi float [ %4202, %4065 ], [ %3528, %4027 ], [ %3528, %3929 ]
  %4214 = phi float [ %4199, %4065 ], [ %3460, %4027 ], [ %3460, %3929 ]
  br i1 %3927, label %4215, label %4488

; <label>:4215                                    ; preds = %4203
  %4216 = call float @dx.op.unary.f32(i32 23, float %4214)  ; Log(value)
  %4217 = fmul fast float %4216, 4.000000e+00
  %4218 = call float @dx.op.unary.f32(i32 21, float %4217)  ; Exp(value)
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = fmul fast float %4220, %54
  %4222 = fmul fast float %4220, %55
  %4223 = fmul fast float %4220, %56
  %4224 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4225 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4226 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4227 = call float @dx.op.unary.f32(i32 23, float %4224)  ; Log(value)
  %4228 = call float @dx.op.unary.f32(i32 23, float %4225)  ; Log(value)
  %4229 = call float @dx.op.unary.f32(i32 23, float %4226)  ; Log(value)
  %4230 = fmul fast float %4227, 4.000000e+00
  %4231 = fmul fast float %4228, 4.000000e+00
  %4232 = fmul fast float %4229, 4.000000e+00
  %4233 = call float @dx.op.unary.f32(i32 21, float %4230)  ; Exp(value)
  %4234 = call float @dx.op.unary.f32(i32 21, float %4231)  ; Exp(value)
  %4235 = call float @dx.op.unary.f32(i32 21, float %4232)  ; Exp(value)
  %4236 = fadd fast float %4234, %4233
  %4237 = fadd fast float %4236, %4235
  %4238 = fdiv fast float 1.000000e+00, %4237
  %4239 = fmul fast float %4238, %4233
  %4240 = fcmp fast ogt float %64, 0.000000e+00
  %4241 = fcmp fast ogt float %65, 0.000000e+00
  %4242 = fcmp fast ogt float %66, 0.000000e+00
  %4243 = fcmp fast olt float %64, 0.000000e+00
  %4244 = fcmp fast olt float %65, 0.000000e+00
  %4245 = fcmp fast olt float %66, 0.000000e+00
  %4246 = zext i1 %4240 to i32
  %4247 = zext i1 %4241 to i32
  %4248 = zext i1 %4242 to i32
  %4249 = zext i1 %4243 to i32
  %4250 = zext i1 %4244 to i32
  %4251 = zext i1 %4245 to i32
  %4252 = sub nsw i32 %4246, %4249
  %4253 = sub nsw i32 %4247, %4250
  %4254 = sub nsw i32 %4248, %4251
  %4255 = call float @dx.op.unary.f32(i32 83, float %4221)  ; DerivCoarseX(value)
  %4256 = call float @dx.op.unary.f32(i32 83, float %4222)  ; DerivCoarseX(value)
  %4257 = call float @dx.op.unary.f32(i32 83, float %4223)  ; DerivCoarseX(value)
  %4258 = call float @dx.op.unary.f32(i32 84, float %4221)  ; DerivCoarseY(value)
  %4259 = call float @dx.op.unary.f32(i32 84, float %4222)  ; DerivCoarseY(value)
  %4260 = call float @dx.op.unary.f32(i32 84, float %4223)  ; DerivCoarseY(value)
  %4261 = fcmp fast ole float %261, %4239
  %4262 = fmul fast float %4238, %4236
  %4263 = fcmp fast ole float %261, %4262
  %4264 = select i1 %4263, float %4223, float %4221
  %4265 = select i1 %4263, float %4221, float %4222
  %4266 = select i1 %4261, float %4222, float %4264
  %4267 = select i1 %4261, float %4223, float %4265
  %4268 = select i1 %4263, float %4257, float %4255
  %4269 = select i1 %4263, float %4255, float %4256
  %4270 = select i1 %4261, float %4256, float %4268
  %4271 = select i1 %4261, float %4257, float %4269
  %4272 = select i1 %4263, float %4260, float %4258
  %4273 = select i1 %4263, float %4258, float %4259
  %4274 = select i1 %4261, float %4259, float %4272
  %4275 = select i1 %4261, float %4260, float %4273
  %4276 = call float @dx.op.unary.f32(i32 27, float %4266)  ; Round_ni(value)
  %4277 = call float @dx.op.unary.f32(i32 27, float %4267)  ; Round_ni(value)
  %4278 = fptosi float %4276 to i32
  %4279 = fptosi float %4277 to i32
  %4280 = xor i32 %4279, %4278
  %4281 = sitofp i32 %4280 to float
  %4282 = fptosi float %4281 to i32
  %4283 = sitofp i32 %4282 to float
  %4284 = fmul fast float %4283, 0x3FE3C6EF40000000
  %4285 = frem fast float %4276, 2.560000e+02
  %4286 = frem fast float %4277, 2.560000e+02
  %4287 = fptoui float %4285 to i32
  %4288 = fptoui float %4286 to i32
  %4289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4287, i32 %4288, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.ResRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.ResRet.f32 %4289, 2
  %4293 = fadd fast float %4290, %4284
  %4294 = fadd fast float %4291, %4284
  %4295 = fadd fast float %4292, %4284
  %4296 = call float @dx.op.unary.f32(i32 22, float %4293)  ; Frc(value)
  %4297 = call float @dx.op.unary.f32(i32 22, float %4294)  ; Frc(value)
  %4298 = call float @dx.op.unary.f32(i32 22, float %4295)  ; Frc(value)
  %4299 = fmul fast float %4298, 0x401921FB60000000
  %4300 = call float @dx.op.unary.f32(i32 13, float %4299)  ; Sin(value)
  %4301 = call float @dx.op.unary.f32(i32 12, float %4299)  ; Cos(value)
  %4302 = fsub fast float -0.000000e+00, %4301
  %4303 = fmul fast float %4301, %4266
  %4304 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4267, float %4303)  ; FMad(a,b,c)
  %4305 = fmul fast float %4300, %4266
  %4306 = call float @dx.op.tertiary.f32(i32 46, float %4302, float %4267, float %4305)  ; FMad(a,b,c)
  %4307 = fadd fast float %4304, %4296
  %4308 = fadd fast float %4306, %4297
  %4309 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4310 = bitcast float %4309 to i32
  %4311 = icmp eq i32 %4310, 0
  br i1 %4311, label %4350, label %4312

; <label>:4312                                    ; preds = %4215
  %4313 = add i32 %4310, 0
  %4314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4314, %dx.types.Handle %105, float %4307, float %4308, float undef, float undef, i32 0, i32 0, i32 undef, float %4270, float %4271, float undef, float %4274, float %4275, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4317, 2
  %4320 = fsub fast float 1.000000e+00, %3925
  %4321 = call float @dx.op.binary.f32(i32 35, float %4320, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4322 = bitcast float %3925 to i32
  %4323 = sitofp i32 %4322 to float
  %4324 = fadd fast float %4323, 0xC1CFBF8940000000
  %4325 = fmul fast float %4319, %4324
  %4326 = fadd fast float %4325, 0x41CFBF8940000000
  %4327 = fptosi float %4326 to i32
  %4328 = bitcast i32 %4327 to float
  %4329 = bitcast float %4321 to i32
  %4330 = sitofp i32 %4329 to float
  %4331 = fadd fast float %4330, 0xC1CFBF8940000000
  %4332 = fmul fast float %4331, %4319
  %4333 = fadd fast float %4332, 0x41CFBF8940000000
  %4334 = fptosi float %4333 to i32
  %4335 = bitcast i32 %4334 to float
  %4336 = fmul fast float %4328, %4318
  %4337 = fmul fast float %4335, %4318
  %4338 = fsub fast float %4321, %4336
  %4339 = fadd fast float %4337, %4321
  %4340 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4342 = fsub fast float %4316, %4340
  %4343 = fsub fast float %4341, %4340
  %4344 = bitcast float %4343 to i32
  %4345 = sub nsw i32 2129859010, %4344
  %4346 = bitcast i32 %4345 to float
  %4347 = fmul fast float %4346, %4342
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fcmp fast olt float %4348, 0x3F70101020000000
  br i1 %4349, label %4488, label %4350

; <label>:4350                                    ; preds = %4312, %4215
  %4351 = phi float [ %4348, %4312 ], [ %3925, %4215 ]
  %4352 = fmul fast float %4351, %4218
  %4353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.i32 %4353, 1
  %4355 = extractvalue %dx.types.CBufRet.i32 %4353, 0
  %4356 = add i32 %4355, 0
  %4357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4358 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4357, %dx.types.Handle %104, float %4307, float %4308, float undef, float undef, i32 0, i32 0, i32 undef, float %4270, float %4271, float undef, float %4274, float %4275, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4359 = extractvalue %dx.types.ResRet.f32 %4358, 0
  %4360 = extractvalue %dx.types.ResRet.f32 %4358, 1
  %4361 = extractvalue %dx.types.ResRet.f32 %4358, 2
  %4362 = extractvalue %dx.types.ResRet.f32 %4358, 3
  %4363 = and i32 %4354, 255
  %4364 = uitofp i32 %4363 to float
  %4365 = lshr i32 %4354, 8
  %4366 = and i32 %4365, 255
  %4367 = uitofp i32 %4366 to float
  %4368 = fmul fast float %4362, %4364
  %4369 = fadd fast float %4368, %4367
  %4370 = fmul fast float %4369, 0x3F70101000000000
  %4371 = fadd fast float %4370, 0xBFB99999A0000000
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fmul fast float %4372, 0x3FF1C71C80000000
  %4374 = call float @dx.op.binary.f32(i32 36, float %4370, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4375 = fsub fast float 1.000000e+00, %4373
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fmul fast float %4376, %4359
  %4378 = fmul fast float %4376, %4360
  %4379 = fmul fast float %4376, %4361
  %4380 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4381 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4382 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4383 = fmul fast float %4373, %4359
  %4384 = fmul fast float %4373, %4360
  %4385 = fmul fast float %4373, %4361
  %4386 = fadd fast float %4383, %4374
  %4387 = fadd fast float %4384, %4374
  %4388 = fadd fast float %4385, %4374
  %4389 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4390 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  %4391 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.i32 %4392, 3
  %4394 = extractvalue %dx.types.CBufRet.i32 %4392, 2
  %4395 = add i32 %4394, 0
  %4396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4397 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4396, %dx.types.Handle %104, float %4307, float %4308, float undef, float undef, i32 0, i32 0, i32 undef, float %4270, float %4271, float undef, float %4274, float %4275, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4401 = extractvalue %dx.types.ResRet.f32 %4397, 3
  %4402 = and i32 %4393, 255
  %4403 = uitofp i32 %4402 to float
  %4404 = lshr i32 %4393, 8
  %4405 = and i32 %4404, 255
  %4406 = uitofp i32 %4405 to float
  %4407 = lshr i32 %4393, 16
  %4408 = and i32 %4407, 255
  %4409 = uitofp i32 %4408 to float
  %4410 = fmul fast float %4409, 0x3F70101000000000
  %4411 = fmul fast float %4398, %4403
  %4412 = fadd fast float %4411, %4406
  %4413 = fmul fast float %4412, 0x3F70101000000000
  %4414 = fadd fast float %4399, -5.000000e-01
  %4415 = fadd fast float %4401, -5.000000e-01
  %4416 = fmul fast float %4414, %4410
  %4417 = fmul fast float %4415, %4410
  %4418 = fadd fast float %4416, 5.000000e-01
  %4419 = fadd fast float %4417, 5.000000e-01
  %4420 = fmul fast float %4418, 2.000000e+00
  %4421 = fadd fast float %4420, -1.000000e+00
  %4422 = fmul fast float %4419, 2.000000e+00
  %4423 = fadd fast float %4422, -1.000000e+00
  %4424 = fadd fast float %4421, %4423
  %4425 = fmul fast float %4424, 5.000000e-01
  %4426 = fsub fast float %4421, %4423
  %4427 = fmul fast float %4426, 5.000000e-01
  %4428 = call float @dx.op.unary.f32(i32 6, float %4425)  ; FAbs(value)
  %4429 = fsub fast float 1.000000e+00, %4428
  %4430 = call float @dx.op.unary.f32(i32 6, float %4427)  ; FAbs(value)
  %4431 = fsub fast float %4429, %4430
  %4432 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4427, float %4431, float %4425, float %4427, float %4431)  ; Dot3(ax,ay,az,bx,by,bz)
  %4433 = call float @dx.op.unary.f32(i32 25, float %4432)  ; Rsqrt(value)
  %4434 = fmul fast float %4425, %4433
  %4435 = fmul fast float %4427, %4433
  %4436 = select i1 %4263, i32 %4253, i32 %4254
  %4437 = select i1 %4261, i32 %4252, i32 %4436
  %4438 = sitofp i32 %4437 to float
  %4439 = fmul fast float %4431, %4438
  %4440 = fmul fast float %4439, %4433
  %4441 = select i1 %4263, float %4440, float %4435
  %4442 = select i1 %4263, float %4435, float %4440
  %4443 = select i1 %4261, float %4440, float %4434
  %4444 = select i1 %4261, float %4435, float %4441
  %4445 = select i1 %4261, float %4434, float %4442
  %4446 = fsub fast float %4380, %4204
  %4447 = fsub fast float %4381, %4205
  %4448 = fsub fast float %4382, %4206
  %4449 = fmul fast float %4446, %4352
  %4450 = fmul fast float %4447, %4352
  %4451 = fmul fast float %4448, %4352
  %4452 = fadd fast float %4449, %4204
  %4453 = fadd fast float %4450, %4205
  %4454 = fadd fast float %4451, %4206
  %4455 = fsub fast float %4389, %4207
  %4456 = fsub fast float %4390, %4208
  %4457 = fsub fast float %4391, %4209
  %4458 = fmul fast float %4455, %4352
  %4459 = fmul fast float %4456, %4352
  %4460 = fmul fast float %4457, %4352
  %4461 = fadd fast float %4458, %4207
  %4462 = fadd fast float %4459, %4208
  %4463 = fadd fast float %4460, %4209
  %4464 = fadd fast float %4443, %4210
  %4465 = fadd fast float %4444, %4211
  %4466 = fadd fast float %4445, %4212
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4465, float %4466, float %4464, float %4465, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call float @dx.op.unary.f32(i32 25, float %4467)  ; Rsqrt(value)
  %4469 = fmul fast float %4464, %4468
  %4470 = fmul fast float %4465, %4468
  %4471 = fmul fast float %4466, %4468
  %4472 = fsub fast float %4469, %4210
  %4473 = fsub fast float %4470, %4211
  %4474 = fsub fast float %4471, %4212
  %4475 = fmul fast float %4472, %4352
  %4476 = fmul fast float %4473, %4352
  %4477 = fmul fast float %4474, %4352
  %4478 = fadd fast float %4475, %4210
  %4479 = fadd fast float %4476, %4211
  %4480 = fadd fast float %4477, %4212
  %4481 = call float @dx.op.binary.f32(i32 36, float %4214, float %4400)  ; FMin(a,b)
  %4482 = fsub fast float %4481, %4214
  %4483 = fmul fast float %4482, %4352
  %4484 = fadd fast float %4483, %4214
  %4485 = fsub fast float %4413, %4213
  %4486 = fmul fast float %4485, %4352
  %4487 = fadd fast float %4486, %4213
  br label %4488

; <label>:4488                                    ; preds = %4350, %4312, %4203, %3919
  %4489 = phi float [ %4452, %4350 ], [ %4204, %4312 ], [ %4204, %4203 ], [ %3525, %3919 ]
  %4490 = phi float [ %4453, %4350 ], [ %4205, %4312 ], [ %4205, %4203 ], [ %3526, %3919 ]
  %4491 = phi float [ %4454, %4350 ], [ %4206, %4312 ], [ %4206, %4203 ], [ %3527, %3919 ]
  %4492 = phi float [ %4461, %4350 ], [ %4207, %4312 ], [ %4207, %4203 ], [ %3510, %3919 ]
  %4493 = phi float [ %4462, %4350 ], [ %4208, %4312 ], [ %4208, %4203 ], [ %3511, %3919 ]
  %4494 = phi float [ %4463, %4350 ], [ %4209, %4312 ], [ %4209, %4203 ], [ %3512, %3919 ]
  %4495 = phi float [ %4478, %4350 ], [ %4210, %4312 ], [ %4210, %4203 ], [ %3489, %3919 ]
  %4496 = phi float [ %4479, %4350 ], [ %4211, %4312 ], [ %4211, %4203 ], [ %3490, %3919 ]
  %4497 = phi float [ %4480, %4350 ], [ %4212, %4312 ], [ %4212, %4203 ], [ %3491, %3919 ]
  %4498 = phi float [ %4487, %4350 ], [ %4213, %4312 ], [ %4213, %4203 ], [ %3528, %3919 ]
  %4499 = phi float [ %4484, %4350 ], [ %4214, %4312 ], [ %4214, %4203 ], [ %3460, %3919 ]
  %4500 = fcmp fast une float %3923, 0.000000e+00
  br i1 %4500, label %4501, label %4672

; <label>:4501                                    ; preds = %4488
  %4502 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4503 = call float @dx.op.unary.f32(i32 25, float %4502)  ; Rsqrt(value)
  %4504 = fmul fast float %191, %4503
  %4505 = fsub fast float -0.000000e+00, %4504
  %4506 = fmul fast float %192, %4503
  %4507 = fsub fast float -0.000000e+00, %4506
  %4508 = fmul fast float %193, %4503
  %4509 = fsub fast float -0.000000e+00, %4508
  %4510 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4507, float %4509, float %117, float %119, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = fmul fast float %3923, 2.500000e+00
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fmul fast float %3923, 0x4013FFFFE0000000
  %4514 = fadd fast float %4513, 0xBFFFFFFFE0000000
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = fmul fast float %3923, 0x4004000020000000
  %4517 = fadd fast float %4516, 0xBFF8000040000000
  %4518 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4519 = fmul fast float %3492, 1.000000e+01
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4520, 2.000000e+00
  %4522 = fsub fast float 3.000000e+00, %4521
  %4523 = fmul fast float %4520, %4520
  %4524 = fmul fast float %4523, %4522
  %4525 = fsub fast float 1.000000e+00, %4524
  %4526 = fmul fast float %4498, 0x3FF75C2900000000
  %4527 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4528 = fsub fast float 0x3FE3333340000000, %4527
  %4529 = fmul fast float %4528, 0x400AAAAAA0000000
  %4530 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4531 = fmul fast float %4525, %4530
  %4532 = fmul fast float %4489, 0x3FEA2B8620000000
  %4533 = fmul fast float %4490, 0x3FEA2B8620000000
  %4534 = fmul fast float %4491, 0x3FEA2B8620000000
  %4535 = fadd fast float %4532, 0x3FC81DFBA0000000
  %4536 = fmul fast float %4535, %4489
  %4537 = fadd fast float %4536, 0x3F910E6020000000
  %4538 = fadd fast float %4533, 0x3FC81DFBA0000000
  %4539 = fmul fast float %4538, %4490
  %4540 = fadd fast float %4539, 0x3F910E6020000000
  %4541 = fadd fast float %4534, 0x3FC81DFBA0000000
  %4542 = fmul fast float %4541, %4491
  %4543 = fadd fast float %4542, 0x3F910E6020000000
  %4544 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4545 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4546 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4547 = fsub fast float %4544, %4489
  %4548 = fsub fast float %4545, %4490
  %4549 = fsub fast float %4546, %4491
  %4550 = fmul fast float %4547, %4512
  %4551 = fmul fast float %4550, %4531
  %4552 = fmul fast float %4548, %4512
  %4553 = fmul fast float %4552, %4531
  %4554 = fmul fast float %4531, %4512
  %4555 = fmul fast float %4554, %4549
  %4556 = fadd fast float %4551, %4489
  %4557 = fadd fast float %4553, %4490
  %4558 = fadd fast float %4555, %4491
  %4559 = fmul fast float %4499, %4499
  %4560 = fmul fast float %4559, %4559
  %4561 = fadd fast float %4515, 1.000000e+00
  %4562 = fsub fast float %4561, %4531
  %4563 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4564 = call float @dx.op.dot3.f32(i32 55, float %117, float %119, float %121, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4566 = fsub fast float 1.000000e+00, %4560
  %4567 = call float @dx.op.binary.f32(i32 36, float %4563, float %4566)  ; FMin(a,b)
  %4568 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4569 = call float @dx.op.binary.f32(i32 35, float %4567, float %4568)  ; FMax(a,b)
  %4570 = fadd fast float %4565, 0xBFE4CCCCC0000000
  %4571 = fmul fast float %4570, 0x4006DB6DA0000000
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = fmul fast float %4572, 2.000000e+00
  %4574 = fsub fast float 3.000000e+00, %4573
  %4575 = bitcast float %4492 to i32
  %4576 = ashr i32 %4575, 1
  %4577 = add nsw i32 %4576, 532487669
  %4578 = bitcast i32 %4577 to float
  %4579 = fsub fast float 1.000000e+00, %4578
  %4580 = bitcast float %4579 to i32
  %4581 = sub nsw i32 2129859010, %4580
  %4582 = bitcast i32 %4581 to float
  %4583 = fmul fast float %4582, 2.000000e+00
  %4584 = bitcast float %4493 to i32
  %4585 = ashr i32 %4584, 1
  %4586 = add nsw i32 %4585, 532487669
  %4587 = bitcast i32 %4586 to float
  %4588 = fsub fast float 1.000000e+00, %4587
  %4589 = bitcast float %4588 to i32
  %4590 = sub nsw i32 2129859010, %4589
  %4591 = bitcast i32 %4590 to float
  %4592 = fmul fast float %4591, 2.000000e+00
  %4593 = bitcast float %4494 to i32
  %4594 = ashr i32 %4593, 1
  %4595 = add nsw i32 %4594, 532487669
  %4596 = bitcast i32 %4595 to float
  %4597 = fsub fast float 1.000000e+00, %4596
  %4598 = bitcast float %4597 to i32
  %4599 = sub nsw i32 2129859010, %4598
  %4600 = bitcast i32 %4599 to float
  %4601 = fmul fast float %4600, 2.000000e+00
  %4602 = fsub fast float 0x4002A9FBE0000000, %4583
  %4603 = fadd fast float %4583, 0x3FD54FDF00000000
  %4604 = bitcast float %4603 to i32
  %4605 = sub nsw i32 2129859010, %4604
  %4606 = bitcast i32 %4605 to float
  %4607 = fmul fast float %4606, %4602
  %4608 = fmul fast float %4607, %4607
  %4609 = fsub fast float 0x4002A9FBE0000000, %4592
  %4610 = fadd fast float %4592, 0x3FD54FDF00000000
  %4611 = bitcast float %4610 to i32
  %4612 = sub nsw i32 2129859010, %4611
  %4613 = bitcast i32 %4612 to float
  %4614 = fmul fast float %4613, %4609
  %4615 = fmul fast float %4614, %4614
  %4616 = fsub fast float 0x4002A9FBE0000000, %4601
  %4617 = fadd fast float %4601, 0x3FD54FDF00000000
  %4618 = bitcast float %4617 to i32
  %4619 = sub nsw i32 2129859010, %4618
  %4620 = bitcast i32 %4619 to float
  %4621 = fmul fast float %4620, %4616
  %4622 = fmul fast float %4621, %4621
  %4623 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4608)  ; FMax(a,b)
  %4624 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4615)  ; FMax(a,b)
  %4625 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4622)  ; FMax(a,b)
  %4626 = fsub fast float 1.000000e+00, %4510
  %4627 = fadd fast float %4626, %4525
  %4628 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4629 = fsub fast float 1.000000e+00, %3904
  %4630 = fmul fast float %4569, %4629
  %4631 = fmul fast float %4572, %4572
  %4632 = fmul fast float %4631, %4630
  %4633 = fmul fast float %4632, %4574
  %4634 = fmul fast float %4629, 0xBFE99999A0000000
  %4635 = fmul fast float %4634, %4512
  %4636 = fmul fast float %4635, %4531
  %4637 = fadd fast float %4636, 1.000000e+00
  %4638 = fadd fast float %4498, -1.000000e+00
  %4639 = fmul fast float %4637, %4638
  %4640 = fadd fast float %4639, 1.000000e+00
  %4641 = fsub fast float %4623, %4492
  %4642 = fsub fast float %4624, %4493
  %4643 = fsub fast float %4625, %4494
  %4644 = fmul fast float %4633, %4641
  %4645 = fmul fast float %4633, %4642
  %4646 = fmul fast float %4633, %4643
  %4647 = fadd fast float %4644, %4492
  %4648 = fadd fast float %4645, %4493
  %4649 = fadd fast float %4646, %4494
  %4650 = fsub fast float %117, %4495
  %4651 = fsub fast float %119, %4496
  %4652 = fsub fast float %121, %4497
  %4653 = fmul fast float %4633, %4650
  %4654 = fmul fast float %4633, %4651
  %4655 = fmul fast float %4633, %4652
  %4656 = fadd fast float %4653, %4495
  %4657 = fadd fast float %4654, %4496
  %4658 = fadd fast float %4655, %4497
  %4659 = fmul fast float %4633, %4628
  %4660 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4661 = fsub fast float 1.000000e+00, %4660
  %4662 = fmul fast float %4659, %4661
  %4663 = fadd fast float %4662, %4660
  %4664 = fsub fast float 1.000000e+00, %4499
  %4665 = fmul fast float %4633, %4664
  %4666 = fadd fast float %4665, %4499
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %4658, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = call float @dx.op.unary.f32(i32 25, float %4667)  ; Rsqrt(value)
  %4669 = fmul fast float %4656, %4668
  %4670 = fmul fast float %4657, %4668
  %4671 = fmul fast float %4658, %4668
  br label %4672

; <label>:4672                                    ; preds = %4501, %4488
  %4673 = phi float [ %4556, %4501 ], [ %4489, %4488 ]
  %4674 = phi float [ %4557, %4501 ], [ %4490, %4488 ]
  %4675 = phi float [ %4558, %4501 ], [ %4491, %4488 ]
  %4676 = phi float [ %4647, %4501 ], [ %4492, %4488 ]
  %4677 = phi float [ %4648, %4501 ], [ %4493, %4488 ]
  %4678 = phi float [ %4649, %4501 ], [ %4494, %4488 ]
  %4679 = phi float [ %4669, %4501 ], [ %4495, %4488 ]
  %4680 = phi float [ %4670, %4501 ], [ %4496, %4488 ]
  %4681 = phi float [ %4671, %4501 ], [ %4497, %4488 ]
  %4682 = phi float [ %4663, %4501 ], [ %4498, %4488 ]
  %4683 = phi float [ %4666, %4501 ], [ %4499, %4488 ]
  %4684 = icmp eq i32 %53, 0
  br i1 %4684, label %4715, label %4685

; <label>:4685                                    ; preds = %4672
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 2
  %4688 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4689 = fmul fast float %4687, %108
  %4690 = fmul fast float %4688, %109
  %4691 = fmul fast float %4689, 1.024000e+03
  %4692 = fmul fast float %4690, 1.024000e+03
  %4693 = fadd fast float %4691, -5.120000e+02
  %4694 = fadd fast float %4692, -5.120000e+02
  %4695 = fmul fast float %4689, 0x4081BEDF00000000
  %4696 = fadd fast float %4695, 0xC071BEDF00000000
  %4697 = call float @dx.op.unary.f32(i32 22, float %4696)  ; Frc(value)
  %4698 = fmul fast float %4693, %4697
  %4699 = fadd fast float %4698, %4694
  %4700 = fmul fast float %4690, 0x4073BEBE20000000
  %4701 = fadd fast float %4700, 0xC063BEBE20000000
  %4702 = call float @dx.op.unary.f32(i32 22, float %4701)  ; Frc(value)
  %4703 = fmul fast float %4694, %4702
  %4704 = fadd fast float %4703, %4693
  %4705 = fmul fast float %4699, %4704
  %4706 = call float @dx.op.unary.f32(i32 22, float %4705)  ; Frc(value)
  %4707 = add i32 %304, 12
  %4708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4707, i32 undef)  ; BufferLoad(srv,index,wot)
  %4709 = extractvalue %dx.types.ResRet.i32 %4708, 0
  %4710 = and i32 %4709, 255
  %4711 = uitofp i32 %4710 to float
  %4712 = fmul fast float %4711, 0x3F70101020000000
  %4713 = fcmp fast olt float %4706, %4712
  br i1 %4713, label %4714, label %4715

; <label>:4714                                    ; preds = %4685
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4715

; <label>:4715                                    ; preds = %4714, %4685, %4672
  %4716 = fsub fast float -0.000000e+00, %193
  %4717 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4718 = call float @dx.op.unary.f32(i32 25, float %4717)  ; Rsqrt(value)
  %4719 = fmul fast float %4718, %191
  %4720 = fmul fast float %4718, %192
  %4721 = fmul fast float %4718, %193
  %4722 = fsub fast float -0.000000e+00, %4719
  %4723 = fsub fast float -0.000000e+00, %4720
  %4724 = fsub fast float -0.000000e+00, %4721
  %4725 = select i1 %250, float 0.000000e+00, float %4678
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4680, float %4681, float %4722, float %4723, float %4724)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4720, float %4721, float %4679, float %4680, float %4681)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = fmul fast float %4728, 2.000000e+00
  %4730 = fmul fast float %4729, %4679
  %4731 = fmul fast float %4729, %4680
  %4732 = fmul fast float %4729, %4681
  %4733 = fsub fast float %4719, %4730
  %4734 = fsub fast float %4720, %4731
  %4735 = fsub fast float %4721, %4732
  %4736 = call float @dx.op.binary.f32(i32 36, float %4683, float 1.000000e+00)  ; FMin(a,b)
  %4737 = fsub fast float 1.000000e+00, %4683
  %4738 = bitcast float %4737 to i32
  %4739 = sub nsw i32 2129859010, %4738
  %4740 = bitcast i32 %4739 to float
  %4741 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = fmul fast float %4741, 0x3FD20DD760000000
  %4743 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %4744 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = fcmp fast oeq float %4744, 0.000000e+00
  %4746 = fcmp fast oeq float %4743, 0.000000e+00
  %4747 = or i1 %4746, %4745
  br i1 %4747, label %4777, label %4748

; <label>:4748                                    ; preds = %4715
  %4749 = fsub fast float -0.000000e+00, %82
  %4750 = fsub fast float -0.000000e+00, %80
  %4751 = call float @dx.op.unary.f32(i32 24, float %4744)  ; Sqrt(value)
  %4752 = fdiv fast float %4751, %4743
  %4753 = fcmp fast ogt float %4752, 0x3FFB6F8900000000
  %4754 = select i1 %4753, float 0x3FFB6F8900000000, float %4752
  %4755 = fmul fast float %4754, 0x3FE8A23460000000
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = call float @dx.op.binary.f32(i32 35, float %4754, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4758 = fmul fast float %4756, %4743
  %4759 = fmul fast float %4757, 0x3FF279A740000000
  %4760 = fadd fast float %4759, -1.000000e+00
  %4761 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4750, float %81, float %4749, float %4750, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4762 = call float @dx.op.unary.f32(i32 25, float %4761)  ; Rsqrt(value)
  %4763 = fmul fast float %4762, %4749
  %4764 = fmul fast float %4762, %4750
  %4765 = fmul fast float %4762, %81
  %4766 = fmul fast float %4760, %4760
  %4767 = fsub fast float 1.000000e+00, %4766
  %4768 = fmul fast float %4757, 0x40005F8BE0000000
  %4769 = fsub fast float 0x400C5BF8A0000000, %4768
  %4770 = fdiv fast float %4758, %4769
  %4771 = fmul fast float %4770, 0x3FEE31C3C0000000
  %4772 = fmul fast float %4771, %4767
  %4773 = fmul fast float %4757, 0x3FDACB7480000000
  %4774 = fadd fast float %4773, 0xBFD7347680000000
  %4775 = fmul fast float %4774, %4770
  %4776 = fmul fast float %4775, %4767
  br label %4777

; <label>:4777                                    ; preds = %4748, %4715
  %4778 = phi float [ %4763, %4748 ], [ 0.000000e+00, %4715 ]
  %4779 = phi float [ %4764, %4748 ], [ 0.000000e+00, %4715 ]
  %4780 = phi float [ %4765, %4748 ], [ 0.000000e+00, %4715 ]
  %4781 = phi float [ %4772, %4748 ], [ 0.000000e+00, %4715 ]
  %4782 = phi float [ %4776, %4748 ], [ 0.000000e+00, %4715 ]
  %4783 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4779, float %4780, float %4679, float %4680, float %4681)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = fmul fast float %4783, %4783
  %4785 = fmul fast float %4784, 0x3FEE471020000000
  %4786 = fadd fast float %4785, 0xBFD42F6020000000
  %4787 = fmul fast float %4743, 0x3FD20DD760000000
  %4788 = fmul fast float %4786, %4782
  %4789 = fmul fast float %4781, 0x3FDF454380000000
  %4790 = fmul fast float %4789, %4783
  %4791 = fadd fast float %4790, %4787
  %4792 = fadd fast float %4791, %4788
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4779, float %4780, float %4733, float %4734, float %4735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = fmul fast float %4793, 0x3FDF454380000000
  %4795 = fmul fast float %4793, %4793
  %4796 = fmul fast float %4795, 0x3FEE471020000000
  %4797 = fadd fast float %4796, 0xBFD42F6020000000
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4781, float %4782, float 0x3FD20DD760000000, float %4794, float %4797)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %4800 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %4801 = fcmp fast oeq float %4800, 0.000000e+00
  %4802 = fcmp fast oeq float %4799, 0.000000e+00
  %4803 = or i1 %4802, %4801
  br i1 %4803, label %4833, label %4804

; <label>:4804                                    ; preds = %4777
  %4805 = fsub fast float -0.000000e+00, %78
  %4806 = fsub fast float -0.000000e+00, %76
  %4807 = call float @dx.op.unary.f32(i32 24, float %4800)  ; Sqrt(value)
  %4808 = fdiv fast float %4807, %4799
  %4809 = fcmp fast ogt float %4808, 0x3FFB6F8900000000
  %4810 = select i1 %4809, float 0x3FFB6F8900000000, float %4808
  %4811 = fmul fast float %4810, 0x3FE8A23460000000
  %4812 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4813 = call float @dx.op.binary.f32(i32 35, float %4810, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4814 = fmul fast float %4812, %4799
  %4815 = fmul fast float %4813, 0x3FF279A740000000
  %4816 = fadd fast float %4815, -1.000000e+00
  %4817 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4806, float %77, float %4805, float %4806, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4818 = call float @dx.op.unary.f32(i32 25, float %4817)  ; Rsqrt(value)
  %4819 = fmul fast float %4818, %4805
  %4820 = fmul fast float %4818, %4806
  %4821 = fmul fast float %4818, %77
  %4822 = fmul fast float %4816, %4816
  %4823 = fsub fast float 1.000000e+00, %4822
  %4824 = fmul fast float %4813, 0x40005F8BE0000000
  %4825 = fsub fast float 0x400C5BF8A0000000, %4824
  %4826 = fdiv fast float %4814, %4825
  %4827 = fmul fast float %4826, 0x3FEE31C3C0000000
  %4828 = fmul fast float %4827, %4823
  %4829 = fmul fast float %4813, 0x3FDACB7480000000
  %4830 = fadd fast float %4829, 0xBFD7347680000000
  %4831 = fmul fast float %4830, %4826
  %4832 = fmul fast float %4831, %4823
  br label %4833

; <label>:4833                                    ; preds = %4804, %4777
  %4834 = phi float [ %4819, %4804 ], [ 0.000000e+00, %4777 ]
  %4835 = phi float [ %4820, %4804 ], [ 0.000000e+00, %4777 ]
  %4836 = phi float [ %4821, %4804 ], [ 0.000000e+00, %4777 ]
  %4837 = phi float [ %4828, %4804 ], [ 0.000000e+00, %4777 ]
  %4838 = phi float [ %4832, %4804 ], [ 0.000000e+00, %4777 ]
  %4839 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float %4679, float %4680, float %4681)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = fmul fast float %4839, %4839
  %4841 = fmul fast float %4840, 0x3FEE471020000000
  %4842 = fadd fast float %4841, 0xBFD42F6020000000
  %4843 = fmul fast float %4799, 0x3FD20DD760000000
  %4844 = fmul fast float %4842, %4838
  %4845 = fmul fast float %4837, 0x3FDF454380000000
  %4846 = fmul fast float %4845, %4839
  %4847 = fadd fast float %4846, %4843
  %4848 = fadd fast float %4847, %4844
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float %4733, float %4734, float %4735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = fmul fast float %4849, 0x3FDF454380000000
  %4851 = fmul fast float %4849, %4849
  %4852 = fmul fast float %4851, 0x3FEE471020000000
  %4853 = fadd fast float %4852, 0xBFD42F6020000000
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4837, float %4838, float 0x3FD20DD760000000, float %4850, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %4856 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = fcmp fast oeq float %4856, 0.000000e+00
  %4858 = fcmp fast oeq float %4855, 0.000000e+00
  %4859 = or i1 %4858, %4857
  br i1 %4859, label %4889, label %4860

; <label>:4860                                    ; preds = %4833
  %4861 = fsub fast float -0.000000e+00, %74
  %4862 = fsub fast float -0.000000e+00, %72
  %4863 = call float @dx.op.unary.f32(i32 24, float %4856)  ; Sqrt(value)
  %4864 = fdiv fast float %4863, %4855
  %4865 = fcmp fast ogt float %4864, 0x3FFB6F8900000000
  %4866 = select i1 %4865, float 0x3FFB6F8900000000, float %4864
  %4867 = fmul fast float %4866, 0x3FE8A23460000000
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = call float @dx.op.binary.f32(i32 35, float %4866, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4870 = fmul fast float %4868, %4855
  %4871 = fmul fast float %4869, 0x3FF279A740000000
  %4872 = fadd fast float %4871, -1.000000e+00
  %4873 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4862, float %73, float %4861, float %4862, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4874 = call float @dx.op.unary.f32(i32 25, float %4873)  ; Rsqrt(value)
  %4875 = fmul fast float %4874, %4861
  %4876 = fmul fast float %4874, %4862
  %4877 = fmul fast float %4874, %73
  %4878 = fmul fast float %4872, %4872
  %4879 = fsub fast float 1.000000e+00, %4878
  %4880 = fmul fast float %4869, 0x40005F8BE0000000
  %4881 = fsub fast float 0x400C5BF8A0000000, %4880
  %4882 = fdiv fast float %4870, %4881
  %4883 = fmul fast float %4882, 0x3FEE31C3C0000000
  %4884 = fmul fast float %4883, %4879
  %4885 = fmul fast float %4869, 0x3FDACB7480000000
  %4886 = fadd fast float %4885, 0xBFD7347680000000
  %4887 = fmul fast float %4886, %4882
  %4888 = fmul fast float %4887, %4879
  br label %4889

; <label>:4889                                    ; preds = %4860, %4833
  %4890 = phi float [ %4875, %4860 ], [ 0.000000e+00, %4833 ]
  %4891 = phi float [ %4876, %4860 ], [ 0.000000e+00, %4833 ]
  %4892 = phi float [ %4877, %4860 ], [ 0.000000e+00, %4833 ]
  %4893 = phi float [ %4884, %4860 ], [ 0.000000e+00, %4833 ]
  %4894 = phi float [ %4888, %4860 ], [ 0.000000e+00, %4833 ]
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %4679, float %4680, float %4681)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = fmul fast float %4895, %4895
  %4897 = fmul fast float %4896, 0x3FEE471020000000
  %4898 = fadd fast float %4897, 0xBFD42F6020000000
  %4899 = fmul fast float %4855, 0x3FD20DD760000000
  %4900 = fmul fast float %4898, %4894
  %4901 = fmul fast float %4893, 0x3FDF454380000000
  %4902 = fmul fast float %4901, %4895
  %4903 = fadd fast float %4902, %4899
  %4904 = fadd fast float %4903, %4900
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %4733, float %4734, float %4735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = fmul fast float %4905, 0x3FDF454380000000
  %4907 = fmul fast float %4905, %4905
  %4908 = fmul fast float %4907, 0x3FEE471020000000
  %4909 = fadd fast float %4908, 0xBFD42F6020000000
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4893, float %4894, float 0x3FD20DD760000000, float %4906, float %4909)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.binary.f32(i32 35, float %4792, float 0.000000e+00)  ; FMax(a,b)
  %4912 = call float @dx.op.binary.f32(i32 35, float %4848, float 0.000000e+00)  ; FMax(a,b)
  %4913 = call float @dx.op.binary.f32(i32 35, float %4904, float 0.000000e+00)  ; FMax(a,b)
  %4914 = call float @dx.op.binary.f32(i32 35, float %4798, float 0.000000e+00)  ; FMax(a,b)
  %4915 = call float @dx.op.binary.f32(i32 35, float %4854, float 0.000000e+00)  ; FMax(a,b)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4910, float 0.000000e+00)  ; FMax(a,b)
  %4917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4917, 0
  %4919 = call float @dx.op.binary.f32(i32 36, float %4673, float %4918)  ; FMin(a,b)
  %4920 = fsub fast float 1.000000e+00, %4736
  %4921 = fmul fast float %4919, %4920
  %4922 = fsub fast float 1.000000e+00, %4921
  %4923 = bitcast float %4922 to i32
  %4924 = sub nsw i32 2129859010, %4923
  %4925 = bitcast i32 %4924 to float
  %4926 = call float @dx.op.binary.f32(i32 36, float %4674, float %4918)  ; FMin(a,b)
  %4927 = fmul fast float %4926, %4920
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = bitcast float %4928 to i32
  %4930 = sub nsw i32 2129859010, %4929
  %4931 = bitcast i32 %4930 to float
  %4932 = call float @dx.op.binary.f32(i32 36, float %4675, float %4918)  ; FMin(a,b)
  %4933 = fmul fast float %4932, %4920
  %4934 = fsub fast float 1.000000e+00, %4933
  %4935 = bitcast float %4934 to i32
  %4936 = sub nsw i32 2129859010, %4935
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4911, %4736
  %4939 = fmul fast float %4938, %4925
  %4940 = fmul fast float %4912, %4736
  %4941 = fmul fast float %4940, %4931
  %4942 = fmul fast float %4913, %4736
  %4943 = fmul fast float %4942, %4937
  %4944 = call float @dx.op.binary.f32(i32 36, float %4676, float %4918)  ; FMin(a,b)
  %4945 = fmul fast float %4944, %4920
  %4946 = fsub fast float 1.000000e+00, %4945
  %4947 = bitcast float %4946 to i32
  %4948 = sub nsw i32 2129859010, %4947
  %4949 = bitcast i32 %4948 to float
  %4950 = call float @dx.op.binary.f32(i32 36, float %4677, float %4918)  ; FMin(a,b)
  %4951 = fmul fast float %4950, %4920
  %4952 = fsub fast float 1.000000e+00, %4951
  %4953 = bitcast float %4952 to i32
  %4954 = sub nsw i32 2129859010, %4953
  %4955 = bitcast i32 %4954 to float
  %4956 = call float @dx.op.binary.f32(i32 36, float %4725, float %4918)  ; FMin(a,b)
  %4957 = fmul fast float %4956, %4920
  %4958 = fsub fast float 1.000000e+00, %4957
  %4959 = bitcast float %4958 to i32
  %4960 = sub nsw i32 2129859010, %4959
  %4961 = bitcast i32 %4960 to float
  %4962 = fmul fast float %4914, %4736
  %4963 = fmul fast float %4962, %4949
  %4964 = fmul fast float %4915, %4736
  %4965 = fmul fast float %4964, %4955
  %4966 = fmul fast float %4916, %4736
  %4967 = fmul fast float %4966, %4961
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4941, float %4943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = select i1 %250, float 0.000000e+00, float %4939
  %4970 = select i1 %250, float %4968, float %4941
  %4971 = select i1 %250, float 0.000000e+00, float %4943
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4965, float %4967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = select i1 %250, float 0.000000e+00, float %4963
  %4974 = select i1 %250, float %4972, float %4965
  %4975 = select i1 %250, float 0.000000e+00, float %4967
  %4976 = fmul fast float %4741, 0x4071A18460000000
  %4977 = fadd fast float %4976, 0x3F0FFB4800000000
  %4978 = call float @dx.op.unary.f32(i32 23, float %4977)  ; Log(value)
  %4979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4980 = extractvalue %dx.types.ResRet.i32 %4979, 0
  %4981 = and i32 %4980, 8388608
  %4982 = icmp eq i32 %4981, 0
  br i1 %4982, label %4983, label %5023

; <label>:4983                                    ; preds = %4889
  %4984 = fadd fast float %4978, 0x4006B851E0000000
  %4985 = add i32 %304, 12
  %4986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4985, i32 undef)  ; BufferLoad(srv,index,wot)
  %4987 = extractvalue %dx.types.ResRet.i32 %4986, 0
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4990 = lshr i32 %4987, 16
  %4991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4990)  ; LegacyF16ToF32(value)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 1
  %4995 = fsub fast float %99, %4994
  %4996 = extractvalue %dx.types.CBufRet.f32 %4993, 2
  %4997 = fmul fast float %4995, %4996
  %4998 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %4999 = fsub fast float %4992, %4984
  %5000 = fcmp fast ogt float %4999, 0.000000e+00
  %5001 = fcmp fast olt float %4999, 0.000000e+00
  %5002 = zext i1 %5000 to i32
  %5003 = zext i1 %5001 to i32
  %5004 = sub nsw i32 %5002, %5003
  %5005 = sitofp i32 %5004 to float
  %5006 = call float @dx.op.unary.f32(i32 6, float %4999)  ; FAbs(value)
  %5007 = fsub fast float -0.000000e+00, %4991
  %5008 = fsub fast float %5007, %4989
  %5009 = fadd fast float %5008, %5006
  %5010 = call float @dx.op.binary.f32(i32 35, float %5009, float 0.000000e+00)  ; FMax(a,b)
  %5011 = fmul fast float %5005, %5010
  %5012 = fadd fast float %4978, %5011
  %5013 = call float @dx.op.unary.f32(i32 21, float %5012)  ; Exp(value)
  %5014 = fmul fast float %5013, 0x3F50624DE0000000
  %5015 = fcmp fast oeq float %4742, 0.000000e+00
  %5016 = fdiv fast float 0x400C5BF880000000, %4741
  %5017 = fmul fast float %5014, %5016
  %5018 = select i1 %5015, float 1.000000e+00, float %5017
  %5019 = call float @dx.op.binary.f32(i32 35, float %5018, float 1.000000e+00)  ; FMax(a,b)
  %5020 = fadd fast float %5019, -1.000000e+00
  %5021 = fmul fast float %5020, %4998
  %5022 = fadd fast float %5021, 1.000000e+00
  br label %5023

; <label>:5023                                    ; preds = %4983, %4889
  %5024 = phi float [ %5022, %4983 ], [ 1.000000e+00, %4889 ]
  %5025 = call float @dx.op.unary.f32(i32 6, float %5024)  ; FAbs(value)
  %5026 = fmul fast float %5025, %4969
  %5027 = fmul fast float %5025, %4970
  %5028 = fmul fast float %5025, %4971
  %5029 = fmul fast float %4727, 9.843750e-01
  %5030 = fmul fast float %4682, 9.843750e-01
  %5031 = fadd fast float %5029, 7.812500e-03
  %5032 = fadd fast float %5030, 7.812500e-03
  %5033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %5031, float %5032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5034 = extractvalue %dx.types.ResRet.f32 %5033, 2
  %5035 = extractvalue %dx.types.ResRet.f32 %5033, 3
  %5036 = fmul fast float %5034, %4676
  %5037 = fmul fast float %5034, %4677
  %5038 = fmul fast float %5034, %4725
  %5039 = fadd fast float %5036, %5035
  %5040 = fadd fast float %5037, %5035
  %5041 = fadd fast float %5038, %5035
  %5042 = call float @dx.op.binary.f32(i32 35, float %5040, float %5041)  ; FMax(a,b)
  %5043 = call float @dx.op.binary.f32(i32 35, float %5039, float %5042)  ; FMax(a,b)
  %5044 = fsub fast float 1.000000e+00, %5043
  %5045 = fmul fast float %191, %191
  %5046 = fmul fast float %192, %192
  %5047 = fadd fast float %5046, %5045
  %5048 = fmul fast float %193, %193
  %5049 = fadd fast float %5047, %5048
  %5050 = call float @dx.op.unary.f32(i32 24, float %5049)  ; Sqrt(value)
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 1
  %5053 = fsub fast float %5050, %5052
  %5054 = extractvalue %dx.types.CBufRet.f32 %5051, 2
  %5055 = fmul fast float %5053, %5054
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5051, 0
  %5058 = extractvalue %dx.types.CBufRet.f32 %5051, 3
  %5059 = and i32 %4980, 4194304
  %5060 = icmp ne i32 %5059, 0
  %5061 = icmp ne i32 %4981, 0
  %5062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5063 = extractvalue %dx.types.CBufRet.f32 %5062, 0
  %5064 = extractvalue %dx.types.CBufRet.f32 %5062, 1
  %5065 = extractvalue %dx.types.CBufRet.f32 %5062, 2
  %5066 = extractvalue %dx.types.CBufRet.f32 %5062, 3
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.CBufRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5071 = extractvalue %dx.types.CBufRet.f32 %5067, 3
  %5072 = select i1 %5060, float %5063, float %5068
  %5073 = select i1 %5060, float %5064, float %5069
  %5074 = select i1 %5060, float %5065, float %5070
  %5075 = select i1 %5060, float %5066, float %5071
  %5076 = select i1 %5061, float 0.000000e+00, float %5075
  %5077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.CBufRet.f32 %5077, 1
  %5080 = select i1 %5060, float %5078, float %5079
  %5081 = select i1 %5061, float 0.000000e+00, float %5080
  %5082 = extractvalue %dx.types.CBufRet.f32 %5077, 2
  %5083 = extractvalue %dx.types.CBufRet.f32 %5077, 3
  %5084 = select i1 %5060, float %5082, float %5083
  %5085 = select i1 %5061, float 0.000000e+00, float %5084
  %5086 = fmul fast float %5056, %57
  %5087 = fmul fast float %5086, %5058
  %5088 = fmul fast float %5087, %5085
  %5089 = fadd fast float %5088, 1.000000e+00
  %5090 = fmul fast float %5044, %5026
  %5091 = fmul fast float %5090, %5089
  %5092 = fmul fast float %5044, %5027
  %5093 = fmul fast float %5092, %5089
  %5094 = fmul fast float %5044, %5028
  %5095 = fmul fast float %5094, %5089
  %5096 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4674, float %4675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5097 = fcmp fast ogt float %5096, 0x3E7FF19E20000000
  %5098 = fdiv fast float 1.000000e+00, %5096
  %5099 = select i1 %5097, float %5098, float 0.000000e+00
  %5100 = fmul fast float %5099, %4673
  %5101 = fmul fast float %5099, %4674
  %5102 = fmul fast float %5099, %4675
  %5103 = fadd fast float %5100, -1.000000e+00
  %5104 = fadd fast float %5101, -1.000000e+00
  %5105 = fadd fast float %5102, -1.000000e+00
  %5106 = fmul fast float %5103, 5.000000e-01
  %5107 = fmul fast float %5104, 5.000000e-01
  %5108 = fmul fast float %5105, 5.000000e-01
  %5109 = fadd fast float %5106, 1.000000e+00
  %5110 = fadd fast float %5107, 1.000000e+00
  %5111 = fadd fast float %5108, 1.000000e+00
  %5112 = fsub fast float %5072, %5109
  %5113 = fsub fast float %5073, %5110
  %5114 = fsub fast float %5074, %5111
  %5115 = fmul fast float %5112, %5076
  %5116 = fmul fast float %5113, %5076
  %5117 = fmul fast float %5114, %5076
  %5118 = fadd fast float %5115, %5109
  %5119 = fadd fast float %5116, %5110
  %5120 = fadd fast float %5117, %5111
  %5121 = fmul fast float %5039, %4973
  %5122 = fmul fast float %5040, %4974
  %5123 = fmul fast float %5041, %4975
  %5124 = fsub fast float 1.000000e+00, %4727
  %5125 = bitcast float %5124 to i32
  %5126 = sitofp i32 %5125 to float
  %5127 = fmul fast float %5126, 5.000000e+00
  %5128 = fadd fast float %5127, 0xC1EFBF8940000000
  %5129 = fptosi float %5128 to i32
  %5130 = bitcast i32 %5129 to float
  %5131 = fmul fast float %5130, %57
  %5132 = fmul fast float %5131, %5056
  %5133 = fmul fast float %5132, %5057
  %5134 = fmul fast float %5133, %5081
  %5135 = fmul fast float %5090, %5134
  %5136 = fmul fast float %5135, %5118
  %5137 = fmul fast float %5092, %5134
  %5138 = fmul fast float %5137, %5119
  %5139 = fmul fast float %5094, %5134
  %5140 = fmul fast float %5139, %5120
  %5141 = fmul fast float %5091, %1241
  %5142 = fmul fast float %5093, %1241
  %5143 = fmul fast float %5095, %1241
  %5144 = fadd fast float %5121, %3455
  %5145 = fadd fast float %5144, %5136
  %5146 = fmul fast float %5145, %1241
  %5147 = fadd fast float %5122, %3456
  %5148 = fadd fast float %5147, %5138
  %5149 = fmul fast float %5148, %1241
  %5150 = fadd fast float %5123, %3457
  %5151 = fadd fast float %5150, %5140
  %5152 = fmul fast float %5151, %1241
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5155 = fcmp fast oeq float %5154, 0.000000e+00
  br i1 %5155, label %6201, label %5156

; <label>:5156                                    ; preds = %5023
  %5157 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5159 = extractvalue %dx.types.CBufRet.f32 %5153, 2
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5167 = call float @dx.op.dot3.f32(i32 55, float %5161, float %5162, float %5163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = select i1 %250, float %5165, float %5161
  %5169 = select i1 %250, float %5167, float %5162
  %5170 = select i1 %250, float %5166, float %5163
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 2
  %5173 = fmul fast float %5172, %117
  %5174 = fmul fast float %5172, %119
  %5175 = fmul fast float %5172, %121
  %5176 = fadd fast float %5173, %191
  %5177 = fadd fast float %5174, %192
  %5178 = fadd fast float %5175, %193
  %5179 = fcmp fast olt float %5154, 0.000000e+00
  br i1 %5179, label %5819, label %5180

; <label>:5180                                    ; preds = %5156
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.CBufRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.CBufRet.f32 %5181, 2
  %5185 = extractvalue %dx.types.CBufRet.f32 %5181, 3
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.CBufRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.CBufRet.f32 %5186, 2
  %5190 = extractvalue %dx.types.CBufRet.f32 %5186, 3
  %5191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5192 = extractvalue %dx.types.CBufRet.f32 %5191, 0
  %5193 = extractvalue %dx.types.CBufRet.f32 %5191, 1
  %5194 = extractvalue %dx.types.CBufRet.f32 %5191, 2
  %5195 = extractvalue %dx.types.CBufRet.f32 %5191, 3
  %5196 = fmul fast float %5182, %5176
  %5197 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5183, float %5196)  ; FMad(a,b,c)
  %5198 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5184, float %5197)  ; FMad(a,b,c)
  %5199 = fadd fast float %5198, %5185
  %5200 = fmul fast float %5187, %5176
  %5201 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5188, float %5200)  ; FMad(a,b,c)
  %5202 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5189, float %5201)  ; FMad(a,b,c)
  %5203 = fadd fast float %5202, %5190
  %5204 = fmul fast float %5192, %5176
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5193, float %5204)  ; FMad(a,b,c)
  %5206 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5194, float %5205)  ; FMad(a,b,c)
  %5207 = fadd fast float %5206, %5195
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 0
  %5210 = fcmp fast une float %5209, 0.000000e+00
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5215 = fmul fast float %5214, %5199
  %5216 = fmul fast float %5214, %5203
  %5217 = fadd fast float %5215, %5212
  %5218 = fadd fast float %5216, %5213
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.CBufRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.CBufRet.f32 %5219, 3
  %5223 = fmul fast float %5222, %5199
  %5224 = fmul fast float %5222, %5203
  %5225 = fadd fast float %5223, %5220
  %5226 = fadd fast float %5224, %5221
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5229 = fsub fast float %5228, %5207
  %5230 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5231 = fmul fast float %5229, %5230
  %5232 = fsub fast float 1.000000e+00, %5231
  %5233 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  br i1 %5210, label %5294, label %5234

; <label>:5234                                    ; preds = %5180
  %5235 = extractvalue %dx.types.CBufRet.f32 %5219, 2
  %5236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.f32 %5236, 2
  %5238 = fadd fast float %5237, %5235
  %5239 = fcmp fast ogt float %5238, 0.000000e+00
  br i1 %5239, label %5240, label %5264

; <label>:5240                                    ; preds = %5234
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.CBufRet.f32 %5241, 1
  %5244 = fsub fast float %5225, %5242
  %5245 = fsub fast float %5226, %5243
  %5246 = fcmp fast olt float %5244, 0.000000e+00
  %5247 = fcmp fast olt float %5245, 0.000000e+00
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.CBufRet.f32 %5248, 1
  %5251 = extractvalue %dx.types.CBufRet.f32 %5248, 2
  %5252 = extractvalue %dx.types.CBufRet.f32 %5248, 3
  %5253 = select i1 %5246, float %5249, float %5251
  %5254 = select i1 %5247, float %5250, float %5252
  %5255 = fmul fast float %5253, %5244
  %5256 = fmul fast float %5254, %5245
  %5257 = call float @dx.op.unary.f32(i32 6, float %5255)  ; FAbs(value)
  %5258 = call float @dx.op.unary.f32(i32 6, float %5256)  ; FAbs(value)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5260 = call float @dx.op.binary.f32(i32 35, float %5257, float %5258)  ; FMax(a,b)
  %5261 = fsub fast float %5259, %5260
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = fmul fast float %5262, %5233
  br label %5264

; <label>:5264                                    ; preds = %5240, %5234
  %5265 = phi float [ %5263, %5240 ], [ 0.000000e+00, %5234 ]
  %5266 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5267 = extractvalue %dx.types.CBufRet.f32 %5236, 1
  %5268 = fadd fast float %5267, %5266
  %5269 = fcmp fast ogt float %5268, 0.000000e+00
  br i1 %5269, label %5270, label %5294

; <label>:5270                                    ; preds = %5264
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5274 = fsub fast float %5217, %5272
  %5275 = fsub fast float %5218, %5273
  %5276 = fcmp fast olt float %5274, 0.000000e+00
  %5277 = fcmp fast olt float %5275, 0.000000e+00
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.CBufRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.CBufRet.f32 %5278, 2
  %5282 = extractvalue %dx.types.CBufRet.f32 %5278, 3
  %5283 = select i1 %5276, float %5279, float %5281
  %5284 = select i1 %5277, float %5280, float %5282
  %5285 = fmul fast float %5283, %5274
  %5286 = fmul fast float %5284, %5275
  %5287 = call float @dx.op.unary.f32(i32 6, float %5285)  ; FAbs(value)
  %5288 = call float @dx.op.unary.f32(i32 6, float %5286)  ; FAbs(value)
  %5289 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5290 = call float @dx.op.binary.f32(i32 35, float %5287, float %5288)  ; FMax(a,b)
  %5291 = fsub fast float %5289, %5290
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fmul fast float %5292, %5233
  br label %5294

; <label>:5294                                    ; preds = %5270, %5264, %5180
  %5295 = phi float [ 0.000000e+00, %5180 ], [ %5293, %5270 ], [ 0.000000e+00, %5264 ]
  %5296 = phi float [ 0.000000e+00, %5180 ], [ %5265, %5270 ], [ %5265, %5264 ]
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 1
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.CBufRet.f32 %5300, 1
  %5303 = fsub fast float %5199, %5301
  %5304 = fsub fast float %5203, %5302
  %5305 = fcmp fast olt float %5303, 0.000000e+00
  %5306 = fcmp fast olt float %5304, 0.000000e+00
  %5307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.CBufRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.CBufRet.f32 %5307, 2
  %5311 = extractvalue %dx.types.CBufRet.f32 %5307, 3
  %5312 = select i1 %5305, float %5308, float %5310
  %5313 = select i1 %5306, float %5309, float %5311
  %5314 = fmul fast float %5312, %5303
  %5315 = fmul fast float %5313, %5304
  %5316 = call float @dx.op.unary.f32(i32 6, float %5314)  ; FAbs(value)
  %5317 = call float @dx.op.unary.f32(i32 6, float %5315)  ; FAbs(value)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5319 = call float @dx.op.binary.f32(i32 35, float %5316, float %5317)  ; FMax(a,b)
  %5320 = fsub fast float %5318, %5319
  %5321 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5322 = call float @dx.op.binary.f32(i32 36, float %5321, float %5299)  ; FMin(a,b)
  %5323 = fmul fast float %5322, %5233
  %5324 = fsub fast float %5295, %5323
  %5325 = fsub fast float %5296, %5295
  %5326 = fsub fast float %5325, %5323
  %5327 = call float @dx.op.binary.f32(i32 35, float %5295, float %5296)  ; FMax(a,b)
  %5328 = call float @dx.op.binary.f32(i32 35, float %5323, float %5327)  ; FMax(a,b)
  %5329 = fcmp fast olt float %5328, 1.000000e+00
  br i1 %5329, label %5330, label %5728, !dx.controlflow.hints !93

; <label>:5330                                    ; preds = %5294
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = fcmp fast une float %5332, 0.000000e+00
  br i1 %5333, label %5334, label %5728, !dx.controlflow.hints !94

; <label>:5334                                    ; preds = %5330
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.CBufRet.f32 %5335, 2
  %5339 = extractvalue %dx.types.CBufRet.f32 %5335, 3
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.CBufRet.f32 %5340, 1
  %5343 = extractvalue %dx.types.CBufRet.f32 %5340, 2
  %5344 = extractvalue %dx.types.CBufRet.f32 %5340, 3
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.CBufRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.CBufRet.f32 %5345, 2
  %5349 = extractvalue %dx.types.CBufRet.f32 %5345, 3
  %5350 = fmul fast float %5336, %5176
  %5351 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5337, float %5350)  ; FMad(a,b,c)
  %5352 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5338, float %5351)  ; FMad(a,b,c)
  %5353 = fadd fast float %5352, %5339
  %5354 = fmul fast float %5341, %5176
  %5355 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5342, float %5354)  ; FMad(a,b,c)
  %5356 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5343, float %5355)  ; FMad(a,b,c)
  %5357 = fadd fast float %5356, %5344
  %5358 = fmul fast float %5346, %5176
  %5359 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5347, float %5358)  ; FMad(a,b,c)
  %5360 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5348, float %5359)  ; FMad(a,b,c)
  %5361 = fadd fast float %5360, %5349
  %5362 = fcmp fast oge float %5353, 1.000000e+00
  %5363 = fcmp fast oge float %5357, 1.000000e+00
  %5364 = or i1 %5362, %5363
  %5365 = fcmp fast olt float %5353, 0.000000e+00
  %5366 = fcmp fast olt float %5357, 0.000000e+00
  %5367 = or i1 %5365, %5366
  %5368 = or i1 %5364, %5367
  br i1 %5368, label %5728, label %5369, !dx.controlflow.hints !95

; <label>:5369                                    ; preds = %5334
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 0
  %5372 = extractvalue %dx.types.CBufRet.f32 %5370, 1
  %5373 = extractvalue %dx.types.CBufRet.f32 %5370, 2
  %5374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.i32 %5374, 2
  %5376 = uitofp i32 %5375 to float
  %5377 = extractvalue %dx.types.CBufRet.i32 %5374, 3
  %5378 = uitofp i32 %5377 to float
  %5379 = extractvalue %dx.types.CBufRet.f32 %5370, 3
  %5380 = fmul fast float %5379, 2.000000e+00
  %5381 = fsub fast float %5353, %5371
  %5382 = fsub fast float %5357, %5372
  %5383 = fmul fast float %5380, %5381
  %5384 = fmul fast float %5380, %5382
  %5385 = fdiv fast float 1.000000e+00, %5159
  %5386 = fmul fast float %5384, %5385
  %5387 = call float @dx.op.unary.f32(i32 6, float %5386)  ; FAbs(value)
  %5388 = fmul fast float %5373, %5178
  %5389 = fmul fast float %5388, %5380
  %5390 = call float @dx.op.unary.f32(i32 6, float %5389)  ; FAbs(value)
  %5391 = call float @dx.op.unary.f32(i32 6, float %5383)  ; FAbs(value)
  %5392 = call float @dx.op.binary.f32(i32 35, float %5390, float %5387)  ; FMax(a,b)
  %5393 = call float @dx.op.binary.f32(i32 35, float %5391, float %5392)  ; FMax(a,b)
  %5394 = fmul fast float %5393, 2.000000e+00
  %5395 = call float @dx.op.unary.f32(i32 23, float %5394)  ; Log(value)
  %5396 = call float @dx.op.binary.f32(i32 35, float %5395, float %5376)  ; FMax(a,b)
  %5397 = call float @dx.op.unary.f32(i32 22, float %5396)  ; Frc(value)
  %5398 = fadd fast float %5397, 0xBFEA666660000000
  %5399 = fmul fast float %5398, 8.000000e+00
  %5400 = call float @dx.op.unary.f32(i32 7, float %5399)  ; Saturate(value)
  %5401 = call float @dx.op.unary.f32(i32 27, float %5396)  ; Round_ni(value)
  %5402 = fadd fast float %5401, %5400
  %5403 = call float @dx.op.binary.f32(i32 36, float %5402, float %5378)  ; FMin(a,b)
  %5404 = call float @dx.op.unary.f32(i32 27, float %5403)  ; Round_ni(value)
  %5405 = fsub fast float -0.000000e+00, %5404
  %5406 = call float @dx.op.unary.f32(i32 21, float %5405)  ; Exp(value)
  %5407 = fmul fast float %5406, %5380
  %5408 = fmul fast float %5407, %5353
  %5409 = fmul fast float %5407, %5357
  %5410 = fmul fast float %5408, 2.500000e-01
  %5411 = fmul fast float %5409, 2.500000e-01
  %5412 = fadd fast float %5410, 5.000000e-01
  %5413 = fadd fast float %5411, 5.000000e-01
  %5414 = fsub fast float %5378, %5376
  %5415 = fptoui float %5414 to i32
  %5416 = add i32 %5415, 320
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %5416)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.CBufRet.f32 %5417, 1
  %5420 = fcmp fast une float %5403, %5378
  %5421 = fsub fast float %5353, %5418
  %5422 = fsub fast float %5357, %5419
  %5423 = call float @dx.op.unary.f32(i32 6, float %5421)  ; FAbs(value)
  %5424 = call float @dx.op.unary.f32(i32 6, float %5422)  ; FAbs(value)
  %5425 = fmul fast float %5423, %5407
  %5426 = fmul fast float %5424, %5407
  %5427 = fcmp fast olt float %5425, 1.000000e+00
  %5428 = fcmp fast olt float %5426, 1.000000e+00
  %5429 = and i1 %5427, %5428
  %5430 = or i1 %5420, %5429
  br i1 %5430, label %5431, label %5728, !dx.controlflow.hints !96

; <label>:5431                                    ; preds = %5369
  %5432 = fmul fast float %5409, 5.000000e-01
  %5433 = fmul fast float %5408, 5.000000e-01
  %5434 = fadd fast float %5432, 5.000000e-01
  %5435 = fadd fast float %5433, 5.000000e-01
  %5436 = sitofp i32 %5375 to float
  %5437 = fsub fast float %5403, %5436
  %5438 = call float @dx.op.unary.f32(i32 27, float %5437)  ; Round_ni(value)
  %5439 = call float @dx.op.unary.f32(i32 22, float %5403)  ; Frc(value)
  %5440 = call float @dx.op.unary.f32(i32 22, float %5435)  ; Frc(value)
  %5441 = call float @dx.op.unary.f32(i32 22, float %5434)  ; Frc(value)
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %5440, float %5441, float %5438, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5446 = extractvalue %dx.types.ResRet.f32 %5442, 3
  %5447 = fcmp fast ogt float %5439, 0.000000e+00
  br i1 %5447, label %5448, label %5469, !dx.controlflow.hints !97

; <label>:5448                                    ; preds = %5431
  %5449 = fadd fast float %5438, 1.000000e+00
  %5450 = call float @dx.op.unary.f32(i32 22, float %5412)  ; Frc(value)
  %5451 = call float @dx.op.unary.f32(i32 22, float %5413)  ; Frc(value)
  %5452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %5450, float %5451, float %5449, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5456 = extractvalue %dx.types.ResRet.f32 %5452, 3
  %5457 = fsub fast float %5453, %5443
  %5458 = fsub fast float %5454, %5444
  %5459 = fsub fast float %5455, %5445
  %5460 = fsub fast float %5456, %5446
  %5461 = fmul fast float %5457, %5439
  %5462 = fmul fast float %5458, %5439
  %5463 = fmul fast float %5459, %5439
  %5464 = fmul fast float %5460, %5439
  %5465 = fadd fast float %5461, %5443
  %5466 = fadd fast float %5462, %5444
  %5467 = fadd fast float %5463, %5445
  %5468 = fadd fast float %5464, %5446
  br label %5469

; <label>:5469                                    ; preds = %5448, %5431
  %5470 = phi float [ %5465, %5448 ], [ %5443, %5431 ]
  %5471 = phi float [ %5466, %5448 ], [ %5444, %5431 ]
  %5472 = phi float [ %5467, %5448 ], [ %5445, %5431 ]
  %5473 = phi float [ %5468, %5448 ], [ %5446, %5431 ]
  %5474 = fadd fast float %5470, -5.000000e-01
  %5475 = fadd fast float %5472, -5.000000e-01
  %5476 = fmul fast float %5474, 0xBFD5555560000000
  %5477 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5475, float %5476)  ; FMad(a,b,c)
  %5478 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5471, float 0.000000e+00)  ; FMad(a,b,c)
  %5479 = fadd fast float %5478, %5473
  %5480 = fmul fast float %5474, -7.500000e-01
  %5481 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5475, float %5480)  ; FMad(a,b,c)
  %5482 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5471, float 0.000000e+00)  ; FMad(a,b,c)
  %5483 = fadd fast float %5482, %5473
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5490 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5491 = fsub fast float %5487, %5477
  %5492 = fsub fast float %5488, %5479
  %5493 = fsub fast float %5489, %5481
  %5494 = fsub fast float %5490, %5483
  %5495 = fmul fast float %5491, %5485
  %5496 = fmul fast float %5492, %5485
  %5497 = fmul fast float %5493, %5485
  %5498 = fmul fast float %5494, %5485
  %5499 = fadd fast float %5495, %5477
  %5500 = fadd fast float %5496, %5479
  %5501 = fadd fast float %5497, %5481
  %5502 = fadd fast float %5498, %5483
  %5503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5504 = extractvalue %dx.types.ResRet.i32 %5503, 0
  %5505 = and i32 %5504, 536870911
  %5506 = uitofp i32 %5505 to float
  %5507 = fmul fast float %5506, %5353
  %5508 = fmul fast float %5506, %5357
  %5509 = fptoui float %5507 to i32
  %5510 = fptoui float %5508 to i32
  %5511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5512 = extractvalue %dx.types.ResRet.i32 %5511, 0
  %5513 = and i32 %5512, 31
  %5514 = lshr i32 %5509, %5513
  %5515 = lshr i32 %5510, %5513
  %5516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5517 = extractvalue %dx.types.ResRet.i32 %5516, 0
  %5518 = and i32 %5517, 31
  %5519 = shl i32 1, %5518
  %5520 = call i32 @dx.op.binary.i32(i32 40, i32 %5519, i32 4)  ; UMin(a,b)
  %5521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5522 = extractvalue %dx.types.ResRet.i32 %5521, 0
  %5523 = extractvalue %dx.types.ResRet.i32 %5521, 1
  %5524 = icmp eq i32 %5520, 0
  br i1 %5524, label %5566, label %5525

; <label>:5525                                    ; preds = %5469
  br label %5526

; <label>:5526                                    ; preds = %5554, %5525
  %5527 = phi i32 [ %5557, %5554 ], [ 0, %5525 ]
  %5528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5529 = extractvalue %dx.types.ResRet.i32 %5528, 0
  %5530 = lshr i32 %5529, 16
  %5531 = and i32 %5530, 31
  %5532 = shl i32 %5515, %5531
  %5533 = add i32 %5532, %5514
  %5534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5535 = extractvalue %dx.types.ResRet.i32 %5534, 0
  %5536 = and i32 %5535, 31
  %5537 = shl i32 %5533, %5536
  %5538 = add i32 %5537, %5527
  %5539 = shl i32 %5538, 2
  %5540 = add i32 %5539, 32
  %5541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5540, i32 undef)  ; BufferLoad(srv,index,wot)
  %5542 = extractvalue %dx.types.ResRet.i32 %5541, 0
  %5543 = icmp slt i32 %5542, 0
  %5544 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5527
  %5545 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5527
  %5546 = bitcast float* %5544 to i32*
  %5547 = bitcast float* %5545 to i32*
  br i1 %5543, label %5548, label %5554

; <label>:5548                                    ; preds = %5526
  %5549 = and i32 %5542, 1073741823
  %5550 = add nuw nsw i32 %5549, 20
  %5551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5550, i32 undef)  ; BufferLoad(srv,index,wot)
  %5552 = extractvalue %dx.types.ResRet.i32 %5551, 0
  %5553 = extractvalue %dx.types.ResRet.i32 %5551, 1
  br label %5554

; <label>:5554                                    ; preds = %5548, %5526
  %5555 = phi i32 [ %5552, %5548 ], [ %5522, %5526 ]
  %5556 = phi i32 [ %5553, %5548 ], [ %5523, %5526 ]
  store i32 %5555, i32* %5546, align 4
  store i32 %5556, i32* %5547, align 4
  %5557 = add nuw i32 %5527, 1
  %5558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.i32 %5558, 2
  %5560 = icmp eq i32 %5559, 0
  %5561 = icmp ugt i32 %5542, -1073741825
  %5562 = and i1 %5561, %5560
  %5563 = icmp ult i32 %5557, %5520
  %5564 = and i1 %5562, %5563
  br i1 %5564, label %5526, label %5565

; <label>:5565                                    ; preds = %5554
  br label %5566

; <label>:5566                                    ; preds = %5565, %5469
  %5567 = phi i32 [ 0, %5469 ], [ %5557, %5565 ]
  %5568 = extractvalue %dx.types.CBufRet.f32 %5331, 2
  %5569 = fptoui float %5568 to i32
  %5570 = icmp eq i32 %5569, 0
  br i1 %5570, label %5622, label %5571

; <label>:5571                                    ; preds = %5566
  br label %5572

; <label>:5572                                    ; preds = %5617, %5571
  %5573 = phi i32 [ %5618, %5617 ], [ %5567, %5571 ]
  %5574 = phi i32 [ %5619, %5617 ], [ 0, %5571 ]
  %5575 = lshr i32 %5574, 2
  %5576 = and i32 %5574, 3
  %5577 = add nuw nsw i32 %5575, 83
  %5578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %5577)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.i32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.i32 %5578, 1
  %5581 = extractvalue %dx.types.CBufRet.i32 %5578, 2
  %5582 = extractvalue %dx.types.CBufRet.i32 %5578, 3
  %5583 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %5579, i32* %5583, align 4
  %5584 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %5580, i32* %5584, align 4
  %5585 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %5581, i32* %5585, align 4
  %5586 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %5582, i32* %5586, align 4
  %5587 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %5576
  %5588 = load i32, i32* %5587, align 4, !tbaa !98, !noalias !102
  %5589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5590 = extractvalue %dx.types.ResRet.i32 %5589, 0
  %5591 = lshr i32 %5590, 16
  %5592 = and i32 %5591, 31
  %5593 = shl i32 %5515, %5592
  %5594 = add i32 %5593, %5514
  %5595 = shl i32 %5594, 2
  %5596 = add i32 %5595, %5588
  %5597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5596, i32 undef)  ; BufferLoad(srv,index,wot)
  %5598 = extractvalue %dx.types.ResRet.i32 %5597, 0
  %5599 = icmp eq i32 %5598, 0
  br i1 %5599, label %5617, label %5600

; <label>:5600                                    ; preds = %5572
  %5601 = icmp slt i32 %5598, 0
  %5602 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5573
  %5603 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5573
  %5604 = bitcast float* %5602 to i32*
  %5605 = bitcast float* %5603 to i32*
  br i1 %5601, label %5606, label %5613

; <label>:5606                                    ; preds = %5600
  %5607 = and i32 %5598, 1073741823
  %5608 = add i32 %5588, 20
  %5609 = add i32 %5608, %5607
  %5610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5609, i32 undef)  ; BufferLoad(srv,index,wot)
  %5611 = extractvalue %dx.types.ResRet.i32 %5610, 0
  %5612 = extractvalue %dx.types.ResRet.i32 %5610, 1
  br label %5613

; <label>:5613                                    ; preds = %5606, %5600
  %5614 = phi i32 [ %5611, %5606 ], [ %5522, %5600 ]
  %5615 = phi i32 [ %5612, %5606 ], [ %5523, %5600 ]
  store i32 %5614, i32* %5604, align 4
  store i32 %5615, i32* %5605, align 4
  %5616 = add i32 %5573, 1
  br label %5617

; <label>:5617                                    ; preds = %5613, %5572
  %5618 = phi i32 [ %5573, %5572 ], [ %5616, %5613 ]
  %5619 = add nuw i32 %5574, 1
  %5620 = icmp eq i32 %5619, %5569
  br i1 %5620, label %5621, label %5572

; <label>:5621                                    ; preds = %5617
  br label %5622

; <label>:5622                                    ; preds = %5621, %5566
  %5623 = phi i32 [ %5567, %5566 ], [ %5618, %5621 ]
  %5624 = icmp eq i32 %5623, 1
  %5625 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %5626 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %5624, label %5627, label %5630

; <label>:5627                                    ; preds = %5622
  %5628 = load float, float* %5625, align 4
  %5629 = load float, float* %5626, align 4
  br label %5657

; <label>:5630                                    ; preds = %5622
  %5631 = load float, float* %5625, align 4
  %5632 = load float, float* %5626, align 4
  %5633 = fdiv fast float 1.000000e+00, %5632
  %5634 = fsub fast float %5631, %5633
  %5635 = icmp ugt i32 %5623, 1
  br i1 %5635, label %5636, label %5652

; <label>:5636                                    ; preds = %5630
  br label %5637

; <label>:5637                                    ; preds = %5637, %5636
  %5638 = phi float [ %5647, %5637 ], [ %5634, %5636 ]
  %5639 = phi float [ %5648, %5637 ], [ %5631, %5636 ]
  %5640 = phi i32 [ %5649, %5637 ], [ 1, %5636 ]
  %5641 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5640
  %5642 = load float, float* %5641, align 4
  %5643 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5640
  %5644 = load float, float* %5643, align 4
  %5645 = fdiv fast float 1.000000e+00, %5644
  %5646 = fsub fast float %5642, %5645
  %5647 = call float @dx.op.binary.f32(i32 36, float %5638, float %5646)  ; FMin(a,b)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5639, float %5642)  ; FMax(a,b)
  %5649 = add nuw i32 %5640, 1
  %5650 = icmp eq i32 %5649, %5623
  br i1 %5650, label %5651, label %5637

; <label>:5651                                    ; preds = %5637
  br label %5652

; <label>:5652                                    ; preds = %5651, %5630
  %5653 = phi float [ %5634, %5630 ], [ %5647, %5651 ]
  %5654 = phi float [ %5631, %5630 ], [ %5648, %5651 ]
  %5655 = fsub fast float %5654, %5653
  %5656 = fdiv fast float 1.000000e+00, %5655
  br label %5657

; <label>:5657                                    ; preds = %5652, %5627
  %5658 = phi float [ %5628, %5627 ], [ %5654, %5652 ]
  %5659 = phi float [ %5629, %5627 ], [ %5656, %5652 ]
  %5660 = fadd fast float %5361, %5658
  %5661 = fmul fast float %5660, %5659
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = fmul fast float %5662, 2.000000e+00
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = fmul fast float %5499, %5499
  %5666 = fsub fast float %5500, %5665
  %5667 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5666)  ; FMax(a,b)
  %5668 = fdiv fast float 1.000000e+00, %5667
  %5669 = fmul fast float %5500, %5499
  %5670 = fsub fast float %5501, %5669
  %5671 = fsub fast float %5664, %5499
  %5672 = fmul fast float %5664, %5664
  %5673 = fsub fast float %5672, %5500
  %5674 = fmul fast float %5668, %5670
  %5675 = fmul fast float %5674, %5671
  %5676 = fsub fast float %5673, %5675
  %5677 = fmul fast float %5500, %5500
  %5678 = fsub fast float %5502, %5677
  %5679 = fmul fast float %5670, %5670
  %5680 = fmul fast float %5679, %5668
  %5681 = fsub fast float %5678, %5680
  %5682 = fdiv fast float %5676, %5681
  %5683 = fmul fast float %5682, %5670
  %5684 = fsub fast float %5671, %5683
  %5685 = fmul fast float %5684, %5668
  %5686 = fmul fast float %5685, %5499
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = fmul fast float %5682, %5500
  %5689 = fsub fast float %5687, %5688
  %5690 = fmul fast float %5685, %5685
  %5691 = fmul fast float %5682, 4.000000e+00
  %5692 = fmul fast float %5691, %5689
  %5693 = fsub fast float %5690, %5692
  %5694 = call float @dx.op.unary.f32(i32 24, float %5693)  ; Sqrt(value)
  %5695 = fcmp fast oge float %5685, 0.000000e+00
  %5696 = fsub fast float -0.000000e+00, %5694
  %5697 = select i1 %5695, float %5696, float %5694
  %5698 = fsub fast float %5697, %5685
  %5699 = fdiv fast float %5698, %5682
  %5700 = fdiv fast float %5689, %5698
  %5701 = fmul fast float %5699, 5.000000e-01
  %5702 = fmul fast float %5700, 2.000000e+00
  %5703 = select i1 %5695, float %5701, float %5702
  %5704 = select i1 %5695, float %5702, float %5701
  %5705 = call float @dx.op.binary.f32(i32 35, float %5703, float %5704)  ; FMax(a,b)
  %5706 = call float @dx.op.binary.f32(i32 36, float %5703, float %5704)  ; FMin(a,b)
  %5707 = fcmp fast ogt float %5664, %5705
  %5708 = fsub fast float %5664, %5706
  %5709 = fsub fast float %5664, %5705
  %5710 = fsub fast float %5705, %5706
  %5711 = select i1 %5707, float %5709, float %5710
  %5712 = fmul float %5708, %5711
  %5713 = select i1 %5707, float %5706, float %5664
  %5714 = fcmp fast ogt float %5664, %5706
  %5715 = fmul fast float %5713, %5705
  %5716 = fadd fast float %5713, %5705
  %5717 = fmul fast float %5716, %5499
  %5718 = fadd fast float %5715, %5500
  %5719 = fsub fast float %5718, %5717
  %5720 = fdiv fast float %5719, %5712
  %5721 = select i1 %5714, float %5720, float 0.000000e+00
  %5722 = fsub fast float 1.000000e+00, %5721
  %5723 = select i1 %5707, float %5722, float %5721
  %5724 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5484, 3
  %5726 = fmul fast float %5725, %5724
  %5727 = fsub fast float 1.000000e+00, %5726
  br label %5728

; <label>:5728                                    ; preds = %5657, %5369, %5334, %5330, %5294
  %5729 = phi float [ 1.000000e+00, %5294 ], [ %5727, %5657 ], [ 1.000000e+00, %5334 ], [ 1.000000e+00, %5369 ], [ 1.000000e+00, %5330 ]
  %5730 = fcmp fast ogt float %5326, 0.000000e+00
  br i1 %5730, label %5731, label %5739, !dx.controlflow.hints !111

; <label>:5731                                    ; preds = %5728
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5734 = fadd fast float %5733, %5207
  %5735 = call float @dx.op.binary.f32(i32 35, float %5734, float 0.000000e+00)  ; FMax(a,b)
  %5736 = fadd fast float %5735, 0x3F10000000000000
  %5737 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %5225, float %5226, float undef, float undef, i32 0, i32 0, i32 undef, float %5736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5738 = extractvalue %dx.types.ResRet.f32 %5737, 0
  br label %5739

; <label>:5739                                    ; preds = %5731, %5728
  %5740 = phi float [ %5738, %5731 ], [ 1.000000e+00, %5728 ]
  %5741 = fcmp fast ogt float %5324, 0.000000e+00
  br i1 %5741, label %5742, label %5750, !dx.controlflow.hints !112

; <label>:5742                                    ; preds = %5739
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5745 = fadd fast float %5744, %5207
  %5746 = call float @dx.op.binary.f32(i32 35, float %5745, float 0.000000e+00)  ; FMax(a,b)
  %5747 = fadd fast float %5746, 0x3F10000000000000
  %5748 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %5217, float %5218, float undef, float undef, i32 0, i32 0, i32 undef, float %5747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5749 = extractvalue %dx.types.ResRet.f32 %5748, 0
  br label %5750

; <label>:5750                                    ; preds = %5742, %5739
  %5751 = phi float [ %5749, %5742 ], [ 1.000000e+00, %5739 ]
  %5752 = fcmp fast ogt float %5323, 0.000000e+00
  br i1 %5752, label %5753, label %5765, !dx.controlflow.hints !113

; <label>:5753                                    ; preds = %5750
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 0
  %5756 = fadd fast float %5755, %5207
  %5757 = call float @dx.op.binary.f32(i32 35, float %5756, float 0.000000e+00)  ; FMax(a,b)
  %5758 = fadd fast float %5757, 0x3F10000000000000
  br i1 %5210, label %5759, label %5762, !dx.controlflow.hints !114

; <label>:5759                                    ; preds = %5753
  %5760 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %5199, float %5203, float undef, float undef, i32 0, i32 0, i32 undef, float %5758)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5761 = extractvalue %dx.types.ResRet.f32 %5760, 0
  br label %5765

; <label>:5762                                    ; preds = %5753
  %5763 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %5199, float %5203, float undef, float undef, i32 0, i32 0, i32 undef, float %5758)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5764 = extractvalue %dx.types.ResRet.f32 %5763, 0
  br label %5765

; <label>:5765                                    ; preds = %5762, %5759, %5750
  %5766 = phi float [ %5761, %5759 ], [ %5764, %5762 ], [ 1.000000e+00, %5750 ]
  %5767 = fsub fast float %5740, %5729
  %5768 = fmul fast float %5767, %5296
  %5769 = fadd fast float %5768, %5729
  %5770 = fsub fast float %5751, %5769
  %5771 = fmul fast float %5770, %5295
  %5772 = fadd fast float %5771, %5769
  %5773 = fsub fast float %5766, %5772
  %5774 = fmul fast float %5773, %5323
  %5775 = fadd fast float %5774, %5772
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 2
  %5778 = fcmp fast ogt float %5777, 0.000000e+00
  br i1 %5778, label %5779, label %5819, !dx.controlflow.hints !115

; <label>:5779                                    ; preds = %5765
  %5780 = fcmp fast ugt float %5777, 0.000000e+00
  br i1 %5780, label %5781, label %5816

; <label>:5781                                    ; preds = %5779
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5792 = extractvalue %dx.types.CBufRet.f32 %5776, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5776, 1
  %5794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5795 = extractvalue %dx.types.CBufRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.CBufRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.CBufRet.f32 %5794, 2
  %5798 = fadd fast float %5795, %5176
  %5799 = fadd fast float %5796, %5177
  %5800 = fadd fast float %5797, %5178
  %5801 = fmul fast float %5798, %5783
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5784, float %5799, float %5801)  ; FMad(a,b,c)
  %5803 = call float @dx.op.tertiary.f32(i32 46, float %5785, float %5800, float %5802)  ; FMad(a,b,c)
  %5804 = fadd fast float %5803, %5786
  %5805 = fmul fast float %5798, %5788
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5799, float %5805)  ; FMad(a,b,c)
  %5807 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5800, float %5806)  ; FMad(a,b,c)
  %5808 = fadd fast float %5807, %5791
  %5809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %5804, float %5808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5810 = extractvalue %dx.types.ResRet.f32 %5809, 0
  %5811 = fmul fast float %5810, %5793
  %5812 = fadd fast float %5811, %5792
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = fmul fast float %5813, %5777
  %5815 = fsub fast float 1.000000e+00, %5814
  br label %5816

; <label>:5816                                    ; preds = %5781, %5779
  %5817 = phi float [ %5815, %5781 ], [ 1.000000e+00, %5779 ]
  %5818 = fmul fast float %5817, %5775
  br label %5819

; <label>:5819                                    ; preds = %5816, %5765, %5156
  %5820 = phi float [ 1.000000e+00, %5156 ], [ %5818, %5816 ], [ %5775, %5765 ]
  %5821 = call float @dx.op.binary.f32(i32 36, float %5820, float %5820)  ; FMin(a,b)
  %5822 = call float @dx.op.binary.f32(i32 36, float %5820, float %5821)  ; FMin(a,b)
  %5823 = fcmp fast ogt float %5822, 0.000000e+00
  br i1 %5823, label %5824, label %5984, !dx.controlflow.hints !116

; <label>:5824                                    ; preds = %5819
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.CBufRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5829 = extractvalue %dx.types.CBufRet.f32 %5825, 3
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5834 = extractvalue %dx.types.CBufRet.f32 %5830, 3
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5837 = extractvalue %dx.types.CBufRet.f32 %5835, 1
  %5838 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5839 = extractvalue %dx.types.CBufRet.f32 %5835, 3
  %5840 = fmul fast float %5826, %5176
  %5841 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5827, float %5840)  ; FMad(a,b,c)
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5828, float %5841)  ; FMad(a,b,c)
  %5843 = fadd fast float %5842, %5829
  %5844 = fmul fast float %5831, %5176
  %5845 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5832, float %5844)  ; FMad(a,b,c)
  %5846 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5833, float %5845)  ; FMad(a,b,c)
  %5847 = fadd fast float %5846, %5834
  %5848 = fmul fast float %5836, %5176
  %5849 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5837, float %5848)  ; FMad(a,b,c)
  %5850 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5838, float %5849)  ; FMad(a,b,c)
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.CBufRet.f32 %5851, 3
  %5855 = fmul fast float %5854, %5843
  %5856 = fmul fast float %5854, %5847
  %5857 = fadd fast float %5855, %5852
  %5858 = fadd fast float %5856, %5853
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = fsub fast float %5857, %5860
  %5863 = fsub fast float %5858, %5861
  %5864 = fcmp fast olt float %5862, 0.000000e+00
  %5865 = fcmp fast olt float %5863, 0.000000e+00
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5870 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5871 = select i1 %5864, float %5867, float %5869
  %5872 = select i1 %5865, float %5868, float %5870
  %5873 = fmul fast float %5871, %5862
  %5874 = fmul fast float %5872, %5863
  %5875 = call float @dx.op.unary.f32(i32 6, float %5873)  ; FAbs(value)
  %5876 = call float @dx.op.unary.f32(i32 6, float %5874)  ; FAbs(value)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5878 = call float @dx.op.binary.f32(i32 35, float %5875, float %5876)  ; FMax(a,b)
  %5879 = fsub fast float %5877, %5878
  %5880 = call float @dx.op.unary.f32(i32 7, float %5879)  ; Saturate(value)
  %5881 = fcmp fast ogt float %5880, 0.000000e+00
  br i1 %5881, label %5882, label %5923, !dx.controlflow.hints !117

; <label>:5882                                    ; preds = %5824
  %5883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %5857, float %5858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5884 = extractvalue %dx.types.ResRet.f32 %5883, 1
  %5885 = fcmp fast ogt float %5884, 0.000000e+00
  br i1 %5885, label %5886, label %5918

; <label>:5886                                    ; preds = %5882
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %5857, float %5858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = extractvalue %dx.types.ResRet.f32 %5887, 3
  %5892 = fsub fast float 1.000000e+00, %5839
  %5893 = fsub fast float %5892, %5850
  %5894 = fmul fast float %5893, 0x400921FB60000000
  %5895 = fadd fast float %5894, 0x3FF921FB60000000
  %5896 = call float @dx.op.unary.f32(i32 13, float %5895)  ; Sin(value)
  %5897 = fadd fast float %5896, -1.000000e+00
  %5898 = fmul fast float %5897, 0x3FD45F3060000000
  %5899 = fmul fast float %5893, 0x401921FB60000000
  %5900 = fadd fast float %5899, 0x400921FB60000000
  %5901 = call float @dx.op.unary.f32(i32 13, float %5900)  ; Sin(value)
  %5902 = fadd fast float %5901, 0x3E7777A5C0000000
  %5903 = fmul fast float %5902, 0x3FC45F3060000000
  %5904 = fmul fast float %5893, 0x4022D97C80000000
  %5905 = fadd fast float %5904, 0x4012D97C80000000
  %5906 = call float @dx.op.unary.f32(i32 13, float %5905)  ; Sin(value)
  %5907 = fadd fast float %5906, 1.000000e+00
  %5908 = fmul fast float %5907, 0x3FBB2995E0000000
  %5909 = fmul fast float %5893, 0x402921FB60000000
  %5910 = fadd fast float %5909, 0x401921FB60000000
  %5911 = call float @dx.op.unary.f32(i32 13, float %5910)  ; Sin(value)
  %5912 = fadd fast float %5911, 0xBE8777A5C0000000
  %5913 = fmul fast float %5912, 0x3FB45F3060000000
  %5914 = call float @dx.op.dot4.f32(i32 56, float %5888, float %5889, float %5890, float %5891, float %5898, float %5903, float %5908, float %5913)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5915 = fmul fast float %5914, 0xBFF7154760000000
  %5916 = call float @dx.op.unary.f32(i32 21, float %5915)  ; Exp(value)
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  br label %5918

; <label>:5918                                    ; preds = %5886, %5882
  %5919 = phi float [ %5917, %5886 ], [ 1.000000e+00, %5882 ]
  %5920 = fadd fast float %5919, -1.000000e+00
  %5921 = fmul fast float %5920, %5880
  %5922 = fadd fast float %5921, 1.000000e+00
  br label %5923

; <label>:5923                                    ; preds = %5918, %5824
  %5924 = phi float [ %5922, %5918 ], [ 1.000000e+00, %5824 ]
  %5925 = fmul fast float %5924, %5820
  %5926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.CBufRet.f32 %5926, 1
  %5929 = extractvalue %dx.types.CBufRet.f32 %5926, 2
  %5930 = fadd fast float %5927, %191
  %5931 = fadd fast float %5928, %192
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5934 = fsub fast float -0.000000e+00, %5930
  %5935 = fsub fast float -0.000000e+00, %5931
  %5936 = fsub fast float %4716, %5929
  %5937 = fadd fast float %5936, %5933
  %5938 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5934, float %5935, float %5937)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5157, float %5158, float %5159)  ; Dot3(ax,ay,az,bx,by,bz)
  %5940 = fdiv fast float 1.000000e+00, %5939
  %5941 = fmul fast float %5940, %5938
  %5942 = fmul fast float %5157, %5941
  %5943 = fmul fast float %5158, %5941
  %5944 = fadd fast float %5942, %5930
  %5945 = fadd fast float %5943, %5931
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.CBufRet.f32 %5946, 1
  %5949 = fsub fast float %5944, %5947
  %5950 = fsub fast float %5945, %5948
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5951, 3
  %5954 = fmul fast float %5949, %5952
  %5955 = fmul fast float %5950, %5953
  %5956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.i32 %5956, 3
  %5958 = icmp eq i32 %5957, 0
  br i1 %5958, label %5964, label %5959

; <label>:5959                                    ; preds = %5923
  %5960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %5954, float %5955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5961 = extractvalue %dx.types.ResRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.ResRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.ResRet.f32 %5960, 2
  br label %5969

; <label>:5964                                    ; preds = %5923
  %5965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %5954, float %5955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.ResRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.ResRet.f32 %5965, 2
  br label %5969

; <label>:5969                                    ; preds = %5964, %5959
  %5970 = phi float [ %5961, %5959 ], [ %5966, %5964 ]
  %5971 = phi float [ %5962, %5959 ], [ %5967, %5964 ]
  %5972 = phi float [ %5963, %5959 ], [ %5968, %5964 ]
  %5973 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5974 = fmul fast float %5973, %5970
  %5975 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5976 = fsub fast float %5941, %5975
  %5977 = fsub fast float %5976, %5974
  %5978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5977)  ; FMax(a,b)
  %5979 = fmul fast float %5978, %5971
  %5980 = call float @dx.op.binary.f32(i32 36, float %5972, float %5979)  ; FMin(a,b)
  %5981 = fmul fast float %5980, 0xBFF7154760000000
  %5982 = call float @dx.op.unary.f32(i32 21, float %5981)  ; Exp(value)
  %5983 = fmul fast float %5925, %5982
  br label %5984

; <label>:5984                                    ; preds = %5969, %5819
  %5985 = phi float [ %5983, %5969 ], [ %5820, %5819 ]
  %5986 = call float @dx.op.binary.f32(i32 36, float %5985, float %5985)  ; FMin(a,b)
  %5987 = call float @dx.op.binary.f32(i32 36, float %5985, float %5986)  ; FMin(a,b)
  %5988 = fcmp fast ogt float %5987, 0.000000e+00
  br i1 %5988, label %5989, label %6201, !dx.controlflow.hints !118

; <label>:5989                                    ; preds = %5984
  %5990 = fmul fast float %5985, %5168
  %5991 = fmul fast float %5985, %5169
  %5992 = fmul fast float %5985, %5170
  %5993 = fsub fast float %193, %3891
  %5994 = fcmp fast ogt float %5993, 0.000000e+00
  %5995 = fmul fast float %5157, 5.120000e+02
  %5996 = fmul fast float %5158, 5.120000e+02
  %5997 = fmul fast float %5159, 5.120000e+02
  %5998 = fadd fast float %5997, %193
  %5999 = fsub fast float %3891, %5998
  %6000 = fmul fast float %5999, 2.000000e+00
  %6001 = fadd fast float %6000, %5998
  %6002 = select i1 %5994, float %6001, float %5998
  %6003 = fsub fast float %6002, %193
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %6003, float %5995, float %5996, float %6003)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = call float @dx.op.unary.f32(i32 25, float %6004)  ; Rsqrt(value)
  %6006 = fmul fast float %6005, %5995
  %6007 = fmul fast float %6005, %5996
  %6008 = fmul fast float %6005, %6003
  %6009 = fsub fast float %3891, %193
  %6010 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6009)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = fdiv fast float 1.000000e+00, %6011
  %6013 = fmul fast float %6012, %6010
  %6014 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5993, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  %6016 = fcmp fast olt float %6014, 0.000000e+00
  %6017 = zext i1 %6015 to i32
  %6018 = zext i1 %6016 to i32
  %6019 = sub nsw i32 %6017, %6018
  %6020 = sitofp i32 %6019 to float
  %6021 = fsub fast float %6002, %3891
  %6022 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %6021, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = fcmp fast ogt float %6022, 0.000000e+00
  %6024 = fcmp fast olt float %6022, 0.000000e+00
  %6025 = zext i1 %6023 to i32
  %6026 = zext i1 %6024 to i32
  %6027 = sub nsw i32 %6025, %6026
  %6028 = sitofp i32 %6027 to float
  %6029 = fcmp fast une float %6020, %6028
  br i1 %6029, label %6030, label %6040

; <label>:6030                                    ; preds = %5989
  %6031 = fmul fast float %6013, %6008
  %6032 = fmul fast float %6013, %6007
  %6033 = fmul fast float %6013, %6006
  %6034 = fmul fast float %6033, %6033
  %6035 = fmul fast float %6032, %6032
  %6036 = fadd fast float %6034, %6035
  %6037 = fmul fast float %6031, %6031
  %6038 = fadd fast float %6036, %6037
  %6039 = call float @dx.op.unary.f32(i32 24, float %6038)  ; Sqrt(value)
  br label %6050

; <label>:6040                                    ; preds = %5989
  %6041 = icmp slt i32 %6019, 0
  br i1 %6041, label %6042, label %6050

; <label>:6042                                    ; preds = %6040
  %6043 = fsub fast float %193, %6002
  %6044 = fmul fast float %5995, %5995
  %6045 = fmul fast float %5996, %5996
  %6046 = fadd fast float %6044, %6045
  %6047 = fmul fast float %6043, %6043
  %6048 = fadd fast float %6046, %6047
  %6049 = call float @dx.op.unary.f32(i32 24, float %6048)  ; Sqrt(value)
  br label %6050

; <label>:6050                                    ; preds = %6042, %6040, %6030
  %6051 = phi float [ %6039, %6030 ], [ %6049, %6042 ], [ 0.000000e+00, %6040 ]
  %6052 = fsub fast float -0.000000e+00, %6051
  %6053 = select i1 %5994, float -0.000000e+00, float %6052
  %6054 = fmul fast float %3892, 0x3FF7154760000000
  %6055 = fmul fast float %6054, %6053
  %6056 = fmul fast float %3893, 0x3FF7154760000000
  %6057 = fmul fast float %6056, %6053
  %6058 = fmul fast float %3894, 0x3FF7154760000000
  %6059 = fmul fast float %6058, %6053
  %6060 = call float @dx.op.unary.f32(i32 21, float %6055)  ; Exp(value)
  %6061 = call float @dx.op.unary.f32(i32 21, float %6057)  ; Exp(value)
  %6062 = call float @dx.op.unary.f32(i32 21, float %6059)  ; Exp(value)
  %6063 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  %6064 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6065 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6066 = fmul fast float %5990, %6063
  %6067 = fmul fast float %5991, %6064
  %6068 = fmul fast float %5992, %6065
  %6069 = fsub fast float %5157, %4719
  %6070 = fsub fast float %5158, %4720
  %6071 = fsub fast float %5159, %4721
  %6072 = call float @dx.op.dot3.f32(i32 55, float %6069, float %6070, float %6071, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = call float @dx.op.unary.f32(i32 25, float %6072)  ; Rsqrt(value)
  %6074 = fmul fast float %6073, %6069
  %6075 = fmul fast float %6073, %6070
  %6076 = fmul fast float %6073, %6071
  %6077 = call float @dx.op.dot3.f32(i32 55, float %5157, float %5158, float %5159, float %4679, float %4680, float %4681)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %6074, float %6075, float %6076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6080 = fmul fast float %6079, %6079
  %6081 = fmul fast float %6080, %4740
  %6082 = call float @dx.op.unary.f32(i32 7, float %6081)  ; Saturate(value)
  %6083 = fmul fast float %6082, %6079
  %6084 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4680, float %4681, float %6074, float %6075, float %6076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6085 = fmul fast float %6084, %6084
  %6086 = call float @dx.op.unary.f32(i32 6, float %6077)  ; FAbs(value)
  %6087 = fsub fast float 1.000000e+00, %4682
  %6088 = call float @dx.op.binary.f32(i32 35, float %6087, float 0x3F847AE140000000)  ; FMax(a,b)
  %6089 = fmul fast float %6088, %6088
  %6090 = fmul fast float %6089, %6089
  %6091 = fsub fast float 1.000000e+00, %6090
  %6092 = fmul fast float %4727, %4727
  %6093 = fmul fast float %6092, %6091
  %6094 = fadd fast float %6093, %6090
  %6095 = bitcast float %6094 to i32
  %6096 = ashr i32 %6095, 1
  %6097 = add nsw i32 %6096, 532487669
  %6098 = bitcast i32 %6097 to float
  %6099 = fadd fast float %6098, %4727
  %6100 = fmul fast float %6090, %6085
  %6101 = fsub fast float 1.000000e+00, %6085
  %6102 = fadd fast float %6101, %6100
  %6103 = fmul fast float %6086, %6086
  %6104 = fmul fast float %6103, %6091
  %6105 = fadd fast float %6104, %6090
  %6106 = bitcast float %6105 to i32
  %6107 = ashr i32 %6106, 1
  %6108 = add nsw i32 %6107, 532487669
  %6109 = bitcast i32 %6108 to float
  %6110 = fadd fast float %6109, %6086
  %6111 = fmul fast float %6102, %6102
  %6112 = fmul fast float %6111, %6099
  %6113 = fmul fast float %6112, %6110
  %6114 = fdiv fast float 1.000000e+00, %6113
  %6115 = fmul fast float %6090, %6114
  %6116 = fmul fast float %6115, 0x3FF0A00000000000
  %6117 = fsub fast float 1.000000e+00, %3530
  %6118 = call float @dx.op.binary.f32(i32 35, float %6117, float 0x3F847AE140000000)  ; FMax(a,b)
  %6119 = fmul fast float %6118, %6118
  %6120 = fmul fast float %6119, %6119
  %6121 = fsub fast float 1.000000e+00, %6120
  %6122 = fmul fast float %6092, %6121
  %6123 = fadd fast float %6122, %6120
  %6124 = bitcast float %6123 to i32
  %6125 = ashr i32 %6124, 1
  %6126 = add nsw i32 %6125, 532487669
  %6127 = bitcast i32 %6126 to float
  %6128 = fadd fast float %6127, %4727
  %6129 = fmul fast float %6120, %6085
  %6130 = fadd fast float %6101, %6129
  %6131 = fmul fast float %6103, %6121
  %6132 = fadd fast float %6131, %6120
  %6133 = bitcast float %6132 to i32
  %6134 = ashr i32 %6133, 1
  %6135 = add nsw i32 %6134, 532487669
  %6136 = bitcast i32 %6135 to float
  %6137 = fadd fast float %6136, %6086
  %6138 = fmul fast float %6130, %6130
  %6139 = fmul fast float %6138, %6128
  %6140 = fmul fast float %6139, %6137
  %6141 = fdiv fast float 1.000000e+00, %6140
  %6142 = fmul fast float %6120, %6141
  %6143 = fsub fast float %6142, %6115
  %6144 = fmul fast float %6143, 0x3FC3F33340000000
  %6145 = fadd fast float %6144, %6116
  %6146 = call float @dx.op.unary.f32(i32 6, float %6078)  ; FAbs(value)
  %6147 = fsub fast float 1.000000e+00, %6146
  %6148 = bitcast float %6147 to i32
  %6149 = sitofp i32 %6148 to float
  %6150 = fmul fast float %6149, 5.000000e+00
  %6151 = fadd fast float %6150, 0xC1EFBF8940000000
  %6152 = fptosi float %6151 to i32
  %6153 = bitcast i32 %6152 to float
  %6154 = fsub fast float 1.000000e+00, %4676
  %6155 = fsub fast float 1.000000e+00, %4677
  %6156 = fsub fast float 1.000000e+00, %4725
  %6157 = fmul fast float %6153, %6154
  %6158 = fmul fast float %6153, %6155
  %6159 = fmul fast float %6153, %6156
  %6160 = fadd fast float %6157, %4676
  %6161 = fadd fast float %6158, %4677
  %6162 = fadd fast float %6159, %4725
  %6163 = fmul fast float %6077, 9.843750e-01
  %6164 = fadd fast float %6163, 7.812500e-03
  %6165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %6164, float %5032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6166 = extractvalue %dx.types.ResRet.f32 %6165, 2
  %6167 = extractvalue %dx.types.ResRet.f32 %6165, 3
  %6168 = fmul fast float %6166, %4676
  %6169 = fmul fast float %6166, %4677
  %6170 = fmul fast float %6166, %4725
  %6171 = fadd fast float %6168, %6167
  %6172 = fadd fast float %6169, %6167
  %6173 = fadd fast float %6170, %6167
  %6174 = call float @dx.op.binary.f32(i32 35, float %6172, float %6173)  ; FMax(a,b)
  %6175 = call float @dx.op.binary.f32(i32 35, float %6171, float %6174)  ; FMax(a,b)
  %6176 = fsub fast float 1.000000e+00, %6175
  %6177 = fmul fast float %6083, %6066
  %6178 = fmul fast float %6177, %6176
  %6179 = fmul fast float %6083, %6067
  %6180 = fmul fast float %6179, %6176
  %6181 = fmul fast float %6083, %6068
  %6182 = fmul fast float %6181, %6176
  %6183 = fmul fast float %6177, %6145
  %6184 = fmul fast float %6183, %6160
  %6185 = fmul fast float %6179, %6145
  %6186 = fmul fast float %6185, %6161
  %6187 = fmul fast float %6181, %6145
  %6188 = fmul fast float %6187, %6162
  %6189 = fadd fast float %6178, %5091
  %6190 = fmul fast float %6189, %1241
  %6191 = fadd fast float %6180, %5093
  %6192 = fmul fast float %6191, %1241
  %6193 = fadd fast float %6182, %5095
  %6194 = fmul fast float %6193, %1241
  %6195 = fadd fast float %6184, %5145
  %6196 = fmul fast float %6195, %1241
  %6197 = fadd fast float %6186, %5148
  %6198 = fmul fast float %6197, %1241
  %6199 = fadd fast float %6188, %5151
  %6200 = fmul fast float %6199, %1241
  br label %6201

; <label>:6201                                    ; preds = %6050, %5984, %5023
  %6202 = phi float [ %5146, %5023 ], [ %5146, %5984 ], [ %6196, %6050 ]
  %6203 = phi float [ %5149, %5023 ], [ %5149, %5984 ], [ %6198, %6050 ]
  %6204 = phi float [ %5152, %5023 ], [ %5152, %5984 ], [ %6200, %6050 ]
  %6205 = phi float [ %5141, %5023 ], [ %5141, %5984 ], [ %6190, %6050 ]
  %6206 = phi float [ %5142, %5023 ], [ %5142, %5984 ], [ %6192, %6050 ]
  %6207 = phi float [ %5143, %5023 ], [ %5143, %5984 ], [ %6194, %6050 ]
  %6208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.i32 %6208, 0
  %6210 = icmp eq i32 %6209, 0
  br i1 %6210, label %6803, label %6211

; <label>:6211                                    ; preds = %6201
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6212, 3
  %6215 = fmul fast float %6213, %108
  %6216 = fmul fast float %6214, %109
  %6217 = fptoui float %6215 to i32
  %6218 = fptoui float %6216 to i32
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 2
  %6222 = extractvalue %dx.types.CBufRet.f32 %6219, 3
  %6223 = fadd fast float %99, -4.000000e+00
  %6224 = call float @dx.op.binary.f32(i32 35, float %6223, float 0.000000e+00)  ; FMax(a,b)
  %6225 = fadd fast float %6224, %6220
  %6226 = fmul fast float %6225, %6221
  %6227 = call float @dx.op.unary.f32(i32 23, float %6226)  ; Log(value)
  %6228 = fmul fast float %6227, %6222
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6231 = fmul fast float %6228, %6230
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.i32 %6233, 1
  %6235 = add i32 %6234, -1
  %6236 = uitofp i32 %6234 to float
  %6237 = fmul fast float %6236, %6232
  %6238 = fptoui float %6237 to i32
  %6239 = call i32 @dx.op.binary.i32(i32 40, i32 %6238, i32 %6235)  ; UMin(a,b)
  %6240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.i32 %6240, 2
  %6242 = extractvalue %dx.types.CBufRet.i32 %6240, 3
  %6243 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6218, i32 %6241, i32 %6217)  ; UMad(a,b,c)
  %6244 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6239, i32 %6242, i32 %6243)  ; UMad(a,b,c)
  %6245 = add nsw i32 %6209, -1
  %6246 = call i32 @dx.op.binary.i32(i32 37, i32 %6245, i32 0)  ; IMax(a,b)
  %6247 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6248 = fptoui float %6247 to i32
  %6249 = lshr i32 %6248, 5
  %6250 = call i32 @dx.op.binary.i32(i32 40, i32 %6249, i32 8191)  ; UMin(a,b)
  %6251 = shl i32 %6250, 2
  %6252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6251, i32 undef)  ; BufferLoad(srv,index,wot)
  %6253 = extractvalue %dx.types.ResRet.i32 %6252, 0
  %6254 = lshr i32 %6253, 16
  %6255 = and i32 %6253, 65535
  %6256 = lshr i32 %6253, 21
  %6257 = lshr i32 %6255, 5
  %6258 = call i32 @dx.op.binary.i32(i32 40, i32 %6257, i32 %6246)  ; UMin(a,b)
  %6259 = icmp ugt i32 %6256, %6258
  br i1 %6259, label %6803, label %6260

; <label>:6260                                    ; preds = %6211
  br label %6261

; <label>:6261                                    ; preds = %6793, %6260
  %6262 = phi i32 [ %6800, %6793 ], [ %6256, %6260 ]
  %6263 = phi float [ %6794, %6793 ], [ %6202, %6260 ]
  %6264 = phi float [ %6795, %6793 ], [ %6203, %6260 ]
  %6265 = phi float [ %6796, %6793 ], [ %6204, %6260 ]
  %6266 = phi float [ %6797, %6793 ], [ %6205, %6260 ]
  %6267 = phi float [ %6798, %6793 ], [ %6206, %6260 ]
  %6268 = phi float [ %6799, %6793 ], [ %6207, %6260 ]
  %6269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.i32 %6269, 0
  %6271 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6244, i32 %6270, i32 %6262)  ; UMad(a,b,c)
  %6272 = shl i32 %6271, 2
  %6273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.i32 %6273, 0
  %6275 = shl i32 %6262, 5
  %6276 = sub nsw i32 %6254, %6275
  %6277 = call i32 @dx.op.binary.i32(i32 37, i32 %6276, i32 0)  ; IMax(a,b)
  %6278 = call i32 @dx.op.binary.i32(i32 38, i32 %6277, i32 31)  ; IMin(a,b)
  %6279 = sub nsw i32 1, %6254
  %6280 = add nsw i32 %6279, %6255
  %6281 = call i32 @dx.op.binary.i32(i32 37, i32 %6280, i32 0)  ; IMax(a,b)
  %6282 = call i32 @dx.op.binary.i32(i32 38, i32 %6281, i32 32)  ; IMin(a,b)
  %6283 = and i32 %6282, 31
  %6284 = shl i32 -1, %6283
  %6285 = xor i32 %6284, -1
  %6286 = and i32 %6278, 31
  %6287 = shl i32 %6285, %6286
  %6288 = icmp eq i32 %6282, 32
  %6289 = select i1 %6288, i32 -1, i32 %6287
  %6290 = and i32 %6289, %6274
  %6291 = icmp eq i32 %6290, 0
  br i1 %6291, label %6793, label %6292

; <label>:6292                                    ; preds = %6261
  br label %6293

; <label>:6293                                    ; preds = %6427, %6292
  %6294 = phi i32 [ %6305, %6427 ], [ %6290, %6292 ]
  %6295 = phi float [ %6428, %6427 ], [ %6263, %6292 ]
  %6296 = phi float [ %6429, %6427 ], [ %6264, %6292 ]
  %6297 = phi float [ %6430, %6427 ], [ %6265, %6292 ]
  %6298 = phi float [ %6431, %6427 ], [ %6266, %6292 ]
  %6299 = phi float [ %6432, %6427 ], [ %6267, %6292 ]
  %6300 = phi float [ %6433, %6427 ], [ %6268, %6292 ]
  %6301 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6294)  ; FirstbitLo(value)
  %6302 = add i32 %6301, %6275
  %6303 = and i32 %6301, 31
  %6304 = shl i32 1, %6303
  %6305 = xor i32 %6304, %6294
  %6306 = mul i32 %6302, 112
  %6307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6306, i32 undef)  ; BufferLoad(srv,index,wot)
  %6308 = extractvalue %dx.types.ResRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.ResRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.ResRet.f32 %6307, 2
  %6311 = or i32 %6306, 12
  %6312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6311, i32 undef)  ; BufferLoad(srv,index,wot)
  %6313 = extractvalue %dx.types.ResRet.f32 %6312, 0
  %6314 = add i32 %6306, 16
  %6315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6314, i32 undef)  ; BufferLoad(srv,index,wot)
  %6316 = extractvalue %dx.types.ResRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.ResRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.ResRet.f32 %6315, 2
  %6319 = add i32 %6306, 28
  %6320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6319, i32 undef)  ; BufferLoad(srv,index,wot)
  %6321 = extractvalue %dx.types.ResRet.i32 %6320, 0
  %6322 = add i32 %6306, 44
  %6323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6322, i32 undef)  ; BufferLoad(srv,index,wot)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = add i32 %6306, 48
  %6326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6325, i32 undef)  ; BufferLoad(srv,index,wot)
  %6327 = extractvalue %dx.types.ResRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.ResRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.ResRet.f32 %6326, 2
  %6330 = extractvalue %dx.types.ResRet.f32 %6326, 3
  %6331 = add i32 %6306, 64
  %6332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6331, i32 undef)  ; BufferLoad(srv,index,wot)
  %6333 = extractvalue %dx.types.ResRet.f32 %6332, 0
  %6334 = extractvalue %dx.types.ResRet.f32 %6332, 1
  %6335 = extractvalue %dx.types.ResRet.f32 %6332, 2
  %6336 = extractvalue %dx.types.ResRet.f32 %6332, 3
  %6337 = add i32 %6306, 80
  %6338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6337, i32 undef)  ; BufferLoad(srv,index,wot)
  %6339 = extractvalue %dx.types.ResRet.f32 %6338, 1
  %6340 = extractvalue %dx.types.ResRet.f32 %6338, 2
  %6341 = add i32 %6306, 92
  %6342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6341, i32 undef)  ; BufferLoad(srv,index,wot)
  %6343 = extractvalue %dx.types.ResRet.i32 %6342, 0
  %6344 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6345 = select i1 %250, float %6339, float %6308
  %6346 = select i1 %250, float %6344, float %6309
  %6347 = select i1 %250, float %6340, float %6310
  %6348 = and i32 %6343, 65535
  %6349 = uitofp i32 %6348 to float
  %6350 = lshr i32 %6343, 16
  %6351 = uitofp i32 %6350 to float
  %6352 = and i32 %6321, 65535
  %6353 = and i32 %6321, 50331648
  %6354 = icmp eq i32 %6353, 33554432
  %6355 = fsub fast float %6327, %191
  %6356 = fsub fast float %6328, %192
  %6357 = fsub fast float %6329, %193
  %6358 = call float @dx.op.dot3.f32(i32 55, float %6355, float %6356, float %6357, float %6355, float %6356, float %6357)  ; Dot3(ax,ay,az,bx,by,bz)
  %6359 = call float @dx.op.unary.f32(i32 24, float %6358)  ; Sqrt(value)
  %6360 = fdiv fast float 1.000000e+00, %6359
  %6361 = fmul fast float %6360, %6355
  %6362 = fmul fast float %6360, %6356
  %6363 = fmul fast float %6360, %6357
  %6364 = fadd fast float %6359, %6313
  %6365 = fdiv fast float 1.000000e+00, %6364
  %6366 = fmul float %6324, %6365
  %6367 = fmul float %6366, %6366
  %6368 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  br i1 %6354, label %6369, label %6390

; <label>:6369                                    ; preds = %6293
  %6370 = fmul fast float %6335, %6316
  %6371 = fmul fast float %6335, %6317
  %6372 = fmul fast float %6335, %6318
  %6373 = fadd fast float %6355, %6370
  %6374 = fadd fast float %6356, %6371
  %6375 = fadd fast float %6357, %6372
  %6376 = call float @dx.op.dot3.f32(i32 55, float %6373, float %6374, float %6375, float %6373, float %6374, float %6375)  ; Dot3(ax,ay,az,bx,by,bz)
  %6377 = call float @dx.op.unary.f32(i32 25, float %6376)  ; Rsqrt(value)
  %6378 = fmul fast float %6377, %6373
  %6379 = fmul fast float %6377, %6374
  %6380 = fmul fast float %6377, %6375
  %6381 = fsub fast float %191, %6327
  %6382 = fsub fast float %192, %6328
  %6383 = fsub fast float %193, %6329
  %6384 = fsub fast float -0.000000e+00, %6381
  %6385 = fsub fast float -0.000000e+00, %6382
  %6386 = fsub fast float -0.000000e+00, %6383
  %6387 = call float @dx.op.dot3.f32(i32 55, float %6384, float %6385, float %6386, float %6316, float %6317, float %6318)  ; Dot3(ax,ay,az,bx,by,bz)
  %6388 = fcmp fast ogt float %6387, 0.000000e+00
  %6389 = uitofp i1 %6388 to float
  br label %6390

; <label>:6390                                    ; preds = %6369, %6293
  %6391 = phi float [ %6389, %6369 ], [ 1.000000e+00, %6293 ]
  %6392 = phi float [ %6378, %6369 ], [ %6361, %6293 ]
  %6393 = phi float [ %6379, %6369 ], [ %6362, %6293 ]
  %6394 = phi float [ %6380, %6369 ], [ %6363, %6293 ]
  %6395 = call float @dx.op.dot3.f32(i32 55, float %6316, float %6317, float %6318, float %6392, float %6393, float %6394)  ; Dot3(ax,ay,az,bx,by,bz)
  %6396 = fmul fast float %6395, %6395
  %6397 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  %6398 = fsub fast float 1.000000e+00, %6397
  %6399 = fmul fast float %6398, 5.000000e-01
  %6400 = fcmp fast ogt float %6395, 0.000000e+00
  %6401 = fsub fast float 1.000000e+00, %6399
  %6402 = select i1 %6400, float %6399, float %6401
  %6403 = fmul fast float %6402, %6351
  %6404 = fadd fast float %6403, %6349
  %6405 = fmul fast float %6404, 0x3EF0001000000000
  %6406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %6405, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6407 = extractvalue %dx.types.ResRet.f32 %6406, 0
  %6408 = fmul fast float %6395, %6333
  %6409 = fadd fast float %6408, %6334
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = select i1 %6354, float 1.000000e+00, float %6410
  %6412 = select i1 %6354, float %6410, float 1.000000e+00
  %6413 = fmul fast float %6359, %6330
  %6414 = fsub fast float 1.000000e+00, %6413
  %6415 = fmul fast float %6414, %6336
  %6416 = call float @dx.op.unary.f32(i32 7, float %6415)  ; Saturate(value)
  %6417 = fmul fast float %6416, %6412
  %6418 = fmul fast float %6417, 2.000000e+00
  %6419 = fsub fast float 3.000000e+00, %6418
  %6420 = fmul fast float %6407, %6391
  %6421 = fmul fast float %6417, %6417
  %6422 = fmul fast float %6421, %6420
  %6423 = fmul fast float %6422, %6419
  %6424 = call float @dx.op.binary.f32(i32 36, float %6423, float %6423)  ; FMin(a,b)
  %6425 = call float @dx.op.binary.f32(i32 36, float %6423, float %6424)  ; FMin(a,b)
  %6426 = fcmp fast ogt float %6425, 0.000000e+00
  br i1 %6426, label %6435, label %6427, !dx.controlflow.hints !119

; <label>:6427                                    ; preds = %6602, %6535, %6390
  %6428 = phi float [ %6295, %6535 ], [ %6295, %6390 ], [ %6789, %6602 ]
  %6429 = phi float [ %6296, %6535 ], [ %6296, %6390 ], [ %6790, %6602 ]
  %6430 = phi float [ %6297, %6535 ], [ %6297, %6390 ], [ %6791, %6602 ]
  %6431 = phi float [ %6298, %6535 ], [ %6298, %6390 ], [ %6780, %6602 ]
  %6432 = phi float [ %6299, %6535 ], [ %6299, %6390 ], [ %6781, %6602 ]
  %6433 = phi float [ %6300, %6535 ], [ %6300, %6390 ], [ %6782, %6602 ]
  %6434 = icmp eq i32 %6294, %6304
  br i1 %6434, label %6792, label %6293

; <label>:6435                                    ; preds = %6390
  %6436 = icmp eq i32 %6352, 255
  br i1 %6436, label %6535, label %6437, !dx.controlflow.hints !120

; <label>:6437                                    ; preds = %6435
  %6438 = mul nuw nsw i32 %6352, 176
  %6439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6438, i32 undef)  ; BufferLoad(srv,index,wot)
  %6440 = extractvalue %dx.types.ResRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.ResRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.ResRet.f32 %6439, 2
  %6443 = extractvalue %dx.types.ResRet.f32 %6439, 3
  %6444 = add nuw nsw i32 %6438, 16
  %6445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6444, i32 undef)  ; BufferLoad(srv,index,wot)
  %6446 = extractvalue %dx.types.ResRet.f32 %6445, 0
  %6447 = extractvalue %dx.types.ResRet.f32 %6445, 1
  %6448 = add nuw nsw i32 %6438, 32
  %6449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6448, i32 undef)  ; BufferLoad(srv,index,wot)
  %6450 = extractvalue %dx.types.ResRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.ResRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.ResRet.f32 %6449, 2
  %6453 = add nuw nsw i32 %6438, 48
  %6454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6453, i32 undef)  ; BufferLoad(srv,index,wot)
  %6455 = extractvalue %dx.types.ResRet.f32 %6454, 0
  %6456 = extractvalue %dx.types.ResRet.f32 %6454, 1
  %6457 = extractvalue %dx.types.ResRet.f32 %6454, 2
  %6458 = extractvalue %dx.types.ResRet.f32 %6454, 3
  %6459 = add nuw nsw i32 %6438, 64
  %6460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6459, i32 undef)  ; BufferLoad(srv,index,wot)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.ResRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.ResRet.f32 %6460, 2
  %6464 = extractvalue %dx.types.ResRet.f32 %6460, 3
  %6465 = add nuw nsw i32 %6438, 80
  %6466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6465, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.ResRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.ResRet.f32 %6466, 3
  %6471 = add nuw nsw i32 %6438, 96
  %6472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6471, i32 undef)  ; BufferLoad(srv,index,wot)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.ResRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.ResRet.f32 %6472, 2
  %6476 = extractvalue %dx.types.ResRet.f32 %6472, 3
  %6477 = bitcast float %6447 to i32
  %6478 = fmul fast float %6452, %117
  %6479 = fmul fast float %6452, %119
  %6480 = fmul fast float %6452, %121
  %6481 = fadd fast float %6478, %191
  %6482 = fadd fast float %6479, %192
  %6483 = fadd fast float %6480, %193
  %6484 = fmul fast float %6481, %6455
  %6485 = call float @dx.op.tertiary.f32(i32 46, float %6482, float %6461, float %6484)  ; FMad(a,b,c)
  %6486 = call float @dx.op.tertiary.f32(i32 46, float %6483, float %6467, float %6485)  ; FMad(a,b,c)
  %6487 = fadd fast float %6486, %6473
  %6488 = fmul fast float %6481, %6456
  %6489 = call float @dx.op.tertiary.f32(i32 46, float %6482, float %6462, float %6488)  ; FMad(a,b,c)
  %6490 = call float @dx.op.tertiary.f32(i32 46, float %6483, float %6468, float %6489)  ; FMad(a,b,c)
  %6491 = fadd fast float %6490, %6474
  %6492 = fmul fast float %6481, %6457
  %6493 = call float @dx.op.tertiary.f32(i32 46, float %6482, float %6463, float %6492)  ; FMad(a,b,c)
  %6494 = call float @dx.op.tertiary.f32(i32 46, float %6483, float %6469, float %6493)  ; FMad(a,b,c)
  %6495 = fadd fast float %6494, %6475
  %6496 = fmul fast float %6481, %6458
  %6497 = call float @dx.op.tertiary.f32(i32 46, float %6482, float %6464, float %6496)  ; FMad(a,b,c)
  %6498 = call float @dx.op.tertiary.f32(i32 46, float %6483, float %6470, float %6497)  ; FMad(a,b,c)
  %6499 = fadd fast float %6498, %6476
  %6500 = fdiv fast float %6487, %6499
  %6501 = fdiv fast float %6491, %6499
  %6502 = fdiv fast float %6495, %6499
  %6503 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6502)  ; FMax(a,b)
  %6504 = fmul fast float %261, 0x401921FB60000000
  %6505 = call float @dx.op.unary.f32(i32 13, float %6504)  ; Sin(value)
  %6506 = call float @dx.op.unary.f32(i32 12, float %6504)  ; Cos(value)
  %6507 = fsub fast float -0.000000e+00, %6505
  %6508 = fmul fast float %6442, 5.000000e-01
  %6509 = call float @dx.op.dot2.f32(i32 54, float %261, float %261, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6510 = call float @dx.op.unary.f32(i32 22, float %6509)  ; Frc(value)
  %6511 = fmul fast float %6510, 0x404A7DD040000000
  %6512 = call float @dx.op.unary.f32(i32 22, float %6511)  ; Frc(value)
  %6513 = fmul fast float %6512, %6451
  %6514 = fadd fast float %6513, %6508
  %6515 = call float @dx.op.tertiary.f32(i32 46, float %6514, float %6507, float 0.000000e+00)  ; FMad(a,b,c)
  %6516 = call float @dx.op.tertiary.f32(i32 46, float %6514, float %6506, float 0.000000e+00)  ; FMad(a,b,c)
  %6517 = fadd fast float %6515, %6500
  %6518 = fadd fast float %6516, %6501
  %6519 = fmul fast float %6517, %6446
  %6520 = fmul fast float %6518, %6446
  %6521 = call float @dx.op.binary.f32(i32 35, float %6519, float %6442)  ; FMax(a,b)
  %6522 = call float @dx.op.binary.f32(i32 35, float %6520, float %6442)  ; FMax(a,b)
  %6523 = call float @dx.op.binary.f32(i32 36, float %6521, float %6443)  ; FMin(a,b)
  %6524 = call float @dx.op.binary.f32(i32 36, float %6522, float %6443)  ; FMin(a,b)
  %6525 = fadd fast float %6523, %6440
  %6526 = fadd fast float %6524, %6441
  %6527 = uitofp i32 %6477 to float
  %6528 = fadd fast float %6503, %6450
  %6529 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %46, float %6525, float %6526, float %6527, float undef, i32 0, i32 0, i32 undef, float %6528)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6530 = extractvalue %dx.types.ResRet.f32 %6529, 0
  %6531 = fadd fast float %6530, -1.000000e+00
  %6532 = fmul fast float %6531, %6411
  %6533 = fadd fast float %6532, 1.000000e+00
  %6534 = fmul fast float %6533, %6423
  br label %6535

; <label>:6535                                    ; preds = %6437, %6435
  %6536 = phi float [ %6534, %6437 ], [ %6423, %6435 ]
  %6537 = call float @dx.op.binary.f32(i32 36, float %6536, float %6536)  ; FMin(a,b)
  %6538 = call float @dx.op.binary.f32(i32 36, float %6536, float %6537)  ; FMin(a,b)
  %6539 = fcmp fast ogt float %6538, 0.000000e+00
  br i1 %6539, label %6540, label %6427, !dx.controlflow.hints !121

; <label>:6540                                    ; preds = %6535
  %6541 = fmul fast float %6536, %6345
  %6542 = fmul fast float %6536, %6346
  %6543 = fmul fast float %6536, %6347
  %6544 = fsub fast float %6329, %3891
  %6545 = fcmp fast ogt float %6544, 0.000000e+00
  %6546 = fsub fast float %193, %3891
  %6547 = fcmp fast ogt float %6546, 0.000000e+00
  %6548 = xor i1 %6547, %6545
  %6549 = fsub fast float %3891, %6329
  %6550 = fmul fast float %6549, 2.000000e+00
  %6551 = fadd fast float %6550, %6329
  %6552 = select i1 %6548, float %6329, float %6551
  %6553 = fsub fast float %6552, %193
  %6554 = call float @dx.op.dot3.f32(i32 55, float %6355, float %6356, float %6553, float %6355, float %6356, float %6553)  ; Dot3(ax,ay,az,bx,by,bz)
  %6555 = call float @dx.op.unary.f32(i32 25, float %6554)  ; Rsqrt(value)
  %6556 = fmul fast float %6555, %6355
  %6557 = fmul fast float %6555, %6356
  %6558 = fmul fast float %6555, %6553
  %6559 = fsub fast float %3891, %193
  %6560 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6559)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6556, float %6557, float %6558)  ; Dot3(ax,ay,az,bx,by,bz)
  %6562 = fdiv fast float 1.000000e+00, %6561
  %6563 = fmul fast float %6562, %6560
  %6564 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6546, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6565 = fcmp fast ogt float %6564, 0.000000e+00
  %6566 = fcmp fast olt float %6564, 0.000000e+00
  %6567 = zext i1 %6565 to i32
  %6568 = zext i1 %6566 to i32
  %6569 = sub nsw i32 %6567, %6568
  %6570 = sitofp i32 %6569 to float
  %6571 = fsub fast float %6552, %3891
  %6572 = call float @dx.op.dot3.f32(i32 55, float %6355, float %6356, float %6571, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6573 = fcmp fast ogt float %6572, 0.000000e+00
  %6574 = fcmp fast olt float %6572, 0.000000e+00
  %6575 = zext i1 %6573 to i32
  %6576 = zext i1 %6574 to i32
  %6577 = sub nsw i32 %6575, %6576
  %6578 = sitofp i32 %6577 to float
  %6579 = fcmp fast une float %6570, %6578
  br i1 %6579, label %6580, label %6590

; <label>:6580                                    ; preds = %6540
  %6581 = fmul fast float %6563, %6558
  %6582 = fmul fast float %6563, %6557
  %6583 = fmul fast float %6563, %6556
  %6584 = fmul fast float %6583, %6583
  %6585 = fmul fast float %6582, %6582
  %6586 = fadd fast float %6584, %6585
  %6587 = fmul fast float %6581, %6581
  %6588 = fadd fast float %6586, %6587
  %6589 = call float @dx.op.unary.f32(i32 24, float %6588)  ; Sqrt(value)
  br label %6602

; <label>:6590                                    ; preds = %6540
  %6591 = icmp slt i32 %6569, 0
  br i1 %6591, label %6592, label %6602

; <label>:6592                                    ; preds = %6590
  %6593 = fsub fast float %191, %6327
  %6594 = fsub fast float %192, %6328
  %6595 = fsub fast float %193, %6552
  %6596 = fmul fast float %6593, %6593
  %6597 = fmul fast float %6594, %6594
  %6598 = fadd fast float %6596, %6597
  %6599 = fmul fast float %6595, %6595
  %6600 = fadd fast float %6598, %6599
  %6601 = call float @dx.op.unary.f32(i32 24, float %6600)  ; Sqrt(value)
  br label %6602

; <label>:6602                                    ; preds = %6592, %6590, %6580
  %6603 = phi float [ %6589, %6580 ], [ %6601, %6592 ], [ 0.000000e+00, %6590 ]
  %6604 = and i1 %6547, %6545
  %6605 = fsub fast float -0.000000e+00, %6603
  %6606 = select i1 %6604, float -0.000000e+00, float %6605
  %6607 = fmul fast float %3892, 0x3FF7154760000000
  %6608 = fmul fast float %6607, %6606
  %6609 = fmul fast float %3893, 0x3FF7154760000000
  %6610 = fmul fast float %6609, %6606
  %6611 = fmul fast float %3894, 0x3FF7154760000000
  %6612 = fmul fast float %6611, %6606
  %6613 = call float @dx.op.unary.f32(i32 21, float %6608)  ; Exp(value)
  %6614 = call float @dx.op.unary.f32(i32 21, float %6610)  ; Exp(value)
  %6615 = call float @dx.op.unary.f32(i32 21, float %6612)  ; Exp(value)
  %6616 = call float @dx.op.unary.f32(i32 7, float %6613)  ; Saturate(value)
  %6617 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  %6618 = call float @dx.op.unary.f32(i32 7, float %6615)  ; Saturate(value)
  %6619 = fmul fast float %6541, %6616
  %6620 = fmul fast float %6542, %6617
  %6621 = fmul fast float %6543, %6618
  %6622 = fsub fast float %6361, %4719
  %6623 = fsub fast float %6362, %4720
  %6624 = fsub fast float %6363, %4721
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6622, float %6623, float %6624, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = call float @dx.op.unary.f32(i32 25, float %6625)  ; Rsqrt(value)
  %6627 = fmul fast float %6626, %6622
  %6628 = fmul fast float %6626, %6623
  %6629 = fmul fast float %6626, %6624
  %6630 = call float @dx.op.dot3.f32(i32 55, float %6361, float %6362, float %6363, float %4679, float %4680, float %4681)  ; Dot3(ax,ay,az,bx,by,bz)
  %6631 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %6627, float %6628, float %6629)  ; Dot3(ax,ay,az,bx,by,bz)
  %6632 = call float @dx.op.unary.f32(i32 7, float %6630)  ; Saturate(value)
  %6633 = fmul fast float %6632, %6368
  %6634 = fmul fast float %6632, %6632
  %6635 = fmul fast float %6634, %4740
  %6636 = call float @dx.op.unary.f32(i32 7, float %6635)  ; Saturate(value)
  %6637 = fmul fast float %6633, %6636
  %6638 = bitcast float %6358 to i32
  %6639 = ashr i32 %6638, 1
  %6640 = sub nsw i32 1597463007, %6639
  %6641 = bitcast i32 %6640 to float
  %6642 = fmul fast float %6641, %6355
  %6643 = fmul fast float %6641, %6356
  %6644 = fmul fast float %6641, %6357
  %6645 = fmul fast float %6641, %6324
  %6646 = fsub fast float %6642, %4719
  %6647 = fsub fast float %6643, %4720
  %6648 = fsub fast float %6644, %4721
  %6649 = call float @dx.op.dot3.f32(i32 55, float %6646, float %6647, float %6648, float %6646, float %6647, float %6648)  ; Dot3(ax,ay,az,bx,by,bz)
  %6650 = call float @dx.op.unary.f32(i32 25, float %6649)  ; Rsqrt(value)
  %6651 = fmul fast float %6646, %6650
  %6652 = fmul fast float %6647, %6650
  %6653 = fmul fast float %6648, %6650
  %6654 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4680, float %4681, float %6651, float %6652, float %6653)  ; Dot3(ax,ay,az,bx,by,bz)
  %6655 = fmul fast float %6654, %6654
  %6656 = call float @dx.op.unary.f32(i32 6, float %6630)  ; FAbs(value)
  %6657 = fsub fast float 1.000000e+00, %4682
  %6658 = call float @dx.op.binary.f32(i32 35, float %6657, float 0x3F847AE140000000)  ; FMax(a,b)
  %6659 = fmul fast float %6658, %6658
  %6660 = fmul fast float %6659, %6659
  %6661 = fsub fast float 1.000000e+00, %6660
  %6662 = fmul fast float %4727, %4727
  %6663 = fmul fast float %6662, %6661
  %6664 = fadd fast float %6663, %6660
  %6665 = bitcast float %6664 to i32
  %6666 = ashr i32 %6665, 1
  %6667 = add nsw i32 %6666, 532487669
  %6668 = bitcast i32 %6667 to float
  %6669 = fadd fast float %6668, %4727
  %6670 = fmul fast float %6660, %6655
  %6671 = fsub fast float 1.000000e+00, %6655
  %6672 = fadd fast float %6671, %6670
  %6673 = fmul fast float %6656, %6656
  %6674 = fmul fast float %6673, %6661
  %6675 = fadd fast float %6674, %6660
  %6676 = bitcast float %6675 to i32
  %6677 = ashr i32 %6676, 1
  %6678 = add nsw i32 %6677, 532487669
  %6679 = bitcast i32 %6678 to float
  %6680 = fadd fast float %6679, %6656
  %6681 = fmul fast float %6672, %6672
  %6682 = fmul fast float %6681, %6669
  %6683 = fmul fast float %6682, %6680
  %6684 = fdiv fast float 1.000000e+00, %6683
  %6685 = bitcast float %6660 to i32
  %6686 = sitofp i32 %6685 to float
  %6687 = fmul fast float %6686, 0x3FE7F73180000000
  %6688 = fadd fast float %6687, 0x41AFE27C40000000
  %6689 = fptosi float %6688 to i32
  %6690 = bitcast i32 %6689 to float
  %6691 = fmul fast float %6645, 0x3FD80E9D60000000
  %6692 = fadd fast float %6690, %6691
  %6693 = bitcast float %6692 to i32
  %6694 = sub nsw i32 2129859010, %6693
  %6695 = bitcast i32 %6694 to float
  %6696 = fmul fast float %6660, %6684
  %6697 = fmul fast float %6696, %6690
  %6698 = fmul fast float %6697, %6695
  %6699 = fsub fast float 1.000000e+00, %3530
  %6700 = call float @dx.op.binary.f32(i32 35, float %6699, float 0x3F847AE140000000)  ; FMax(a,b)
  %6701 = fmul fast float %6700, %6700
  %6702 = fmul fast float %6701, %6701
  %6703 = fsub fast float 1.000000e+00, %6702
  %6704 = fmul fast float %6662, %6703
  %6705 = fadd fast float %6704, %6702
  %6706 = bitcast float %6705 to i32
  %6707 = ashr i32 %6706, 1
  %6708 = add nsw i32 %6707, 532487669
  %6709 = bitcast i32 %6708 to float
  %6710 = fadd fast float %6709, %4727
  %6711 = fmul fast float %6702, %6655
  %6712 = fadd fast float %6671, %6711
  %6713 = fmul fast float %6673, %6703
  %6714 = fadd fast float %6713, %6702
  %6715 = bitcast float %6714 to i32
  %6716 = ashr i32 %6715, 1
  %6717 = add nsw i32 %6716, 532487669
  %6718 = bitcast i32 %6717 to float
  %6719 = fadd fast float %6718, %6656
  %6720 = fmul fast float %6712, %6712
  %6721 = fmul fast float %6720, %6710
  %6722 = fmul fast float %6721, %6719
  %6723 = fdiv fast float 1.000000e+00, %6722
  %6724 = bitcast float %6702 to i32
  %6725 = sitofp i32 %6724 to float
  %6726 = fmul fast float %6725, 0x3FE7F73180000000
  %6727 = fadd fast float %6726, 0x41AFE27C40000000
  %6728 = fptosi float %6727 to i32
  %6729 = bitcast i32 %6728 to float
  %6730 = fadd fast float %6729, %6691
  %6731 = bitcast float %6730 to i32
  %6732 = sub nsw i32 2129859010, %6731
  %6733 = bitcast i32 %6732 to float
  %6734 = fmul fast float %6702, %6723
  %6735 = fmul fast float %6734, %6729
  %6736 = fmul fast float %6735, %6733
  %6737 = fsub fast float %6736, %6698
  %6738 = fmul fast float %6737, 0x3FC3333340000000
  %6739 = fadd fast float %6738, %6698
  %6740 = call float @dx.op.unary.f32(i32 6, float %6631)  ; FAbs(value)
  %6741 = fsub fast float 1.000000e+00, %6740
  %6742 = bitcast float %6741 to i32
  %6743 = sitofp i32 %6742 to float
  %6744 = fmul fast float %6743, 5.000000e+00
  %6745 = fadd fast float %6744, 0xC1EFBF8940000000
  %6746 = fptosi float %6745 to i32
  %6747 = bitcast i32 %6746 to float
  %6748 = fsub fast float 1.000000e+00, %4676
  %6749 = fsub fast float 1.000000e+00, %4677
  %6750 = fsub fast float 1.000000e+00, %4725
  %6751 = fmul fast float %6747, %6748
  %6752 = fmul fast float %6747, %6749
  %6753 = fmul fast float %6747, %6750
  %6754 = fadd fast float %6751, %4676
  %6755 = fadd fast float %6752, %4677
  %6756 = fadd fast float %6753, %4725
  %6757 = fmul fast float %6630, 9.843750e-01
  %6758 = fadd fast float %6757, 7.812500e-03
  %6759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %6758, float %5032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 2
  %6761 = extractvalue %dx.types.ResRet.f32 %6759, 3
  %6762 = fmul fast float %6760, %4676
  %6763 = fmul fast float %6760, %4677
  %6764 = fmul fast float %6760, %4725
  %6765 = fadd fast float %6762, %6761
  %6766 = fadd fast float %6763, %6761
  %6767 = fadd fast float %6764, %6761
  %6768 = call float @dx.op.binary.f32(i32 35, float %6766, float %6767)  ; FMax(a,b)
  %6769 = call float @dx.op.binary.f32(i32 35, float %6765, float %6768)  ; FMax(a,b)
  %6770 = fsub fast float 1.000000e+00, %6769
  %6771 = fmul fast float %6619, %1241
  %6772 = fmul fast float %6771, %6637
  %6773 = fmul fast float %6772, %6770
  %6774 = fmul fast float %6620, %1241
  %6775 = fmul fast float %6774, %6637
  %6776 = fmul fast float %6775, %6770
  %6777 = fmul fast float %6621, %1241
  %6778 = fmul fast float %6777, %6637
  %6779 = fmul fast float %6778, %6770
  %6780 = fadd fast float %6773, %6298
  %6781 = fadd fast float %6776, %6299
  %6782 = fadd fast float %6779, %6300
  %6783 = fmul fast float %6772, %6754
  %6784 = fmul fast float %6783, %6739
  %6785 = fmul fast float %6775, %6755
  %6786 = fmul fast float %6785, %6739
  %6787 = fmul fast float %6778, %6756
  %6788 = fmul fast float %6787, %6739
  %6789 = fadd fast float %6784, %6295
  %6790 = fadd fast float %6786, %6296
  %6791 = fadd fast float %6788, %6297
  br label %6427

; <label>:6792                                    ; preds = %6427
  br label %6793

; <label>:6793                                    ; preds = %6792, %6261
  %6794 = phi float [ %6263, %6261 ], [ %6428, %6792 ]
  %6795 = phi float [ %6264, %6261 ], [ %6429, %6792 ]
  %6796 = phi float [ %6265, %6261 ], [ %6430, %6792 ]
  %6797 = phi float [ %6266, %6261 ], [ %6431, %6792 ]
  %6798 = phi float [ %6267, %6261 ], [ %6432, %6792 ]
  %6799 = phi float [ %6268, %6261 ], [ %6433, %6792 ]
  %6800 = add i32 %6262, 1
  %6801 = icmp ugt i32 %6800, %6258
  br i1 %6801, label %6802, label %6261

; <label>:6802                                    ; preds = %6793
  br label %6803

; <label>:6803                                    ; preds = %6802, %6211, %6201
  %6804 = phi float [ %6202, %6201 ], [ %6202, %6211 ], [ %6794, %6802 ]
  %6805 = phi float [ %6203, %6201 ], [ %6203, %6211 ], [ %6795, %6802 ]
  %6806 = phi float [ %6204, %6201 ], [ %6204, %6211 ], [ %6796, %6802 ]
  %6807 = phi float [ %6205, %6201 ], [ %6205, %6211 ], [ %6797, %6802 ]
  %6808 = phi float [ %6206, %6201 ], [ %6206, %6211 ], [ %6798, %6802 ]
  %6809 = phi float [ %6207, %6201 ], [ %6207, %6211 ], [ %6799, %6802 ]
  %6810 = fmul fast float %1241, %1241
  %6811 = fsub fast float 1.000000e+00, %6810
  %6812 = call float @dx.op.dot3.f32(i32 55, float %6811, float %6811, float %6811, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6813 = fsub fast float 1.000000e+00, %6812
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 0
  %6816 = fmul fast float %6815, %5124
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6819 = fsub fast float 1.000000e+00, %3461
  %6820 = call float @dx.op.unary.f32(i32 7, float %6819)  ; Saturate(value)
  %6821 = fadd fast float %6809, %3463
  %6822 = fmul fast float %6821, %3461
  %6823 = fmul fast float %6820, %6818
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 3
  %6826 = fmul fast float %6807, %4673
  %6827 = fmul fast float %6808, %4674
  %6828 = fmul fast float %6809, %4675
  %6829 = fcmp fast ogt float %99, %213
  %6830 = and i1 %6829, %3897
  %6831 = or i1 %3903, %6830
  %6832 = icmp eq i32 %3896, 2
  %6833 = fcmp fast ole float %99, %213
  %6834 = and i1 %6833, %6832
  %6835 = or i1 %6834, %6831
  br i1 %6830, label %6836, label %7093

; <label>:6836                                    ; preds = %6803
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 3
  %6840 = fmul fast float %6838, %108
  %6841 = fmul fast float %6839, %109
  %6842 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  %6843 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6844 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6842, float %6843, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6845 = extractvalue %dx.types.ResRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.ResRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.ResRet.f32 %6844, 2
  %6848 = extractvalue %dx.types.ResRet.f32 %6844, 3
  %6849 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6842, float %6843, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6850 = extractvalue %dx.types.ResRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.ResRet.f32 %6849, 1
  %6852 = extractvalue %dx.types.ResRet.f32 %6849, 2
  %6853 = extractvalue %dx.types.ResRet.f32 %6849, 3
  %6854 = call float @dx.op.binary.f32(i32 35, float %6846, float %6847)  ; FMax(a,b)
  %6855 = call float @dx.op.binary.f32(i32 35, float %6845, float %6854)  ; FMax(a,b)
  %6856 = call float @dx.op.binary.f32(i32 35, float %6855, float %6848)  ; FMax(a,b)
  %6857 = call float @dx.op.binary.f32(i32 36, float %6851, float %6852)  ; FMin(a,b)
  %6858 = call float @dx.op.binary.f32(i32 36, float %6850, float %6857)  ; FMin(a,b)
  %6859 = call float @dx.op.binary.f32(i32 36, float %6858, float %6853)  ; FMin(a,b)
  %6860 = fmul fast float %6856, 2.550000e+02
  %6861 = fadd fast float %6860, 0x3F70101020000000
  %6862 = fptoui float %6861 to i32
  %6863 = fmul fast float %6859, 2.550000e+02
  %6864 = fadd fast float %6863, 0x3F70101020000000
  %6865 = fptoui float %6864 to i32
  %6866 = icmp ult i32 %6862, %6865
  br i1 %6866, label %6867, label %7035

; <label>:6867                                    ; preds = %6836
  %6868 = fcmp fast ogt float %98, 9.843750e-01
  %6869 = fadd fast float %99, -4.000000e+00
  %6870 = select i1 %6868, float -4.000000e+00, float %6869
  %6871 = call float @dx.op.binary.f32(i32 35, float %6870, float 0.000000e+00)  ; FMax(a,b)
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 0
  %6874 = fadd fast float %6873, %6871
  %6875 = extractvalue %dx.types.CBufRet.f32 %6872, 2
  %6876 = fmul fast float %6874, %6875
  %6877 = call float @dx.op.unary.f32(i32 23, float %6876)  ; Log(value)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6872, 3
  %6879 = fmul fast float %6878, %6877
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6882 = fmul fast float %6879, %6881
  %6883 = call float @dx.op.unary.f32(i32 7, float %6882)  ; Saturate(value)
  %6884 = uitofp i32 %6862 to float
  %6885 = uitofp i32 %6865 to float
  %6886 = fadd fast float %6884, 5.000000e-01
  %6887 = fadd fast float %6885, 5.000000e-01
  %6888 = fmul fast float %6881, %6886
  %6889 = fmul fast float %6881, %6887
  %6890 = fadd fast float %6888, 0x3F0FFB4800000000
  %6891 = fadd fast float %6889, 0xBF0FFB4800000000
  %6892 = call float @dx.op.binary.f32(i32 35, float %6883, float %6890)  ; FMax(a,b)
  %6893 = call float @dx.op.binary.f32(i32 36, float %6892, float %6891)  ; FMin(a,b)
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6894, 2
  %6897 = extractvalue %dx.types.CBufRet.f32 %6894, 0
  %6898 = fmul fast float %6895, %6893
  %6899 = fadd fast float %6897, %6898
  %6900 = fadd fast float %6897, %6896
  %6901 = fsub fast float %6895, %6896
  %6902 = fadd fast float %6901, %6897
  %6903 = call float @dx.op.binary.f32(i32 35, float %6899, float %6900)  ; FMax(a,b)
  %6904 = call float @dx.op.binary.f32(i32 36, float %6903, float %6902)  ; FMin(a,b)
  %6905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %6842, float %6843, float %6904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6906 = extractvalue %dx.types.ResRet.f32 %6905, 0
  %6907 = extractvalue %dx.types.ResRet.f32 %6905, 1
  %6908 = extractvalue %dx.types.ResRet.f32 %6905, 2
  %6909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.i32 %6909, 0
  %6911 = extractvalue %dx.types.CBufRet.i32 %6909, 1
  %6912 = uitofp i32 %6910 to float
  %6913 = uitofp i32 %6911 to float
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 0
  %6916 = extractvalue %dx.types.CBufRet.f32 %6914, 1
  %6917 = fmul fast float %6912, %6842
  %6918 = fmul fast float %6913, %6843
  %6919 = fadd fast float %6917, -5.000000e-01
  %6920 = fadd fast float %6918, -5.000000e-01
  %6921 = call float @dx.op.unary.f32(i32 22, float %6919)  ; Frc(value)
  %6922 = call float @dx.op.unary.f32(i32 22, float %6920)  ; Frc(value)
  %6923 = fmul fast float %6921, %6921
  %6924 = fmul fast float %6923, %6921
  %6925 = fsub fast float 3.000000e+00, %6921
  %6926 = fmul fast float %6923, %6925
  %6927 = fmul fast float %6921, 3.000000e+00
  %6928 = fmul fast float %6924, 3.000000e+00
  %6929 = fmul fast float %6923, 6.000000e+00
  %6930 = fsub fast float %6928, %6929
  %6931 = fadd fast float %6930, 4.000000e+00
  %6932 = fmul fast float %6931, 0x3FC5555560000000
  %6933 = fmul fast float %6924, -3.000000e+00
  %6934 = fadd fast float %6923, %6921
  %6935 = fmul fast float %6934, 3.000000e+00
  %6936 = fadd fast float %6933, 1.000000e+00
  %6937 = fadd fast float %6936, %6935
  %6938 = fmul fast float %6924, 0x3FC5555560000000
  %6939 = fmul fast float %6922, %6922
  %6940 = fmul fast float %6939, %6922
  %6941 = fsub fast float 3.000000e+00, %6922
  %6942 = fmul fast float %6939, %6941
  %6943 = fmul fast float %6922, 3.000000e+00
  %6944 = fmul fast float %6940, 3.000000e+00
  %6945 = fmul fast float %6939, 6.000000e+00
  %6946 = fsub fast float %6944, %6945
  %6947 = fadd fast float %6946, 4.000000e+00
  %6948 = fmul fast float %6947, 0x3FC5555560000000
  %6949 = fmul fast float %6940, -3.000000e+00
  %6950 = fadd fast float %6939, %6922
  %6951 = fmul fast float %6950, 3.000000e+00
  %6952 = fadd fast float %6949, 1.000000e+00
  %6953 = fadd fast float %6952, %6951
  %6954 = fmul fast float %6940, 0x3FC5555560000000
  %6955 = fadd fast float %6921, 1.000000e+00
  %6956 = fsub fast float 1.000000e+00, %6927
  %6957 = fadd fast float %6956, %6926
  %6958 = fadd fast float %6957, %6931
  %6959 = fmul fast float %6958, 0x3FC5555560000000
  %6960 = fdiv fast float %6932, %6959
  %6961 = fsub fast float %6955, %6960
  %6962 = fsub fast float 1.000000e+00, %6921
  %6963 = fadd fast float %6937, %6924
  %6964 = fmul fast float %6963, 0x3FC5555560000000
  %6965 = fdiv fast float %6938, %6964
  %6966 = fadd fast float %6962, %6965
  %6967 = fadd fast float %6922, 1.000000e+00
  %6968 = fsub fast float 1.000000e+00, %6943
  %6969 = fadd fast float %6968, %6942
  %6970 = fadd fast float %6969, %6947
  %6971 = fmul fast float %6970, 0x3FC5555560000000
  %6972 = fdiv fast float %6948, %6971
  %6973 = fsub fast float %6967, %6972
  %6974 = fsub fast float 1.000000e+00, %6922
  %6975 = fadd fast float %6953, %6940
  %6976 = fmul fast float %6975, 0x3FC5555560000000
  %6977 = fdiv fast float %6954, %6976
  %6978 = fadd fast float %6977, %6974
  %6979 = fmul fast float %6961, %6915
  %6980 = fsub fast float %6842, %6979
  %6981 = fmul fast float %6966, %6915
  %6982 = fadd fast float %6981, %6842
  %6983 = fmul fast float %6978, %6916
  %6984 = fadd fast float %6983, %6843
  %6985 = fmul fast float %6973, %6916
  %6986 = fsub fast float %6843, %6985
  %6987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6980, float %6986, float %6904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6988 = extractvalue %dx.types.ResRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.ResRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.ResRet.f32 %6987, 2
  %6991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6982, float %6986, float %6904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6992 = extractvalue %dx.types.ResRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.ResRet.f32 %6991, 1
  %6994 = extractvalue %dx.types.ResRet.f32 %6991, 2
  %6995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6980, float %6984, float %6904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6996 = extractvalue %dx.types.ResRet.f32 %6995, 0
  %6997 = extractvalue %dx.types.ResRet.f32 %6995, 1
  %6998 = extractvalue %dx.types.ResRet.f32 %6995, 2
  %6999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6982, float %6984, float %6904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7000 = extractvalue %dx.types.ResRet.f32 %6999, 0
  %7001 = extractvalue %dx.types.ResRet.f32 %6999, 1
  %7002 = extractvalue %dx.types.ResRet.f32 %6999, 2
  %7003 = fsub fast float %6996, %6988
  %7004 = fsub fast float %6997, %6989
  %7005 = fsub fast float %6998, %6990
  %7006 = fmul fast float %7003, %6976
  %7007 = fmul fast float %7004, %6976
  %7008 = fmul fast float %7005, %6976
  %7009 = fadd fast float %7006, %6988
  %7010 = fadd fast float %7007, %6989
  %7011 = fadd fast float %7008, %6990
  %7012 = fsub fast float %7000, %6992
  %7013 = fsub fast float %7001, %6993
  %7014 = fsub fast float %7002, %6994
  %7015 = fmul fast float %7012, %6976
  %7016 = fmul fast float %7013, %6976
  %7017 = fmul fast float %7014, %6976
  %7018 = fsub fast float %6992, %7009
  %7019 = fadd fast float %7018, %7015
  %7020 = fsub fast float %6993, %7010
  %7021 = fadd fast float %7020, %7016
  %7022 = fsub fast float %6994, %7011
  %7023 = fadd fast float %7022, %7017
  %7024 = fmul fast float %7019, %6964
  %7025 = fmul fast float %7021, %6964
  %7026 = fmul fast float %7023, %6964
  %7027 = fadd fast float %7024, %7009
  %7028 = fadd fast float %7025, %7010
  %7029 = fadd fast float %7026, %7011
  %7030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7031 = extractvalue %dx.types.CBufRet.f32 %7030, 1
  %7032 = fmul fast float %7027, %7031
  %7033 = fmul fast float %7028, %7031
  %7034 = fmul fast float %7029, %7031
  br label %7035

; <label>:7035                                    ; preds = %6867, %6836
  %7036 = phi float [ %6906, %6867 ], [ 1.000000e+00, %6836 ]
  %7037 = phi float [ %6907, %6867 ], [ 1.000000e+00, %6836 ]
  %7038 = phi float [ %6908, %6867 ], [ 1.000000e+00, %6836 ]
  %7039 = phi float [ %7032, %6867 ], [ 0.000000e+00, %6836 ]
  %7040 = phi float [ %7033, %6867 ], [ 0.000000e+00, %6836 ]
  %7041 = phi float [ %7034, %6867 ], [ 0.000000e+00, %6836 ]
  %7042 = fmul fast float %7039, %6813
  %7043 = fmul fast float %7040, %6813
  %7044 = fmul fast float %7041, %6813
  %7045 = call float @dx.op.dot3.f32(i32 55, float %7036, float %7037, float %7038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7046 = call float @dx.op.dot3.f32(i32 55, float %7042, float %7043, float %7044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7047 = select i1 %250, float %7045, float %7036
  %7048 = select i1 %250, float %7045, float %7037
  %7049 = select i1 %250, float 1.000000e+00, float %7038
  %7050 = select i1 %250, float %7046, float %7042
  %7051 = select i1 %250, float 0.000000e+00, float %7043
  %7052 = select i1 %250, float 0.000000e+00, float %7044
  %7053 = fmul fast float %7047, %6826
  %7054 = fmul fast float %7048, %6827
  %7055 = fmul fast float %7049, %6828
  %7056 = fadd fast float %7053, %7050
  %7057 = fadd fast float %7054, %7051
  %7058 = fadd fast float %7052, %7055
  %7059 = fmul fast float %7047, %6804
  %7060 = fmul fast float %7048, %6805
  %7061 = fmul fast float %7049, %6806
  %7062 = fmul fast float %140, %6838
  %7063 = fmul fast float %142, %6839
  %7064 = fsub fast float 1.000000e+00, %7062
  %7065 = fsub fast float 1.000000e+00, %7063
  %7066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7067 = extractvalue %dx.types.CBufRet.f32 %7066, 0
  %7068 = extractvalue %dx.types.CBufRet.f32 %7066, 1
  %7069 = extractvalue %dx.types.CBufRet.f32 %7066, 2
  %7070 = fmul fast float %7064, %7067
  %7071 = fmul fast float %7064, %7068
  %7072 = fmul fast float %7064, %7069
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.CBufRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.CBufRet.f32 %7073, 2
  %7077 = fmul fast float %7065, %7074
  %7078 = fmul fast float %7065, %7075
  %7079 = fmul fast float %7065, %7076
  %7080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7081 = extractvalue %dx.types.CBufRet.f32 %7080, 0
  %7082 = extractvalue %dx.types.CBufRet.f32 %7080, 1
  %7083 = extractvalue %dx.types.CBufRet.f32 %7080, 2
  %7084 = fadd fast float %7077, %7081
  %7085 = fadd fast float %7084, %7070
  %7086 = fadd fast float %7078, %7082
  %7087 = fadd fast float %7086, %7071
  %7088 = fadd fast float %7079, %7083
  %7089 = fadd fast float %7088, %7072
  %7090 = fmul fast float %7085, %213
  %7091 = fmul fast float %7087, %213
  %7092 = fmul fast float %7089, %213
  br label %7093

; <label>:7093                                    ; preds = %7035, %6803
  %7094 = phi float [ %7090, %7035 ], [ %191, %6803 ]
  %7095 = phi float [ %7091, %7035 ], [ %192, %6803 ]
  %7096 = phi float [ %7092, %7035 ], [ %193, %6803 ]
  %7097 = phi float [ %213, %7035 ], [ %99, %6803 ]
  %7098 = phi float [ %7056, %7035 ], [ %6826, %6803 ]
  %7099 = phi float [ %7057, %7035 ], [ %6827, %6803 ]
  %7100 = phi float [ %7058, %7035 ], [ %6828, %6803 ]
  %7101 = phi float [ %7059, %7035 ], [ %6804, %6803 ]
  %7102 = phi float [ %7060, %7035 ], [ %6805, %6803 ]
  %7103 = phi float [ %7061, %7035 ], [ %6806, %6803 ]
  %7104 = phi float [ %7036, %7035 ], [ 1.000000e+00, %6803 ]
  br i1 %6835, label %8259, label %7105

; <label>:7105                                    ; preds = %7093
  %7106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7107 = extractvalue %dx.types.CBufRet.f32 %7106, 0
  %7108 = extractvalue %dx.types.CBufRet.f32 %7106, 1
  %7109 = extractvalue %dx.types.CBufRet.f32 %7106, 2
  %7110 = extractvalue %dx.types.CBufRet.f32 %7106, 3
  %7111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7112 = extractvalue %dx.types.CBufRet.f32 %7111, 0
  %7113 = extractvalue %dx.types.CBufRet.f32 %7111, 1
  %7114 = extractvalue %dx.types.CBufRet.f32 %7111, 2
  %7115 = extractvalue %dx.types.CBufRet.f32 %7111, 3
  %7116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7117 = extractvalue %dx.types.CBufRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.CBufRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.CBufRet.f32 %7116, 2
  %7120 = extractvalue %dx.types.CBufRet.f32 %7116, 3
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %7123 = extractvalue %dx.types.CBufRet.f32 %7121, 1
  %7124 = extractvalue %dx.types.CBufRet.f32 %7121, 2
  %7125 = extractvalue %dx.types.CBufRet.f32 %7121, 3
  %7126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7127 = extractvalue %dx.types.CBufRet.f32 %7126, 3
  %7128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7129 = extractvalue %dx.types.CBufRet.f32 %7128, 3
  %7130 = extractvalue %dx.types.CBufRet.f32 %7128, 0
  %7131 = extractvalue %dx.types.CBufRet.f32 %7128, 1
  %7132 = extractvalue %dx.types.CBufRet.f32 %7128, 2
  %7133 = fcmp fast olt float %7132, -5.000000e-01
  %7134 = call float @dx.op.dot3.f32(i32 55, float %7094, float %7095, float %7096, float %7094, float %7095, float %7096)  ; Dot3(ax,ay,az,bx,by,bz)
  %7135 = call float @dx.op.unary.f32(i32 25, float %7134)  ; Rsqrt(value)
  %7136 = fmul fast float %7135, %7134
  %7137 = fmul fast float %7135, %7094
  %7138 = fmul fast float %7135, %7095
  %7139 = fmul fast float %7135, %7096
  %7140 = fadd fast float %7136, %7110
  %7141 = call float @dx.op.dot3.f32(i32 55, float %7137, float %7138, float %7139, float %7107, float %7108, float %7109)  ; Dot3(ax,ay,az,bx,by,bz)
  %7142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.i32 %7142, 1
  %7144 = and i32 %7143, 1
  %7145 = icmp ne i32 %7144, 0
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7148 = fcmp fast ogt float %7147, 0.000000e+00
  %7149 = and i1 %7145, %7148
  br i1 %7149, label %7150, label %7556, !dx.controlflow.hints !122

; <label>:7150                                    ; preds = %7105
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.f32 %7153, 2
  %7155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7156 = extractvalue %dx.types.CBufRet.f32 %7155, 2
  %7157 = fsub fast float %7154, %7156
  %7158 = and i32 %7143, 2
  %7159 = extractvalue %dx.types.CBufRet.i32 %7142, 0
  %7160 = call i32 @dx.op.binary.i32(i32 40, i32 %7159, i32 3)  ; UMin(a,b)
  %7161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.f32 %7161, 0
  %7163 = extractvalue %dx.types.CBufRet.f32 %7161, 1
  %7164 = extractvalue %dx.types.CBufRet.f32 %7155, 0
  %7165 = extractvalue %dx.types.CBufRet.f32 %7155, 1
  %7166 = fsub fast float %7162, %7164
  %7167 = fsub fast float %7163, %7165
  %7168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7169 = extractvalue %dx.types.CBufRet.f32 %7168, 0
  %7170 = fcmp fast ogt float %7169, 0.000000e+00
  %7171 = fsub fast float -0.000000e+00, %7166
  %7172 = fsub fast float -0.000000e+00, %7167
  %7173 = call float @dx.op.dot2.f32(i32 54, float %7137, float %7138, float %7137, float %7138)  ; Dot2(ax,ay,bx,by)
  %7174 = call float @dx.op.dot2.f32(i32 54, float %7137, float %7138, float %7171, float %7172)  ; Dot2(ax,ay,bx,by)
  %7175 = fmul fast float %7174, 2.000000e+00
  %7176 = call float @dx.op.dot2.f32(i32 54, float %7171, float %7172, float %7171, float %7172)  ; Dot2(ax,ay,bx,by)
  %7177 = fmul fast float %7169, %7169
  %7178 = fsub fast float %7176, %7177
  %7179 = fmul fast float %7175, %7175
  %7180 = fmul fast float %7173, 4.000000e+00
  %7181 = fmul fast float %7180, %7178
  %7182 = fsub fast float %7179, %7181
  %7183 = fcmp fast ogt float %7182, 0.000000e+00
  br i1 %7183, label %7184, label %7199

; <label>:7184                                    ; preds = %7150
  %7185 = fcmp fast ogt float %7175, 0.000000e+00
  %7186 = call float @dx.op.unary.f32(i32 24, float %7182)  ; Sqrt(value)
  %7187 = fsub fast float -0.000000e+00, %7186
  %7188 = select i1 %7185, float %7186, float %7187
  %7189 = fadd fast float %7188, %7175
  %7190 = fmul float %7189, -5.000000e-01
  %7191 = fdiv fast float %7190, %7173
  %7192 = call float @dx.op.binary.f32(i32 35, float %7191, float 0.000000e+00)  ; FMax(a,b)
  %7193 = call float @dx.op.binary.f32(i32 36, float %7136, float %7192)  ; FMin(a,b)
  %7194 = fdiv fast float %7178, %7190
  %7195 = call float @dx.op.binary.f32(i32 35, float %7194, float 0.000000e+00)  ; FMax(a,b)
  %7196 = call float @dx.op.binary.f32(i32 36, float %7136, float %7195)  ; FMin(a,b)
  %7197 = call float @dx.op.binary.f32(i32 36, float %7193, float %7196)  ; FMin(a,b)
  %7198 = call float @dx.op.binary.f32(i32 35, float %7193, float %7196)  ; FMax(a,b)
  br label %7199

; <label>:7199                                    ; preds = %7184, %7150
  %7200 = phi float [ %7198, %7184 ], [ -1.000000e+00, %7150 ]
  %7201 = phi float [ %7197, %7184 ], [ -1.000000e+00, %7150 ]
  %7202 = phi i1 [ true, %7184 ], [ false, %7150 ]
  %7203 = and i1 %7170, %7202
  br i1 %7203, label %7204, label %7206

; <label>:7204                                    ; preds = %7199
  %7205 = fcmp fast oeq float %7201, %7200
  br i1 %7205, label %7509, label %7207

; <label>:7206                                    ; preds = %7199
  br i1 %7170, label %7509, label %7207

; <label>:7207                                    ; preds = %7206, %7204
  %7208 = phi float [ %7136, %7206 ], [ %7200, %7204 ]
  %7209 = phi float [ 0.000000e+00, %7206 ], [ %7201, %7204 ]
  %7210 = icmp ne i32 %7158, 0
  %7211 = fmul fast float %7208, %7139
  %7212 = fadd fast float %7211, %7152
  %7213 = fmul fast float %7212, %7208
  %7214 = select i1 %7210, float 0.000000e+00, float %7213
  %7215 = fcmp fast oeq float %7139, 0.000000e+00
  %7216 = fdiv fast float %7157, %7139
  %7217 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7216)  ; FMax(a,b)
  %7218 = select i1 %7215, float %7208, float %7217
  %7219 = call float @dx.op.binary.f32(i32 36, float %7208, float %7218)  ; FMin(a,b)
  %7220 = fcmp fast ogt float %7139, 0.000000e+00
  %7221 = fcmp fast olt float %7157, 0.000000e+00
  br i1 %7220, label %7222, label %7279

; <label>:7222                                    ; preds = %7207
  %7223 = icmp eq i32 %7158, 0
  br i1 %7221, label %7224, label %7268

; <label>:7224                                    ; preds = %7222
  %7225 = select i1 %7223, float %7208, float 0.000000e+00
  %7226 = fsub fast float -0.000000e+00, %7225
  %7227 = call float @dx.op.unary.f32(i32 6, float %7226)  ; FAbs(value)
  %7228 = fmul fast float %7225, %7139
  %7229 = fadd fast float %7228, %7152
  %7230 = fmul fast float %7227, %7229
  %7231 = fsub fast float %7214, %7230
  %7232 = fsub fast float %7208, %7227
  %7233 = select i1 %7223, float %7232, float 0.000000e+00
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 0
  %7236 = extractvalue %dx.types.CBufRet.f32 %7234, 1
  %7237 = extractvalue %dx.types.CBufRet.f32 %7234, 2
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.CBufRet.f32 %7238, 1
  %7241 = extractvalue %dx.types.CBufRet.f32 %7238, 2
  %7242 = extractvalue %dx.types.CBufRet.f32 %7238, 3
  %7243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.f32 %7243, 3
  %7245 = call float @dx.op.binary.f32(i32 36, float %7231, float %7244)  ; FMin(a,b)
  %7246 = fmul fast float %7242, %7233
  %7247 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  %7248 = fsub fast float %7239, %7235
  %7249 = fsub fast float %7240, %7236
  %7250 = fsub fast float %7241, %7237
  %7251 = fmul fast float %7247, %7248
  %7252 = fmul fast float %7247, %7249
  %7253 = fmul fast float %7247, %7250
  %7254 = fadd fast float %7251, %7235
  %7255 = fadd fast float %7252, %7236
  %7256 = fadd fast float %7253, %7237
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 0
  %7259 = extractvalue %dx.types.CBufRet.f32 %7257, 1
  %7260 = fadd fast float %7259, %7258
  %7261 = call float @dx.op.unary.f32(i32 7, float %7260)  ; Saturate(value)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7257, 2
  %7263 = extractvalue %dx.types.CBufRet.f32 %7257, 3
  %7264 = fadd fast float %7263, %7262
  %7265 = call float @dx.op.unary.f32(i32 7, float %7264)  ; Saturate(value)
  %7266 = fmul fast float %7261, %7245
  %7267 = fmul fast float %7266, %7265
  br label %7509

; <label>:7268                                    ; preds = %7222
  br i1 %7223, label %7269, label %7290

; <label>:7269                                    ; preds = %7268
  %7270 = call float @dx.op.binary.f32(i32 36, float %7219, float %7209)  ; FMin(a,b)
  %7271 = fsub fast float %7219, %7270
  %7272 = fsub fast float %7271, %7208
  %7273 = call float @dx.op.unary.f32(i32 6, float %7272)  ; FAbs(value)
  %7274 = fadd fast float %7271, %7208
  %7275 = fmul fast float %7274, %7139
  %7276 = fadd fast float %7275, %7152
  %7277 = fmul fast float %7276, %7273
  %7278 = fsub fast float %7214, %7277
  br label %7290

; <label>:7279                                    ; preds = %7207
  br i1 %7221, label %7280, label %7290

; <label>:7280                                    ; preds = %7279
  %7281 = call float @dx.op.binary.f32(i32 35, float %7209, float %7219)  ; FMax(a,b)
  %7282 = icmp eq i32 %7158, 0
  %7283 = select i1 %7282, float %7219, float 0.000000e+00
  %7284 = fsub fast float -0.000000e+00, %7283
  %7285 = call float @dx.op.unary.f32(i32 6, float %7284)  ; FAbs(value)
  %7286 = fmul fast float %7283, %7139
  %7287 = fadd fast float %7286, %7152
  %7288 = fmul fast float %7285, %7287
  %7289 = fsub fast float %7214, %7288
  br label %7290

; <label>:7290                                    ; preds = %7280, %7279, %7269, %7268
  %7291 = phi float [ %7209, %7268 ], [ %7209, %7269 ], [ %7281, %7280 ], [ %7209, %7279 ]
  %7292 = phi float [ 0.000000e+00, %7268 ], [ %7273, %7269 ], [ %7285, %7280 ], [ 0.000000e+00, %7279 ]
  %7293 = phi float [ %7214, %7268 ], [ %7278, %7269 ], [ %7289, %7280 ], [ %7214, %7279 ]
  %7294 = phi float [ %7219, %7268 ], [ %7219, %7269 ], [ %7208, %7280 ], [ %7208, %7279 ]
  %7295 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %7295, align 4, !tbaa !123, !noalias !125
  %7296 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %7296, align 4, !tbaa !123, !noalias !125
  %7297 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %7297, align 4, !tbaa !123, !noalias !125
  %7298 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %7298, align 4, !tbaa !123, !noalias !125
  %7299 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %7299, align 4, !tbaa !123, !noalias !125
  %7300 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %7300, align 4, !tbaa !123, !noalias !125
  %7301 = icmp sgt i32 %7160, 0
  br i1 %7301, label %7302, label %7363

; <label>:7302                                    ; preds = %7290
  br label %7303

; <label>:7303                                    ; preds = %7352, %7302
  %7304 = phi i32 [ %7353, %7352 ], [ 0, %7302 ]
  %7305 = phi i32 [ %7354, %7352 ], [ 0, %7302 ]
  %7306 = add nuw i32 %7305, 171
  %7307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7306)  ; CBufferLoadLegacy(handle,regIndex)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7307, 0
  %7309 = extractvalue %dx.types.CBufRet.f32 %7307, 1
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7313 = fsub fast float %7308, %7311
  %7314 = fsub fast float %7309, %7312
  %7315 = extractvalue %dx.types.CBufRet.f32 %7307, 2
  %7316 = fsub fast float -0.000000e+00, %7313
  %7317 = fsub fast float -0.000000e+00, %7314
  %7318 = call float @dx.op.dot2.f32(i32 54, float %7137, float %7138, float %7316, float %7317)  ; Dot2(ax,ay,bx,by)
  %7319 = fmul fast float %7318, 2.000000e+00
  %7320 = call float @dx.op.dot2.f32(i32 54, float %7316, float %7317, float %7316, float %7317)  ; Dot2(ax,ay,bx,by)
  %7321 = fmul fast float %7315, %7315
  %7322 = fsub fast float %7320, %7321
  %7323 = fmul fast float %7319, %7319
  %7324 = fmul fast float %7180, %7322
  %7325 = fsub fast float %7323, %7324
  %7326 = fcmp fast ogt float %7325, 0.000000e+00
  br i1 %7326, label %7327, label %7342

; <label>:7327                                    ; preds = %7303
  %7328 = fcmp fast ogt float %7319, 0.000000e+00
  %7329 = call float @dx.op.unary.f32(i32 24, float %7325)  ; Sqrt(value)
  %7330 = fsub fast float -0.000000e+00, %7329
  %7331 = select i1 %7328, float %7329, float %7330
  %7332 = fadd fast float %7331, %7319
  %7333 = fmul float %7332, -5.000000e-01
  %7334 = fdiv fast float %7333, %7173
  %7335 = call float @dx.op.binary.f32(i32 35, float %7334, float 0.000000e+00)  ; FMax(a,b)
  %7336 = call float @dx.op.binary.f32(i32 36, float %7208, float %7335)  ; FMin(a,b)
  %7337 = fdiv fast float %7322, %7333
  %7338 = call float @dx.op.binary.f32(i32 35, float %7337, float 0.000000e+00)  ; FMax(a,b)
  %7339 = call float @dx.op.binary.f32(i32 36, float %7208, float %7338)  ; FMin(a,b)
  %7340 = call float @dx.op.binary.f32(i32 36, float %7336, float %7339)  ; FMin(a,b)
  %7341 = call float @dx.op.binary.f32(i32 35, float %7336, float %7339)  ; FMax(a,b)
  br label %7342

; <label>:7342                                    ; preds = %7327, %7303
  %7343 = phi float [ %7341, %7327 ], [ -1.000000e+00, %7303 ]
  %7344 = phi float [ %7340, %7327 ], [ -1.000000e+00, %7303 ]
  %7345 = phi i1 [ true, %7327 ], [ false, %7303 ]
  br i1 %7345, label %7346, label %7352

; <label>:7346                                    ; preds = %7342
  %7347 = call float @dx.op.binary.f32(i32 35, float %7291, float %7344)  ; FMax(a,b)
  %7348 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7305
  store float %7347, float* %7348, align 4, !tbaa !123, !noalias !125
  %7349 = call float @dx.op.binary.f32(i32 35, float %7291, float %7343)  ; FMax(a,b)
  %7350 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7305
  store float %7349, float* %7350, align 4, !tbaa !123, !noalias !125
  %7351 = add nsw i32 %7304, 1
  br label %7352

; <label>:7352                                    ; preds = %7346, %7342
  %7353 = phi i32 [ %7351, %7346 ], [ %7304, %7342 ]
  %7354 = add nuw nsw i32 %7305, 1
  %7355 = icmp eq i32 %7354, %7160
  br i1 %7355, label %7356, label %7303

; <label>:7356                                    ; preds = %7352
  %7357 = load float, float* %7297, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7358 = load float, float* %7296, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %7359 = load float, float* %7295, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %7360 = load float, float* %7300, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7361 = load float, float* %7299, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %7362 = load float, float* %7298, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %7363

; <label>:7363                                    ; preds = %7356, %7290
  %7364 = phi float [ -1.000000e+00, %7290 ], [ %7362, %7356 ]
  %7365 = phi float [ -1.000000e+00, %7290 ], [ %7361, %7356 ]
  %7366 = phi float [ -1.000000e+00, %7290 ], [ %7360, %7356 ]
  %7367 = phi float [ -1.000000e+00, %7290 ], [ %7359, %7356 ]
  %7368 = phi float [ -1.000000e+00, %7290 ], [ %7358, %7356 ]
  %7369 = phi float [ -1.000000e+00, %7290 ], [ %7357, %7356 ]
  %7370 = phi i32 [ 0, %7290 ], [ %7353, %7356 ]
  %7371 = call float @dx.op.binary.f32(i32 36, float %7368, float %7369)  ; FMin(a,b)
  %7372 = call float @dx.op.binary.f32(i32 36, float %7367, float %7371)  ; FMin(a,b)
  %7373 = call float @dx.op.binary.f32(i32 35, float %7367, float %7368)  ; FMax(a,b)
  %7374 = call float @dx.op.binary.f32(i32 36, float %7373, float %7369)  ; FMin(a,b)
  %7375 = call float @dx.op.binary.f32(i32 36, float %7367, float %7368)  ; FMin(a,b)
  %7376 = call float @dx.op.binary.f32(i32 35, float %7375, float %7374)  ; FMax(a,b)
  %7377 = call float @dx.op.binary.f32(i32 35, float %7368, float %7369)  ; FMax(a,b)
  %7378 = call float @dx.op.binary.f32(i32 35, float %7367, float %7377)  ; FMax(a,b)
  store float %7372, float* %7295, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %7376, float* %7296, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %7378, float* %7297, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7379 = call float @dx.op.binary.f32(i32 36, float %7365, float %7366)  ; FMin(a,b)
  %7380 = call float @dx.op.binary.f32(i32 36, float %7364, float %7379)  ; FMin(a,b)
  %7381 = call float @dx.op.binary.f32(i32 35, float %7364, float %7365)  ; FMax(a,b)
  %7382 = call float @dx.op.binary.f32(i32 36, float %7381, float %7366)  ; FMin(a,b)
  %7383 = call float @dx.op.binary.f32(i32 36, float %7364, float %7365)  ; FMin(a,b)
  %7384 = call float @dx.op.binary.f32(i32 35, float %7383, float %7382)  ; FMax(a,b)
  %7385 = call float @dx.op.binary.f32(i32 35, float %7365, float %7366)  ; FMax(a,b)
  %7386 = call float @dx.op.binary.f32(i32 35, float %7364, float %7385)  ; FMax(a,b)
  store float %7380, float* %7298, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %7384, float* %7299, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %7386, float* %7300, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7387 = sub nsw i32 3, %7370
  %7388 = icmp sgt i32 %7387, 2
  br i1 %7388, label %7389, label %7427

; <label>:7389                                    ; preds = %7363
  %7390 = icmp eq i32 %7158, 0
  %7391 = fsub fast float %7208, %7292
  %7392 = select i1 %7390, float %7391, float %7292
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7396 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.CBufRet.f32 %7397, 1
  %7400 = extractvalue %dx.types.CBufRet.f32 %7397, 2
  %7401 = extractvalue %dx.types.CBufRet.f32 %7397, 3
  %7402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7403 = extractvalue %dx.types.CBufRet.f32 %7402, 3
  %7404 = call float @dx.op.binary.f32(i32 36, float %7293, float %7403)  ; FMin(a,b)
  %7405 = fmul fast float %7401, %7392
  %7406 = call float @dx.op.unary.f32(i32 7, float %7405)  ; Saturate(value)
  %7407 = fsub fast float %7398, %7394
  %7408 = fsub fast float %7399, %7395
  %7409 = fsub fast float %7400, %7396
  %7410 = fmul fast float %7406, %7407
  %7411 = fmul fast float %7406, %7408
  %7412 = fmul fast float %7406, %7409
  %7413 = fadd fast float %7410, %7394
  %7414 = fadd fast float %7411, %7395
  %7415 = fadd fast float %7412, %7396
  %7416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.CBufRet.f32 %7416, 1
  %7419 = fadd fast float %7418, %7417
  %7420 = call float @dx.op.unary.f32(i32 7, float %7419)  ; Saturate(value)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7416, 2
  %7422 = extractvalue %dx.types.CBufRet.f32 %7416, 3
  %7423 = fadd fast float %7422, %7421
  %7424 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  %7425 = fmul fast float %7420, %7404
  %7426 = fmul fast float %7425, %7424
  br label %7509

; <label>:7427                                    ; preds = %7363
  %7428 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7387
  %7429 = load float, float* %7428, align 4, !tbaa !123, !noalias !125
  %7430 = fcmp fast olt float %7429, %7294
  %7431 = icmp sgt i32 %7370, 0
  %7432 = and i1 %7431, %7430
  br i1 %7432, label %7433, label %7470

; <label>:7433                                    ; preds = %7427
  br label %7434

; <label>:7434                                    ; preds = %7463, %7433
  %7435 = phi float [ %7464, %7463 ], [ %7292, %7433 ]
  %7436 = phi float [ %7465, %7463 ], [ %7293, %7433 ]
  %7437 = phi float [ %7445, %7463 ], [ %7429, %7433 ]
  %7438 = phi i32 [ %7442, %7463 ], [ %7387, %7433 ]
  %7439 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7438
  %7440 = load float, float* %7439, align 4, !tbaa !123, !noalias !125
  %7441 = icmp slt i32 %7438, 2
  %7442 = add nsw i32 %7438, 1
  %7443 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7442
  %7444 = load float, float* %7443, align 4, !tbaa !123, !noalias !125
  %7445 = select i1 %7441, float %7444, float %7208
  %7446 = call float @dx.op.binary.f32(i32 36, float %7445, float %7440)  ; FMin(a,b)
  %7447 = call float @dx.op.binary.f32(i32 36, float %7294, float %7446)  ; FMin(a,b)
  %7448 = icmp eq i32 %7158, 0
  %7449 = fadd fast float %7447, %7437
  %7450 = fmul fast float %7449, %7139
  %7451 = fadd fast float %7450, %7152
  br i1 %7448, label %7457, label %7452

; <label>:7452                                    ; preds = %7434
  %7453 = fsub fast float %7447, %7437
  %7454 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7453)  ; FMax(a,b)
  %7455 = fmul fast float %7454, %7451
  %7456 = fadd fast float %7455, %7436
  br label %7463

; <label>:7457                                    ; preds = %7434
  %7458 = fsub fast float %7437, %7447
  %7459 = call float @dx.op.unary.f32(i32 6, float %7458)  ; FAbs(value)
  %7460 = fadd fast float %7459, %7435
  %7461 = fmul fast float %7459, %7451
  %7462 = fsub fast float %7436, %7461
  br label %7463

; <label>:7463                                    ; preds = %7457, %7452
  %7464 = phi float [ %7454, %7452 ], [ %7460, %7457 ]
  %7465 = phi float [ %7456, %7452 ], [ %7462, %7457 ]
  %7466 = fcmp fast olt float %7445, %7294
  %7467 = icmp slt i32 %7442, 3
  %7468 = and i1 %7467, %7466
  br i1 %7468, label %7434, label %7469

; <label>:7469                                    ; preds = %7463
  br label %7470

; <label>:7470                                    ; preds = %7469, %7427
  %7471 = phi float [ %7292, %7427 ], [ %7464, %7469 ]
  %7472 = phi float [ %7293, %7427 ], [ %7465, %7469 ]
  %7473 = fsub fast float %7208, %7471
  %7474 = select i1 %7210, float %7471, float %7473
  %7475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7476 = extractvalue %dx.types.CBufRet.f32 %7475, 0
  %7477 = extractvalue %dx.types.CBufRet.f32 %7475, 1
  %7478 = extractvalue %dx.types.CBufRet.f32 %7475, 2
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7482 = extractvalue %dx.types.CBufRet.f32 %7479, 2
  %7483 = extractvalue %dx.types.CBufRet.f32 %7479, 3
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 3
  %7486 = call float @dx.op.binary.f32(i32 36, float %7472, float %7485)  ; FMin(a,b)
  %7487 = fmul fast float %7483, %7474
  %7488 = call float @dx.op.unary.f32(i32 7, float %7487)  ; Saturate(value)
  %7489 = fsub fast float %7480, %7476
  %7490 = fsub fast float %7481, %7477
  %7491 = fsub fast float %7482, %7478
  %7492 = fmul fast float %7488, %7489
  %7493 = fmul fast float %7488, %7490
  %7494 = fmul fast float %7488, %7491
  %7495 = fadd fast float %7492, %7476
  %7496 = fadd fast float %7493, %7477
  %7497 = fadd fast float %7494, %7478
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = fadd fast float %7500, %7499
  %7502 = call float @dx.op.unary.f32(i32 7, float %7501)  ; Saturate(value)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7504 = extractvalue %dx.types.CBufRet.f32 %7498, 3
  %7505 = fadd fast float %7504, %7503
  %7506 = call float @dx.op.unary.f32(i32 7, float %7505)  ; Saturate(value)
  %7507 = fmul fast float %7502, %7486
  %7508 = fmul fast float %7507, %7506
  br label %7509

; <label>:7509                                    ; preds = %7470, %7389, %7224, %7206, %7204
  %7510 = phi float [ %7233, %7224 ], [ %7392, %7389 ], [ %7474, %7470 ], [ 0.000000e+00, %7204 ], [ 0.000000e+00, %7206 ]
  %7511 = phi float [ %7267, %7224 ], [ %7426, %7389 ], [ %7508, %7470 ], [ 0.000000e+00, %7204 ], [ 0.000000e+00, %7206 ]
  %7512 = phi float [ %7254, %7224 ], [ %7413, %7389 ], [ %7495, %7470 ], [ 0.000000e+00, %7204 ], [ 0.000000e+00, %7206 ]
  %7513 = phi float [ %7255, %7224 ], [ %7414, %7389 ], [ %7496, %7470 ], [ 0.000000e+00, %7204 ], [ 0.000000e+00, %7206 ]
  %7514 = phi float [ %7256, %7224 ], [ %7415, %7389 ], [ %7497, %7470 ], [ 0.000000e+00, %7204 ], [ 0.000000e+00, %7206 ]
  %7515 = fmul fast float %7147, %7511
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7518 = fsub fast float %7154, %7517
  %7519 = fcmp fast olt float %7515, -2.000000e+01
  %7520 = call float @dx.op.unary.f32(i32 21, float %7515)  ; Exp(value)
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 3
  %7524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7525 = extractvalue %dx.types.CBufRet.f32 %7524, 2
  %7526 = fmul fast float %7523, %7518
  %7527 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7528 = fsub fast float 1.000000e+00, %7527
  %7529 = fmul fast float %7139, 5.000000e-01
  %7530 = fadd fast float %7529, 5.000000e-01
  %7531 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7532 = fsub fast float 1.000000e+00, %7531
  %7533 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7528)  ; FMax(a,b)
  %7534 = fdiv fast float %7532, %7533
  %7535 = fsub fast float %7518, %7096
  %7536 = call float @dx.op.unary.f32(i32 6, float %7535)  ; FAbs(value)
  %7537 = fmul fast float %7536, %7522
  %7538 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  %7539 = fsub fast float 1.000000e+00, %7537
  %7540 = fmul fast float %7539, %7538
  %7541 = fadd fast float %7540, %7537
  %7542 = fmul fast float %7525, %7518
  %7543 = call float @dx.op.unary.f32(i32 7, float %7542)  ; Saturate(value)
  %7544 = fsub fast float 1.000000e+00, %7541
  %7545 = fmul fast float %7544, %7543
  %7546 = fadd fast float %7545, %7541
  %7547 = call float @dx.op.unary.f32(i32 7, float %7546)  ; Saturate(value)
  %7548 = fadd fast float %7520, -1.000000e+00
  %7549 = select i1 %7519, float -1.000000e+00, float %7548
  %7550 = fmul fast float %7547, %7549
  %7551 = fadd fast float %7550, 1.000000e+00
  %7552 = fsub fast float -0.000000e+00, %7550
  %7553 = fmul fast float %7512, %7552
  %7554 = fmul fast float %7513, %7552
  %7555 = fmul fast float %7514, %7552
  br label %7556

; <label>:7556                                    ; preds = %7509, %7105
  %7557 = phi float [ %7510, %7509 ], [ 0.000000e+00, %7105 ]
  %7558 = phi float [ %7551, %7509 ], [ 1.000000e+00, %7105 ]
  %7559 = phi float [ %7553, %7509 ], [ 0.000000e+00, %7105 ]
  %7560 = phi float [ %7554, %7509 ], [ 0.000000e+00, %7105 ]
  %7561 = phi float [ %7555, %7509 ], [ 0.000000e+00, %7105 ]
  %7562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7562, 1
  %7564 = fsub fast float 1.000000e+00, %7558
  %7565 = fmul fast float %7564, %7140
  %7566 = fmul fast float %7565, %7563
  %7567 = fsub fast float %7140, %7566
  br i1 %7133, label %7568, label %7597, !dx.controlflow.hints !161

; <label>:7568                                    ; preds = %7556
  %7569 = fmul fast float %7141, %7130
  %7570 = fadd fast float %7569, %7131
  %7571 = call float @dx.op.unary.f32(i32 7, float %7570)  ; Saturate(value)
  %7572 = fmul fast float %7112, %7567
  %7573 = fsub fast float -0.000000e+00, %7572
  %7574 = fmul fast float %7113, %7567
  %7575 = fsub fast float -0.000000e+00, %7574
  %7576 = call float @dx.op.unary.f32(i32 21, float %7573)  ; Exp(value)
  %7577 = call float @dx.op.unary.f32(i32 21, float %7575)  ; Exp(value)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7120, float %7576)  ; FMax(a,b)
  %7579 = call float @dx.op.binary.f32(i32 35, float %7120, float %7577)  ; FMax(a,b)
  %7580 = fsub fast float %7579, %7578
  %7581 = fmul fast float %7580, %7571
  %7582 = fadd fast float %7581, %7578
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fsub fast float %7117, %7122
  %7585 = fsub fast float %7118, %7123
  %7586 = fsub fast float %7119, %7124
  %7587 = fmul fast float %7571, %7584
  %7588 = fmul fast float %7571, %7585
  %7589 = fmul fast float %7571, %7586
  %7590 = fadd fast float %7587, %7122
  %7591 = fadd fast float %7588, %7123
  %7592 = fadd fast float %7589, %7124
  %7593 = fsub fast float 1.000000e+00, %7583
  %7594 = fmul fast float %7593, %7590
  %7595 = fmul fast float %7593, %7591
  %7596 = fmul fast float %7593, %7592
  br label %7656

; <label>:7597                                    ; preds = %7556
  %7598 = fmul fast float %7567, %7129
  %7599 = call float @dx.op.unary.f32(i32 7, float %7598)  ; Saturate(value)
  %7600 = fsub fast float 2.000000e+00, %7599
  %7601 = fmul fast float %7599, 9.921875e-01
  %7602 = fmul fast float %7601, %7600
  %7603 = fadd fast float %7602, 3.906250e-03
  %7604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %7603, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7605 = extractvalue %dx.types.ResRet.f32 %7604, 0
  %7606 = fsub fast float %7599, %7605
  %7607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7606)  ; FMax(a,b)
  %7608 = fmul fast float %7115, %7096
  %7609 = call float @dx.op.unary.f32(i32 6, float %7608)  ; FAbs(value)
  %7610 = fcmp fast ogt float %7609, 0x3EB0C6F7A0000000
  br i1 %7610, label %7611, label %7617, !dx.controlflow.hints !162

; <label>:7611                                    ; preds = %7597
  %7612 = fmul fast float %7608, 0xBFF7154760000000
  %7613 = call float @dx.op.unary.f32(i32 21, float %7612)  ; Exp(value)
  %7614 = fsub fast float 1.000000e+00, %7613
  %7615 = fdiv fast float %7614, %7608
  %7616 = fmul fast float %7615, %7125
  br label %7617

; <label>:7617                                    ; preds = %7611, %7597
  %7618 = phi float [ %7616, %7611 ], [ %7125, %7597 ]
  %7619 = fadd fast float %7618, %7127
  %7620 = fmul fast float %7619, %7607
  %7621 = fmul fast float %7112, %7620
  %7622 = fsub fast float -0.000000e+00, %7621
  %7623 = fmul fast float %7113, %7620
  %7624 = fsub fast float -0.000000e+00, %7623
  %7625 = fmul fast float %7114, %7620
  %7626 = fsub fast float -0.000000e+00, %7625
  %7627 = call float @dx.op.unary.f32(i32 21, float %7622)  ; Exp(value)
  %7628 = call float @dx.op.unary.f32(i32 21, float %7624)  ; Exp(value)
  %7629 = call float @dx.op.unary.f32(i32 21, float %7626)  ; Exp(value)
  %7630 = fmul fast float %7141, %7141
  %7631 = fadd fast float %7630, 1.000000e+00
  %7632 = fmul fast float %7631, 0x3FAE8EC8A0000000
  %7633 = fmul fast float %7632, %7122
  %7634 = fmul fast float %7632, %7123
  %7635 = fmul fast float %7632, %7124
  %7636 = fmul fast float %7141, %7120
  %7637 = fsub fast float 1.000000e+00, %7636
  %7638 = fmul fast float %7120, %7120
  %7639 = fsub fast float 1.000000e+00, %7638
  %7640 = fmul fast float %7639, 0x3FB45F3060000000
  %7641 = fmul fast float %7637, %7637
  %7642 = fdiv fast float 1.000000e+00, %7641
  %7643 = fmul fast float %7640, %7642
  %7644 = fmul fast float %7643, %7117
  %7645 = fmul fast float %7643, %7118
  %7646 = fmul fast float %7643, %7119
  %7647 = fadd fast float %7644, %7633
  %7648 = fadd fast float %7645, %7634
  %7649 = fadd fast float %7646, %7635
  %7650 = fsub fast float 1.000000e+00, %7627
  %7651 = fsub fast float 1.000000e+00, %7628
  %7652 = fsub fast float 1.000000e+00, %7629
  %7653 = fmul fast float %7647, %7650
  %7654 = fmul fast float %7648, %7651
  %7655 = fmul fast float %7649, %7652
  br label %7656

; <label>:7656                                    ; preds = %7617, %7568
  %7657 = phi float [ %7594, %7568 ], [ %7653, %7617 ]
  %7658 = phi float [ %7595, %7568 ], [ %7654, %7617 ]
  %7659 = phi float [ %7596, %7568 ], [ %7655, %7617 ]
  %7660 = phi float [ %7583, %7568 ], [ %7627, %7617 ]
  %7661 = phi float [ %7583, %7568 ], [ %7628, %7617 ]
  %7662 = phi float [ %7583, %7568 ], [ %7629, %7617 ]
  br i1 %7149, label %7663, label %7861, !dx.controlflow.hints !163

; <label>:7663                                    ; preds = %7656
  %7664 = extractvalue %dx.types.CBufRet.f32 %7562, 0
  %7665 = fmul fast float %7664, %7564
  %7666 = fsub fast float %7559, %7657
  %7667 = fsub fast float %7560, %7658
  %7668 = fsub fast float %7561, %7659
  %7669 = fmul fast float %7665, %7666
  %7670 = fmul fast float %7665, %7667
  %7671 = fmul fast float %7665, %7668
  %7672 = fadd fast float %7669, %7657
  %7673 = fadd fast float %7670, %7658
  %7674 = fadd fast float %7671, %7659
  %7675 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7660)  ; FMax(a,b)
  %7676 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7661)  ; FMax(a,b)
  %7677 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7662)  ; FMax(a,b)
  %7678 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7558)  ; FMax(a,b)
  %7679 = call float @dx.op.binary.f32(i32 35, float %7557, float %7567)  ; FMax(a,b)
  %7680 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7679)  ; FMax(a,b)
  %7681 = fdiv fast float %7557, %7680
  %7682 = call float @dx.op.unary.f32(i32 7, float %7681)  ; Saturate(value)
  %7683 = fdiv fast float %7567, %7680
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7685 = fcmp fast une float %7678, 1.000000e+00
  br i1 %7685, label %7686, label %7699, !dx.controlflow.hints !164

; <label>:7686                                    ; preds = %7663
  %7687 = call float @dx.op.unary.f32(i32 23, float %7678)  ; Log(value)
  %7688 = fmul fast float %7687, 0x3FE62E4300000000
  %7689 = fmul fast float %7559, %7688
  %7690 = fsub fast float -0.000000e+00, %7689
  %7691 = fmul fast float %7560, %7688
  %7692 = fsub fast float -0.000000e+00, %7691
  %7693 = fmul fast float %7561, %7688
  %7694 = fsub fast float -0.000000e+00, %7693
  %7695 = fsub fast float 1.000000e+00, %7678
  %7696 = fdiv fast float %7690, %7695
  %7697 = fdiv fast float %7692, %7695
  %7698 = fdiv fast float %7694, %7695
  br label %7699

; <label>:7699                                    ; preds = %7686, %7663
  %7700 = phi float [ %7696, %7686 ], [ %7559, %7663 ]
  %7701 = phi float [ %7697, %7686 ], [ %7560, %7663 ]
  %7702 = phi float [ %7698, %7686 ], [ %7561, %7663 ]
  %7703 = phi float [ %7688, %7686 ], [ 0.000000e+00, %7663 ]
  %7704 = fcmp fast une float %7675, 1.000000e+00
  br i1 %7704, label %7705, label %7712, !dx.controlflow.hints !165

; <label>:7705                                    ; preds = %7699
  %7706 = call float @dx.op.unary.f32(i32 23, float %7675)  ; Log(value)
  %7707 = fmul fast float %7706, 0x3FE62E4300000000
  %7708 = fmul fast float %7672, %7707
  %7709 = fsub fast float -0.000000e+00, %7708
  %7710 = fsub fast float 1.000000e+00, %7675
  %7711 = fdiv fast float %7709, %7710
  br label %7712

; <label>:7712                                    ; preds = %7705, %7699
  %7713 = phi float [ %7711, %7705 ], [ %7672, %7699 ]
  %7714 = phi float [ %7707, %7705 ], [ 0.000000e+00, %7699 ]
  %7715 = fcmp fast une float %7676, 1.000000e+00
  br i1 %7715, label %7716, label %7723, !dx.controlflow.hints !165

; <label>:7716                                    ; preds = %7712
  %7717 = call float @dx.op.unary.f32(i32 23, float %7676)  ; Log(value)
  %7718 = fmul fast float %7717, 0x3FE62E4300000000
  %7719 = fmul fast float %7673, %7718
  %7720 = fsub fast float -0.000000e+00, %7719
  %7721 = fsub fast float 1.000000e+00, %7676
  %7722 = fdiv fast float %7720, %7721
  br label %7723

; <label>:7723                                    ; preds = %7716, %7712
  %7724 = phi float [ %7722, %7716 ], [ %7673, %7712 ]
  %7725 = phi float [ %7718, %7716 ], [ 0.000000e+00, %7712 ]
  %7726 = fcmp fast une float %7677, 1.000000e+00
  br i1 %7726, label %7727, label %7734, !dx.controlflow.hints !165

; <label>:7727                                    ; preds = %7723
  %7728 = call float @dx.op.unary.f32(i32 23, float %7677)  ; Log(value)
  %7729 = fmul fast float %7728, 0x3FE62E4300000000
  %7730 = fmul fast float %7674, %7729
  %7731 = fsub fast float -0.000000e+00, %7730
  %7732 = fsub fast float 1.000000e+00, %7677
  %7733 = fdiv fast float %7731, %7732
  br label %7734

; <label>:7734                                    ; preds = %7727, %7723
  %7735 = phi float [ %7733, %7727 ], [ %7674, %7723 ]
  %7736 = phi float [ %7729, %7727 ], [ 0.000000e+00, %7723 ]
  %7737 = fmul fast float %7700, %7684
  %7738 = fmul fast float %7701, %7684
  %7739 = fmul fast float %7702, %7684
  %7740 = fmul fast float %7703, %7684
  %7741 = fmul fast float %7713, %7682
  %7742 = fmul fast float %7724, %7682
  %7743 = fmul fast float %7735, %7682
  %7744 = fmul fast float %7714, %7682
  %7745 = fmul fast float %7725, %7682
  %7746 = fmul fast float %7736, %7682
  %7747 = fadd fast float %7741, %7737
  %7748 = fadd fast float %7742, %7738
  %7749 = fadd fast float %7743, %7739
  %7750 = fadd fast float %7744, %7740
  %7751 = fadd fast float %7745, %7740
  %7752 = fadd fast float %7746, %7740
  %7753 = fcmp fast une float %7750, 0.000000e+00
  br i1 %7753, label %7754, label %7761, !dx.controlflow.hints !166

; <label>:7754                                    ; preds = %7734
  %7755 = fmul fast float %7750, 0x3FF7154760000000
  %7756 = call float @dx.op.unary.f32(i32 21, float %7755)  ; Exp(value)
  %7757 = fsub fast float 1.000000e+00, %7756
  %7758 = fmul fast float %7747, %7757
  %7759 = fsub fast float -0.000000e+00, %7758
  %7760 = fdiv fast float %7759, %7750
  br label %7761

; <label>:7761                                    ; preds = %7754, %7734
  %7762 = phi float [ %7756, %7754 ], [ 1.000000e+00, %7734 ]
  %7763 = phi float [ %7760, %7754 ], [ %7747, %7734 ]
  %7764 = fcmp fast une float %7751, 0.000000e+00
  br i1 %7764, label %7765, label %7772, !dx.controlflow.hints !166

; <label>:7765                                    ; preds = %7761
  %7766 = fmul fast float %7751, 0x3FF7154760000000
  %7767 = call float @dx.op.unary.f32(i32 21, float %7766)  ; Exp(value)
  %7768 = fsub fast float 1.000000e+00, %7767
  %7769 = fmul fast float %7748, %7768
  %7770 = fsub fast float -0.000000e+00, %7769
  %7771 = fdiv fast float %7770, %7751
  br label %7772

; <label>:7772                                    ; preds = %7765, %7761
  %7773 = phi float [ %7767, %7765 ], [ 1.000000e+00, %7761 ]
  %7774 = phi float [ %7771, %7765 ], [ %7748, %7761 ]
  %7775 = fcmp fast une float %7752, 0.000000e+00
  br i1 %7775, label %7776, label %7783, !dx.controlflow.hints !166

; <label>:7776                                    ; preds = %7772
  %7777 = fmul fast float %7752, 0x3FF7154760000000
  %7778 = call float @dx.op.unary.f32(i32 21, float %7777)  ; Exp(value)
  %7779 = fsub fast float 1.000000e+00, %7778
  %7780 = fmul fast float %7749, %7779
  %7781 = fsub fast float -0.000000e+00, %7780
  %7782 = fdiv fast float %7781, %7752
  br label %7783

; <label>:7783                                    ; preds = %7776, %7772
  %7784 = phi float [ %7778, %7776 ], [ 1.000000e+00, %7772 ]
  %7785 = phi float [ %7782, %7776 ], [ %7749, %7772 ]
  %7786 = fcmp fast ogt float %7682, %7684
  br i1 %7786, label %7787, label %7807

; <label>:7787                                    ; preds = %7783
  %7788 = fsub fast float 1.000000e+00, %7684
  %7789 = fmul fast float %7700, %7788
  %7790 = fmul fast float %7701, %7788
  %7791 = fmul fast float %7702, %7788
  %7792 = fmul fast float %7703, %7788
  %7793 = fcmp fast une float %7792, 0.000000e+00
  br i1 %7793, label %7794, label %7845, !dx.controlflow.hints !167

; <label>:7794                                    ; preds = %7787
  %7795 = fmul fast float %7792, 0x3FF7154760000000
  %7796 = call float @dx.op.unary.f32(i32 21, float %7795)  ; Exp(value)
  %7797 = fsub fast float 1.000000e+00, %7796
  %7798 = fmul fast float %7789, %7797
  %7799 = fsub fast float -0.000000e+00, %7798
  %7800 = fmul fast float %7790, %7797
  %7801 = fsub fast float -0.000000e+00, %7800
  %7802 = fmul fast float %7791, %7797
  %7803 = fsub fast float -0.000000e+00, %7802
  %7804 = fdiv fast float %7799, %7792
  %7805 = fdiv fast float %7801, %7792
  %7806 = fdiv fast float %7803, %7792
  br label %7845

; <label>:7807                                    ; preds = %7783
  %7808 = fsub fast float 1.000000e+00, %7682
  %7809 = fmul fast float %7713, %7808
  %7810 = fmul fast float %7724, %7808
  %7811 = fmul fast float %7735, %7808
  %7812 = fmul fast float %7714, %7808
  %7813 = fmul fast float %7725, %7808
  %7814 = fmul fast float %7736, %7808
  %7815 = fcmp fast une float %7812, 0.000000e+00
  br i1 %7815, label %7816, label %7823, !dx.controlflow.hints !166

; <label>:7816                                    ; preds = %7807
  %7817 = fmul fast float %7812, 0x3FF7154760000000
  %7818 = call float @dx.op.unary.f32(i32 21, float %7817)  ; Exp(value)
  %7819 = fsub fast float 1.000000e+00, %7818
  %7820 = fmul fast float %7809, %7819
  %7821 = fsub fast float -0.000000e+00, %7820
  %7822 = fdiv fast float %7821, %7812
  br label %7823

; <label>:7823                                    ; preds = %7816, %7807
  %7824 = phi float [ %7822, %7816 ], [ %7809, %7807 ]
  %7825 = phi float [ %7818, %7816 ], [ 1.000000e+00, %7807 ]
  %7826 = fcmp fast une float %7813, 0.000000e+00
  br i1 %7826, label %7827, label %7834, !dx.controlflow.hints !166

; <label>:7827                                    ; preds = %7823
  %7828 = fmul fast float %7813, 0x3FF7154760000000
  %7829 = call float @dx.op.unary.f32(i32 21, float %7828)  ; Exp(value)
  %7830 = fsub fast float 1.000000e+00, %7829
  %7831 = fmul fast float %7810, %7830
  %7832 = fsub fast float -0.000000e+00, %7831
  %7833 = fdiv fast float %7832, %7813
  br label %7834

; <label>:7834                                    ; preds = %7827, %7823
  %7835 = phi float [ %7833, %7827 ], [ %7810, %7823 ]
  %7836 = phi float [ %7829, %7827 ], [ 1.000000e+00, %7823 ]
  %7837 = fcmp fast une float %7814, 0.000000e+00
  br i1 %7837, label %7838, label %7845, !dx.controlflow.hints !166

; <label>:7838                                    ; preds = %7834
  %7839 = fmul fast float %7814, 0x3FF7154760000000
  %7840 = call float @dx.op.unary.f32(i32 21, float %7839)  ; Exp(value)
  %7841 = fsub fast float 1.000000e+00, %7840
  %7842 = fmul fast float %7811, %7841
  %7843 = fsub fast float -0.000000e+00, %7842
  %7844 = fdiv fast float %7843, %7814
  br label %7845

; <label>:7845                                    ; preds = %7838, %7834, %7794, %7787
  %7846 = phi float [ %7844, %7838 ], [ %7806, %7794 ], [ %7791, %7787 ], [ %7811, %7834 ]
  %7847 = phi float [ %7835, %7838 ], [ %7805, %7794 ], [ %7790, %7787 ], [ %7835, %7834 ]
  %7848 = phi float [ %7824, %7838 ], [ %7804, %7794 ], [ %7789, %7787 ], [ %7824, %7834 ]
  %7849 = phi float [ %7840, %7838 ], [ %7796, %7794 ], [ 1.000000e+00, %7787 ], [ 1.000000e+00, %7834 ]
  %7850 = phi float [ %7836, %7838 ], [ %7796, %7794 ], [ 1.000000e+00, %7787 ], [ %7836, %7834 ]
  %7851 = phi float [ %7825, %7838 ], [ %7796, %7794 ], [ 1.000000e+00, %7787 ], [ %7825, %7834 ]
  %7852 = fmul fast float %7851, %7763
  %7853 = fmul fast float %7850, %7774
  %7854 = fmul fast float %7849, %7785
  %7855 = fadd fast float %7852, %7848
  %7856 = fadd fast float %7853, %7847
  %7857 = fadd fast float %7854, %7846
  %7858 = fmul fast float %7851, %7762
  %7859 = fmul fast float %7850, %7773
  %7860 = fmul fast float %7849, %7784
  br label %7861

; <label>:7861                                    ; preds = %7845, %7656
  %7862 = phi float [ %7860, %7845 ], [ %7662, %7656 ]
  %7863 = phi float [ %7859, %7845 ], [ %7661, %7656 ]
  %7864 = phi float [ %7858, %7845 ], [ %7660, %7656 ]
  %7865 = phi float [ %7857, %7845 ], [ %7659, %7656 ]
  %7866 = phi float [ %7856, %7845 ], [ %7658, %7656 ]
  %7867 = phi float [ %7855, %7845 ], [ %7657, %7656 ]
  %7868 = fmul fast float %7867, %6813
  %7869 = fmul fast float %7866, %6813
  %7870 = fmul fast float %7865, %6813
  %7871 = fmul fast float %7864, %7104
  %7872 = call float @dx.op.dot3.f32(i32 55, float %7864, float %7863, float %7862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7873 = call float @dx.op.dot3.f32(i32 55, float %7868, float %7869, float %7870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7874 = select i1 %250, float %7872, float %7864
  %7875 = select i1 %250, float %7872, float %7863
  %7876 = select i1 %250, float 1.000000e+00, float %7862
  %7877 = select i1 %250, float %7873, float %7868
  %7878 = select i1 %250, float 0.000000e+00, float %7869
  %7879 = select i1 %250, float 0.000000e+00, float %7870
  %7880 = fmul fast float %7874, %7098
  %7881 = fmul fast float %7875, %7099
  %7882 = fmul fast float %7876, %7100
  %7883 = fadd fast float %7880, %7877
  %7884 = fadd fast float %7881, %7878
  %7885 = fadd fast float %7879, %7882
  %7886 = fmul fast float %7874, %7101
  %7887 = fmul fast float %7875, %7102
  %7888 = fmul fast float %7876, %7103
  %7889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7890 = extractvalue %dx.types.CBufRet.i32 %7889, 0
  %7891 = icmp eq i32 %7890, 0
  br i1 %7891, label %8259, label %7892, !dx.controlflow.hints !168

; <label>:7892                                    ; preds = %7861
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 3
  %7896 = fmul fast float %7894, %108
  %7897 = fmul fast float %7895, %109
  %7898 = fmul fast float %7896, 2.000000e+00
  %7899 = fmul fast float %7897, 2.000000e+00
  %7900 = fsub fast float 1.000000e+00, %7898
  %7901 = fsub fast float 1.000000e+00, %7899
  %7902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.CBufRet.f32 %7902, 1
  %7905 = extractvalue %dx.types.CBufRet.f32 %7902, 2
  %7906 = fmul fast float %7900, %7903
  %7907 = fmul fast float %7900, %7904
  %7908 = fmul fast float %7900, %7905
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = extractvalue %dx.types.CBufRet.f32 %7909, 2
  %7913 = fmul fast float %7901, %7910
  %7914 = fmul fast float %7901, %7911
  %7915 = fmul fast float %7901, %7912
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7919 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7920 = fadd fast float %7913, %7917
  %7921 = fadd fast float %7920, %7906
  %7922 = fadd fast float %7914, %7918
  %7923 = fadd fast float %7922, %7907
  %7924 = fadd fast float %7915, %7919
  %7925 = fadd fast float %7924, %7908
  %7926 = fmul fast float %7921, %7097
  %7927 = fmul fast float %7923, %7097
  %7928 = fmul fast float %7925, %7097
  %7929 = fmul fast float %7926, %7926
  %7930 = fmul fast float %7927, %7927
  %7931 = fadd fast float %7929, %7930
  %7932 = fmul fast float %7928, %7928
  %7933 = fadd fast float %7931, %7932
  %7934 = call float @dx.op.unary.f32(i32 24, float %7933)  ; Sqrt(value)
  %7935 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %7936 = fsub fast float %7934, %7935
  %7937 = extractvalue %dx.types.CBufRet.f32 %6824, 2
  %7938 = fmul fast float %7936, %7937
  %7939 = call float @dx.op.unary.f32(i32 7, float %7938)  ; Saturate(value)
  %7940 = fadd fast float %7939, -5.000000e-01
  %7941 = fmul fast float %7940, 2.000000e+00
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 2
  %7944 = call float @dx.op.binary.f32(i32 36, float %7943, float %7941)  ; FMin(a,b)
  %7945 = fsub fast float -0.000000e+00, %7943
  %7946 = fcmp fast ogt float %7944, %7945
  br i1 %7946, label %7947, label %8259, !dx.controlflow.hints !169

; <label>:7947                                    ; preds = %7892
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 3
  %7950 = fcmp fast ogt float %7949, 0.000000e+00
  br i1 %7950, label %7951, label %8026, !dx.controlflow.hints !170

; <label>:7951                                    ; preds = %7947
  %7952 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7953 = extractvalue %dx.types.Dimensions %7952, 0
  %7954 = sitofp i32 %7953 to float
  %7955 = extractvalue %dx.types.Dimensions %7952, 1
  %7956 = sitofp i32 %7955 to float
  %7957 = fmul fast float %7896, %7954
  %7958 = fmul fast float %7897, %7956
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 1
  %7961 = fsub fast float -0.000000e+00, %7960
  %7962 = fptoui float %7961 to i32
  %7963 = fptoui float %7957 to i32
  %7964 = fptoui float %7958 to i32
  %7965 = and i32 %7962, 31
  %7966 = lshr i32 %7963, %7965
  %7967 = lshr i32 %7964, %7965
  %7968 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7962, i32 %7966, i32 %7967, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7969 = extractvalue %dx.types.ResRet.f32 %7968, 0
  %7970 = fcmp fast olt float %7969, -1.000000e+00
  %7971 = fcmp fast ogt float %7969, -1.000000e+00
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 1
  %7974 = select i1 %7971, float %7973, float 1.000000e+00
  %7975 = fadd fast float %7969, 1.000000e+00
  %7976 = fmul fast float %7974, %7975
  %7977 = call float @dx.op.unary.f32(i32 6, float %7976)  ; FAbs(value)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7972, 3
  %7979 = fcmp fast oge float %7977, %7978
  %7980 = select i1 %7979, float 0x4197782600000000, float %7977
  %7981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.f32 %7981, 0
  %7983 = extractvalue %dx.types.CBufRet.f32 %7981, 1
  %7984 = extractvalue %dx.types.CBufRet.f32 %7981, 2
  %7985 = select i1 %7970, float %7982, float %7903
  %7986 = select i1 %7970, float %7983, float %7904
  %7987 = select i1 %7970, float %7984, float %7905
  %7988 = fmul fast float %7985, %7900
  %7989 = fmul fast float %7986, %7900
  %7990 = fmul fast float %7987, %7900
  %7991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7992 = extractvalue %dx.types.CBufRet.f32 %7991, 0
  %7993 = extractvalue %dx.types.CBufRet.f32 %7991, 1
  %7994 = extractvalue %dx.types.CBufRet.f32 %7991, 2
  %7995 = select i1 %7970, float %7992, float %7910
  %7996 = select i1 %7970, float %7993, float %7911
  %7997 = select i1 %7970, float %7994, float %7912
  %7998 = fmul fast float %7995, %7901
  %7999 = fmul fast float %7996, %7901
  %8000 = fmul fast float %7997, %7901
  %8001 = fadd fast float %7998, %7988
  %8002 = fadd fast float %7999, %7989
  %8003 = fadd fast float %8000, %7990
  %8004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.f32 %8004, 0
  %8006 = extractvalue %dx.types.CBufRet.f32 %8004, 1
  %8007 = extractvalue %dx.types.CBufRet.f32 %8004, 2
  %8008 = select i1 %7970, float %8005, float %7917
  %8009 = select i1 %7970, float %8006, float %7918
  %8010 = select i1 %7970, float %8007, float %7919
  %8011 = fadd fast float %8001, %8008
  %8012 = fadd fast float %8002, %8009
  %8013 = fadd fast float %8003, %8010
  %8014 = fmul fast float %8011, %7980
  %8015 = fmul fast float %8012, %7980
  %8016 = fmul fast float %8013, %7980
  %8017 = fmul fast float %8014, %8014
  %8018 = fmul fast float %8015, %8015
  %8019 = fadd fast float %8017, %8018
  %8020 = fmul fast float %8016, %8016
  %8021 = fadd fast float %8019, %8020
  %8022 = call float @dx.op.unary.f32(i32 24, float %8021)  ; Sqrt(value)
  %8023 = fsub fast float %8022, %7935
  %8024 = fmul fast float %8023, %7937
  %8025 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  br label %8026

; <label>:8026                                    ; preds = %7951, %7947
  %8027 = phi float [ %8025, %7951 ], [ 1.000000e+00, %7947 ]
  %8028 = fmul fast float %7944, 5.000000e-01
  %8029 = fadd fast float %8028, 5.000000e-01
  %8030 = call float @dx.op.unary.f32(i32 22, float %8029)  ; Frc(value)
  %8031 = call float @dx.op.unary.f32(i32 27, float %8030)  ; Round_ni(value)
  %8032 = call float @dx.op.unary.f32(i32 22, float %8030)  ; Frc(value)
  %8033 = fmul fast float %8032, 2.000000e+00
  %8034 = fadd fast float %8033, -1.000000e+00
  %8035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %7896, float %7897, float %8031, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8036 = extractvalue %dx.types.ResRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.ResRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.ResRet.f32 %8035, 2
  %8039 = extractvalue %dx.types.ResRet.f32 %8035, 3
  %8040 = fadd fast float %8036, -5.000000e-01
  %8041 = fadd fast float %8038, -5.000000e-01
  %8042 = fmul fast float %8040, 0xBFD5555560000000
  %8043 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8041, float %8042)  ; FMad(a,b,c)
  %8044 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8037, float 0.000000e+00)  ; FMad(a,b,c)
  %8045 = fadd fast float %8044, %8039
  %8046 = fmul fast float %8040, -7.500000e-01
  %8047 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8041, float %8046)  ; FMad(a,b,c)
  %8048 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8037, float 0.000000e+00)  ; FMad(a,b,c)
  %8049 = fadd fast float %8048, %8039
  %8050 = call float @dx.op.binary.f32(i32 35, float %8043, float -1.000000e+00)  ; FMax(a,b)
  %8051 = call float @dx.op.binary.f32(i32 35, float %8045, float -1.000000e+00)  ; FMax(a,b)
  %8052 = call float @dx.op.binary.f32(i32 35, float %8047, float -1.000000e+00)  ; FMax(a,b)
  %8053 = call float @dx.op.binary.f32(i32 35, float %8049, float -1.000000e+00)  ; FMax(a,b)
  %8054 = call float @dx.op.binary.f32(i32 36, float %8050, float 1.000000e+00)  ; FMin(a,b)
  %8055 = call float @dx.op.binary.f32(i32 36, float %8051, float 1.000000e+00)  ; FMin(a,b)
  %8056 = call float @dx.op.binary.f32(i32 36, float %8052, float 1.000000e+00)  ; FMin(a,b)
  %8057 = call float @dx.op.binary.f32(i32 36, float %8053, float 1.000000e+00)  ; FMin(a,b)
  %8058 = fcmp fast olt float %8054, 0x3FEFFF8020000000
  br i1 %8058, label %8059, label %8174, !dx.controlflow.hints !171

; <label>:8059                                    ; preds = %8026
  %8060 = extractvalue %dx.types.CBufRet.f32 %7942, 3
  %8061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8062 = extractvalue %dx.types.CBufRet.f32 %8061, 0
  %8063 = extractvalue %dx.types.CBufRet.f32 %8061, 1
  %8064 = extractvalue %dx.types.CBufRet.f32 %8061, 2
  %8065 = extractvalue %dx.types.CBufRet.f32 %8061, 3
  %8066 = fsub fast float %8062, %8054
  %8067 = fsub fast float %8063, %8055
  %8068 = fsub fast float %8064, %8056
  %8069 = fsub fast float %8065, %8057
  %8070 = fmul fast float %8066, %8060
  %8071 = fmul fast float %8067, %8060
  %8072 = fmul fast float %8068, %8060
  %8073 = fmul fast float %8069, %8060
  %8074 = fadd fast float %8070, %8054
  %8075 = fadd fast float %8071, %8055
  %8076 = fsub fast float -0.000000e+00, %8075
  %8077 = fadd fast float %8072, %8056
  %8078 = fadd fast float %8073, %8057
  %8079 = fmul fast float %8074, %8074
  %8080 = fsub fast float %8075, %8079
  %8081 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8080)  ; FMax(a,b)
  %8082 = fdiv fast float 1.000000e+00, %8081
  %8083 = fmul fast float %8075, %8074
  %8084 = fsub fast float %8077, %8083
  %8085 = fsub fast float %8034, %8074
  %8086 = fmul fast float %8034, %8034
  %8087 = fsub fast float %8086, %8075
  %8088 = fmul fast float %8085, %8082
  %8089 = fmul fast float %8088, %8084
  %8090 = fsub fast float %8087, %8089
  %8091 = fmul fast float %8075, %8075
  %8092 = fsub fast float %8078, %8091
  %8093 = fmul fast float %8084, %8084
  %8094 = fmul fast float %8093, %8082
  %8095 = fsub fast float %8092, %8094
  %8096 = fdiv fast float %8090, %8095
  %8097 = fmul fast float %8084, %8096
  %8098 = fsub fast float %8085, %8097
  %8099 = fmul fast float %8098, %8082
  %8100 = fmul fast float %8099, %8074
  %8101 = fsub fast float 1.000000e+00, %8100
  %8102 = fmul fast float %8075, %8096
  %8103 = fsub fast float %8101, %8102
  %8104 = fmul fast float %8099, %8099
  %8105 = fmul fast float %8096, 4.000000e+00
  %8106 = fmul fast float %8105, %8103
  %8107 = fsub fast float %8104, %8106
  %8108 = call float @dx.op.unary.f32(i32 24, float %8107)  ; Sqrt(value)
  %8109 = fcmp fast oge float %8099, 0.000000e+00
  %8110 = fsub fast float -0.000000e+00, %8108
  %8111 = select i1 %8109, float %8110, float %8108
  %8112 = fsub fast float %8111, %8099
  %8113 = fdiv fast float %8112, %8096
  %8114 = fdiv fast float %8103, %8112
  %8115 = fmul fast float %8113, 5.000000e-01
  %8116 = fmul fast float %8114, 2.000000e+00
  %8117 = select i1 %8109, float %8115, float %8116
  %8118 = select i1 %8109, float %8116, float %8115
  %8119 = call float @dx.op.binary.f32(i32 35, float %8117, float %8118)  ; FMax(a,b)
  %8120 = call float @dx.op.binary.f32(i32 36, float %8117, float %8118)  ; FMin(a,b)
  %8121 = fcmp fast ogt float %8034, %8120
  br i1 %8121, label %8122, label %8132

; <label>:8122                                    ; preds = %8059
  %8123 = fsub fast float %8034, %8120
  %8124 = fsub fast float %8119, %8120
  %8125 = fmul fast float %8123, %8124
  %8126 = fmul fast float %8119, %8034
  %8127 = fadd fast float %8119, %8034
  %8128 = fmul fast float %8127, %8074
  %8129 = fadd fast float %8126, %8075
  %8130 = fsub fast float %8129, %8128
  %8131 = fdiv fast float %8130, %8125
  br label %8132

; <label>:8132                                    ; preds = %8122, %8059
  %8133 = phi float [ %8131, %8122 ], [ 0.000000e+00, %8059 ]
  %8134 = fcmp fast ogt float %8034, %8119
  %8135 = fsub fast float %8034, %8119
  br i1 %8134, label %8136, label %8146

; <label>:8136                                    ; preds = %8132
  %8137 = fsub fast float %8119, %8120
  %8138 = fmul fast float %8137, %8135
  %8139 = fmul fast float %8120, %8034
  %8140 = fadd fast float %8120, %8034
  %8141 = fmul fast float %8140, %8074
  %8142 = fsub fast float %8076, %8139
  %8143 = fadd fast float %8142, %8141
  %8144 = fdiv fast float %8143, %8138
  %8145 = fadd fast float %8144, %8133
  br label %8146

; <label>:8146                                    ; preds = %8136, %8132
  %8147 = phi float [ %8145, %8136 ], [ %8133, %8132 ]
  %8148 = fsub fast float %8034, %8120
  %8149 = fmul fast float %8148, %8135
  %8150 = fmul fast float %8120, %8119
  %8151 = fadd fast float %8120, %8119
  %8152 = fmul fast float %8151, %8074
  %8153 = fadd fast float %8150, %8075
  %8154 = fsub fast float %8153, %8152
  %8155 = fdiv fast float %8154, %8149
  %8156 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  %8157 = fcmp fast oeq float %6825, 0.000000e+00
  %8158 = extractvalue %dx.types.CBufRet.f32 %7942, 0
  %8159 = fcmp fast oeq float %8158, 0.000000e+00
  %8160 = or i1 %8157, %8159
  %8161 = fmul fast float %8158, 2.000000e+00
  %8162 = fadd fast float %7943, %7944
  %8163 = fdiv fast float %8162, %8161
  %8164 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8165 = fmul fast float %8164, 2.000000e+00
  %8166 = fsub fast float 3.000000e+00, %8165
  %8167 = fmul fast float %8164, %8164
  %8168 = fmul fast float %8167, %8166
  %8169 = select i1 %8160, float 1.000000e+00, float %8168
  %8170 = fmul fast float %8155, %6825
  %8171 = fadd fast float %8156, %8170
  %8172 = call float @dx.op.unary.f32(i32 7, float %8171)  ; Saturate(value)
  %8173 = fmul fast float %8169, %8172
  br label %8174

; <label>:8174                                    ; preds = %8146, %8026
  %8175 = phi float [ %8173, %8146 ], [ 0.000000e+00, %8026 ]
  %8176 = fsub fast float 1.000000e+00, %8175
  %8177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %7896, float %7897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8178 = extractvalue %dx.types.ResRet.f32 %8177, 0
  %8179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.i32 %8179, 2
  %8181 = icmp eq i32 %8180, 0
  br i1 %8181, label %8187, label %8182

; <label>:8182                                    ; preds = %8174
  %8183 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8184 = fadd fast float %8178, -1.000000e+00
  %8185 = fmul fast float %8183, %8184
  %8186 = fadd fast float %8185, 1.000000e+00
  br label %8187

; <label>:8187                                    ; preds = %8182, %8174
  %8188 = phi float [ %8186, %8182 ], [ %8176, %8174 ]
  br i1 %7950, label %8189, label %8207

; <label>:8189                                    ; preds = %8187
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 1
  %8192 = fsub fast float %8027, %8191
  %8193 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8194 = fsub fast float %8027, %7949
  %8195 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8196 = fsub fast float %8193, %8195
  %8197 = fsub fast float %8029, %8195
  %8198 = fdiv fast float %8197, %8196
  %8199 = call float @dx.op.unary.f32(i32 7, float %8198)  ; Saturate(value)
  %8200 = fmul fast float %8199, 2.000000e+00
  %8201 = fsub fast float 3.000000e+00, %8200
  %8202 = fsub fast float %8178, %8188
  %8203 = fmul fast float %8199, %8199
  %8204 = fmul fast float %8203, %8202
  %8205 = fmul fast float %8204, %8201
  %8206 = fadd fast float %8205, %8188
  br label %8207

; <label>:8207                                    ; preds = %8189, %8187
  %8208 = phi float [ %8206, %8189 ], [ %8188, %8187 ]
  %8209 = call float @dx.op.binary.f32(i32 35, float %8178, float %8208)  ; FMax(a,b)
  %8210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8211 = extractvalue %dx.types.CBufRet.i32 %8210, 2
  %8212 = and i32 %8211, 1
  %8213 = icmp eq i32 %8212, 0
  %8214 = fcmp fast une float %8209, 1.000000e+00
  %8215 = and i1 %8214, %8213
  br i1 %8215, label %8216, label %8235

; <label>:8216                                    ; preds = %8207
  %8217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %7896, float %7897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8218 = extractvalue %dx.types.ResRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.ResRet.f32 %8217, 1
  %8220 = extractvalue %dx.types.ResRet.f32 %8217, 2
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8223 = fmul fast float %8222, %8218
  %8224 = fmul fast float %8222, %8219
  %8225 = fmul fast float %8222, %8220
  %8226 = fcmp fast ogt float %8178, 0x3FEFFF2E40000000
  %8227 = fsub fast float 1.000000e+00, %8209
  %8228 = fsub fast float 1.000000e+00, %8178
  %8229 = fdiv fast float %8227, %8228
  %8230 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8231 = select i1 %8226, float 0.000000e+00, float %8230
  %8232 = fmul fast float %8223, %8231
  %8233 = fmul fast float %8224, %8231
  %8234 = fmul fast float %8225, %8231
  br label %8235

; <label>:8235                                    ; preds = %8216, %8207
  %8236 = phi float [ 0.000000e+00, %8207 ], [ %8232, %8216 ]
  %8237 = phi float [ 0.000000e+00, %8207 ], [ %8233, %8216 ]
  %8238 = phi float [ 0.000000e+00, %8207 ], [ %8234, %8216 ]
  %8239 = fmul fast float %8236, %6813
  %8240 = fmul fast float %8237, %6813
  %8241 = fmul fast float %8238, %6813
  %8242 = fmul fast float %8209, %7871
  %8243 = call float @dx.op.dot3.f32(i32 55, float %8209, float %8209, float %8209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8244 = call float @dx.op.dot3.f32(i32 55, float %8239, float %8240, float %8241, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8245 = select i1 %250, float %8243, float %8209
  %8246 = select i1 %250, float 1.000000e+00, float %8209
  %8247 = select i1 %250, float %8244, float %8239
  %8248 = select i1 %250, float 0.000000e+00, float %8240
  %8249 = select i1 %250, float 0.000000e+00, float %8241
  %8250 = fmul fast float %8245, %7883
  %8251 = fmul fast float %8245, %7884
  %8252 = fmul fast float %8246, %7885
  %8253 = fadd fast float %8250, %8247
  %8254 = fadd fast float %8251, %8248
  %8255 = fadd fast float %8249, %8252
  %8256 = fmul fast float %8245, %7886
  %8257 = fmul fast float %8245, %7887
  %8258 = fmul fast float %8246, %7888
  br label %8259

; <label>:8259                                    ; preds = %8235, %7892, %7861, %7093
  %8260 = phi float [ %7098, %7093 ], [ %7883, %7861 ], [ %8253, %8235 ], [ %7883, %7892 ]
  %8261 = phi float [ %7099, %7093 ], [ %7884, %7861 ], [ %8254, %8235 ], [ %7884, %7892 ]
  %8262 = phi float [ %7100, %7093 ], [ %7885, %7861 ], [ %8255, %8235 ], [ %7885, %7892 ]
  %8263 = phi float [ %7101, %7093 ], [ %7886, %7861 ], [ %8256, %8235 ], [ %7886, %7892 ]
  %8264 = phi float [ %7102, %7093 ], [ %7887, %7861 ], [ %8257, %8235 ], [ %7887, %7892 ]
  %8265 = phi float [ %7103, %7093 ], [ %7888, %7861 ], [ %8258, %8235 ], [ %7888, %7892 ]
  %8266 = phi float [ %7104, %7093 ], [ %7871, %7861 ], [ %8242, %8235 ], [ %7871, %7892 ]
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8267, 3
  %8270 = fmul fast float %8268, %108
  %8271 = fmul fast float %8269, %109
  %8272 = call float @dx.op.unary.f32(i32 7, float %8270)  ; Saturate(value)
  %8273 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8274 = select i1 %6835, i32 2, i32 0
  %8275 = or i32 %8274, 1
  %8276 = uitofp i32 %8275 to float
  %8277 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8272, float %8273, float %8276, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8278 = extractvalue %dx.types.ResRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.ResRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.ResRet.f32 %8277, 2
  %8281 = extractvalue %dx.types.ResRet.f32 %8277, 3
  %8282 = add nuw nsw i32 %8274, 2
  %8283 = uitofp i32 %8282 to float
  %8284 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8272, float %8273, float %8283, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8285 = extractvalue %dx.types.ResRet.f32 %8284, 0
  %8286 = extractvalue %dx.types.ResRet.f32 %8284, 1
  %8287 = extractvalue %dx.types.ResRet.f32 %8284, 2
  %8288 = extractvalue %dx.types.ResRet.f32 %8284, 3
  %8289 = call float @dx.op.binary.f32(i32 35, float %8279, float %8280)  ; FMax(a,b)
  %8290 = call float @dx.op.binary.f32(i32 35, float %8278, float %8289)  ; FMax(a,b)
  %8291 = call float @dx.op.binary.f32(i32 35, float %8290, float %8281)  ; FMax(a,b)
  %8292 = call float @dx.op.binary.f32(i32 36, float %8286, float %8287)  ; FMin(a,b)
  %8293 = call float @dx.op.binary.f32(i32 36, float %8285, float %8292)  ; FMin(a,b)
  %8294 = call float @dx.op.binary.f32(i32 36, float %8293, float %8288)  ; FMin(a,b)
  %8295 = fmul fast float %8291, 2.550000e+02
  %8296 = fadd fast float %8295, 0x3F70101020000000
  %8297 = fptoui float %8296 to i32
  %8298 = fmul fast float %8294, 2.550000e+02
  %8299 = fadd fast float %8298, 0x3F70101020000000
  %8300 = fptoui float %8299 to i32
  %8301 = icmp ult i32 %8297, %8300
  br i1 %8301, label %8302, label %8471

; <label>:8302                                    ; preds = %8259
  %8303 = fcmp fast ogt float %98, 9.843750e-01
  %8304 = fadd fast float %7097, -4.000000e+00
  %8305 = select i1 %8303, float -4.000000e+00, float %8304
  %8306 = call float @dx.op.binary.f32(i32 35, float %8305, float 0.000000e+00)  ; FMax(a,b)
  %8307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.f32 %8307, 0
  %8309 = fadd fast float %8308, %8306
  %8310 = extractvalue %dx.types.CBufRet.f32 %8307, 2
  %8311 = fmul fast float %8309, %8310
  %8312 = call float @dx.op.unary.f32(i32 23, float %8311)  ; Log(value)
  %8313 = extractvalue %dx.types.CBufRet.f32 %8307, 3
  %8314 = fmul fast float %8313, %8312
  %8315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.f32 %8315, 2
  %8317 = fmul fast float %8314, %8316
  %8318 = call float @dx.op.unary.f32(i32 7, float %8317)  ; Saturate(value)
  %8319 = uitofp i32 %8297 to float
  %8320 = uitofp i32 %8300 to float
  %8321 = fadd fast float %8319, 5.000000e-01
  %8322 = fadd fast float %8320, 5.000000e-01
  %8323 = fmul fast float %8316, %8321
  %8324 = fmul fast float %8316, %8322
  %8325 = fadd fast float %8323, 0x3F0FFB4800000000
  %8326 = fadd fast float %8324, 0xBF0FFB4800000000
  %8327 = call float @dx.op.binary.f32(i32 35, float %8318, float %8325)  ; FMax(a,b)
  %8328 = call float @dx.op.binary.f32(i32 36, float %8327, float %8326)  ; FMin(a,b)
  %8329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8330 = extractvalue %dx.types.CBufRet.f32 %8329, 1
  %8331 = extractvalue %dx.types.CBufRet.f32 %8329, 2
  %8332 = extractvalue %dx.types.CBufRet.f32 %8329, 0
  %8333 = select i1 %6835, float %8332, float 0.000000e+00
  %8334 = fmul fast float %8330, %8328
  %8335 = fadd fast float %8333, %8334
  %8336 = fadd fast float %8333, %8331
  %8337 = fsub fast float %8330, %8331
  %8338 = fadd fast float %8337, %8333
  %8339 = call float @dx.op.binary.f32(i32 35, float %8335, float %8336)  ; FMax(a,b)
  %8340 = call float @dx.op.binary.f32(i32 36, float %8339, float %8338)  ; FMin(a,b)
  %8341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %8272, float %8273, float %8340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8342 = extractvalue %dx.types.ResRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.ResRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.ResRet.f32 %8341, 2
  %8345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8346 = extractvalue %dx.types.CBufRet.i32 %8345, 0
  %8347 = extractvalue %dx.types.CBufRet.i32 %8345, 1
  %8348 = uitofp i32 %8346 to float
  %8349 = uitofp i32 %8347 to float
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 0
  %8352 = extractvalue %dx.types.CBufRet.f32 %8350, 1
  %8353 = fmul fast float %8348, %8272
  %8354 = fmul fast float %8349, %8273
  %8355 = fadd fast float %8353, -5.000000e-01
  %8356 = fadd fast float %8354, -5.000000e-01
  %8357 = call float @dx.op.unary.f32(i32 22, float %8355)  ; Frc(value)
  %8358 = call float @dx.op.unary.f32(i32 22, float %8356)  ; Frc(value)
  %8359 = fmul fast float %8357, %8357
  %8360 = fmul fast float %8359, %8357
  %8361 = fsub fast float 3.000000e+00, %8357
  %8362 = fmul fast float %8359, %8361
  %8363 = fmul fast float %8357, 3.000000e+00
  %8364 = fmul fast float %8360, 3.000000e+00
  %8365 = fmul fast float %8359, 6.000000e+00
  %8366 = fsub fast float %8364, %8365
  %8367 = fadd fast float %8366, 4.000000e+00
  %8368 = fmul fast float %8367, 0x3FC5555560000000
  %8369 = fmul fast float %8360, -3.000000e+00
  %8370 = fadd fast float %8359, %8357
  %8371 = fmul fast float %8370, 3.000000e+00
  %8372 = fadd fast float %8369, 1.000000e+00
  %8373 = fadd fast float %8372, %8371
  %8374 = fmul fast float %8360, 0x3FC5555560000000
  %8375 = fmul fast float %8358, %8358
  %8376 = fmul fast float %8375, %8358
  %8377 = fsub fast float 3.000000e+00, %8358
  %8378 = fmul fast float %8375, %8377
  %8379 = fmul fast float %8358, 3.000000e+00
  %8380 = fmul fast float %8376, 3.000000e+00
  %8381 = fmul fast float %8375, 6.000000e+00
  %8382 = fsub fast float %8380, %8381
  %8383 = fadd fast float %8382, 4.000000e+00
  %8384 = fmul fast float %8383, 0x3FC5555560000000
  %8385 = fmul fast float %8376, -3.000000e+00
  %8386 = fadd fast float %8375, %8358
  %8387 = fmul fast float %8386, 3.000000e+00
  %8388 = fadd fast float %8385, 1.000000e+00
  %8389 = fadd fast float %8388, %8387
  %8390 = fmul fast float %8376, 0x3FC5555560000000
  %8391 = fadd fast float %8357, 1.000000e+00
  %8392 = fsub fast float 1.000000e+00, %8363
  %8393 = fadd fast float %8392, %8362
  %8394 = fadd fast float %8393, %8367
  %8395 = fmul fast float %8394, 0x3FC5555560000000
  %8396 = fdiv fast float %8368, %8395
  %8397 = fsub fast float %8391, %8396
  %8398 = fsub fast float 1.000000e+00, %8357
  %8399 = fadd fast float %8373, %8360
  %8400 = fmul fast float %8399, 0x3FC5555560000000
  %8401 = fdiv fast float %8374, %8400
  %8402 = fadd fast float %8398, %8401
  %8403 = fadd fast float %8358, 1.000000e+00
  %8404 = fsub fast float 1.000000e+00, %8379
  %8405 = fadd fast float %8404, %8378
  %8406 = fadd fast float %8405, %8383
  %8407 = fmul fast float %8406, 0x3FC5555560000000
  %8408 = fdiv fast float %8384, %8407
  %8409 = fsub fast float %8403, %8408
  %8410 = fsub fast float 1.000000e+00, %8358
  %8411 = fadd fast float %8389, %8376
  %8412 = fmul fast float %8411, 0x3FC5555560000000
  %8413 = fdiv fast float %8390, %8412
  %8414 = fadd fast float %8413, %8410
  %8415 = fmul fast float %8397, %8351
  %8416 = fsub fast float %8272, %8415
  %8417 = fmul fast float %8402, %8351
  %8418 = fadd fast float %8417, %8272
  %8419 = fmul fast float %8414, %8352
  %8420 = fadd fast float %8419, %8273
  %8421 = fmul fast float %8409, %8352
  %8422 = fsub fast float %8273, %8421
  %8423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8416, float %8422, float %8340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8424 = extractvalue %dx.types.ResRet.f32 %8423, 0
  %8425 = extractvalue %dx.types.ResRet.f32 %8423, 1
  %8426 = extractvalue %dx.types.ResRet.f32 %8423, 2
  %8427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8418, float %8422, float %8340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8428 = extractvalue %dx.types.ResRet.f32 %8427, 0
  %8429 = extractvalue %dx.types.ResRet.f32 %8427, 1
  %8430 = extractvalue %dx.types.ResRet.f32 %8427, 2
  %8431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8416, float %8420, float %8340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8432 = extractvalue %dx.types.ResRet.f32 %8431, 0
  %8433 = extractvalue %dx.types.ResRet.f32 %8431, 1
  %8434 = extractvalue %dx.types.ResRet.f32 %8431, 2
  %8435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8418, float %8420, float %8340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8436 = extractvalue %dx.types.ResRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.ResRet.f32 %8435, 1
  %8438 = extractvalue %dx.types.ResRet.f32 %8435, 2
  %8439 = fsub fast float %8432, %8424
  %8440 = fsub fast float %8433, %8425
  %8441 = fsub fast float %8434, %8426
  %8442 = fmul fast float %8439, %8412
  %8443 = fmul fast float %8440, %8412
  %8444 = fmul fast float %8441, %8412
  %8445 = fadd fast float %8442, %8424
  %8446 = fadd fast float %8443, %8425
  %8447 = fadd fast float %8444, %8426
  %8448 = fsub fast float %8436, %8428
  %8449 = fsub fast float %8437, %8429
  %8450 = fsub fast float %8438, %8430
  %8451 = fmul fast float %8448, %8412
  %8452 = fmul fast float %8449, %8412
  %8453 = fmul fast float %8450, %8412
  %8454 = fsub fast float %8428, %8445
  %8455 = fadd fast float %8454, %8451
  %8456 = fsub fast float %8429, %8446
  %8457 = fadd fast float %8456, %8452
  %8458 = fsub fast float %8430, %8447
  %8459 = fadd fast float %8458, %8453
  %8460 = fmul fast float %8455, %8400
  %8461 = fmul fast float %8457, %8400
  %8462 = fmul fast float %8459, %8400
  %8463 = fadd fast float %8460, %8445
  %8464 = fadd fast float %8461, %8446
  %8465 = fadd fast float %8462, %8447
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 1
  %8468 = fmul fast float %8463, %8467
  %8469 = fmul fast float %8464, %8467
  %8470 = fmul fast float %8465, %8467
  br label %8471

; <label>:8471                                    ; preds = %8302, %8259
  %8472 = phi float [ %8342, %8302 ], [ 1.000000e+00, %8259 ]
  %8473 = phi float [ %8343, %8302 ], [ 1.000000e+00, %8259 ]
  %8474 = phi float [ %8344, %8302 ], [ 1.000000e+00, %8259 ]
  %8475 = phi float [ %8468, %8302 ], [ 0.000000e+00, %8259 ]
  %8476 = phi float [ %8469, %8302 ], [ 0.000000e+00, %8259 ]
  %8477 = phi float [ %8470, %8302 ], [ 0.000000e+00, %8259 ]
  %8478 = fmul fast float %8475, %6813
  %8479 = fmul fast float %8476, %6813
  %8480 = fmul fast float %8477, %6813
  %8481 = fmul fast float %8472, %8266
  %8482 = call float @dx.op.dot3.f32(i32 55, float %8472, float %8473, float %8474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8483 = call float @dx.op.dot3.f32(i32 55, float %8478, float %8479, float %8480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8484 = select i1 %250, float %8482, float %8472
  %8485 = select i1 %250, float %8482, float %8473
  %8486 = select i1 %250, float 1.000000e+00, float %8474
  %8487 = select i1 %250, float %8483, float %8478
  %8488 = select i1 %250, float 0.000000e+00, float %8479
  %8489 = select i1 %250, float 0.000000e+00, float %8480
  %8490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.i32 %8490, 3
  %8492 = and i32 %8491, 3
  %8493 = icmp ne i32 %8492, 0
  %8494 = and i32 %8491, 4
  %8495 = icmp ne i32 %8494, 0
  %8496 = and i1 %8493, %8495
  %8497 = and i1 %250, %8496
  br i1 %8497, label %8498, label %8504

; <label>:8498                                    ; preds = %8471
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8501 = fadd fast float %8481, -1.000000e+00
  %8502 = fmul fast float %8500, %8501
  %8503 = fadd fast float %8502, 1.000000e+00
  br label %8504

; <label>:8504                                    ; preds = %8498, %8471
  %8505 = phi float [ %8503, %8498 ], [ %8481, %8471 ]
  %8506 = fadd fast float %8263, %8260
  %8507 = fmul fast float %8484, %8506
  %8508 = fadd fast float %8507, %8487
  %8509 = fadd fast float %8264, %8261
  %8510 = fmul fast float %8485, %8509
  %8511 = fadd fast float %8510, %8488
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 0
  br i1 %250, label %8514, label %8538

; <label>:8514                                    ; preds = %8504
  %8515 = fadd fast float %8508, %8511
  %8516 = fmul fast float %8513, %8515
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 3
  %8519 = extractvalue %dx.types.CBufRet.f32 %6817, 1
  %8520 = fsub fast float %6822, %6816
  %8521 = fadd fast float %8520, %6823
  %8522 = fsub fast float %8521, %8519
  %8523 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %8524 = fmul fast float %8522, %8523
  %8525 = call float @dx.op.unary.f32(i32 7, float %8524)  ; Saturate(value)
  %8526 = fsub fast float %8525, %8518
  %8527 = fmul fast float %8526, %8505
  %8528 = fadd fast float %8527, %8518
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 0
  %8531 = fsub fast float %8528, %8530
  %8532 = fmul fast float %8531, 1.000000e+01
  %8533 = call float @dx.op.unary.f32(i32 7, float %8532)  ; Saturate(value)
  %8534 = fsub fast float %1241, %6813
  %8535 = fmul fast float %8533, %8534
  %8536 = fadd fast float %8535, %6813
  %8537 = fmul fast float %8536, %8528
  br label %8562

; <label>:8538                                    ; preds = %8504
  %8539 = fadd fast float %8265, %8262
  %8540 = fmul fast float %8486, %8539
  %8541 = fadd fast float %8540, %8489
  %8542 = fmul fast float %8513, %8508
  %8543 = fmul fast float %8513, %8511
  %8544 = fmul fast float %8513, %8541
  %8545 = call float @dx.op.binary.f32(i32 35, float %8543, float %8544)  ; FMax(a,b)
  %8546 = call float @dx.op.binary.f32(i32 35, float %8542, float %8545)  ; FMax(a,b)
  %8547 = call float @dx.op.binary.f32(i32 35, float %8546, float %6813)  ; FMax(a,b)
  %8548 = fcmp fast ugt float %8547, 0x3F10000000000000
  br i1 %8548, label %8550, label %8549

; <label>:8549                                    ; preds = %8538
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8550

; <label>:8550                                    ; preds = %8549, %8538
  %8551 = add i32 %52, 356
  %8552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %8551, i32 undef)  ; BufferLoad(srv,index,wot)
  %8553 = extractvalue %dx.types.ResRet.i32 %8552, 0
  %8554 = and i32 %8553, 32
  %8555 = icmp eq i32 %8554, 0
  br i1 %8555, label %8562, label %8556

; <label>:8556                                    ; preds = %8550
  %8557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8558 = extractvalue %dx.types.CBufRet.f32 %8557, 0
  %8559 = fmul fast float %8558, 0x3FE99999A0000000
  %8560 = fadd fast float %8558, %8542
  %8561 = fadd fast float %8559, %8544
  br label %8562

; <label>:8562                                    ; preds = %8556, %8550, %8514
  %8563 = phi float [ %8516, %8514 ], [ %8560, %8556 ], [ %8542, %8550 ]
  %8564 = phi float [ %8537, %8514 ], [ %8543, %8556 ], [ %8543, %8550 ]
  %8565 = phi float [ %8536, %8514 ], [ %8561, %8556 ], [ %8544, %8550 ]
  %8566 = phi float [ %8536, %8514 ], [ %6813, %8556 ], [ %6813, %8550 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8567 = call float @dx.op.binary.f32(i32 36, float %8563, float 3.225500e+04)  ; FMin(a,b)
  %8568 = call float @dx.op.binary.f32(i32 36, float %8564, float 3.225500e+04)  ; FMin(a,b)
  %8569 = call float @dx.op.binary.f32(i32 36, float %8565, float 3.225500e+04)  ; FMin(a,b)
  %8570 = call float @dx.op.binary.f32(i32 36, float %8566, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8567)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8568)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8569)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8570)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!54 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!57 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!58 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!59 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!60 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!61 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!62 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!63 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !92}
!65 = !{!66, !90, null}
!66 = !{!67, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !88, !89}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 15}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !69}
!71 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !72}
!72 = !{i32 3, i32 3}
!73 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!76 = !{i32 5, !"SH_RED", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 5, i8 0, !69}
!77 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!78 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 7, i8 0, !69}
!79 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 8, i8 0, !74}
!80 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 9, i8 0, !69}
!81 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 10, i8 0, !72}
!82 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 11, i8 0, !69}
!83 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 12, i8 0, !69}
!84 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !68, i8 1, i32 1, i8 2, i32 13, i8 0, !85}
!85 = !{i32 3, i32 2}
!86 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 14, i8 0, !87}
!87 = !{i32 3, i32 1}
!88 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !68, i8 1, i32 1, i8 1, i32 13, i8 2, !87}
!89 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!90 = !{!91}
!91 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
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
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

