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
; shader hash: 17b835093c626ebd5382da5b68045348
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
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
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = icmp ne i32 %51, 0
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = alloca [12 x float], align 4
  %103 = alloca [12 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fmul fast float %109, %98
  %111 = fmul fast float %109, %99
  %112 = select i1 %52, float 1.000000e+00, float -1.000000e+00
  %113 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = bitcast float %113 to i32
  %115 = ashr i32 %114, 1
  %116 = sub nsw i32 1597250115, %115
  %117 = bitcast i32 %116 to float
  %118 = fmul fast float %89, %112
  %119 = fmul fast float %118, %117
  %120 = fmul fast float %90, %112
  %121 = fmul fast float %120, %117
  %122 = fmul fast float %91, %112
  %123 = fmul fast float %122, %117
  %124 = fmul fast float %90, %87
  %125 = fmul fast float %91, %86
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %91, %85
  %128 = fmul fast float %89, %87
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %89, %86
  %131 = fmul fast float %90, %85
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %126, %88
  %134 = fmul fast float %129, %88
  %135 = fmul fast float %132, %88
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = fcmp fast une float %137, 0.000000e+00
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %110, 2.000000e+00
  %143 = fmul fast float %142, %140
  %144 = fmul fast float %111, 2.000000e+00
  %145 = fmul fast float %144, %141
  %146 = fsub fast float 1.000000e+00, %143
  %147 = fsub fast float 1.000000e+00, %145
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = select i1 %138, float %149, float %153
  %157 = select i1 %138, float %150, float %154
  %158 = select i1 %138, float %151, float %155
  %159 = fmul fast float %156, %146
  %160 = fmul fast float %157, %146
  %161 = fmul fast float %158, %146
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = select i1 %138, float %163, float %167
  %171 = select i1 %138, float %164, float %168
  %172 = select i1 %138, float %165, float %169
  %173 = fmul fast float %170, %147
  %174 = fmul fast float %171, %147
  %175 = fmul fast float %172, %147
  %176 = fadd fast float %173, %159
  %177 = fadd fast float %174, %160
  %178 = fadd fast float %175, %161
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = select i1 %138, float %180, float %184
  %188 = select i1 %138, float %181, float %185
  %189 = select i1 %138, float %182, float %186
  %190 = fadd fast float %176, %187
  %191 = fadd fast float %177, %188
  %192 = fadd fast float %178, %189
  %193 = fmul fast float %190, %101
  %194 = fmul fast float %191, %101
  %195 = fmul fast float %192, %101
  %196 = shl i32 %54, 5
  %197 = add i32 %196, 4194304
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = extractvalue %dx.types.ResRet.i32 %198, 2
  %202 = extractvalue %dx.types.ResRet.i32 %198, 3
  %203 = add i32 %196, 4194320
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = extractvalue %dx.types.ResRet.i32 %204, 1
  %207 = bitcast i32 %205 to float
  %208 = bitcast i32 %206 to float
  %209 = fmul fast float %110, 5.000000e-01
  %210 = fmul fast float %111, 5.000000e-01
  %211 = fptosi float %209 to i32
  %212 = fptosi float %210 to i32
  %213 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = lshr i32 %214, 18
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F4C00EBA0000000
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fadd fast float %218, -1.000000e+00
  %220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %221 = extractvalue %dx.types.Dimensions %220, 0
  %222 = sitofp i32 %221 to float
  %223 = extractvalue %dx.types.Dimensions %220, 1
  %224 = sitofp i32 %223 to float
  %225 = fcmp fast oge float %209, %222
  %226 = fcmp fast oge float %210, %224
  %227 = or i1 %225, %226
  %228 = select i1 %227, float 0x4197782600000000, float %219
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %232 = fmul fast float %230, %110
  %233 = fmul fast float %231, %111
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 114688
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %237, float %232, float 0.000000e+00
  %239 = select i1 %237, float %233, float 0.000000e+00
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %46, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fmul fast float %241, 2.550000e+02
  %243 = fptoui float %242 to i32
  %244 = select i1 %237, i32 %243, i32 0
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 3
  %247 = and i32 %246, 3
  %248 = icmp ne i32 %247, 0
  %249 = and i32 %246, 4
  %250 = icmp ne i32 %249, 0
  %251 = and i1 %248, %250
  br i1 %251, label %252, label %261

; <label>:252                                     ; preds = %0
  %253 = fmul fast float %141, %111
  %254 = fmul fast float %140, %110
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %254, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fsub fast float 1.000000e+00, %256
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = fcmp fast olt float %257, %259
  br label %264

; <label>:261                                     ; preds = %0
  %262 = icmp eq i32 %249, 0
  %263 = and i1 %248, %262
  br label %264

; <label>:264                                     ; preds = %261, %252
  %265 = phi i1 [ %260, %252 ], [ %263, %261 ]
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %268 = fmul fast float %267, 0x3FE3C6EF40000000
  %269 = frem fast float %110, 2.560000e+02
  %270 = frem fast float %111, 2.560000e+02
  %271 = fptoui float %269 to i32
  %272 = fptoui float %270 to i32
  %273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %271, i32 %272, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = fadd fast float %274, %268
  %276 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %277 = add i32 %53, 156
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %53, 216
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %53, 36
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %53, 288
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = mul i32 %55, 100
  %320 = add i32 %319, 28
  %321 = add i32 %319, 40
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = add i32 %53, 172
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = shl i32 %326, 4
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %326, 7
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %326, 22
  %334 = shl nuw nsw i32 %333, 5
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %53, 232
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %338, 8
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %338, 16
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = add i32 %53, 52
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %53, 304
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = shl i32 %365, 4
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %365, 7
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %365, 22
  %373 = shl nuw nsw i32 %372, 5
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = and i32 %323, 1
  %376 = icmp ne i32 %375, 0
  %377 = select i1 %376, float %368, float %329
  %378 = select i1 %376, float %371, float %332
  %379 = select i1 %376, float %374, float %335
  %380 = add i32 %319, 44
  %381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = fmul fast float %382, %377
  %384 = fmul fast float %382, %378
  %385 = fmul fast float %382, %379
  %386 = add i32 %319, 48
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = shl i32 %388, 4
  %390 = and i32 %389, 32752
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %388, 7
  %393 = and i32 %392, 32752
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %388, 22
  %396 = shl nuw nsw i32 %395, 5
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = and i32 %323, 8
  %399 = icmp ne i32 %398, 0
  %400 = select i1 %399, float %391, float %341
  %401 = select i1 %399, float %394, float %345
  %402 = select i1 %399, float %397, float %349
  %403 = add i32 %319, 52
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 65535
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %405, 16
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = and i32 %323, 2
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %407, float %354
  %413 = select i1 %411, float %409, float %356
  %414 = add i32 %319, 56
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 65535
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %416, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = and i32 %323, 4
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %422, float %418, float %361
  %424 = fmul float %423, 0x3F50624DE0000000
  %425 = select i1 %422, float %420, float %363
  %426 = fmul float %425, 0x3F50624DE0000000
  %427 = add i32 %319, 60
  %428 = add i32 %319, 32
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %53, 188
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = shl i32 %433, 4
  %435 = and i32 %434, 32752
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %433, 7
  %438 = and i32 %437, 32752
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = lshr i32 %433, 22
  %441 = shl nuw nsw i32 %440, 5
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = add i32 %53, 248
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = lshr i32 %445, 8
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = lshr i32 %445, 16
  %454 = and i32 %453, 255
  %455 = uitofp i32 %454 to float
  %456 = fmul fast float %455, 0x3F70101020000000
  %457 = add i32 %53, 68
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 65535
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %459, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = add i32 %53, 320
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 65535
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %466, 16
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = shl i32 %472, 4
  %474 = and i32 %473, 32752
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %472, 7
  %477 = and i32 %476, 32752
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = lshr i32 %472, 22
  %480 = shl nuw nsw i32 %479, 5
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = and i32 %430, 1
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %475, float %436
  %485 = select i1 %483, float %478, float %439
  %486 = select i1 %483, float %481, float %442
  %487 = add i32 %319, 64
  %488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = fmul fast float %489, %484
  %491 = fmul fast float %489, %485
  %492 = fmul fast float %489, %486
  %493 = add i32 %319, 68
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = shl i32 %495, 4
  %497 = and i32 %496, 32752
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %495, 7
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %495, 22
  %503 = shl nuw nsw i32 %502, 5
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = and i32 %430, 8
  %506 = icmp ne i32 %505, 0
  %507 = select i1 %506, float %498, float %448
  %508 = select i1 %506, float %501, float %452
  %509 = select i1 %506, float %504, float %456
  %510 = add i32 %319, 72
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 65535
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = lshr i32 %512, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = and i32 %430, 2
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %514, float %461
  %520 = select i1 %518, float %516, float %463
  %521 = add i32 %319, 76
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 65535
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = lshr i32 %523, 16
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = and i32 %430, 4
  %529 = icmp ne i32 %528, 0
  %530 = select i1 %529, float %525, float %468
  %531 = fmul float %530, 0x3F50624DE0000000
  %532 = select i1 %529, float %527, float %470
  %533 = fmul float %532, 0x3F50624DE0000000
  %534 = add i32 %319, 80
  %535 = add i32 %319, 36
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %53, 204
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = shl i32 %540, 4
  %542 = and i32 %541, 32752
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = lshr i32 %540, 7
  %545 = and i32 %544, 32752
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = lshr i32 %540, 22
  %548 = shl nuw nsw i32 %547, 5
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = add i32 %53, 264
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = lshr i32 %552, 8
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = lshr i32 %552, 16
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = add i32 %53, 84
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 65535
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = lshr i32 %566, 16
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = add i32 %53, 336
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 65535
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = lshr i32 %573, 16
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = shl i32 %579, 4
  %581 = and i32 %580, 32752
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %579, 7
  %584 = and i32 %583, 32752
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = lshr i32 %579, 22
  %587 = shl nuw nsw i32 %586, 5
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = and i32 %537, 1
  %590 = icmp ne i32 %589, 0
  %591 = select i1 %590, float %582, float %543
  %592 = select i1 %590, float %585, float %546
  %593 = select i1 %590, float %588, float %549
  %594 = add i32 %319, 84
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = fmul fast float %596, %591
  %598 = fmul fast float %596, %592
  %599 = fmul fast float %596, %593
  %600 = add i32 %319, 88
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = shl i32 %602, 4
  %604 = and i32 %603, 32752
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = lshr i32 %602, 7
  %607 = and i32 %606, 32752
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %602, 22
  %610 = shl nuw nsw i32 %609, 5
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = and i32 %537, 8
  %613 = icmp ne i32 %612, 0
  %614 = select i1 %613, float %605, float %555
  %615 = select i1 %613, float %608, float %559
  %616 = select i1 %613, float %611, float %563
  %617 = add i32 %319, 92
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 65535
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = lshr i32 %619, 16
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = and i32 %537, 2
  %625 = icmp ne i32 %624, 0
  %626 = select i1 %625, float %621, float %568
  %627 = select i1 %625, float %623, float %570
  %628 = add i32 %319, 96
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 65535
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %630, 16
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = and i32 %537, 4
  %636 = icmp ne i32 %635, 0
  %637 = select i1 %636, float %632, float %575
  %638 = fmul float %637, 0x3F50624DE0000000
  %639 = select i1 %636, float %634, float %577
  %640 = fmul float %639, 0x3F50624DE0000000
  %641 = add i32 %53, 348
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 32
  %645 = icmp eq i32 %644, 0
  %646 = and i32 %643, 64
  %647 = icmp eq i32 %646, 0
  %648 = and i32 %643, 128
  %649 = icmp eq i32 %648, 0
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = and i32 %651, 2
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %669, label %654

; <label>:654                                     ; preds = %264
  %655 = add i32 %53, 524
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = add i32 %657, 0
  %659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %659, %dx.types.Handle %107, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = extractvalue %dx.types.ResRet.f32 %660, 2
  %664 = extractvalue %dx.types.ResRet.f32 %660, 3
  %665 = fmul fast float %664, %94
  %666 = fmul fast float %661, %95
  %667 = fmul fast float %662, %96
  %668 = fmul fast float %663, %97
  br label %669

; <label>:669                                     ; preds = %654, %264
  %670 = phi float [ %97, %264 ], [ %668, %654 ]
  %671 = phi float [ %96, %264 ], [ %667, %654 ]
  %672 = phi float [ %95, %264 ], [ %666, %654 ]
  %673 = phi float [ %94, %264 ], [ %665, %654 ]
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 2
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %697, label %678

; <label>:678                                     ; preds = %669
  %679 = add i32 %53, 44
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 1
  %683 = icmp ne i32 %682, 0
  %684 = select i1 %683, float %672, float 1.000000e+00
  %685 = add i32 %53, 60
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 1
  %689 = icmp ne i32 %688, 0
  %690 = select i1 %689, float %671, float 1.000000e+00
  %691 = add i32 %53, 76
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 1
  %695 = icmp ne i32 %694, 0
  %696 = select i1 %695, float %670, float 1.000000e+00
  br label %697

; <label>:697                                     ; preds = %678, %669
  %698 = phi float [ %670, %669 ], [ %696, %678 ]
  %699 = phi float [ %671, %669 ], [ %690, %678 ]
  %700 = phi float [ %672, %669 ], [ %684, %678 ]
  %701 = lshr i32 %675, 20
  %702 = and i32 %701, 3
  %703 = add nuw nsw i32 %702, 1
  %704 = add i32 %53, 24
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %53, 28
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = or i32 %709, %706
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %1246, label %712

; <label>:712                                     ; preds = %697
  %713 = and i32 %706, 262144
  %714 = icmp ne i32 %713, 0
  %715 = select i1 %714, float %60, float 1.000000e+00
  %716 = select i1 %714, float %61, float 0.000000e+00
  %717 = select i1 %714, float %62, float 0.000000e+00
  %718 = select i1 %714, float %63, float 1.000000e+00
  %719 = select i1 %714, float %64, float %92
  %720 = select i1 %714, float %65, float %93
  %721 = add i32 %53, 284
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = lshr i32 %723, 16
  %725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %724)  ; LegacyF16ToF32(value)
  %726 = fmul fast float %725, 0x3F50624DE0000000
  %727 = add i32 %53, 88
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 16
  %731 = and i32 %730, 255
  %732 = lshr i32 %729, 24
  %733 = add i32 %53, 292
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 65535
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = lshr i32 %735, 16
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = add i32 %53, 32
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = lshr i32 %742, 22
  %744 = shl nuw nsw i32 %743, 5
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = shl i32 %742, 4
  %747 = and i32 %746, 32752
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = lshr i32 %742, 7
  %750 = and i32 %749, 32752
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 3
  %754 = fmul fast float %753, 1.000000e+03
  %755 = fmul fast float %317, %754
  %756 = call float @dx.op.unary.f32(i32 22, float %755)  ; Frc(value)
  %757 = fadd fast float %756, %307
  %758 = fmul fast float %318, %754
  %759 = call float @dx.op.unary.f32(i32 22, float %758)  ; Frc(value)
  %760 = fadd fast float %759, %309
  %761 = fmul fast float %726, %754
  %762 = call float @dx.op.unary.f32(i32 22, float %761)  ; Frc(value)
  %763 = fmul fast float %762, 0x401921FB60000000
  %764 = fadd fast float %763, %745
  %765 = call float @dx.op.unary.f32(i32 13, float %764)  ; Sin(value)
  %766 = call float @dx.op.unary.f32(i32 12, float %764)  ; Cos(value)
  %767 = fsub fast float -0.000000e+00, %765
  %768 = fadd fast float %719, -5.000000e-01
  %769 = fadd fast float %720, -5.000000e-01
  %770 = fmul fast float %737, %768
  %771 = fmul fast float %739, %769
  %772 = fadd fast float %770, 5.000000e-01
  %773 = fadd fast float %771, 5.000000e-01
  %774 = fmul fast float %748, %772
  %775 = fmul fast float %751, %773
  %776 = fmul fast float %766, %774
  %777 = call float @dx.op.tertiary.f32(i32 46, float %767, float %775, float %776)  ; FMad(a,b,c)
  %778 = fmul fast float %765, %774
  %779 = call float @dx.op.tertiary.f32(i32 46, float %766, float %775, float %778)  ; FMad(a,b,c)
  %780 = fadd fast float %757, %777
  %781 = fadd fast float %760, %779
  %782 = icmp ugt i32 %731, 1
  %783 = icmp ugt i32 %729, 33554431
  %784 = or i1 %783, %782
  br i1 %784, label %785, label %810

; <label>:785                                     ; preds = %712
  %786 = add i32 %53, 228
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = lshr i32 %788, 16
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = fmul fast float %753, %790
  %792 = call float @dx.op.unary.f32(i32 22, float %791)  ; Frc(value)
  %793 = mul nuw nsw i32 %731, %732
  %794 = uitofp i32 %793 to float
  %795 = fmul fast float %792, %794
  %796 = call float @dx.op.unary.f32(i32 27, float %795)  ; Round_ni(value)
  %797 = fptoui float %796 to i32
  %798 = urem i32 %797, %731
  %799 = udiv i32 %797, %732
  %800 = call float @dx.op.unary.f32(i32 22, float %780)  ; Frc(value)
  %801 = call float @dx.op.unary.f32(i32 22, float %781)  ; Frc(value)
  %802 = uitofp i32 %798 to float
  %803 = uitofp i32 %799 to float
  %804 = fadd fast float %800, %802
  %805 = fadd fast float %801, %803
  %806 = uitofp i32 %731 to float
  %807 = uitofp i32 %732 to float
  %808 = fdiv fast float %804, %806
  %809 = fdiv fast float %805, %807
  br label %810

; <label>:810                                     ; preds = %785, %712
  %811 = phi float [ %808, %785 ], [ %780, %712 ]
  %812 = phi float [ %809, %785 ], [ %781, %712 ]
  %813 = and i32 %706, 256
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %861, label %815

; <label>:815                                     ; preds = %810
  %816 = add i32 %53, 472
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = add i32 %818, 0
  %820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %820, %dx.types.Handle %107, float %811, float %812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = add i32 %53, 100
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = shl i32 %825, 4
  %827 = and i32 %826, 32752
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = lshr i32 %825, 7
  %830 = and i32 %829, 32752
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = fsub fast float 1.000000e+00, %673
  %833 = call float @dx.op.binary.f32(i32 35, float %832, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %834 = bitcast float %673 to i32
  %835 = sitofp i32 %834 to float
  %836 = fadd fast float %835, 0xC1CFBF8940000000
  %837 = fmul fast float %831, %836
  %838 = fadd fast float %837, 0x41CFBF8940000000
  %839 = fptosi float %838 to i32
  %840 = bitcast i32 %839 to float
  %841 = bitcast float %833 to i32
  %842 = sitofp i32 %841 to float
  %843 = fadd fast float %842, 0xC1CFBF8940000000
  %844 = fmul fast float %843, %831
  %845 = fadd fast float %844, 0x41CFBF8940000000
  %846 = fptosi float %845 to i32
  %847 = bitcast i32 %846 to float
  %848 = fmul fast float %840, %828
  %849 = fmul fast float %847, %828
  %850 = fsub fast float %833, %848
  %851 = fadd fast float %849, %833
  %852 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %853 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %854 = fsub fast float %822, %852
  %855 = fsub fast float %853, %852
  %856 = bitcast float %855 to i32
  %857 = sub nsw i32 2129859010, %856
  %858 = bitcast i32 %857 to float
  %859 = fmul fast float %858, %854
  %860 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  br label %861

; <label>:861                                     ; preds = %815, %810
  %862 = phi float [ %860, %815 ], [ %673, %810 ]
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 128
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %883, label %867

; <label>:867                                     ; preds = %861
  %868 = add i32 %53, 456
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = add i32 %870, 0
  %872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %871, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %873 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %872, %dx.types.Handle %107, float %811, float %812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = and i32 %876, 524288
  %878 = icmp ne i32 %877, 0
  %879 = fcmp fast ogt float %874, 0x3FE0101020000000
  %880 = select i1 %879, float 1.000000e+00, float 0.000000e+00
  %881 = select i1 %878, float %880, float %874
  %882 = fmul fast float %881, %862
  br label %883

; <label>:883                                     ; preds = %867, %861
  %884 = phi float [ %882, %867 ], [ %862, %861 ]
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = and i32 %886, 16
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %1087, label %889

; <label>:889                                     ; preds = %883
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = add i32 %53, 408
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = add i32 %894, 0
  %896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %896, %dx.types.Handle %106, float %811, float %812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = extractvalue %dx.types.ResRet.f32 %897, 3
  %902 = and i32 %891, 255
  %903 = uitofp i32 %902 to float
  %904 = lshr i32 %891, 8
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %901, %903
  %908 = fadd fast float %907, %906
  %909 = fmul fast float %908, 0x3F70101000000000
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = and i32 %911, 512
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %922, label %914

; <label>:914                                     ; preds = %889
  %915 = add i32 %53, 492
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %917, 0
  %919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %919, %dx.types.Handle %107, float %811, float %812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  br label %922

; <label>:922                                     ; preds = %914, %889
  %923 = phi float [ %921, %914 ], [ 1.000000e+00, %889 ]
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 33554432
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %1034, label %928

; <label>:928                                     ; preds = %922
  %929 = add i32 %53, 224
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 65535
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = lshr i32 %931, 16
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %934)  ; LegacyF16ToF32(value)
  %936 = add i32 %53, 228
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = and i32 %938, 65535
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = lshr i32 %942, 24
  %944 = uitofp i32 %943 to float
  %945 = fmul fast float %944, 0x3F70101020000000
  %946 = and i32 %942, 255
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %947, 0x3F70101020000000
  %949 = lshr i32 %942, 8
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = lshr i32 %942, 16
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = add i32 %53, 220
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = lshr i32 %959, 24
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = and i32 %959, 255
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %964, 0x3F70101020000000
  %966 = lshr i32 %959, 8
  %967 = and i32 %966, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F70101020000000
  %970 = lshr i32 %959, 16
  %971 = and i32 %970, 255
  %972 = uitofp i32 %971 to float
  %973 = fmul fast float %972, 0x3F70101020000000
  %974 = bitcast float %898 to i32
  %975 = ashr i32 %974, 1
  %976 = sub nsw i32 1597463174, %975
  %977 = bitcast i32 %976 to float
  %978 = fmul fast float %898, 5.000000e-01
  %979 = fmul fast float %977, %977
  %980 = fmul fast float %979, %978
  %981 = fsub fast float 1.500000e+00, %980
  %982 = fmul fast float %977, %898
  %983 = fmul fast float %982, %981
  %984 = bitcast float %899 to i32
  %985 = ashr i32 %984, 1
  %986 = sub nsw i32 1597463174, %985
  %987 = bitcast i32 %986 to float
  %988 = fmul fast float %899, 5.000000e-01
  %989 = fmul fast float %987, %987
  %990 = fmul fast float %989, %988
  %991 = fsub fast float 1.500000e+00, %990
  %992 = fmul fast float %987, %899
  %993 = fmul fast float %992, %991
  %994 = bitcast float %900 to i32
  %995 = ashr i32 %994, 1
  %996 = sub nsw i32 1597463174, %995
  %997 = bitcast i32 %996 to float
  %998 = fmul fast float %900, 5.000000e-01
  %999 = fmul fast float %997, %997
  %1000 = fmul fast float %999, %998
  %1001 = fsub fast float 1.500000e+00, %1000
  %1002 = fmul fast float %997, %900
  %1003 = fmul fast float %1002, %1001
  %1004 = fsub fast float %983, %965
  %1005 = fsub fast float %993, %969
  %1006 = fsub fast float %1003, %973
  %1007 = fmul fast float %1004, %933
  %1008 = fmul fast float %1005, %935
  %1009 = fmul fast float %1006, %940
  %1010 = fadd fast float %1007, %948
  %1011 = fadd fast float %1008, %952
  %1012 = fadd fast float %1009, %956
  %1013 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1014 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1015 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1016 = fmul fast float %1013, %1013
  %1017 = fmul fast float %1014, %1014
  %1018 = fmul fast float %1015, %1015
  %1019 = fsub fast float %1016, %898
  %1020 = fsub fast float %1017, %899
  %1021 = fsub fast float %1018, %900
  %1022 = fmul fast float %1019, %923
  %1023 = fmul fast float %1020, %923
  %1024 = fmul fast float %1021, %923
  %1025 = fadd fast float %1022, %898
  %1026 = fadd fast float %1023, %899
  %1027 = fadd fast float %1024, %900
  %1028 = fadd fast float %945, %909
  %1029 = fsub fast float %1028, %962
  %1030 = call float @dx.op.unary.f32(i32 7, float %1029)  ; Saturate(value)
  %1031 = fsub fast float %1030, %909
  %1032 = fmul fast float %1031, %923
  %1033 = fadd fast float %1032, %909
  br label %1087

; <label>:1034                                    ; preds = %922
  %1035 = and i32 %925, 134217728
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1071, label %1037

; <label>:1037                                    ; preds = %1034
  %1038 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1039 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1040 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1041 = fadd fast float %1038, -5.000000e-01
  %1042 = fadd fast float %1039, -5.000000e-01
  %1043 = fadd fast float %1040, -5.000000e-01
  %1044 = fmul fast float %1041, %923
  %1045 = fmul fast float %1042, %923
  %1046 = fmul fast float %1043, %923
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = fadd fast float %1046, 5.000000e-01
  %1050 = call float @dx.op.unary.f32(i32 24, float %898)  ; Sqrt(value)
  %1051 = call float @dx.op.unary.f32(i32 24, float %899)  ; Sqrt(value)
  %1052 = call float @dx.op.unary.f32(i32 24, float %900)  ; Sqrt(value)
  %1053 = fmul fast float %1047, 2.000000e+00
  %1054 = fsub fast float 1.000000e+00, %1053
  %1055 = fmul fast float %1054, %1050
  %1056 = fadd fast float %1055, %1053
  %1057 = fmul fast float %1056, %1050
  %1058 = fmul fast float %1048, 2.000000e+00
  %1059 = fsub fast float 1.000000e+00, %1058
  %1060 = fmul fast float %1059, %1051
  %1061 = fadd fast float %1060, %1058
  %1062 = fmul fast float %1061, %1051
  %1063 = fmul fast float %1049, 2.000000e+00
  %1064 = fsub fast float 1.000000e+00, %1063
  %1065 = fmul fast float %1064, %1052
  %1066 = fadd fast float %1065, %1063
  %1067 = fmul fast float %1066, %1052
  %1068 = fmul fast float %1057, %1057
  %1069 = fmul fast float %1062, %1062
  %1070 = fmul fast float %1067, %1067
  br label %1087

; <label>:1071                                    ; preds = %1034
  %1072 = fmul fast float %294, %294
  %1073 = fmul fast float %298, %298
  %1074 = fmul fast float %302, %302
  %1075 = fadd fast float %1072, -1.000000e+00
  %1076 = fadd fast float %1073, -1.000000e+00
  %1077 = fadd fast float %1074, -1.000000e+00
  %1078 = fmul fast float %923, %1075
  %1079 = fmul fast float %923, %1076
  %1080 = fmul fast float %923, %1077
  %1081 = fadd fast float %1078, 1.000000e+00
  %1082 = fadd fast float %1079, 1.000000e+00
  %1083 = fadd fast float %1080, 1.000000e+00
  %1084 = fmul fast float %1081, %898
  %1085 = fmul fast float %1082, %899
  %1086 = fmul fast float %1083, %900
  br label %1087

; <label>:1087                                    ; preds = %1071, %1037, %928, %883
  %1088 = phi float [ %1033, %928 ], [ %909, %1037 ], [ %909, %1071 ], [ 0x3FA23C0BE0000000, %883 ]
  %1089 = phi float [ %1025, %928 ], [ %1068, %1037 ], [ %1084, %1071 ], [ 1.000000e+00, %883 ]
  %1090 = phi float [ %1026, %928 ], [ %1069, %1037 ], [ %1085, %1071 ], [ 1.000000e+00, %883 ]
  %1091 = phi float [ %1027, %928 ], [ %1070, %1037 ], [ %1086, %1071 ], [ 1.000000e+00, %883 ]
  %1092 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.i32 %1092, 1
  %1094 = and i32 %1093, 1
  %1095 = icmp ne i32 %1094, 0
  %1096 = add i32 %53, 356
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 32
  %1100 = icmp ne i32 %1099, 0
  %1101 = and i1 %1095, %1100
  %1102 = select i1 %1101, float 1.000000e+00, float %1089
  %1103 = select i1 %1101, float 0x3FD3333340000000, float %1090
  %1104 = select i1 %1101, float 0x3FD3333340000000, float %1091
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 32
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1181, label %1109

; <label>:1109                                    ; preds = %1087
  %1110 = add i32 %53, 92
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %53, 424
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = add i32 %1115, 0
  %1117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1117, %dx.types.Handle %106, float %811, float %812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = extractvalue %dx.types.ResRet.f32 %1118, 3
  %1123 = and i32 %1112, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = lshr i32 %1112, 8
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = lshr i32 %1112, 16
  %1129 = and i32 %1128, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F70101000000000
  %1132 = fmul fast float %1119, %1124
  %1133 = fadd fast float %1132, %1127
  %1134 = fmul fast float %1133, 0x3F70101000000000
  %1135 = fadd fast float %1120, -5.000000e-01
  %1136 = fadd fast float %1122, -5.000000e-01
  %1137 = fmul fast float %1135, %1131
  %1138 = fmul fast float %1136, %1131
  %1139 = fadd fast float %1137, 5.000000e-01
  %1140 = fadd fast float %1138, 5.000000e-01
  %1141 = fmul fast float %1139, 2.000000e+00
  %1142 = fadd fast float %1141, -1.000000e+00
  %1143 = fmul fast float %1140, 2.000000e+00
  %1144 = fadd fast float %1143, -1.000000e+00
  %1145 = fadd fast float %1142, %1144
  %1146 = fmul fast float %1145, 5.000000e-01
  %1147 = fsub fast float %1142, %1144
  %1148 = fmul fast float %1147, 5.000000e-01
  %1149 = call float @dx.op.unary.f32(i32 6, float %1146)  ; FAbs(value)
  %1150 = fsub fast float 1.000000e+00, %1149
  %1151 = call float @dx.op.unary.f32(i32 6, float %1148)  ; FAbs(value)
  %1152 = fsub fast float %1150, %1151
  %1153 = call float @dx.op.dot3.f32(i32 55, float %1146, float %1148, float %1152, float %1146, float %1148, float %1152)  ; Dot3(ax,ay,az,bx,by,bz)
  %1154 = call float @dx.op.unary.f32(i32 25, float %1153)  ; Rsqrt(value)
  %1155 = fmul fast float %1146, %1154
  %1156 = fmul fast float %1148, %1154
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 67108864
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1177, label %1161

; <label>:1161                                    ; preds = %1109
  %1162 = add i32 %53, 280
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 65535
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = lshr i32 %1164, 16
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = fsub fast float %1134, %1172
  %1174 = fmul fast float %1173, %1166
  %1175 = fadd fast float %1174, %1170
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  br label %1177

; <label>:1177                                    ; preds = %1161, %1109
  %1178 = phi float [ %1176, %1161 ], [ %1134, %1109 ]
  %1179 = call float @dx.op.dot2.f32(i32 54, float %1155, float %1156, float %715, float %716)  ; Dot2(ax,ay,bx,by)
  %1180 = call float @dx.op.dot2.f32(i32 54, float %1155, float %1156, float %717, float %718)  ; Dot2(ax,ay,bx,by)
  br label %1181

; <label>:1181                                    ; preds = %1177, %1087
  %1182 = phi float [ %1178, %1177 ], [ 0x3FD6666660000000, %1087 ]
  %1183 = phi float [ %1179, %1177 ], [ 0.000000e+00, %1087 ]
  %1184 = phi float [ %1180, %1177 ], [ 0.000000e+00, %1087 ]
  %1185 = phi float [ %1121, %1177 ], [ 1.000000e+00, %1087 ]
  %1186 = add i32 %53, 160
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = lshr i32 %1188, 22
  %1190 = shl nuw nsw i32 %1189, 5
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 64
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1229, label %1196

; <label>:1196                                    ; preds = %1181
  %1197 = add i32 %53, 440
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = add i32 %1199, 0
  %1201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 131072
  %1205 = icmp eq i32 %1204, 0
  %1206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1201, %dx.types.Handle %106, float %811, float %812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = fmul fast float %1207, %282
  %1211 = fmul fast float %1208, %285
  %1212 = fmul fast float %1209, %288
  br i1 %1205, label %1219, label %1213

; <label>:1213                                    ; preds = %1196
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1216 = fmul fast float %1215, %1210
  %1217 = fmul fast float %1215, %1211
  %1218 = fmul fast float %1215, %1212
  br label %1219

; <label>:1219                                    ; preds = %1213, %1196
  %1220 = phi float [ %1216, %1213 ], [ %1210, %1196 ]
  %1221 = phi float [ %1217, %1213 ], [ %1211, %1196 ]
  %1222 = phi float [ %1218, %1213 ], [ %1212, %1196 ]
  %1223 = fmul fast float %1220, %1191
  %1224 = select i1 %265, float %1223, float %1220
  %1225 = call float @dx.op.dot3.f32(i32 55, float %1224, float %1221, float %1222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1226 = select i1 %265, float 0.000000e+00, float %1220
  %1227 = select i1 %265, float %1225, float %1221
  %1228 = select i1 %265, float 0.000000e+00, float %1222
  br label %1229

; <label>:1229                                    ; preds = %1219, %1181
  %1230 = phi float [ %1226, %1219 ], [ 0.000000e+00, %1181 ]
  %1231 = phi float [ %1227, %1219 ], [ 0.000000e+00, %1181 ]
  %1232 = phi float [ %1228, %1219 ], [ 0.000000e+00, %1181 ]
  %1233 = add i32 %53, 96
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = lshr i32 %1235, 8
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1103, float %1104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = fmul fast float %1240, %1241
  %1243 = fadd fast float %1242, %1237
  %1244 = fmul fast float %1243, 0x3F70101020000000
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  br label %1246

; <label>:1246                                    ; preds = %1229, %697
  %1247 = phi float [ 0.000000e+00, %697 ], [ %1183, %1229 ]
  %1248 = phi float [ 0.000000e+00, %697 ], [ %1184, %1229 ]
  %1249 = phi float [ 0.000000e+00, %697 ], [ %1102, %1229 ]
  %1250 = phi float [ 0.000000e+00, %697 ], [ %1103, %1229 ]
  %1251 = phi float [ 0.000000e+00, %697 ], [ %1104, %1229 ]
  %1252 = phi float [ 0.000000e+00, %697 ], [ %1230, %1229 ]
  %1253 = phi float [ 0.000000e+00, %697 ], [ %1231, %1229 ]
  %1254 = phi float [ 0.000000e+00, %697 ], [ %1232, %1229 ]
  %1255 = phi float [ 0.000000e+00, %697 ], [ %1088, %1229 ]
  %1256 = phi float [ 0.000000e+00, %697 ], [ %884, %1229 ]
  %1257 = phi float [ 0.000000e+00, %697 ], [ %1182, %1229 ]
  %1258 = phi float [ 0.000000e+00, %697 ], [ %1185, %1229 ]
  %1259 = phi float [ 0.000000e+00, %697 ], [ %1245, %1229 ]
  br i1 %645, label %1986, label %1260

; <label>:1260                                    ; preds = %1246
  %1261 = icmp ult i32 %703, 2
  %1262 = add i32 %53, 40
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = add i32 %53, 44
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = or i32 %1267, %1264
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1986, label %1270

; <label>:1270                                    ; preds = %1260
  %1271 = and i32 %1264, 262144
  %1272 = icmp ne i32 %1271, 0
  %1273 = select i1 %1272, float %60, float 1.000000e+00
  %1274 = select i1 %1272, float %61, float 0.000000e+00
  %1275 = select i1 %1272, float %62, float 0.000000e+00
  %1276 = select i1 %1272, float %63, float 1.000000e+00
  %1277 = select i1 %1272, float %64, float %92
  %1278 = select i1 %1272, float %65, float %93
  %1279 = add i32 %53, 300
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = lshr i32 %1281, 16
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = fmul fast float %1283, 0x3F50624DE0000000
  %1285 = add i32 %53, 104
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = lshr i32 %1287, 16
  %1289 = and i32 %1288, 255
  %1290 = lshr i32 %1287, 24
  %1291 = add i32 %53, 308
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = and i32 %1293, 65535
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = lshr i32 %1293, 16
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = add i32 %53, 48
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = lshr i32 %1300, 22
  %1302 = shl nuw nsw i32 %1301, 5
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = shl i32 %1300, 4
  %1305 = and i32 %1304, 32752
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = lshr i32 %1300, 7
  %1308 = and i32 %1307, 32752
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 3
  %1312 = fmul fast float %1311, 1.000000e+03
  %1313 = fmul fast float %1312, %424
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = fadd fast float %1314, %412
  %1316 = fmul fast float %1312, %426
  %1317 = call float @dx.op.unary.f32(i32 22, float %1316)  ; Frc(value)
  %1318 = fadd fast float %1317, %413
  %1319 = fmul fast float %1284, %1312
  %1320 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1321 = fmul fast float %1320, 0x401921FB60000000
  %1322 = fadd fast float %1321, %1303
  %1323 = call float @dx.op.unary.f32(i32 13, float %1322)  ; Sin(value)
  %1324 = call float @dx.op.unary.f32(i32 12, float %1322)  ; Cos(value)
  %1325 = fsub fast float -0.000000e+00, %1323
  %1326 = fadd fast float %1277, -5.000000e-01
  %1327 = fadd fast float %1278, -5.000000e-01
  %1328 = fmul fast float %1295, %1326
  %1329 = fmul fast float %1297, %1327
  %1330 = fadd fast float %1328, 5.000000e-01
  %1331 = fadd fast float %1329, 5.000000e-01
  %1332 = fmul fast float %1306, %1330
  %1333 = fmul fast float %1309, %1331
  %1334 = fmul fast float %1324, %1332
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1325, float %1333, float %1334)  ; FMad(a,b,c)
  %1336 = fmul fast float %1323, %1332
  %1337 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %1333, float %1336)  ; FMad(a,b,c)
  %1338 = fadd fast float %1315, %1335
  %1339 = fadd fast float %1318, %1337
  %1340 = icmp ugt i32 %1289, 1
  %1341 = icmp ugt i32 %1287, 33554431
  %1342 = or i1 %1341, %1340
  br i1 %1342, label %1343, label %1368

; <label>:1343                                    ; preds = %1270
  %1344 = add i32 %53, 244
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = lshr i32 %1346, 16
  %1348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1347)  ; LegacyF16ToF32(value)
  %1349 = fmul fast float %1311, %1348
  %1350 = call float @dx.op.unary.f32(i32 22, float %1349)  ; Frc(value)
  %1351 = mul nuw nsw i32 %1289, %1290
  %1352 = uitofp i32 %1351 to float
  %1353 = fmul fast float %1350, %1352
  %1354 = call float @dx.op.unary.f32(i32 27, float %1353)  ; Round_ni(value)
  %1355 = fptoui float %1354 to i32
  %1356 = urem i32 %1355, %1289
  %1357 = udiv i32 %1355, %1290
  %1358 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1359 = call float @dx.op.unary.f32(i32 22, float %1339)  ; Frc(value)
  %1360 = uitofp i32 %1356 to float
  %1361 = uitofp i32 %1357 to float
  %1362 = fadd fast float %1358, %1360
  %1363 = fadd fast float %1359, %1361
  %1364 = uitofp i32 %1289 to float
  %1365 = uitofp i32 %1290 to float
  %1366 = fdiv fast float %1362, %1364
  %1367 = fdiv fast float %1363, %1365
  br label %1368

; <label>:1368                                    ; preds = %1343, %1270
  %1369 = phi float [ %1366, %1343 ], [ %1338, %1270 ]
  %1370 = phi float [ %1367, %1343 ], [ %1339, %1270 ]
  %1371 = and i32 %1264, 256
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1419, label %1373

; <label>:1373                                    ; preds = %1368
  %1374 = add i32 %53, 476
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = add i32 %1376, 0
  %1378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1378, %dx.types.Handle %107, float %1369, float %1370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = add i32 %53, 116
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = shl i32 %1383, 4
  %1385 = and i32 %1384, 32752
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = lshr i32 %1383, 7
  %1388 = and i32 %1387, 32752
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = fsub fast float 1.000000e+00, %700
  %1391 = call float @dx.op.binary.f32(i32 35, float %1390, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1392 = bitcast float %700 to i32
  %1393 = sitofp i32 %1392 to float
  %1394 = fadd fast float %1393, 0xC1CFBF8940000000
  %1395 = fmul fast float %1389, %1394
  %1396 = fadd fast float %1395, 0x41CFBF8940000000
  %1397 = fptosi float %1396 to i32
  %1398 = bitcast i32 %1397 to float
  %1399 = bitcast float %1391 to i32
  %1400 = sitofp i32 %1399 to float
  %1401 = fadd fast float %1400, 0xC1CFBF8940000000
  %1402 = fmul fast float %1401, %1389
  %1403 = fadd fast float %1402, 0x41CFBF8940000000
  %1404 = fptosi float %1403 to i32
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1398, %1386
  %1407 = fmul fast float %1405, %1386
  %1408 = fsub fast float %1391, %1406
  %1409 = fadd fast float %1407, %1391
  %1410 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1412 = fsub fast float %1380, %1410
  %1413 = fsub fast float %1411, %1410
  %1414 = bitcast float %1413 to i32
  %1415 = sub nsw i32 2129859010, %1414
  %1416 = bitcast i32 %1415 to float
  %1417 = fmul fast float %1416, %1412
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  br label %1419

; <label>:1419                                    ; preds = %1373, %1368
  %1420 = phi float [ %1418, %1373 ], [ %700, %1368 ]
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 128
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %1441, label %1425

; <label>:1425                                    ; preds = %1419
  %1426 = add i32 %53, 460
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1430, %dx.types.Handle %107, float %1369, float %1370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 524288
  %1436 = icmp ne i32 %1435, 0
  %1437 = fcmp fast ogt float %1432, 0x3FE0101020000000
  %1438 = select i1 %1437, float 1.000000e+00, float 0.000000e+00
  %1439 = select i1 %1436, float %1438, float %1432
  %1440 = fmul fast float %1439, %1420
  br label %1441

; <label>:1441                                    ; preds = %1425, %1419
  %1442 = phi float [ %1440, %1425 ], [ %1420, %1419 ]
  %1443 = fcmp fast ult float %1442, 0x3F70101020000000
  br i1 %1443, label %1986, label %1444

; <label>:1444                                    ; preds = %1441
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 16
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1647, label %1449

; <label>:1449                                    ; preds = %1444
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %53, 412
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = add i32 %1454, 0
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1456, %dx.types.Handle %106, float %1369, float %1370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.ResRet.f32 %1457, 3
  %1462 = and i32 %1451, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = lshr i32 %1451, 8
  %1465 = and i32 %1464, 255
  %1466 = uitofp i32 %1465 to float
  %1467 = fmul fast float %1461, %1463
  %1468 = fadd fast float %1467, %1466
  %1469 = fmul fast float %1468, 0x3F70101000000000
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, 512
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1482, label %1474

; <label>:1474                                    ; preds = %1449
  %1475 = add i32 %53, 496
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = add i32 %1477, 0
  %1479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1479, %dx.types.Handle %107, float %1369, float %1370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  br label %1482

; <label>:1482                                    ; preds = %1474, %1449
  %1483 = phi float [ %1481, %1474 ], [ 1.000000e+00, %1449 ]
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 33554432
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1594, label %1488

; <label>:1488                                    ; preds = %1482
  %1489 = add i32 %53, 240
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = lshr i32 %1491, 16
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = add i32 %53, 244
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 65535
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = lshr i32 %1502, 24
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = and i32 %1502, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = fmul fast float %1507, 0x3F70101020000000
  %1509 = lshr i32 %1502, 8
  %1510 = and i32 %1509, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1511, 0x3F70101020000000
  %1513 = lshr i32 %1502, 16
  %1514 = and i32 %1513, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = add i32 %53, 236
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = lshr i32 %1519, 24
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = and i32 %1519, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = fmul fast float %1524, 0x3F70101020000000
  %1526 = lshr i32 %1519, 8
  %1527 = and i32 %1526, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = fmul fast float %1528, 0x3F70101020000000
  %1530 = lshr i32 %1519, 16
  %1531 = and i32 %1530, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = fmul fast float %1532, 0x3F70101020000000
  %1534 = bitcast float %1458 to i32
  %1535 = ashr i32 %1534, 1
  %1536 = sub nsw i32 1597463174, %1535
  %1537 = bitcast i32 %1536 to float
  %1538 = fmul fast float %1458, 5.000000e-01
  %1539 = fmul fast float %1537, %1537
  %1540 = fmul fast float %1539, %1538
  %1541 = fsub fast float 1.500000e+00, %1540
  %1542 = fmul fast float %1537, %1458
  %1543 = fmul fast float %1542, %1541
  %1544 = bitcast float %1459 to i32
  %1545 = ashr i32 %1544, 1
  %1546 = sub nsw i32 1597463174, %1545
  %1547 = bitcast i32 %1546 to float
  %1548 = fmul fast float %1459, 5.000000e-01
  %1549 = fmul fast float %1547, %1547
  %1550 = fmul fast float %1549, %1548
  %1551 = fsub fast float 1.500000e+00, %1550
  %1552 = fmul fast float %1547, %1459
  %1553 = fmul fast float %1552, %1551
  %1554 = bitcast float %1460 to i32
  %1555 = ashr i32 %1554, 1
  %1556 = sub nsw i32 1597463174, %1555
  %1557 = bitcast i32 %1556 to float
  %1558 = fmul fast float %1460, 5.000000e-01
  %1559 = fmul fast float %1557, %1557
  %1560 = fmul fast float %1559, %1558
  %1561 = fsub fast float 1.500000e+00, %1560
  %1562 = fmul fast float %1557, %1460
  %1563 = fmul fast float %1562, %1561
  %1564 = fsub fast float %1543, %1525
  %1565 = fsub fast float %1553, %1529
  %1566 = fsub fast float %1563, %1533
  %1567 = fmul fast float %1564, %1493
  %1568 = fmul fast float %1565, %1495
  %1569 = fmul fast float %1566, %1500
  %1570 = fadd fast float %1567, %1508
  %1571 = fadd fast float %1568, %1512
  %1572 = fadd fast float %1569, %1516
  %1573 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1574 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1575 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1576 = fmul fast float %1573, %1573
  %1577 = fmul fast float %1574, %1574
  %1578 = fmul fast float %1575, %1575
  %1579 = fsub fast float %1576, %1458
  %1580 = fsub fast float %1577, %1459
  %1581 = fsub fast float %1578, %1460
  %1582 = fmul fast float %1579, %1483
  %1583 = fmul fast float %1580, %1483
  %1584 = fmul fast float %1581, %1483
  %1585 = fadd fast float %1582, %1458
  %1586 = fadd fast float %1583, %1459
  %1587 = fadd fast float %1584, %1460
  %1588 = fadd fast float %1505, %1469
  %1589 = fsub fast float %1588, %1522
  %1590 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1591 = fsub fast float %1590, %1469
  %1592 = fmul fast float %1591, %1483
  %1593 = fadd fast float %1592, %1469
  br label %1647

; <label>:1594                                    ; preds = %1482
  %1595 = and i32 %1485, 134217728
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1631, label %1597

; <label>:1597                                    ; preds = %1594
  %1598 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %401)  ; Sqrt(value)
  %1600 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fadd fast float %1599, -5.000000e-01
  %1603 = fadd fast float %1600, -5.000000e-01
  %1604 = fmul fast float %1601, %1483
  %1605 = fmul fast float %1602, %1483
  %1606 = fmul fast float %1603, %1483
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = fadd fast float %1605, 5.000000e-01
  %1609 = fadd fast float %1606, 5.000000e-01
  %1610 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1611 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1612 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1613 = fmul fast float %1607, 2.000000e+00
  %1614 = fsub fast float 1.000000e+00, %1613
  %1615 = fmul fast float %1614, %1610
  %1616 = fadd fast float %1615, %1613
  %1617 = fmul fast float %1616, %1610
  %1618 = fmul fast float %1608, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1611
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1611
  %1623 = fmul fast float %1609, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1612
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1612
  %1628 = fmul fast float %1617, %1617
  %1629 = fmul fast float %1622, %1622
  %1630 = fmul fast float %1627, %1627
  br label %1647

; <label>:1631                                    ; preds = %1594
  %1632 = fmul fast float %400, %400
  %1633 = fmul fast float %401, %401
  %1634 = fmul fast float %402, %402
  %1635 = fadd fast float %1632, -1.000000e+00
  %1636 = fadd fast float %1633, -1.000000e+00
  %1637 = fadd fast float %1634, -1.000000e+00
  %1638 = fmul fast float %1483, %1635
  %1639 = fmul fast float %1483, %1636
  %1640 = fmul fast float %1483, %1637
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fadd fast float %1640, 1.000000e+00
  %1644 = fmul fast float %1641, %1458
  %1645 = fmul fast float %1642, %1459
  %1646 = fmul fast float %1643, %1460
  br label %1647

; <label>:1647                                    ; preds = %1631, %1597, %1488, %1444
  %1648 = phi float [ %1593, %1488 ], [ %1469, %1597 ], [ %1469, %1631 ], [ 0x3FA23C0BE0000000, %1444 ]
  %1649 = phi float [ %1585, %1488 ], [ %1628, %1597 ], [ %1644, %1631 ], [ 1.000000e+00, %1444 ]
  %1650 = phi float [ %1586, %1488 ], [ %1629, %1597 ], [ %1645, %1631 ], [ 1.000000e+00, %1444 ]
  %1651 = phi float [ %1587, %1488 ], [ %1630, %1597 ], [ %1646, %1631 ], [ 1.000000e+00, %1444 ]
  %1652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.i32 %1652, 1
  %1654 = and i32 %1653, 1
  %1655 = icmp ne i32 %1654, 0
  %1656 = add i32 %53, 356
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 32
  %1660 = icmp ne i32 %1659, 0
  %1661 = and i1 %1655, %1660
  %1662 = select i1 %1661, float 1.000000e+00, float %1649
  %1663 = select i1 %1661, float 0x3FD3333340000000, float %1650
  %1664 = select i1 %1661, float 0x3FD3333340000000, float %1651
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 32
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1741, label %1669

; <label>:1669                                    ; preds = %1647
  %1670 = add i32 %53, 108
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = add i32 %53, 428
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = add i32 %1675, 0
  %1677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1677, %dx.types.Handle %106, float %1369, float %1370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = extractvalue %dx.types.ResRet.f32 %1678, 3
  %1683 = and i32 %1672, 255
  %1684 = uitofp i32 %1683 to float
  %1685 = lshr i32 %1672, 8
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = lshr i32 %1672, 16
  %1689 = and i32 %1688, 255
  %1690 = uitofp i32 %1689 to float
  %1691 = fmul fast float %1690, 0x3F70101000000000
  %1692 = fmul fast float %1679, %1684
  %1693 = fadd fast float %1692, %1687
  %1694 = fmul fast float %1693, 0x3F70101000000000
  %1695 = fadd fast float %1680, -5.000000e-01
  %1696 = fadd fast float %1682, -5.000000e-01
  %1697 = fmul fast float %1695, %1691
  %1698 = fmul fast float %1696, %1691
  %1699 = fadd fast float %1697, 5.000000e-01
  %1700 = fadd fast float %1698, 5.000000e-01
  %1701 = fmul fast float %1699, 2.000000e+00
  %1702 = fadd fast float %1701, -1.000000e+00
  %1703 = fmul fast float %1700, 2.000000e+00
  %1704 = fadd fast float %1703, -1.000000e+00
  %1705 = fadd fast float %1702, %1704
  %1706 = fmul fast float %1705, 5.000000e-01
  %1707 = fsub fast float %1702, %1704
  %1708 = fmul fast float %1707, 5.000000e-01
  %1709 = call float @dx.op.unary.f32(i32 6, float %1706)  ; FAbs(value)
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = call float @dx.op.unary.f32(i32 6, float %1708)  ; FAbs(value)
  %1712 = fsub fast float %1710, %1711
  %1713 = call float @dx.op.dot3.f32(i32 55, float %1706, float %1708, float %1712, float %1706, float %1708, float %1712)  ; Dot3(ax,ay,az,bx,by,bz)
  %1714 = call float @dx.op.unary.f32(i32 25, float %1713)  ; Rsqrt(value)
  %1715 = fmul fast float %1706, %1714
  %1716 = fmul fast float %1708, %1714
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 67108864
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1737, label %1721

; <label>:1721                                    ; preds = %1669
  %1722 = add i32 %53, 296
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 65535
  %1726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1725)  ; LegacyF16ToF32(value)
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 65535
  %1730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1729)  ; LegacyF16ToF32(value)
  %1731 = lshr i32 %1724, 16
  %1732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1731)  ; LegacyF16ToF32(value)
  %1733 = fsub fast float %1694, %1732
  %1734 = fmul fast float %1733, %1726
  %1735 = fadd fast float %1734, %1730
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  br label %1737

; <label>:1737                                    ; preds = %1721, %1669
  %1738 = phi float [ %1736, %1721 ], [ %1694, %1669 ]
  %1739 = call float @dx.op.dot2.f32(i32 54, float %1715, float %1716, float %1273, float %1274)  ; Dot2(ax,ay,bx,by)
  %1740 = call float @dx.op.dot2.f32(i32 54, float %1715, float %1716, float %1275, float %1276)  ; Dot2(ax,ay,bx,by)
  br label %1741

; <label>:1741                                    ; preds = %1737, %1647
  %1742 = phi float [ %1738, %1737 ], [ 0x3FD6666660000000, %1647 ]
  %1743 = phi float [ %1739, %1737 ], [ 0.000000e+00, %1647 ]
  %1744 = phi float [ %1740, %1737 ], [ 0.000000e+00, %1647 ]
  %1745 = phi float [ %1681, %1737 ], [ 1.000000e+00, %1647 ]
  %1746 = add i32 %53, 176
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = lshr i32 %1748, 22
  %1750 = shl nuw nsw i32 %1749, 5
  %1751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1750)  ; LegacyF16ToF32(value)
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 64
  %1755 = icmp eq i32 %1754, 0
  br i1 %1755, label %1789, label %1756

; <label>:1756                                    ; preds = %1741
  %1757 = add i32 %53, 444
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = add i32 %1759, 0
  %1761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 131072
  %1765 = icmp eq i32 %1764, 0
  %1766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1761, %dx.types.Handle %106, float %1369, float %1370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = extractvalue %dx.types.ResRet.f32 %1766, 1
  %1769 = extractvalue %dx.types.ResRet.f32 %1766, 2
  %1770 = fmul fast float %383, %1767
  %1771 = fmul fast float %384, %1768
  %1772 = fmul fast float %385, %1769
  br i1 %1765, label %1779, label %1773

; <label>:1773                                    ; preds = %1756
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1776 = fmul fast float %1775, %1770
  %1777 = fmul fast float %1775, %1771
  %1778 = fmul fast float %1775, %1772
  br label %1779

; <label>:1779                                    ; preds = %1773, %1756
  %1780 = phi float [ %1776, %1773 ], [ %1770, %1756 ]
  %1781 = phi float [ %1777, %1773 ], [ %1771, %1756 ]
  %1782 = phi float [ %1778, %1773 ], [ %1772, %1756 ]
  %1783 = fmul fast float %1780, %1751
  %1784 = select i1 %265, float %1783, float %1780
  %1785 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1781, float %1782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1786 = select i1 %265, float 0.000000e+00, float %1780
  %1787 = select i1 %265, float %1785, float %1781
  %1788 = select i1 %265, float 0.000000e+00, float %1782
  br label %1789

; <label>:1789                                    ; preds = %1779, %1741
  %1790 = phi float [ %1786, %1779 ], [ 0.000000e+00, %1741 ]
  %1791 = phi float [ %1787, %1779 ], [ 0.000000e+00, %1741 ]
  %1792 = phi float [ %1788, %1779 ], [ 0.000000e+00, %1741 ]
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = add i32 %53, 112
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = lshr i32 %1797, 8
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = fmul fast float %1802, %1803
  %1805 = fadd fast float %1804, %1799
  %1806 = fmul fast float %1805, 0x3F70101020000000
  %1807 = call float @dx.op.unary.f32(i32 7, float %1806)  ; Saturate(value)
  br i1 %1261, label %1808, label %1816

; <label>:1808                                    ; preds = %1789
  %1809 = fsub fast float 1.000000e+00, %1442
  %1810 = fmul fast float %1809, %1249
  %1811 = fmul fast float %1809, %1250
  %1812 = fmul fast float %1809, %1251
  %1813 = fmul fast float %1809, %1252
  %1814 = fmul fast float %1809, %1253
  %1815 = fmul fast float %1809, %1254
  br label %1816

; <label>:1816                                    ; preds = %1808, %1789
  %1817 = phi float [ %1810, %1808 ], [ %1249, %1789 ]
  %1818 = phi float [ %1811, %1808 ], [ %1250, %1789 ]
  %1819 = phi float [ %1812, %1808 ], [ %1251, %1789 ]
  %1820 = phi float [ %1813, %1808 ], [ %1252, %1789 ]
  %1821 = phi float [ %1814, %1808 ], [ %1253, %1789 ]
  %1822 = phi float [ %1815, %1808 ], [ %1254, %1789 ]
  %1823 = and i32 %1794, 3
  %1824 = icmp eq i32 %1823, 3
  br i1 %1824, label %1903, label %1825

; <label>:1825                                    ; preds = %1816
  %1826 = and i32 %1794, 16
  %1827 = icmp ne i32 %1826, 0
  %1828 = select i1 %1827, float %1442, float 0.000000e+00
  %1829 = icmp eq i32 %1823, 0
  br i1 %1829, label %1830, label %1858

; <label>:1830                                    ; preds = %1825
  %1831 = and i32 %1794, 64
  %1832 = icmp ne i32 %1831, 0
  %1833 = select i1 %1832, float %1442, float 0.000000e+00
  %1834 = fsub fast float %1662, %1817
  %1835 = fsub fast float %1663, %1818
  %1836 = fsub fast float %1664, %1819
  %1837 = fmul fast float %1828, %1834
  %1838 = fmul fast float %1828, %1835
  %1839 = fmul fast float %1828, %1836
  %1840 = fadd fast float %1837, %1817
  %1841 = fadd fast float %1838, %1818
  %1842 = fadd fast float %1839, %1819
  %1843 = fsub fast float %1648, %1255
  %1844 = fmul fast float %1828, %1843
  %1845 = fadd fast float %1844, %1255
  %1846 = fsub fast float %1790, %1820
  %1847 = fsub fast float %1791, %1821
  %1848 = fsub fast float %1792, %1822
  %1849 = fmul fast float %1833, %1846
  %1850 = fmul fast float %1833, %1847
  %1851 = fmul fast float %1833, %1848
  %1852 = fadd fast float %1849, %1820
  %1853 = fadd fast float %1850, %1821
  %1854 = fadd fast float %1851, %1822
  %1855 = fsub fast float %1807, %1259
  %1856 = fmul fast float %1828, %1855
  %1857 = fadd fast float %1856, %1259
  br label %1903

; <label>:1858                                    ; preds = %1825
  %1859 = icmp eq i32 %1823, 1
  br i1 %1859, label %1860, label %1873

; <label>:1860                                    ; preds = %1858
  %1861 = fadd fast float %1662, -1.000000e+00
  %1862 = fadd fast float %1663, -1.000000e+00
  %1863 = fadd fast float %1664, -1.000000e+00
  %1864 = fmul fast float %1828, %1861
  %1865 = fmul fast float %1828, %1862
  %1866 = fmul fast float %1828, %1863
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fadd fast float %1865, 1.000000e+00
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fmul fast float %1867, %1817
  %1871 = fmul fast float %1868, %1818
  %1872 = fmul fast float %1869, %1819
  br label %1903

; <label>:1873                                    ; preds = %1858
  %1874 = icmp eq i32 %1823, 2
  br i1 %1874, label %1875, label %1903

; <label>:1875                                    ; preds = %1873
  %1876 = call float @dx.op.unary.f32(i32 24, float %1662)  ; Sqrt(value)
  %1877 = call float @dx.op.unary.f32(i32 24, float %1663)  ; Sqrt(value)
  %1878 = call float @dx.op.unary.f32(i32 24, float %1664)  ; Sqrt(value)
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fadd fast float %1877, -5.000000e-01
  %1881 = fadd fast float %1878, -5.000000e-01
  %1882 = fmul fast float %1879, %1828
  %1883 = fmul fast float %1880, %1828
  %1884 = fmul fast float %1881, %1828
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fmul fast float %1885, 2.000000e+00
  %1889 = fsub fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1817
  %1891 = fadd fast float %1890, %1888
  %1892 = fmul fast float %1891, %1817
  %1893 = fmul fast float %1886, 2.000000e+00
  %1894 = fsub fast float 1.000000e+00, %1893
  %1895 = fmul fast float %1894, %1818
  %1896 = fadd fast float %1895, %1893
  %1897 = fmul fast float %1896, %1818
  %1898 = fmul fast float %1887, 2.000000e+00
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1899, %1819
  %1901 = fadd fast float %1900, %1898
  %1902 = fmul fast float %1901, %1819
  br label %1903

; <label>:1903                                    ; preds = %1875, %1873, %1860, %1830, %1816
  %1904 = phi float [ %1817, %1816 ], [ %1892, %1875 ], [ %1817, %1873 ], [ %1870, %1860 ], [ %1840, %1830 ]
  %1905 = phi float [ %1818, %1816 ], [ %1897, %1875 ], [ %1818, %1873 ], [ %1871, %1860 ], [ %1841, %1830 ]
  %1906 = phi float [ %1819, %1816 ], [ %1902, %1875 ], [ %1819, %1873 ], [ %1872, %1860 ], [ %1842, %1830 ]
  %1907 = phi float [ %1820, %1816 ], [ %1820, %1875 ], [ %1820, %1873 ], [ %1820, %1860 ], [ %1852, %1830 ]
  %1908 = phi float [ %1821, %1816 ], [ %1821, %1875 ], [ %1821, %1873 ], [ %1821, %1860 ], [ %1853, %1830 ]
  %1909 = phi float [ %1822, %1816 ], [ %1822, %1875 ], [ %1822, %1873 ], [ %1822, %1860 ], [ %1854, %1830 ]
  %1910 = phi float [ %1255, %1816 ], [ %1255, %1875 ], [ %1255, %1873 ], [ %1255, %1860 ], [ %1845, %1830 ]
  %1911 = phi float [ %1259, %1816 ], [ %1259, %1875 ], [ %1259, %1873 ], [ %1259, %1860 ], [ %1857, %1830 ]
  %1912 = and i32 %1794, 12
  %1913 = icmp eq i32 %1912, 12
  br i1 %1913, label %1986, label %1914

; <label>:1914                                    ; preds = %1903
  %1915 = and i32 %1794, 2097184
  %1916 = icmp eq i32 %1915, 2097184
  %1917 = select i1 %1916, float %1442, float 0.000000e+00
  %1918 = and i32 %1794, 4194336
  %1919 = icmp eq i32 %1918, 4194336
  %1920 = select i1 %1919, float %1442, float 0.000000e+00
  %1921 = and i32 %1794, 8388640
  %1922 = icmp eq i32 %1921, 8388640
  %1923 = select i1 %1922, float %1442, float 0.000000e+00
  %1924 = icmp eq i32 %1912, 0
  br i1 %1924, label %1925, label %1938

; <label>:1925                                    ; preds = %1914
  %1926 = fsub fast float %1743, %1247
  %1927 = fsub fast float %1744, %1248
  %1928 = fmul fast float %1917, %1926
  %1929 = fmul fast float %1917, %1927
  %1930 = fadd fast float %1928, %1247
  %1931 = fadd fast float %1929, %1248
  %1932 = fsub fast float %1745, %1258
  %1933 = fmul fast float %1920, %1932
  %1934 = fadd fast float %1933, %1258
  %1935 = fsub fast float %1742, %1257
  %1936 = fmul fast float %1923, %1935
  %1937 = fadd fast float %1936, %1257
  br label %1986

; <label>:1938                                    ; preds = %1914
  %1939 = icmp eq i32 %1912, 4
  br i1 %1939, label %1940, label %1972

; <label>:1940                                    ; preds = %1938
  %1941 = fmul fast float %1917, %1743
  %1942 = fmul fast float %1917, %1744
  %1943 = fadd fast float %1941, %1247
  %1944 = fadd fast float %1942, %1248
  %1945 = call float @dx.op.binary.f32(i32 36, float %1258, float %1745)  ; FMin(a,b)
  %1946 = fsub fast float %1945, %1258
  %1947 = fmul fast float %1946, %1920
  %1948 = fadd fast float %1947, %1258
  %1949 = fadd fast float %1742, %1257
  %1950 = fmul fast float %1949, 0x3FF337FAE0000000
  %1951 = fmul fast float %1257, %1257
  %1952 = fmul fast float %1742, %1742
  %1953 = fadd fast float %1952, %1951
  %1954 = fmul fast float %1953, 0x3FE5152B00000000
  %1955 = fmul fast float %1257, 0xBFCC1F85E0000000
  %1956 = fmul fast float %1955, %1742
  %1957 = fadd fast float %1956, 0xBFE1363700000000
  %1958 = fadd fast float %1957, %1950
  %1959 = fsub fast float %1958, %1954
  %1960 = fmul fast float %1949, 0x3FBA6F0D00000000
  %1961 = fmul fast float %1953, 0x3FD0432880000000
  %1962 = fmul fast float %1257, 0xBFEF110800000000
  %1963 = fmul fast float %1962, %1742
  %1964 = fadd fast float %1963, 1.000000e+00
  %1965 = fsub fast float %1964, %1960
  %1966 = fadd fast float %1965, %1961
  %1967 = fdiv fast float %1959, %1966
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fsub fast float %1968, %1257
  %1970 = fmul fast float %1969, %1923
  %1971 = fadd fast float %1970, %1257
  br label %1986

; <label>:1972                                    ; preds = %1938
  %1973 = icmp eq i32 %1912, 8
  br i1 %1973, label %1974, label %1986

; <label>:1974                                    ; preds = %1972
  %1975 = fmul fast float %1917, %1743
  %1976 = fmul fast float %1917, %1744
  %1977 = fadd fast float %1975, %1247
  %1978 = fadd fast float %1976, %1248
  %1979 = call float @dx.op.binary.f32(i32 36, float %1258, float %1745)  ; FMin(a,b)
  %1980 = fsub fast float %1979, %1258
  %1981 = fmul fast float %1980, %1920
  %1982 = fadd fast float %1981, %1258
  %1983 = fsub fast float %1742, %1257
  %1984 = fmul fast float %1923, %1983
  %1985 = fadd fast float %1984, %1257
  br label %1986

; <label>:1986                                    ; preds = %1974, %1972, %1940, %1925, %1903, %1441, %1260, %1246
  %1987 = phi float [ %1247, %1903 ], [ %1247, %1441 ], [ %1247, %1246 ], [ %1977, %1974 ], [ %1247, %1972 ], [ %1943, %1940 ], [ %1930, %1925 ], [ %1247, %1260 ]
  %1988 = phi float [ %1248, %1903 ], [ %1248, %1441 ], [ %1248, %1246 ], [ %1978, %1974 ], [ %1248, %1972 ], [ %1944, %1940 ], [ %1931, %1925 ], [ %1248, %1260 ]
  %1989 = phi float [ %1904, %1903 ], [ %1249, %1441 ], [ %1249, %1246 ], [ %1904, %1974 ], [ %1904, %1972 ], [ %1904, %1940 ], [ %1904, %1925 ], [ %1249, %1260 ]
  %1990 = phi float [ %1905, %1903 ], [ %1250, %1441 ], [ %1250, %1246 ], [ %1905, %1974 ], [ %1905, %1972 ], [ %1905, %1940 ], [ %1905, %1925 ], [ %1250, %1260 ]
  %1991 = phi float [ %1906, %1903 ], [ %1251, %1441 ], [ %1251, %1246 ], [ %1906, %1974 ], [ %1906, %1972 ], [ %1906, %1940 ], [ %1906, %1925 ], [ %1251, %1260 ]
  %1992 = phi float [ %1907, %1903 ], [ %1252, %1441 ], [ %1252, %1246 ], [ %1907, %1974 ], [ %1907, %1972 ], [ %1907, %1940 ], [ %1907, %1925 ], [ %1252, %1260 ]
  %1993 = phi float [ %1908, %1903 ], [ %1253, %1441 ], [ %1253, %1246 ], [ %1908, %1974 ], [ %1908, %1972 ], [ %1908, %1940 ], [ %1908, %1925 ], [ %1253, %1260 ]
  %1994 = phi float [ %1909, %1903 ], [ %1254, %1441 ], [ %1254, %1246 ], [ %1909, %1974 ], [ %1909, %1972 ], [ %1909, %1940 ], [ %1909, %1925 ], [ %1254, %1260 ]
  %1995 = phi float [ %1910, %1903 ], [ %1255, %1441 ], [ %1255, %1246 ], [ %1910, %1974 ], [ %1910, %1972 ], [ %1910, %1940 ], [ %1910, %1925 ], [ %1255, %1260 ]
  %1996 = phi float [ %1257, %1903 ], [ %1257, %1441 ], [ %1257, %1246 ], [ %1985, %1974 ], [ %1257, %1972 ], [ %1971, %1940 ], [ %1937, %1925 ], [ %1257, %1260 ]
  %1997 = phi float [ %1258, %1903 ], [ %1258, %1441 ], [ %1258, %1246 ], [ %1982, %1974 ], [ %1258, %1972 ], [ %1948, %1940 ], [ %1934, %1925 ], [ %1258, %1260 ]
  %1998 = phi float [ %1911, %1903 ], [ %1259, %1441 ], [ %1259, %1246 ], [ %1911, %1974 ], [ %1911, %1972 ], [ %1911, %1940 ], [ %1911, %1925 ], [ %1259, %1260 ]
  br i1 %647, label %2725, label %1999

; <label>:1999                                    ; preds = %1986
  %2000 = icmp ult i32 %703, 3
  %2001 = add i32 %53, 56
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = add i32 %53, 60
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = or i32 %2006, %2003
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2725, label %2009

; <label>:2009                                    ; preds = %1999
  %2010 = and i32 %2003, 262144
  %2011 = icmp ne i32 %2010, 0
  %2012 = select i1 %2011, float %60, float 1.000000e+00
  %2013 = select i1 %2011, float %61, float 0.000000e+00
  %2014 = select i1 %2011, float %62, float 0.000000e+00
  %2015 = select i1 %2011, float %63, float 1.000000e+00
  %2016 = select i1 %2011, float %64, float %92
  %2017 = select i1 %2011, float %65, float %93
  %2018 = add i32 %53, 316
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = lshr i32 %2020, 16
  %2022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2021)  ; LegacyF16ToF32(value)
  %2023 = fmul fast float %2022, 0x3F50624DE0000000
  %2024 = add i32 %53, 120
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = lshr i32 %2026, 16
  %2028 = and i32 %2027, 255
  %2029 = lshr i32 %2026, 24
  %2030 = add i32 %53, 324
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %2032, 65535
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = lshr i32 %2032, 16
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = add i32 %53, 64
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = lshr i32 %2039, 22
  %2041 = shl nuw nsw i32 %2040, 5
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = shl i32 %2039, 4
  %2044 = and i32 %2043, 32752
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = lshr i32 %2039, 7
  %2047 = and i32 %2046, 32752
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 3
  %2051 = fmul fast float %2050, 1.000000e+03
  %2052 = fmul fast float %2051, %531
  %2053 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2054 = fadd fast float %2053, %519
  %2055 = fmul fast float %2051, %533
  %2056 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2057 = fadd fast float %2056, %520
  %2058 = fmul fast float %2023, %2051
  %2059 = call float @dx.op.unary.f32(i32 22, float %2058)  ; Frc(value)
  %2060 = fmul fast float %2059, 0x401921FB60000000
  %2061 = fadd fast float %2060, %2042
  %2062 = call float @dx.op.unary.f32(i32 13, float %2061)  ; Sin(value)
  %2063 = call float @dx.op.unary.f32(i32 12, float %2061)  ; Cos(value)
  %2064 = fsub fast float -0.000000e+00, %2062
  %2065 = fadd fast float %2016, -5.000000e-01
  %2066 = fadd fast float %2017, -5.000000e-01
  %2067 = fmul fast float %2034, %2065
  %2068 = fmul fast float %2036, %2066
  %2069 = fadd fast float %2067, 5.000000e-01
  %2070 = fadd fast float %2068, 5.000000e-01
  %2071 = fmul fast float %2045, %2069
  %2072 = fmul fast float %2048, %2070
  %2073 = fmul fast float %2063, %2071
  %2074 = call float @dx.op.tertiary.f32(i32 46, float %2064, float %2072, float %2073)  ; FMad(a,b,c)
  %2075 = fmul fast float %2062, %2071
  %2076 = call float @dx.op.tertiary.f32(i32 46, float %2063, float %2072, float %2075)  ; FMad(a,b,c)
  %2077 = fadd fast float %2054, %2074
  %2078 = fadd fast float %2057, %2076
  %2079 = icmp ugt i32 %2028, 1
  %2080 = icmp ugt i32 %2026, 33554431
  %2081 = or i1 %2080, %2079
  br i1 %2081, label %2082, label %2107

; <label>:2082                                    ; preds = %2009
  %2083 = add i32 %53, 260
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = lshr i32 %2085, 16
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = fmul fast float %2050, %2087
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = mul nuw nsw i32 %2028, %2029
  %2091 = uitofp i32 %2090 to float
  %2092 = fmul fast float %2089, %2091
  %2093 = call float @dx.op.unary.f32(i32 27, float %2092)  ; Round_ni(value)
  %2094 = fptoui float %2093 to i32
  %2095 = urem i32 %2094, %2028
  %2096 = udiv i32 %2094, %2029
  %2097 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2098 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2099 = uitofp i32 %2095 to float
  %2100 = uitofp i32 %2096 to float
  %2101 = fadd fast float %2097, %2099
  %2102 = fadd fast float %2098, %2100
  %2103 = uitofp i32 %2028 to float
  %2104 = uitofp i32 %2029 to float
  %2105 = fdiv fast float %2101, %2103
  %2106 = fdiv fast float %2102, %2104
  br label %2107

; <label>:2107                                    ; preds = %2082, %2009
  %2108 = phi float [ %2105, %2082 ], [ %2077, %2009 ]
  %2109 = phi float [ %2106, %2082 ], [ %2078, %2009 ]
  %2110 = and i32 %2003, 256
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2158, label %2112

; <label>:2112                                    ; preds = %2107
  %2113 = add i32 %53, 480
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %2115, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2117, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = add i32 %53, 132
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2120, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = shl i32 %2122, 4
  %2124 = and i32 %2123, 32752
  %2125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2124)  ; LegacyF16ToF32(value)
  %2126 = lshr i32 %2122, 7
  %2127 = and i32 %2126, 32752
  %2128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2127)  ; LegacyF16ToF32(value)
  %2129 = fsub fast float 1.000000e+00, %699
  %2130 = call float @dx.op.binary.f32(i32 35, float %2129, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2131 = bitcast float %699 to i32
  %2132 = sitofp i32 %2131 to float
  %2133 = fadd fast float %2132, 0xC1CFBF8940000000
  %2134 = fmul fast float %2128, %2133
  %2135 = fadd fast float %2134, 0x41CFBF8940000000
  %2136 = fptosi float %2135 to i32
  %2137 = bitcast i32 %2136 to float
  %2138 = bitcast float %2130 to i32
  %2139 = sitofp i32 %2138 to float
  %2140 = fadd fast float %2139, 0xC1CFBF8940000000
  %2141 = fmul fast float %2140, %2128
  %2142 = fadd fast float %2141, 0x41CFBF8940000000
  %2143 = fptosi float %2142 to i32
  %2144 = bitcast i32 %2143 to float
  %2145 = fmul fast float %2137, %2125
  %2146 = fmul fast float %2144, %2125
  %2147 = fsub fast float %2130, %2145
  %2148 = fadd fast float %2146, %2130
  %2149 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2150 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2151 = fsub fast float %2119, %2149
  %2152 = fsub fast float %2150, %2149
  %2153 = bitcast float %2152 to i32
  %2154 = sub nsw i32 2129859010, %2153
  %2155 = bitcast i32 %2154 to float
  %2156 = fmul fast float %2155, %2151
  %2157 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  br label %2158

; <label>:2158                                    ; preds = %2112, %2107
  %2159 = phi float [ %2157, %2112 ], [ %699, %2107 ]
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = and i32 %2161, 128
  %2163 = icmp eq i32 %2162, 0
  br i1 %2163, label %2180, label %2164

; <label>:2164                                    ; preds = %2158
  %2165 = add i32 %53, 464
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = add i32 %2167, 0
  %2169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2169, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = and i32 %2173, 524288
  %2175 = icmp ne i32 %2174, 0
  %2176 = fcmp fast ogt float %2171, 0x3FE0101020000000
  %2177 = select i1 %2176, float 1.000000e+00, float 0.000000e+00
  %2178 = select i1 %2175, float %2177, float %2171
  %2179 = fmul fast float %2178, %2159
  br label %2180

; <label>:2180                                    ; preds = %2164, %2158
  %2181 = phi float [ %2179, %2164 ], [ %2159, %2158 ]
  %2182 = fcmp fast ult float %2181, 0x3F70101020000000
  br i1 %2182, label %2725, label %2183

; <label>:2183                                    ; preds = %2180
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = and i32 %2185, 16
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2386, label %2188

; <label>:2188                                    ; preds = %2183
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = add i32 %53, 416
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = add i32 %2193, 0
  %2195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2195, %dx.types.Handle %106, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2197 = extractvalue %dx.types.ResRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.ResRet.f32 %2196, 1
  %2199 = extractvalue %dx.types.ResRet.f32 %2196, 2
  %2200 = extractvalue %dx.types.ResRet.f32 %2196, 3
  %2201 = and i32 %2190, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = lshr i32 %2190, 8
  %2204 = and i32 %2203, 255
  %2205 = uitofp i32 %2204 to float
  %2206 = fmul fast float %2200, %2202
  %2207 = fadd fast float %2206, %2205
  %2208 = fmul fast float %2207, 0x3F70101000000000
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 512
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2221, label %2213

; <label>:2213                                    ; preds = %2188
  %2214 = add i32 %53, 500
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = add i32 %2216, 0
  %2218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2218, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2220 = extractvalue %dx.types.ResRet.f32 %2219, 0
  br label %2221

; <label>:2221                                    ; preds = %2213, %2188
  %2222 = phi float [ %2220, %2213 ], [ 1.000000e+00, %2188 ]
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 33554432
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2333, label %2227

; <label>:2227                                    ; preds = %2221
  %2228 = add i32 %53, 256
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = and i32 %2230, 65535
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = lshr i32 %2230, 16
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = add i32 %53, 260
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = and i32 %2237, 65535
  %2239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2238)  ; LegacyF16ToF32(value)
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = lshr i32 %2241, 24
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2243, 0x3F70101020000000
  %2245 = and i32 %2241, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101020000000
  %2248 = lshr i32 %2241, 8
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = lshr i32 %2241, 16
  %2253 = and i32 %2252, 255
  %2254 = uitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3F70101020000000
  %2256 = add i32 %53, 252
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = lshr i32 %2258, 24
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = and i32 %2258, 255
  %2263 = uitofp i32 %2262 to float
  %2264 = fmul fast float %2263, 0x3F70101020000000
  %2265 = lshr i32 %2258, 8
  %2266 = and i32 %2265, 255
  %2267 = uitofp i32 %2266 to float
  %2268 = fmul fast float %2267, 0x3F70101020000000
  %2269 = lshr i32 %2258, 16
  %2270 = and i32 %2269, 255
  %2271 = uitofp i32 %2270 to float
  %2272 = fmul fast float %2271, 0x3F70101020000000
  %2273 = bitcast float %2197 to i32
  %2274 = ashr i32 %2273, 1
  %2275 = sub nsw i32 1597463174, %2274
  %2276 = bitcast i32 %2275 to float
  %2277 = fmul fast float %2197, 5.000000e-01
  %2278 = fmul fast float %2276, %2276
  %2279 = fmul fast float %2278, %2277
  %2280 = fsub fast float 1.500000e+00, %2279
  %2281 = fmul fast float %2276, %2197
  %2282 = fmul fast float %2281, %2280
  %2283 = bitcast float %2198 to i32
  %2284 = ashr i32 %2283, 1
  %2285 = sub nsw i32 1597463174, %2284
  %2286 = bitcast i32 %2285 to float
  %2287 = fmul fast float %2198, 5.000000e-01
  %2288 = fmul fast float %2286, %2286
  %2289 = fmul fast float %2288, %2287
  %2290 = fsub fast float 1.500000e+00, %2289
  %2291 = fmul fast float %2286, %2198
  %2292 = fmul fast float %2291, %2290
  %2293 = bitcast float %2199 to i32
  %2294 = ashr i32 %2293, 1
  %2295 = sub nsw i32 1597463174, %2294
  %2296 = bitcast i32 %2295 to float
  %2297 = fmul fast float %2199, 5.000000e-01
  %2298 = fmul fast float %2296, %2296
  %2299 = fmul fast float %2298, %2297
  %2300 = fsub fast float 1.500000e+00, %2299
  %2301 = fmul fast float %2296, %2199
  %2302 = fmul fast float %2301, %2300
  %2303 = fsub fast float %2282, %2264
  %2304 = fsub fast float %2292, %2268
  %2305 = fsub fast float %2302, %2272
  %2306 = fmul fast float %2303, %2232
  %2307 = fmul fast float %2304, %2234
  %2308 = fmul fast float %2305, %2239
  %2309 = fadd fast float %2306, %2247
  %2310 = fadd fast float %2307, %2251
  %2311 = fadd fast float %2308, %2255
  %2312 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2313 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2314 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2315 = fmul fast float %2312, %2312
  %2316 = fmul fast float %2313, %2313
  %2317 = fmul fast float %2314, %2314
  %2318 = fsub fast float %2315, %2197
  %2319 = fsub fast float %2316, %2198
  %2320 = fsub fast float %2317, %2199
  %2321 = fmul fast float %2318, %2222
  %2322 = fmul fast float %2319, %2222
  %2323 = fmul fast float %2320, %2222
  %2324 = fadd fast float %2321, %2197
  %2325 = fadd fast float %2322, %2198
  %2326 = fadd fast float %2323, %2199
  %2327 = fadd fast float %2244, %2208
  %2328 = fsub fast float %2327, %2261
  %2329 = call float @dx.op.unary.f32(i32 7, float %2328)  ; Saturate(value)
  %2330 = fsub fast float %2329, %2208
  %2331 = fmul fast float %2330, %2222
  %2332 = fadd fast float %2331, %2208
  br label %2386

; <label>:2333                                    ; preds = %2221
  %2334 = and i32 %2224, 134217728
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2370, label %2336

; <label>:2336                                    ; preds = %2333
  %2337 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %2338 = call float @dx.op.unary.f32(i32 24, float %508)  ; Sqrt(value)
  %2339 = call float @dx.op.unary.f32(i32 24, float %509)  ; Sqrt(value)
  %2340 = fadd fast float %2337, -5.000000e-01
  %2341 = fadd fast float %2338, -5.000000e-01
  %2342 = fadd fast float %2339, -5.000000e-01
  %2343 = fmul fast float %2340, %2222
  %2344 = fmul fast float %2341, %2222
  %2345 = fmul fast float %2342, %2222
  %2346 = fadd fast float %2343, 5.000000e-01
  %2347 = fadd fast float %2344, 5.000000e-01
  %2348 = fadd fast float %2345, 5.000000e-01
  %2349 = call float @dx.op.unary.f32(i32 24, float %2197)  ; Sqrt(value)
  %2350 = call float @dx.op.unary.f32(i32 24, float %2198)  ; Sqrt(value)
  %2351 = call float @dx.op.unary.f32(i32 24, float %2199)  ; Sqrt(value)
  %2352 = fmul fast float %2346, 2.000000e+00
  %2353 = fsub fast float 1.000000e+00, %2352
  %2354 = fmul fast float %2353, %2349
  %2355 = fadd fast float %2354, %2352
  %2356 = fmul fast float %2355, %2349
  %2357 = fmul fast float %2347, 2.000000e+00
  %2358 = fsub fast float 1.000000e+00, %2357
  %2359 = fmul fast float %2358, %2350
  %2360 = fadd fast float %2359, %2357
  %2361 = fmul fast float %2360, %2350
  %2362 = fmul fast float %2348, 2.000000e+00
  %2363 = fsub fast float 1.000000e+00, %2362
  %2364 = fmul fast float %2363, %2351
  %2365 = fadd fast float %2364, %2362
  %2366 = fmul fast float %2365, %2351
  %2367 = fmul fast float %2356, %2356
  %2368 = fmul fast float %2361, %2361
  %2369 = fmul fast float %2366, %2366
  br label %2386

; <label>:2370                                    ; preds = %2333
  %2371 = fmul fast float %507, %507
  %2372 = fmul fast float %508, %508
  %2373 = fmul fast float %509, %509
  %2374 = fadd fast float %2371, -1.000000e+00
  %2375 = fadd fast float %2372, -1.000000e+00
  %2376 = fadd fast float %2373, -1.000000e+00
  %2377 = fmul fast float %2222, %2374
  %2378 = fmul fast float %2222, %2375
  %2379 = fmul fast float %2222, %2376
  %2380 = fadd fast float %2377, 1.000000e+00
  %2381 = fadd fast float %2378, 1.000000e+00
  %2382 = fadd fast float %2379, 1.000000e+00
  %2383 = fmul fast float %2380, %2197
  %2384 = fmul fast float %2381, %2198
  %2385 = fmul fast float %2382, %2199
  br label %2386

; <label>:2386                                    ; preds = %2370, %2336, %2227, %2183
  %2387 = phi float [ %2332, %2227 ], [ %2208, %2336 ], [ %2208, %2370 ], [ 0x3FA23C0BE0000000, %2183 ]
  %2388 = phi float [ %2324, %2227 ], [ %2367, %2336 ], [ %2383, %2370 ], [ 1.000000e+00, %2183 ]
  %2389 = phi float [ %2325, %2227 ], [ %2368, %2336 ], [ %2384, %2370 ], [ 1.000000e+00, %2183 ]
  %2390 = phi float [ %2326, %2227 ], [ %2369, %2336 ], [ %2385, %2370 ], [ 1.000000e+00, %2183 ]
  %2391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2392 = extractvalue %dx.types.CBufRet.i32 %2391, 1
  %2393 = and i32 %2392, 1
  %2394 = icmp ne i32 %2393, 0
  %2395 = add i32 %53, 356
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = and i32 %2397, 32
  %2399 = icmp ne i32 %2398, 0
  %2400 = and i1 %2394, %2399
  %2401 = select i1 %2400, float 1.000000e+00, float %2388
  %2402 = select i1 %2400, float 0x3FD3333340000000, float %2389
  %2403 = select i1 %2400, float 0x3FD3333340000000, float %2390
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = and i32 %2405, 32
  %2407 = icmp eq i32 %2406, 0
  br i1 %2407, label %2480, label %2408

; <label>:2408                                    ; preds = %2386
  %2409 = add i32 %53, 124
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = add i32 %53, 432
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2412, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = add i32 %2414, 0
  %2416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2416, %dx.types.Handle %106, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2418 = extractvalue %dx.types.ResRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.ResRet.f32 %2417, 1
  %2420 = extractvalue %dx.types.ResRet.f32 %2417, 2
  %2421 = extractvalue %dx.types.ResRet.f32 %2417, 3
  %2422 = and i32 %2411, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = lshr i32 %2411, 8
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = lshr i32 %2411, 16
  %2428 = and i32 %2427, 255
  %2429 = uitofp i32 %2428 to float
  %2430 = fmul fast float %2429, 0x3F70101000000000
  %2431 = fmul fast float %2418, %2423
  %2432 = fadd fast float %2431, %2426
  %2433 = fmul fast float %2432, 0x3F70101000000000
  %2434 = fadd fast float %2419, -5.000000e-01
  %2435 = fadd fast float %2421, -5.000000e-01
  %2436 = fmul fast float %2434, %2430
  %2437 = fmul fast float %2435, %2430
  %2438 = fadd fast float %2436, 5.000000e-01
  %2439 = fadd fast float %2437, 5.000000e-01
  %2440 = fmul fast float %2438, 2.000000e+00
  %2441 = fadd fast float %2440, -1.000000e+00
  %2442 = fmul fast float %2439, 2.000000e+00
  %2443 = fadd fast float %2442, -1.000000e+00
  %2444 = fadd fast float %2441, %2443
  %2445 = fmul fast float %2444, 5.000000e-01
  %2446 = fsub fast float %2441, %2443
  %2447 = fmul fast float %2446, 5.000000e-01
  %2448 = call float @dx.op.unary.f32(i32 6, float %2445)  ; FAbs(value)
  %2449 = fsub fast float 1.000000e+00, %2448
  %2450 = call float @dx.op.unary.f32(i32 6, float %2447)  ; FAbs(value)
  %2451 = fsub fast float %2449, %2450
  %2452 = call float @dx.op.dot3.f32(i32 55, float %2445, float %2447, float %2451, float %2445, float %2447, float %2451)  ; Dot3(ax,ay,az,bx,by,bz)
  %2453 = call float @dx.op.unary.f32(i32 25, float %2452)  ; Rsqrt(value)
  %2454 = fmul fast float %2445, %2453
  %2455 = fmul fast float %2447, %2453
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %2457, 67108864
  %2459 = icmp eq i32 %2458, 0
  br i1 %2459, label %2476, label %2460

; <label>:2460                                    ; preds = %2408
  %2461 = add i32 %53, 312
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 65535
  %2465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2464)  ; LegacyF16ToF32(value)
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 65535
  %2469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2468)  ; LegacyF16ToF32(value)
  %2470 = lshr i32 %2463, 16
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = fsub fast float %2433, %2471
  %2473 = fmul fast float %2472, %2465
  %2474 = fadd fast float %2473, %2469
  %2475 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  br label %2476

; <label>:2476                                    ; preds = %2460, %2408
  %2477 = phi float [ %2475, %2460 ], [ %2433, %2408 ]
  %2478 = call float @dx.op.dot2.f32(i32 54, float %2454, float %2455, float %2012, float %2013)  ; Dot2(ax,ay,bx,by)
  %2479 = call float @dx.op.dot2.f32(i32 54, float %2454, float %2455, float %2014, float %2015)  ; Dot2(ax,ay,bx,by)
  br label %2480

; <label>:2480                                    ; preds = %2476, %2386
  %2481 = phi float [ %2477, %2476 ], [ 0x3FD6666660000000, %2386 ]
  %2482 = phi float [ %2478, %2476 ], [ 0.000000e+00, %2386 ]
  %2483 = phi float [ %2479, %2476 ], [ 0.000000e+00, %2386 ]
  %2484 = phi float [ %2420, %2476 ], [ 1.000000e+00, %2386 ]
  %2485 = add i32 %53, 192
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = lshr i32 %2487, 22
  %2489 = shl nuw nsw i32 %2488, 5
  %2490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2489)  ; LegacyF16ToF32(value)
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = and i32 %2492, 64
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %2528, label %2495

; <label>:2495                                    ; preds = %2480
  %2496 = add i32 %53, 448
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2496, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = add i32 %2498, 0
  %2500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 131072
  %2504 = icmp eq i32 %2503, 0
  %2505 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2500, %dx.types.Handle %106, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2506 = extractvalue %dx.types.ResRet.f32 %2505, 0
  %2507 = extractvalue %dx.types.ResRet.f32 %2505, 1
  %2508 = extractvalue %dx.types.ResRet.f32 %2505, 2
  %2509 = fmul fast float %490, %2506
  %2510 = fmul fast float %491, %2507
  %2511 = fmul fast float %492, %2508
  br i1 %2504, label %2518, label %2512

; <label>:2512                                    ; preds = %2495
  %2513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2513, 0
  %2515 = fmul fast float %2514, %2509
  %2516 = fmul fast float %2514, %2510
  %2517 = fmul fast float %2514, %2511
  br label %2518

; <label>:2518                                    ; preds = %2512, %2495
  %2519 = phi float [ %2515, %2512 ], [ %2509, %2495 ]
  %2520 = phi float [ %2516, %2512 ], [ %2510, %2495 ]
  %2521 = phi float [ %2517, %2512 ], [ %2511, %2495 ]
  %2522 = fmul fast float %2519, %2490
  %2523 = select i1 %265, float %2522, float %2519
  %2524 = call float @dx.op.dot3.f32(i32 55, float %2523, float %2520, float %2521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2525 = select i1 %265, float 0.000000e+00, float %2519
  %2526 = select i1 %265, float %2524, float %2520
  %2527 = select i1 %265, float 0.000000e+00, float %2521
  br label %2528

; <label>:2528                                    ; preds = %2518, %2480
  %2529 = phi float [ %2525, %2518 ], [ 0.000000e+00, %2480 ]
  %2530 = phi float [ %2526, %2518 ], [ 0.000000e+00, %2480 ]
  %2531 = phi float [ %2527, %2518 ], [ 0.000000e+00, %2480 ]
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %53, 128
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2536, 8
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2402, float %2403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2543 = fmul fast float %2541, %2542
  %2544 = fadd fast float %2543, %2538
  %2545 = fmul fast float %2544, 0x3F70101020000000
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  br i1 %2000, label %2547, label %2555

; <label>:2547                                    ; preds = %2528
  %2548 = fsub fast float 1.000000e+00, %2181
  %2549 = fmul fast float %2548, %1989
  %2550 = fmul fast float %2548, %1990
  %2551 = fmul fast float %2548, %1991
  %2552 = fmul fast float %2548, %1992
  %2553 = fmul fast float %2548, %1993
  %2554 = fmul fast float %2548, %1994
  br label %2555

; <label>:2555                                    ; preds = %2547, %2528
  %2556 = phi float [ %2549, %2547 ], [ %1989, %2528 ]
  %2557 = phi float [ %2550, %2547 ], [ %1990, %2528 ]
  %2558 = phi float [ %2551, %2547 ], [ %1991, %2528 ]
  %2559 = phi float [ %2552, %2547 ], [ %1992, %2528 ]
  %2560 = phi float [ %2553, %2547 ], [ %1993, %2528 ]
  %2561 = phi float [ %2554, %2547 ], [ %1994, %2528 ]
  %2562 = and i32 %2533, 3
  %2563 = icmp eq i32 %2562, 3
  br i1 %2563, label %2642, label %2564

; <label>:2564                                    ; preds = %2555
  %2565 = and i32 %2533, 16
  %2566 = icmp ne i32 %2565, 0
  %2567 = select i1 %2566, float %2181, float 0.000000e+00
  %2568 = icmp eq i32 %2562, 0
  br i1 %2568, label %2569, label %2597

; <label>:2569                                    ; preds = %2564
  %2570 = and i32 %2533, 64
  %2571 = icmp ne i32 %2570, 0
  %2572 = select i1 %2571, float %2181, float 0.000000e+00
  %2573 = fsub fast float %2401, %2556
  %2574 = fsub fast float %2402, %2557
  %2575 = fsub fast float %2403, %2558
  %2576 = fmul fast float %2567, %2573
  %2577 = fmul fast float %2567, %2574
  %2578 = fmul fast float %2567, %2575
  %2579 = fadd fast float %2576, %2556
  %2580 = fadd fast float %2577, %2557
  %2581 = fadd fast float %2578, %2558
  %2582 = fsub fast float %2387, %1995
  %2583 = fmul fast float %2567, %2582
  %2584 = fadd fast float %2583, %1995
  %2585 = fsub fast float %2529, %2559
  %2586 = fsub fast float %2530, %2560
  %2587 = fsub fast float %2531, %2561
  %2588 = fmul fast float %2572, %2585
  %2589 = fmul fast float %2572, %2586
  %2590 = fmul fast float %2572, %2587
  %2591 = fadd fast float %2588, %2559
  %2592 = fadd fast float %2589, %2560
  %2593 = fadd fast float %2590, %2561
  %2594 = fsub fast float %2546, %1998
  %2595 = fmul fast float %2567, %2594
  %2596 = fadd fast float %2595, %1998
  br label %2642

; <label>:2597                                    ; preds = %2564
  %2598 = icmp eq i32 %2562, 1
  br i1 %2598, label %2599, label %2612

; <label>:2599                                    ; preds = %2597
  %2600 = fadd fast float %2401, -1.000000e+00
  %2601 = fadd fast float %2402, -1.000000e+00
  %2602 = fadd fast float %2403, -1.000000e+00
  %2603 = fmul fast float %2567, %2600
  %2604 = fmul fast float %2567, %2601
  %2605 = fmul fast float %2567, %2602
  %2606 = fadd fast float %2603, 1.000000e+00
  %2607 = fadd fast float %2604, 1.000000e+00
  %2608 = fadd fast float %2605, 1.000000e+00
  %2609 = fmul fast float %2606, %2556
  %2610 = fmul fast float %2607, %2557
  %2611 = fmul fast float %2608, %2558
  br label %2642

; <label>:2612                                    ; preds = %2597
  %2613 = icmp eq i32 %2562, 2
  br i1 %2613, label %2614, label %2642

; <label>:2614                                    ; preds = %2612
  %2615 = call float @dx.op.unary.f32(i32 24, float %2401)  ; Sqrt(value)
  %2616 = call float @dx.op.unary.f32(i32 24, float %2402)  ; Sqrt(value)
  %2617 = call float @dx.op.unary.f32(i32 24, float %2403)  ; Sqrt(value)
  %2618 = fadd fast float %2615, -5.000000e-01
  %2619 = fadd fast float %2616, -5.000000e-01
  %2620 = fadd fast float %2617, -5.000000e-01
  %2621 = fmul fast float %2618, %2567
  %2622 = fmul fast float %2619, %2567
  %2623 = fmul fast float %2620, %2567
  %2624 = fadd fast float %2621, 5.000000e-01
  %2625 = fadd fast float %2622, 5.000000e-01
  %2626 = fadd fast float %2623, 5.000000e-01
  %2627 = fmul fast float %2624, 2.000000e+00
  %2628 = fsub fast float 1.000000e+00, %2627
  %2629 = fmul fast float %2628, %2556
  %2630 = fadd fast float %2629, %2627
  %2631 = fmul fast float %2630, %2556
  %2632 = fmul fast float %2625, 2.000000e+00
  %2633 = fsub fast float 1.000000e+00, %2632
  %2634 = fmul fast float %2633, %2557
  %2635 = fadd fast float %2634, %2632
  %2636 = fmul fast float %2635, %2557
  %2637 = fmul fast float %2626, 2.000000e+00
  %2638 = fsub fast float 1.000000e+00, %2637
  %2639 = fmul fast float %2638, %2558
  %2640 = fadd fast float %2639, %2637
  %2641 = fmul fast float %2640, %2558
  br label %2642

; <label>:2642                                    ; preds = %2614, %2612, %2599, %2569, %2555
  %2643 = phi float [ %2556, %2555 ], [ %2631, %2614 ], [ %2556, %2612 ], [ %2609, %2599 ], [ %2579, %2569 ]
  %2644 = phi float [ %2557, %2555 ], [ %2636, %2614 ], [ %2557, %2612 ], [ %2610, %2599 ], [ %2580, %2569 ]
  %2645 = phi float [ %2558, %2555 ], [ %2641, %2614 ], [ %2558, %2612 ], [ %2611, %2599 ], [ %2581, %2569 ]
  %2646 = phi float [ %2559, %2555 ], [ %2559, %2614 ], [ %2559, %2612 ], [ %2559, %2599 ], [ %2591, %2569 ]
  %2647 = phi float [ %2560, %2555 ], [ %2560, %2614 ], [ %2560, %2612 ], [ %2560, %2599 ], [ %2592, %2569 ]
  %2648 = phi float [ %2561, %2555 ], [ %2561, %2614 ], [ %2561, %2612 ], [ %2561, %2599 ], [ %2593, %2569 ]
  %2649 = phi float [ %1995, %2555 ], [ %1995, %2614 ], [ %1995, %2612 ], [ %1995, %2599 ], [ %2584, %2569 ]
  %2650 = phi float [ %1998, %2555 ], [ %1998, %2614 ], [ %1998, %2612 ], [ %1998, %2599 ], [ %2596, %2569 ]
  %2651 = and i32 %2533, 12
  %2652 = icmp eq i32 %2651, 12
  br i1 %2652, label %2725, label %2653

; <label>:2653                                    ; preds = %2642
  %2654 = and i32 %2533, 2097184
  %2655 = icmp eq i32 %2654, 2097184
  %2656 = select i1 %2655, float %2181, float 0.000000e+00
  %2657 = and i32 %2533, 4194336
  %2658 = icmp eq i32 %2657, 4194336
  %2659 = select i1 %2658, float %2181, float 0.000000e+00
  %2660 = and i32 %2533, 8388640
  %2661 = icmp eq i32 %2660, 8388640
  %2662 = select i1 %2661, float %2181, float 0.000000e+00
  %2663 = icmp eq i32 %2651, 0
  br i1 %2663, label %2664, label %2677

; <label>:2664                                    ; preds = %2653
  %2665 = fsub fast float %2482, %1987
  %2666 = fsub fast float %2483, %1988
  %2667 = fmul fast float %2656, %2665
  %2668 = fmul fast float %2656, %2666
  %2669 = fadd fast float %2667, %1987
  %2670 = fadd fast float %2668, %1988
  %2671 = fsub fast float %2484, %1997
  %2672 = fmul fast float %2659, %2671
  %2673 = fadd fast float %2672, %1997
  %2674 = fsub fast float %2481, %1996
  %2675 = fmul fast float %2662, %2674
  %2676 = fadd fast float %2675, %1996
  br label %2725

; <label>:2677                                    ; preds = %2653
  %2678 = icmp eq i32 %2651, 4
  br i1 %2678, label %2679, label %2711

; <label>:2679                                    ; preds = %2677
  %2680 = fmul fast float %2656, %2482
  %2681 = fmul fast float %2656, %2483
  %2682 = fadd fast float %2680, %1987
  %2683 = fadd fast float %2681, %1988
  %2684 = call float @dx.op.binary.f32(i32 36, float %1997, float %2484)  ; FMin(a,b)
  %2685 = fsub fast float %2684, %1997
  %2686 = fmul fast float %2685, %2659
  %2687 = fadd fast float %2686, %1997
  %2688 = fadd fast float %2481, %1996
  %2689 = fmul fast float %2688, 0x3FF337FAE0000000
  %2690 = fmul fast float %1996, %1996
  %2691 = fmul fast float %2481, %2481
  %2692 = fadd fast float %2691, %2690
  %2693 = fmul fast float %2692, 0x3FE5152B00000000
  %2694 = fmul fast float %1996, 0xBFCC1F85E0000000
  %2695 = fmul fast float %2694, %2481
  %2696 = fadd fast float %2695, 0xBFE1363700000000
  %2697 = fadd fast float %2696, %2689
  %2698 = fsub fast float %2697, %2693
  %2699 = fmul fast float %2688, 0x3FBA6F0D00000000
  %2700 = fmul fast float %2692, 0x3FD0432880000000
  %2701 = fmul fast float %1996, 0xBFEF110800000000
  %2702 = fmul fast float %2701, %2481
  %2703 = fadd fast float %2702, 1.000000e+00
  %2704 = fsub fast float %2703, %2699
  %2705 = fadd fast float %2704, %2700
  %2706 = fdiv fast float %2698, %2705
  %2707 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2708 = fsub fast float %2707, %1996
  %2709 = fmul fast float %2708, %2662
  %2710 = fadd fast float %2709, %1996
  br label %2725

; <label>:2711                                    ; preds = %2677
  %2712 = icmp eq i32 %2651, 8
  br i1 %2712, label %2713, label %2725

; <label>:2713                                    ; preds = %2711
  %2714 = fmul fast float %2656, %2482
  %2715 = fmul fast float %2656, %2483
  %2716 = fadd fast float %2714, %1987
  %2717 = fadd fast float %2715, %1988
  %2718 = call float @dx.op.binary.f32(i32 36, float %1997, float %2484)  ; FMin(a,b)
  %2719 = fsub fast float %2718, %1997
  %2720 = fmul fast float %2719, %2659
  %2721 = fadd fast float %2720, %1997
  %2722 = fsub fast float %2481, %1996
  %2723 = fmul fast float %2662, %2722
  %2724 = fadd fast float %2723, %1996
  br label %2725

; <label>:2725                                    ; preds = %2713, %2711, %2679, %2664, %2642, %2180, %1999, %1986
  %2726 = phi float [ %1987, %2642 ], [ %1987, %2180 ], [ %1987, %1986 ], [ %2716, %2713 ], [ %1987, %2711 ], [ %2682, %2679 ], [ %2669, %2664 ], [ %1987, %1999 ]
  %2727 = phi float [ %1988, %2642 ], [ %1988, %2180 ], [ %1988, %1986 ], [ %2717, %2713 ], [ %1988, %2711 ], [ %2683, %2679 ], [ %2670, %2664 ], [ %1988, %1999 ]
  %2728 = phi float [ %2643, %2642 ], [ %1989, %2180 ], [ %1989, %1986 ], [ %2643, %2713 ], [ %2643, %2711 ], [ %2643, %2679 ], [ %2643, %2664 ], [ %1989, %1999 ]
  %2729 = phi float [ %2644, %2642 ], [ %1990, %2180 ], [ %1990, %1986 ], [ %2644, %2713 ], [ %2644, %2711 ], [ %2644, %2679 ], [ %2644, %2664 ], [ %1990, %1999 ]
  %2730 = phi float [ %2645, %2642 ], [ %1991, %2180 ], [ %1991, %1986 ], [ %2645, %2713 ], [ %2645, %2711 ], [ %2645, %2679 ], [ %2645, %2664 ], [ %1991, %1999 ]
  %2731 = phi float [ %2646, %2642 ], [ %1992, %2180 ], [ %1992, %1986 ], [ %2646, %2713 ], [ %2646, %2711 ], [ %2646, %2679 ], [ %2646, %2664 ], [ %1992, %1999 ]
  %2732 = phi float [ %2647, %2642 ], [ %1993, %2180 ], [ %1993, %1986 ], [ %2647, %2713 ], [ %2647, %2711 ], [ %2647, %2679 ], [ %2647, %2664 ], [ %1993, %1999 ]
  %2733 = phi float [ %2648, %2642 ], [ %1994, %2180 ], [ %1994, %1986 ], [ %2648, %2713 ], [ %2648, %2711 ], [ %2648, %2679 ], [ %2648, %2664 ], [ %1994, %1999 ]
  %2734 = phi float [ %2649, %2642 ], [ %1995, %2180 ], [ %1995, %1986 ], [ %2649, %2713 ], [ %2649, %2711 ], [ %2649, %2679 ], [ %2649, %2664 ], [ %1995, %1999 ]
  %2735 = phi float [ %1996, %2642 ], [ %1996, %2180 ], [ %1996, %1986 ], [ %2724, %2713 ], [ %1996, %2711 ], [ %2710, %2679 ], [ %2676, %2664 ], [ %1996, %1999 ]
  %2736 = phi float [ %1997, %2642 ], [ %1997, %2180 ], [ %1997, %1986 ], [ %2721, %2713 ], [ %1997, %2711 ], [ %2687, %2679 ], [ %2673, %2664 ], [ %1997, %1999 ]
  %2737 = phi float [ %2650, %2642 ], [ %1998, %2180 ], [ %1998, %1986 ], [ %2650, %2713 ], [ %2650, %2711 ], [ %2650, %2679 ], [ %2650, %2664 ], [ %1998, %1999 ]
  br i1 %649, label %3464, label %2738

; <label>:2738                                    ; preds = %2725
  %2739 = icmp ult i32 %703, 4
  %2740 = add i32 %53, 72
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = add i32 %53, 76
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = or i32 %2745, %2742
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %3464, label %2748

; <label>:2748                                    ; preds = %2738
  %2749 = and i32 %2742, 262144
  %2750 = icmp ne i32 %2749, 0
  %2751 = select i1 %2750, float %60, float 1.000000e+00
  %2752 = select i1 %2750, float %61, float 0.000000e+00
  %2753 = select i1 %2750, float %62, float 0.000000e+00
  %2754 = select i1 %2750, float %63, float 1.000000e+00
  %2755 = select i1 %2750, float %64, float %92
  %2756 = select i1 %2750, float %65, float %93
  %2757 = add i32 %53, 332
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = lshr i32 %2759, 16
  %2761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2760)  ; LegacyF16ToF32(value)
  %2762 = fmul fast float %2761, 0x3F50624DE0000000
  %2763 = add i32 %53, 136
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = lshr i32 %2765, 16
  %2767 = and i32 %2766, 255
  %2768 = lshr i32 %2765, 24
  %2769 = add i32 %53, 340
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = and i32 %2771, 65535
  %2773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2772)  ; LegacyF16ToF32(value)
  %2774 = lshr i32 %2771, 16
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = add i32 %53, 80
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = lshr i32 %2778, 22
  %2780 = shl nuw nsw i32 %2779, 5
  %2781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2780)  ; LegacyF16ToF32(value)
  %2782 = shl i32 %2778, 4
  %2783 = and i32 %2782, 32752
  %2784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2783)  ; LegacyF16ToF32(value)
  %2785 = lshr i32 %2778, 7
  %2786 = and i32 %2785, 32752
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 3
  %2790 = fmul fast float %2789, 1.000000e+03
  %2791 = fmul fast float %2790, %638
  %2792 = call float @dx.op.unary.f32(i32 22, float %2791)  ; Frc(value)
  %2793 = fadd fast float %2792, %626
  %2794 = fmul fast float %2790, %640
  %2795 = call float @dx.op.unary.f32(i32 22, float %2794)  ; Frc(value)
  %2796 = fadd fast float %2795, %627
  %2797 = fmul fast float %2762, %2790
  %2798 = call float @dx.op.unary.f32(i32 22, float %2797)  ; Frc(value)
  %2799 = fmul fast float %2798, 0x401921FB60000000
  %2800 = fadd fast float %2799, %2781
  %2801 = call float @dx.op.unary.f32(i32 13, float %2800)  ; Sin(value)
  %2802 = call float @dx.op.unary.f32(i32 12, float %2800)  ; Cos(value)
  %2803 = fsub fast float -0.000000e+00, %2801
  %2804 = fadd fast float %2755, -5.000000e-01
  %2805 = fadd fast float %2756, -5.000000e-01
  %2806 = fmul fast float %2773, %2804
  %2807 = fmul fast float %2775, %2805
  %2808 = fadd fast float %2806, 5.000000e-01
  %2809 = fadd fast float %2807, 5.000000e-01
  %2810 = fmul fast float %2784, %2808
  %2811 = fmul fast float %2787, %2809
  %2812 = fmul fast float %2802, %2810
  %2813 = call float @dx.op.tertiary.f32(i32 46, float %2803, float %2811, float %2812)  ; FMad(a,b,c)
  %2814 = fmul fast float %2801, %2810
  %2815 = call float @dx.op.tertiary.f32(i32 46, float %2802, float %2811, float %2814)  ; FMad(a,b,c)
  %2816 = fadd fast float %2793, %2813
  %2817 = fadd fast float %2796, %2815
  %2818 = icmp ugt i32 %2767, 1
  %2819 = icmp ugt i32 %2765, 33554431
  %2820 = or i1 %2819, %2818
  br i1 %2820, label %2821, label %2846

; <label>:2821                                    ; preds = %2748
  %2822 = add i32 %53, 276
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = lshr i32 %2824, 16
  %2826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2825)  ; LegacyF16ToF32(value)
  %2827 = fmul fast float %2789, %2826
  %2828 = call float @dx.op.unary.f32(i32 22, float %2827)  ; Frc(value)
  %2829 = mul nuw nsw i32 %2767, %2768
  %2830 = uitofp i32 %2829 to float
  %2831 = fmul fast float %2828, %2830
  %2832 = call float @dx.op.unary.f32(i32 27, float %2831)  ; Round_ni(value)
  %2833 = fptoui float %2832 to i32
  %2834 = urem i32 %2833, %2767
  %2835 = udiv i32 %2833, %2768
  %2836 = call float @dx.op.unary.f32(i32 22, float %2816)  ; Frc(value)
  %2837 = call float @dx.op.unary.f32(i32 22, float %2817)  ; Frc(value)
  %2838 = uitofp i32 %2834 to float
  %2839 = uitofp i32 %2835 to float
  %2840 = fadd fast float %2836, %2838
  %2841 = fadd fast float %2837, %2839
  %2842 = uitofp i32 %2767 to float
  %2843 = uitofp i32 %2768 to float
  %2844 = fdiv fast float %2840, %2842
  %2845 = fdiv fast float %2841, %2843
  br label %2846

; <label>:2846                                    ; preds = %2821, %2748
  %2847 = phi float [ %2844, %2821 ], [ %2816, %2748 ]
  %2848 = phi float [ %2845, %2821 ], [ %2817, %2748 ]
  %2849 = and i32 %2742, 256
  %2850 = icmp eq i32 %2849, 0
  br i1 %2850, label %2897, label %2851

; <label>:2851                                    ; preds = %2846
  %2852 = add i32 %53, 484
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = add i32 %2854, 0
  %2856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2855, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2857 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2856, %dx.types.Handle %107, float %2847, float %2848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  %2859 = add i32 %53, 148
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = shl i32 %2861, 4
  %2863 = and i32 %2862, 32752
  %2864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2863)  ; LegacyF16ToF32(value)
  %2865 = lshr i32 %2861, 7
  %2866 = and i32 %2865, 32752
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = fsub fast float 1.000000e+00, %698
  %2869 = call float @dx.op.binary.f32(i32 35, float %2868, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2870 = bitcast float %698 to i32
  %2871 = sitofp i32 %2870 to float
  %2872 = fadd fast float %2871, 0xC1CFBF8940000000
  %2873 = fmul fast float %2867, %2872
  %2874 = fadd fast float %2873, 0x41CFBF8940000000
  %2875 = fptosi float %2874 to i32
  %2876 = bitcast i32 %2875 to float
  %2877 = bitcast float %2869 to i32
  %2878 = sitofp i32 %2877 to float
  %2879 = fadd fast float %2878, 0xC1CFBF8940000000
  %2880 = fmul fast float %2879, %2867
  %2881 = fadd fast float %2880, 0x41CFBF8940000000
  %2882 = fptosi float %2881 to i32
  %2883 = bitcast i32 %2882 to float
  %2884 = fmul fast float %2876, %2864
  %2885 = fmul fast float %2883, %2864
  %2886 = fsub fast float %2869, %2884
  %2887 = fadd fast float %2885, %2869
  %2888 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  %2889 = call float @dx.op.unary.f32(i32 7, float %2887)  ; Saturate(value)
  %2890 = fsub fast float %2858, %2888
  %2891 = fsub fast float %2889, %2888
  %2892 = bitcast float %2891 to i32
  %2893 = sub nsw i32 2129859010, %2892
  %2894 = bitcast i32 %2893 to float
  %2895 = fmul fast float %2894, %2890
  %2896 = call float @dx.op.unary.f32(i32 7, float %2895)  ; Saturate(value)
  br label %2897

; <label>:2897                                    ; preds = %2851, %2846
  %2898 = phi float [ %2896, %2851 ], [ %698, %2846 ]
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = and i32 %2900, 128
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2919, label %2903

; <label>:2903                                    ; preds = %2897
  %2904 = add i32 %53, 468
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = add i32 %2906, 0
  %2908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2908, %dx.types.Handle %107, float %2847, float %2848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2910 = extractvalue %dx.types.ResRet.f32 %2909, 0
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = and i32 %2912, 524288
  %2914 = icmp ne i32 %2913, 0
  %2915 = fcmp fast ogt float %2910, 0x3FE0101020000000
  %2916 = select i1 %2915, float 1.000000e+00, float 0.000000e+00
  %2917 = select i1 %2914, float %2916, float %2910
  %2918 = fmul fast float %2917, %2898
  br label %2919

; <label>:2919                                    ; preds = %2903, %2897
  %2920 = phi float [ %2918, %2903 ], [ %2898, %2897 ]
  %2921 = fcmp fast ult float %2920, 0x3F70101020000000
  br i1 %2921, label %3464, label %2922

; <label>:2922                                    ; preds = %2919
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 16
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %3125, label %2927

; <label>:2927                                    ; preds = %2922
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %53, 420
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = add i32 %2932, 0
  %2934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2934, %dx.types.Handle %106, float %2847, float %2848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  %2939 = extractvalue %dx.types.ResRet.f32 %2935, 3
  %2940 = and i32 %2929, 255
  %2941 = uitofp i32 %2940 to float
  %2942 = lshr i32 %2929, 8
  %2943 = and i32 %2942, 255
  %2944 = uitofp i32 %2943 to float
  %2945 = fmul fast float %2939, %2941
  %2946 = fadd fast float %2945, %2944
  %2947 = fmul fast float %2946, 0x3F70101000000000
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = and i32 %2949, 512
  %2951 = icmp eq i32 %2950, 0
  br i1 %2951, label %2960, label %2952

; <label>:2952                                    ; preds = %2927
  %2953 = add i32 %53, 504
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = add i32 %2955, 0
  %2957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2957, %dx.types.Handle %107, float %2847, float %2848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  br label %2960

; <label>:2960                                    ; preds = %2952, %2927
  %2961 = phi float [ %2959, %2952 ], [ 1.000000e+00, %2927 ]
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 33554432
  %2965 = icmp eq i32 %2964, 0
  br i1 %2965, label %3072, label %2966

; <label>:2966                                    ; preds = %2960
  %2967 = add i32 %53, 272
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 65535
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = lshr i32 %2969, 16
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = add i32 %53, 276
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = and i32 %2976, 65535
  %2978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2977)  ; LegacyF16ToF32(value)
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = lshr i32 %2980, 24
  %2982 = uitofp i32 %2981 to float
  %2983 = fmul fast float %2982, 0x3F70101020000000
  %2984 = and i32 %2980, 255
  %2985 = uitofp i32 %2984 to float
  %2986 = fmul fast float %2985, 0x3F70101020000000
  %2987 = lshr i32 %2980, 8
  %2988 = and i32 %2987, 255
  %2989 = uitofp i32 %2988 to float
  %2990 = fmul fast float %2989, 0x3F70101020000000
  %2991 = lshr i32 %2980, 16
  %2992 = and i32 %2991, 255
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2993, 0x3F70101020000000
  %2995 = add i32 %53, 268
  %2996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.i32 %2996, 0
  %2998 = lshr i32 %2997, 24
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = and i32 %2997, 255
  %3002 = uitofp i32 %3001 to float
  %3003 = fmul fast float %3002, 0x3F70101020000000
  %3004 = lshr i32 %2997, 8
  %3005 = and i32 %3004, 255
  %3006 = uitofp i32 %3005 to float
  %3007 = fmul fast float %3006, 0x3F70101020000000
  %3008 = lshr i32 %2997, 16
  %3009 = and i32 %3008, 255
  %3010 = uitofp i32 %3009 to float
  %3011 = fmul fast float %3010, 0x3F70101020000000
  %3012 = bitcast float %2936 to i32
  %3013 = ashr i32 %3012, 1
  %3014 = sub nsw i32 1597463174, %3013
  %3015 = bitcast i32 %3014 to float
  %3016 = fmul fast float %2936, 5.000000e-01
  %3017 = fmul fast float %3015, %3015
  %3018 = fmul fast float %3017, %3016
  %3019 = fsub fast float 1.500000e+00, %3018
  %3020 = fmul fast float %3015, %2936
  %3021 = fmul fast float %3020, %3019
  %3022 = bitcast float %2937 to i32
  %3023 = ashr i32 %3022, 1
  %3024 = sub nsw i32 1597463174, %3023
  %3025 = bitcast i32 %3024 to float
  %3026 = fmul fast float %2937, 5.000000e-01
  %3027 = fmul fast float %3025, %3025
  %3028 = fmul fast float %3027, %3026
  %3029 = fsub fast float 1.500000e+00, %3028
  %3030 = fmul fast float %3025, %2937
  %3031 = fmul fast float %3030, %3029
  %3032 = bitcast float %2938 to i32
  %3033 = ashr i32 %3032, 1
  %3034 = sub nsw i32 1597463174, %3033
  %3035 = bitcast i32 %3034 to float
  %3036 = fmul fast float %2938, 5.000000e-01
  %3037 = fmul fast float %3035, %3035
  %3038 = fmul fast float %3037, %3036
  %3039 = fsub fast float 1.500000e+00, %3038
  %3040 = fmul fast float %3035, %2938
  %3041 = fmul fast float %3040, %3039
  %3042 = fsub fast float %3021, %3003
  %3043 = fsub fast float %3031, %3007
  %3044 = fsub fast float %3041, %3011
  %3045 = fmul fast float %3042, %2971
  %3046 = fmul fast float %3043, %2973
  %3047 = fmul fast float %3044, %2978
  %3048 = fadd fast float %3045, %2986
  %3049 = fadd fast float %3046, %2990
  %3050 = fadd fast float %3047, %2994
  %3051 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3052 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3053 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3054 = fmul fast float %3051, %3051
  %3055 = fmul fast float %3052, %3052
  %3056 = fmul fast float %3053, %3053
  %3057 = fsub fast float %3054, %2936
  %3058 = fsub fast float %3055, %2937
  %3059 = fsub fast float %3056, %2938
  %3060 = fmul fast float %3057, %2961
  %3061 = fmul fast float %3058, %2961
  %3062 = fmul fast float %3059, %2961
  %3063 = fadd fast float %3060, %2936
  %3064 = fadd fast float %3061, %2937
  %3065 = fadd fast float %3062, %2938
  %3066 = fadd fast float %2983, %2947
  %3067 = fsub fast float %3066, %3000
  %3068 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  %3069 = fsub fast float %3068, %2947
  %3070 = fmul fast float %3069, %2961
  %3071 = fadd fast float %3070, %2947
  br label %3125

; <label>:3072                                    ; preds = %2960
  %3073 = and i32 %2963, 134217728
  %3074 = icmp eq i32 %3073, 0
  br i1 %3074, label %3109, label %3075

; <label>:3075                                    ; preds = %3072
  %3076 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %3077 = call float @dx.op.unary.f32(i32 24, float %615)  ; Sqrt(value)
  %3078 = call float @dx.op.unary.f32(i32 24, float %616)  ; Sqrt(value)
  %3079 = fadd fast float %3076, -5.000000e-01
  %3080 = fadd fast float %3077, -5.000000e-01
  %3081 = fadd fast float %3078, -5.000000e-01
  %3082 = fmul fast float %3079, %2961
  %3083 = fmul fast float %3080, %2961
  %3084 = fmul fast float %3081, %2961
  %3085 = fadd fast float %3082, 5.000000e-01
  %3086 = fadd fast float %3083, 5.000000e-01
  %3087 = fadd fast float %3084, 5.000000e-01
  %3088 = call float @dx.op.unary.f32(i32 24, float %2936)  ; Sqrt(value)
  %3089 = call float @dx.op.unary.f32(i32 24, float %2937)  ; Sqrt(value)
  %3090 = call float @dx.op.unary.f32(i32 24, float %2938)  ; Sqrt(value)
  %3091 = fmul fast float %3085, 2.000000e+00
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = fmul fast float %3092, %3088
  %3094 = fadd fast float %3093, %3091
  %3095 = fmul fast float %3094, %3088
  %3096 = fmul fast float %3086, 2.000000e+00
  %3097 = fsub fast float 1.000000e+00, %3096
  %3098 = fmul fast float %3097, %3089
  %3099 = fadd fast float %3098, %3096
  %3100 = fmul fast float %3099, %3089
  %3101 = fmul fast float %3087, 2.000000e+00
  %3102 = fsub fast float 1.000000e+00, %3101
  %3103 = fmul fast float %3102, %3090
  %3104 = fadd fast float %3103, %3101
  %3105 = fmul fast float %3104, %3090
  %3106 = fmul fast float %3095, %3095
  %3107 = fmul fast float %3100, %3100
  %3108 = fmul fast float %3105, %3105
  br label %3125

; <label>:3109                                    ; preds = %3072
  %3110 = fmul fast float %614, %614
  %3111 = fmul fast float %615, %615
  %3112 = fmul fast float %616, %616
  %3113 = fadd fast float %3110, -1.000000e+00
  %3114 = fadd fast float %3111, -1.000000e+00
  %3115 = fadd fast float %3112, -1.000000e+00
  %3116 = fmul fast float %2961, %3113
  %3117 = fmul fast float %2961, %3114
  %3118 = fmul fast float %2961, %3115
  %3119 = fadd fast float %3116, 1.000000e+00
  %3120 = fadd fast float %3117, 1.000000e+00
  %3121 = fadd fast float %3118, 1.000000e+00
  %3122 = fmul fast float %3119, %2936
  %3123 = fmul fast float %3120, %2937
  %3124 = fmul fast float %3121, %2938
  br label %3125

; <label>:3125                                    ; preds = %3109, %3075, %2966, %2922
  %3126 = phi float [ %3071, %2966 ], [ %2947, %3075 ], [ %2947, %3109 ], [ 0x3FA23C0BE0000000, %2922 ]
  %3127 = phi float [ %3063, %2966 ], [ %3106, %3075 ], [ %3122, %3109 ], [ 1.000000e+00, %2922 ]
  %3128 = phi float [ %3064, %2966 ], [ %3107, %3075 ], [ %3123, %3109 ], [ 1.000000e+00, %2922 ]
  %3129 = phi float [ %3065, %2966 ], [ %3108, %3075 ], [ %3124, %3109 ], [ 1.000000e+00, %2922 ]
  %3130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.i32 %3130, 1
  %3132 = and i32 %3131, 1
  %3133 = icmp ne i32 %3132, 0
  %3134 = add i32 %53, 356
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, 32
  %3138 = icmp ne i32 %3137, 0
  %3139 = and i1 %3133, %3138
  %3140 = select i1 %3139, float 1.000000e+00, float %3127
  %3141 = select i1 %3139, float 0x3FD3333340000000, float %3128
  %3142 = select i1 %3139, float 0x3FD3333340000000, float %3129
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 32
  %3146 = icmp eq i32 %3145, 0
  br i1 %3146, label %3219, label %3147

; <label>:3147                                    ; preds = %3125
  %3148 = add i32 %53, 140
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = add i32 %53, 436
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = add i32 %3153, 0
  %3155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3155, %dx.types.Handle %106, float %2847, float %2848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3157 = extractvalue %dx.types.ResRet.f32 %3156, 0
  %3158 = extractvalue %dx.types.ResRet.f32 %3156, 1
  %3159 = extractvalue %dx.types.ResRet.f32 %3156, 2
  %3160 = extractvalue %dx.types.ResRet.f32 %3156, 3
  %3161 = and i32 %3150, 255
  %3162 = uitofp i32 %3161 to float
  %3163 = lshr i32 %3150, 8
  %3164 = and i32 %3163, 255
  %3165 = uitofp i32 %3164 to float
  %3166 = lshr i32 %3150, 16
  %3167 = and i32 %3166, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = fmul fast float %3168, 0x3F70101000000000
  %3170 = fmul fast float %3157, %3162
  %3171 = fadd fast float %3170, %3165
  %3172 = fmul fast float %3171, 0x3F70101000000000
  %3173 = fadd fast float %3158, -5.000000e-01
  %3174 = fadd fast float %3160, -5.000000e-01
  %3175 = fmul fast float %3173, %3169
  %3176 = fmul fast float %3174, %3169
  %3177 = fadd fast float %3175, 5.000000e-01
  %3178 = fadd fast float %3176, 5.000000e-01
  %3179 = fmul fast float %3177, 2.000000e+00
  %3180 = fadd fast float %3179, -1.000000e+00
  %3181 = fmul fast float %3178, 2.000000e+00
  %3182 = fadd fast float %3181, -1.000000e+00
  %3183 = fadd fast float %3180, %3182
  %3184 = fmul fast float %3183, 5.000000e-01
  %3185 = fsub fast float %3180, %3182
  %3186 = fmul fast float %3185, 5.000000e-01
  %3187 = call float @dx.op.unary.f32(i32 6, float %3184)  ; FAbs(value)
  %3188 = fsub fast float 1.000000e+00, %3187
  %3189 = call float @dx.op.unary.f32(i32 6, float %3186)  ; FAbs(value)
  %3190 = fsub fast float %3188, %3189
  %3191 = call float @dx.op.dot3.f32(i32 55, float %3184, float %3186, float %3190, float %3184, float %3186, float %3190)  ; Dot3(ax,ay,az,bx,by,bz)
  %3192 = call float @dx.op.unary.f32(i32 25, float %3191)  ; Rsqrt(value)
  %3193 = fmul fast float %3184, %3192
  %3194 = fmul fast float %3186, %3192
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 67108864
  %3198 = icmp eq i32 %3197, 0
  br i1 %3198, label %3215, label %3199

; <label>:3199                                    ; preds = %3147
  %3200 = add i32 %53, 328
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 65535
  %3204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3203)  ; LegacyF16ToF32(value)
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 65535
  %3208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3207)  ; LegacyF16ToF32(value)
  %3209 = lshr i32 %3202, 16
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = fsub fast float %3172, %3210
  %3212 = fmul fast float %3211, %3204
  %3213 = fadd fast float %3212, %3208
  %3214 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  br label %3215

; <label>:3215                                    ; preds = %3199, %3147
  %3216 = phi float [ %3214, %3199 ], [ %3172, %3147 ]
  %3217 = call float @dx.op.dot2.f32(i32 54, float %3193, float %3194, float %2751, float %2752)  ; Dot2(ax,ay,bx,by)
  %3218 = call float @dx.op.dot2.f32(i32 54, float %3193, float %3194, float %2753, float %2754)  ; Dot2(ax,ay,bx,by)
  br label %3219

; <label>:3219                                    ; preds = %3215, %3125
  %3220 = phi float [ %3216, %3215 ], [ 0x3FD6666660000000, %3125 ]
  %3221 = phi float [ %3217, %3215 ], [ 0.000000e+00, %3125 ]
  %3222 = phi float [ %3218, %3215 ], [ 0.000000e+00, %3125 ]
  %3223 = phi float [ %3159, %3215 ], [ 1.000000e+00, %3125 ]
  %3224 = add i32 %53, 208
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = lshr i32 %3226, 22
  %3228 = shl nuw nsw i32 %3227, 5
  %3229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3228)  ; LegacyF16ToF32(value)
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 64
  %3233 = icmp eq i32 %3232, 0
  br i1 %3233, label %3267, label %3234

; <label>:3234                                    ; preds = %3219
  %3235 = add i32 %53, 452
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = add i32 %3237, 0
  %3239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 131072
  %3243 = icmp eq i32 %3242, 0
  %3244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3239, %dx.types.Handle %106, float %2847, float %2848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3245 = extractvalue %dx.types.ResRet.f32 %3244, 0
  %3246 = extractvalue %dx.types.ResRet.f32 %3244, 1
  %3247 = extractvalue %dx.types.ResRet.f32 %3244, 2
  %3248 = fmul fast float %597, %3245
  %3249 = fmul fast float %598, %3246
  %3250 = fmul fast float %599, %3247
  br i1 %3243, label %3257, label %3251

; <label>:3251                                    ; preds = %3234
  %3252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3252, 0
  %3254 = fmul fast float %3253, %3248
  %3255 = fmul fast float %3253, %3249
  %3256 = fmul fast float %3253, %3250
  br label %3257

; <label>:3257                                    ; preds = %3251, %3234
  %3258 = phi float [ %3254, %3251 ], [ %3248, %3234 ]
  %3259 = phi float [ %3255, %3251 ], [ %3249, %3234 ]
  %3260 = phi float [ %3256, %3251 ], [ %3250, %3234 ]
  %3261 = fmul fast float %3258, %3229
  %3262 = select i1 %265, float %3261, float %3258
  %3263 = call float @dx.op.dot3.f32(i32 55, float %3262, float %3259, float %3260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3264 = select i1 %265, float 0.000000e+00, float %3258
  %3265 = select i1 %265, float %3263, float %3259
  %3266 = select i1 %265, float 0.000000e+00, float %3260
  br label %3267

; <label>:3267                                    ; preds = %3257, %3219
  %3268 = phi float [ %3264, %3257 ], [ 0.000000e+00, %3219 ]
  %3269 = phi float [ %3265, %3257 ], [ 0.000000e+00, %3219 ]
  %3270 = phi float [ %3266, %3257 ], [ 0.000000e+00, %3219 ]
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = add i32 %53, 144
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = and i32 %3275, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = lshr i32 %3275, 8
  %3279 = and i32 %3278, 255
  %3280 = uitofp i32 %3279 to float
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3140, float %3141, float %3142, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = fmul fast float %3280, %3281
  %3283 = fadd fast float %3282, %3277
  %3284 = fmul fast float %3283, 0x3F70101020000000
  %3285 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  br i1 %2739, label %3286, label %3294

; <label>:3286                                    ; preds = %3267
  %3287 = fsub fast float 1.000000e+00, %2920
  %3288 = fmul fast float %3287, %2728
  %3289 = fmul fast float %3287, %2729
  %3290 = fmul fast float %3287, %2730
  %3291 = fmul fast float %3287, %2731
  %3292 = fmul fast float %3287, %2732
  %3293 = fmul fast float %3287, %2733
  br label %3294

; <label>:3294                                    ; preds = %3286, %3267
  %3295 = phi float [ %3288, %3286 ], [ %2728, %3267 ]
  %3296 = phi float [ %3289, %3286 ], [ %2729, %3267 ]
  %3297 = phi float [ %3290, %3286 ], [ %2730, %3267 ]
  %3298 = phi float [ %3291, %3286 ], [ %2731, %3267 ]
  %3299 = phi float [ %3292, %3286 ], [ %2732, %3267 ]
  %3300 = phi float [ %3293, %3286 ], [ %2733, %3267 ]
  %3301 = and i32 %3272, 3
  %3302 = icmp eq i32 %3301, 3
  br i1 %3302, label %3381, label %3303

; <label>:3303                                    ; preds = %3294
  %3304 = and i32 %3272, 16
  %3305 = icmp ne i32 %3304, 0
  %3306 = select i1 %3305, float %2920, float 0.000000e+00
  %3307 = icmp eq i32 %3301, 0
  br i1 %3307, label %3308, label %3336

; <label>:3308                                    ; preds = %3303
  %3309 = and i32 %3272, 64
  %3310 = icmp ne i32 %3309, 0
  %3311 = select i1 %3310, float %2920, float 0.000000e+00
  %3312 = fsub fast float %3140, %3295
  %3313 = fsub fast float %3141, %3296
  %3314 = fsub fast float %3142, %3297
  %3315 = fmul fast float %3306, %3312
  %3316 = fmul fast float %3306, %3313
  %3317 = fmul fast float %3306, %3314
  %3318 = fadd fast float %3315, %3295
  %3319 = fadd fast float %3316, %3296
  %3320 = fadd fast float %3317, %3297
  %3321 = fsub fast float %3126, %2734
  %3322 = fmul fast float %3306, %3321
  %3323 = fadd fast float %3322, %2734
  %3324 = fsub fast float %3268, %3298
  %3325 = fsub fast float %3269, %3299
  %3326 = fsub fast float %3270, %3300
  %3327 = fmul fast float %3311, %3324
  %3328 = fmul fast float %3311, %3325
  %3329 = fmul fast float %3311, %3326
  %3330 = fadd fast float %3327, %3298
  %3331 = fadd fast float %3328, %3299
  %3332 = fadd fast float %3329, %3300
  %3333 = fsub fast float %3285, %2737
  %3334 = fmul fast float %3306, %3333
  %3335 = fadd fast float %3334, %2737
  br label %3381

; <label>:3336                                    ; preds = %3303
  %3337 = icmp eq i32 %3301, 1
  br i1 %3337, label %3338, label %3351

; <label>:3338                                    ; preds = %3336
  %3339 = fadd fast float %3140, -1.000000e+00
  %3340 = fadd fast float %3141, -1.000000e+00
  %3341 = fadd fast float %3142, -1.000000e+00
  %3342 = fmul fast float %3306, %3339
  %3343 = fmul fast float %3306, %3340
  %3344 = fmul fast float %3306, %3341
  %3345 = fadd fast float %3342, 1.000000e+00
  %3346 = fadd fast float %3343, 1.000000e+00
  %3347 = fadd fast float %3344, 1.000000e+00
  %3348 = fmul fast float %3345, %3295
  %3349 = fmul fast float %3346, %3296
  %3350 = fmul fast float %3347, %3297
  br label %3381

; <label>:3351                                    ; preds = %3336
  %3352 = icmp eq i32 %3301, 2
  br i1 %3352, label %3353, label %3381

; <label>:3353                                    ; preds = %3351
  %3354 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3355 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3356 = call float @dx.op.unary.f32(i32 24, float %3142)  ; Sqrt(value)
  %3357 = fadd fast float %3354, -5.000000e-01
  %3358 = fadd fast float %3355, -5.000000e-01
  %3359 = fadd fast float %3356, -5.000000e-01
  %3360 = fmul fast float %3357, %3306
  %3361 = fmul fast float %3358, %3306
  %3362 = fmul fast float %3359, %3306
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = fadd fast float %3361, 5.000000e-01
  %3365 = fadd fast float %3362, 5.000000e-01
  %3366 = fmul fast float %3363, 2.000000e+00
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = fmul fast float %3367, %3295
  %3369 = fadd fast float %3368, %3366
  %3370 = fmul fast float %3369, %3295
  %3371 = fmul fast float %3364, 2.000000e+00
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %3372, %3296
  %3374 = fadd fast float %3373, %3371
  %3375 = fmul fast float %3374, %3296
  %3376 = fmul fast float %3365, 2.000000e+00
  %3377 = fsub fast float 1.000000e+00, %3376
  %3378 = fmul fast float %3377, %3297
  %3379 = fadd fast float %3378, %3376
  %3380 = fmul fast float %3379, %3297
  br label %3381

; <label>:3381                                    ; preds = %3353, %3351, %3338, %3308, %3294
  %3382 = phi float [ %3295, %3294 ], [ %3370, %3353 ], [ %3295, %3351 ], [ %3348, %3338 ], [ %3318, %3308 ]
  %3383 = phi float [ %3296, %3294 ], [ %3375, %3353 ], [ %3296, %3351 ], [ %3349, %3338 ], [ %3319, %3308 ]
  %3384 = phi float [ %3297, %3294 ], [ %3380, %3353 ], [ %3297, %3351 ], [ %3350, %3338 ], [ %3320, %3308 ]
  %3385 = phi float [ %3298, %3294 ], [ %3298, %3353 ], [ %3298, %3351 ], [ %3298, %3338 ], [ %3330, %3308 ]
  %3386 = phi float [ %3299, %3294 ], [ %3299, %3353 ], [ %3299, %3351 ], [ %3299, %3338 ], [ %3331, %3308 ]
  %3387 = phi float [ %3300, %3294 ], [ %3300, %3353 ], [ %3300, %3351 ], [ %3300, %3338 ], [ %3332, %3308 ]
  %3388 = phi float [ %2734, %3294 ], [ %2734, %3353 ], [ %2734, %3351 ], [ %2734, %3338 ], [ %3323, %3308 ]
  %3389 = phi float [ %2737, %3294 ], [ %2737, %3353 ], [ %2737, %3351 ], [ %2737, %3338 ], [ %3335, %3308 ]
  %3390 = and i32 %3272, 12
  %3391 = icmp eq i32 %3390, 12
  br i1 %3391, label %3464, label %3392

; <label>:3392                                    ; preds = %3381
  %3393 = and i32 %3272, 2097184
  %3394 = icmp eq i32 %3393, 2097184
  %3395 = select i1 %3394, float %2920, float 0.000000e+00
  %3396 = and i32 %3272, 4194336
  %3397 = icmp eq i32 %3396, 4194336
  %3398 = select i1 %3397, float %2920, float 0.000000e+00
  %3399 = and i32 %3272, 8388640
  %3400 = icmp eq i32 %3399, 8388640
  %3401 = select i1 %3400, float %2920, float 0.000000e+00
  %3402 = icmp eq i32 %3390, 0
  br i1 %3402, label %3403, label %3416

; <label>:3403                                    ; preds = %3392
  %3404 = fsub fast float %3221, %2726
  %3405 = fsub fast float %3222, %2727
  %3406 = fmul fast float %3395, %3404
  %3407 = fmul fast float %3395, %3405
  %3408 = fadd fast float %3406, %2726
  %3409 = fadd fast float %3407, %2727
  %3410 = fsub fast float %3223, %2736
  %3411 = fmul fast float %3398, %3410
  %3412 = fadd fast float %3411, %2736
  %3413 = fsub fast float %3220, %2735
  %3414 = fmul fast float %3401, %3413
  %3415 = fadd fast float %3414, %2735
  br label %3464

; <label>:3416                                    ; preds = %3392
  %3417 = icmp eq i32 %3390, 4
  br i1 %3417, label %3418, label %3450

; <label>:3418                                    ; preds = %3416
  %3419 = fmul fast float %3395, %3221
  %3420 = fmul fast float %3395, %3222
  %3421 = fadd fast float %3419, %2726
  %3422 = fadd fast float %3420, %2727
  %3423 = call float @dx.op.binary.f32(i32 36, float %2736, float %3223)  ; FMin(a,b)
  %3424 = fsub fast float %3423, %2736
  %3425 = fmul fast float %3424, %3398
  %3426 = fadd fast float %3425, %2736
  %3427 = fadd fast float %3220, %2735
  %3428 = fmul fast float %3427, 0x3FF337FAE0000000
  %3429 = fmul fast float %2735, %2735
  %3430 = fmul fast float %3220, %3220
  %3431 = fadd fast float %3430, %3429
  %3432 = fmul fast float %3431, 0x3FE5152B00000000
  %3433 = fmul fast float %2735, 0xBFCC1F85E0000000
  %3434 = fmul fast float %3433, %3220
  %3435 = fadd fast float %3434, 0xBFE1363700000000
  %3436 = fadd fast float %3435, %3428
  %3437 = fsub fast float %3436, %3432
  %3438 = fmul fast float %3427, 0x3FBA6F0D00000000
  %3439 = fmul fast float %3431, 0x3FD0432880000000
  %3440 = fmul fast float %2735, 0xBFEF110800000000
  %3441 = fmul fast float %3440, %3220
  %3442 = fadd fast float %3441, 1.000000e+00
  %3443 = fsub fast float %3442, %3438
  %3444 = fadd fast float %3443, %3439
  %3445 = fdiv fast float %3437, %3444
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  %3447 = fsub fast float %3446, %2735
  %3448 = fmul fast float %3447, %3401
  %3449 = fadd fast float %3448, %2735
  br label %3464

; <label>:3450                                    ; preds = %3416
  %3451 = icmp eq i32 %3390, 8
  br i1 %3451, label %3452, label %3464

; <label>:3452                                    ; preds = %3450
  %3453 = fmul fast float %3395, %3221
  %3454 = fmul fast float %3395, %3222
  %3455 = fadd fast float %3453, %2726
  %3456 = fadd fast float %3454, %2727
  %3457 = call float @dx.op.binary.f32(i32 36, float %2736, float %3223)  ; FMin(a,b)
  %3458 = fsub fast float %3457, %2736
  %3459 = fmul fast float %3458, %3398
  %3460 = fadd fast float %3459, %2736
  %3461 = fsub fast float %3220, %2735
  %3462 = fmul fast float %3401, %3461
  %3463 = fadd fast float %3462, %2735
  br label %3464

; <label>:3464                                    ; preds = %3452, %3450, %3418, %3403, %3381, %2919, %2738, %2725
  %3465 = phi float [ %2726, %3381 ], [ %2726, %2919 ], [ %2726, %2725 ], [ %2726, %2738 ], [ %3408, %3403 ], [ %3421, %3418 ], [ %2726, %3450 ], [ %3455, %3452 ]
  %3466 = phi float [ %2727, %3381 ], [ %2727, %2919 ], [ %2727, %2725 ], [ %2727, %2738 ], [ %3409, %3403 ], [ %3422, %3418 ], [ %2727, %3450 ], [ %3456, %3452 ]
  %3467 = phi float [ %3382, %3381 ], [ %2728, %2919 ], [ %2728, %2725 ], [ %2728, %2738 ], [ %3382, %3403 ], [ %3382, %3418 ], [ %3382, %3450 ], [ %3382, %3452 ]
  %3468 = phi float [ %3383, %3381 ], [ %2729, %2919 ], [ %2729, %2725 ], [ %2729, %2738 ], [ %3383, %3403 ], [ %3383, %3418 ], [ %3383, %3450 ], [ %3383, %3452 ]
  %3469 = phi float [ %3384, %3381 ], [ %2730, %2919 ], [ %2730, %2725 ], [ %2730, %2738 ], [ %3384, %3403 ], [ %3384, %3418 ], [ %3384, %3450 ], [ %3384, %3452 ]
  %3470 = phi float [ %3385, %3381 ], [ %2731, %2919 ], [ %2731, %2725 ], [ %2731, %2738 ], [ %3385, %3403 ], [ %3385, %3418 ], [ %3385, %3450 ], [ %3385, %3452 ]
  %3471 = phi float [ %3386, %3381 ], [ %2732, %2919 ], [ %2732, %2725 ], [ %2732, %2738 ], [ %3386, %3403 ], [ %3386, %3418 ], [ %3386, %3450 ], [ %3386, %3452 ]
  %3472 = phi float [ %3387, %3381 ], [ %2733, %2919 ], [ %2733, %2725 ], [ %2733, %2738 ], [ %3387, %3403 ], [ %3387, %3418 ], [ %3387, %3450 ], [ %3387, %3452 ]
  %3473 = phi float [ %3388, %3381 ], [ %2734, %2919 ], [ %2734, %2725 ], [ %2734, %2738 ], [ %3388, %3403 ], [ %3388, %3418 ], [ %3388, %3450 ], [ %3388, %3452 ]
  %3474 = phi float [ %2735, %3381 ], [ %2735, %2919 ], [ %2735, %2725 ], [ %2735, %2738 ], [ %3415, %3403 ], [ %3449, %3418 ], [ %2735, %3450 ], [ %3463, %3452 ]
  %3475 = phi float [ %2736, %3381 ], [ %2736, %2919 ], [ %2736, %2725 ], [ %2736, %2738 ], [ %3412, %3403 ], [ %3426, %3418 ], [ %2736, %3450 ], [ %3460, %3452 ]
  %3476 = phi float [ %3389, %3381 ], [ %2737, %2919 ], [ %2737, %2725 ], [ %2737, %2738 ], [ %3389, %3403 ], [ %3389, %3418 ], [ %3389, %3450 ], [ %3389, %3452 ]
  %3477 = add i32 %53, 360
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.i32 %3478, 1
  %3481 = bitcast i32 %3479 to float
  %3482 = bitcast i32 %3480 to float
  %3483 = fcmp fast oge float %3481, 0.000000e+00
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = select i1 %3483, float %3481, float %3485
  %3487 = fadd fast float %3486, %207
  %3488 = fmul fast float %3482, %208
  %3489 = add i32 %53, 488
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = add i32 %3491, 0
  %3493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3493, %dx.types.Handle %107, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = fmul fast float %3488, %3495
  %3497 = fadd fast float %3487, %3496
  %3498 = and i32 %199, 65535
  %3499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3498)  ; LegacyF16ToF32(value)
  %3500 = lshr i32 %199, 16
  %3501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3500)  ; LegacyF16ToF32(value)
  %3502 = and i32 %200, 65535
  %3503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3502)  ; LegacyF16ToF32(value)
  %3504 = fmul fast float %3499, %3467
  %3505 = fmul fast float %3501, %3468
  %3506 = fmul fast float %3503, %3469
  %3507 = shl i32 %201, 4
  %3508 = and i32 %3507, 32752
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = lshr i32 %201, 7
  %3511 = and i32 %3510, 32752
  %3512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3511)  ; LegacyF16ToF32(value)
  %3513 = lshr i32 %201, 22
  %3514 = shl nuw nsw i32 %3513, 5
  %3515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3514)  ; LegacyF16ToF32(value)
  %3516 = and i32 %202, 65535
  %3517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3516)  ; LegacyF16ToF32(value)
  %3518 = fmul fast float %3509, %3470
  %3519 = fmul fast float %3518, %3517
  %3520 = fmul fast float %3512, %3471
  %3521 = fmul fast float %3520, %3517
  %3522 = fmul fast float %3515, %3472
  %3523 = fmul fast float %3522, %3517
  %3524 = call float @dx.op.dot2.f32(i32 54, float %3465, float %3466, float %3465, float %3466)  ; Dot2(ax,ay,bx,by)
  %3525 = fmul fast float %3524, 0x3FE3333340000000
  %3526 = fsub fast float 1.000000e+00, %3525
  %3527 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3526, float %3465, float %3466, float %3526)  ; Dot3(ax,ay,az,bx,by,bz)
  %3528 = call float @dx.op.unary.f32(i32 25, float %3527)  ; Rsqrt(value)
  %3529 = fmul fast float %3528, %3465
  %3530 = fmul fast float %3528, %3466
  %3531 = fmul fast float %3526, %3528
  %3532 = fmul fast float %3531, %119
  %3533 = fmul fast float %3531, %121
  %3534 = fmul fast float %3531, %123
  %3535 = fmul fast float %3529, %85
  %3536 = fmul fast float %3529, %86
  %3537 = fmul fast float %3529, %87
  %3538 = fadd fast float %3532, %3535
  %3539 = fadd fast float %3533, %3536
  %3540 = fadd fast float %3534, %3537
  %3541 = fmul fast float %133, %3530
  %3542 = fmul fast float %134, %3530
  %3543 = fmul fast float %135, %3530
  %3544 = fadd fast float %3538, %3541
  %3545 = fadd fast float %3539, %3542
  %3546 = fadd fast float %3540, %3543
  %3547 = call float @dx.op.dot3.f32(i32 55, float %3544, float %3545, float %3546, float %3544, float %3545, float %3546)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = call float @dx.op.unary.f32(i32 25, float %3547)  ; Rsqrt(value)
  %3549 = fmul fast float %3544, %3548
  %3550 = fmul fast float %3545, %3548
  %3551 = fmul fast float %3546, %3548
  %3552 = fadd fast float %3473, 0xBFB99999A0000000
  %3553 = call float @dx.op.unary.f32(i32 7, float %3552)  ; Saturate(value)
  %3554 = fmul fast float %3553, 0x3FF1C71C80000000
  %3555 = call float @dx.op.binary.f32(i32 36, float %3473, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3556 = fsub fast float 1.000000e+00, %3554
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = fmul fast float %3557, %3504
  %3559 = fmul fast float %3557, %3505
  %3560 = fmul fast float %3557, %3506
  %3561 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3562 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3563 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3564 = fmul fast float %3554, %3504
  %3565 = fmul fast float %3554, %3505
  %3566 = fmul fast float %3554, %3506
  %3567 = fadd fast float %3564, %3555
  %3568 = fadd fast float %3565, %3555
  %3569 = fadd fast float %3566, %3555
  %3570 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3571 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3575 = extractvalue %dx.types.CBufRet.i32 %3574, 3
  %3576 = and i32 %3575, 8
  %3577 = icmp ne i32 %3576, 0
  %3578 = call float @dx.op.binary.f32(i32 35, float %3561, float %3504)  ; FMax(a,b)
  %3579 = call float @dx.op.binary.f32(i32 35, float %3562, float %3504)  ; FMax(a,b)
  %3580 = call float @dx.op.binary.f32(i32 35, float %3563, float %3504)  ; FMax(a,b)
  %3581 = call float @dx.op.dot3.f32(i32 55, float %3561, float %3562, float %3563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3582 = select i1 %265, float %3504, float %3561
  %3583 = select i1 %265, float %3581, float %3562
  %3584 = select i1 %265, float 1.000000e+00, float %3563
  %3585 = select i1 %3577, float %3578, float %3582
  %3586 = select i1 %3577, float %3579, float %3583
  %3587 = select i1 %3577, float %3580, float %3584
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.CBufRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.CBufRet.f32 %3588, 2
  %3592 = fadd fast float %3589, %193
  %3593 = fadd fast float %3590, %194
  %3594 = fadd fast float %3591, %195
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.CBufRet.f32 %3595, 1
  %3598 = fsub fast float %3592, %3596
  %3599 = fsub fast float %3593, %3597
  %3600 = fmul fast float %3598, %3598
  %3601 = fmul fast float %3599, %3599
  %3602 = fadd fast float %3600, %3601
  %3603 = call float @dx.op.unary.f32(i32 24, float %3602)  ; Sqrt(value)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3595, 2
  %3605 = fcmp fast olt float %3603, %3604
  br i1 %3605, label %3606, label %3673

; <label>:3606                                    ; preds = %3464
  %3607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3608 = extractvalue %dx.types.CBufRet.f32 %3607, 0
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.CBufRet.f32 %3607, 1
  %3614 = extractvalue %dx.types.CBufRet.f32 %3609, 1
  %3615 = extractvalue %dx.types.CBufRet.f32 %3611, 1
  %3616 = extractvalue %dx.types.CBufRet.f32 %3607, 3
  %3617 = extractvalue %dx.types.CBufRet.f32 %3609, 3
  %3618 = extractvalue %dx.types.CBufRet.f32 %3611, 3
  %3619 = fadd fast float %3616, %3592
  %3620 = fadd fast float %3617, %3593
  %3621 = fadd fast float %3618, %3594
  %3622 = fmul fast float %3619, %3608
  %3623 = call float @dx.op.tertiary.f32(i32 46, float %3620, float %3610, float %3622)  ; FMad(a,b,c)
  %3624 = call float @dx.op.tertiary.f32(i32 46, float %3621, float %3612, float %3623)  ; FMad(a,b,c)
  %3625 = fmul fast float %3619, %3613
  %3626 = call float @dx.op.tertiary.f32(i32 46, float %3620, float %3614, float %3625)  ; FMad(a,b,c)
  %3627 = call float @dx.op.tertiary.f32(i32 46, float %3621, float %3615, float %3626)  ; FMad(a,b,c)
  %3628 = fsub fast float %3624, %3616
  %3629 = fsub fast float %3627, %3617
  %3630 = fsub fast float %3628, %3596
  %3631 = fadd fast float %3630, %3604
  %3632 = fsub fast float %3629, %3597
  %3633 = fadd fast float %3632, %3604
  %3634 = extractvalue %dx.types.CBufRet.f32 %3595, 3
  %3635 = fmul fast float %3631, %3634
  %3636 = fmul fast float %3633, %3634
  %3637 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3638 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  %3639 = fsub fast float 1.000000e+00, %3637
  %3640 = fsub fast float 1.000000e+00, %3638
  %3641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %3639, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = fcmp fast ugt float %3642, 0.000000e+00
  br i1 %3643, label %3644, label %3947

; <label>:3644                                    ; preds = %3606
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 2
  %3647 = fmul fast float %3646, %3642
  %3648 = extractvalue %dx.types.CBufRet.f32 %3645, 3
  %3649 = fadd fast float %3648, %3647
  %3650 = extractvalue %dx.types.CBufRet.f32 %3611, 2
  %3651 = fadd fast float %3649, %3618
  %3652 = fmul fast float %3624, %3612
  %3653 = call float @dx.op.tertiary.f32(i32 46, float %3627, float %3615, float %3652)  ; FMad(a,b,c)
  %3654 = call float @dx.op.tertiary.f32(i32 46, float %3651, float %3650, float %3653)  ; FMad(a,b,c)
  %3655 = fsub fast float %3654, %3618
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 2
  %3658 = fsub fast float %3655, %3657
  %3659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %3639, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %3639, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.ResRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3663, 2
  %3667 = fadd fast float %3664, %3660
  %3668 = fmul fast float %3667, 0x3F847AE140000000
  %3669 = fadd fast float %3665, %3661
  %3670 = fmul fast float %3669, 0x3F847AE140000000
  %3671 = fadd fast float %3666, %3662
  %3672 = fmul fast float %3671, 0x3F847AE140000000
  br label %3947

; <label>:3673                                    ; preds = %3464
  %3674 = and i32 %244, 1
  %3675 = icmp eq i32 %3674, 0
  br i1 %3675, label %3947, label %3676

; <label>:3676                                    ; preds = %3673
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.CBufRet.f32 %3677, 1
  %3684 = extractvalue %dx.types.CBufRet.f32 %3679, 1
  %3685 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3686 = extractvalue %dx.types.CBufRet.f32 %3677, 3
  %3687 = extractvalue %dx.types.CBufRet.f32 %3679, 3
  %3688 = extractvalue %dx.types.CBufRet.f32 %3681, 3
  %3689 = fadd fast float %3686, %3592
  %3690 = fadd fast float %3687, %3593
  %3691 = fadd fast float %3688, %3594
  %3692 = fmul fast float %3689, %3678
  %3693 = call float @dx.op.tertiary.f32(i32 46, float %3690, float %3680, float %3692)  ; FMad(a,b,c)
  %3694 = call float @dx.op.tertiary.f32(i32 46, float %3691, float %3682, float %3693)  ; FMad(a,b,c)
  %3695 = fmul fast float %3689, %3683
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3690, float %3684, float %3695)  ; FMad(a,b,c)
  %3697 = call float @dx.op.tertiary.f32(i32 46, float %3691, float %3685, float %3696)  ; FMad(a,b,c)
  %3698 = fsub fast float %3694, %3686
  %3699 = fsub fast float %3697, %3687
  %3700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3701 = extractvalue %dx.types.CBufRet.f32 %3700, 0
  %3702 = extractvalue %dx.types.CBufRet.f32 %3700, 1
  %3703 = extractvalue %dx.types.CBufRet.f32 %3700, 2
  %3704 = extractvalue %dx.types.CBufRet.f32 %3700, 3
  %3705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3706 = extractvalue %dx.types.CBufRet.f32 %3705, 3
  %3707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.i32 %3707, 0
  %3709 = extractvalue %dx.types.CBufRet.i32 %3707, 1
  %3710 = udiv i32 %3709, %3708
  %3711 = fsub fast float %3698, %3701
  %3712 = fsub fast float %3699, %3702
  %3713 = call float @dx.op.binary.f32(i32 35, float %3711, float 0.000000e+00)  ; FMax(a,b)
  %3714 = call float @dx.op.binary.f32(i32 35, float %3712, float 0.000000e+00)  ; FMax(a,b)
  %3715 = call float @dx.op.binary.f32(i32 36, float %3713, float %3703)  ; FMin(a,b)
  %3716 = call float @dx.op.binary.f32(i32 36, float %3714, float %3704)  ; FMin(a,b)
  %3717 = add i32 %3708, -1
  %3718 = add i32 %3710, -1
  %3719 = fmul fast float %3715, %3706
  %3720 = fmul fast float %3716, %3706
  %3721 = fptoui float %3719 to i32
  %3722 = fptoui float %3720 to i32
  %3723 = call i32 @dx.op.binary.i32(i32 40, i32 %3721, i32 %3717)  ; UMin(a,b)
  %3724 = call i32 @dx.op.binary.i32(i32 40, i32 %3722, i32 %3718)  ; UMin(a,b)
  %3725 = mul i32 %3724, %3708
  %3726 = add i32 %3725, %3723
  %3727 = shl i32 %3726, 2
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = icmp eq i32 %3729, -1
  br i1 %3730, label %3947, label %3731

; <label>:3731                                    ; preds = %3676
  %3732 = mul i32 %3729, 148
  %3733 = add i32 %3732, 4
  %3734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3733, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = add i32 %3732, 8
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = add i32 %3732, 36
  %3740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = add i32 %3732, 60
  %3743 = add i32 %3732, 92
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = add i32 %3732, 116
  %3747 = fsub fast float %3698, %3735
  %3748 = fsub fast float %3699, %3738
  %3749 = fmul fast float %3706, %3747
  %3750 = fmul fast float %3706, %3748
  %3751 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3752 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3753 = fsub fast float 1.000000e+00, %3752
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 2
  %3756 = call float @dx.op.unary.f32(i32 83, float %3751)  ; DerivCoarseX(value)
  %3757 = call float @dx.op.unary.f32(i32 83, float %3753)  ; DerivCoarseX(value)
  %3758 = call float @dx.op.unary.f32(i32 84, float %3751)  ; DerivCoarseY(value)
  %3759 = call float @dx.op.unary.f32(i32 84, float %3753)  ; DerivCoarseY(value)
  %3760 = fmul fast float %3756, %3755
  %3761 = fmul fast float %3757, %3755
  %3762 = fmul fast float %3758, %3755
  %3763 = fmul fast float %3759, %3755
  %3764 = call float @dx.op.dot2.f32(i32 54, float %3762, float %3763, float %3762, float %3763)  ; Dot2(ax,ay,bx,by)
  %3765 = call float @dx.op.dot2.f32(i32 54, float %3760, float %3761, float %3760, float %3761)  ; Dot2(ax,ay,bx,by)
  %3766 = call float @dx.op.binary.f32(i32 35, float %3765, float %3764)  ; FMax(a,b)
  %3767 = call float @dx.op.unary.f32(i32 23, float %3766)  ; Log(value)
  %3768 = fmul fast float %3767, 5.000000e-01
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3771 = fadd fast float %3770, %3768
  %3772 = call float @dx.op.binary.f32(i32 35, float %3771, float 0.000000e+00)  ; FMax(a,b)
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 3
  %3775 = fadd fast float %3774, %3772
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 3
  %3778 = fadd fast float %3775, %3777
  %3779 = add i32 %3745, 0
  %3780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3779, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3781 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3780, i32 0)  ; GetDimensions(handle,mipLevel)
  %3782 = extractvalue %dx.types.Dimensions %3781, 0
  %3783 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3782)  ; FirstbitLo(value)
  %3784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.i32 %3784, 1
  %3786 = sub nsw i32 %3785, %3783
  %3787 = sitofp i32 %3786 to float
  %3788 = fsub fast float %3778, %3787
  %3789 = call float @dx.op.binary.f32(i32 35, float %3788, float 0.000000e+00)  ; FMax(a,b)
  %3790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3780, %dx.types.Handle %43, float %3751, float %3753, float %3741, float undef, i32 0, i32 0, i32 undef, float %3789)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = fcmp ule float %3791, 0x3FE0101020000000
  %3793 = extractvalue %dx.types.CBufRet.i32 %3784, 0
  %3794 = and i32 %3793, 128
  %3795 = icmp ne i32 %3794, 0
  %3796 = and i1 %3792, %3795
  br i1 %3796, label %3947, label %3797

; <label>:3797                                    ; preds = %3731
  %3798 = add i32 %3732, 20
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = add i32 %3732, 24
  %3802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3804 = add i32 %3732, 40
  %3805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = add i32 %3732, 96
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3811 = extractvalue %dx.types.CBufRet.f32 %3810, 2
  %3812 = fmul fast float %3811, %3751
  %3813 = fmul fast float %3811, %3753
  %3814 = extractvalue %dx.types.CBufRet.f32 %3810, 3
  %3815 = fadd fast float %3812, %3814
  %3816 = fadd fast float %3813, %3814
  %3817 = add i32 %3809, 0
  %3818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3817, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3819 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3818, i32 0)  ; GetDimensions(handle,mipLevel)
  %3820 = extractvalue %dx.types.Dimensions %3819, 0
  %3821 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3820)  ; FirstbitLo(value)
  %3822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.i32 %3822, 1
  %3824 = sub nsw i32 %3823, %3821
  %3825 = sitofp i32 %3824 to float
  %3826 = fsub fast float %3775, %3825
  %3827 = call float @dx.op.binary.f32(i32 35, float %3826, float 0.000000e+00)  ; FMax(a,b)
  %3828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3818, %dx.types.Handle %43, float %3815, float %3816, float %3806, float undef, i32 0, i32 0, i32 undef, float %3827)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = fmul fast float %3829, %3800
  %3831 = fadd fast float %3830, %3803
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 3
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 3
  %3840 = extractvalue %dx.types.CBufRet.f32 %3832, 3
  %3841 = fadd fast float %3837, %3698
  %3842 = fadd fast float %3839, %3699
  %3843 = fadd fast float %3831, %3840
  %3844 = fmul fast float %3841, %3833
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3842, float %3834, float %3844)  ; FMad(a,b,c)
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3843, float %3835, float %3845)  ; FMad(a,b,c)
  %3847 = fsub fast float %3846, %3840
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 2
  %3850 = fsub fast float %3847, %3849
  %3851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.i32 %3851, 0
  %3853 = call i32 @dx.op.binary.i32(i32 40, i32 %3729, i32 %3852)  ; UMin(a,b)
  %3854 = mul i32 %3853, 36
  %3855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.i32 %3855, 0
  %3857 = add i32 %3854, 4
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3860 = fmul fast float %3859, %3751
  %3861 = fmul fast float %3859, %3753
  %3862 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3863 = fadd fast float %3860, %3862
  %3864 = fadd fast float %3861, %3862
  %3865 = icmp eq i32 %3856, 0
  br i1 %3865, label %3934, label %3866

; <label>:3866                                    ; preds = %3797
  br label %3867

; <label>:3867                                    ; preds = %3924, %3866
  %3868 = phi float [ %3925, %3924 ], [ 0.000000e+00, %3866 ]
  %3869 = phi float [ %3926, %3924 ], [ 0.000000e+00, %3866 ]
  %3870 = phi float [ %3927, %3924 ], [ 0.000000e+00, %3866 ]
  %3871 = phi float [ %3928, %3924 ], [ 0.000000e+00, %3866 ]
  %3872 = phi float [ %3929, %3924 ], [ 0.000000e+00, %3866 ]
  %3873 = phi float [ %3930, %3924 ], [ 0.000000e+00, %3866 ]
  %3874 = phi i32 [ %3931, %3924 ], [ 0, %3866 ]
  %3875 = shl i32 %3874, 2
  %3876 = add i32 %3742, %3875
  %3877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.f32 %3877, 0
  %3879 = add i32 %3746, %3875
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = add i32 %3881, 0
  %3883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3882, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3884 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3883, i32 0)  ; GetDimensions(handle,mipLevel)
  %3885 = extractvalue %dx.types.Dimensions %3884, 0
  %3886 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3885)  ; FirstbitLo(value)
  %3887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.i32 %3887, 1
  %3889 = sub nsw i32 %3888, %3886
  %3890 = sitofp i32 %3889 to float
  %3891 = fsub fast float %3775, %3890
  %3892 = call float @dx.op.binary.f32(i32 35, float %3891, float 0.000000e+00)  ; FMax(a,b)
  %3893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3883, %dx.types.Handle %43, float %3863, float %3864, float %3878, float undef, i32 0, i32 0, i32 undef, float %3892)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = fcmp fast ogt float %3894, 0.000000e+00
  br i1 %3895, label %3896, label %3924

; <label>:3896                                    ; preds = %3867
  %3897 = add i32 %3857, %3875
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = and i32 %3899, 32767
  %3901 = mul nuw nsw i32 %3900, 928
  %3902 = add nuw nsw i32 %3901, 48
  %3903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = add nuw nsw i32 %3901, 60
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = fmul fast float %3904, %3894
  %3913 = fmul fast float %3905, %3894
  %3914 = fmul fast float %3906, %3894
  %3915 = fadd fast float %3912, %3868
  %3916 = fadd fast float %3913, %3869
  %3917 = fadd fast float %3914, %3870
  %3918 = fmul fast float %3909, %3894
  %3919 = fmul fast float %3910, %3894
  %3920 = fmul fast float %3911, %3894
  %3921 = fadd fast float %3918, %3871
  %3922 = fadd fast float %3919, %3872
  %3923 = fadd fast float %3920, %3873
  br label %3924

; <label>:3924                                    ; preds = %3896, %3867
  %3925 = phi float [ %3915, %3896 ], [ %3868, %3867 ]
  %3926 = phi float [ %3916, %3896 ], [ %3869, %3867 ]
  %3927 = phi float [ %3917, %3896 ], [ %3870, %3867 ]
  %3928 = phi float [ %3921, %3896 ], [ %3871, %3867 ]
  %3929 = phi float [ %3922, %3896 ], [ %3872, %3867 ]
  %3930 = phi float [ %3923, %3896 ], [ %3873, %3867 ]
  %3931 = add nuw i32 %3874, 1
  %3932 = icmp eq i32 %3931, %3856
  br i1 %3932, label %3933, label %3867

; <label>:3933                                    ; preds = %3924
  br label %3934

; <label>:3934                                    ; preds = %3933, %3797
  %3935 = phi float [ 0.000000e+00, %3797 ], [ %3925, %3933 ]
  %3936 = phi float [ 0.000000e+00, %3797 ], [ %3926, %3933 ]
  %3937 = phi float [ 0.000000e+00, %3797 ], [ %3927, %3933 ]
  %3938 = phi float [ 0.000000e+00, %3797 ], [ %3928, %3933 ]
  %3939 = phi float [ 0.000000e+00, %3797 ], [ %3929, %3933 ]
  %3940 = phi float [ 0.000000e+00, %3797 ], [ %3930, %3933 ]
  %3941 = fadd fast float %3938, %3935
  %3942 = fmul fast float %3941, 0x3F847AE140000000
  %3943 = fadd fast float %3939, %3936
  %3944 = fmul fast float %3943, 0x3F847AE140000000
  %3945 = fadd fast float %3940, %3937
  %3946 = fmul fast float %3945, 0x3F847AE140000000
  br label %3947

; <label>:3947                                    ; preds = %3934, %3731, %3676, %3673, %3644, %3606
  %3948 = phi float [ %3658, %3644 ], [ -1.310720e+05, %3606 ], [ %3850, %3934 ], [ -1.310720e+05, %3676 ], [ -1.310720e+05, %3731 ], [ -1.310720e+05, %3673 ]
  %3949 = phi float [ %3668, %3644 ], [ 0.000000e+00, %3606 ], [ %3942, %3934 ], [ 0.000000e+00, %3676 ], [ 0.000000e+00, %3731 ], [ 0.000000e+00, %3673 ]
  %3950 = phi float [ %3670, %3644 ], [ 0.000000e+00, %3606 ], [ %3944, %3934 ], [ 0.000000e+00, %3676 ], [ 0.000000e+00, %3731 ], [ 0.000000e+00, %3673 ]
  %3951 = phi float [ %3672, %3644 ], [ 0.000000e+00, %3606 ], [ %3946, %3934 ], [ 0.000000e+00, %3676 ], [ 0.000000e+00, %3731 ], [ 0.000000e+00, %3673 ]
  %3952 = phi i1 [ true, %3644 ], [ false, %3606 ], [ true, %3934 ], [ false, %3676 ], [ false, %3731 ], [ false, %3673 ]
  %3953 = and i32 %244, 3
  %3954 = icmp eq i32 %3953, 1
  %3955 = select i1 %3954, float 1.000000e+00, float 0.000000e+00
  %3956 = fsub fast float %3948, %195
  %3957 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3958 = select i1 %3952, float %3957, float 1.000000e+00
  %3959 = fmul fast float %3958, %3955
  %3960 = icmp eq i32 %3953, 3
  %3961 = select i1 %3960, float 1.000000e+00, float %3959
  %3962 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3961)  ; FMax(a,b)
  %3963 = fcmp fast olt float %3961, 1.000000e+00
  %3964 = fcmp uge float %70, 0.000000e+00
  %3965 = and i1 %3964, %3963
  br i1 %3965, label %3966, label %3976

; <label>:3966                                    ; preds = %3947
  %3967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %70, float %71, float %72, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.ResRet.f32 %3967, 1
  %3970 = extractvalue %dx.types.ResRet.f32 %3967, 2
  %3971 = fadd fast float %3968, %3962
  %3972 = fcmp ule float %69, 0.000000e+00
  %3973 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3974 = select i1 %3972, float %3973, float 1.000000e+00
  %3975 = fmul fast float %3974, %3970
  br label %3976

; <label>:3976                                    ; preds = %3966, %3947
  %3977 = phi float [ %3971, %3966 ], [ %3962, %3947 ]
  %3978 = phi float [ %3969, %3966 ], [ 0.000000e+00, %3947 ]
  %3979 = phi float [ %3975, %3966 ], [ 0.000000e+00, %3947 ]
  %3980 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3981 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3982 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3983 = fcmp fast une float %3981, 0.000000e+00
  %3984 = fcmp fast une float %3982, 0.000000e+00
  %3985 = or i1 %3983, %3984
  br i1 %3985, label %3986, label %4545

; <label>:3986                                    ; preds = %3976
  br i1 %3983, label %3987, label %4260

; <label>:3987                                    ; preds = %3986
  %3988 = call float @dx.op.unary.f32(i32 23, float %3475)  ; Log(value)
  %3989 = fmul fast float %3988, 4.000000e+00
  %3990 = call float @dx.op.unary.f32(i32 21, float %3989)  ; Exp(value)
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = fmul fast float %3992, %56
  %3994 = fmul fast float %3992, %57
  %3995 = fmul fast float %3992, %58
  %3996 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %3997 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %3998 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %3999 = call float @dx.op.unary.f32(i32 23, float %3996)  ; Log(value)
  %4000 = call float @dx.op.unary.f32(i32 23, float %3997)  ; Log(value)
  %4001 = call float @dx.op.unary.f32(i32 23, float %3998)  ; Log(value)
  %4002 = fmul fast float %3999, 4.000000e+00
  %4003 = fmul fast float %4000, 4.000000e+00
  %4004 = fmul fast float %4001, 4.000000e+00
  %4005 = call float @dx.op.unary.f32(i32 21, float %4002)  ; Exp(value)
  %4006 = call float @dx.op.unary.f32(i32 21, float %4003)  ; Exp(value)
  %4007 = call float @dx.op.unary.f32(i32 21, float %4004)  ; Exp(value)
  %4008 = fadd fast float %4006, %4005
  %4009 = fadd fast float %4008, %4007
  %4010 = fdiv fast float 1.000000e+00, %4009
  %4011 = fmul fast float %4010, %4005
  %4012 = fcmp fast ogt float %66, 0.000000e+00
  %4013 = fcmp fast ogt float %67, 0.000000e+00
  %4014 = fcmp fast ogt float %68, 0.000000e+00
  %4015 = fcmp fast olt float %66, 0.000000e+00
  %4016 = fcmp fast olt float %67, 0.000000e+00
  %4017 = fcmp fast olt float %68, 0.000000e+00
  %4018 = zext i1 %4012 to i32
  %4019 = zext i1 %4013 to i32
  %4020 = zext i1 %4014 to i32
  %4021 = zext i1 %4015 to i32
  %4022 = zext i1 %4016 to i32
  %4023 = zext i1 %4017 to i32
  %4024 = sub nsw i32 %4018, %4021
  %4025 = sub nsw i32 %4019, %4022
  %4026 = sub nsw i32 %4020, %4023
  %4027 = call float @dx.op.unary.f32(i32 83, float %3993)  ; DerivCoarseX(value)
  %4028 = call float @dx.op.unary.f32(i32 83, float %3994)  ; DerivCoarseX(value)
  %4029 = call float @dx.op.unary.f32(i32 83, float %3995)  ; DerivCoarseX(value)
  %4030 = call float @dx.op.unary.f32(i32 84, float %3993)  ; DerivCoarseY(value)
  %4031 = call float @dx.op.unary.f32(i32 84, float %3994)  ; DerivCoarseY(value)
  %4032 = call float @dx.op.unary.f32(i32 84, float %3995)  ; DerivCoarseY(value)
  %4033 = fcmp fast ole float %276, %4011
  %4034 = fmul fast float %4010, %4008
  %4035 = fcmp fast ole float %276, %4034
  %4036 = select i1 %4035, float %3995, float %3993
  %4037 = select i1 %4035, float %3993, float %3994
  %4038 = select i1 %4033, float %3994, float %4036
  %4039 = select i1 %4033, float %3995, float %4037
  %4040 = select i1 %4035, float %4029, float %4027
  %4041 = select i1 %4035, float %4027, float %4028
  %4042 = select i1 %4033, float %4028, float %4040
  %4043 = select i1 %4033, float %4029, float %4041
  %4044 = select i1 %4035, float %4032, float %4030
  %4045 = select i1 %4035, float %4030, float %4031
  %4046 = select i1 %4033, float %4031, float %4044
  %4047 = select i1 %4033, float %4032, float %4045
  %4048 = call float @dx.op.unary.f32(i32 27, float %4038)  ; Round_ni(value)
  %4049 = call float @dx.op.unary.f32(i32 27, float %4039)  ; Round_ni(value)
  %4050 = fptosi float %4048 to i32
  %4051 = fptosi float %4049 to i32
  %4052 = xor i32 %4051, %4050
  %4053 = sitofp i32 %4052 to float
  %4054 = fptosi float %4053 to i32
  %4055 = sitofp i32 %4054 to float
  %4056 = fmul fast float %4055, 0x3FE3C6EF40000000
  %4057 = frem fast float %4048, 2.560000e+02
  %4058 = frem fast float %4049, 2.560000e+02
  %4059 = fptoui float %4057 to i32
  %4060 = fptoui float %4058 to i32
  %4061 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4059, i32 %4060, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.ResRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.ResRet.f32 %4061, 2
  %4065 = fadd fast float %4062, %4056
  %4066 = fadd fast float %4063, %4056
  %4067 = fadd fast float %4064, %4056
  %4068 = call float @dx.op.unary.f32(i32 22, float %4065)  ; Frc(value)
  %4069 = call float @dx.op.unary.f32(i32 22, float %4066)  ; Frc(value)
  %4070 = call float @dx.op.unary.f32(i32 22, float %4067)  ; Frc(value)
  %4071 = fmul fast float %4070, 0x401921FB60000000
  %4072 = call float @dx.op.unary.f32(i32 13, float %4071)  ; Sin(value)
  %4073 = call float @dx.op.unary.f32(i32 12, float %4071)  ; Cos(value)
  %4074 = fsub fast float -0.000000e+00, %4073
  %4075 = fmul fast float %4073, %4038
  %4076 = call float @dx.op.tertiary.f32(i32 46, float %4072, float %4039, float %4075)  ; FMad(a,b,c)
  %4077 = fmul fast float %4072, %4038
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %4074, float %4039, float %4077)  ; FMad(a,b,c)
  %4079 = fadd fast float %4076, %4068
  %4080 = fadd fast float %4078, %4069
  %4081 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %4082 = bitcast float %4081 to i32
  %4083 = icmp eq i32 %4082, 0
  br i1 %4083, label %4122, label %4084

; <label>:4084                                    ; preds = %3987
  %4085 = add i32 %4082, 0
  %4086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4087 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4086, %dx.types.Handle %107, float %4079, float %4080, float undef, float undef, i32 0, i32 0, i32 undef, float %4042, float %4043, float undef, float %4046, float %4047, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4088 = extractvalue %dx.types.ResRet.f32 %4087, 0
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4091 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4092 = fsub fast float 1.000000e+00, %3981
  %4093 = call float @dx.op.binary.f32(i32 35, float %4092, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4094 = bitcast float %3981 to i32
  %4095 = sitofp i32 %4094 to float
  %4096 = fadd fast float %4095, 0xC1CFBF8940000000
  %4097 = fmul fast float %4091, %4096
  %4098 = fadd fast float %4097, 0x41CFBF8940000000
  %4099 = fptosi float %4098 to i32
  %4100 = bitcast i32 %4099 to float
  %4101 = bitcast float %4093 to i32
  %4102 = sitofp i32 %4101 to float
  %4103 = fadd fast float %4102, 0xC1CFBF8940000000
  %4104 = fmul fast float %4103, %4091
  %4105 = fadd fast float %4104, 0x41CFBF8940000000
  %4106 = fptosi float %4105 to i32
  %4107 = bitcast i32 %4106 to float
  %4108 = fmul fast float %4100, %4090
  %4109 = fmul fast float %4107, %4090
  %4110 = fsub fast float %4093, %4108
  %4111 = fadd fast float %4109, %4093
  %4112 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4114 = fsub fast float %4088, %4112
  %4115 = fsub fast float %4113, %4112
  %4116 = bitcast float %4115 to i32
  %4117 = sub nsw i32 2129859010, %4116
  %4118 = bitcast i32 %4117 to float
  %4119 = fmul fast float %4118, %4114
  %4120 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4121 = fcmp fast olt float %4120, 0x3F70101020000000
  br i1 %4121, label %4260, label %4122

; <label>:4122                                    ; preds = %4084, %3987
  %4123 = phi float [ %4120, %4084 ], [ %3981, %3987 ]
  %4124 = fmul fast float %4123, %3990
  %4125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.i32 %4125, 1
  %4127 = extractvalue %dx.types.CBufRet.i32 %4125, 0
  %4128 = add i32 %4127, 0
  %4129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4129, %dx.types.Handle %106, float %4079, float %4080, float undef, float undef, i32 0, i32 0, i32 undef, float %4042, float %4043, float undef, float %4046, float %4047, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = extractvalue %dx.types.ResRet.f32 %4130, 3
  %4135 = and i32 %4126, 255
  %4136 = uitofp i32 %4135 to float
  %4137 = lshr i32 %4126, 8
  %4138 = and i32 %4137, 255
  %4139 = uitofp i32 %4138 to float
  %4140 = fmul fast float %4134, %4136
  %4141 = fadd fast float %4140, %4139
  %4142 = fmul fast float %4141, 0x3F70101000000000
  %4143 = fadd fast float %4142, 0xBFB99999A0000000
  %4144 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4145 = fmul fast float %4144, 0x3FF1C71C80000000
  %4146 = call float @dx.op.binary.f32(i32 36, float %4142, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4147 = fsub fast float 1.000000e+00, %4145
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fmul fast float %4148, %4131
  %4150 = fmul fast float %4148, %4132
  %4151 = fmul fast float %4148, %4133
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4155 = fmul fast float %4145, %4131
  %4156 = fmul fast float %4145, %4132
  %4157 = fmul fast float %4145, %4133
  %4158 = fadd fast float %4155, %4146
  %4159 = fadd fast float %4156, %4146
  %4160 = fadd fast float %4157, %4146
  %4161 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.i32 %4164, 3
  %4166 = extractvalue %dx.types.CBufRet.i32 %4164, 2
  %4167 = add i32 %4166, 0
  %4168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4168, %dx.types.Handle %106, float %4079, float %4080, float undef, float undef, i32 0, i32 0, i32 undef, float %4042, float %4043, float undef, float %4046, float %4047, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.ResRet.f32 %4169, 3
  %4174 = and i32 %4165, 255
  %4175 = uitofp i32 %4174 to float
  %4176 = lshr i32 %4165, 8
  %4177 = and i32 %4176, 255
  %4178 = uitofp i32 %4177 to float
  %4179 = lshr i32 %4165, 16
  %4180 = and i32 %4179, 255
  %4181 = uitofp i32 %4180 to float
  %4182 = fmul fast float %4181, 0x3F70101000000000
  %4183 = fmul fast float %4170, %4175
  %4184 = fadd fast float %4183, %4178
  %4185 = fmul fast float %4184, 0x3F70101000000000
  %4186 = fadd fast float %4171, -5.000000e-01
  %4187 = fadd fast float %4173, -5.000000e-01
  %4188 = fmul fast float %4186, %4182
  %4189 = fmul fast float %4187, %4182
  %4190 = fadd fast float %4188, 5.000000e-01
  %4191 = fadd fast float %4189, 5.000000e-01
  %4192 = fmul fast float %4190, 2.000000e+00
  %4193 = fadd fast float %4192, -1.000000e+00
  %4194 = fmul fast float %4191, 2.000000e+00
  %4195 = fadd fast float %4194, -1.000000e+00
  %4196 = fadd fast float %4193, %4195
  %4197 = fmul fast float %4196, 5.000000e-01
  %4198 = fsub fast float %4193, %4195
  %4199 = fmul fast float %4198, 5.000000e-01
  %4200 = call float @dx.op.unary.f32(i32 6, float %4197)  ; FAbs(value)
  %4201 = fsub fast float 1.000000e+00, %4200
  %4202 = call float @dx.op.unary.f32(i32 6, float %4199)  ; FAbs(value)
  %4203 = fsub fast float %4201, %4202
  %4204 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4199, float %4203, float %4197, float %4199, float %4203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4205 = call float @dx.op.unary.f32(i32 25, float %4204)  ; Rsqrt(value)
  %4206 = fmul fast float %4197, %4205
  %4207 = fmul fast float %4199, %4205
  %4208 = select i1 %4035, i32 %4025, i32 %4026
  %4209 = select i1 %4033, i32 %4024, i32 %4208
  %4210 = sitofp i32 %4209 to float
  %4211 = fmul fast float %4203, %4210
  %4212 = fmul fast float %4211, %4205
  %4213 = select i1 %4035, float %4212, float %4207
  %4214 = select i1 %4035, float %4207, float %4212
  %4215 = select i1 %4033, float %4212, float %4206
  %4216 = select i1 %4033, float %4207, float %4213
  %4217 = select i1 %4033, float %4206, float %4214
  %4218 = fsub fast float %4152, %3585
  %4219 = fsub fast float %4153, %3586
  %4220 = fsub fast float %4154, %3587
  %4221 = fmul fast float %4218, %4124
  %4222 = fmul fast float %4219, %4124
  %4223 = fmul fast float %4220, %4124
  %4224 = fadd fast float %4221, %3585
  %4225 = fadd fast float %4222, %3586
  %4226 = fadd fast float %4223, %3587
  %4227 = fsub fast float %4161, %3570
  %4228 = fsub fast float %4162, %3571
  %4229 = fsub fast float %4163, %3572
  %4230 = fmul fast float %4227, %4124
  %4231 = fmul fast float %4228, %4124
  %4232 = fmul fast float %4229, %4124
  %4233 = fadd fast float %4230, %3570
  %4234 = fadd fast float %4231, %3571
  %4235 = fadd fast float %4232, %3572
  %4236 = fadd fast float %4215, %3549
  %4237 = fadd fast float %4216, %3550
  %4238 = fadd fast float %4217, %3551
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4236, float %4237, float %4238, float %4236, float %4237, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = call float @dx.op.unary.f32(i32 25, float %4239)  ; Rsqrt(value)
  %4241 = fmul fast float %4236, %4240
  %4242 = fmul fast float %4237, %4240
  %4243 = fmul fast float %4238, %4240
  %4244 = fsub fast float %4241, %3549
  %4245 = fsub fast float %4242, %3550
  %4246 = fsub fast float %4243, %3551
  %4247 = fmul fast float %4244, %4124
  %4248 = fmul fast float %4245, %4124
  %4249 = fmul fast float %4246, %4124
  %4250 = fadd fast float %4247, %3549
  %4251 = fadd fast float %4248, %3550
  %4252 = fadd fast float %4249, %3551
  %4253 = call float @dx.op.binary.f32(i32 36, float %3475, float %4172)  ; FMin(a,b)
  %4254 = fsub fast float %4253, %3475
  %4255 = fmul fast float %4254, %4124
  %4256 = fadd fast float %4255, %3475
  %4257 = fsub fast float %4185, %3573
  %4258 = fmul fast float %4257, %4124
  %4259 = fadd fast float %4258, %3573
  br label %4260

; <label>:4260                                    ; preds = %4122, %4084, %3986
  %4261 = phi float [ %4233, %4122 ], [ %3570, %4084 ], [ %3570, %3986 ]
  %4262 = phi float [ %4234, %4122 ], [ %3571, %4084 ], [ %3571, %3986 ]
  %4263 = phi float [ %4235, %4122 ], [ %3572, %4084 ], [ %3572, %3986 ]
  %4264 = phi float [ %4250, %4122 ], [ %3549, %4084 ], [ %3549, %3986 ]
  %4265 = phi float [ %4251, %4122 ], [ %3550, %4084 ], [ %3550, %3986 ]
  %4266 = phi float [ %4252, %4122 ], [ %3551, %4084 ], [ %3551, %3986 ]
  %4267 = phi float [ %4224, %4122 ], [ %3585, %4084 ], [ %3585, %3986 ]
  %4268 = phi float [ %4225, %4122 ], [ %3586, %4084 ], [ %3586, %3986 ]
  %4269 = phi float [ %4226, %4122 ], [ %3587, %4084 ], [ %3587, %3986 ]
  %4270 = phi float [ %4259, %4122 ], [ %3573, %4084 ], [ %3573, %3986 ]
  %4271 = phi float [ %4256, %4122 ], [ %3475, %4084 ], [ %3475, %3986 ]
  br i1 %3984, label %4272, label %4545

; <label>:4272                                    ; preds = %4260
  %4273 = call float @dx.op.unary.f32(i32 23, float %4271)  ; Log(value)
  %4274 = fmul fast float %4273, 4.000000e+00
  %4275 = call float @dx.op.unary.f32(i32 21, float %4274)  ; Exp(value)
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4278 = fmul fast float %4277, %56
  %4279 = fmul fast float %4277, %57
  %4280 = fmul fast float %4277, %58
  %4281 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4282 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4283 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4284 = call float @dx.op.unary.f32(i32 23, float %4281)  ; Log(value)
  %4285 = call float @dx.op.unary.f32(i32 23, float %4282)  ; Log(value)
  %4286 = call float @dx.op.unary.f32(i32 23, float %4283)  ; Log(value)
  %4287 = fmul fast float %4284, 4.000000e+00
  %4288 = fmul fast float %4285, 4.000000e+00
  %4289 = fmul fast float %4286, 4.000000e+00
  %4290 = call float @dx.op.unary.f32(i32 21, float %4287)  ; Exp(value)
  %4291 = call float @dx.op.unary.f32(i32 21, float %4288)  ; Exp(value)
  %4292 = call float @dx.op.unary.f32(i32 21, float %4289)  ; Exp(value)
  %4293 = fadd fast float %4291, %4290
  %4294 = fadd fast float %4293, %4292
  %4295 = fdiv fast float 1.000000e+00, %4294
  %4296 = fmul fast float %4295, %4290
  %4297 = fcmp fast ogt float %66, 0.000000e+00
  %4298 = fcmp fast ogt float %67, 0.000000e+00
  %4299 = fcmp fast ogt float %68, 0.000000e+00
  %4300 = fcmp fast olt float %66, 0.000000e+00
  %4301 = fcmp fast olt float %67, 0.000000e+00
  %4302 = fcmp fast olt float %68, 0.000000e+00
  %4303 = zext i1 %4297 to i32
  %4304 = zext i1 %4298 to i32
  %4305 = zext i1 %4299 to i32
  %4306 = zext i1 %4300 to i32
  %4307 = zext i1 %4301 to i32
  %4308 = zext i1 %4302 to i32
  %4309 = sub nsw i32 %4303, %4306
  %4310 = sub nsw i32 %4304, %4307
  %4311 = sub nsw i32 %4305, %4308
  %4312 = call float @dx.op.unary.f32(i32 83, float %4278)  ; DerivCoarseX(value)
  %4313 = call float @dx.op.unary.f32(i32 83, float %4279)  ; DerivCoarseX(value)
  %4314 = call float @dx.op.unary.f32(i32 83, float %4280)  ; DerivCoarseX(value)
  %4315 = call float @dx.op.unary.f32(i32 84, float %4278)  ; DerivCoarseY(value)
  %4316 = call float @dx.op.unary.f32(i32 84, float %4279)  ; DerivCoarseY(value)
  %4317 = call float @dx.op.unary.f32(i32 84, float %4280)  ; DerivCoarseY(value)
  %4318 = fcmp fast ole float %276, %4296
  %4319 = fmul fast float %4295, %4293
  %4320 = fcmp fast ole float %276, %4319
  %4321 = select i1 %4320, float %4280, float %4278
  %4322 = select i1 %4320, float %4278, float %4279
  %4323 = select i1 %4318, float %4279, float %4321
  %4324 = select i1 %4318, float %4280, float %4322
  %4325 = select i1 %4320, float %4314, float %4312
  %4326 = select i1 %4320, float %4312, float %4313
  %4327 = select i1 %4318, float %4313, float %4325
  %4328 = select i1 %4318, float %4314, float %4326
  %4329 = select i1 %4320, float %4317, float %4315
  %4330 = select i1 %4320, float %4315, float %4316
  %4331 = select i1 %4318, float %4316, float %4329
  %4332 = select i1 %4318, float %4317, float %4330
  %4333 = call float @dx.op.unary.f32(i32 27, float %4323)  ; Round_ni(value)
  %4334 = call float @dx.op.unary.f32(i32 27, float %4324)  ; Round_ni(value)
  %4335 = fptosi float %4333 to i32
  %4336 = fptosi float %4334 to i32
  %4337 = xor i32 %4336, %4335
  %4338 = sitofp i32 %4337 to float
  %4339 = fptosi float %4338 to i32
  %4340 = sitofp i32 %4339 to float
  %4341 = fmul fast float %4340, 0x3FE3C6EF40000000
  %4342 = frem fast float %4333, 2.560000e+02
  %4343 = frem fast float %4334, 2.560000e+02
  %4344 = fptoui float %4342 to i32
  %4345 = fptoui float %4343 to i32
  %4346 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4344, i32 %4345, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = fadd fast float %4347, %4341
  %4351 = fadd fast float %4348, %4341
  %4352 = fadd fast float %4349, %4341
  %4353 = call float @dx.op.unary.f32(i32 22, float %4350)  ; Frc(value)
  %4354 = call float @dx.op.unary.f32(i32 22, float %4351)  ; Frc(value)
  %4355 = call float @dx.op.unary.f32(i32 22, float %4352)  ; Frc(value)
  %4356 = fmul fast float %4355, 0x401921FB60000000
  %4357 = call float @dx.op.unary.f32(i32 13, float %4356)  ; Sin(value)
  %4358 = call float @dx.op.unary.f32(i32 12, float %4356)  ; Cos(value)
  %4359 = fsub fast float -0.000000e+00, %4358
  %4360 = fmul fast float %4358, %4323
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4357, float %4324, float %4360)  ; FMad(a,b,c)
  %4362 = fmul fast float %4357, %4323
  %4363 = call float @dx.op.tertiary.f32(i32 46, float %4359, float %4324, float %4362)  ; FMad(a,b,c)
  %4364 = fadd fast float %4361, %4353
  %4365 = fadd fast float %4363, %4354
  %4366 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4367 = bitcast float %4366 to i32
  %4368 = icmp eq i32 %4367, 0
  br i1 %4368, label %4407, label %4369

; <label>:4369                                    ; preds = %4272
  %4370 = add i32 %4367, 0
  %4371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4372 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4371, %dx.types.Handle %107, float %4364, float %4365, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4328, float undef, float %4331, float %4332, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 1
  %4376 = extractvalue %dx.types.CBufRet.f32 %4374, 2
  %4377 = fsub fast float 1.000000e+00, %3982
  %4378 = call float @dx.op.binary.f32(i32 35, float %4377, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4379 = bitcast float %3982 to i32
  %4380 = sitofp i32 %4379 to float
  %4381 = fadd fast float %4380, 0xC1CFBF8940000000
  %4382 = fmul fast float %4376, %4381
  %4383 = fadd fast float %4382, 0x41CFBF8940000000
  %4384 = fptosi float %4383 to i32
  %4385 = bitcast i32 %4384 to float
  %4386 = bitcast float %4378 to i32
  %4387 = sitofp i32 %4386 to float
  %4388 = fadd fast float %4387, 0xC1CFBF8940000000
  %4389 = fmul fast float %4388, %4376
  %4390 = fadd fast float %4389, 0x41CFBF8940000000
  %4391 = fptosi float %4390 to i32
  %4392 = bitcast i32 %4391 to float
  %4393 = fmul fast float %4385, %4375
  %4394 = fmul fast float %4392, %4375
  %4395 = fsub fast float %4378, %4393
  %4396 = fadd fast float %4394, %4378
  %4397 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4398 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4399 = fsub fast float %4373, %4397
  %4400 = fsub fast float %4398, %4397
  %4401 = bitcast float %4400 to i32
  %4402 = sub nsw i32 2129859010, %4401
  %4403 = bitcast i32 %4402 to float
  %4404 = fmul fast float %4403, %4399
  %4405 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4406 = fcmp fast olt float %4405, 0x3F70101020000000
  br i1 %4406, label %4545, label %4407

; <label>:4407                                    ; preds = %4369, %4272
  %4408 = phi float [ %4405, %4369 ], [ %3982, %4272 ]
  %4409 = fmul fast float %4408, %4275
  %4410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.i32 %4410, 1
  %4412 = extractvalue %dx.types.CBufRet.i32 %4410, 0
  %4413 = add i32 %4412, 0
  %4414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4415 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4414, %dx.types.Handle %106, float %4364, float %4365, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4328, float undef, float %4331, float %4332, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = extractvalue %dx.types.ResRet.f32 %4415, 1
  %4418 = extractvalue %dx.types.ResRet.f32 %4415, 2
  %4419 = extractvalue %dx.types.ResRet.f32 %4415, 3
  %4420 = and i32 %4411, 255
  %4421 = uitofp i32 %4420 to float
  %4422 = lshr i32 %4411, 8
  %4423 = and i32 %4422, 255
  %4424 = uitofp i32 %4423 to float
  %4425 = fmul fast float %4419, %4421
  %4426 = fadd fast float %4425, %4424
  %4427 = fmul fast float %4426, 0x3F70101000000000
  %4428 = fadd fast float %4427, 0xBFB99999A0000000
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = fmul fast float %4429, 0x3FF1C71C80000000
  %4431 = call float @dx.op.binary.f32(i32 36, float %4427, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4432 = fsub fast float 1.000000e+00, %4430
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fmul fast float %4433, %4416
  %4435 = fmul fast float %4433, %4417
  %4436 = fmul fast float %4433, %4418
  %4437 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4438 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4439 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4440 = fmul fast float %4430, %4416
  %4441 = fmul fast float %4430, %4417
  %4442 = fmul fast float %4430, %4418
  %4443 = fadd fast float %4440, %4431
  %4444 = fadd fast float %4441, %4431
  %4445 = fadd fast float %4442, %4431
  %4446 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.i32 %4449, 3
  %4451 = extractvalue %dx.types.CBufRet.i32 %4449, 2
  %4452 = add i32 %4451, 0
  %4453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4454 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4453, %dx.types.Handle %106, float %4364, float %4365, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4328, float undef, float %4331, float %4332, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.ResRet.f32 %4454, 1
  %4457 = extractvalue %dx.types.ResRet.f32 %4454, 2
  %4458 = extractvalue %dx.types.ResRet.f32 %4454, 3
  %4459 = and i32 %4450, 255
  %4460 = uitofp i32 %4459 to float
  %4461 = lshr i32 %4450, 8
  %4462 = and i32 %4461, 255
  %4463 = uitofp i32 %4462 to float
  %4464 = lshr i32 %4450, 16
  %4465 = and i32 %4464, 255
  %4466 = uitofp i32 %4465 to float
  %4467 = fmul fast float %4466, 0x3F70101000000000
  %4468 = fmul fast float %4455, %4460
  %4469 = fadd fast float %4468, %4463
  %4470 = fmul fast float %4469, 0x3F70101000000000
  %4471 = fadd fast float %4456, -5.000000e-01
  %4472 = fadd fast float %4458, -5.000000e-01
  %4473 = fmul fast float %4471, %4467
  %4474 = fmul fast float %4472, %4467
  %4475 = fadd fast float %4473, 5.000000e-01
  %4476 = fadd fast float %4474, 5.000000e-01
  %4477 = fmul fast float %4475, 2.000000e+00
  %4478 = fadd fast float %4477, -1.000000e+00
  %4479 = fmul fast float %4476, 2.000000e+00
  %4480 = fadd fast float %4479, -1.000000e+00
  %4481 = fadd fast float %4478, %4480
  %4482 = fmul fast float %4481, 5.000000e-01
  %4483 = fsub fast float %4478, %4480
  %4484 = fmul fast float %4483, 5.000000e-01
  %4485 = call float @dx.op.unary.f32(i32 6, float %4482)  ; FAbs(value)
  %4486 = fsub fast float 1.000000e+00, %4485
  %4487 = call float @dx.op.unary.f32(i32 6, float %4484)  ; FAbs(value)
  %4488 = fsub fast float %4486, %4487
  %4489 = call float @dx.op.dot3.f32(i32 55, float %4482, float %4484, float %4488, float %4482, float %4484, float %4488)  ; Dot3(ax,ay,az,bx,by,bz)
  %4490 = call float @dx.op.unary.f32(i32 25, float %4489)  ; Rsqrt(value)
  %4491 = fmul fast float %4482, %4490
  %4492 = fmul fast float %4484, %4490
  %4493 = select i1 %4320, i32 %4310, i32 %4311
  %4494 = select i1 %4318, i32 %4309, i32 %4493
  %4495 = sitofp i32 %4494 to float
  %4496 = fmul fast float %4488, %4495
  %4497 = fmul fast float %4496, %4490
  %4498 = select i1 %4320, float %4497, float %4492
  %4499 = select i1 %4320, float %4492, float %4497
  %4500 = select i1 %4318, float %4497, float %4491
  %4501 = select i1 %4318, float %4492, float %4498
  %4502 = select i1 %4318, float %4491, float %4499
  %4503 = fsub fast float %4437, %4267
  %4504 = fsub fast float %4438, %4268
  %4505 = fsub fast float %4439, %4269
  %4506 = fmul fast float %4503, %4409
  %4507 = fmul fast float %4504, %4409
  %4508 = fmul fast float %4505, %4409
  %4509 = fadd fast float %4506, %4267
  %4510 = fadd fast float %4507, %4268
  %4511 = fadd fast float %4508, %4269
  %4512 = fsub fast float %4446, %4261
  %4513 = fsub fast float %4447, %4262
  %4514 = fsub fast float %4448, %4263
  %4515 = fmul fast float %4512, %4409
  %4516 = fmul fast float %4513, %4409
  %4517 = fmul fast float %4514, %4409
  %4518 = fadd fast float %4515, %4261
  %4519 = fadd fast float %4516, %4262
  %4520 = fadd fast float %4517, %4263
  %4521 = fadd fast float %4500, %4264
  %4522 = fadd fast float %4501, %4265
  %4523 = fadd fast float %4502, %4266
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4521, float %4522, float %4523, float %4521, float %4522, float %4523)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = call float @dx.op.unary.f32(i32 25, float %4524)  ; Rsqrt(value)
  %4526 = fmul fast float %4521, %4525
  %4527 = fmul fast float %4522, %4525
  %4528 = fmul fast float %4523, %4525
  %4529 = fsub fast float %4526, %4264
  %4530 = fsub fast float %4527, %4265
  %4531 = fsub fast float %4528, %4266
  %4532 = fmul fast float %4529, %4409
  %4533 = fmul fast float %4530, %4409
  %4534 = fmul fast float %4531, %4409
  %4535 = fadd fast float %4532, %4264
  %4536 = fadd fast float %4533, %4265
  %4537 = fadd fast float %4534, %4266
  %4538 = call float @dx.op.binary.f32(i32 36, float %4271, float %4457)  ; FMin(a,b)
  %4539 = fsub fast float %4538, %4271
  %4540 = fmul fast float %4539, %4409
  %4541 = fadd fast float %4540, %4271
  %4542 = fsub fast float %4470, %4270
  %4543 = fmul fast float %4542, %4409
  %4544 = fadd fast float %4543, %4270
  br label %4545

; <label>:4545                                    ; preds = %4407, %4369, %4260, %3976
  %4546 = phi float [ %4518, %4407 ], [ %4261, %4369 ], [ %4261, %4260 ], [ %3570, %3976 ]
  %4547 = phi float [ %4519, %4407 ], [ %4262, %4369 ], [ %4262, %4260 ], [ %3571, %3976 ]
  %4548 = phi float [ %4520, %4407 ], [ %4263, %4369 ], [ %4263, %4260 ], [ %3572, %3976 ]
  %4549 = phi float [ %4535, %4407 ], [ %4264, %4369 ], [ %4264, %4260 ], [ %3549, %3976 ]
  %4550 = phi float [ %4536, %4407 ], [ %4265, %4369 ], [ %4265, %4260 ], [ %3550, %3976 ]
  %4551 = phi float [ %4537, %4407 ], [ %4266, %4369 ], [ %4266, %4260 ], [ %3551, %3976 ]
  %4552 = phi float [ %4509, %4407 ], [ %4267, %4369 ], [ %4267, %4260 ], [ %3585, %3976 ]
  %4553 = phi float [ %4510, %4407 ], [ %4268, %4369 ], [ %4268, %4260 ], [ %3586, %3976 ]
  %4554 = phi float [ %4511, %4407 ], [ %4269, %4369 ], [ %4269, %4260 ], [ %3587, %3976 ]
  %4555 = phi float [ %4544, %4407 ], [ %4270, %4369 ], [ %4270, %4260 ], [ %3573, %3976 ]
  %4556 = phi float [ %4541, %4407 ], [ %4271, %4369 ], [ %4271, %4260 ], [ %3475, %3976 ]
  %4557 = fcmp fast une float %3980, 0.000000e+00
  br i1 %4557, label %4558, label %4727

; <label>:4558                                    ; preds = %4545
  %4559 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4560 = call float @dx.op.unary.f32(i32 25, float %4559)  ; Rsqrt(value)
  %4561 = fmul fast float %193, %4560
  %4562 = fsub fast float -0.000000e+00, %4561
  %4563 = fmul fast float %194, %4560
  %4564 = fsub fast float -0.000000e+00, %4563
  %4565 = fmul fast float %195, %4560
  %4566 = fsub fast float -0.000000e+00, %4565
  %4567 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4564, float %4566, float %119, float %121, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4568 = fmul fast float %3980, 2.500000e+00
  %4569 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4570 = fmul fast float %3980, 0x4013FFFFE0000000
  %4571 = fadd fast float %4570, 0xBFFFFFFFE0000000
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = fmul fast float %3980, 0x4004000020000000
  %4574 = fadd fast float %4573, 0xBFF8000040000000
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fmul fast float %3552, 1.000000e+01
  %4577 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4578 = fmul fast float %4577, 2.000000e+00
  %4579 = fsub fast float 3.000000e+00, %4578
  %4580 = fmul fast float %4577, %4577
  %4581 = fmul fast float %4580, %4579
  %4582 = fsub fast float 1.000000e+00, %4581
  %4583 = fsub fast float 0x3FE3333340000000, %4555
  %4584 = fmul fast float %4583, 0x400AAAAAA0000000
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fmul fast float %4582, %4585
  %4587 = fmul fast float %4552, 0x3FEA2B8620000000
  %4588 = fmul fast float %4553, 0x3FEA2B8620000000
  %4589 = fmul fast float %4554, 0x3FEA2B8620000000
  %4590 = fadd fast float %4587, 0x3FC81DFBA0000000
  %4591 = fmul fast float %4590, %4552
  %4592 = fadd fast float %4591, 0x3F910E6020000000
  %4593 = fadd fast float %4588, 0x3FC81DFBA0000000
  %4594 = fmul fast float %4593, %4553
  %4595 = fadd fast float %4594, 0x3F910E6020000000
  %4596 = fadd fast float %4589, 0x3FC81DFBA0000000
  %4597 = fmul fast float %4596, %4554
  %4598 = fadd fast float %4597, 0x3F910E6020000000
  %4599 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4600 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4601 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4602 = fsub fast float %4599, %4552
  %4603 = fsub fast float %4600, %4553
  %4604 = fsub fast float %4601, %4554
  %4605 = fmul fast float %4602, %4569
  %4606 = fmul fast float %4605, %4586
  %4607 = fmul fast float %4603, %4569
  %4608 = fmul fast float %4607, %4586
  %4609 = fmul fast float %4604, %4569
  %4610 = fmul fast float %4609, %4586
  %4611 = fadd fast float %4606, %4552
  %4612 = fadd fast float %4608, %4553
  %4613 = fadd fast float %4610, %4554
  %4614 = fmul fast float %4556, %4556
  %4615 = fmul fast float %4614, %4614
  %4616 = fadd fast float %4572, 1.000000e+00
  %4617 = fsub fast float %4616, %4586
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = call float @dx.op.dot3.f32(i32 55, float %119, float %121, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = fsub fast float 1.000000e+00, %4615
  %4622 = call float @dx.op.binary.f32(i32 36, float %4618, float %4621)  ; FMin(a,b)
  %4623 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4624 = call float @dx.op.binary.f32(i32 35, float %4622, float %4623)  ; FMax(a,b)
  %4625 = fadd fast float %4620, 0xBFE4CCCCC0000000
  %4626 = fmul fast float %4625, 0x4006DB6DA0000000
  %4627 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4628 = fmul fast float %4627, 2.000000e+00
  %4629 = fsub fast float 3.000000e+00, %4628
  %4630 = bitcast float %4546 to i32
  %4631 = ashr i32 %4630, 1
  %4632 = add nsw i32 %4631, 532487669
  %4633 = bitcast i32 %4632 to float
  %4634 = fsub fast float 1.000000e+00, %4633
  %4635 = bitcast float %4634 to i32
  %4636 = sub nsw i32 2129859010, %4635
  %4637 = bitcast i32 %4636 to float
  %4638 = fmul fast float %4637, 2.000000e+00
  %4639 = bitcast float %4547 to i32
  %4640 = ashr i32 %4639, 1
  %4641 = add nsw i32 %4640, 532487669
  %4642 = bitcast i32 %4641 to float
  %4643 = fsub fast float 1.000000e+00, %4642
  %4644 = bitcast float %4643 to i32
  %4645 = sub nsw i32 2129859010, %4644
  %4646 = bitcast i32 %4645 to float
  %4647 = fmul fast float %4646, 2.000000e+00
  %4648 = bitcast float %4548 to i32
  %4649 = ashr i32 %4648, 1
  %4650 = add nsw i32 %4649, 532487669
  %4651 = bitcast i32 %4650 to float
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = bitcast float %4652 to i32
  %4654 = sub nsw i32 2129859010, %4653
  %4655 = bitcast i32 %4654 to float
  %4656 = fmul fast float %4655, 2.000000e+00
  %4657 = fsub fast float 0x4002A9FBE0000000, %4638
  %4658 = fadd fast float %4638, 0x3FD54FDF00000000
  %4659 = bitcast float %4658 to i32
  %4660 = sub nsw i32 2129859010, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4661, %4657
  %4663 = fmul fast float %4662, %4662
  %4664 = fsub fast float 0x4002A9FBE0000000, %4647
  %4665 = fadd fast float %4647, 0x3FD54FDF00000000
  %4666 = bitcast float %4665 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = bitcast i32 %4667 to float
  %4669 = fmul fast float %4668, %4664
  %4670 = fmul fast float %4669, %4669
  %4671 = fsub fast float 0x4002A9FBE0000000, %4656
  %4672 = fadd fast float %4656, 0x3FD54FDF00000000
  %4673 = bitcast float %4672 to i32
  %4674 = sub nsw i32 2129859010, %4673
  %4675 = bitcast i32 %4674 to float
  %4676 = fmul fast float %4675, %4671
  %4677 = fmul fast float %4676, %4676
  %4678 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4663)  ; FMax(a,b)
  %4679 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4670)  ; FMax(a,b)
  %4680 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4677)  ; FMax(a,b)
  %4681 = fsub fast float 1.000000e+00, %4567
  %4682 = fadd fast float %4681, %4582
  %4683 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4684 = fsub fast float 1.000000e+00, %3961
  %4685 = fmul fast float %4624, %4684
  %4686 = fmul fast float %4627, %4627
  %4687 = fmul fast float %4686, %4685
  %4688 = fmul fast float %4687, %4629
  %4689 = fmul fast float %4684, 0xBFE99999A0000000
  %4690 = fmul fast float %4689, %4569
  %4691 = fmul fast float %4690, %4586
  %4692 = fadd fast float %4691, 1.000000e+00
  %4693 = fadd fast float %4555, -1.000000e+00
  %4694 = fmul fast float %4692, %4693
  %4695 = fadd fast float %4694, 1.000000e+00
  %4696 = fsub fast float %4678, %4546
  %4697 = fsub fast float %4679, %4547
  %4698 = fsub fast float %4680, %4548
  %4699 = fmul fast float %4688, %4696
  %4700 = fmul fast float %4688, %4697
  %4701 = fmul fast float %4688, %4698
  %4702 = fadd fast float %4699, %4546
  %4703 = fadd fast float %4700, %4547
  %4704 = fadd fast float %4701, %4548
  %4705 = fsub fast float %119, %4549
  %4706 = fsub fast float %121, %4550
  %4707 = fsub fast float %123, %4551
  %4708 = fmul fast float %4688, %4705
  %4709 = fmul fast float %4688, %4706
  %4710 = fmul fast float %4688, %4707
  %4711 = fadd fast float %4708, %4549
  %4712 = fadd fast float %4709, %4550
  %4713 = fadd fast float %4710, %4551
  %4714 = fmul fast float %4688, %4683
  %4715 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4716 = fsub fast float 1.000000e+00, %4715
  %4717 = fmul fast float %4714, %4716
  %4718 = fadd fast float %4717, %4715
  %4719 = fsub fast float 1.000000e+00, %4556
  %4720 = fmul fast float %4688, %4719
  %4721 = fadd fast float %4720, %4556
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4711, float %4712, float %4713, float %4711, float %4712, float %4713)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = call float @dx.op.unary.f32(i32 25, float %4722)  ; Rsqrt(value)
  %4724 = fmul fast float %4711, %4723
  %4725 = fmul fast float %4712, %4723
  %4726 = fmul fast float %4713, %4723
  br label %4727

; <label>:4727                                    ; preds = %4558, %4545
  %4728 = phi float [ %4702, %4558 ], [ %4546, %4545 ]
  %4729 = phi float [ %4703, %4558 ], [ %4547, %4545 ]
  %4730 = phi float [ %4704, %4558 ], [ %4548, %4545 ]
  %4731 = phi float [ %4724, %4558 ], [ %4549, %4545 ]
  %4732 = phi float [ %4725, %4558 ], [ %4550, %4545 ]
  %4733 = phi float [ %4726, %4558 ], [ %4551, %4545 ]
  %4734 = phi float [ %4611, %4558 ], [ %4552, %4545 ]
  %4735 = phi float [ %4612, %4558 ], [ %4553, %4545 ]
  %4736 = phi float [ %4613, %4558 ], [ %4554, %4545 ]
  %4737 = phi float [ %4718, %4558 ], [ %4555, %4545 ]
  %4738 = phi float [ %4721, %4558 ], [ %4556, %4545 ]
  %4739 = icmp eq i32 %55, 0
  br i1 %4739, label %4770, label %4740

; <label>:4740                                    ; preds = %4727
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 2
  %4743 = extractvalue %dx.types.CBufRet.f32 %4741, 3
  %4744 = fmul fast float %4742, %110
  %4745 = fmul fast float %4743, %111
  %4746 = fmul fast float %4744, 1.024000e+03
  %4747 = fmul fast float %4745, 1.024000e+03
  %4748 = fadd fast float %4746, -5.120000e+02
  %4749 = fadd fast float %4747, -5.120000e+02
  %4750 = fmul fast float %4744, 0x4081BEDF00000000
  %4751 = fadd fast float %4750, 0xC071BEDF00000000
  %4752 = call float @dx.op.unary.f32(i32 22, float %4751)  ; Frc(value)
  %4753 = fmul fast float %4748, %4752
  %4754 = fadd fast float %4753, %4749
  %4755 = fmul fast float %4745, 0x4073BEBE20000000
  %4756 = fadd fast float %4755, 0xC063BEBE20000000
  %4757 = call float @dx.op.unary.f32(i32 22, float %4756)  ; Frc(value)
  %4758 = fmul fast float %4749, %4757
  %4759 = fadd fast float %4758, %4748
  %4760 = fmul fast float %4754, %4759
  %4761 = call float @dx.op.unary.f32(i32 22, float %4760)  ; Frc(value)
  %4762 = add i32 %319, 12
  %4763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4762, i32 undef)  ; BufferLoad(srv,index,wot)
  %4764 = extractvalue %dx.types.ResRet.i32 %4763, 0
  %4765 = and i32 %4764, 255
  %4766 = uitofp i32 %4765 to float
  %4767 = fmul fast float %4766, 0x3F70101020000000
  %4768 = fcmp fast olt float %4761, %4767
  br i1 %4768, label %4769, label %4770

; <label>:4769                                    ; preds = %4740
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4770

; <label>:4770                                    ; preds = %4769, %4740, %4727
  %4771 = fsub fast float -0.000000e+00, %195
  %4772 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = call float @dx.op.unary.f32(i32 25, float %4772)  ; Rsqrt(value)
  %4774 = fmul fast float %4773, %193
  %4775 = fmul fast float %4773, %194
  %4776 = fmul fast float %4773, %195
  %4777 = fsub fast float -0.000000e+00, %4774
  %4778 = fsub fast float -0.000000e+00, %4775
  %4779 = fsub fast float -0.000000e+00, %4776
  %4780 = select i1 %265, float 0.000000e+00, float %4730
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4732, float %4733, float %4777, float %4778, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = call float @dx.op.dot3.f32(i32 55, float %4774, float %4775, float %4776, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = fmul fast float %4783, 2.000000e+00
  %4785 = fmul fast float %4784, %4731
  %4786 = fmul fast float %4784, %4732
  %4787 = fmul fast float %4784, %4733
  %4788 = fsub fast float %4774, %4785
  %4789 = fsub fast float %4775, %4786
  %4790 = fsub fast float %4776, %4787
  %4791 = call float @dx.op.binary.f32(i32 36, float %4738, float 1.000000e+00)  ; FMin(a,b)
  %4792 = fsub fast float 1.000000e+00, %4738
  %4793 = bitcast float %4792 to i32
  %4794 = sub nsw i32 2129859010, %4793
  %4795 = bitcast i32 %4794 to float
  %4796 = call float @dx.op.dot3.f32(i32 55, float %81, float %77, float %73, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = fmul fast float %4796, 0x3FD20DD760000000
  %4798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %81)  ; FMax(a,b)
  %4799 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = fcmp fast oeq float %4799, 0.000000e+00
  %4801 = fcmp fast oeq float %4798, 0.000000e+00
  %4802 = or i1 %4801, %4800
  br i1 %4802, label %4832, label %4803

; <label>:4803                                    ; preds = %4770
  %4804 = fsub fast float -0.000000e+00, %84
  %4805 = fsub fast float -0.000000e+00, %82
  %4806 = call float @dx.op.unary.f32(i32 24, float %4799)  ; Sqrt(value)
  %4807 = fdiv fast float %4806, %4798
  %4808 = fcmp fast ogt float %4807, 0x3FFB6F8900000000
  %4809 = select i1 %4808, float 0x3FFB6F8900000000, float %4807
  %4810 = fmul fast float %4809, 0x3FE8A23460000000
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = call float @dx.op.binary.f32(i32 35, float %4809, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4813 = fmul fast float %4811, %4798
  %4814 = fmul fast float %4812, 0x3FF279A740000000
  %4815 = fadd fast float %4814, -1.000000e+00
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %83, float %4804, float %4805, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.unary.f32(i32 25, float %4816)  ; Rsqrt(value)
  %4818 = fmul fast float %4817, %4804
  %4819 = fmul fast float %4817, %4805
  %4820 = fmul fast float %4817, %83
  %4821 = fmul fast float %4815, %4815
  %4822 = fsub fast float 1.000000e+00, %4821
  %4823 = fmul fast float %4812, 0x40005F8BE0000000
  %4824 = fsub fast float 0x400C5BF8A0000000, %4823
  %4825 = fdiv fast float %4813, %4824
  %4826 = fmul fast float %4825, 0x3FEE31C3C0000000
  %4827 = fmul fast float %4826, %4822
  %4828 = fmul fast float %4812, 0x3FDACB7480000000
  %4829 = fadd fast float %4828, 0xBFD7347680000000
  %4830 = fmul fast float %4829, %4825
  %4831 = fmul fast float %4830, %4822
  br label %4832

; <label>:4832                                    ; preds = %4803, %4770
  %4833 = phi float [ %4818, %4803 ], [ 0.000000e+00, %4770 ]
  %4834 = phi float [ %4819, %4803 ], [ 0.000000e+00, %4770 ]
  %4835 = phi float [ %4820, %4803 ], [ 0.000000e+00, %4770 ]
  %4836 = phi float [ %4827, %4803 ], [ 0.000000e+00, %4770 ]
  %4837 = phi float [ %4831, %4803 ], [ 0.000000e+00, %4770 ]
  %4838 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = fmul fast float %4838, %4838
  %4840 = fmul fast float %4839, 0x3FEE471020000000
  %4841 = fadd fast float %4840, 0xBFD42F6020000000
  %4842 = fmul fast float %4798, 0x3FD20DD760000000
  %4843 = fmul fast float %4841, %4837
  %4844 = fmul fast float %4836, 0x3FDF454380000000
  %4845 = fmul fast float %4844, %4838
  %4846 = fadd fast float %4845, %4842
  %4847 = fadd fast float %4846, %4843
  %4848 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float %4788, float %4789, float %4790)  ; Dot3(ax,ay,az,bx,by,bz)
  %4849 = fmul fast float %4848, 0x3FDF454380000000
  %4850 = fmul fast float %4848, %4848
  %4851 = fmul fast float %4850, 0x3FEE471020000000
  %4852 = fadd fast float %4851, 0xBFD42F6020000000
  %4853 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4836, float %4837, float 0x3FD20DD760000000, float %4849, float %4852)  ; Dot3(ax,ay,az,bx,by,bz)
  %4854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %4855 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = fcmp fast oeq float %4855, 0.000000e+00
  %4857 = fcmp fast oeq float %4854, 0.000000e+00
  %4858 = or i1 %4857, %4856
  br i1 %4858, label %4888, label %4859

; <label>:4859                                    ; preds = %4832
  %4860 = fsub fast float -0.000000e+00, %80
  %4861 = fsub fast float -0.000000e+00, %78
  %4862 = call float @dx.op.unary.f32(i32 24, float %4855)  ; Sqrt(value)
  %4863 = fdiv fast float %4862, %4854
  %4864 = fcmp fast ogt float %4863, 0x3FFB6F8900000000
  %4865 = select i1 %4864, float 0x3FFB6F8900000000, float %4863
  %4866 = fmul fast float %4865, 0x3FE8A23460000000
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = call float @dx.op.binary.f32(i32 35, float %4865, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4869 = fmul fast float %4867, %4854
  %4870 = fmul fast float %4868, 0x3FF279A740000000
  %4871 = fadd fast float %4870, -1.000000e+00
  %4872 = call float @dx.op.dot3.f32(i32 55, float %4860, float %4861, float %79, float %4860, float %4861, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = call float @dx.op.unary.f32(i32 25, float %4872)  ; Rsqrt(value)
  %4874 = fmul fast float %4873, %4860
  %4875 = fmul fast float %4873, %4861
  %4876 = fmul fast float %4873, %79
  %4877 = fmul fast float %4871, %4871
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = fmul fast float %4868, 0x40005F8BE0000000
  %4880 = fsub fast float 0x400C5BF8A0000000, %4879
  %4881 = fdiv fast float %4869, %4880
  %4882 = fmul fast float %4881, 0x3FEE31C3C0000000
  %4883 = fmul fast float %4882, %4878
  %4884 = fmul fast float %4868, 0x3FDACB7480000000
  %4885 = fadd fast float %4884, 0xBFD7347680000000
  %4886 = fmul fast float %4885, %4881
  %4887 = fmul fast float %4886, %4878
  br label %4888

; <label>:4888                                    ; preds = %4859, %4832
  %4889 = phi float [ %4874, %4859 ], [ 0.000000e+00, %4832 ]
  %4890 = phi float [ %4875, %4859 ], [ 0.000000e+00, %4832 ]
  %4891 = phi float [ %4876, %4859 ], [ 0.000000e+00, %4832 ]
  %4892 = phi float [ %4883, %4859 ], [ 0.000000e+00, %4832 ]
  %4893 = phi float [ %4887, %4859 ], [ 0.000000e+00, %4832 ]
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4890, float %4891, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = fmul fast float %4894, %4894
  %4896 = fmul fast float %4895, 0x3FEE471020000000
  %4897 = fadd fast float %4896, 0xBFD42F6020000000
  %4898 = fmul fast float %4854, 0x3FD20DD760000000
  %4899 = fmul fast float %4897, %4893
  %4900 = fmul fast float %4892, 0x3FDF454380000000
  %4901 = fmul fast float %4900, %4894
  %4902 = fadd fast float %4901, %4898
  %4903 = fadd fast float %4902, %4899
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4890, float %4891, float %4788, float %4789, float %4790)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = fmul fast float %4904, 0x3FDF454380000000
  %4906 = fmul fast float %4904, %4904
  %4907 = fmul fast float %4906, 0x3FEE471020000000
  %4908 = fadd fast float %4907, 0xBFD42F6020000000
  %4909 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4892, float %4893, float 0x3FD20DD760000000, float %4905, float %4908)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %4911 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = fcmp fast oeq float %4911, 0.000000e+00
  %4913 = fcmp fast oeq float %4910, 0.000000e+00
  %4914 = or i1 %4913, %4912
  br i1 %4914, label %4944, label %4915

; <label>:4915                                    ; preds = %4888
  %4916 = fsub fast float -0.000000e+00, %76
  %4917 = fsub fast float -0.000000e+00, %74
  %4918 = call float @dx.op.unary.f32(i32 24, float %4911)  ; Sqrt(value)
  %4919 = fdiv fast float %4918, %4910
  %4920 = fcmp fast ogt float %4919, 0x3FFB6F8900000000
  %4921 = select i1 %4920, float 0x3FFB6F8900000000, float %4919
  %4922 = fmul fast float %4921, 0x3FE8A23460000000
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4921, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4925 = fmul fast float %4923, %4910
  %4926 = fmul fast float %4924, 0x3FF279A740000000
  %4927 = fadd fast float %4926, -1.000000e+00
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %75, float %4916, float %4917, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = call float @dx.op.unary.f32(i32 25, float %4928)  ; Rsqrt(value)
  %4930 = fmul fast float %4929, %4916
  %4931 = fmul fast float %4929, %4917
  %4932 = fmul fast float %4929, %75
  %4933 = fmul fast float %4927, %4927
  %4934 = fsub fast float 1.000000e+00, %4933
  %4935 = fmul fast float %4924, 0x40005F8BE0000000
  %4936 = fsub fast float 0x400C5BF8A0000000, %4935
  %4937 = fdiv fast float %4925, %4936
  %4938 = fmul fast float %4937, 0x3FEE31C3C0000000
  %4939 = fmul fast float %4938, %4934
  %4940 = fmul fast float %4924, 0x3FDACB7480000000
  %4941 = fadd fast float %4940, 0xBFD7347680000000
  %4942 = fmul fast float %4941, %4937
  %4943 = fmul fast float %4942, %4934
  br label %4944

; <label>:4944                                    ; preds = %4915, %4888
  %4945 = phi float [ %4930, %4915 ], [ 0.000000e+00, %4888 ]
  %4946 = phi float [ %4931, %4915 ], [ 0.000000e+00, %4888 ]
  %4947 = phi float [ %4932, %4915 ], [ 0.000000e+00, %4888 ]
  %4948 = phi float [ %4939, %4915 ], [ 0.000000e+00, %4888 ]
  %4949 = phi float [ %4943, %4915 ], [ 0.000000e+00, %4888 ]
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %4947, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = fmul fast float %4950, %4950
  %4952 = fmul fast float %4951, 0x3FEE471020000000
  %4953 = fadd fast float %4952, 0xBFD42F6020000000
  %4954 = fmul fast float %4910, 0x3FD20DD760000000
  %4955 = fmul fast float %4953, %4949
  %4956 = fmul fast float %4948, 0x3FDF454380000000
  %4957 = fmul fast float %4956, %4950
  %4958 = fadd fast float %4957, %4954
  %4959 = fadd fast float %4958, %4955
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %4947, float %4788, float %4789, float %4790)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = fmul fast float %4960, 0x3FDF454380000000
  %4962 = fmul fast float %4960, %4960
  %4963 = fmul fast float %4962, 0x3FEE471020000000
  %4964 = fadd fast float %4963, 0xBFD42F6020000000
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4948, float %4949, float 0x3FD20DD760000000, float %4961, float %4964)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4847, float 0.000000e+00)  ; FMax(a,b)
  %4967 = call float @dx.op.binary.f32(i32 35, float %4903, float 0.000000e+00)  ; FMax(a,b)
  %4968 = call float @dx.op.binary.f32(i32 35, float %4959, float 0.000000e+00)  ; FMax(a,b)
  %4969 = call float @dx.op.binary.f32(i32 35, float %4853, float 0.000000e+00)  ; FMax(a,b)
  %4970 = call float @dx.op.binary.f32(i32 35, float %4909, float 0.000000e+00)  ; FMax(a,b)
  %4971 = call float @dx.op.binary.f32(i32 35, float %4965, float 0.000000e+00)  ; FMax(a,b)
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = call float @dx.op.binary.f32(i32 36, float %4734, float %4973)  ; FMin(a,b)
  %4975 = fsub fast float 1.000000e+00, %4791
  %4976 = fmul fast float %4974, %4975
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = bitcast float %4977 to i32
  %4979 = sub nsw i32 2129859010, %4978
  %4980 = bitcast i32 %4979 to float
  %4981 = call float @dx.op.binary.f32(i32 36, float %4735, float %4973)  ; FMin(a,b)
  %4982 = fmul fast float %4981, %4975
  %4983 = fsub fast float 1.000000e+00, %4982
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = call float @dx.op.binary.f32(i32 36, float %4736, float %4973)  ; FMin(a,b)
  %4988 = fmul fast float %4987, %4975
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4966, %4791
  %4994 = fmul fast float %4993, %4980
  %4995 = fmul fast float %4967, %4791
  %4996 = fmul fast float %4995, %4986
  %4997 = fmul fast float %4968, %4791
  %4998 = fmul fast float %4997, %4992
  %4999 = call float @dx.op.binary.f32(i32 36, float %4728, float %4973)  ; FMin(a,b)
  %5000 = fmul fast float %4999, %4975
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = bitcast float %5001 to i32
  %5003 = sub nsw i32 2129859010, %5002
  %5004 = bitcast i32 %5003 to float
  %5005 = call float @dx.op.binary.f32(i32 36, float %4729, float %4973)  ; FMin(a,b)
  %5006 = fmul fast float %5005, %4975
  %5007 = fsub fast float 1.000000e+00, %5006
  %5008 = bitcast float %5007 to i32
  %5009 = sub nsw i32 2129859010, %5008
  %5010 = bitcast i32 %5009 to float
  %5011 = call float @dx.op.binary.f32(i32 36, float %4780, float %4973)  ; FMin(a,b)
  %5012 = fmul fast float %5011, %4975
  %5013 = fsub fast float 1.000000e+00, %5012
  %5014 = bitcast float %5013 to i32
  %5015 = sub nsw i32 2129859010, %5014
  %5016 = bitcast i32 %5015 to float
  %5017 = fmul fast float %4969, %4791
  %5018 = fmul fast float %5017, %5004
  %5019 = fmul fast float %4970, %4791
  %5020 = fmul fast float %5019, %5010
  %5021 = fmul fast float %4971, %4791
  %5022 = fmul fast float %5021, %5016
  %5023 = call float @dx.op.dot3.f32(i32 55, float %4994, float %4996, float %4998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = select i1 %265, float 0.000000e+00, float %4994
  %5025 = select i1 %265, float %5023, float %4996
  %5026 = select i1 %265, float 0.000000e+00, float %4998
  %5027 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5020, float %5022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = select i1 %265, float 0.000000e+00, float %5018
  %5029 = select i1 %265, float %5027, float %5020
  %5030 = select i1 %265, float 0.000000e+00, float %5022
  %5031 = fmul fast float %4796, 0x4071A18460000000
  %5032 = fadd fast float %5031, 0x3F0FFB4800000000
  %5033 = call float @dx.op.unary.f32(i32 23, float %5032)  ; Log(value)
  %5034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %5035 = extractvalue %dx.types.ResRet.i32 %5034, 0
  %5036 = and i32 %5035, 8388608
  %5037 = icmp eq i32 %5036, 0
  br i1 %5037, label %5038, label %5078

; <label>:5038                                    ; preds = %4944
  %5039 = fadd fast float %5033, 0x4006B851E0000000
  %5040 = add i32 %319, 12
  %5041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %5040, i32 undef)  ; BufferLoad(srv,index,wot)
  %5042 = extractvalue %dx.types.ResRet.i32 %5041, 0
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 3
  %5045 = lshr i32 %5042, 16
  %5046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5045)  ; LegacyF16ToF32(value)
  %5047 = extractvalue %dx.types.CBufRet.f32 %5043, 1
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5050 = fsub fast float %101, %5049
  %5051 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5052 = fmul fast float %5050, %5051
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fsub fast float %5047, %5039
  %5055 = fcmp fast ogt float %5054, 0.000000e+00
  %5056 = fcmp fast olt float %5054, 0.000000e+00
  %5057 = zext i1 %5055 to i32
  %5058 = zext i1 %5056 to i32
  %5059 = sub nsw i32 %5057, %5058
  %5060 = sitofp i32 %5059 to float
  %5061 = call float @dx.op.unary.f32(i32 6, float %5054)  ; FAbs(value)
  %5062 = fsub fast float -0.000000e+00, %5046
  %5063 = fsub fast float %5062, %5044
  %5064 = fadd fast float %5063, %5061
  %5065 = call float @dx.op.binary.f32(i32 35, float %5064, float 0.000000e+00)  ; FMax(a,b)
  %5066 = fmul fast float %5060, %5065
  %5067 = fadd fast float %5033, %5066
  %5068 = call float @dx.op.unary.f32(i32 21, float %5067)  ; Exp(value)
  %5069 = fmul fast float %5068, 0x3F50624DE0000000
  %5070 = fcmp fast oeq float %4797, 0.000000e+00
  %5071 = fdiv fast float 0x400C5BF880000000, %4796
  %5072 = fmul fast float %5069, %5071
  %5073 = select i1 %5070, float 1.000000e+00, float %5072
  %5074 = call float @dx.op.binary.f32(i32 35, float %5073, float 1.000000e+00)  ; FMax(a,b)
  %5075 = fadd fast float %5074, -1.000000e+00
  %5076 = fmul fast float %5075, %5053
  %5077 = fadd fast float %5076, 1.000000e+00
  br label %5078

; <label>:5078                                    ; preds = %5038, %4944
  %5079 = phi float [ %5077, %5038 ], [ 1.000000e+00, %4944 ]
  %5080 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5081 = fmul fast float %5080, %5024
  %5082 = fmul fast float %5080, %5025
  %5083 = fmul fast float %5080, %5026
  %5084 = fmul fast float %4782, 9.843750e-01
  %5085 = fmul fast float %4737, 9.843750e-01
  %5086 = fadd fast float %5084, 7.812500e-03
  %5087 = fadd fast float %5085, 7.812500e-03
  %5088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %5086, float %5087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5089 = extractvalue %dx.types.ResRet.f32 %5088, 2
  %5090 = extractvalue %dx.types.ResRet.f32 %5088, 3
  %5091 = fmul fast float %5089, %4728
  %5092 = fmul fast float %5089, %4729
  %5093 = fmul fast float %5089, %4780
  %5094 = fadd fast float %5091, %5090
  %5095 = fadd fast float %5092, %5090
  %5096 = fadd fast float %5093, %5090
  %5097 = call float @dx.op.binary.f32(i32 35, float %5095, float %5096)  ; FMax(a,b)
  %5098 = call float @dx.op.binary.f32(i32 35, float %5094, float %5097)  ; FMax(a,b)
  %5099 = fsub fast float 1.000000e+00, %5098
  %5100 = fmul fast float %193, %193
  %5101 = fmul fast float %194, %194
  %5102 = fadd fast float %5101, %5100
  %5103 = fmul fast float %195, %195
  %5104 = fadd fast float %5102, %5103
  %5105 = call float @dx.op.unary.f32(i32 24, float %5104)  ; Sqrt(value)
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 1
  %5108 = fsub fast float %5105, %5107
  %5109 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5110 = fmul fast float %5108, %5109
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5113 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5114 = and i32 %5035, 4194304
  %5115 = icmp ne i32 %5114, 0
  %5116 = icmp ne i32 %5036, 0
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 1
  %5120 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5121 = extractvalue %dx.types.CBufRet.f32 %5117, 3
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5124 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5125 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5126 = extractvalue %dx.types.CBufRet.f32 %5122, 3
  %5127 = select i1 %5115, float %5118, float %5123
  %5128 = select i1 %5115, float %5119, float %5124
  %5129 = select i1 %5115, float %5120, float %5125
  %5130 = select i1 %5115, float %5121, float %5126
  %5131 = select i1 %5116, float 0.000000e+00, float %5130
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.CBufRet.f32 %5132, 1
  %5135 = select i1 %5115, float %5133, float %5134
  %5136 = select i1 %5116, float 0.000000e+00, float %5135
  %5137 = extractvalue %dx.types.CBufRet.f32 %5132, 2
  %5138 = extractvalue %dx.types.CBufRet.f32 %5132, 3
  %5139 = select i1 %5115, float %5137, float %5138
  %5140 = select i1 %5116, float 0.000000e+00, float %5139
  %5141 = fmul fast float %5111, %59
  %5142 = fmul fast float %5141, %5113
  %5143 = fmul fast float %5142, %5140
  %5144 = fadd fast float %5143, 1.000000e+00
  %5145 = fmul fast float %5099, %5081
  %5146 = fmul fast float %5145, %5144
  %5147 = fmul fast float %5099, %5082
  %5148 = fmul fast float %5147, %5144
  %5149 = fmul fast float %5099, %5083
  %5150 = fmul fast float %5149, %5144
  %5151 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4735, float %4736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = fcmp fast ogt float %5151, 0x3E7FF19E20000000
  %5153 = fdiv fast float 1.000000e+00, %5151
  %5154 = select i1 %5152, float %5153, float 0.000000e+00
  %5155 = fmul fast float %5154, %4734
  %5156 = fmul fast float %5154, %4735
  %5157 = fmul fast float %5154, %4736
  %5158 = fadd fast float %5155, -1.000000e+00
  %5159 = fadd fast float %5156, -1.000000e+00
  %5160 = fadd fast float %5157, -1.000000e+00
  %5161 = fmul fast float %5158, 5.000000e-01
  %5162 = fmul fast float %5159, 5.000000e-01
  %5163 = fmul fast float %5160, 5.000000e-01
  %5164 = fadd fast float %5161, 1.000000e+00
  %5165 = fadd fast float %5162, 1.000000e+00
  %5166 = fadd fast float %5163, 1.000000e+00
  %5167 = fsub fast float %5127, %5164
  %5168 = fsub fast float %5128, %5165
  %5169 = fsub fast float %5129, %5166
  %5170 = fmul fast float %5167, %5131
  %5171 = fmul fast float %5168, %5131
  %5172 = fmul fast float %5169, %5131
  %5173 = fadd fast float %5170, %5164
  %5174 = fadd fast float %5171, %5165
  %5175 = fadd fast float %5172, %5166
  %5176 = fmul fast float %5094, %5028
  %5177 = fmul fast float %5095, %5029
  %5178 = fmul fast float %5096, %5030
  %5179 = fsub fast float 1.000000e+00, %4782
  %5180 = bitcast float %5179 to i32
  %5181 = sitofp i32 %5180 to float
  %5182 = fmul fast float %5181, 5.000000e+00
  %5183 = fadd fast float %5182, 0xC1EFBF8940000000
  %5184 = fptosi float %5183 to i32
  %5185 = bitcast i32 %5184 to float
  %5186 = fmul fast float %5185, %59
  %5187 = fmul fast float %5186, %5111
  %5188 = fmul fast float %5187, %5112
  %5189 = fmul fast float %5188, %5136
  %5190 = fmul fast float %5145, %5189
  %5191 = fmul fast float %5190, %5173
  %5192 = fmul fast float %5147, %5189
  %5193 = fmul fast float %5192, %5174
  %5194 = fmul fast float %5149, %5189
  %5195 = fmul fast float %5194, %5175
  %5196 = fmul fast float %5146, %1256
  %5197 = fmul fast float %5148, %1256
  %5198 = fmul fast float %5150, %1256
  %5199 = fadd fast float %5176, %3519
  %5200 = fadd fast float %5199, %5191
  %5201 = fmul fast float %5200, %1256
  %5202 = fadd fast float %5177, %3521
  %5203 = fadd fast float %5202, %5193
  %5204 = fmul fast float %5203, %1256
  %5205 = fadd fast float %5178, %3523
  %5206 = fadd fast float %5205, %5195
  %5207 = fmul fast float %5206, %1256
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 3
  %5210 = fcmp fast oeq float %5209, 0.000000e+00
  br i1 %5210, label %6226, label %5211

; <label>:5211                                    ; preds = %5078
  %5212 = extractvalue %dx.types.CBufRet.f32 %5208, 0
  %5213 = extractvalue %dx.types.CBufRet.f32 %5208, 1
  %5214 = extractvalue %dx.types.CBufRet.f32 %5208, 2
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.CBufRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.CBufRet.f32 %5215, 2
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.CBufRet.f32 %5219, 1
  %5222 = call float @dx.op.dot3.f32(i32 55, float %5216, float %5217, float %5218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = select i1 %265, float %5220, float %5216
  %5224 = select i1 %265, float %5222, float %5217
  %5225 = select i1 %265, float %5221, float %5218
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 2
  %5228 = fmul fast float %5227, %119
  %5229 = fmul fast float %5227, %121
  %5230 = fmul fast float %5227, %123
  %5231 = fadd fast float %5228, %193
  %5232 = fadd fast float %5229, %194
  %5233 = fadd fast float %5230, %195
  %5234 = fcmp fast olt float %5209, 0.000000e+00
  br i1 %5234, label %5874, label %5235

; <label>:5235                                    ; preds = %5211
  %5236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.f32 %5236, 0
  %5238 = extractvalue %dx.types.CBufRet.f32 %5236, 1
  %5239 = extractvalue %dx.types.CBufRet.f32 %5236, 2
  %5240 = extractvalue %dx.types.CBufRet.f32 %5236, 3
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.CBufRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.CBufRet.f32 %5241, 2
  %5245 = extractvalue %dx.types.CBufRet.f32 %5241, 3
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.CBufRet.f32 %5246, 2
  %5250 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5251 = fmul fast float %5237, %5231
  %5252 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5238, float %5251)  ; FMad(a,b,c)
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5239, float %5252)  ; FMad(a,b,c)
  %5254 = fadd fast float %5253, %5240
  %5255 = fmul fast float %5242, %5231
  %5256 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5243, float %5255)  ; FMad(a,b,c)
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5244, float %5256)  ; FMad(a,b,c)
  %5258 = fadd fast float %5257, %5245
  %5259 = fmul fast float %5247, %5231
  %5260 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5248, float %5259)  ; FMad(a,b,c)
  %5261 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5249, float %5260)  ; FMad(a,b,c)
  %5262 = fadd fast float %5261, %5250
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = fcmp fast une float %5264, 0.000000e+00
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5270 = fmul fast float %5269, %5254
  %5271 = fmul fast float %5269, %5258
  %5272 = fadd fast float %5270, %5267
  %5273 = fadd fast float %5271, %5268
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.CBufRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.CBufRet.f32 %5274, 3
  %5278 = fmul fast float %5277, %5254
  %5279 = fmul fast float %5277, %5258
  %5280 = fadd fast float %5278, %5275
  %5281 = fadd fast float %5279, %5276
  %5282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.f32 %5282, 1
  %5284 = fsub fast float %5283, %5262
  %5285 = extractvalue %dx.types.CBufRet.f32 %5282, 2
  %5286 = fmul fast float %5284, %5285
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  br i1 %5265, label %5349, label %5289

; <label>:5289                                    ; preds = %5235
  %5290 = extractvalue %dx.types.CBufRet.f32 %5274, 2
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5293 = fadd fast float %5292, %5290
  %5294 = fcmp fast ogt float %5293, 0.000000e+00
  br i1 %5294, label %5295, label %5319

; <label>:5295                                    ; preds = %5289
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 0
  %5298 = extractvalue %dx.types.CBufRet.f32 %5296, 1
  %5299 = fsub fast float %5280, %5297
  %5300 = fsub fast float %5281, %5298
  %5301 = fcmp fast olt float %5299, 0.000000e+00
  %5302 = fcmp fast olt float %5300, 0.000000e+00
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.CBufRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.CBufRet.f32 %5303, 2
  %5307 = extractvalue %dx.types.CBufRet.f32 %5303, 3
  %5308 = select i1 %5301, float %5304, float %5306
  %5309 = select i1 %5302, float %5305, float %5307
  %5310 = fmul fast float %5308, %5299
  %5311 = fmul fast float %5309, %5300
  %5312 = call float @dx.op.unary.f32(i32 6, float %5310)  ; FAbs(value)
  %5313 = call float @dx.op.unary.f32(i32 6, float %5311)  ; FAbs(value)
  %5314 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5315 = call float @dx.op.binary.f32(i32 35, float %5312, float %5313)  ; FMax(a,b)
  %5316 = fsub fast float %5314, %5315
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fmul fast float %5317, %5288
  br label %5319

; <label>:5319                                    ; preds = %5295, %5289
  %5320 = phi float [ %5318, %5295 ], [ 0.000000e+00, %5289 ]
  %5321 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5322 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5323 = fadd fast float %5322, %5321
  %5324 = fcmp fast ogt float %5323, 0.000000e+00
  br i1 %5324, label %5325, label %5349

; <label>:5325                                    ; preds = %5319
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5329 = fsub fast float %5272, %5327
  %5330 = fsub fast float %5273, %5328
  %5331 = fcmp fast olt float %5329, 0.000000e+00
  %5332 = fcmp fast olt float %5330, 0.000000e+00
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.CBufRet.f32 %5333, 1
  %5336 = extractvalue %dx.types.CBufRet.f32 %5333, 2
  %5337 = extractvalue %dx.types.CBufRet.f32 %5333, 3
  %5338 = select i1 %5331, float %5334, float %5336
  %5339 = select i1 %5332, float %5335, float %5337
  %5340 = fmul fast float %5338, %5329
  %5341 = fmul fast float %5339, %5330
  %5342 = call float @dx.op.unary.f32(i32 6, float %5340)  ; FAbs(value)
  %5343 = call float @dx.op.unary.f32(i32 6, float %5341)  ; FAbs(value)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5345 = call float @dx.op.binary.f32(i32 35, float %5342, float %5343)  ; FMax(a,b)
  %5346 = fsub fast float %5344, %5345
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = fmul fast float %5347, %5288
  br label %5349

; <label>:5349                                    ; preds = %5325, %5319, %5235
  %5350 = phi float [ 0.000000e+00, %5235 ], [ %5348, %5325 ], [ 0.000000e+00, %5319 ]
  %5351 = phi float [ 0.000000e+00, %5235 ], [ %5320, %5325 ], [ %5320, %5319 ]
  %5352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5352, 1
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5356 = extractvalue %dx.types.CBufRet.f32 %5355, 0
  %5357 = extractvalue %dx.types.CBufRet.f32 %5355, 1
  %5358 = fsub fast float %5254, %5356
  %5359 = fsub fast float %5258, %5357
  %5360 = fcmp fast olt float %5358, 0.000000e+00
  %5361 = fcmp fast olt float %5359, 0.000000e+00
  %5362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5362, 0
  %5364 = extractvalue %dx.types.CBufRet.f32 %5362, 1
  %5365 = extractvalue %dx.types.CBufRet.f32 %5362, 2
  %5366 = extractvalue %dx.types.CBufRet.f32 %5362, 3
  %5367 = select i1 %5360, float %5363, float %5365
  %5368 = select i1 %5361, float %5364, float %5366
  %5369 = fmul fast float %5367, %5358
  %5370 = fmul fast float %5368, %5359
  %5371 = call float @dx.op.unary.f32(i32 6, float %5369)  ; FAbs(value)
  %5372 = call float @dx.op.unary.f32(i32 6, float %5370)  ; FAbs(value)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5374 = call float @dx.op.binary.f32(i32 35, float %5371, float %5372)  ; FMax(a,b)
  %5375 = fsub fast float %5373, %5374
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = call float @dx.op.binary.f32(i32 36, float %5376, float %5354)  ; FMin(a,b)
  %5378 = fmul fast float %5377, %5288
  %5379 = fsub fast float %5350, %5378
  %5380 = fsub fast float %5351, %5350
  %5381 = fsub fast float %5380, %5378
  %5382 = call float @dx.op.binary.f32(i32 35, float %5350, float %5351)  ; FMax(a,b)
  %5383 = call float @dx.op.binary.f32(i32 35, float %5378, float %5382)  ; FMax(a,b)
  %5384 = fcmp fast olt float %5383, 1.000000e+00
  br i1 %5384, label %5385, label %5783, !dx.controlflow.hints !93

; <label>:5385                                    ; preds = %5349
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  %5388 = fcmp fast une float %5387, 0.000000e+00
  br i1 %5388, label %5389, label %5783, !dx.controlflow.hints !94

; <label>:5389                                    ; preds = %5385
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.CBufRet.f32 %5390, 1
  %5393 = extractvalue %dx.types.CBufRet.f32 %5390, 2
  %5394 = extractvalue %dx.types.CBufRet.f32 %5390, 3
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5404 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5405 = fmul fast float %5391, %5231
  %5406 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5392, float %5405)  ; FMad(a,b,c)
  %5407 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5393, float %5406)  ; FMad(a,b,c)
  %5408 = fadd fast float %5407, %5394
  %5409 = fmul fast float %5396, %5231
  %5410 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5397, float %5409)  ; FMad(a,b,c)
  %5411 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5398, float %5410)  ; FMad(a,b,c)
  %5412 = fadd fast float %5411, %5399
  %5413 = fmul fast float %5401, %5231
  %5414 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5402, float %5413)  ; FMad(a,b,c)
  %5415 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5403, float %5414)  ; FMad(a,b,c)
  %5416 = fadd fast float %5415, %5404
  %5417 = fcmp fast oge float %5408, 1.000000e+00
  %5418 = fcmp fast oge float %5412, 1.000000e+00
  %5419 = or i1 %5417, %5418
  %5420 = fcmp fast olt float %5408, 0.000000e+00
  %5421 = fcmp fast olt float %5412, 0.000000e+00
  %5422 = or i1 %5420, %5421
  %5423 = or i1 %5419, %5422
  br i1 %5423, label %5783, label %5424, !dx.controlflow.hints !95

; <label>:5424                                    ; preds = %5389
  %5425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.CBufRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.CBufRet.f32 %5425, 2
  %5429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.i32 %5429, 2
  %5431 = uitofp i32 %5430 to float
  %5432 = extractvalue %dx.types.CBufRet.i32 %5429, 3
  %5433 = uitofp i32 %5432 to float
  %5434 = extractvalue %dx.types.CBufRet.f32 %5425, 3
  %5435 = fmul fast float %5434, 2.000000e+00
  %5436 = fsub fast float %5408, %5426
  %5437 = fsub fast float %5412, %5427
  %5438 = fmul fast float %5435, %5436
  %5439 = fmul fast float %5435, %5437
  %5440 = fdiv fast float 1.000000e+00, %5214
  %5441 = fmul fast float %5439, %5440
  %5442 = call float @dx.op.unary.f32(i32 6, float %5441)  ; FAbs(value)
  %5443 = fmul fast float %5428, %5233
  %5444 = fmul fast float %5443, %5435
  %5445 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5446 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5447 = call float @dx.op.binary.f32(i32 35, float %5445, float %5442)  ; FMax(a,b)
  %5448 = call float @dx.op.binary.f32(i32 35, float %5446, float %5447)  ; FMax(a,b)
  %5449 = fmul fast float %5448, 2.000000e+00
  %5450 = call float @dx.op.unary.f32(i32 23, float %5449)  ; Log(value)
  %5451 = call float @dx.op.binary.f32(i32 35, float %5450, float %5431)  ; FMax(a,b)
  %5452 = call float @dx.op.unary.f32(i32 22, float %5451)  ; Frc(value)
  %5453 = fadd fast float %5452, 0xBFEA666660000000
  %5454 = fmul fast float %5453, 8.000000e+00
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = call float @dx.op.unary.f32(i32 27, float %5451)  ; Round_ni(value)
  %5457 = fadd fast float %5456, %5455
  %5458 = call float @dx.op.binary.f32(i32 36, float %5457, float %5433)  ; FMin(a,b)
  %5459 = call float @dx.op.unary.f32(i32 27, float %5458)  ; Round_ni(value)
  %5460 = fsub fast float -0.000000e+00, %5459
  %5461 = call float @dx.op.unary.f32(i32 21, float %5460)  ; Exp(value)
  %5462 = fmul fast float %5461, %5435
  %5463 = fmul fast float %5462, %5408
  %5464 = fmul fast float %5462, %5412
  %5465 = fmul fast float %5463, 2.500000e-01
  %5466 = fmul fast float %5464, 2.500000e-01
  %5467 = fadd fast float %5465, 5.000000e-01
  %5468 = fadd fast float %5466, 5.000000e-01
  %5469 = fsub fast float %5433, %5431
  %5470 = fptoui float %5469 to i32
  %5471 = add i32 %5470, 320
  %5472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %5471)  ; CBufferLoadLegacy(handle,regIndex)
  %5473 = extractvalue %dx.types.CBufRet.f32 %5472, 0
  %5474 = extractvalue %dx.types.CBufRet.f32 %5472, 1
  %5475 = fcmp fast une float %5458, %5433
  %5476 = fsub fast float %5408, %5473
  %5477 = fsub fast float %5412, %5474
  %5478 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5479 = call float @dx.op.unary.f32(i32 6, float %5477)  ; FAbs(value)
  %5480 = fmul fast float %5478, %5462
  %5481 = fmul fast float %5479, %5462
  %5482 = fcmp fast olt float %5480, 1.000000e+00
  %5483 = fcmp fast olt float %5481, 1.000000e+00
  %5484 = and i1 %5482, %5483
  %5485 = or i1 %5475, %5484
  br i1 %5485, label %5486, label %5783, !dx.controlflow.hints !96

; <label>:5486                                    ; preds = %5424
  %5487 = fmul fast float %5464, 5.000000e-01
  %5488 = fmul fast float %5463, 5.000000e-01
  %5489 = fadd fast float %5487, 5.000000e-01
  %5490 = fadd fast float %5488, 5.000000e-01
  %5491 = sitofp i32 %5430 to float
  %5492 = fsub fast float %5458, %5491
  %5493 = call float @dx.op.unary.f32(i32 27, float %5492)  ; Round_ni(value)
  %5494 = call float @dx.op.unary.f32(i32 22, float %5458)  ; Frc(value)
  %5495 = call float @dx.op.unary.f32(i32 22, float %5490)  ; Frc(value)
  %5496 = call float @dx.op.unary.f32(i32 22, float %5489)  ; Frc(value)
  %5497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %5495, float %5496, float %5493, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5498 = extractvalue %dx.types.ResRet.f32 %5497, 0
  %5499 = extractvalue %dx.types.ResRet.f32 %5497, 1
  %5500 = extractvalue %dx.types.ResRet.f32 %5497, 2
  %5501 = extractvalue %dx.types.ResRet.f32 %5497, 3
  %5502 = fcmp fast ogt float %5494, 0.000000e+00
  br i1 %5502, label %5503, label %5524, !dx.controlflow.hints !97

; <label>:5503                                    ; preds = %5486
  %5504 = fadd fast float %5493, 1.000000e+00
  %5505 = call float @dx.op.unary.f32(i32 22, float %5467)  ; Frc(value)
  %5506 = call float @dx.op.unary.f32(i32 22, float %5468)  ; Frc(value)
  %5507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %5505, float %5506, float %5504, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = extractvalue %dx.types.ResRet.f32 %5507, 1
  %5510 = extractvalue %dx.types.ResRet.f32 %5507, 2
  %5511 = extractvalue %dx.types.ResRet.f32 %5507, 3
  %5512 = fsub fast float %5508, %5498
  %5513 = fsub fast float %5509, %5499
  %5514 = fsub fast float %5510, %5500
  %5515 = fsub fast float %5511, %5501
  %5516 = fmul fast float %5512, %5494
  %5517 = fmul fast float %5513, %5494
  %5518 = fmul fast float %5514, %5494
  %5519 = fmul fast float %5515, %5494
  %5520 = fadd fast float %5516, %5498
  %5521 = fadd fast float %5517, %5499
  %5522 = fadd fast float %5518, %5500
  %5523 = fadd fast float %5519, %5501
  br label %5524

; <label>:5524                                    ; preds = %5503, %5486
  %5525 = phi float [ %5520, %5503 ], [ %5498, %5486 ]
  %5526 = phi float [ %5521, %5503 ], [ %5499, %5486 ]
  %5527 = phi float [ %5522, %5503 ], [ %5500, %5486 ]
  %5528 = phi float [ %5523, %5503 ], [ %5501, %5486 ]
  %5529 = fadd fast float %5525, -5.000000e-01
  %5530 = fadd fast float %5527, -5.000000e-01
  %5531 = fmul fast float %5529, 0xBFD5555560000000
  %5532 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5530, float %5531)  ; FMad(a,b,c)
  %5533 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5526, float 0.000000e+00)  ; FMad(a,b,c)
  %5534 = fadd fast float %5533, %5528
  %5535 = fmul fast float %5529, -7.500000e-01
  %5536 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5530, float %5535)  ; FMad(a,b,c)
  %5537 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5526, float 0.000000e+00)  ; FMad(a,b,c)
  %5538 = fadd fast float %5537, %5528
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 0
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5541, 2
  %5545 = extractvalue %dx.types.CBufRet.f32 %5541, 3
  %5546 = fsub fast float %5542, %5532
  %5547 = fsub fast float %5543, %5534
  %5548 = fsub fast float %5544, %5536
  %5549 = fsub fast float %5545, %5538
  %5550 = fmul fast float %5546, %5540
  %5551 = fmul fast float %5547, %5540
  %5552 = fmul fast float %5548, %5540
  %5553 = fmul fast float %5549, %5540
  %5554 = fadd fast float %5550, %5532
  %5555 = fadd fast float %5551, %5534
  %5556 = fadd fast float %5552, %5536
  %5557 = fadd fast float %5553, %5538
  %5558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5559 = extractvalue %dx.types.ResRet.i32 %5558, 0
  %5560 = and i32 %5559, 536870911
  %5561 = uitofp i32 %5560 to float
  %5562 = fmul fast float %5561, %5408
  %5563 = fmul fast float %5561, %5412
  %5564 = fptoui float %5562 to i32
  %5565 = fptoui float %5563 to i32
  %5566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5567 = extractvalue %dx.types.ResRet.i32 %5566, 0
  %5568 = and i32 %5567, 31
  %5569 = lshr i32 %5564, %5568
  %5570 = lshr i32 %5565, %5568
  %5571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5572 = extractvalue %dx.types.ResRet.i32 %5571, 0
  %5573 = and i32 %5572, 31
  %5574 = shl i32 1, %5573
  %5575 = call i32 @dx.op.binary.i32(i32 40, i32 %5574, i32 4)  ; UMin(a,b)
  %5576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5577 = extractvalue %dx.types.ResRet.i32 %5576, 0
  %5578 = extractvalue %dx.types.ResRet.i32 %5576, 1
  %5579 = icmp eq i32 %5575, 0
  br i1 %5579, label %5621, label %5580

; <label>:5580                                    ; preds = %5524
  br label %5581

; <label>:5581                                    ; preds = %5609, %5580
  %5582 = phi i32 [ %5612, %5609 ], [ 0, %5580 ]
  %5583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5584 = extractvalue %dx.types.ResRet.i32 %5583, 0
  %5585 = lshr i32 %5584, 16
  %5586 = and i32 %5585, 31
  %5587 = shl i32 %5570, %5586
  %5588 = add i32 %5587, %5569
  %5589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5590 = extractvalue %dx.types.ResRet.i32 %5589, 0
  %5591 = and i32 %5590, 31
  %5592 = shl i32 %5588, %5591
  %5593 = add i32 %5592, %5582
  %5594 = shl i32 %5593, 2
  %5595 = add i32 %5594, 32
  %5596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5595, i32 undef)  ; BufferLoad(srv,index,wot)
  %5597 = extractvalue %dx.types.ResRet.i32 %5596, 0
  %5598 = icmp slt i32 %5597, 0
  %5599 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5582
  %5600 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5582
  %5601 = bitcast float* %5599 to i32*
  %5602 = bitcast float* %5600 to i32*
  br i1 %5598, label %5603, label %5609

; <label>:5603                                    ; preds = %5581
  %5604 = and i32 %5597, 1073741823
  %5605 = add nuw nsw i32 %5604, 20
  %5606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5605, i32 undef)  ; BufferLoad(srv,index,wot)
  %5607 = extractvalue %dx.types.ResRet.i32 %5606, 0
  %5608 = extractvalue %dx.types.ResRet.i32 %5606, 1
  br label %5609

; <label>:5609                                    ; preds = %5603, %5581
  %5610 = phi i32 [ %5607, %5603 ], [ %5577, %5581 ]
  %5611 = phi i32 [ %5608, %5603 ], [ %5578, %5581 ]
  store i32 %5610, i32* %5601, align 4
  store i32 %5611, i32* %5602, align 4
  %5612 = add nuw i32 %5582, 1
  %5613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.i32 %5613, 2
  %5615 = icmp eq i32 %5614, 0
  %5616 = icmp ugt i32 %5597, -1073741825
  %5617 = and i1 %5616, %5615
  %5618 = icmp ult i32 %5612, %5575
  %5619 = and i1 %5617, %5618
  br i1 %5619, label %5581, label %5620

; <label>:5620                                    ; preds = %5609
  br label %5621

; <label>:5621                                    ; preds = %5620, %5524
  %5622 = phi i32 [ 0, %5524 ], [ %5612, %5620 ]
  %5623 = extractvalue %dx.types.CBufRet.f32 %5386, 2
  %5624 = fptoui float %5623 to i32
  %5625 = icmp eq i32 %5624, 0
  br i1 %5625, label %5677, label %5626

; <label>:5626                                    ; preds = %5621
  br label %5627

; <label>:5627                                    ; preds = %5672, %5626
  %5628 = phi i32 [ %5673, %5672 ], [ %5622, %5626 ]
  %5629 = phi i32 [ %5674, %5672 ], [ 0, %5626 ]
  %5630 = lshr i32 %5629, 2
  %5631 = and i32 %5629, 3
  %5632 = add nuw nsw i32 %5630, 83
  %5633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %5632)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.i32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.i32 %5633, 1
  %5636 = extractvalue %dx.types.CBufRet.i32 %5633, 2
  %5637 = extractvalue %dx.types.CBufRet.i32 %5633, 3
  %5638 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %5634, i32* %5638, align 4
  %5639 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %5635, i32* %5639, align 4
  %5640 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %5636, i32* %5640, align 4
  %5641 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %5637, i32* %5641, align 4
  %5642 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %5631
  %5643 = load i32, i32* %5642, align 4, !tbaa !98, !noalias !102
  %5644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5645 = extractvalue %dx.types.ResRet.i32 %5644, 0
  %5646 = lshr i32 %5645, 16
  %5647 = and i32 %5646, 31
  %5648 = shl i32 %5570, %5647
  %5649 = add i32 %5648, %5569
  %5650 = shl i32 %5649, 2
  %5651 = add i32 %5650, %5643
  %5652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5651, i32 undef)  ; BufferLoad(srv,index,wot)
  %5653 = extractvalue %dx.types.ResRet.i32 %5652, 0
  %5654 = icmp eq i32 %5653, 0
  br i1 %5654, label %5672, label %5655

; <label>:5655                                    ; preds = %5627
  %5656 = icmp slt i32 %5653, 0
  %5657 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5628
  %5658 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5628
  %5659 = bitcast float* %5657 to i32*
  %5660 = bitcast float* %5658 to i32*
  br i1 %5656, label %5661, label %5668

; <label>:5661                                    ; preds = %5655
  %5662 = and i32 %5653, 1073741823
  %5663 = add i32 %5643, 20
  %5664 = add i32 %5663, %5662
  %5665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5664, i32 undef)  ; BufferLoad(srv,index,wot)
  %5666 = extractvalue %dx.types.ResRet.i32 %5665, 0
  %5667 = extractvalue %dx.types.ResRet.i32 %5665, 1
  br label %5668

; <label>:5668                                    ; preds = %5661, %5655
  %5669 = phi i32 [ %5666, %5661 ], [ %5577, %5655 ]
  %5670 = phi i32 [ %5667, %5661 ], [ %5578, %5655 ]
  store i32 %5669, i32* %5659, align 4
  store i32 %5670, i32* %5660, align 4
  %5671 = add i32 %5628, 1
  br label %5672

; <label>:5672                                    ; preds = %5668, %5627
  %5673 = phi i32 [ %5628, %5627 ], [ %5671, %5668 ]
  %5674 = add nuw i32 %5629, 1
  %5675 = icmp eq i32 %5674, %5624
  br i1 %5675, label %5676, label %5627

; <label>:5676                                    ; preds = %5672
  br label %5677

; <label>:5677                                    ; preds = %5676, %5621
  %5678 = phi i32 [ %5622, %5621 ], [ %5673, %5676 ]
  %5679 = icmp eq i32 %5678, 1
  %5680 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %5681 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %5679, label %5682, label %5685

; <label>:5682                                    ; preds = %5677
  %5683 = load float, float* %5680, align 4
  %5684 = load float, float* %5681, align 4
  br label %5712

; <label>:5685                                    ; preds = %5677
  %5686 = load float, float* %5680, align 4
  %5687 = load float, float* %5681, align 4
  %5688 = fdiv fast float 1.000000e+00, %5687
  %5689 = fsub fast float %5686, %5688
  %5690 = icmp ugt i32 %5678, 1
  br i1 %5690, label %5691, label %5707

; <label>:5691                                    ; preds = %5685
  br label %5692

; <label>:5692                                    ; preds = %5692, %5691
  %5693 = phi float [ %5702, %5692 ], [ %5689, %5691 ]
  %5694 = phi float [ %5703, %5692 ], [ %5686, %5691 ]
  %5695 = phi i32 [ %5704, %5692 ], [ 1, %5691 ]
  %5696 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5695
  %5697 = load float, float* %5696, align 4
  %5698 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5695
  %5699 = load float, float* %5698, align 4
  %5700 = fdiv fast float 1.000000e+00, %5699
  %5701 = fsub fast float %5697, %5700
  %5702 = call float @dx.op.binary.f32(i32 36, float %5693, float %5701)  ; FMin(a,b)
  %5703 = call float @dx.op.binary.f32(i32 35, float %5694, float %5697)  ; FMax(a,b)
  %5704 = add nuw i32 %5695, 1
  %5705 = icmp eq i32 %5704, %5678
  br i1 %5705, label %5706, label %5692

; <label>:5706                                    ; preds = %5692
  br label %5707

; <label>:5707                                    ; preds = %5706, %5685
  %5708 = phi float [ %5689, %5685 ], [ %5702, %5706 ]
  %5709 = phi float [ %5686, %5685 ], [ %5703, %5706 ]
  %5710 = fsub fast float %5709, %5708
  %5711 = fdiv fast float 1.000000e+00, %5710
  br label %5712

; <label>:5712                                    ; preds = %5707, %5682
  %5713 = phi float [ %5683, %5682 ], [ %5709, %5707 ]
  %5714 = phi float [ %5684, %5682 ], [ %5711, %5707 ]
  %5715 = fadd fast float %5416, %5713
  %5716 = fmul fast float %5715, %5714
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fmul fast float %5717, 2.000000e+00
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = fmul fast float %5554, %5554
  %5721 = fsub fast float %5555, %5720
  %5722 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5721)  ; FMax(a,b)
  %5723 = fdiv fast float 1.000000e+00, %5722
  %5724 = fmul fast float %5555, %5554
  %5725 = fsub fast float %5556, %5724
  %5726 = fsub fast float %5719, %5554
  %5727 = fmul fast float %5719, %5719
  %5728 = fsub fast float %5727, %5555
  %5729 = fmul fast float %5723, %5725
  %5730 = fmul fast float %5729, %5726
  %5731 = fsub fast float %5728, %5730
  %5732 = fmul fast float %5555, %5555
  %5733 = fsub fast float %5557, %5732
  %5734 = fmul fast float %5725, %5725
  %5735 = fmul fast float %5734, %5723
  %5736 = fsub fast float %5733, %5735
  %5737 = fdiv fast float %5731, %5736
  %5738 = fmul fast float %5737, %5725
  %5739 = fsub fast float %5726, %5738
  %5740 = fmul fast float %5739, %5723
  %5741 = fmul fast float %5740, %5554
  %5742 = fsub fast float 1.000000e+00, %5741
  %5743 = fmul fast float %5737, %5555
  %5744 = fsub fast float %5742, %5743
  %5745 = fmul fast float %5740, %5740
  %5746 = fmul fast float %5737, 4.000000e+00
  %5747 = fmul fast float %5746, %5744
  %5748 = fsub fast float %5745, %5747
  %5749 = call float @dx.op.unary.f32(i32 24, float %5748)  ; Sqrt(value)
  %5750 = fcmp fast oge float %5740, 0.000000e+00
  %5751 = fsub fast float -0.000000e+00, %5749
  %5752 = select i1 %5750, float %5751, float %5749
  %5753 = fsub fast float %5752, %5740
  %5754 = fdiv fast float %5753, %5737
  %5755 = fdiv fast float %5744, %5753
  %5756 = fmul fast float %5754, 5.000000e-01
  %5757 = fmul fast float %5755, 2.000000e+00
  %5758 = select i1 %5750, float %5756, float %5757
  %5759 = select i1 %5750, float %5757, float %5756
  %5760 = call float @dx.op.binary.f32(i32 35, float %5758, float %5759)  ; FMax(a,b)
  %5761 = call float @dx.op.binary.f32(i32 36, float %5758, float %5759)  ; FMin(a,b)
  %5762 = fcmp fast ogt float %5719, %5760
  %5763 = fsub fast float %5719, %5761
  %5764 = fsub fast float %5719, %5760
  %5765 = fsub fast float %5760, %5761
  %5766 = select i1 %5762, float %5764, float %5765
  %5767 = fmul float %5763, %5766
  %5768 = select i1 %5762, float %5761, float %5719
  %5769 = fcmp fast ogt float %5719, %5761
  %5770 = fmul fast float %5768, %5760
  %5771 = fadd fast float %5768, %5760
  %5772 = fmul fast float %5771, %5554
  %5773 = fadd fast float %5770, %5555
  %5774 = fsub fast float %5773, %5772
  %5775 = fdiv fast float %5774, %5767
  %5776 = select i1 %5769, float %5775, float 0.000000e+00
  %5777 = fsub fast float 1.000000e+00, %5776
  %5778 = select i1 %5762, float %5777, float %5776
  %5779 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5539, 3
  %5781 = fmul fast float %5780, %5779
  %5782 = fsub fast float 1.000000e+00, %5781
  br label %5783

; <label>:5783                                    ; preds = %5712, %5424, %5389, %5385, %5349
  %5784 = phi float [ 1.000000e+00, %5349 ], [ %5782, %5712 ], [ 1.000000e+00, %5389 ], [ 1.000000e+00, %5424 ], [ 1.000000e+00, %5385 ]
  %5785 = fcmp fast ogt float %5381, 0.000000e+00
  br i1 %5785, label %5786, label %5794, !dx.controlflow.hints !111

; <label>:5786                                    ; preds = %5783
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5789 = fadd fast float %5788, %5262
  %5790 = call float @dx.op.binary.f32(i32 35, float %5789, float 0.000000e+00)  ; FMax(a,b)
  %5791 = fadd fast float %5790, 0x3F10000000000000
  %5792 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %5280, float %5281, float undef, float undef, i32 0, i32 0, i32 undef, float %5791)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5793 = extractvalue %dx.types.ResRet.f32 %5792, 0
  br label %5794

; <label>:5794                                    ; preds = %5786, %5783
  %5795 = phi float [ %5793, %5786 ], [ 1.000000e+00, %5783 ]
  %5796 = fcmp fast ogt float %5379, 0.000000e+00
  br i1 %5796, label %5797, label %5805, !dx.controlflow.hints !112

; <label>:5797                                    ; preds = %5794
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 1
  %5800 = fadd fast float %5799, %5262
  %5801 = call float @dx.op.binary.f32(i32 35, float %5800, float 0.000000e+00)  ; FMax(a,b)
  %5802 = fadd fast float %5801, 0x3F10000000000000
  %5803 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %5272, float %5273, float undef, float undef, i32 0, i32 0, i32 undef, float %5802)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5804 = extractvalue %dx.types.ResRet.f32 %5803, 0
  br label %5805

; <label>:5805                                    ; preds = %5797, %5794
  %5806 = phi float [ %5804, %5797 ], [ 1.000000e+00, %5794 ]
  %5807 = fcmp fast ogt float %5378, 0.000000e+00
  br i1 %5807, label %5808, label %5820, !dx.controlflow.hints !113

; <label>:5808                                    ; preds = %5805
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 0
  %5811 = fadd fast float %5810, %5262
  %5812 = call float @dx.op.binary.f32(i32 35, float %5811, float 0.000000e+00)  ; FMax(a,b)
  %5813 = fadd fast float %5812, 0x3F10000000000000
  br i1 %5265, label %5814, label %5817, !dx.controlflow.hints !114

; <label>:5814                                    ; preds = %5808
  %5815 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %5254, float %5258, float undef, float undef, i32 0, i32 0, i32 undef, float %5813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5816 = extractvalue %dx.types.ResRet.f32 %5815, 0
  br label %5820

; <label>:5817                                    ; preds = %5808
  %5818 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %5254, float %5258, float undef, float undef, i32 0, i32 0, i32 undef, float %5813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5819 = extractvalue %dx.types.ResRet.f32 %5818, 0
  br label %5820

; <label>:5820                                    ; preds = %5817, %5814, %5805
  %5821 = phi float [ %5816, %5814 ], [ %5819, %5817 ], [ 1.000000e+00, %5805 ]
  %5822 = fsub fast float %5795, %5784
  %5823 = fmul fast float %5822, %5351
  %5824 = fadd fast float %5823, %5784
  %5825 = fsub fast float %5806, %5824
  %5826 = fmul fast float %5825, %5350
  %5827 = fadd fast float %5826, %5824
  %5828 = fsub fast float %5821, %5827
  %5829 = fmul fast float %5828, %5378
  %5830 = fadd fast float %5829, %5827
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5833 = fcmp fast ogt float %5832, 0.000000e+00
  br i1 %5833, label %5834, label %5874, !dx.controlflow.hints !115

; <label>:5834                                    ; preds = %5820
  %5835 = fcmp fast ugt float %5832, 0.000000e+00
  br i1 %5835, label %5836, label %5871

; <label>:5836                                    ; preds = %5834
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.CBufRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5841 = extractvalue %dx.types.CBufRet.f32 %5837, 3
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.CBufRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.CBufRet.f32 %5842, 2
  %5846 = extractvalue %dx.types.CBufRet.f32 %5842, 3
  %5847 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5848 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5853 = fadd fast float %5850, %5231
  %5854 = fadd fast float %5851, %5232
  %5855 = fadd fast float %5852, %5233
  %5856 = fmul fast float %5853, %5838
  %5857 = call float @dx.op.tertiary.f32(i32 46, float %5839, float %5854, float %5856)  ; FMad(a,b,c)
  %5858 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %5855, float %5857)  ; FMad(a,b,c)
  %5859 = fadd fast float %5858, %5841
  %5860 = fmul fast float %5853, %5843
  %5861 = call float @dx.op.tertiary.f32(i32 46, float %5844, float %5854, float %5860)  ; FMad(a,b,c)
  %5862 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5855, float %5861)  ; FMad(a,b,c)
  %5863 = fadd fast float %5862, %5846
  %5864 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %5859, float %5863, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5865 = extractvalue %dx.types.ResRet.f32 %5864, 0
  %5866 = fmul fast float %5865, %5848
  %5867 = fadd fast float %5866, %5847
  %5868 = call float @dx.op.unary.f32(i32 7, float %5867)  ; Saturate(value)
  %5869 = fmul fast float %5868, %5832
  %5870 = fsub fast float 1.000000e+00, %5869
  br label %5871

; <label>:5871                                    ; preds = %5836, %5834
  %5872 = phi float [ %5870, %5836 ], [ 1.000000e+00, %5834 ]
  %5873 = fmul fast float %5872, %5830
  br label %5874

; <label>:5874                                    ; preds = %5871, %5820, %5211
  %5875 = phi float [ 1.000000e+00, %5211 ], [ %5873, %5871 ], [ %5830, %5820 ]
  %5876 = call float @dx.op.binary.f32(i32 36, float %5875, float %5875)  ; FMin(a,b)
  %5877 = call float @dx.op.binary.f32(i32 36, float %5875, float %5876)  ; FMin(a,b)
  %5878 = fcmp fast ogt float %5877, 0.000000e+00
  br i1 %5878, label %5879, label %6039, !dx.controlflow.hints !116

; <label>:5879                                    ; preds = %5874
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5884 = extractvalue %dx.types.CBufRet.f32 %5880, 3
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.CBufRet.f32 %5885, 1
  %5888 = extractvalue %dx.types.CBufRet.f32 %5885, 2
  %5889 = extractvalue %dx.types.CBufRet.f32 %5885, 3
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5894 = extractvalue %dx.types.CBufRet.f32 %5890, 3
  %5895 = fmul fast float %5881, %5231
  %5896 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5882, float %5895)  ; FMad(a,b,c)
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5883, float %5896)  ; FMad(a,b,c)
  %5898 = fadd fast float %5897, %5884
  %5899 = fmul fast float %5886, %5231
  %5900 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5887, float %5899)  ; FMad(a,b,c)
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5888, float %5900)  ; FMad(a,b,c)
  %5902 = fadd fast float %5901, %5889
  %5903 = fmul fast float %5891, %5231
  %5904 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5892, float %5903)  ; FMad(a,b,c)
  %5905 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5893, float %5904)  ; FMad(a,b,c)
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5909 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5910 = fmul fast float %5909, %5898
  %5911 = fmul fast float %5909, %5902
  %5912 = fadd fast float %5910, %5907
  %5913 = fadd fast float %5911, %5908
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.CBufRet.f32 %5914, 1
  %5917 = fsub fast float %5912, %5915
  %5918 = fsub fast float %5913, %5916
  %5919 = fcmp fast olt float %5917, 0.000000e+00
  %5920 = fcmp fast olt float %5918, 0.000000e+00
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.CBufRet.f32 %5921, 2
  %5925 = extractvalue %dx.types.CBufRet.f32 %5921, 3
  %5926 = select i1 %5919, float %5922, float %5924
  %5927 = select i1 %5920, float %5923, float %5925
  %5928 = fmul fast float %5926, %5917
  %5929 = fmul fast float %5927, %5918
  %5930 = call float @dx.op.unary.f32(i32 6, float %5928)  ; FAbs(value)
  %5931 = call float @dx.op.unary.f32(i32 6, float %5929)  ; FAbs(value)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5933 = call float @dx.op.binary.f32(i32 35, float %5930, float %5931)  ; FMax(a,b)
  %5934 = fsub fast float %5932, %5933
  %5935 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  %5936 = fcmp fast ogt float %5935, 0.000000e+00
  br i1 %5936, label %5937, label %5978, !dx.controlflow.hints !117

; <label>:5937                                    ; preds = %5879
  %5938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %5912, float %5913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5939 = extractvalue %dx.types.ResRet.f32 %5938, 1
  %5940 = fcmp fast ogt float %5939, 0.000000e+00
  br i1 %5940, label %5941, label %5973

; <label>:5941                                    ; preds = %5937
  %5942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %5912, float %5913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5943 = extractvalue %dx.types.ResRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.ResRet.f32 %5942, 1
  %5945 = extractvalue %dx.types.ResRet.f32 %5942, 2
  %5946 = extractvalue %dx.types.ResRet.f32 %5942, 3
  %5947 = fsub fast float 1.000000e+00, %5894
  %5948 = fsub fast float %5947, %5905
  %5949 = fmul fast float %5948, 0x400921FB60000000
  %5950 = fadd fast float %5949, 0x3FF921FB60000000
  %5951 = call float @dx.op.unary.f32(i32 13, float %5950)  ; Sin(value)
  %5952 = fadd fast float %5951, -1.000000e+00
  %5953 = fmul fast float %5952, 0x3FD45F3060000000
  %5954 = fmul fast float %5948, 0x401921FB60000000
  %5955 = fadd fast float %5954, 0x400921FB60000000
  %5956 = call float @dx.op.unary.f32(i32 13, float %5955)  ; Sin(value)
  %5957 = fadd fast float %5956, 0x3E7777A5C0000000
  %5958 = fmul fast float %5957, 0x3FC45F3060000000
  %5959 = fmul fast float %5948, 0x4022D97C80000000
  %5960 = fadd fast float %5959, 0x4012D97C80000000
  %5961 = call float @dx.op.unary.f32(i32 13, float %5960)  ; Sin(value)
  %5962 = fadd fast float %5961, 1.000000e+00
  %5963 = fmul fast float %5962, 0x3FBB2995E0000000
  %5964 = fmul fast float %5948, 0x402921FB60000000
  %5965 = fadd fast float %5964, 0x401921FB60000000
  %5966 = call float @dx.op.unary.f32(i32 13, float %5965)  ; Sin(value)
  %5967 = fadd fast float %5966, 0xBE8777A5C0000000
  %5968 = fmul fast float %5967, 0x3FB45F3060000000
  %5969 = call float @dx.op.dot4.f32(i32 56, float %5943, float %5944, float %5945, float %5946, float %5953, float %5958, float %5963, float %5968)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5970 = fmul fast float %5969, 0xBFF7154760000000
  %5971 = call float @dx.op.unary.f32(i32 21, float %5970)  ; Exp(value)
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  br label %5973

; <label>:5973                                    ; preds = %5941, %5937
  %5974 = phi float [ %5972, %5941 ], [ 1.000000e+00, %5937 ]
  %5975 = fadd fast float %5974, -1.000000e+00
  %5976 = fmul fast float %5975, %5935
  %5977 = fadd fast float %5976, 1.000000e+00
  br label %5978

; <label>:5978                                    ; preds = %5973, %5879
  %5979 = phi float [ %5977, %5973 ], [ 1.000000e+00, %5879 ]
  %5980 = fmul fast float %5979, %5875
  %5981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.CBufRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.CBufRet.f32 %5981, 2
  %5985 = fadd fast float %5982, %193
  %5986 = fadd fast float %5983, %194
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 1
  %5989 = fsub fast float -0.000000e+00, %5985
  %5990 = fsub fast float -0.000000e+00, %5986
  %5991 = fsub fast float %4771, %5984
  %5992 = fadd fast float %5991, %5988
  %5993 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5989, float %5990, float %5992)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5212, float %5213, float %5214)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = fdiv fast float 1.000000e+00, %5994
  %5996 = fmul fast float %5995, %5993
  %5997 = fmul fast float %5212, %5996
  %5998 = fmul fast float %5213, %5996
  %5999 = fadd fast float %5997, %5985
  %6000 = fadd fast float %5998, %5986
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 1
  %6004 = fsub fast float %5999, %6002
  %6005 = fsub fast float %6000, %6003
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 2
  %6008 = extractvalue %dx.types.CBufRet.f32 %6006, 3
  %6009 = fmul fast float %6004, %6007
  %6010 = fmul fast float %6005, %6008
  %6011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.i32 %6011, 3
  %6013 = icmp eq i32 %6012, 0
  br i1 %6013, label %6019, label %6014

; <label>:6014                                    ; preds = %5978
  %6015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %6009, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.ResRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.ResRet.f32 %6015, 2
  br label %6024

; <label>:6019                                    ; preds = %5978
  %6020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %6009, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6021 = extractvalue %dx.types.ResRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.ResRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.ResRet.f32 %6020, 2
  br label %6024

; <label>:6024                                    ; preds = %6019, %6014
  %6025 = phi float [ %6016, %6014 ], [ %6021, %6019 ]
  %6026 = phi float [ %6017, %6014 ], [ %6022, %6019 ]
  %6027 = phi float [ %6018, %6014 ], [ %6023, %6019 ]
  %6028 = extractvalue %dx.types.CBufRet.f32 %5987, 2
  %6029 = fmul fast float %6028, %6025
  %6030 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %6031 = fsub fast float %5996, %6030
  %6032 = fsub fast float %6031, %6029
  %6033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6032)  ; FMax(a,b)
  %6034 = fmul fast float %6033, %6026
  %6035 = call float @dx.op.binary.f32(i32 36, float %6027, float %6034)  ; FMin(a,b)
  %6036 = fmul fast float %6035, 0xBFF7154760000000
  %6037 = call float @dx.op.unary.f32(i32 21, float %6036)  ; Exp(value)
  %6038 = fmul fast float %5980, %6037
  br label %6039

; <label>:6039                                    ; preds = %6024, %5874
  %6040 = phi float [ %6038, %6024 ], [ %5875, %5874 ]
  %6041 = call float @dx.op.binary.f32(i32 36, float %6040, float %6040)  ; FMin(a,b)
  %6042 = call float @dx.op.binary.f32(i32 36, float %6040, float %6041)  ; FMin(a,b)
  %6043 = fcmp fast ogt float %6042, 0.000000e+00
  br i1 %6043, label %6044, label %6226, !dx.controlflow.hints !118

; <label>:6044                                    ; preds = %6039
  %6045 = fmul fast float %6040, %5223
  %6046 = fmul fast float %6040, %5224
  %6047 = fmul fast float %6040, %5225
  %6048 = fsub fast float %195, %3948
  %6049 = fcmp fast ogt float %6048, 0.000000e+00
  %6050 = fmul fast float %5212, 5.120000e+02
  %6051 = fmul fast float %5213, 5.120000e+02
  %6052 = fmul fast float %5214, 5.120000e+02
  %6053 = fadd fast float %6052, %195
  %6054 = fsub fast float %3948, %6053
  %6055 = fmul fast float %6054, 2.000000e+00
  %6056 = fadd fast float %6055, %6053
  %6057 = select i1 %6049, float %6056, float %6053
  %6058 = fsub fast float %6057, %195
  %6059 = call float @dx.op.dot3.f32(i32 55, float %6050, float %6051, float %6058, float %6050, float %6051, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = call float @dx.op.unary.f32(i32 25, float %6059)  ; Rsqrt(value)
  %6061 = fmul fast float %6060, %6050
  %6062 = fmul fast float %6060, %6051
  %6063 = fmul fast float %6060, %6058
  %6064 = fsub fast float %3948, %195
  %6065 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6064)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6061, float %6062, float %6063)  ; Dot3(ax,ay,az,bx,by,bz)
  %6067 = fdiv fast float 1.000000e+00, %6066
  %6068 = fmul fast float %6067, %6065
  %6069 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6048, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = fcmp fast ogt float %6069, 0.000000e+00
  %6071 = fcmp fast olt float %6069, 0.000000e+00
  %6072 = zext i1 %6070 to i32
  %6073 = zext i1 %6071 to i32
  %6074 = sub nsw i32 %6072, %6073
  %6075 = sitofp i32 %6074 to float
  %6076 = fsub fast float %6057, %3948
  %6077 = call float @dx.op.dot3.f32(i32 55, float %6050, float %6051, float %6076, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = fcmp fast ogt float %6077, 0.000000e+00
  %6079 = fcmp fast olt float %6077, 0.000000e+00
  %6080 = zext i1 %6078 to i32
  %6081 = zext i1 %6079 to i32
  %6082 = sub nsw i32 %6080, %6081
  %6083 = sitofp i32 %6082 to float
  %6084 = fcmp fast une float %6075, %6083
  br i1 %6084, label %6085, label %6095

; <label>:6085                                    ; preds = %6044
  %6086 = fmul fast float %6068, %6063
  %6087 = fmul fast float %6068, %6062
  %6088 = fmul fast float %6068, %6061
  %6089 = fmul fast float %6088, %6088
  %6090 = fmul fast float %6087, %6087
  %6091 = fadd fast float %6089, %6090
  %6092 = fmul fast float %6086, %6086
  %6093 = fadd fast float %6091, %6092
  %6094 = call float @dx.op.unary.f32(i32 24, float %6093)  ; Sqrt(value)
  br label %6105

; <label>:6095                                    ; preds = %6044
  %6096 = icmp slt i32 %6074, 0
  br i1 %6096, label %6097, label %6105

; <label>:6097                                    ; preds = %6095
  %6098 = fsub fast float %195, %6057
  %6099 = fmul fast float %6050, %6050
  %6100 = fmul fast float %6051, %6051
  %6101 = fadd fast float %6099, %6100
  %6102 = fmul fast float %6098, %6098
  %6103 = fadd fast float %6101, %6102
  %6104 = call float @dx.op.unary.f32(i32 24, float %6103)  ; Sqrt(value)
  br label %6105

; <label>:6105                                    ; preds = %6097, %6095, %6085
  %6106 = phi float [ %6094, %6085 ], [ %6104, %6097 ], [ 0.000000e+00, %6095 ]
  %6107 = fsub fast float -0.000000e+00, %6106
  %6108 = select i1 %6049, float -0.000000e+00, float %6107
  %6109 = fmul fast float %3949, 0x3FF7154760000000
  %6110 = fmul fast float %6109, %6108
  %6111 = fmul fast float %3950, 0x3FF7154760000000
  %6112 = fmul fast float %6111, %6108
  %6113 = fmul fast float %3951, 0x3FF7154760000000
  %6114 = fmul fast float %6113, %6108
  %6115 = call float @dx.op.unary.f32(i32 21, float %6110)  ; Exp(value)
  %6116 = call float @dx.op.unary.f32(i32 21, float %6112)  ; Exp(value)
  %6117 = call float @dx.op.unary.f32(i32 21, float %6114)  ; Exp(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6120 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  %6121 = fmul fast float %6045, %6118
  %6122 = fmul fast float %6046, %6119
  %6123 = fmul fast float %6047, %6120
  %6124 = fsub fast float %5212, %4774
  %6125 = fsub fast float %5213, %4775
  %6126 = fsub fast float %5214, %4776
  %6127 = call float @dx.op.dot3.f32(i32 55, float %6124, float %6125, float %6126, float %6124, float %6125, float %6126)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = call float @dx.op.unary.f32(i32 25, float %6127)  ; Rsqrt(value)
  %6129 = fmul fast float %6128, %6124
  %6130 = fmul fast float %6128, %6125
  %6131 = fmul fast float %6128, %6126
  %6132 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %6129, float %6130, float %6131)  ; Dot3(ax,ay,az,bx,by,bz)
  %6134 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6135 = fmul fast float %6134, %6134
  %6136 = fmul fast float %6135, %4795
  %6137 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  %6138 = fmul fast float %6137, %6134
  %6139 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4732, float %4733, float %6129, float %6130, float %6131)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = fmul fast float %6139, %6139
  %6141 = call float @dx.op.unary.f32(i32 6, float %6132)  ; FAbs(value)
  %6142 = fsub fast float 1.000000e+00, %4737
  %6143 = call float @dx.op.binary.f32(i32 35, float %6142, float 0x3F847AE140000000)  ; FMax(a,b)
  %6144 = fmul fast float %6143, %6143
  %6145 = fmul fast float %6144, %6144
  %6146 = fsub fast float 1.000000e+00, %6145
  %6147 = fmul fast float %4782, %4782
  %6148 = fmul fast float %6147, %6146
  %6149 = fadd fast float %6148, %6145
  %6150 = bitcast float %6149 to i32
  %6151 = ashr i32 %6150, 1
  %6152 = add nsw i32 %6151, 532487669
  %6153 = bitcast i32 %6152 to float
  %6154 = fadd fast float %6153, %4782
  %6155 = fmul fast float %6145, %6140
  %6156 = fsub fast float 1.000000e+00, %6140
  %6157 = fadd fast float %6156, %6155
  %6158 = fmul fast float %6141, %6141
  %6159 = fmul fast float %6158, %6146
  %6160 = fadd fast float %6159, %6145
  %6161 = bitcast float %6160 to i32
  %6162 = ashr i32 %6161, 1
  %6163 = add nsw i32 %6162, 532487669
  %6164 = bitcast i32 %6163 to float
  %6165 = fadd fast float %6164, %6141
  %6166 = fmul fast float %6157, %6157
  %6167 = fmul fast float %6166, %6154
  %6168 = fmul fast float %6167, %6165
  %6169 = fdiv fast float 0x3FF0A00000000000, %6168
  %6170 = fmul fast float %6169, %6145
  %6171 = call float @dx.op.unary.f32(i32 6, float %6133)  ; FAbs(value)
  %6172 = fsub fast float 1.000000e+00, %6171
  %6173 = bitcast float %6172 to i32
  %6174 = sitofp i32 %6173 to float
  %6175 = fmul fast float %6174, 5.000000e+00
  %6176 = fadd fast float %6175, 0xC1EFBF8940000000
  %6177 = fptosi float %6176 to i32
  %6178 = bitcast i32 %6177 to float
  %6179 = fsub fast float 1.000000e+00, %4728
  %6180 = fsub fast float 1.000000e+00, %4729
  %6181 = fsub fast float 1.000000e+00, %4780
  %6182 = fmul fast float %6178, %6179
  %6183 = fmul fast float %6178, %6180
  %6184 = fmul fast float %6178, %6181
  %6185 = fadd fast float %6182, %4728
  %6186 = fadd fast float %6183, %4729
  %6187 = fadd fast float %6184, %4780
  %6188 = fmul fast float %6132, 9.843750e-01
  %6189 = fadd fast float %6188, 7.812500e-03
  %6190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %6189, float %5087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6191 = extractvalue %dx.types.ResRet.f32 %6190, 2
  %6192 = extractvalue %dx.types.ResRet.f32 %6190, 3
  %6193 = fmul fast float %6191, %4728
  %6194 = fmul fast float %6191, %4729
  %6195 = fmul fast float %6191, %4780
  %6196 = fadd fast float %6193, %6192
  %6197 = fadd fast float %6194, %6192
  %6198 = fadd fast float %6195, %6192
  %6199 = call float @dx.op.binary.f32(i32 35, float %6197, float %6198)  ; FMax(a,b)
  %6200 = call float @dx.op.binary.f32(i32 35, float %6196, float %6199)  ; FMax(a,b)
  %6201 = fsub fast float 1.000000e+00, %6200
  %6202 = fmul fast float %6138, %6121
  %6203 = fmul fast float %6202, %6201
  %6204 = fmul fast float %6138, %6122
  %6205 = fmul fast float %6204, %6201
  %6206 = fmul fast float %6138, %6123
  %6207 = fmul fast float %6206, %6201
  %6208 = fmul fast float %6202, %6170
  %6209 = fmul fast float %6208, %6185
  %6210 = fmul fast float %6204, %6170
  %6211 = fmul fast float %6210, %6186
  %6212 = fmul fast float %6206, %6170
  %6213 = fmul fast float %6212, %6187
  %6214 = fadd fast float %6203, %5146
  %6215 = fmul fast float %6214, %1256
  %6216 = fadd fast float %6205, %5148
  %6217 = fmul fast float %6216, %1256
  %6218 = fadd fast float %6207, %5150
  %6219 = fmul fast float %6218, %1256
  %6220 = fadd fast float %6209, %5200
  %6221 = fmul fast float %6220, %1256
  %6222 = fadd fast float %6211, %5203
  %6223 = fmul fast float %6222, %1256
  %6224 = fadd fast float %6213, %5206
  %6225 = fmul fast float %6224, %1256
  br label %6226

; <label>:6226                                    ; preds = %6105, %6039, %5078
  %6227 = phi float [ %5201, %5078 ], [ %5201, %6039 ], [ %6221, %6105 ]
  %6228 = phi float [ %5204, %5078 ], [ %5204, %6039 ], [ %6223, %6105 ]
  %6229 = phi float [ %5207, %5078 ], [ %5207, %6039 ], [ %6225, %6105 ]
  %6230 = phi float [ %5196, %5078 ], [ %5196, %6039 ], [ %6215, %6105 ]
  %6231 = phi float [ %5197, %5078 ], [ %5197, %6039 ], [ %6217, %6105 ]
  %6232 = phi float [ %5198, %5078 ], [ %5198, %6039 ], [ %6219, %6105 ]
  %6233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.i32 %6233, 0
  %6235 = icmp eq i32 %6234, 0
  br i1 %6235, label %6787, label %6236

; <label>:6236                                    ; preds = %6226
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 2
  %6239 = extractvalue %dx.types.CBufRet.f32 %6237, 3
  %6240 = fmul fast float %6238, %110
  %6241 = fmul fast float %6239, %111
  %6242 = fptoui float %6240 to i32
  %6243 = fptoui float %6241 to i32
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6247 = extractvalue %dx.types.CBufRet.f32 %6244, 3
  %6248 = fadd fast float %101, -4.000000e+00
  %6249 = call float @dx.op.binary.f32(i32 35, float %6248, float 0.000000e+00)  ; FMax(a,b)
  %6250 = fadd fast float %6249, %6245
  %6251 = fmul fast float %6250, %6246
  %6252 = call float @dx.op.unary.f32(i32 23, float %6251)  ; Log(value)
  %6253 = fmul fast float %6252, %6247
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6256 = fmul fast float %6253, %6255
  %6257 = call float @dx.op.unary.f32(i32 7, float %6256)  ; Saturate(value)
  %6258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.i32 %6258, 1
  %6260 = add i32 %6259, -1
  %6261 = uitofp i32 %6259 to float
  %6262 = fmul fast float %6261, %6257
  %6263 = fptoui float %6262 to i32
  %6264 = call i32 @dx.op.binary.i32(i32 40, i32 %6263, i32 %6260)  ; UMin(a,b)
  %6265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.i32 %6265, 2
  %6267 = extractvalue %dx.types.CBufRet.i32 %6265, 3
  %6268 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6243, i32 %6266, i32 %6242)  ; UMad(a,b,c)
  %6269 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6264, i32 %6267, i32 %6268)  ; UMad(a,b,c)
  %6270 = add nsw i32 %6234, -1
  %6271 = call i32 @dx.op.binary.i32(i32 37, i32 %6270, i32 0)  ; IMax(a,b)
  %6272 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %6273 = fptoui float %6272 to i32
  %6274 = lshr i32 %6273, 5
  %6275 = call i32 @dx.op.binary.i32(i32 40, i32 %6274, i32 8191)  ; UMin(a,b)
  %6276 = shl i32 %6275, 2
  %6277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6276, i32 undef)  ; BufferLoad(srv,index,wot)
  %6278 = extractvalue %dx.types.ResRet.i32 %6277, 0
  %6279 = lshr i32 %6278, 16
  %6280 = and i32 %6278, 65535
  %6281 = lshr i32 %6278, 21
  %6282 = lshr i32 %6280, 5
  %6283 = call i32 @dx.op.binary.i32(i32 40, i32 %6282, i32 %6271)  ; UMin(a,b)
  %6284 = icmp ugt i32 %6281, %6283
  br i1 %6284, label %6787, label %6285

; <label>:6285                                    ; preds = %6236
  br label %6286

; <label>:6286                                    ; preds = %6777, %6285
  %6287 = phi i32 [ %6784, %6777 ], [ %6281, %6285 ]
  %6288 = phi float [ %6778, %6777 ], [ %6227, %6285 ]
  %6289 = phi float [ %6779, %6777 ], [ %6228, %6285 ]
  %6290 = phi float [ %6780, %6777 ], [ %6229, %6285 ]
  %6291 = phi float [ %6781, %6777 ], [ %6230, %6285 ]
  %6292 = phi float [ %6782, %6777 ], [ %6231, %6285 ]
  %6293 = phi float [ %6783, %6777 ], [ %6232, %6285 ]
  %6294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.i32 %6294, 0
  %6296 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6269, i32 %6295, i32 %6287)  ; UMad(a,b,c)
  %6297 = shl i32 %6296, 2
  %6298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6297, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.i32 %6298, 0
  %6300 = shl i32 %6287, 5
  %6301 = sub nsw i32 %6279, %6300
  %6302 = call i32 @dx.op.binary.i32(i32 37, i32 %6301, i32 0)  ; IMax(a,b)
  %6303 = call i32 @dx.op.binary.i32(i32 38, i32 %6302, i32 31)  ; IMin(a,b)
  %6304 = sub nsw i32 1, %6279
  %6305 = add nsw i32 %6304, %6280
  %6306 = call i32 @dx.op.binary.i32(i32 37, i32 %6305, i32 0)  ; IMax(a,b)
  %6307 = call i32 @dx.op.binary.i32(i32 38, i32 %6306, i32 32)  ; IMin(a,b)
  %6308 = and i32 %6307, 31
  %6309 = shl i32 -1, %6308
  %6310 = xor i32 %6309, -1
  %6311 = and i32 %6303, 31
  %6312 = shl i32 %6310, %6311
  %6313 = icmp eq i32 %6307, 32
  %6314 = select i1 %6313, i32 -1, i32 %6312
  %6315 = and i32 %6314, %6299
  %6316 = icmp eq i32 %6315, 0
  br i1 %6316, label %6777, label %6317

; <label>:6317                                    ; preds = %6286
  br label %6318

; <label>:6318                                    ; preds = %6452, %6317
  %6319 = phi i32 [ %6330, %6452 ], [ %6315, %6317 ]
  %6320 = phi float [ %6453, %6452 ], [ %6288, %6317 ]
  %6321 = phi float [ %6454, %6452 ], [ %6289, %6317 ]
  %6322 = phi float [ %6455, %6452 ], [ %6290, %6317 ]
  %6323 = phi float [ %6456, %6452 ], [ %6291, %6317 ]
  %6324 = phi float [ %6457, %6452 ], [ %6292, %6317 ]
  %6325 = phi float [ %6458, %6452 ], [ %6293, %6317 ]
  %6326 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6319)  ; FirstbitLo(value)
  %6327 = add i32 %6326, %6300
  %6328 = and i32 %6326, 31
  %6329 = shl i32 1, %6328
  %6330 = xor i32 %6329, %6319
  %6331 = mul i32 %6327, 112
  %6332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6331, i32 undef)  ; BufferLoad(srv,index,wot)
  %6333 = extractvalue %dx.types.ResRet.f32 %6332, 0
  %6334 = extractvalue %dx.types.ResRet.f32 %6332, 1
  %6335 = extractvalue %dx.types.ResRet.f32 %6332, 2
  %6336 = or i32 %6331, 12
  %6337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6336, i32 undef)  ; BufferLoad(srv,index,wot)
  %6338 = extractvalue %dx.types.ResRet.f32 %6337, 0
  %6339 = add i32 %6331, 16
  %6340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6339, i32 undef)  ; BufferLoad(srv,index,wot)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.ResRet.f32 %6340, 1
  %6343 = extractvalue %dx.types.ResRet.f32 %6340, 2
  %6344 = add i32 %6331, 28
  %6345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6344, i32 undef)  ; BufferLoad(srv,index,wot)
  %6346 = extractvalue %dx.types.ResRet.i32 %6345, 0
  %6347 = add i32 %6331, 44
  %6348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6347, i32 undef)  ; BufferLoad(srv,index,wot)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 0
  %6350 = add i32 %6331, 48
  %6351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6350, i32 undef)  ; BufferLoad(srv,index,wot)
  %6352 = extractvalue %dx.types.ResRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.ResRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.ResRet.f32 %6351, 2
  %6355 = extractvalue %dx.types.ResRet.f32 %6351, 3
  %6356 = add i32 %6331, 64
  %6357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6356, i32 undef)  ; BufferLoad(srv,index,wot)
  %6358 = extractvalue %dx.types.ResRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.ResRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.ResRet.f32 %6357, 2
  %6361 = extractvalue %dx.types.ResRet.f32 %6357, 3
  %6362 = add i32 %6331, 80
  %6363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6362, i32 undef)  ; BufferLoad(srv,index,wot)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 1
  %6365 = extractvalue %dx.types.ResRet.f32 %6363, 2
  %6366 = add i32 %6331, 92
  %6367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6366, i32 undef)  ; BufferLoad(srv,index,wot)
  %6368 = extractvalue %dx.types.ResRet.i32 %6367, 0
  %6369 = call float @dx.op.dot3.f32(i32 55, float %6333, float %6334, float %6335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6370 = select i1 %265, float %6364, float %6333
  %6371 = select i1 %265, float %6369, float %6334
  %6372 = select i1 %265, float %6365, float %6335
  %6373 = and i32 %6368, 65535
  %6374 = uitofp i32 %6373 to float
  %6375 = lshr i32 %6368, 16
  %6376 = uitofp i32 %6375 to float
  %6377 = and i32 %6346, 65535
  %6378 = and i32 %6346, 50331648
  %6379 = icmp eq i32 %6378, 33554432
  %6380 = fsub fast float %6352, %193
  %6381 = fsub fast float %6353, %194
  %6382 = fsub fast float %6354, %195
  %6383 = call float @dx.op.dot3.f32(i32 55, float %6380, float %6381, float %6382, float %6380, float %6381, float %6382)  ; Dot3(ax,ay,az,bx,by,bz)
  %6384 = call float @dx.op.unary.f32(i32 24, float %6383)  ; Sqrt(value)
  %6385 = fdiv fast float 1.000000e+00, %6384
  %6386 = fmul fast float %6385, %6380
  %6387 = fmul fast float %6385, %6381
  %6388 = fmul fast float %6385, %6382
  %6389 = fadd fast float %6384, %6338
  %6390 = fdiv fast float 1.000000e+00, %6389
  %6391 = fmul float %6349, %6390
  %6392 = fmul float %6391, %6391
  %6393 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  br i1 %6379, label %6394, label %6415

; <label>:6394                                    ; preds = %6318
  %6395 = fmul fast float %6360, %6341
  %6396 = fmul fast float %6360, %6342
  %6397 = fmul fast float %6360, %6343
  %6398 = fadd fast float %6380, %6395
  %6399 = fadd fast float %6381, %6396
  %6400 = fadd fast float %6382, %6397
  %6401 = call float @dx.op.dot3.f32(i32 55, float %6398, float %6399, float %6400, float %6398, float %6399, float %6400)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = call float @dx.op.unary.f32(i32 25, float %6401)  ; Rsqrt(value)
  %6403 = fmul fast float %6402, %6398
  %6404 = fmul fast float %6402, %6399
  %6405 = fmul fast float %6402, %6400
  %6406 = fsub fast float %193, %6352
  %6407 = fsub fast float %194, %6353
  %6408 = fsub fast float %195, %6354
  %6409 = fsub fast float -0.000000e+00, %6406
  %6410 = fsub fast float -0.000000e+00, %6407
  %6411 = fsub fast float -0.000000e+00, %6408
  %6412 = call float @dx.op.dot3.f32(i32 55, float %6409, float %6410, float %6411, float %6341, float %6342, float %6343)  ; Dot3(ax,ay,az,bx,by,bz)
  %6413 = fcmp fast ogt float %6412, 0.000000e+00
  %6414 = uitofp i1 %6413 to float
  br label %6415

; <label>:6415                                    ; preds = %6394, %6318
  %6416 = phi float [ %6414, %6394 ], [ 1.000000e+00, %6318 ]
  %6417 = phi float [ %6403, %6394 ], [ %6386, %6318 ]
  %6418 = phi float [ %6404, %6394 ], [ %6387, %6318 ]
  %6419 = phi float [ %6405, %6394 ], [ %6388, %6318 ]
  %6420 = call float @dx.op.dot3.f32(i32 55, float %6341, float %6342, float %6343, float %6417, float %6418, float %6419)  ; Dot3(ax,ay,az,bx,by,bz)
  %6421 = fmul fast float %6420, %6420
  %6422 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  %6423 = fsub fast float 1.000000e+00, %6422
  %6424 = fmul fast float %6423, 5.000000e-01
  %6425 = fcmp fast ogt float %6420, 0.000000e+00
  %6426 = fsub fast float 1.000000e+00, %6424
  %6427 = select i1 %6425, float %6424, float %6426
  %6428 = fmul fast float %6427, %6376
  %6429 = fadd fast float %6428, %6374
  %6430 = fmul fast float %6429, 0x3EF0001000000000
  %6431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %6430, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6432 = extractvalue %dx.types.ResRet.f32 %6431, 0
  %6433 = fmul fast float %6420, %6358
  %6434 = fadd fast float %6433, %6359
  %6435 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  %6436 = select i1 %6379, float 1.000000e+00, float %6435
  %6437 = select i1 %6379, float %6435, float 1.000000e+00
  %6438 = fmul fast float %6384, %6355
  %6439 = fsub fast float 1.000000e+00, %6438
  %6440 = fmul fast float %6439, %6361
  %6441 = call float @dx.op.unary.f32(i32 7, float %6440)  ; Saturate(value)
  %6442 = fmul fast float %6441, %6437
  %6443 = fmul fast float %6442, 2.000000e+00
  %6444 = fsub fast float 3.000000e+00, %6443
  %6445 = fmul fast float %6432, %6416
  %6446 = fmul fast float %6442, %6442
  %6447 = fmul fast float %6446, %6445
  %6448 = fmul fast float %6447, %6444
  %6449 = call float @dx.op.binary.f32(i32 36, float %6448, float %6448)  ; FMin(a,b)
  %6450 = call float @dx.op.binary.f32(i32 36, float %6448, float %6449)  ; FMin(a,b)
  %6451 = fcmp fast ogt float %6450, 0.000000e+00
  br i1 %6451, label %6460, label %6452, !dx.controlflow.hints !119

; <label>:6452                                    ; preds = %6627, %6560, %6415
  %6453 = phi float [ %6320, %6560 ], [ %6320, %6415 ], [ %6773, %6627 ]
  %6454 = phi float [ %6321, %6560 ], [ %6321, %6415 ], [ %6774, %6627 ]
  %6455 = phi float [ %6322, %6560 ], [ %6322, %6415 ], [ %6775, %6627 ]
  %6456 = phi float [ %6323, %6560 ], [ %6323, %6415 ], [ %6764, %6627 ]
  %6457 = phi float [ %6324, %6560 ], [ %6324, %6415 ], [ %6765, %6627 ]
  %6458 = phi float [ %6325, %6560 ], [ %6325, %6415 ], [ %6766, %6627 ]
  %6459 = icmp eq i32 %6319, %6329
  br i1 %6459, label %6776, label %6318

; <label>:6460                                    ; preds = %6415
  %6461 = icmp eq i32 %6377, 255
  br i1 %6461, label %6560, label %6462, !dx.controlflow.hints !120

; <label>:6462                                    ; preds = %6460
  %6463 = mul nuw nsw i32 %6377, 176
  %6464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6463, i32 undef)  ; BufferLoad(srv,index,wot)
  %6465 = extractvalue %dx.types.ResRet.f32 %6464, 0
  %6466 = extractvalue %dx.types.ResRet.f32 %6464, 1
  %6467 = extractvalue %dx.types.ResRet.f32 %6464, 2
  %6468 = extractvalue %dx.types.ResRet.f32 %6464, 3
  %6469 = add nuw nsw i32 %6463, 16
  %6470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6469, i32 undef)  ; BufferLoad(srv,index,wot)
  %6471 = extractvalue %dx.types.ResRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.ResRet.f32 %6470, 1
  %6473 = add nuw nsw i32 %6463, 32
  %6474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6473, i32 undef)  ; BufferLoad(srv,index,wot)
  %6475 = extractvalue %dx.types.ResRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.ResRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.ResRet.f32 %6474, 2
  %6478 = add nuw nsw i32 %6463, 48
  %6479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6478, i32 undef)  ; BufferLoad(srv,index,wot)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.ResRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.ResRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.ResRet.f32 %6479, 3
  %6484 = add nuw nsw i32 %6463, 64
  %6485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6484, i32 undef)  ; BufferLoad(srv,index,wot)
  %6486 = extractvalue %dx.types.ResRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.ResRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.ResRet.f32 %6485, 2
  %6489 = extractvalue %dx.types.ResRet.f32 %6485, 3
  %6490 = add nuw nsw i32 %6463, 80
  %6491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6490, i32 undef)  ; BufferLoad(srv,index,wot)
  %6492 = extractvalue %dx.types.ResRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.ResRet.f32 %6491, 2
  %6495 = extractvalue %dx.types.ResRet.f32 %6491, 3
  %6496 = add nuw nsw i32 %6463, 96
  %6497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6496, i32 undef)  ; BufferLoad(srv,index,wot)
  %6498 = extractvalue %dx.types.ResRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.ResRet.f32 %6497, 1
  %6500 = extractvalue %dx.types.ResRet.f32 %6497, 2
  %6501 = extractvalue %dx.types.ResRet.f32 %6497, 3
  %6502 = bitcast float %6472 to i32
  %6503 = fmul fast float %6477, %119
  %6504 = fmul fast float %6477, %121
  %6505 = fmul fast float %6477, %123
  %6506 = fadd fast float %6503, %193
  %6507 = fadd fast float %6504, %194
  %6508 = fadd fast float %6505, %195
  %6509 = fmul fast float %6506, %6480
  %6510 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6486, float %6509)  ; FMad(a,b,c)
  %6511 = call float @dx.op.tertiary.f32(i32 46, float %6508, float %6492, float %6510)  ; FMad(a,b,c)
  %6512 = fadd fast float %6511, %6498
  %6513 = fmul fast float %6506, %6481
  %6514 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6487, float %6513)  ; FMad(a,b,c)
  %6515 = call float @dx.op.tertiary.f32(i32 46, float %6508, float %6493, float %6514)  ; FMad(a,b,c)
  %6516 = fadd fast float %6515, %6499
  %6517 = fmul fast float %6506, %6482
  %6518 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6488, float %6517)  ; FMad(a,b,c)
  %6519 = call float @dx.op.tertiary.f32(i32 46, float %6508, float %6494, float %6518)  ; FMad(a,b,c)
  %6520 = fadd fast float %6519, %6500
  %6521 = fmul fast float %6506, %6483
  %6522 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6489, float %6521)  ; FMad(a,b,c)
  %6523 = call float @dx.op.tertiary.f32(i32 46, float %6508, float %6495, float %6522)  ; FMad(a,b,c)
  %6524 = fadd fast float %6523, %6501
  %6525 = fdiv fast float %6512, %6524
  %6526 = fdiv fast float %6516, %6524
  %6527 = fdiv fast float %6520, %6524
  %6528 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6527)  ; FMax(a,b)
  %6529 = fmul fast float %276, 0x401921FB60000000
  %6530 = call float @dx.op.unary.f32(i32 13, float %6529)  ; Sin(value)
  %6531 = call float @dx.op.unary.f32(i32 12, float %6529)  ; Cos(value)
  %6532 = fsub fast float -0.000000e+00, %6530
  %6533 = fmul fast float %6467, 5.000000e-01
  %6534 = call float @dx.op.dot2.f32(i32 54, float %276, float %276, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6535 = call float @dx.op.unary.f32(i32 22, float %6534)  ; Frc(value)
  %6536 = fmul fast float %6535, 0x404A7DD040000000
  %6537 = call float @dx.op.unary.f32(i32 22, float %6536)  ; Frc(value)
  %6538 = fmul fast float %6537, %6476
  %6539 = fadd fast float %6538, %6533
  %6540 = call float @dx.op.tertiary.f32(i32 46, float %6539, float %6532, float 0.000000e+00)  ; FMad(a,b,c)
  %6541 = call float @dx.op.tertiary.f32(i32 46, float %6539, float %6531, float 0.000000e+00)  ; FMad(a,b,c)
  %6542 = fadd fast float %6540, %6525
  %6543 = fadd fast float %6541, %6526
  %6544 = fmul fast float %6542, %6471
  %6545 = fmul fast float %6543, %6471
  %6546 = call float @dx.op.binary.f32(i32 35, float %6544, float %6467)  ; FMax(a,b)
  %6547 = call float @dx.op.binary.f32(i32 35, float %6545, float %6467)  ; FMax(a,b)
  %6548 = call float @dx.op.binary.f32(i32 36, float %6546, float %6468)  ; FMin(a,b)
  %6549 = call float @dx.op.binary.f32(i32 36, float %6547, float %6468)  ; FMin(a,b)
  %6550 = fadd fast float %6548, %6465
  %6551 = fadd fast float %6549, %6466
  %6552 = uitofp i32 %6502 to float
  %6553 = fadd fast float %6528, %6475
  %6554 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %47, float %6550, float %6551, float %6552, float undef, i32 0, i32 0, i32 undef, float %6553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6555 = extractvalue %dx.types.ResRet.f32 %6554, 0
  %6556 = fadd fast float %6555, -1.000000e+00
  %6557 = fmul fast float %6556, %6436
  %6558 = fadd fast float %6557, 1.000000e+00
  %6559 = fmul fast float %6558, %6448
  br label %6560

; <label>:6560                                    ; preds = %6462, %6460
  %6561 = phi float [ %6559, %6462 ], [ %6448, %6460 ]
  %6562 = call float @dx.op.binary.f32(i32 36, float %6561, float %6561)  ; FMin(a,b)
  %6563 = call float @dx.op.binary.f32(i32 36, float %6561, float %6562)  ; FMin(a,b)
  %6564 = fcmp fast ogt float %6563, 0.000000e+00
  br i1 %6564, label %6565, label %6452, !dx.controlflow.hints !121

; <label>:6565                                    ; preds = %6560
  %6566 = fmul fast float %6561, %6370
  %6567 = fmul fast float %6561, %6371
  %6568 = fmul fast float %6561, %6372
  %6569 = fsub fast float %6354, %3948
  %6570 = fcmp fast ogt float %6569, 0.000000e+00
  %6571 = fsub fast float %195, %3948
  %6572 = fcmp fast ogt float %6571, 0.000000e+00
  %6573 = xor i1 %6572, %6570
  %6574 = fsub fast float %3948, %6354
  %6575 = fmul fast float %6574, 2.000000e+00
  %6576 = fadd fast float %6575, %6354
  %6577 = select i1 %6573, float %6354, float %6576
  %6578 = fsub fast float %6577, %195
  %6579 = call float @dx.op.dot3.f32(i32 55, float %6380, float %6381, float %6578, float %6380, float %6381, float %6578)  ; Dot3(ax,ay,az,bx,by,bz)
  %6580 = call float @dx.op.unary.f32(i32 25, float %6579)  ; Rsqrt(value)
  %6581 = fmul fast float %6580, %6380
  %6582 = fmul fast float %6580, %6381
  %6583 = fmul fast float %6580, %6578
  %6584 = fsub fast float %3948, %195
  %6585 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6584)  ; Dot3(ax,ay,az,bx,by,bz)
  %6586 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6581, float %6582, float %6583)  ; Dot3(ax,ay,az,bx,by,bz)
  %6587 = fdiv fast float 1.000000e+00, %6586
  %6588 = fmul fast float %6587, %6585
  %6589 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6571, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6590 = fcmp fast ogt float %6589, 0.000000e+00
  %6591 = fcmp fast olt float %6589, 0.000000e+00
  %6592 = zext i1 %6590 to i32
  %6593 = zext i1 %6591 to i32
  %6594 = sub nsw i32 %6592, %6593
  %6595 = sitofp i32 %6594 to float
  %6596 = fsub fast float %6577, %3948
  %6597 = call float @dx.op.dot3.f32(i32 55, float %6380, float %6381, float %6596, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6598 = fcmp fast ogt float %6597, 0.000000e+00
  %6599 = fcmp fast olt float %6597, 0.000000e+00
  %6600 = zext i1 %6598 to i32
  %6601 = zext i1 %6599 to i32
  %6602 = sub nsw i32 %6600, %6601
  %6603 = sitofp i32 %6602 to float
  %6604 = fcmp fast une float %6595, %6603
  br i1 %6604, label %6605, label %6615

; <label>:6605                                    ; preds = %6565
  %6606 = fmul fast float %6588, %6583
  %6607 = fmul fast float %6588, %6582
  %6608 = fmul fast float %6588, %6581
  %6609 = fmul fast float %6608, %6608
  %6610 = fmul fast float %6607, %6607
  %6611 = fadd fast float %6609, %6610
  %6612 = fmul fast float %6606, %6606
  %6613 = fadd fast float %6611, %6612
  %6614 = call float @dx.op.unary.f32(i32 24, float %6613)  ; Sqrt(value)
  br label %6627

; <label>:6615                                    ; preds = %6565
  %6616 = icmp slt i32 %6594, 0
  br i1 %6616, label %6617, label %6627

; <label>:6617                                    ; preds = %6615
  %6618 = fsub fast float %193, %6352
  %6619 = fsub fast float %194, %6353
  %6620 = fsub fast float %195, %6577
  %6621 = fmul fast float %6618, %6618
  %6622 = fmul fast float %6619, %6619
  %6623 = fadd fast float %6621, %6622
  %6624 = fmul fast float %6620, %6620
  %6625 = fadd fast float %6623, %6624
  %6626 = call float @dx.op.unary.f32(i32 24, float %6625)  ; Sqrt(value)
  br label %6627

; <label>:6627                                    ; preds = %6617, %6615, %6605
  %6628 = phi float [ %6614, %6605 ], [ %6626, %6617 ], [ 0.000000e+00, %6615 ]
  %6629 = and i1 %6572, %6570
  %6630 = fsub fast float -0.000000e+00, %6628
  %6631 = select i1 %6629, float -0.000000e+00, float %6630
  %6632 = fmul fast float %3949, 0x3FF7154760000000
  %6633 = fmul fast float %6632, %6631
  %6634 = fmul fast float %3950, 0x3FF7154760000000
  %6635 = fmul fast float %6634, %6631
  %6636 = fmul fast float %3951, 0x3FF7154760000000
  %6637 = fmul fast float %6636, %6631
  %6638 = call float @dx.op.unary.f32(i32 21, float %6633)  ; Exp(value)
  %6639 = call float @dx.op.unary.f32(i32 21, float %6635)  ; Exp(value)
  %6640 = call float @dx.op.unary.f32(i32 21, float %6637)  ; Exp(value)
  %6641 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6642 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6643 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6644 = fmul fast float %6566, %6641
  %6645 = fmul fast float %6567, %6642
  %6646 = fmul fast float %6568, %6643
  %6647 = fsub fast float %6386, %4774
  %6648 = fsub fast float %6387, %4775
  %6649 = fsub fast float %6388, %4776
  %6650 = call float @dx.op.dot3.f32(i32 55, float %6647, float %6648, float %6649, float %6647, float %6648, float %6649)  ; Dot3(ax,ay,az,bx,by,bz)
  %6651 = call float @dx.op.unary.f32(i32 25, float %6650)  ; Rsqrt(value)
  %6652 = fmul fast float %6651, %6647
  %6653 = fmul fast float %6651, %6648
  %6654 = fmul fast float %6651, %6649
  %6655 = call float @dx.op.dot3.f32(i32 55, float %6386, float %6387, float %6388, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %6656 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %6652, float %6653, float %6654)  ; Dot3(ax,ay,az,bx,by,bz)
  %6657 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6658 = fmul fast float %6657, %6393
  %6659 = fmul fast float %6657, %6657
  %6660 = fmul fast float %6659, %4795
  %6661 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  %6662 = fmul fast float %6658, %6661
  %6663 = bitcast float %6383 to i32
  %6664 = ashr i32 %6663, 1
  %6665 = sub nsw i32 1597463007, %6664
  %6666 = bitcast i32 %6665 to float
  %6667 = fmul fast float %6666, %6380
  %6668 = fmul fast float %6666, %6381
  %6669 = fmul fast float %6666, %6382
  %6670 = fsub fast float %6667, %4774
  %6671 = fsub fast float %6668, %4775
  %6672 = fsub fast float %6669, %4776
  %6673 = call float @dx.op.dot3.f32(i32 55, float %6670, float %6671, float %6672, float %6670, float %6671, float %6672)  ; Dot3(ax,ay,az,bx,by,bz)
  %6674 = call float @dx.op.unary.f32(i32 25, float %6673)  ; Rsqrt(value)
  %6675 = fmul fast float %6670, %6674
  %6676 = fmul fast float %6671, %6674
  %6677 = fmul fast float %6672, %6674
  %6678 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4732, float %4733, float %6675, float %6676, float %6677)  ; Dot3(ax,ay,az,bx,by,bz)
  %6679 = fmul fast float %6678, %6678
  %6680 = call float @dx.op.unary.f32(i32 6, float %6655)  ; FAbs(value)
  %6681 = fsub fast float 1.000000e+00, %4737
  %6682 = call float @dx.op.binary.f32(i32 35, float %6681, float 0x3F847AE140000000)  ; FMax(a,b)
  %6683 = fmul fast float %6682, %6682
  %6684 = fmul fast float %6683, %6683
  %6685 = fsub fast float 1.000000e+00, %6684
  %6686 = fmul fast float %4782, %4782
  %6687 = fmul fast float %6686, %6685
  %6688 = fadd fast float %6687, %6684
  %6689 = bitcast float %6688 to i32
  %6690 = ashr i32 %6689, 1
  %6691 = add nsw i32 %6690, 532487669
  %6692 = bitcast i32 %6691 to float
  %6693 = fadd fast float %6692, %4782
  %6694 = fmul fast float %6684, %6679
  %6695 = fsub fast float 1.000000e+00, %6679
  %6696 = fadd fast float %6695, %6694
  %6697 = fmul fast float %6680, %6680
  %6698 = fmul fast float %6697, %6685
  %6699 = fadd fast float %6698, %6684
  %6700 = bitcast float %6699 to i32
  %6701 = ashr i32 %6700, 1
  %6702 = add nsw i32 %6701, 532487669
  %6703 = bitcast i32 %6702 to float
  %6704 = fadd fast float %6703, %6680
  %6705 = fmul fast float %6696, %6696
  %6706 = fmul fast float %6705, %6693
  %6707 = fmul fast float %6706, %6704
  %6708 = fdiv fast float 1.000000e+00, %6707
  %6709 = bitcast float %6684 to i32
  %6710 = sitofp i32 %6709 to float
  %6711 = fmul fast float %6710, 0x3FE7F73180000000
  %6712 = fadd fast float %6711, 0x41AFE27C40000000
  %6713 = fptosi float %6712 to i32
  %6714 = bitcast i32 %6713 to float
  %6715 = fmul fast float %6349, 0x3FD80E9D60000000
  %6716 = fmul fast float %6715, %6666
  %6717 = fadd fast float %6714, %6716
  %6718 = bitcast float %6717 to i32
  %6719 = sub nsw i32 2129859010, %6718
  %6720 = bitcast i32 %6719 to float
  %6721 = fmul fast float %6684, %6708
  %6722 = fmul fast float %6721, %6714
  %6723 = fmul fast float %6722, %6720
  %6724 = call float @dx.op.unary.f32(i32 6, float %6656)  ; FAbs(value)
  %6725 = fsub fast float 1.000000e+00, %6724
  %6726 = bitcast float %6725 to i32
  %6727 = sitofp i32 %6726 to float
  %6728 = fmul fast float %6727, 5.000000e+00
  %6729 = fadd fast float %6728, 0xC1EFBF8940000000
  %6730 = fptosi float %6729 to i32
  %6731 = bitcast i32 %6730 to float
  %6732 = fsub fast float 1.000000e+00, %4728
  %6733 = fsub fast float 1.000000e+00, %4729
  %6734 = fsub fast float 1.000000e+00, %4780
  %6735 = fmul fast float %6731, %6732
  %6736 = fmul fast float %6731, %6733
  %6737 = fmul fast float %6731, %6734
  %6738 = fadd fast float %6735, %4728
  %6739 = fadd fast float %6736, %4729
  %6740 = fadd fast float %6737, %4780
  %6741 = fmul fast float %6655, 9.843750e-01
  %6742 = fadd fast float %6741, 7.812500e-03
  %6743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %6742, float %5087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 3
  %6746 = fmul fast float %6744, %4728
  %6747 = fmul fast float %6744, %4729
  %6748 = fmul fast float %6744, %4780
  %6749 = fadd fast float %6746, %6745
  %6750 = fadd fast float %6747, %6745
  %6751 = fadd fast float %6748, %6745
  %6752 = call float @dx.op.binary.f32(i32 35, float %6750, float %6751)  ; FMax(a,b)
  %6753 = call float @dx.op.binary.f32(i32 35, float %6749, float %6752)  ; FMax(a,b)
  %6754 = fsub fast float 1.000000e+00, %6753
  %6755 = fmul fast float %6644, %1256
  %6756 = fmul fast float %6755, %6662
  %6757 = fmul fast float %6756, %6754
  %6758 = fmul fast float %6645, %1256
  %6759 = fmul fast float %6758, %6662
  %6760 = fmul fast float %6759, %6754
  %6761 = fmul fast float %6646, %1256
  %6762 = fmul fast float %6761, %6662
  %6763 = fmul fast float %6762, %6754
  %6764 = fadd fast float %6757, %6323
  %6765 = fadd fast float %6760, %6324
  %6766 = fadd fast float %6763, %6325
  %6767 = fmul fast float %6756, %6738
  %6768 = fmul fast float %6767, %6723
  %6769 = fmul fast float %6759, %6739
  %6770 = fmul fast float %6769, %6723
  %6771 = fmul fast float %6762, %6740
  %6772 = fmul fast float %6771, %6723
  %6773 = fadd fast float %6768, %6320
  %6774 = fadd fast float %6770, %6321
  %6775 = fadd fast float %6772, %6322
  br label %6452

; <label>:6776                                    ; preds = %6452
  br label %6777

; <label>:6777                                    ; preds = %6776, %6286
  %6778 = phi float [ %6288, %6286 ], [ %6453, %6776 ]
  %6779 = phi float [ %6289, %6286 ], [ %6454, %6776 ]
  %6780 = phi float [ %6290, %6286 ], [ %6455, %6776 ]
  %6781 = phi float [ %6291, %6286 ], [ %6456, %6776 ]
  %6782 = phi float [ %6292, %6286 ], [ %6457, %6776 ]
  %6783 = phi float [ %6293, %6286 ], [ %6458, %6776 ]
  %6784 = add i32 %6287, 1
  %6785 = icmp ugt i32 %6784, %6283
  br i1 %6785, label %6786, label %6286

; <label>:6786                                    ; preds = %6777
  br label %6787

; <label>:6787                                    ; preds = %6786, %6236, %6226
  %6788 = phi float [ %6227, %6226 ], [ %6227, %6236 ], [ %6778, %6786 ]
  %6789 = phi float [ %6228, %6226 ], [ %6228, %6236 ], [ %6779, %6786 ]
  %6790 = phi float [ %6229, %6226 ], [ %6229, %6236 ], [ %6780, %6786 ]
  %6791 = phi float [ %6230, %6226 ], [ %6230, %6236 ], [ %6781, %6786 ]
  %6792 = phi float [ %6231, %6226 ], [ %6231, %6236 ], [ %6782, %6786 ]
  %6793 = phi float [ %6232, %6226 ], [ %6232, %6236 ], [ %6783, %6786 ]
  %6794 = fmul fast float %1256, %1256
  %6795 = fsub fast float 1.000000e+00, %6794
  %6796 = call float @dx.op.dot3.f32(i32 55, float %6795, float %6795, float %6795, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6797 = fsub fast float 1.000000e+00, %6796
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = fmul fast float %6799, %5179
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6803 = fsub fast float 1.000000e+00, %3476
  %6804 = call float @dx.op.unary.f32(i32 7, float %6803)  ; Saturate(value)
  %6805 = fadd fast float %3497, %6793
  %6806 = fmul fast float %6805, %3476
  %6807 = fmul fast float %6804, %6802
  %6808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6809 = extractvalue %dx.types.CBufRet.f32 %6808, 3
  %6810 = fmul fast float %6791, %4734
  %6811 = fmul fast float %6792, %4735
  %6812 = fmul fast float %6793, %4736
  %6813 = fcmp fast ogt float %101, %228
  %6814 = and i1 %6813, %3954
  %6815 = or i1 %3960, %6814
  %6816 = icmp eq i32 %3953, 2
  %6817 = fcmp fast ole float %101, %228
  %6818 = and i1 %6817, %6816
  %6819 = or i1 %6818, %6815
  br i1 %6814, label %6820, label %7077

; <label>:6820                                    ; preds = %6787
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 2
  %6823 = extractvalue %dx.types.CBufRet.f32 %6821, 3
  %6824 = fmul fast float %6822, %110
  %6825 = fmul fast float %6823, %111
  %6826 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  %6827 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6828 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6826, float %6827, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6829 = extractvalue %dx.types.ResRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.ResRet.f32 %6828, 1
  %6831 = extractvalue %dx.types.ResRet.f32 %6828, 2
  %6832 = extractvalue %dx.types.ResRet.f32 %6828, 3
  %6833 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6826, float %6827, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6834 = extractvalue %dx.types.ResRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.ResRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.ResRet.f32 %6833, 2
  %6837 = extractvalue %dx.types.ResRet.f32 %6833, 3
  %6838 = call float @dx.op.binary.f32(i32 35, float %6830, float %6831)  ; FMax(a,b)
  %6839 = call float @dx.op.binary.f32(i32 35, float %6829, float %6838)  ; FMax(a,b)
  %6840 = call float @dx.op.binary.f32(i32 35, float %6839, float %6832)  ; FMax(a,b)
  %6841 = call float @dx.op.binary.f32(i32 36, float %6835, float %6836)  ; FMin(a,b)
  %6842 = call float @dx.op.binary.f32(i32 36, float %6834, float %6841)  ; FMin(a,b)
  %6843 = call float @dx.op.binary.f32(i32 36, float %6842, float %6837)  ; FMin(a,b)
  %6844 = fmul fast float %6840, 2.550000e+02
  %6845 = fadd fast float %6844, 0x3F70101020000000
  %6846 = fptoui float %6845 to i32
  %6847 = fmul fast float %6843, 2.550000e+02
  %6848 = fadd fast float %6847, 0x3F70101020000000
  %6849 = fptoui float %6848 to i32
  %6850 = icmp ult i32 %6846, %6849
  br i1 %6850, label %6851, label %7019

; <label>:6851                                    ; preds = %6820
  %6852 = fcmp fast ogt float %100, 9.843750e-01
  %6853 = fadd fast float %101, -4.000000e+00
  %6854 = select i1 %6852, float -4.000000e+00, float %6853
  %6855 = call float @dx.op.binary.f32(i32 35, float %6854, float 0.000000e+00)  ; FMax(a,b)
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6858 = fadd fast float %6857, %6855
  %6859 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6860 = fmul fast float %6858, %6859
  %6861 = call float @dx.op.unary.f32(i32 23, float %6860)  ; Log(value)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6856, 3
  %6863 = fmul fast float %6862, %6861
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6866 = fmul fast float %6863, %6865
  %6867 = call float @dx.op.unary.f32(i32 7, float %6866)  ; Saturate(value)
  %6868 = uitofp i32 %6846 to float
  %6869 = uitofp i32 %6849 to float
  %6870 = fadd fast float %6868, 5.000000e-01
  %6871 = fadd fast float %6869, 5.000000e-01
  %6872 = fmul fast float %6865, %6870
  %6873 = fmul fast float %6865, %6871
  %6874 = fadd fast float %6872, 0x3F0FFB4800000000
  %6875 = fadd fast float %6873, 0xBF0FFB4800000000
  %6876 = call float @dx.op.binary.f32(i32 35, float %6867, float %6874)  ; FMax(a,b)
  %6877 = call float @dx.op.binary.f32(i32 36, float %6876, float %6875)  ; FMin(a,b)
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 1
  %6880 = extractvalue %dx.types.CBufRet.f32 %6878, 2
  %6881 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6882 = fmul fast float %6879, %6877
  %6883 = fadd fast float %6881, %6882
  %6884 = fadd fast float %6881, %6880
  %6885 = fsub fast float %6879, %6880
  %6886 = fadd fast float %6885, %6881
  %6887 = call float @dx.op.binary.f32(i32 35, float %6883, float %6884)  ; FMax(a,b)
  %6888 = call float @dx.op.binary.f32(i32 36, float %6887, float %6886)  ; FMin(a,b)
  %6889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %6826, float %6827, float %6888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6890 = extractvalue %dx.types.ResRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.ResRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.ResRet.f32 %6889, 2
  %6893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.i32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.i32 %6893, 1
  %6896 = uitofp i32 %6894 to float
  %6897 = uitofp i32 %6895 to float
  %6898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6898, 0
  %6900 = extractvalue %dx.types.CBufRet.f32 %6898, 1
  %6901 = fmul fast float %6896, %6826
  %6902 = fmul fast float %6897, %6827
  %6903 = fadd fast float %6901, -5.000000e-01
  %6904 = fadd fast float %6902, -5.000000e-01
  %6905 = call float @dx.op.unary.f32(i32 22, float %6903)  ; Frc(value)
  %6906 = call float @dx.op.unary.f32(i32 22, float %6904)  ; Frc(value)
  %6907 = fmul fast float %6905, %6905
  %6908 = fmul fast float %6907, %6905
  %6909 = fsub fast float 3.000000e+00, %6905
  %6910 = fmul fast float %6907, %6909
  %6911 = fmul fast float %6905, 3.000000e+00
  %6912 = fmul fast float %6908, 3.000000e+00
  %6913 = fmul fast float %6907, 6.000000e+00
  %6914 = fsub fast float %6912, %6913
  %6915 = fadd fast float %6914, 4.000000e+00
  %6916 = fmul fast float %6915, 0x3FC5555560000000
  %6917 = fmul fast float %6908, -3.000000e+00
  %6918 = fadd fast float %6907, %6905
  %6919 = fmul fast float %6918, 3.000000e+00
  %6920 = fadd fast float %6917, 1.000000e+00
  %6921 = fadd fast float %6920, %6919
  %6922 = fmul fast float %6908, 0x3FC5555560000000
  %6923 = fmul fast float %6906, %6906
  %6924 = fmul fast float %6923, %6906
  %6925 = fsub fast float 3.000000e+00, %6906
  %6926 = fmul fast float %6923, %6925
  %6927 = fmul fast float %6906, 3.000000e+00
  %6928 = fmul fast float %6924, 3.000000e+00
  %6929 = fmul fast float %6923, 6.000000e+00
  %6930 = fsub fast float %6928, %6929
  %6931 = fadd fast float %6930, 4.000000e+00
  %6932 = fmul fast float %6931, 0x3FC5555560000000
  %6933 = fmul fast float %6924, -3.000000e+00
  %6934 = fadd fast float %6923, %6906
  %6935 = fmul fast float %6934, 3.000000e+00
  %6936 = fadd fast float %6933, 1.000000e+00
  %6937 = fadd fast float %6936, %6935
  %6938 = fmul fast float %6924, 0x3FC5555560000000
  %6939 = fadd fast float %6905, 1.000000e+00
  %6940 = fsub fast float 1.000000e+00, %6911
  %6941 = fadd fast float %6940, %6910
  %6942 = fadd fast float %6941, %6915
  %6943 = fmul fast float %6942, 0x3FC5555560000000
  %6944 = fdiv fast float %6916, %6943
  %6945 = fsub fast float %6939, %6944
  %6946 = fsub fast float 1.000000e+00, %6905
  %6947 = fadd fast float %6921, %6908
  %6948 = fmul fast float %6947, 0x3FC5555560000000
  %6949 = fdiv fast float %6922, %6948
  %6950 = fadd fast float %6946, %6949
  %6951 = fadd fast float %6906, 1.000000e+00
  %6952 = fsub fast float 1.000000e+00, %6927
  %6953 = fadd fast float %6952, %6926
  %6954 = fadd fast float %6953, %6931
  %6955 = fmul fast float %6954, 0x3FC5555560000000
  %6956 = fdiv fast float %6932, %6955
  %6957 = fsub fast float %6951, %6956
  %6958 = fsub fast float 1.000000e+00, %6906
  %6959 = fadd fast float %6937, %6924
  %6960 = fmul fast float %6959, 0x3FC5555560000000
  %6961 = fdiv fast float %6938, %6960
  %6962 = fadd fast float %6961, %6958
  %6963 = fmul fast float %6945, %6899
  %6964 = fsub fast float %6826, %6963
  %6965 = fmul fast float %6950, %6899
  %6966 = fadd fast float %6965, %6826
  %6967 = fmul fast float %6962, %6900
  %6968 = fadd fast float %6967, %6827
  %6969 = fmul fast float %6957, %6900
  %6970 = fsub fast float %6827, %6969
  %6971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6964, float %6970, float %6888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6972 = extractvalue %dx.types.ResRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.ResRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.ResRet.f32 %6971, 2
  %6975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6966, float %6970, float %6888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6964, float %6968, float %6888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.ResRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.ResRet.f32 %6979, 2
  %6983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6966, float %6968, float %6888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6984 = extractvalue %dx.types.ResRet.f32 %6983, 0
  %6985 = extractvalue %dx.types.ResRet.f32 %6983, 1
  %6986 = extractvalue %dx.types.ResRet.f32 %6983, 2
  %6987 = fsub fast float %6980, %6972
  %6988 = fsub fast float %6981, %6973
  %6989 = fsub fast float %6982, %6974
  %6990 = fmul fast float %6987, %6960
  %6991 = fmul fast float %6988, %6960
  %6992 = fmul fast float %6989, %6960
  %6993 = fadd fast float %6990, %6972
  %6994 = fadd fast float %6991, %6973
  %6995 = fadd fast float %6992, %6974
  %6996 = fsub fast float %6984, %6976
  %6997 = fsub fast float %6985, %6977
  %6998 = fsub fast float %6986, %6978
  %6999 = fmul fast float %6996, %6960
  %7000 = fmul fast float %6997, %6960
  %7001 = fmul fast float %6998, %6960
  %7002 = fsub fast float %6976, %6993
  %7003 = fadd fast float %7002, %6999
  %7004 = fsub fast float %6977, %6994
  %7005 = fadd fast float %7004, %7000
  %7006 = fsub fast float %6978, %6995
  %7007 = fadd fast float %7006, %7001
  %7008 = fmul fast float %7003, %6948
  %7009 = fmul fast float %7005, %6948
  %7010 = fmul fast float %7007, %6948
  %7011 = fadd fast float %7008, %6993
  %7012 = fadd fast float %7009, %6994
  %7013 = fadd fast float %7010, %6995
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 1
  %7016 = fmul fast float %7011, %7015
  %7017 = fmul fast float %7012, %7015
  %7018 = fmul fast float %7013, %7015
  br label %7019

; <label>:7019                                    ; preds = %6851, %6820
  %7020 = phi float [ %6890, %6851 ], [ 1.000000e+00, %6820 ]
  %7021 = phi float [ %6891, %6851 ], [ 1.000000e+00, %6820 ]
  %7022 = phi float [ %6892, %6851 ], [ 1.000000e+00, %6820 ]
  %7023 = phi float [ %7016, %6851 ], [ 0.000000e+00, %6820 ]
  %7024 = phi float [ %7017, %6851 ], [ 0.000000e+00, %6820 ]
  %7025 = phi float [ %7018, %6851 ], [ 0.000000e+00, %6820 ]
  %7026 = fmul fast float %7023, %6797
  %7027 = fmul fast float %7024, %6797
  %7028 = fmul fast float %7025, %6797
  %7029 = call float @dx.op.dot3.f32(i32 55, float %7020, float %7021, float %7022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7030 = call float @dx.op.dot3.f32(i32 55, float %7026, float %7027, float %7028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7031 = select i1 %265, float %7029, float %7020
  %7032 = select i1 %265, float %7029, float %7021
  %7033 = select i1 %265, float 1.000000e+00, float %7022
  %7034 = select i1 %265, float %7030, float %7026
  %7035 = select i1 %265, float 0.000000e+00, float %7027
  %7036 = select i1 %265, float 0.000000e+00, float %7028
  %7037 = fmul fast float %7031, %6810
  %7038 = fmul fast float %7032, %6811
  %7039 = fmul fast float %7033, %6812
  %7040 = fadd fast float %7037, %7034
  %7041 = fadd fast float %7038, %7035
  %7042 = fadd fast float %7036, %7039
  %7043 = fmul fast float %7031, %6788
  %7044 = fmul fast float %7032, %6789
  %7045 = fmul fast float %7033, %6790
  %7046 = fmul fast float %142, %6822
  %7047 = fmul fast float %144, %6823
  %7048 = fsub fast float 1.000000e+00, %7046
  %7049 = fsub fast float 1.000000e+00, %7047
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 0
  %7052 = extractvalue %dx.types.CBufRet.f32 %7050, 1
  %7053 = extractvalue %dx.types.CBufRet.f32 %7050, 2
  %7054 = fmul fast float %7048, %7051
  %7055 = fmul fast float %7048, %7052
  %7056 = fmul fast float %7048, %7053
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.CBufRet.f32 %7057, 2
  %7061 = fmul fast float %7049, %7058
  %7062 = fmul fast float %7049, %7059
  %7063 = fmul fast float %7049, %7060
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 0
  %7066 = extractvalue %dx.types.CBufRet.f32 %7064, 1
  %7067 = extractvalue %dx.types.CBufRet.f32 %7064, 2
  %7068 = fadd fast float %7061, %7065
  %7069 = fadd fast float %7068, %7054
  %7070 = fadd fast float %7062, %7066
  %7071 = fadd fast float %7070, %7055
  %7072 = fadd fast float %7063, %7067
  %7073 = fadd fast float %7072, %7056
  %7074 = fmul fast float %7069, %228
  %7075 = fmul fast float %7071, %228
  %7076 = fmul fast float %7073, %228
  br label %7077

; <label>:7077                                    ; preds = %7019, %6787
  %7078 = phi float [ %7074, %7019 ], [ %193, %6787 ]
  %7079 = phi float [ %7075, %7019 ], [ %194, %6787 ]
  %7080 = phi float [ %7076, %7019 ], [ %195, %6787 ]
  %7081 = phi float [ %228, %7019 ], [ %101, %6787 ]
  %7082 = phi float [ %7040, %7019 ], [ %6810, %6787 ]
  %7083 = phi float [ %7041, %7019 ], [ %6811, %6787 ]
  %7084 = phi float [ %7042, %7019 ], [ %6812, %6787 ]
  %7085 = phi float [ %7043, %7019 ], [ %6788, %6787 ]
  %7086 = phi float [ %7044, %7019 ], [ %6789, %6787 ]
  %7087 = phi float [ %7045, %7019 ], [ %6790, %6787 ]
  %7088 = phi float [ %7020, %7019 ], [ 1.000000e+00, %6787 ]
  br i1 %6819, label %8243, label %7089

; <label>:7089                                    ; preds = %7077
  %7090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7091 = extractvalue %dx.types.CBufRet.f32 %7090, 0
  %7092 = extractvalue %dx.types.CBufRet.f32 %7090, 1
  %7093 = extractvalue %dx.types.CBufRet.f32 %7090, 2
  %7094 = extractvalue %dx.types.CBufRet.f32 %7090, 3
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.CBufRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.CBufRet.f32 %7095, 2
  %7099 = extractvalue %dx.types.CBufRet.f32 %7095, 3
  %7100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7101 = extractvalue %dx.types.CBufRet.f32 %7100, 0
  %7102 = extractvalue %dx.types.CBufRet.f32 %7100, 1
  %7103 = extractvalue %dx.types.CBufRet.f32 %7100, 2
  %7104 = extractvalue %dx.types.CBufRet.f32 %7100, 3
  %7105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7106 = extractvalue %dx.types.CBufRet.f32 %7105, 0
  %7107 = extractvalue %dx.types.CBufRet.f32 %7105, 1
  %7108 = extractvalue %dx.types.CBufRet.f32 %7105, 2
  %7109 = extractvalue %dx.types.CBufRet.f32 %7105, 3
  %7110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7111 = extractvalue %dx.types.CBufRet.f32 %7110, 3
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 3
  %7114 = extractvalue %dx.types.CBufRet.f32 %7112, 0
  %7115 = extractvalue %dx.types.CBufRet.f32 %7112, 1
  %7116 = extractvalue %dx.types.CBufRet.f32 %7112, 2
  %7117 = fcmp fast olt float %7116, -5.000000e-01
  %7118 = call float @dx.op.dot3.f32(i32 55, float %7078, float %7079, float %7080, float %7078, float %7079, float %7080)  ; Dot3(ax,ay,az,bx,by,bz)
  %7119 = call float @dx.op.unary.f32(i32 25, float %7118)  ; Rsqrt(value)
  %7120 = fmul fast float %7119, %7118
  %7121 = fmul fast float %7119, %7078
  %7122 = fmul fast float %7119, %7079
  %7123 = fmul fast float %7119, %7080
  %7124 = fadd fast float %7120, %7094
  %7125 = call float @dx.op.dot3.f32(i32 55, float %7121, float %7122, float %7123, float %7091, float %7092, float %7093)  ; Dot3(ax,ay,az,bx,by,bz)
  %7126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7127 = extractvalue %dx.types.CBufRet.i32 %7126, 1
  %7128 = and i32 %7127, 1
  %7129 = icmp ne i32 %7128, 0
  %7130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7131 = extractvalue %dx.types.CBufRet.f32 %7130, 2
  %7132 = fcmp fast ogt float %7131, 0.000000e+00
  %7133 = and i1 %7129, %7132
  br i1 %7133, label %7134, label %7540, !dx.controlflow.hints !122

; <label>:7134                                    ; preds = %7089
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 3
  %7137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7138 = extractvalue %dx.types.CBufRet.f32 %7137, 2
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 2
  %7141 = fsub fast float %7138, %7140
  %7142 = and i32 %7127, 2
  %7143 = extractvalue %dx.types.CBufRet.i32 %7126, 0
  %7144 = call i32 @dx.op.binary.i32(i32 40, i32 %7143, i32 3)  ; UMin(a,b)
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.CBufRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7149 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7150 = fsub fast float %7146, %7148
  %7151 = fsub fast float %7147, %7149
  %7152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7153 = extractvalue %dx.types.CBufRet.f32 %7152, 0
  %7154 = fcmp fast ogt float %7153, 0.000000e+00
  %7155 = fsub fast float -0.000000e+00, %7150
  %7156 = fsub fast float -0.000000e+00, %7151
  %7157 = call float @dx.op.dot2.f32(i32 54, float %7121, float %7122, float %7121, float %7122)  ; Dot2(ax,ay,bx,by)
  %7158 = call float @dx.op.dot2.f32(i32 54, float %7121, float %7122, float %7155, float %7156)  ; Dot2(ax,ay,bx,by)
  %7159 = fmul fast float %7158, 2.000000e+00
  %7160 = call float @dx.op.dot2.f32(i32 54, float %7155, float %7156, float %7155, float %7156)  ; Dot2(ax,ay,bx,by)
  %7161 = fmul fast float %7153, %7153
  %7162 = fsub fast float %7160, %7161
  %7163 = fmul fast float %7159, %7159
  %7164 = fmul fast float %7157, 4.000000e+00
  %7165 = fmul fast float %7164, %7162
  %7166 = fsub fast float %7163, %7165
  %7167 = fcmp fast ogt float %7166, 0.000000e+00
  br i1 %7167, label %7168, label %7183

; <label>:7168                                    ; preds = %7134
  %7169 = fcmp fast ogt float %7159, 0.000000e+00
  %7170 = call float @dx.op.unary.f32(i32 24, float %7166)  ; Sqrt(value)
  %7171 = fsub fast float -0.000000e+00, %7170
  %7172 = select i1 %7169, float %7170, float %7171
  %7173 = fadd fast float %7172, %7159
  %7174 = fmul float %7173, -5.000000e-01
  %7175 = fdiv fast float %7174, %7157
  %7176 = call float @dx.op.binary.f32(i32 35, float %7175, float 0.000000e+00)  ; FMax(a,b)
  %7177 = call float @dx.op.binary.f32(i32 36, float %7120, float %7176)  ; FMin(a,b)
  %7178 = fdiv fast float %7162, %7174
  %7179 = call float @dx.op.binary.f32(i32 35, float %7178, float 0.000000e+00)  ; FMax(a,b)
  %7180 = call float @dx.op.binary.f32(i32 36, float %7120, float %7179)  ; FMin(a,b)
  %7181 = call float @dx.op.binary.f32(i32 36, float %7177, float %7180)  ; FMin(a,b)
  %7182 = call float @dx.op.binary.f32(i32 35, float %7177, float %7180)  ; FMax(a,b)
  br label %7183

; <label>:7183                                    ; preds = %7168, %7134
  %7184 = phi float [ %7182, %7168 ], [ -1.000000e+00, %7134 ]
  %7185 = phi float [ %7181, %7168 ], [ -1.000000e+00, %7134 ]
  %7186 = phi i1 [ true, %7168 ], [ false, %7134 ]
  %7187 = and i1 %7154, %7186
  br i1 %7187, label %7188, label %7190

; <label>:7188                                    ; preds = %7183
  %7189 = fcmp fast oeq float %7185, %7184
  br i1 %7189, label %7493, label %7191

; <label>:7190                                    ; preds = %7183
  br i1 %7154, label %7493, label %7191

; <label>:7191                                    ; preds = %7190, %7188
  %7192 = phi float [ %7120, %7190 ], [ %7184, %7188 ]
  %7193 = phi float [ 0.000000e+00, %7190 ], [ %7185, %7188 ]
  %7194 = icmp ne i32 %7142, 0
  %7195 = fmul fast float %7192, %7123
  %7196 = fadd fast float %7195, %7136
  %7197 = fmul fast float %7196, %7192
  %7198 = select i1 %7194, float 0.000000e+00, float %7197
  %7199 = fcmp fast oeq float %7123, 0.000000e+00
  %7200 = fdiv fast float %7141, %7123
  %7201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7200)  ; FMax(a,b)
  %7202 = select i1 %7199, float %7192, float %7201
  %7203 = call float @dx.op.binary.f32(i32 36, float %7192, float %7202)  ; FMin(a,b)
  %7204 = fcmp fast ogt float %7123, 0.000000e+00
  %7205 = fcmp fast olt float %7141, 0.000000e+00
  br i1 %7204, label %7206, label %7263

; <label>:7206                                    ; preds = %7191
  %7207 = icmp eq i32 %7142, 0
  br i1 %7205, label %7208, label %7252

; <label>:7208                                    ; preds = %7206
  %7209 = select i1 %7207, float %7192, float 0.000000e+00
  %7210 = fsub fast float -0.000000e+00, %7209
  %7211 = call float @dx.op.unary.f32(i32 6, float %7210)  ; FAbs(value)
  %7212 = fmul fast float %7209, %7123
  %7213 = fadd fast float %7212, %7136
  %7214 = fmul fast float %7211, %7213
  %7215 = fsub fast float %7198, %7214
  %7216 = fsub fast float %7192, %7211
  %7217 = select i1 %7207, float %7216, float 0.000000e+00
  %7218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7219 = extractvalue %dx.types.CBufRet.f32 %7218, 0
  %7220 = extractvalue %dx.types.CBufRet.f32 %7218, 1
  %7221 = extractvalue %dx.types.CBufRet.f32 %7218, 2
  %7222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.CBufRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.CBufRet.f32 %7222, 2
  %7226 = extractvalue %dx.types.CBufRet.f32 %7222, 3
  %7227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7228 = extractvalue %dx.types.CBufRet.f32 %7227, 3
  %7229 = call float @dx.op.binary.f32(i32 36, float %7215, float %7228)  ; FMin(a,b)
  %7230 = fmul fast float %7226, %7217
  %7231 = call float @dx.op.unary.f32(i32 7, float %7230)  ; Saturate(value)
  %7232 = fsub fast float %7223, %7219
  %7233 = fsub fast float %7224, %7220
  %7234 = fsub fast float %7225, %7221
  %7235 = fmul fast float %7231, %7232
  %7236 = fmul fast float %7231, %7233
  %7237 = fmul fast float %7231, %7234
  %7238 = fadd fast float %7235, %7219
  %7239 = fadd fast float %7236, %7220
  %7240 = fadd fast float %7237, %7221
  %7241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7242 = extractvalue %dx.types.CBufRet.f32 %7241, 0
  %7243 = extractvalue %dx.types.CBufRet.f32 %7241, 1
  %7244 = fadd fast float %7243, %7242
  %7245 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7241, 2
  %7247 = extractvalue %dx.types.CBufRet.f32 %7241, 3
  %7248 = fadd fast float %7247, %7246
  %7249 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7250 = fmul fast float %7245, %7229
  %7251 = fmul fast float %7250, %7249
  br label %7493

; <label>:7252                                    ; preds = %7206
  br i1 %7207, label %7253, label %7274

; <label>:7253                                    ; preds = %7252
  %7254 = call float @dx.op.binary.f32(i32 36, float %7203, float %7193)  ; FMin(a,b)
  %7255 = fsub fast float %7203, %7254
  %7256 = fsub fast float %7255, %7192
  %7257 = call float @dx.op.unary.f32(i32 6, float %7256)  ; FAbs(value)
  %7258 = fadd fast float %7255, %7192
  %7259 = fmul fast float %7258, %7123
  %7260 = fadd fast float %7259, %7136
  %7261 = fmul fast float %7260, %7257
  %7262 = fsub fast float %7198, %7261
  br label %7274

; <label>:7263                                    ; preds = %7191
  br i1 %7205, label %7264, label %7274

; <label>:7264                                    ; preds = %7263
  %7265 = call float @dx.op.binary.f32(i32 35, float %7193, float %7203)  ; FMax(a,b)
  %7266 = icmp eq i32 %7142, 0
  %7267 = select i1 %7266, float %7203, float 0.000000e+00
  %7268 = fsub fast float -0.000000e+00, %7267
  %7269 = call float @dx.op.unary.f32(i32 6, float %7268)  ; FAbs(value)
  %7270 = fmul fast float %7267, %7123
  %7271 = fadd fast float %7270, %7136
  %7272 = fmul fast float %7269, %7271
  %7273 = fsub fast float %7198, %7272
  br label %7274

; <label>:7274                                    ; preds = %7264, %7263, %7253, %7252
  %7275 = phi float [ %7193, %7252 ], [ %7193, %7253 ], [ %7265, %7264 ], [ %7193, %7263 ]
  %7276 = phi float [ 0.000000e+00, %7252 ], [ %7257, %7253 ], [ %7269, %7264 ], [ 0.000000e+00, %7263 ]
  %7277 = phi float [ %7198, %7252 ], [ %7262, %7253 ], [ %7273, %7264 ], [ %7198, %7263 ]
  %7278 = phi float [ %7203, %7252 ], [ %7203, %7253 ], [ %7192, %7264 ], [ %7192, %7263 ]
  %7279 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %7279, align 4, !tbaa !123, !noalias !125
  %7280 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %7280, align 4, !tbaa !123, !noalias !125
  %7281 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %7281, align 4, !tbaa !123, !noalias !125
  %7282 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7282, align 4, !tbaa !123, !noalias !125
  %7283 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7283, align 4, !tbaa !123, !noalias !125
  %7284 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7284, align 4, !tbaa !123, !noalias !125
  %7285 = icmp sgt i32 %7144, 0
  br i1 %7285, label %7286, label %7347

; <label>:7286                                    ; preds = %7274
  br label %7287

; <label>:7287                                    ; preds = %7336, %7286
  %7288 = phi i32 [ %7337, %7336 ], [ 0, %7286 ]
  %7289 = phi i32 [ %7338, %7336 ], [ 0, %7286 ]
  %7290 = add nuw i32 %7289, 171
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7290)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.CBufRet.f32 %7294, 1
  %7297 = fsub fast float %7292, %7295
  %7298 = fsub fast float %7293, %7296
  %7299 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7300 = fsub fast float -0.000000e+00, %7297
  %7301 = fsub fast float -0.000000e+00, %7298
  %7302 = call float @dx.op.dot2.f32(i32 54, float %7121, float %7122, float %7300, float %7301)  ; Dot2(ax,ay,bx,by)
  %7303 = fmul fast float %7302, 2.000000e+00
  %7304 = call float @dx.op.dot2.f32(i32 54, float %7300, float %7301, float %7300, float %7301)  ; Dot2(ax,ay,bx,by)
  %7305 = fmul fast float %7299, %7299
  %7306 = fsub fast float %7304, %7305
  %7307 = fmul fast float %7303, %7303
  %7308 = fmul fast float %7164, %7306
  %7309 = fsub fast float %7307, %7308
  %7310 = fcmp fast ogt float %7309, 0.000000e+00
  br i1 %7310, label %7311, label %7326

; <label>:7311                                    ; preds = %7287
  %7312 = fcmp fast ogt float %7303, 0.000000e+00
  %7313 = call float @dx.op.unary.f32(i32 24, float %7309)  ; Sqrt(value)
  %7314 = fsub fast float -0.000000e+00, %7313
  %7315 = select i1 %7312, float %7313, float %7314
  %7316 = fadd fast float %7315, %7303
  %7317 = fmul float %7316, -5.000000e-01
  %7318 = fdiv fast float %7317, %7157
  %7319 = call float @dx.op.binary.f32(i32 35, float %7318, float 0.000000e+00)  ; FMax(a,b)
  %7320 = call float @dx.op.binary.f32(i32 36, float %7192, float %7319)  ; FMin(a,b)
  %7321 = fdiv fast float %7306, %7317
  %7322 = call float @dx.op.binary.f32(i32 35, float %7321, float 0.000000e+00)  ; FMax(a,b)
  %7323 = call float @dx.op.binary.f32(i32 36, float %7192, float %7322)  ; FMin(a,b)
  %7324 = call float @dx.op.binary.f32(i32 36, float %7320, float %7323)  ; FMin(a,b)
  %7325 = call float @dx.op.binary.f32(i32 35, float %7320, float %7323)  ; FMax(a,b)
  br label %7326

; <label>:7326                                    ; preds = %7311, %7287
  %7327 = phi float [ %7325, %7311 ], [ -1.000000e+00, %7287 ]
  %7328 = phi float [ %7324, %7311 ], [ -1.000000e+00, %7287 ]
  %7329 = phi i1 [ true, %7311 ], [ false, %7287 ]
  br i1 %7329, label %7330, label %7336

; <label>:7330                                    ; preds = %7326
  %7331 = call float @dx.op.binary.f32(i32 35, float %7275, float %7328)  ; FMax(a,b)
  %7332 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7289
  store float %7331, float* %7332, align 4, !tbaa !123, !noalias !125
  %7333 = call float @dx.op.binary.f32(i32 35, float %7275, float %7327)  ; FMax(a,b)
  %7334 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7289
  store float %7333, float* %7334, align 4, !tbaa !123, !noalias !125
  %7335 = add nsw i32 %7288, 1
  br label %7336

; <label>:7336                                    ; preds = %7330, %7326
  %7337 = phi i32 [ %7335, %7330 ], [ %7288, %7326 ]
  %7338 = add nuw nsw i32 %7289, 1
  %7339 = icmp eq i32 %7338, %7144
  br i1 %7339, label %7340, label %7287

; <label>:7340                                    ; preds = %7336
  %7341 = load float, float* %7281, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7342 = load float, float* %7280, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %7343 = load float, float* %7279, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %7344 = load float, float* %7284, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7345 = load float, float* %7283, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %7346 = load float, float* %7282, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %7347

; <label>:7347                                    ; preds = %7340, %7274
  %7348 = phi float [ -1.000000e+00, %7274 ], [ %7346, %7340 ]
  %7349 = phi float [ -1.000000e+00, %7274 ], [ %7345, %7340 ]
  %7350 = phi float [ -1.000000e+00, %7274 ], [ %7344, %7340 ]
  %7351 = phi float [ -1.000000e+00, %7274 ], [ %7343, %7340 ]
  %7352 = phi float [ -1.000000e+00, %7274 ], [ %7342, %7340 ]
  %7353 = phi float [ -1.000000e+00, %7274 ], [ %7341, %7340 ]
  %7354 = phi i32 [ 0, %7274 ], [ %7337, %7340 ]
  %7355 = call float @dx.op.binary.f32(i32 36, float %7352, float %7353)  ; FMin(a,b)
  %7356 = call float @dx.op.binary.f32(i32 36, float %7351, float %7355)  ; FMin(a,b)
  %7357 = call float @dx.op.binary.f32(i32 35, float %7351, float %7352)  ; FMax(a,b)
  %7358 = call float @dx.op.binary.f32(i32 36, float %7357, float %7353)  ; FMin(a,b)
  %7359 = call float @dx.op.binary.f32(i32 36, float %7351, float %7352)  ; FMin(a,b)
  %7360 = call float @dx.op.binary.f32(i32 35, float %7359, float %7358)  ; FMax(a,b)
  %7361 = call float @dx.op.binary.f32(i32 35, float %7352, float %7353)  ; FMax(a,b)
  %7362 = call float @dx.op.binary.f32(i32 35, float %7351, float %7361)  ; FMax(a,b)
  store float %7356, float* %7279, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %7360, float* %7280, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %7362, float* %7281, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7363 = call float @dx.op.binary.f32(i32 36, float %7349, float %7350)  ; FMin(a,b)
  %7364 = call float @dx.op.binary.f32(i32 36, float %7348, float %7363)  ; FMin(a,b)
  %7365 = call float @dx.op.binary.f32(i32 35, float %7348, float %7349)  ; FMax(a,b)
  %7366 = call float @dx.op.binary.f32(i32 36, float %7365, float %7350)  ; FMin(a,b)
  %7367 = call float @dx.op.binary.f32(i32 36, float %7348, float %7349)  ; FMin(a,b)
  %7368 = call float @dx.op.binary.f32(i32 35, float %7367, float %7366)  ; FMax(a,b)
  %7369 = call float @dx.op.binary.f32(i32 35, float %7349, float %7350)  ; FMax(a,b)
  %7370 = call float @dx.op.binary.f32(i32 35, float %7348, float %7369)  ; FMax(a,b)
  store float %7364, float* %7282, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %7368, float* %7283, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %7370, float* %7284, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7371 = sub nsw i32 3, %7354
  %7372 = icmp sgt i32 %7371, 2
  br i1 %7372, label %7373, label %7411

; <label>:7373                                    ; preds = %7347
  %7374 = icmp eq i32 %7142, 0
  %7375 = fsub fast float %7192, %7276
  %7376 = select i1 %7374, float %7375, float %7276
  %7377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.CBufRet.f32 %7377, 1
  %7380 = extractvalue %dx.types.CBufRet.f32 %7377, 2
  %7381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7382 = extractvalue %dx.types.CBufRet.f32 %7381, 0
  %7383 = extractvalue %dx.types.CBufRet.f32 %7381, 1
  %7384 = extractvalue %dx.types.CBufRet.f32 %7381, 2
  %7385 = extractvalue %dx.types.CBufRet.f32 %7381, 3
  %7386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7387 = extractvalue %dx.types.CBufRet.f32 %7386, 3
  %7388 = call float @dx.op.binary.f32(i32 36, float %7277, float %7387)  ; FMin(a,b)
  %7389 = fmul fast float %7385, %7376
  %7390 = call float @dx.op.unary.f32(i32 7, float %7389)  ; Saturate(value)
  %7391 = fsub fast float %7382, %7378
  %7392 = fsub fast float %7383, %7379
  %7393 = fsub fast float %7384, %7380
  %7394 = fmul fast float %7390, %7391
  %7395 = fmul fast float %7390, %7392
  %7396 = fmul fast float %7390, %7393
  %7397 = fadd fast float %7394, %7378
  %7398 = fadd fast float %7395, %7379
  %7399 = fadd fast float %7396, %7380
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.CBufRet.f32 %7400, 1
  %7403 = fadd fast float %7402, %7401
  %7404 = call float @dx.op.unary.f32(i32 7, float %7403)  ; Saturate(value)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7400, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7400, 3
  %7407 = fadd fast float %7406, %7405
  %7408 = call float @dx.op.unary.f32(i32 7, float %7407)  ; Saturate(value)
  %7409 = fmul fast float %7404, %7388
  %7410 = fmul fast float %7409, %7408
  br label %7493

; <label>:7411                                    ; preds = %7347
  %7412 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7371
  %7413 = load float, float* %7412, align 4, !tbaa !123, !noalias !125
  %7414 = fcmp fast olt float %7413, %7278
  %7415 = icmp sgt i32 %7354, 0
  %7416 = and i1 %7415, %7414
  br i1 %7416, label %7417, label %7454

; <label>:7417                                    ; preds = %7411
  br label %7418

; <label>:7418                                    ; preds = %7447, %7417
  %7419 = phi float [ %7448, %7447 ], [ %7276, %7417 ]
  %7420 = phi float [ %7449, %7447 ], [ %7277, %7417 ]
  %7421 = phi float [ %7429, %7447 ], [ %7413, %7417 ]
  %7422 = phi i32 [ %7426, %7447 ], [ %7371, %7417 ]
  %7423 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7422
  %7424 = load float, float* %7423, align 4, !tbaa !123, !noalias !125
  %7425 = icmp slt i32 %7422, 2
  %7426 = add nsw i32 %7422, 1
  %7427 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7426
  %7428 = load float, float* %7427, align 4, !tbaa !123, !noalias !125
  %7429 = select i1 %7425, float %7428, float %7192
  %7430 = call float @dx.op.binary.f32(i32 36, float %7429, float %7424)  ; FMin(a,b)
  %7431 = call float @dx.op.binary.f32(i32 36, float %7278, float %7430)  ; FMin(a,b)
  %7432 = icmp eq i32 %7142, 0
  %7433 = fadd fast float %7431, %7421
  %7434 = fmul fast float %7433, %7123
  %7435 = fadd fast float %7434, %7136
  br i1 %7432, label %7441, label %7436

; <label>:7436                                    ; preds = %7418
  %7437 = fsub fast float %7431, %7421
  %7438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7437)  ; FMax(a,b)
  %7439 = fmul fast float %7438, %7435
  %7440 = fadd fast float %7439, %7420
  br label %7447

; <label>:7441                                    ; preds = %7418
  %7442 = fsub fast float %7421, %7431
  %7443 = call float @dx.op.unary.f32(i32 6, float %7442)  ; FAbs(value)
  %7444 = fadd fast float %7443, %7419
  %7445 = fmul fast float %7443, %7435
  %7446 = fsub fast float %7420, %7445
  br label %7447

; <label>:7447                                    ; preds = %7441, %7436
  %7448 = phi float [ %7438, %7436 ], [ %7444, %7441 ]
  %7449 = phi float [ %7440, %7436 ], [ %7446, %7441 ]
  %7450 = fcmp fast olt float %7429, %7278
  %7451 = icmp slt i32 %7426, 3
  %7452 = and i1 %7451, %7450
  br i1 %7452, label %7418, label %7453

; <label>:7453                                    ; preds = %7447
  br label %7454

; <label>:7454                                    ; preds = %7453, %7411
  %7455 = phi float [ %7276, %7411 ], [ %7448, %7453 ]
  %7456 = phi float [ %7277, %7411 ], [ %7449, %7453 ]
  %7457 = fsub fast float %7192, %7455
  %7458 = select i1 %7194, float %7455, float %7457
  %7459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7460 = extractvalue %dx.types.CBufRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.CBufRet.f32 %7459, 2
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.CBufRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.CBufRet.f32 %7463, 2
  %7467 = extractvalue %dx.types.CBufRet.f32 %7463, 3
  %7468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7469 = extractvalue %dx.types.CBufRet.f32 %7468, 3
  %7470 = call float @dx.op.binary.f32(i32 36, float %7456, float %7469)  ; FMin(a,b)
  %7471 = fmul fast float %7467, %7458
  %7472 = call float @dx.op.unary.f32(i32 7, float %7471)  ; Saturate(value)
  %7473 = fsub fast float %7464, %7460
  %7474 = fsub fast float %7465, %7461
  %7475 = fsub fast float %7466, %7462
  %7476 = fmul fast float %7472, %7473
  %7477 = fmul fast float %7472, %7474
  %7478 = fmul fast float %7472, %7475
  %7479 = fadd fast float %7476, %7460
  %7480 = fadd fast float %7477, %7461
  %7481 = fadd fast float %7478, %7462
  %7482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7482, 0
  %7484 = extractvalue %dx.types.CBufRet.f32 %7482, 1
  %7485 = fadd fast float %7484, %7483
  %7486 = call float @dx.op.unary.f32(i32 7, float %7485)  ; Saturate(value)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7482, 2
  %7488 = extractvalue %dx.types.CBufRet.f32 %7482, 3
  %7489 = fadd fast float %7488, %7487
  %7490 = call float @dx.op.unary.f32(i32 7, float %7489)  ; Saturate(value)
  %7491 = fmul fast float %7486, %7470
  %7492 = fmul fast float %7491, %7490
  br label %7493

; <label>:7493                                    ; preds = %7454, %7373, %7208, %7190, %7188
  %7494 = phi float [ %7217, %7208 ], [ %7376, %7373 ], [ %7458, %7454 ], [ 0.000000e+00, %7188 ], [ 0.000000e+00, %7190 ]
  %7495 = phi float [ %7251, %7208 ], [ %7410, %7373 ], [ %7492, %7454 ], [ 0.000000e+00, %7188 ], [ 0.000000e+00, %7190 ]
  %7496 = phi float [ %7238, %7208 ], [ %7397, %7373 ], [ %7479, %7454 ], [ 0.000000e+00, %7188 ], [ 0.000000e+00, %7190 ]
  %7497 = phi float [ %7239, %7208 ], [ %7398, %7373 ], [ %7480, %7454 ], [ 0.000000e+00, %7188 ], [ 0.000000e+00, %7190 ]
  %7498 = phi float [ %7240, %7208 ], [ %7399, %7373 ], [ %7481, %7454 ], [ 0.000000e+00, %7188 ], [ 0.000000e+00, %7190 ]
  %7499 = fmul fast float %7131, %7495
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 2
  %7502 = fsub fast float %7138, %7501
  %7503 = fcmp fast olt float %7499, -2.000000e+01
  %7504 = call float @dx.op.unary.f32(i32 21, float %7499)  ; Exp(value)
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 2
  %7507 = extractvalue %dx.types.CBufRet.f32 %7505, 3
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7510 = fmul fast float %7507, %7502
  %7511 = call float @dx.op.unary.f32(i32 7, float %7510)  ; Saturate(value)
  %7512 = fsub fast float 1.000000e+00, %7511
  %7513 = fmul fast float %7123, 5.000000e-01
  %7514 = fadd fast float %7513, 5.000000e-01
  %7515 = call float @dx.op.unary.f32(i32 7, float %7514)  ; Saturate(value)
  %7516 = fsub fast float 1.000000e+00, %7515
  %7517 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7512)  ; FMax(a,b)
  %7518 = fdiv fast float %7516, %7517
  %7519 = fsub fast float %7502, %7080
  %7520 = call float @dx.op.unary.f32(i32 6, float %7519)  ; FAbs(value)
  %7521 = fmul fast float %7520, %7506
  %7522 = call float @dx.op.unary.f32(i32 7, float %7518)  ; Saturate(value)
  %7523 = fsub fast float 1.000000e+00, %7521
  %7524 = fmul fast float %7523, %7522
  %7525 = fadd fast float %7524, %7521
  %7526 = fmul fast float %7509, %7502
  %7527 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7528 = fsub fast float 1.000000e+00, %7525
  %7529 = fmul fast float %7528, %7527
  %7530 = fadd fast float %7529, %7525
  %7531 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7532 = fadd fast float %7504, -1.000000e+00
  %7533 = select i1 %7503, float -1.000000e+00, float %7532
  %7534 = fmul fast float %7531, %7533
  %7535 = fadd fast float %7534, 1.000000e+00
  %7536 = fsub fast float -0.000000e+00, %7534
  %7537 = fmul fast float %7496, %7536
  %7538 = fmul fast float %7497, %7536
  %7539 = fmul fast float %7498, %7536
  br label %7540

; <label>:7540                                    ; preds = %7493, %7089
  %7541 = phi float [ %7494, %7493 ], [ 0.000000e+00, %7089 ]
  %7542 = phi float [ %7535, %7493 ], [ 1.000000e+00, %7089 ]
  %7543 = phi float [ %7537, %7493 ], [ 0.000000e+00, %7089 ]
  %7544 = phi float [ %7538, %7493 ], [ 0.000000e+00, %7089 ]
  %7545 = phi float [ %7539, %7493 ], [ 0.000000e+00, %7089 ]
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 1
  %7548 = fsub fast float 1.000000e+00, %7542
  %7549 = fmul fast float %7548, %7124
  %7550 = fmul fast float %7549, %7547
  %7551 = fsub fast float %7124, %7550
  br i1 %7117, label %7552, label %7581, !dx.controlflow.hints !161

; <label>:7552                                    ; preds = %7540
  %7553 = fmul fast float %7125, %7114
  %7554 = fadd fast float %7553, %7115
  %7555 = call float @dx.op.unary.f32(i32 7, float %7554)  ; Saturate(value)
  %7556 = fmul fast float %7096, %7551
  %7557 = fsub fast float -0.000000e+00, %7556
  %7558 = fmul fast float %7097, %7551
  %7559 = fsub fast float -0.000000e+00, %7558
  %7560 = call float @dx.op.unary.f32(i32 21, float %7557)  ; Exp(value)
  %7561 = call float @dx.op.unary.f32(i32 21, float %7559)  ; Exp(value)
  %7562 = call float @dx.op.binary.f32(i32 35, float %7104, float %7560)  ; FMax(a,b)
  %7563 = call float @dx.op.binary.f32(i32 35, float %7104, float %7561)  ; FMax(a,b)
  %7564 = fsub fast float %7563, %7562
  %7565 = fmul fast float %7564, %7555
  %7566 = fadd fast float %7565, %7562
  %7567 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  %7568 = fsub fast float %7101, %7106
  %7569 = fsub fast float %7102, %7107
  %7570 = fsub fast float %7103, %7108
  %7571 = fmul fast float %7555, %7568
  %7572 = fmul fast float %7555, %7569
  %7573 = fmul fast float %7555, %7570
  %7574 = fadd fast float %7571, %7106
  %7575 = fadd fast float %7572, %7107
  %7576 = fadd fast float %7573, %7108
  %7577 = fsub fast float 1.000000e+00, %7567
  %7578 = fmul fast float %7577, %7574
  %7579 = fmul fast float %7577, %7575
  %7580 = fmul fast float %7577, %7576
  br label %7640

; <label>:7581                                    ; preds = %7540
  %7582 = fmul fast float %7551, %7113
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fsub fast float 2.000000e+00, %7583
  %7585 = fmul fast float %7583, 9.921875e-01
  %7586 = fmul fast float %7585, %7584
  %7587 = fadd fast float %7586, 3.906250e-03
  %7588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %7587, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7589 = extractvalue %dx.types.ResRet.f32 %7588, 0
  %7590 = fsub fast float %7583, %7589
  %7591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7590)  ; FMax(a,b)
  %7592 = fmul fast float %7099, %7080
  %7593 = call float @dx.op.unary.f32(i32 6, float %7592)  ; FAbs(value)
  %7594 = fcmp fast ogt float %7593, 0x3EB0C6F7A0000000
  br i1 %7594, label %7595, label %7601, !dx.controlflow.hints !162

; <label>:7595                                    ; preds = %7581
  %7596 = fmul fast float %7592, 0xBFF7154760000000
  %7597 = call float @dx.op.unary.f32(i32 21, float %7596)  ; Exp(value)
  %7598 = fsub fast float 1.000000e+00, %7597
  %7599 = fdiv fast float %7598, %7592
  %7600 = fmul fast float %7599, %7109
  br label %7601

; <label>:7601                                    ; preds = %7595, %7581
  %7602 = phi float [ %7600, %7595 ], [ %7109, %7581 ]
  %7603 = fadd fast float %7602, %7111
  %7604 = fmul fast float %7603, %7591
  %7605 = fmul fast float %7096, %7604
  %7606 = fsub fast float -0.000000e+00, %7605
  %7607 = fmul fast float %7097, %7604
  %7608 = fsub fast float -0.000000e+00, %7607
  %7609 = fmul fast float %7098, %7604
  %7610 = fsub fast float -0.000000e+00, %7609
  %7611 = call float @dx.op.unary.f32(i32 21, float %7606)  ; Exp(value)
  %7612 = call float @dx.op.unary.f32(i32 21, float %7608)  ; Exp(value)
  %7613 = call float @dx.op.unary.f32(i32 21, float %7610)  ; Exp(value)
  %7614 = fmul fast float %7125, %7125
  %7615 = fadd fast float %7614, 1.000000e+00
  %7616 = fmul fast float %7615, 0x3FAE8EC8A0000000
  %7617 = fmul fast float %7616, %7106
  %7618 = fmul fast float %7616, %7107
  %7619 = fmul fast float %7616, %7108
  %7620 = fmul fast float %7125, %7104
  %7621 = fsub fast float 1.000000e+00, %7620
  %7622 = fmul fast float %7104, %7104
  %7623 = fsub fast float 1.000000e+00, %7622
  %7624 = fmul fast float %7623, 0x3FB45F3060000000
  %7625 = fmul fast float %7621, %7621
  %7626 = fdiv fast float 1.000000e+00, %7625
  %7627 = fmul fast float %7624, %7626
  %7628 = fmul fast float %7627, %7101
  %7629 = fmul fast float %7627, %7102
  %7630 = fmul fast float %7627, %7103
  %7631 = fadd fast float %7628, %7617
  %7632 = fadd fast float %7629, %7618
  %7633 = fadd fast float %7630, %7619
  %7634 = fsub fast float 1.000000e+00, %7611
  %7635 = fsub fast float 1.000000e+00, %7612
  %7636 = fsub fast float 1.000000e+00, %7613
  %7637 = fmul fast float %7631, %7634
  %7638 = fmul fast float %7632, %7635
  %7639 = fmul fast float %7633, %7636
  br label %7640

; <label>:7640                                    ; preds = %7601, %7552
  %7641 = phi float [ %7578, %7552 ], [ %7637, %7601 ]
  %7642 = phi float [ %7579, %7552 ], [ %7638, %7601 ]
  %7643 = phi float [ %7580, %7552 ], [ %7639, %7601 ]
  %7644 = phi float [ %7567, %7552 ], [ %7611, %7601 ]
  %7645 = phi float [ %7567, %7552 ], [ %7612, %7601 ]
  %7646 = phi float [ %7567, %7552 ], [ %7613, %7601 ]
  br i1 %7133, label %7647, label %7845, !dx.controlflow.hints !163

; <label>:7647                                    ; preds = %7640
  %7648 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7649 = fmul fast float %7648, %7548
  %7650 = fsub fast float %7543, %7641
  %7651 = fsub fast float %7544, %7642
  %7652 = fsub fast float %7545, %7643
  %7653 = fmul fast float %7649, %7650
  %7654 = fmul fast float %7649, %7651
  %7655 = fmul fast float %7649, %7652
  %7656 = fadd fast float %7653, %7641
  %7657 = fadd fast float %7654, %7642
  %7658 = fadd fast float %7655, %7643
  %7659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7644)  ; FMax(a,b)
  %7660 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7645)  ; FMax(a,b)
  %7661 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7646)  ; FMax(a,b)
  %7662 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7542)  ; FMax(a,b)
  %7663 = call float @dx.op.binary.f32(i32 35, float %7541, float %7551)  ; FMax(a,b)
  %7664 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7663)  ; FMax(a,b)
  %7665 = fdiv fast float %7541, %7664
  %7666 = call float @dx.op.unary.f32(i32 7, float %7665)  ; Saturate(value)
  %7667 = fdiv fast float %7551, %7664
  %7668 = call float @dx.op.unary.f32(i32 7, float %7667)  ; Saturate(value)
  %7669 = fcmp fast une float %7662, 1.000000e+00
  br i1 %7669, label %7670, label %7683, !dx.controlflow.hints !164

; <label>:7670                                    ; preds = %7647
  %7671 = call float @dx.op.unary.f32(i32 23, float %7662)  ; Log(value)
  %7672 = fmul fast float %7671, 0x3FE62E4300000000
  %7673 = fmul fast float %7543, %7672
  %7674 = fsub fast float -0.000000e+00, %7673
  %7675 = fmul fast float %7544, %7672
  %7676 = fsub fast float -0.000000e+00, %7675
  %7677 = fmul fast float %7545, %7672
  %7678 = fsub fast float -0.000000e+00, %7677
  %7679 = fsub fast float 1.000000e+00, %7662
  %7680 = fdiv fast float %7674, %7679
  %7681 = fdiv fast float %7676, %7679
  %7682 = fdiv fast float %7678, %7679
  br label %7683

; <label>:7683                                    ; preds = %7670, %7647
  %7684 = phi float [ %7680, %7670 ], [ %7543, %7647 ]
  %7685 = phi float [ %7681, %7670 ], [ %7544, %7647 ]
  %7686 = phi float [ %7682, %7670 ], [ %7545, %7647 ]
  %7687 = phi float [ %7672, %7670 ], [ 0.000000e+00, %7647 ]
  %7688 = fcmp fast une float %7659, 1.000000e+00
  br i1 %7688, label %7689, label %7696, !dx.controlflow.hints !165

; <label>:7689                                    ; preds = %7683
  %7690 = call float @dx.op.unary.f32(i32 23, float %7659)  ; Log(value)
  %7691 = fmul fast float %7690, 0x3FE62E4300000000
  %7692 = fmul fast float %7656, %7691
  %7693 = fsub fast float -0.000000e+00, %7692
  %7694 = fsub fast float 1.000000e+00, %7659
  %7695 = fdiv fast float %7693, %7694
  br label %7696

; <label>:7696                                    ; preds = %7689, %7683
  %7697 = phi float [ %7695, %7689 ], [ %7656, %7683 ]
  %7698 = phi float [ %7691, %7689 ], [ 0.000000e+00, %7683 ]
  %7699 = fcmp fast une float %7660, 1.000000e+00
  br i1 %7699, label %7700, label %7707, !dx.controlflow.hints !165

; <label>:7700                                    ; preds = %7696
  %7701 = call float @dx.op.unary.f32(i32 23, float %7660)  ; Log(value)
  %7702 = fmul fast float %7701, 0x3FE62E4300000000
  %7703 = fmul fast float %7657, %7702
  %7704 = fsub fast float -0.000000e+00, %7703
  %7705 = fsub fast float 1.000000e+00, %7660
  %7706 = fdiv fast float %7704, %7705
  br label %7707

; <label>:7707                                    ; preds = %7700, %7696
  %7708 = phi float [ %7706, %7700 ], [ %7657, %7696 ]
  %7709 = phi float [ %7702, %7700 ], [ 0.000000e+00, %7696 ]
  %7710 = fcmp fast une float %7661, 1.000000e+00
  br i1 %7710, label %7711, label %7718, !dx.controlflow.hints !165

; <label>:7711                                    ; preds = %7707
  %7712 = call float @dx.op.unary.f32(i32 23, float %7661)  ; Log(value)
  %7713 = fmul fast float %7712, 0x3FE62E4300000000
  %7714 = fmul fast float %7658, %7713
  %7715 = fsub fast float -0.000000e+00, %7714
  %7716 = fsub fast float 1.000000e+00, %7661
  %7717 = fdiv fast float %7715, %7716
  br label %7718

; <label>:7718                                    ; preds = %7711, %7707
  %7719 = phi float [ %7717, %7711 ], [ %7658, %7707 ]
  %7720 = phi float [ %7713, %7711 ], [ 0.000000e+00, %7707 ]
  %7721 = fmul fast float %7684, %7668
  %7722 = fmul fast float %7685, %7668
  %7723 = fmul fast float %7686, %7668
  %7724 = fmul fast float %7687, %7668
  %7725 = fmul fast float %7697, %7666
  %7726 = fmul fast float %7708, %7666
  %7727 = fmul fast float %7719, %7666
  %7728 = fmul fast float %7698, %7666
  %7729 = fmul fast float %7709, %7666
  %7730 = fmul fast float %7720, %7666
  %7731 = fadd fast float %7725, %7721
  %7732 = fadd fast float %7726, %7722
  %7733 = fadd fast float %7727, %7723
  %7734 = fadd fast float %7728, %7724
  %7735 = fadd fast float %7729, %7724
  %7736 = fadd fast float %7730, %7724
  %7737 = fcmp fast une float %7734, 0.000000e+00
  br i1 %7737, label %7738, label %7745, !dx.controlflow.hints !166

; <label>:7738                                    ; preds = %7718
  %7739 = fmul fast float %7734, 0x3FF7154760000000
  %7740 = call float @dx.op.unary.f32(i32 21, float %7739)  ; Exp(value)
  %7741 = fsub fast float 1.000000e+00, %7740
  %7742 = fmul fast float %7731, %7741
  %7743 = fsub fast float -0.000000e+00, %7742
  %7744 = fdiv fast float %7743, %7734
  br label %7745

; <label>:7745                                    ; preds = %7738, %7718
  %7746 = phi float [ %7740, %7738 ], [ 1.000000e+00, %7718 ]
  %7747 = phi float [ %7744, %7738 ], [ %7731, %7718 ]
  %7748 = fcmp fast une float %7735, 0.000000e+00
  br i1 %7748, label %7749, label %7756, !dx.controlflow.hints !166

; <label>:7749                                    ; preds = %7745
  %7750 = fmul fast float %7735, 0x3FF7154760000000
  %7751 = call float @dx.op.unary.f32(i32 21, float %7750)  ; Exp(value)
  %7752 = fsub fast float 1.000000e+00, %7751
  %7753 = fmul fast float %7732, %7752
  %7754 = fsub fast float -0.000000e+00, %7753
  %7755 = fdiv fast float %7754, %7735
  br label %7756

; <label>:7756                                    ; preds = %7749, %7745
  %7757 = phi float [ %7751, %7749 ], [ 1.000000e+00, %7745 ]
  %7758 = phi float [ %7755, %7749 ], [ %7732, %7745 ]
  %7759 = fcmp fast une float %7736, 0.000000e+00
  br i1 %7759, label %7760, label %7767, !dx.controlflow.hints !166

; <label>:7760                                    ; preds = %7756
  %7761 = fmul fast float %7736, 0x3FF7154760000000
  %7762 = call float @dx.op.unary.f32(i32 21, float %7761)  ; Exp(value)
  %7763 = fsub fast float 1.000000e+00, %7762
  %7764 = fmul fast float %7733, %7763
  %7765 = fsub fast float -0.000000e+00, %7764
  %7766 = fdiv fast float %7765, %7736
  br label %7767

; <label>:7767                                    ; preds = %7760, %7756
  %7768 = phi float [ %7762, %7760 ], [ 1.000000e+00, %7756 ]
  %7769 = phi float [ %7766, %7760 ], [ %7733, %7756 ]
  %7770 = fcmp fast ogt float %7666, %7668
  br i1 %7770, label %7771, label %7791

; <label>:7771                                    ; preds = %7767
  %7772 = fsub fast float 1.000000e+00, %7668
  %7773 = fmul fast float %7684, %7772
  %7774 = fmul fast float %7685, %7772
  %7775 = fmul fast float %7686, %7772
  %7776 = fmul fast float %7687, %7772
  %7777 = fcmp fast une float %7776, 0.000000e+00
  br i1 %7777, label %7778, label %7829, !dx.controlflow.hints !167

; <label>:7778                                    ; preds = %7771
  %7779 = fmul fast float %7776, 0x3FF7154760000000
  %7780 = call float @dx.op.unary.f32(i32 21, float %7779)  ; Exp(value)
  %7781 = fsub fast float 1.000000e+00, %7780
  %7782 = fmul fast float %7773, %7781
  %7783 = fsub fast float -0.000000e+00, %7782
  %7784 = fmul fast float %7774, %7781
  %7785 = fsub fast float -0.000000e+00, %7784
  %7786 = fmul fast float %7775, %7781
  %7787 = fsub fast float -0.000000e+00, %7786
  %7788 = fdiv fast float %7783, %7776
  %7789 = fdiv fast float %7785, %7776
  %7790 = fdiv fast float %7787, %7776
  br label %7829

; <label>:7791                                    ; preds = %7767
  %7792 = fsub fast float 1.000000e+00, %7666
  %7793 = fmul fast float %7697, %7792
  %7794 = fmul fast float %7708, %7792
  %7795 = fmul fast float %7719, %7792
  %7796 = fmul fast float %7698, %7792
  %7797 = fmul fast float %7709, %7792
  %7798 = fmul fast float %7720, %7792
  %7799 = fcmp fast une float %7796, 0.000000e+00
  br i1 %7799, label %7800, label %7807, !dx.controlflow.hints !166

; <label>:7800                                    ; preds = %7791
  %7801 = fmul fast float %7796, 0x3FF7154760000000
  %7802 = call float @dx.op.unary.f32(i32 21, float %7801)  ; Exp(value)
  %7803 = fsub fast float 1.000000e+00, %7802
  %7804 = fmul fast float %7793, %7803
  %7805 = fsub fast float -0.000000e+00, %7804
  %7806 = fdiv fast float %7805, %7796
  br label %7807

; <label>:7807                                    ; preds = %7800, %7791
  %7808 = phi float [ %7806, %7800 ], [ %7793, %7791 ]
  %7809 = phi float [ %7802, %7800 ], [ 1.000000e+00, %7791 ]
  %7810 = fcmp fast une float %7797, 0.000000e+00
  br i1 %7810, label %7811, label %7818, !dx.controlflow.hints !166

; <label>:7811                                    ; preds = %7807
  %7812 = fmul fast float %7797, 0x3FF7154760000000
  %7813 = call float @dx.op.unary.f32(i32 21, float %7812)  ; Exp(value)
  %7814 = fsub fast float 1.000000e+00, %7813
  %7815 = fmul fast float %7794, %7814
  %7816 = fsub fast float -0.000000e+00, %7815
  %7817 = fdiv fast float %7816, %7797
  br label %7818

; <label>:7818                                    ; preds = %7811, %7807
  %7819 = phi float [ %7817, %7811 ], [ %7794, %7807 ]
  %7820 = phi float [ %7813, %7811 ], [ 1.000000e+00, %7807 ]
  %7821 = fcmp fast une float %7798, 0.000000e+00
  br i1 %7821, label %7822, label %7829, !dx.controlflow.hints !166

; <label>:7822                                    ; preds = %7818
  %7823 = fmul fast float %7798, 0x3FF7154760000000
  %7824 = call float @dx.op.unary.f32(i32 21, float %7823)  ; Exp(value)
  %7825 = fsub fast float 1.000000e+00, %7824
  %7826 = fmul fast float %7795, %7825
  %7827 = fsub fast float -0.000000e+00, %7826
  %7828 = fdiv fast float %7827, %7798
  br label %7829

; <label>:7829                                    ; preds = %7822, %7818, %7778, %7771
  %7830 = phi float [ %7828, %7822 ], [ %7790, %7778 ], [ %7775, %7771 ], [ %7795, %7818 ]
  %7831 = phi float [ %7819, %7822 ], [ %7789, %7778 ], [ %7774, %7771 ], [ %7819, %7818 ]
  %7832 = phi float [ %7808, %7822 ], [ %7788, %7778 ], [ %7773, %7771 ], [ %7808, %7818 ]
  %7833 = phi float [ %7824, %7822 ], [ %7780, %7778 ], [ 1.000000e+00, %7771 ], [ 1.000000e+00, %7818 ]
  %7834 = phi float [ %7820, %7822 ], [ %7780, %7778 ], [ 1.000000e+00, %7771 ], [ %7820, %7818 ]
  %7835 = phi float [ %7809, %7822 ], [ %7780, %7778 ], [ 1.000000e+00, %7771 ], [ %7809, %7818 ]
  %7836 = fmul fast float %7835, %7747
  %7837 = fmul fast float %7834, %7758
  %7838 = fmul fast float %7833, %7769
  %7839 = fadd fast float %7836, %7832
  %7840 = fadd fast float %7837, %7831
  %7841 = fadd fast float %7838, %7830
  %7842 = fmul fast float %7835, %7746
  %7843 = fmul fast float %7834, %7757
  %7844 = fmul fast float %7833, %7768
  br label %7845

; <label>:7845                                    ; preds = %7829, %7640
  %7846 = phi float [ %7844, %7829 ], [ %7646, %7640 ]
  %7847 = phi float [ %7843, %7829 ], [ %7645, %7640 ]
  %7848 = phi float [ %7842, %7829 ], [ %7644, %7640 ]
  %7849 = phi float [ %7841, %7829 ], [ %7643, %7640 ]
  %7850 = phi float [ %7840, %7829 ], [ %7642, %7640 ]
  %7851 = phi float [ %7839, %7829 ], [ %7641, %7640 ]
  %7852 = fmul fast float %7851, %6797
  %7853 = fmul fast float %7850, %6797
  %7854 = fmul fast float %7849, %6797
  %7855 = fmul fast float %7848, %7088
  %7856 = call float @dx.op.dot3.f32(i32 55, float %7848, float %7847, float %7846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7857 = call float @dx.op.dot3.f32(i32 55, float %7852, float %7853, float %7854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7858 = select i1 %265, float %7856, float %7848
  %7859 = select i1 %265, float %7856, float %7847
  %7860 = select i1 %265, float 1.000000e+00, float %7846
  %7861 = select i1 %265, float %7857, float %7852
  %7862 = select i1 %265, float 0.000000e+00, float %7853
  %7863 = select i1 %265, float 0.000000e+00, float %7854
  %7864 = fmul fast float %7858, %7082
  %7865 = fmul fast float %7859, %7083
  %7866 = fmul fast float %7860, %7084
  %7867 = fadd fast float %7864, %7861
  %7868 = fadd fast float %7865, %7862
  %7869 = fadd fast float %7863, %7866
  %7870 = fmul fast float %7858, %7085
  %7871 = fmul fast float %7859, %7086
  %7872 = fmul fast float %7860, %7087
  %7873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7874 = extractvalue %dx.types.CBufRet.i32 %7873, 0
  %7875 = icmp eq i32 %7874, 0
  br i1 %7875, label %8243, label %7876, !dx.controlflow.hints !168

; <label>:7876                                    ; preds = %7845
  %7877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7878 = extractvalue %dx.types.CBufRet.f32 %7877, 2
  %7879 = extractvalue %dx.types.CBufRet.f32 %7877, 3
  %7880 = fmul fast float %7878, %110
  %7881 = fmul fast float %7879, %111
  %7882 = fmul fast float %7880, 2.000000e+00
  %7883 = fmul fast float %7881, 2.000000e+00
  %7884 = fsub fast float 1.000000e+00, %7882
  %7885 = fsub fast float 1.000000e+00, %7883
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 0
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7889 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7890 = fmul fast float %7884, %7887
  %7891 = fmul fast float %7884, %7888
  %7892 = fmul fast float %7884, %7889
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7897 = fmul fast float %7885, %7894
  %7898 = fmul fast float %7885, %7895
  %7899 = fmul fast float %7885, %7896
  %7900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.f32 %7900, 0
  %7902 = extractvalue %dx.types.CBufRet.f32 %7900, 1
  %7903 = extractvalue %dx.types.CBufRet.f32 %7900, 2
  %7904 = fadd fast float %7897, %7901
  %7905 = fadd fast float %7904, %7890
  %7906 = fadd fast float %7898, %7902
  %7907 = fadd fast float %7906, %7891
  %7908 = fadd fast float %7899, %7903
  %7909 = fadd fast float %7908, %7892
  %7910 = fmul fast float %7905, %7081
  %7911 = fmul fast float %7907, %7081
  %7912 = fmul fast float %7909, %7081
  %7913 = fmul fast float %7910, %7910
  %7914 = fmul fast float %7911, %7911
  %7915 = fadd fast float %7913, %7914
  %7916 = fmul fast float %7912, %7912
  %7917 = fadd fast float %7915, %7916
  %7918 = call float @dx.op.unary.f32(i32 24, float %7917)  ; Sqrt(value)
  %7919 = extractvalue %dx.types.CBufRet.f32 %6808, 0
  %7920 = fsub fast float %7918, %7919
  %7921 = extractvalue %dx.types.CBufRet.f32 %6808, 2
  %7922 = fmul fast float %7920, %7921
  %7923 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7924 = fadd fast float %7923, -5.000000e-01
  %7925 = fmul fast float %7924, 2.000000e+00
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7928 = call float @dx.op.binary.f32(i32 36, float %7927, float %7925)  ; FMin(a,b)
  %7929 = fsub fast float -0.000000e+00, %7927
  %7930 = fcmp fast ogt float %7928, %7929
  br i1 %7930, label %7931, label %8243, !dx.controlflow.hints !169

; <label>:7931                                    ; preds = %7876
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 3
  %7934 = fcmp fast ogt float %7933, 0.000000e+00
  br i1 %7934, label %7935, label %8010, !dx.controlflow.hints !170

; <label>:7935                                    ; preds = %7931
  %7936 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7937 = extractvalue %dx.types.Dimensions %7936, 0
  %7938 = sitofp i32 %7937 to float
  %7939 = extractvalue %dx.types.Dimensions %7936, 1
  %7940 = sitofp i32 %7939 to float
  %7941 = fmul fast float %7880, %7938
  %7942 = fmul fast float %7881, %7940
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 1
  %7945 = fsub fast float -0.000000e+00, %7944
  %7946 = fptoui float %7945 to i32
  %7947 = fptoui float %7941 to i32
  %7948 = fptoui float %7942 to i32
  %7949 = and i32 %7946, 31
  %7950 = lshr i32 %7947, %7949
  %7951 = lshr i32 %7948, %7949
  %7952 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7946, i32 %7950, i32 %7951, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7953 = extractvalue %dx.types.ResRet.f32 %7952, 0
  %7954 = fcmp fast olt float %7953, -1.000000e+00
  %7955 = fcmp fast ogt float %7953, -1.000000e+00
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 1
  %7958 = select i1 %7955, float %7957, float 1.000000e+00
  %7959 = fadd fast float %7953, 1.000000e+00
  %7960 = fmul fast float %7958, %7959
  %7961 = call float @dx.op.unary.f32(i32 6, float %7960)  ; FAbs(value)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7956, 3
  %7963 = fcmp fast oge float %7961, %7962
  %7964 = select i1 %7963, float 0x4197782600000000, float %7961
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 0
  %7967 = extractvalue %dx.types.CBufRet.f32 %7965, 1
  %7968 = extractvalue %dx.types.CBufRet.f32 %7965, 2
  %7969 = select i1 %7954, float %7966, float %7887
  %7970 = select i1 %7954, float %7967, float %7888
  %7971 = select i1 %7954, float %7968, float %7889
  %7972 = fmul fast float %7969, %7884
  %7973 = fmul fast float %7970, %7884
  %7974 = fmul fast float %7971, %7884
  %7975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7976 = extractvalue %dx.types.CBufRet.f32 %7975, 0
  %7977 = extractvalue %dx.types.CBufRet.f32 %7975, 1
  %7978 = extractvalue %dx.types.CBufRet.f32 %7975, 2
  %7979 = select i1 %7954, float %7976, float %7894
  %7980 = select i1 %7954, float %7977, float %7895
  %7981 = select i1 %7954, float %7978, float %7896
  %7982 = fmul fast float %7979, %7885
  %7983 = fmul fast float %7980, %7885
  %7984 = fmul fast float %7981, %7885
  %7985 = fadd fast float %7982, %7972
  %7986 = fadd fast float %7983, %7973
  %7987 = fadd fast float %7984, %7974
  %7988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7989 = extractvalue %dx.types.CBufRet.f32 %7988, 0
  %7990 = extractvalue %dx.types.CBufRet.f32 %7988, 1
  %7991 = extractvalue %dx.types.CBufRet.f32 %7988, 2
  %7992 = select i1 %7954, float %7989, float %7901
  %7993 = select i1 %7954, float %7990, float %7902
  %7994 = select i1 %7954, float %7991, float %7903
  %7995 = fadd fast float %7985, %7992
  %7996 = fadd fast float %7986, %7993
  %7997 = fadd fast float %7987, %7994
  %7998 = fmul fast float %7995, %7964
  %7999 = fmul fast float %7996, %7964
  %8000 = fmul fast float %7997, %7964
  %8001 = fmul fast float %7998, %7998
  %8002 = fmul fast float %7999, %7999
  %8003 = fadd fast float %8001, %8002
  %8004 = fmul fast float %8000, %8000
  %8005 = fadd fast float %8003, %8004
  %8006 = call float @dx.op.unary.f32(i32 24, float %8005)  ; Sqrt(value)
  %8007 = fsub fast float %8006, %7919
  %8008 = fmul fast float %8007, %7921
  %8009 = call float @dx.op.unary.f32(i32 7, float %8008)  ; Saturate(value)
  br label %8010

; <label>:8010                                    ; preds = %7935, %7931
  %8011 = phi float [ %8009, %7935 ], [ 1.000000e+00, %7931 ]
  %8012 = fmul fast float %7928, 5.000000e-01
  %8013 = fadd fast float %8012, 5.000000e-01
  %8014 = call float @dx.op.unary.f32(i32 22, float %8013)  ; Frc(value)
  %8015 = call float @dx.op.unary.f32(i32 27, float %8014)  ; Round_ni(value)
  %8016 = call float @dx.op.unary.f32(i32 22, float %8014)  ; Frc(value)
  %8017 = fmul fast float %8016, 2.000000e+00
  %8018 = fadd fast float %8017, -1.000000e+00
  %8019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %7880, float %7881, float %8015, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8020 = extractvalue %dx.types.ResRet.f32 %8019, 0
  %8021 = extractvalue %dx.types.ResRet.f32 %8019, 1
  %8022 = extractvalue %dx.types.ResRet.f32 %8019, 2
  %8023 = extractvalue %dx.types.ResRet.f32 %8019, 3
  %8024 = fadd fast float %8020, -5.000000e-01
  %8025 = fadd fast float %8022, -5.000000e-01
  %8026 = fmul fast float %8024, 0xBFD5555560000000
  %8027 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8025, float %8026)  ; FMad(a,b,c)
  %8028 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8021, float 0.000000e+00)  ; FMad(a,b,c)
  %8029 = fadd fast float %8028, %8023
  %8030 = fmul fast float %8024, -7.500000e-01
  %8031 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8025, float %8030)  ; FMad(a,b,c)
  %8032 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8021, float 0.000000e+00)  ; FMad(a,b,c)
  %8033 = fadd fast float %8032, %8023
  %8034 = call float @dx.op.binary.f32(i32 35, float %8027, float -1.000000e+00)  ; FMax(a,b)
  %8035 = call float @dx.op.binary.f32(i32 35, float %8029, float -1.000000e+00)  ; FMax(a,b)
  %8036 = call float @dx.op.binary.f32(i32 35, float %8031, float -1.000000e+00)  ; FMax(a,b)
  %8037 = call float @dx.op.binary.f32(i32 35, float %8033, float -1.000000e+00)  ; FMax(a,b)
  %8038 = call float @dx.op.binary.f32(i32 36, float %8034, float 1.000000e+00)  ; FMin(a,b)
  %8039 = call float @dx.op.binary.f32(i32 36, float %8035, float 1.000000e+00)  ; FMin(a,b)
  %8040 = call float @dx.op.binary.f32(i32 36, float %8036, float 1.000000e+00)  ; FMin(a,b)
  %8041 = call float @dx.op.binary.f32(i32 36, float %8037, float 1.000000e+00)  ; FMin(a,b)
  %8042 = fcmp fast olt float %8038, 0x3FEFFF8020000000
  br i1 %8042, label %8043, label %8158, !dx.controlflow.hints !171

; <label>:8043                                    ; preds = %8010
  %8044 = extractvalue %dx.types.CBufRet.f32 %7926, 3
  %8045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8046 = extractvalue %dx.types.CBufRet.f32 %8045, 0
  %8047 = extractvalue %dx.types.CBufRet.f32 %8045, 1
  %8048 = extractvalue %dx.types.CBufRet.f32 %8045, 2
  %8049 = extractvalue %dx.types.CBufRet.f32 %8045, 3
  %8050 = fsub fast float %8046, %8038
  %8051 = fsub fast float %8047, %8039
  %8052 = fsub fast float %8048, %8040
  %8053 = fsub fast float %8049, %8041
  %8054 = fmul fast float %8050, %8044
  %8055 = fmul fast float %8051, %8044
  %8056 = fmul fast float %8052, %8044
  %8057 = fmul fast float %8053, %8044
  %8058 = fadd fast float %8054, %8038
  %8059 = fadd fast float %8055, %8039
  %8060 = fsub fast float -0.000000e+00, %8059
  %8061 = fadd fast float %8056, %8040
  %8062 = fadd fast float %8057, %8041
  %8063 = fmul fast float %8058, %8058
  %8064 = fsub fast float %8059, %8063
  %8065 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8064)  ; FMax(a,b)
  %8066 = fdiv fast float 1.000000e+00, %8065
  %8067 = fmul fast float %8059, %8058
  %8068 = fsub fast float %8061, %8067
  %8069 = fsub fast float %8018, %8058
  %8070 = fmul fast float %8018, %8018
  %8071 = fsub fast float %8070, %8059
  %8072 = fmul fast float %8069, %8066
  %8073 = fmul fast float %8072, %8068
  %8074 = fsub fast float %8071, %8073
  %8075 = fmul fast float %8059, %8059
  %8076 = fsub fast float %8062, %8075
  %8077 = fmul fast float %8068, %8068
  %8078 = fmul fast float %8077, %8066
  %8079 = fsub fast float %8076, %8078
  %8080 = fdiv fast float %8074, %8079
  %8081 = fmul fast float %8068, %8080
  %8082 = fsub fast float %8069, %8081
  %8083 = fmul fast float %8082, %8066
  %8084 = fmul fast float %8083, %8058
  %8085 = fsub fast float 1.000000e+00, %8084
  %8086 = fmul fast float %8059, %8080
  %8087 = fsub fast float %8085, %8086
  %8088 = fmul fast float %8083, %8083
  %8089 = fmul fast float %8080, 4.000000e+00
  %8090 = fmul fast float %8089, %8087
  %8091 = fsub fast float %8088, %8090
  %8092 = call float @dx.op.unary.f32(i32 24, float %8091)  ; Sqrt(value)
  %8093 = fcmp fast oge float %8083, 0.000000e+00
  %8094 = fsub fast float -0.000000e+00, %8092
  %8095 = select i1 %8093, float %8094, float %8092
  %8096 = fsub fast float %8095, %8083
  %8097 = fdiv fast float %8096, %8080
  %8098 = fdiv fast float %8087, %8096
  %8099 = fmul fast float %8097, 5.000000e-01
  %8100 = fmul fast float %8098, 2.000000e+00
  %8101 = select i1 %8093, float %8099, float %8100
  %8102 = select i1 %8093, float %8100, float %8099
  %8103 = call float @dx.op.binary.f32(i32 35, float %8101, float %8102)  ; FMax(a,b)
  %8104 = call float @dx.op.binary.f32(i32 36, float %8101, float %8102)  ; FMin(a,b)
  %8105 = fcmp fast ogt float %8018, %8104
  br i1 %8105, label %8106, label %8116

; <label>:8106                                    ; preds = %8043
  %8107 = fsub fast float %8018, %8104
  %8108 = fsub fast float %8103, %8104
  %8109 = fmul fast float %8107, %8108
  %8110 = fmul fast float %8103, %8018
  %8111 = fadd fast float %8103, %8018
  %8112 = fmul fast float %8111, %8058
  %8113 = fadd fast float %8110, %8059
  %8114 = fsub fast float %8113, %8112
  %8115 = fdiv fast float %8114, %8109
  br label %8116

; <label>:8116                                    ; preds = %8106, %8043
  %8117 = phi float [ %8115, %8106 ], [ 0.000000e+00, %8043 ]
  %8118 = fcmp fast ogt float %8018, %8103
  %8119 = fsub fast float %8018, %8103
  br i1 %8118, label %8120, label %8130

; <label>:8120                                    ; preds = %8116
  %8121 = fsub fast float %8103, %8104
  %8122 = fmul fast float %8121, %8119
  %8123 = fmul fast float %8104, %8018
  %8124 = fadd fast float %8104, %8018
  %8125 = fmul fast float %8124, %8058
  %8126 = fsub fast float %8060, %8123
  %8127 = fadd fast float %8126, %8125
  %8128 = fdiv fast float %8127, %8122
  %8129 = fadd fast float %8128, %8117
  br label %8130

; <label>:8130                                    ; preds = %8120, %8116
  %8131 = phi float [ %8129, %8120 ], [ %8117, %8116 ]
  %8132 = fsub fast float %8018, %8104
  %8133 = fmul fast float %8132, %8119
  %8134 = fmul fast float %8104, %8103
  %8135 = fadd fast float %8104, %8103
  %8136 = fmul fast float %8135, %8058
  %8137 = fadd fast float %8134, %8059
  %8138 = fsub fast float %8137, %8136
  %8139 = fdiv fast float %8138, %8133
  %8140 = call float @dx.op.unary.f32(i32 7, float %8131)  ; Saturate(value)
  %8141 = fcmp fast oeq float %6809, 0.000000e+00
  %8142 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %8143 = fcmp fast oeq float %8142, 0.000000e+00
  %8144 = or i1 %8141, %8143
  %8145 = fmul fast float %8142, 2.000000e+00
  %8146 = fadd fast float %7927, %7928
  %8147 = fdiv fast float %8146, %8145
  %8148 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  %8149 = fmul fast float %8148, 2.000000e+00
  %8150 = fsub fast float 3.000000e+00, %8149
  %8151 = fmul fast float %8148, %8148
  %8152 = fmul fast float %8151, %8150
  %8153 = select i1 %8144, float 1.000000e+00, float %8152
  %8154 = fmul fast float %8139, %6809
  %8155 = fadd fast float %8140, %8154
  %8156 = call float @dx.op.unary.f32(i32 7, float %8155)  ; Saturate(value)
  %8157 = fmul fast float %8153, %8156
  br label %8158

; <label>:8158                                    ; preds = %8130, %8010
  %8159 = phi float [ %8157, %8130 ], [ 0.000000e+00, %8010 ]
  %8160 = fsub fast float 1.000000e+00, %8159
  %8161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %7880, float %7881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8162 = extractvalue %dx.types.ResRet.f32 %8161, 0
  %8163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8164 = extractvalue %dx.types.CBufRet.i32 %8163, 2
  %8165 = icmp eq i32 %8164, 0
  br i1 %8165, label %8171, label %8166

; <label>:8166                                    ; preds = %8158
  %8167 = call float @dx.op.unary.f32(i32 7, float %8159)  ; Saturate(value)
  %8168 = fadd fast float %8162, -1.000000e+00
  %8169 = fmul fast float %8167, %8168
  %8170 = fadd fast float %8169, 1.000000e+00
  br label %8171

; <label>:8171                                    ; preds = %8166, %8158
  %8172 = phi float [ %8170, %8166 ], [ %8160, %8158 ]
  br i1 %7934, label %8173, label %8191

; <label>:8173                                    ; preds = %8171
  %8174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8174, 1
  %8176 = fsub fast float %8011, %8175
  %8177 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8178 = fsub fast float %8011, %7933
  %8179 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8180 = fsub fast float %8177, %8179
  %8181 = fsub fast float %8013, %8179
  %8182 = fdiv fast float %8181, %8180
  %8183 = call float @dx.op.unary.f32(i32 7, float %8182)  ; Saturate(value)
  %8184 = fmul fast float %8183, 2.000000e+00
  %8185 = fsub fast float 3.000000e+00, %8184
  %8186 = fsub fast float %8162, %8172
  %8187 = fmul fast float %8183, %8183
  %8188 = fmul fast float %8187, %8186
  %8189 = fmul fast float %8188, %8185
  %8190 = fadd fast float %8189, %8172
  br label %8191

; <label>:8191                                    ; preds = %8173, %8171
  %8192 = phi float [ %8190, %8173 ], [ %8172, %8171 ]
  %8193 = call float @dx.op.binary.f32(i32 35, float %8162, float %8192)  ; FMax(a,b)
  %8194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.i32 %8194, 2
  %8196 = and i32 %8195, 1
  %8197 = icmp eq i32 %8196, 0
  %8198 = fcmp fast une float %8193, 1.000000e+00
  %8199 = and i1 %8198, %8197
  br i1 %8199, label %8200, label %8219

; <label>:8200                                    ; preds = %8191
  %8201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %7880, float %7881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8202 = extractvalue %dx.types.ResRet.f32 %8201, 0
  %8203 = extractvalue %dx.types.ResRet.f32 %8201, 1
  %8204 = extractvalue %dx.types.ResRet.f32 %8201, 2
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8207 = fmul fast float %8206, %8202
  %8208 = fmul fast float %8206, %8203
  %8209 = fmul fast float %8206, %8204
  %8210 = fcmp fast ogt float %8162, 0x3FEFFF2E40000000
  %8211 = fsub fast float 1.000000e+00, %8193
  %8212 = fsub fast float 1.000000e+00, %8162
  %8213 = fdiv fast float %8211, %8212
  %8214 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8215 = select i1 %8210, float 0.000000e+00, float %8214
  %8216 = fmul fast float %8207, %8215
  %8217 = fmul fast float %8208, %8215
  %8218 = fmul fast float %8209, %8215
  br label %8219

; <label>:8219                                    ; preds = %8200, %8191
  %8220 = phi float [ 0.000000e+00, %8191 ], [ %8216, %8200 ]
  %8221 = phi float [ 0.000000e+00, %8191 ], [ %8217, %8200 ]
  %8222 = phi float [ 0.000000e+00, %8191 ], [ %8218, %8200 ]
  %8223 = fmul fast float %8220, %6797
  %8224 = fmul fast float %8221, %6797
  %8225 = fmul fast float %8222, %6797
  %8226 = fmul fast float %8193, %7855
  %8227 = call float @dx.op.dot3.f32(i32 55, float %8193, float %8193, float %8193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8228 = call float @dx.op.dot3.f32(i32 55, float %8223, float %8224, float %8225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8229 = select i1 %265, float %8227, float %8193
  %8230 = select i1 %265, float 1.000000e+00, float %8193
  %8231 = select i1 %265, float %8228, float %8223
  %8232 = select i1 %265, float 0.000000e+00, float %8224
  %8233 = select i1 %265, float 0.000000e+00, float %8225
  %8234 = fmul fast float %8229, %7867
  %8235 = fmul fast float %8229, %7868
  %8236 = fmul fast float %8230, %7869
  %8237 = fadd fast float %8234, %8231
  %8238 = fadd fast float %8235, %8232
  %8239 = fadd fast float %8233, %8236
  %8240 = fmul fast float %8229, %7870
  %8241 = fmul fast float %8229, %7871
  %8242 = fmul fast float %8230, %7872
  br label %8243

; <label>:8243                                    ; preds = %8219, %7876, %7845, %7077
  %8244 = phi float [ %7082, %7077 ], [ %7867, %7845 ], [ %8237, %8219 ], [ %7867, %7876 ]
  %8245 = phi float [ %7083, %7077 ], [ %7868, %7845 ], [ %8238, %8219 ], [ %7868, %7876 ]
  %8246 = phi float [ %7084, %7077 ], [ %7869, %7845 ], [ %8239, %8219 ], [ %7869, %7876 ]
  %8247 = phi float [ %7085, %7077 ], [ %7870, %7845 ], [ %8240, %8219 ], [ %7870, %7876 ]
  %8248 = phi float [ %7086, %7077 ], [ %7871, %7845 ], [ %8241, %8219 ], [ %7871, %7876 ]
  %8249 = phi float [ %7087, %7077 ], [ %7872, %7845 ], [ %8242, %8219 ], [ %7872, %7876 ]
  %8250 = phi float [ %7088, %7077 ], [ %7855, %7845 ], [ %8226, %8219 ], [ %7855, %7876 ]
  %8251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8251, 2
  %8253 = extractvalue %dx.types.CBufRet.f32 %8251, 3
  %8254 = fmul fast float %8252, %110
  %8255 = fmul fast float %8253, %111
  %8256 = call float @dx.op.unary.f32(i32 7, float %8254)  ; Saturate(value)
  %8257 = call float @dx.op.unary.f32(i32 7, float %8255)  ; Saturate(value)
  %8258 = select i1 %6819, i32 2, i32 0
  %8259 = or i32 %8258, 1
  %8260 = uitofp i32 %8259 to float
  %8261 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8256, float %8257, float %8260, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8262 = extractvalue %dx.types.ResRet.f32 %8261, 0
  %8263 = extractvalue %dx.types.ResRet.f32 %8261, 1
  %8264 = extractvalue %dx.types.ResRet.f32 %8261, 2
  %8265 = extractvalue %dx.types.ResRet.f32 %8261, 3
  %8266 = add nuw nsw i32 %8258, 2
  %8267 = uitofp i32 %8266 to float
  %8268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8256, float %8257, float %8267, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8269 = extractvalue %dx.types.ResRet.f32 %8268, 0
  %8270 = extractvalue %dx.types.ResRet.f32 %8268, 1
  %8271 = extractvalue %dx.types.ResRet.f32 %8268, 2
  %8272 = extractvalue %dx.types.ResRet.f32 %8268, 3
  %8273 = call float @dx.op.binary.f32(i32 35, float %8263, float %8264)  ; FMax(a,b)
  %8274 = call float @dx.op.binary.f32(i32 35, float %8262, float %8273)  ; FMax(a,b)
  %8275 = call float @dx.op.binary.f32(i32 35, float %8274, float %8265)  ; FMax(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8270, float %8271)  ; FMin(a,b)
  %8277 = call float @dx.op.binary.f32(i32 36, float %8269, float %8276)  ; FMin(a,b)
  %8278 = call float @dx.op.binary.f32(i32 36, float %8277, float %8272)  ; FMin(a,b)
  %8279 = fmul fast float %8275, 2.550000e+02
  %8280 = fadd fast float %8279, 0x3F70101020000000
  %8281 = fptoui float %8280 to i32
  %8282 = fmul fast float %8278, 2.550000e+02
  %8283 = fadd fast float %8282, 0x3F70101020000000
  %8284 = fptoui float %8283 to i32
  %8285 = icmp ult i32 %8281, %8284
  br i1 %8285, label %8286, label %8455

; <label>:8286                                    ; preds = %8243
  %8287 = fcmp fast ogt float %100, 9.843750e-01
  %8288 = fadd fast float %7081, -4.000000e+00
  %8289 = select i1 %8287, float -4.000000e+00, float %8288
  %8290 = call float @dx.op.binary.f32(i32 35, float %8289, float 0.000000e+00)  ; FMax(a,b)
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8293 = fadd fast float %8292, %8290
  %8294 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8295 = fmul fast float %8293, %8294
  %8296 = call float @dx.op.unary.f32(i32 23, float %8295)  ; Log(value)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8291, 3
  %8298 = fmul fast float %8297, %8296
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8301 = fmul fast float %8298, %8300
  %8302 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8303 = uitofp i32 %8281 to float
  %8304 = uitofp i32 %8284 to float
  %8305 = fadd fast float %8303, 5.000000e-01
  %8306 = fadd fast float %8304, 5.000000e-01
  %8307 = fmul fast float %8300, %8305
  %8308 = fmul fast float %8300, %8306
  %8309 = fadd fast float %8307, 0x3F0FFB4800000000
  %8310 = fadd fast float %8308, 0xBF0FFB4800000000
  %8311 = call float @dx.op.binary.f32(i32 35, float %8302, float %8309)  ; FMax(a,b)
  %8312 = call float @dx.op.binary.f32(i32 36, float %8311, float %8310)  ; FMin(a,b)
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8315 = extractvalue %dx.types.CBufRet.f32 %8313, 2
  %8316 = extractvalue %dx.types.CBufRet.f32 %8313, 0
  %8317 = select i1 %6819, float %8316, float 0.000000e+00
  %8318 = fmul fast float %8314, %8312
  %8319 = fadd fast float %8317, %8318
  %8320 = fadd fast float %8317, %8315
  %8321 = fsub fast float %8314, %8315
  %8322 = fadd fast float %8321, %8317
  %8323 = call float @dx.op.binary.f32(i32 35, float %8319, float %8320)  ; FMax(a,b)
  %8324 = call float @dx.op.binary.f32(i32 36, float %8323, float %8322)  ; FMin(a,b)
  %8325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %8256, float %8257, float %8324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8326 = extractvalue %dx.types.ResRet.f32 %8325, 0
  %8327 = extractvalue %dx.types.ResRet.f32 %8325, 1
  %8328 = extractvalue %dx.types.ResRet.f32 %8325, 2
  %8329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8330 = extractvalue %dx.types.CBufRet.i32 %8329, 0
  %8331 = extractvalue %dx.types.CBufRet.i32 %8329, 1
  %8332 = uitofp i32 %8330 to float
  %8333 = uitofp i32 %8331 to float
  %8334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8335 = extractvalue %dx.types.CBufRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.CBufRet.f32 %8334, 1
  %8337 = fmul fast float %8332, %8256
  %8338 = fmul fast float %8333, %8257
  %8339 = fadd fast float %8337, -5.000000e-01
  %8340 = fadd fast float %8338, -5.000000e-01
  %8341 = call float @dx.op.unary.f32(i32 22, float %8339)  ; Frc(value)
  %8342 = call float @dx.op.unary.f32(i32 22, float %8340)  ; Frc(value)
  %8343 = fmul fast float %8341, %8341
  %8344 = fmul fast float %8343, %8341
  %8345 = fsub fast float 3.000000e+00, %8341
  %8346 = fmul fast float %8343, %8345
  %8347 = fmul fast float %8341, 3.000000e+00
  %8348 = fmul fast float %8344, 3.000000e+00
  %8349 = fmul fast float %8343, 6.000000e+00
  %8350 = fsub fast float %8348, %8349
  %8351 = fadd fast float %8350, 4.000000e+00
  %8352 = fmul fast float %8351, 0x3FC5555560000000
  %8353 = fmul fast float %8344, -3.000000e+00
  %8354 = fadd fast float %8343, %8341
  %8355 = fmul fast float %8354, 3.000000e+00
  %8356 = fadd fast float %8353, 1.000000e+00
  %8357 = fadd fast float %8356, %8355
  %8358 = fmul fast float %8344, 0x3FC5555560000000
  %8359 = fmul fast float %8342, %8342
  %8360 = fmul fast float %8359, %8342
  %8361 = fsub fast float 3.000000e+00, %8342
  %8362 = fmul fast float %8359, %8361
  %8363 = fmul fast float %8342, 3.000000e+00
  %8364 = fmul fast float %8360, 3.000000e+00
  %8365 = fmul fast float %8359, 6.000000e+00
  %8366 = fsub fast float %8364, %8365
  %8367 = fadd fast float %8366, 4.000000e+00
  %8368 = fmul fast float %8367, 0x3FC5555560000000
  %8369 = fmul fast float %8360, -3.000000e+00
  %8370 = fadd fast float %8359, %8342
  %8371 = fmul fast float %8370, 3.000000e+00
  %8372 = fadd fast float %8369, 1.000000e+00
  %8373 = fadd fast float %8372, %8371
  %8374 = fmul fast float %8360, 0x3FC5555560000000
  %8375 = fadd fast float %8341, 1.000000e+00
  %8376 = fsub fast float 1.000000e+00, %8347
  %8377 = fadd fast float %8376, %8346
  %8378 = fadd fast float %8377, %8351
  %8379 = fmul fast float %8378, 0x3FC5555560000000
  %8380 = fdiv fast float %8352, %8379
  %8381 = fsub fast float %8375, %8380
  %8382 = fsub fast float 1.000000e+00, %8341
  %8383 = fadd fast float %8357, %8344
  %8384 = fmul fast float %8383, 0x3FC5555560000000
  %8385 = fdiv fast float %8358, %8384
  %8386 = fadd fast float %8382, %8385
  %8387 = fadd fast float %8342, 1.000000e+00
  %8388 = fsub fast float 1.000000e+00, %8363
  %8389 = fadd fast float %8388, %8362
  %8390 = fadd fast float %8389, %8367
  %8391 = fmul fast float %8390, 0x3FC5555560000000
  %8392 = fdiv fast float %8368, %8391
  %8393 = fsub fast float %8387, %8392
  %8394 = fsub fast float 1.000000e+00, %8342
  %8395 = fadd fast float %8373, %8360
  %8396 = fmul fast float %8395, 0x3FC5555560000000
  %8397 = fdiv fast float %8374, %8396
  %8398 = fadd fast float %8397, %8394
  %8399 = fmul fast float %8381, %8335
  %8400 = fsub fast float %8256, %8399
  %8401 = fmul fast float %8386, %8335
  %8402 = fadd fast float %8401, %8256
  %8403 = fmul fast float %8398, %8336
  %8404 = fadd fast float %8403, %8257
  %8405 = fmul fast float %8393, %8336
  %8406 = fsub fast float %8257, %8405
  %8407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8400, float %8406, float %8324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8402, float %8406, float %8324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8412 = extractvalue %dx.types.ResRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.ResRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.ResRet.f32 %8411, 2
  %8415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8400, float %8404, float %8324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8416 = extractvalue %dx.types.ResRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.ResRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.ResRet.f32 %8415, 2
  %8419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8402, float %8404, float %8324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8420 = extractvalue %dx.types.ResRet.f32 %8419, 0
  %8421 = extractvalue %dx.types.ResRet.f32 %8419, 1
  %8422 = extractvalue %dx.types.ResRet.f32 %8419, 2
  %8423 = fsub fast float %8416, %8408
  %8424 = fsub fast float %8417, %8409
  %8425 = fsub fast float %8418, %8410
  %8426 = fmul fast float %8423, %8396
  %8427 = fmul fast float %8424, %8396
  %8428 = fmul fast float %8425, %8396
  %8429 = fadd fast float %8426, %8408
  %8430 = fadd fast float %8427, %8409
  %8431 = fadd fast float %8428, %8410
  %8432 = fsub fast float %8420, %8412
  %8433 = fsub fast float %8421, %8413
  %8434 = fsub fast float %8422, %8414
  %8435 = fmul fast float %8432, %8396
  %8436 = fmul fast float %8433, %8396
  %8437 = fmul fast float %8434, %8396
  %8438 = fsub fast float %8412, %8429
  %8439 = fadd fast float %8438, %8435
  %8440 = fsub fast float %8413, %8430
  %8441 = fadd fast float %8440, %8436
  %8442 = fsub fast float %8414, %8431
  %8443 = fadd fast float %8442, %8437
  %8444 = fmul fast float %8439, %8384
  %8445 = fmul fast float %8441, %8384
  %8446 = fmul fast float %8443, %8384
  %8447 = fadd fast float %8444, %8429
  %8448 = fadd fast float %8445, %8430
  %8449 = fadd fast float %8446, %8431
  %8450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8451 = extractvalue %dx.types.CBufRet.f32 %8450, 1
  %8452 = fmul fast float %8447, %8451
  %8453 = fmul fast float %8448, %8451
  %8454 = fmul fast float %8449, %8451
  br label %8455

; <label>:8455                                    ; preds = %8286, %8243
  %8456 = phi float [ %8326, %8286 ], [ 1.000000e+00, %8243 ]
  %8457 = phi float [ %8327, %8286 ], [ 1.000000e+00, %8243 ]
  %8458 = phi float [ %8328, %8286 ], [ 1.000000e+00, %8243 ]
  %8459 = phi float [ %8452, %8286 ], [ 0.000000e+00, %8243 ]
  %8460 = phi float [ %8453, %8286 ], [ 0.000000e+00, %8243 ]
  %8461 = phi float [ %8454, %8286 ], [ 0.000000e+00, %8243 ]
  %8462 = fmul fast float %8459, %6797
  %8463 = fmul fast float %8460, %6797
  %8464 = fmul fast float %8461, %6797
  %8465 = fmul fast float %8456, %8250
  %8466 = call float @dx.op.dot3.f32(i32 55, float %8456, float %8457, float %8458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8467 = call float @dx.op.dot3.f32(i32 55, float %8462, float %8463, float %8464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8468 = select i1 %265, float %8466, float %8456
  %8469 = select i1 %265, float %8466, float %8457
  %8470 = select i1 %265, float 1.000000e+00, float %8458
  %8471 = select i1 %265, float %8467, float %8462
  %8472 = select i1 %265, float 0.000000e+00, float %8463
  %8473 = select i1 %265, float 0.000000e+00, float %8464
  %8474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.i32 %8474, 3
  %8476 = and i32 %8475, 3
  %8477 = icmp ne i32 %8476, 0
  %8478 = and i32 %8475, 4
  %8479 = icmp ne i32 %8478, 0
  %8480 = and i1 %8477, %8479
  %8481 = and i1 %265, %8480
  br i1 %8481, label %8482, label %8488

; <label>:8482                                    ; preds = %8455
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8485 = fadd fast float %8465, -1.000000e+00
  %8486 = fmul fast float %8484, %8485
  %8487 = fadd fast float %8486, 1.000000e+00
  br label %8488

; <label>:8488                                    ; preds = %8482, %8455
  %8489 = phi float [ %8487, %8482 ], [ %8465, %8455 ]
  %8490 = fadd fast float %8247, %8244
  %8491 = fmul fast float %8468, %8490
  %8492 = fadd fast float %8491, %8471
  %8493 = fadd fast float %8248, %8245
  %8494 = fmul fast float %8469, %8493
  %8495 = fadd fast float %8494, %8472
  %8496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.f32 %8496, 0
  br i1 %265, label %8498, label %8522

; <label>:8498                                    ; preds = %8488
  %8499 = fadd fast float %8492, %8495
  %8500 = fmul fast float %8497, %8499
  %8501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8501, 3
  %8503 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %8504 = fsub fast float %6806, %6800
  %8505 = fadd fast float %8504, %6807
  %8506 = fsub fast float %8505, %8503
  %8507 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %8508 = fmul fast float %8506, %8507
  %8509 = call float @dx.op.unary.f32(i32 7, float %8508)  ; Saturate(value)
  %8510 = fsub fast float %8509, %8502
  %8511 = fmul fast float %8510, %8489
  %8512 = fadd fast float %8511, %8502
  %8513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.f32 %8513, 0
  %8515 = fsub fast float %8512, %8514
  %8516 = fmul fast float %8515, 1.000000e+01
  %8517 = call float @dx.op.unary.f32(i32 7, float %8516)  ; Saturate(value)
  %8518 = fsub fast float %1256, %6797
  %8519 = fmul fast float %8517, %8518
  %8520 = fadd fast float %8519, %6797
  %8521 = fmul fast float %8520, %8512
  br label %8546

; <label>:8522                                    ; preds = %8488
  %8523 = fadd fast float %8249, %8246
  %8524 = fmul fast float %8470, %8523
  %8525 = fadd fast float %8524, %8473
  %8526 = fmul fast float %8497, %8492
  %8527 = fmul fast float %8497, %8495
  %8528 = fmul fast float %8497, %8525
  %8529 = call float @dx.op.binary.f32(i32 35, float %8527, float %8528)  ; FMax(a,b)
  %8530 = call float @dx.op.binary.f32(i32 35, float %8526, float %8529)  ; FMax(a,b)
  %8531 = call float @dx.op.binary.f32(i32 35, float %8530, float %6797)  ; FMax(a,b)
  %8532 = fcmp fast ugt float %8531, 0x3F10000000000000
  br i1 %8532, label %8534, label %8533

; <label>:8533                                    ; preds = %8522
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8534

; <label>:8534                                    ; preds = %8533, %8522
  %8535 = add i32 %53, 356
  %8536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %8535, i32 undef)  ; BufferLoad(srv,index,wot)
  %8537 = extractvalue %dx.types.ResRet.i32 %8536, 0
  %8538 = and i32 %8537, 32
  %8539 = icmp eq i32 %8538, 0
  br i1 %8539, label %8546, label %8540

; <label>:8540                                    ; preds = %8534
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 0
  %8543 = fmul fast float %8542, 0x3FE99999A0000000
  %8544 = fadd fast float %8542, %8526
  %8545 = fadd fast float %8543, %8528
  br label %8546

; <label>:8546                                    ; preds = %8540, %8534, %8498
  %8547 = phi float [ %8500, %8498 ], [ %8544, %8540 ], [ %8526, %8534 ]
  %8548 = phi float [ %8521, %8498 ], [ %8527, %8540 ], [ %8527, %8534 ]
  %8549 = phi float [ %8520, %8498 ], [ %8545, %8540 ], [ %8528, %8534 ]
  %8550 = phi float [ %8520, %8498 ], [ %6797, %8540 ], [ %6797, %8534 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8551 = call float @dx.op.binary.f32(i32 36, float %8547, float 3.225500e+04)  ; FMin(a,b)
  %8552 = call float @dx.op.binary.f32(i32 36, float %8548, float 3.225500e+04)  ; FMin(a,b)
  %8553 = call float @dx.op.binary.f32(i32 36, float %8549, float 3.225500e+04)  ; FMin(a,b)
  %8554 = call float @dx.op.binary.f32(i32 36, float %8550, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8554)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!64 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!65 = !{void ()* @ps_main, !"ps_main", !66, !4, !92}
!66 = !{!67, !90, null}
!67 = !{!68, !71, !72, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89}
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
!84 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 12, i8 0, !70}
!85 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !69, i8 1, i32 1, i8 2, i32 13, i8 0, !73}
!86 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !69, i8 1, i32 1, i8 4, i32 14, i8 0, !87}
!87 = !{i32 3, i32 1}
!88 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !69, i8 1, i32 1, i8 1, i32 13, i8 2, !87}
!89 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !69, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!90 = !{!91}
!91 = !{i32 0, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
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

