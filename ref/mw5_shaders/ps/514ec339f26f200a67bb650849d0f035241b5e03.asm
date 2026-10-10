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
; shader hash: f8abb69b1e22db9d84ece046336119a6
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
  %3588 = fmul fast float %3573, 0x3FE99999A0000000
  %3589 = fmul fast float %3573, 0x3FF75C2900000000
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.CBufRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.CBufRet.f32 %3591, 2
  %3595 = fadd fast float %3592, %193
  %3596 = fadd fast float %3593, %194
  %3597 = fadd fast float %3594, %195
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3601 = fsub fast float %3595, %3599
  %3602 = fsub fast float %3596, %3600
  %3603 = fmul fast float %3601, %3601
  %3604 = fmul fast float %3602, %3602
  %3605 = fadd fast float %3603, %3604
  %3606 = call float @dx.op.unary.f32(i32 24, float %3605)  ; Sqrt(value)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3598, 2
  %3608 = fcmp fast olt float %3606, %3607
  br i1 %3608, label %3609, label %3676

; <label>:3609                                    ; preds = %3464
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 0
  %3614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3615 = extractvalue %dx.types.CBufRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3617 = extractvalue %dx.types.CBufRet.f32 %3612, 1
  %3618 = extractvalue %dx.types.CBufRet.f32 %3614, 1
  %3619 = extractvalue %dx.types.CBufRet.f32 %3610, 3
  %3620 = extractvalue %dx.types.CBufRet.f32 %3612, 3
  %3621 = extractvalue %dx.types.CBufRet.f32 %3614, 3
  %3622 = fadd fast float %3619, %3595
  %3623 = fadd fast float %3620, %3596
  %3624 = fadd fast float %3621, %3597
  %3625 = fmul fast float %3622, %3611
  %3626 = call float @dx.op.tertiary.f32(i32 46, float %3623, float %3613, float %3625)  ; FMad(a,b,c)
  %3627 = call float @dx.op.tertiary.f32(i32 46, float %3624, float %3615, float %3626)  ; FMad(a,b,c)
  %3628 = fmul fast float %3622, %3616
  %3629 = call float @dx.op.tertiary.f32(i32 46, float %3623, float %3617, float %3628)  ; FMad(a,b,c)
  %3630 = call float @dx.op.tertiary.f32(i32 46, float %3624, float %3618, float %3629)  ; FMad(a,b,c)
  %3631 = fsub fast float %3627, %3619
  %3632 = fsub fast float %3630, %3620
  %3633 = fsub fast float %3631, %3599
  %3634 = fadd fast float %3633, %3607
  %3635 = fsub fast float %3632, %3600
  %3636 = fadd fast float %3635, %3607
  %3637 = extractvalue %dx.types.CBufRet.f32 %3598, 3
  %3638 = fmul fast float %3634, %3637
  %3639 = fmul fast float %3636, %3637
  %3640 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3641 = call float @dx.op.unary.f32(i32 7, float %3639)  ; Saturate(value)
  %3642 = fsub fast float 1.000000e+00, %3640
  %3643 = fsub fast float 1.000000e+00, %3641
  %3644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %3642, float %3643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = fcmp fast ugt float %3645, 0.000000e+00
  br i1 %3646, label %3647, label %3950

; <label>:3647                                    ; preds = %3609
  %3648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3649 = extractvalue %dx.types.CBufRet.f32 %3648, 2
  %3650 = fmul fast float %3649, %3645
  %3651 = extractvalue %dx.types.CBufRet.f32 %3648, 3
  %3652 = fadd fast float %3651, %3650
  %3653 = extractvalue %dx.types.CBufRet.f32 %3614, 2
  %3654 = fadd fast float %3652, %3621
  %3655 = fmul fast float %3627, %3615
  %3656 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3618, float %3655)  ; FMad(a,b,c)
  %3657 = call float @dx.op.tertiary.f32(i32 46, float %3654, float %3653, float %3656)  ; FMad(a,b,c)
  %3658 = fsub fast float %3657, %3621
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 2
  %3661 = fsub fast float %3658, %3660
  %3662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %3642, float %3643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.ResRet.f32 %3662, 1
  %3665 = extractvalue %dx.types.ResRet.f32 %3662, 2
  %3666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %3642, float %3643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = fadd fast float %3667, %3663
  %3671 = fmul fast float %3670, 0x3F847AE140000000
  %3672 = fadd fast float %3668, %3664
  %3673 = fmul fast float %3672, 0x3F847AE140000000
  %3674 = fadd fast float %3669, %3665
  %3675 = fmul fast float %3674, 0x3F847AE140000000
  br label %3950

; <label>:3676                                    ; preds = %3464
  %3677 = and i32 %244, 1
  %3678 = icmp eq i32 %3677, 0
  br i1 %3678, label %3950, label %3679

; <label>:3679                                    ; preds = %3676
  %3680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3681 = extractvalue %dx.types.CBufRet.f32 %3680, 0
  %3682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3683 = extractvalue %dx.types.CBufRet.f32 %3682, 0
  %3684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.CBufRet.f32 %3680, 1
  %3687 = extractvalue %dx.types.CBufRet.f32 %3682, 1
  %3688 = extractvalue %dx.types.CBufRet.f32 %3684, 1
  %3689 = extractvalue %dx.types.CBufRet.f32 %3680, 3
  %3690 = extractvalue %dx.types.CBufRet.f32 %3682, 3
  %3691 = extractvalue %dx.types.CBufRet.f32 %3684, 3
  %3692 = fadd fast float %3689, %3595
  %3693 = fadd fast float %3690, %3596
  %3694 = fadd fast float %3691, %3597
  %3695 = fmul fast float %3692, %3681
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3693, float %3683, float %3695)  ; FMad(a,b,c)
  %3697 = call float @dx.op.tertiary.f32(i32 46, float %3694, float %3685, float %3696)  ; FMad(a,b,c)
  %3698 = fmul fast float %3692, %3686
  %3699 = call float @dx.op.tertiary.f32(i32 46, float %3693, float %3687, float %3698)  ; FMad(a,b,c)
  %3700 = call float @dx.op.tertiary.f32(i32 46, float %3694, float %3688, float %3699)  ; FMad(a,b,c)
  %3701 = fsub fast float %3697, %3689
  %3702 = fsub fast float %3700, %3690
  %3703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3704 = extractvalue %dx.types.CBufRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.CBufRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.CBufRet.f32 %3703, 2
  %3707 = extractvalue %dx.types.CBufRet.f32 %3703, 3
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 3
  %3710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3711 = extractvalue %dx.types.CBufRet.i32 %3710, 0
  %3712 = extractvalue %dx.types.CBufRet.i32 %3710, 1
  %3713 = udiv i32 %3712, %3711
  %3714 = fsub fast float %3701, %3704
  %3715 = fsub fast float %3702, %3705
  %3716 = call float @dx.op.binary.f32(i32 35, float %3714, float 0.000000e+00)  ; FMax(a,b)
  %3717 = call float @dx.op.binary.f32(i32 35, float %3715, float 0.000000e+00)  ; FMax(a,b)
  %3718 = call float @dx.op.binary.f32(i32 36, float %3716, float %3706)  ; FMin(a,b)
  %3719 = call float @dx.op.binary.f32(i32 36, float %3717, float %3707)  ; FMin(a,b)
  %3720 = add i32 %3711, -1
  %3721 = add i32 %3713, -1
  %3722 = fmul fast float %3718, %3709
  %3723 = fmul fast float %3719, %3709
  %3724 = fptoui float %3722 to i32
  %3725 = fptoui float %3723 to i32
  %3726 = call i32 @dx.op.binary.i32(i32 40, i32 %3724, i32 %3720)  ; UMin(a,b)
  %3727 = call i32 @dx.op.binary.i32(i32 40, i32 %3725, i32 %3721)  ; UMin(a,b)
  %3728 = mul i32 %3727, %3711
  %3729 = add i32 %3728, %3726
  %3730 = shl i32 %3729, 2
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = icmp eq i32 %3732, -1
  br i1 %3733, label %3950, label %3734

; <label>:3734                                    ; preds = %3679
  %3735 = mul i32 %3732, 148
  %3736 = add i32 %3735, 4
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = add i32 %3735, 8
  %3740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = add i32 %3735, 36
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = add i32 %3735, 60
  %3746 = add i32 %3735, 92
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = add i32 %3735, 116
  %3750 = fsub fast float %3701, %3738
  %3751 = fsub fast float %3702, %3741
  %3752 = fmul fast float %3709, %3750
  %3753 = fmul fast float %3709, %3751
  %3754 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3755 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3756 = fsub fast float 1.000000e+00, %3755
  %3757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3758 = extractvalue %dx.types.CBufRet.f32 %3757, 2
  %3759 = call float @dx.op.unary.f32(i32 83, float %3754)  ; DerivCoarseX(value)
  %3760 = call float @dx.op.unary.f32(i32 83, float %3756)  ; DerivCoarseX(value)
  %3761 = call float @dx.op.unary.f32(i32 84, float %3754)  ; DerivCoarseY(value)
  %3762 = call float @dx.op.unary.f32(i32 84, float %3756)  ; DerivCoarseY(value)
  %3763 = fmul fast float %3759, %3758
  %3764 = fmul fast float %3760, %3758
  %3765 = fmul fast float %3761, %3758
  %3766 = fmul fast float %3762, %3758
  %3767 = call float @dx.op.dot2.f32(i32 54, float %3765, float %3766, float %3765, float %3766)  ; Dot2(ax,ay,bx,by)
  %3768 = call float @dx.op.dot2.f32(i32 54, float %3763, float %3764, float %3763, float %3764)  ; Dot2(ax,ay,bx,by)
  %3769 = call float @dx.op.binary.f32(i32 35, float %3768, float %3767)  ; FMax(a,b)
  %3770 = call float @dx.op.unary.f32(i32 23, float %3769)  ; Log(value)
  %3771 = fmul fast float %3770, 5.000000e-01
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 1
  %3774 = fadd fast float %3773, %3771
  %3775 = call float @dx.op.binary.f32(i32 35, float %3774, float 0.000000e+00)  ; FMax(a,b)
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 3
  %3778 = fadd fast float %3777, %3775
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 3
  %3781 = fadd fast float %3778, %3780
  %3782 = add i32 %3748, 0
  %3783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3782, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3784 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3783, i32 0)  ; GetDimensions(handle,mipLevel)
  %3785 = extractvalue %dx.types.Dimensions %3784, 0
  %3786 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3785)  ; FirstbitLo(value)
  %3787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3788 = extractvalue %dx.types.CBufRet.i32 %3787, 1
  %3789 = sub nsw i32 %3788, %3786
  %3790 = sitofp i32 %3789 to float
  %3791 = fsub fast float %3781, %3790
  %3792 = call float @dx.op.binary.f32(i32 35, float %3791, float 0.000000e+00)  ; FMax(a,b)
  %3793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3783, %dx.types.Handle %43, float %3754, float %3756, float %3744, float undef, i32 0, i32 0, i32 undef, float %3792)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = fcmp ule float %3794, 0x3FE0101020000000
  %3796 = extractvalue %dx.types.CBufRet.i32 %3787, 0
  %3797 = and i32 %3796, 128
  %3798 = icmp ne i32 %3797, 0
  %3799 = and i1 %3795, %3798
  br i1 %3799, label %3950, label %3800

; <label>:3800                                    ; preds = %3734
  %3801 = add i32 %3735, 20
  %3802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3804 = add i32 %3735, 24
  %3805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = add i32 %3735, 40
  %3808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = add i32 %3735, 96
  %3811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.i32 %3811, 0
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 2
  %3815 = fmul fast float %3814, %3754
  %3816 = fmul fast float %3814, %3756
  %3817 = extractvalue %dx.types.CBufRet.f32 %3813, 3
  %3818 = fadd fast float %3815, %3817
  %3819 = fadd fast float %3816, %3817
  %3820 = add i32 %3812, 0
  %3821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3820, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3822 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3821, i32 0)  ; GetDimensions(handle,mipLevel)
  %3823 = extractvalue %dx.types.Dimensions %3822, 0
  %3824 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3823)  ; FirstbitLo(value)
  %3825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3826 = extractvalue %dx.types.CBufRet.i32 %3825, 1
  %3827 = sub nsw i32 %3826, %3824
  %3828 = sitofp i32 %3827 to float
  %3829 = fsub fast float %3778, %3828
  %3830 = call float @dx.op.binary.f32(i32 35, float %3829, float 0.000000e+00)  ; FMax(a,b)
  %3831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3821, %dx.types.Handle %43, float %3818, float %3819, float %3809, float undef, i32 0, i32 0, i32 undef, float %3830)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = fmul fast float %3832, %3803
  %3834 = fadd fast float %3833, %3806
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3838 = extractvalue %dx.types.CBufRet.f32 %3835, 2
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 3
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 3
  %3843 = extractvalue %dx.types.CBufRet.f32 %3835, 3
  %3844 = fadd fast float %3840, %3701
  %3845 = fadd fast float %3842, %3702
  %3846 = fadd fast float %3834, %3843
  %3847 = fmul fast float %3844, %3836
  %3848 = call float @dx.op.tertiary.f32(i32 46, float %3845, float %3837, float %3847)  ; FMad(a,b,c)
  %3849 = call float @dx.op.tertiary.f32(i32 46, float %3846, float %3838, float %3848)  ; FMad(a,b,c)
  %3850 = fsub fast float %3849, %3843
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 2
  %3853 = fsub fast float %3850, %3852
  %3854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.i32 %3854, 0
  %3856 = call i32 @dx.op.binary.i32(i32 40, i32 %3732, i32 %3855)  ; UMin(a,b)
  %3857 = mul i32 %3856, 36
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = add i32 %3857, 4
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 0
  %3863 = fmul fast float %3862, %3754
  %3864 = fmul fast float %3862, %3756
  %3865 = extractvalue %dx.types.CBufRet.f32 %3861, 1
  %3866 = fadd fast float %3863, %3865
  %3867 = fadd fast float %3864, %3865
  %3868 = icmp eq i32 %3859, 0
  br i1 %3868, label %3937, label %3869

; <label>:3869                                    ; preds = %3800
  br label %3870

; <label>:3870                                    ; preds = %3927, %3869
  %3871 = phi float [ %3928, %3927 ], [ 0.000000e+00, %3869 ]
  %3872 = phi float [ %3929, %3927 ], [ 0.000000e+00, %3869 ]
  %3873 = phi float [ %3930, %3927 ], [ 0.000000e+00, %3869 ]
  %3874 = phi float [ %3931, %3927 ], [ 0.000000e+00, %3869 ]
  %3875 = phi float [ %3932, %3927 ], [ 0.000000e+00, %3869 ]
  %3876 = phi float [ %3933, %3927 ], [ 0.000000e+00, %3869 ]
  %3877 = phi i32 [ %3934, %3927 ], [ 0, %3869 ]
  %3878 = shl i32 %3877, 2
  %3879 = add i32 %3745, %3878
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = add i32 %3749, %3878
  %3883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3882, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.i32 %3883, 0
  %3885 = add i32 %3884, 0
  %3886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3885, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3887 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3886, i32 0)  ; GetDimensions(handle,mipLevel)
  %3888 = extractvalue %dx.types.Dimensions %3887, 0
  %3889 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3888)  ; FirstbitLo(value)
  %3890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.i32 %3890, 1
  %3892 = sub nsw i32 %3891, %3889
  %3893 = sitofp i32 %3892 to float
  %3894 = fsub fast float %3778, %3893
  %3895 = call float @dx.op.binary.f32(i32 35, float %3894, float 0.000000e+00)  ; FMax(a,b)
  %3896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3886, %dx.types.Handle %43, float %3866, float %3867, float %3881, float undef, i32 0, i32 0, i32 undef, float %3895)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = fcmp fast ogt float %3897, 0.000000e+00
  br i1 %3898, label %3899, label %3927

; <label>:3899                                    ; preds = %3870
  %3900 = add i32 %3860, %3878
  %3901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = and i32 %3902, 32767
  %3904 = mul nuw nsw i32 %3903, 928
  %3905 = add nuw nsw i32 %3904, 48
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = add nuw nsw i32 %3904, 60
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = fmul fast float %3907, %3897
  %3916 = fmul fast float %3908, %3897
  %3917 = fmul fast float %3909, %3897
  %3918 = fadd fast float %3915, %3871
  %3919 = fadd fast float %3916, %3872
  %3920 = fadd fast float %3917, %3873
  %3921 = fmul fast float %3912, %3897
  %3922 = fmul fast float %3913, %3897
  %3923 = fmul fast float %3914, %3897
  %3924 = fadd fast float %3921, %3874
  %3925 = fadd fast float %3922, %3875
  %3926 = fadd fast float %3923, %3876
  br label %3927

; <label>:3927                                    ; preds = %3899, %3870
  %3928 = phi float [ %3918, %3899 ], [ %3871, %3870 ]
  %3929 = phi float [ %3919, %3899 ], [ %3872, %3870 ]
  %3930 = phi float [ %3920, %3899 ], [ %3873, %3870 ]
  %3931 = phi float [ %3924, %3899 ], [ %3874, %3870 ]
  %3932 = phi float [ %3925, %3899 ], [ %3875, %3870 ]
  %3933 = phi float [ %3926, %3899 ], [ %3876, %3870 ]
  %3934 = add nuw i32 %3877, 1
  %3935 = icmp eq i32 %3934, %3859
  br i1 %3935, label %3936, label %3870

; <label>:3936                                    ; preds = %3927
  br label %3937

; <label>:3937                                    ; preds = %3936, %3800
  %3938 = phi float [ 0.000000e+00, %3800 ], [ %3928, %3936 ]
  %3939 = phi float [ 0.000000e+00, %3800 ], [ %3929, %3936 ]
  %3940 = phi float [ 0.000000e+00, %3800 ], [ %3930, %3936 ]
  %3941 = phi float [ 0.000000e+00, %3800 ], [ %3931, %3936 ]
  %3942 = phi float [ 0.000000e+00, %3800 ], [ %3932, %3936 ]
  %3943 = phi float [ 0.000000e+00, %3800 ], [ %3933, %3936 ]
  %3944 = fadd fast float %3941, %3938
  %3945 = fmul fast float %3944, 0x3F847AE140000000
  %3946 = fadd fast float %3942, %3939
  %3947 = fmul fast float %3946, 0x3F847AE140000000
  %3948 = fadd fast float %3943, %3940
  %3949 = fmul fast float %3948, 0x3F847AE140000000
  br label %3950

; <label>:3950                                    ; preds = %3937, %3734, %3679, %3676, %3647, %3609
  %3951 = phi float [ %3661, %3647 ], [ -1.310720e+05, %3609 ], [ %3853, %3937 ], [ -1.310720e+05, %3679 ], [ -1.310720e+05, %3734 ], [ -1.310720e+05, %3676 ]
  %3952 = phi float [ %3671, %3647 ], [ 0.000000e+00, %3609 ], [ %3945, %3937 ], [ 0.000000e+00, %3679 ], [ 0.000000e+00, %3734 ], [ 0.000000e+00, %3676 ]
  %3953 = phi float [ %3673, %3647 ], [ 0.000000e+00, %3609 ], [ %3947, %3937 ], [ 0.000000e+00, %3679 ], [ 0.000000e+00, %3734 ], [ 0.000000e+00, %3676 ]
  %3954 = phi float [ %3675, %3647 ], [ 0.000000e+00, %3609 ], [ %3949, %3937 ], [ 0.000000e+00, %3679 ], [ 0.000000e+00, %3734 ], [ 0.000000e+00, %3676 ]
  %3955 = phi i1 [ true, %3647 ], [ false, %3609 ], [ true, %3937 ], [ false, %3679 ], [ false, %3734 ], [ false, %3676 ]
  %3956 = and i32 %244, 3
  %3957 = icmp eq i32 %3956, 1
  %3958 = select i1 %3957, float 1.000000e+00, float 0.000000e+00
  %3959 = fsub fast float %3951, %195
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3961 = select i1 %3955, float %3960, float 1.000000e+00
  %3962 = fmul fast float %3961, %3958
  %3963 = icmp eq i32 %3956, 3
  %3964 = select i1 %3963, float 1.000000e+00, float %3962
  %3965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3964)  ; FMax(a,b)
  %3966 = fcmp fast olt float %3964, 1.000000e+00
  %3967 = fcmp uge float %70, 0.000000e+00
  %3968 = and i1 %3967, %3966
  br i1 %3968, label %3969, label %3979

; <label>:3969                                    ; preds = %3950
  %3970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %70, float %71, float %72, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.ResRet.f32 %3970, 2
  %3974 = fadd fast float %3971, %3965
  %3975 = fcmp ule float %69, 0.000000e+00
  %3976 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = select i1 %3975, float %3976, float 1.000000e+00
  %3978 = fmul fast float %3977, %3973
  br label %3979

; <label>:3979                                    ; preds = %3969, %3950
  %3980 = phi float [ %3974, %3969 ], [ %3965, %3950 ]
  %3981 = phi float [ %3972, %3969 ], [ 0.000000e+00, %3950 ]
  %3982 = phi float [ %3978, %3969 ], [ 0.000000e+00, %3950 ]
  %3983 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3984 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3985 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3986 = fcmp fast une float %3984, 0.000000e+00
  %3987 = fcmp fast une float %3985, 0.000000e+00
  %3988 = or i1 %3986, %3987
  br i1 %3988, label %3989, label %4548

; <label>:3989                                    ; preds = %3979
  br i1 %3986, label %3990, label %4263

; <label>:3990                                    ; preds = %3989
  %3991 = call float @dx.op.unary.f32(i32 23, float %3475)  ; Log(value)
  %3992 = fmul fast float %3991, 4.000000e+00
  %3993 = call float @dx.op.unary.f32(i32 21, float %3992)  ; Exp(value)
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = fmul fast float %3995, %56
  %3997 = fmul fast float %3995, %57
  %3998 = fmul fast float %3995, %58
  %3999 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4000 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4001 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4002 = call float @dx.op.unary.f32(i32 23, float %3999)  ; Log(value)
  %4003 = call float @dx.op.unary.f32(i32 23, float %4000)  ; Log(value)
  %4004 = call float @dx.op.unary.f32(i32 23, float %4001)  ; Log(value)
  %4005 = fmul fast float %4002, 4.000000e+00
  %4006 = fmul fast float %4003, 4.000000e+00
  %4007 = fmul fast float %4004, 4.000000e+00
  %4008 = call float @dx.op.unary.f32(i32 21, float %4005)  ; Exp(value)
  %4009 = call float @dx.op.unary.f32(i32 21, float %4006)  ; Exp(value)
  %4010 = call float @dx.op.unary.f32(i32 21, float %4007)  ; Exp(value)
  %4011 = fadd fast float %4009, %4008
  %4012 = fadd fast float %4011, %4010
  %4013 = fdiv fast float 1.000000e+00, %4012
  %4014 = fmul fast float %4013, %4008
  %4015 = fcmp fast ogt float %66, 0.000000e+00
  %4016 = fcmp fast ogt float %67, 0.000000e+00
  %4017 = fcmp fast ogt float %68, 0.000000e+00
  %4018 = fcmp fast olt float %66, 0.000000e+00
  %4019 = fcmp fast olt float %67, 0.000000e+00
  %4020 = fcmp fast olt float %68, 0.000000e+00
  %4021 = zext i1 %4015 to i32
  %4022 = zext i1 %4016 to i32
  %4023 = zext i1 %4017 to i32
  %4024 = zext i1 %4018 to i32
  %4025 = zext i1 %4019 to i32
  %4026 = zext i1 %4020 to i32
  %4027 = sub nsw i32 %4021, %4024
  %4028 = sub nsw i32 %4022, %4025
  %4029 = sub nsw i32 %4023, %4026
  %4030 = call float @dx.op.unary.f32(i32 83, float %3996)  ; DerivCoarseX(value)
  %4031 = call float @dx.op.unary.f32(i32 83, float %3997)  ; DerivCoarseX(value)
  %4032 = call float @dx.op.unary.f32(i32 83, float %3998)  ; DerivCoarseX(value)
  %4033 = call float @dx.op.unary.f32(i32 84, float %3996)  ; DerivCoarseY(value)
  %4034 = call float @dx.op.unary.f32(i32 84, float %3997)  ; DerivCoarseY(value)
  %4035 = call float @dx.op.unary.f32(i32 84, float %3998)  ; DerivCoarseY(value)
  %4036 = fcmp fast ole float %276, %4014
  %4037 = fmul fast float %4013, %4011
  %4038 = fcmp fast ole float %276, %4037
  %4039 = select i1 %4038, float %3998, float %3996
  %4040 = select i1 %4038, float %3996, float %3997
  %4041 = select i1 %4036, float %3997, float %4039
  %4042 = select i1 %4036, float %3998, float %4040
  %4043 = select i1 %4038, float %4032, float %4030
  %4044 = select i1 %4038, float %4030, float %4031
  %4045 = select i1 %4036, float %4031, float %4043
  %4046 = select i1 %4036, float %4032, float %4044
  %4047 = select i1 %4038, float %4035, float %4033
  %4048 = select i1 %4038, float %4033, float %4034
  %4049 = select i1 %4036, float %4034, float %4047
  %4050 = select i1 %4036, float %4035, float %4048
  %4051 = call float @dx.op.unary.f32(i32 27, float %4041)  ; Round_ni(value)
  %4052 = call float @dx.op.unary.f32(i32 27, float %4042)  ; Round_ni(value)
  %4053 = fptosi float %4051 to i32
  %4054 = fptosi float %4052 to i32
  %4055 = xor i32 %4054, %4053
  %4056 = sitofp i32 %4055 to float
  %4057 = fptosi float %4056 to i32
  %4058 = sitofp i32 %4057 to float
  %4059 = fmul fast float %4058, 0x3FE3C6EF40000000
  %4060 = frem fast float %4051, 2.560000e+02
  %4061 = frem fast float %4052, 2.560000e+02
  %4062 = fptoui float %4060 to i32
  %4063 = fptoui float %4061 to i32
  %4064 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4062, i32 %4063, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.ResRet.f32 %4064, 1
  %4067 = extractvalue %dx.types.ResRet.f32 %4064, 2
  %4068 = fadd fast float %4065, %4059
  %4069 = fadd fast float %4066, %4059
  %4070 = fadd fast float %4067, %4059
  %4071 = call float @dx.op.unary.f32(i32 22, float %4068)  ; Frc(value)
  %4072 = call float @dx.op.unary.f32(i32 22, float %4069)  ; Frc(value)
  %4073 = call float @dx.op.unary.f32(i32 22, float %4070)  ; Frc(value)
  %4074 = fmul fast float %4073, 0x401921FB60000000
  %4075 = call float @dx.op.unary.f32(i32 13, float %4074)  ; Sin(value)
  %4076 = call float @dx.op.unary.f32(i32 12, float %4074)  ; Cos(value)
  %4077 = fsub fast float -0.000000e+00, %4076
  %4078 = fmul fast float %4076, %4041
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %4075, float %4042, float %4078)  ; FMad(a,b,c)
  %4080 = fmul fast float %4075, %4041
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4042, float %4080)  ; FMad(a,b,c)
  %4082 = fadd fast float %4079, %4071
  %4083 = fadd fast float %4081, %4072
  %4084 = extractvalue %dx.types.CBufRet.f32 %3994, 3
  %4085 = bitcast float %4084 to i32
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %4125, label %4087

; <label>:4087                                    ; preds = %3990
  %4088 = add i32 %4085, 0
  %4089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4088, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4090 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4089, %dx.types.Handle %107, float %4082, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4045, float %4046, float undef, float %4049, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4095 = fsub fast float 1.000000e+00, %3984
  %4096 = call float @dx.op.binary.f32(i32 35, float %4095, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4097 = bitcast float %3984 to i32
  %4098 = sitofp i32 %4097 to float
  %4099 = fadd fast float %4098, 0xC1CFBF8940000000
  %4100 = fmul fast float %4094, %4099
  %4101 = fadd fast float %4100, 0x41CFBF8940000000
  %4102 = fptosi float %4101 to i32
  %4103 = bitcast i32 %4102 to float
  %4104 = bitcast float %4096 to i32
  %4105 = sitofp i32 %4104 to float
  %4106 = fadd fast float %4105, 0xC1CFBF8940000000
  %4107 = fmul fast float %4106, %4094
  %4108 = fadd fast float %4107, 0x41CFBF8940000000
  %4109 = fptosi float %4108 to i32
  %4110 = bitcast i32 %4109 to float
  %4111 = fmul fast float %4103, %4093
  %4112 = fmul fast float %4110, %4093
  %4113 = fsub fast float %4096, %4111
  %4114 = fadd fast float %4112, %4096
  %4115 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4117 = fsub fast float %4091, %4115
  %4118 = fsub fast float %4116, %4115
  %4119 = bitcast float %4118 to i32
  %4120 = sub nsw i32 2129859010, %4119
  %4121 = bitcast i32 %4120 to float
  %4122 = fmul fast float %4121, %4117
  %4123 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4124 = fcmp fast olt float %4123, 0x3F70101020000000
  br i1 %4124, label %4263, label %4125

; <label>:4125                                    ; preds = %4087, %3990
  %4126 = phi float [ %4123, %4087 ], [ %3984, %3990 ]
  %4127 = fmul fast float %4126, %3993
  %4128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.i32 %4128, 1
  %4130 = extractvalue %dx.types.CBufRet.i32 %4128, 0
  %4131 = add i32 %4130, 0
  %4132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4133 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4132, %dx.types.Handle %106, float %4082, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4045, float %4046, float undef, float %4049, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.ResRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.ResRet.f32 %4133, 2
  %4137 = extractvalue %dx.types.ResRet.f32 %4133, 3
  %4138 = and i32 %4129, 255
  %4139 = uitofp i32 %4138 to float
  %4140 = lshr i32 %4129, 8
  %4141 = and i32 %4140, 255
  %4142 = uitofp i32 %4141 to float
  %4143 = fmul fast float %4137, %4139
  %4144 = fadd fast float %4143, %4142
  %4145 = fmul fast float %4144, 0x3F70101000000000
  %4146 = fadd fast float %4145, 0xBFB99999A0000000
  %4147 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4148 = fmul fast float %4147, 0x3FF1C71C80000000
  %4149 = call float @dx.op.binary.f32(i32 36, float %4145, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4150 = fsub fast float 1.000000e+00, %4148
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = fmul fast float %4151, %4134
  %4153 = fmul fast float %4151, %4135
  %4154 = fmul fast float %4151, %4136
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = fmul fast float %4148, %4134
  %4159 = fmul fast float %4148, %4135
  %4160 = fmul fast float %4148, %4136
  %4161 = fadd fast float %4158, %4149
  %4162 = fadd fast float %4159, %4149
  %4163 = fadd fast float %4160, %4149
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.i32 %4167, 3
  %4169 = extractvalue %dx.types.CBufRet.i32 %4167, 2
  %4170 = add i32 %4169, 0
  %4171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4171, %dx.types.Handle %106, float %4082, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4045, float %4046, float undef, float %4049, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.ResRet.f32 %4172, 3
  %4177 = and i32 %4168, 255
  %4178 = uitofp i32 %4177 to float
  %4179 = lshr i32 %4168, 8
  %4180 = and i32 %4179, 255
  %4181 = uitofp i32 %4180 to float
  %4182 = lshr i32 %4168, 16
  %4183 = and i32 %4182, 255
  %4184 = uitofp i32 %4183 to float
  %4185 = fmul fast float %4184, 0x3F70101000000000
  %4186 = fmul fast float %4173, %4178
  %4187 = fadd fast float %4186, %4181
  %4188 = fmul fast float %4187, 0x3F70101000000000
  %4189 = fadd fast float %4174, -5.000000e-01
  %4190 = fadd fast float %4176, -5.000000e-01
  %4191 = fmul fast float %4189, %4185
  %4192 = fmul fast float %4190, %4185
  %4193 = fadd fast float %4191, 5.000000e-01
  %4194 = fadd fast float %4192, 5.000000e-01
  %4195 = fmul fast float %4193, 2.000000e+00
  %4196 = fadd fast float %4195, -1.000000e+00
  %4197 = fmul fast float %4194, 2.000000e+00
  %4198 = fadd fast float %4197, -1.000000e+00
  %4199 = fadd fast float %4196, %4198
  %4200 = fmul fast float %4199, 5.000000e-01
  %4201 = fsub fast float %4196, %4198
  %4202 = fmul fast float %4201, 5.000000e-01
  %4203 = call float @dx.op.unary.f32(i32 6, float %4200)  ; FAbs(value)
  %4204 = fsub fast float 1.000000e+00, %4203
  %4205 = call float @dx.op.unary.f32(i32 6, float %4202)  ; FAbs(value)
  %4206 = fsub fast float %4204, %4205
  %4207 = call float @dx.op.dot3.f32(i32 55, float %4200, float %4202, float %4206, float %4200, float %4202, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4208 = call float @dx.op.unary.f32(i32 25, float %4207)  ; Rsqrt(value)
  %4209 = fmul fast float %4200, %4208
  %4210 = fmul fast float %4202, %4208
  %4211 = select i1 %4038, i32 %4028, i32 %4029
  %4212 = select i1 %4036, i32 %4027, i32 %4211
  %4213 = sitofp i32 %4212 to float
  %4214 = fmul fast float %4206, %4213
  %4215 = fmul fast float %4214, %4208
  %4216 = select i1 %4038, float %4215, float %4210
  %4217 = select i1 %4038, float %4210, float %4215
  %4218 = select i1 %4036, float %4215, float %4209
  %4219 = select i1 %4036, float %4210, float %4216
  %4220 = select i1 %4036, float %4209, float %4217
  %4221 = fsub fast float %4155, %3585
  %4222 = fsub fast float %4156, %3586
  %4223 = fsub fast float %4157, %3587
  %4224 = fmul fast float %4221, %4127
  %4225 = fmul fast float %4222, %4127
  %4226 = fmul fast float %4223, %4127
  %4227 = fadd fast float %4224, %3585
  %4228 = fadd fast float %4225, %3586
  %4229 = fadd fast float %4226, %3587
  %4230 = fsub fast float %4164, %3570
  %4231 = fsub fast float %4165, %3571
  %4232 = fsub fast float %4166, %3572
  %4233 = fmul fast float %4230, %4127
  %4234 = fmul fast float %4231, %4127
  %4235 = fmul fast float %4232, %4127
  %4236 = fadd fast float %4233, %3570
  %4237 = fadd fast float %4234, %3571
  %4238 = fadd fast float %4235, %3572
  %4239 = fadd fast float %4218, %3549
  %4240 = fadd fast float %4219, %3550
  %4241 = fadd fast float %4220, %3551
  %4242 = call float @dx.op.dot3.f32(i32 55, float %4239, float %4240, float %4241, float %4239, float %4240, float %4241)  ; Dot3(ax,ay,az,bx,by,bz)
  %4243 = call float @dx.op.unary.f32(i32 25, float %4242)  ; Rsqrt(value)
  %4244 = fmul fast float %4239, %4243
  %4245 = fmul fast float %4240, %4243
  %4246 = fmul fast float %4241, %4243
  %4247 = fsub fast float %4244, %3549
  %4248 = fsub fast float %4245, %3550
  %4249 = fsub fast float %4246, %3551
  %4250 = fmul fast float %4247, %4127
  %4251 = fmul fast float %4248, %4127
  %4252 = fmul fast float %4249, %4127
  %4253 = fadd fast float %4250, %3549
  %4254 = fadd fast float %4251, %3550
  %4255 = fadd fast float %4252, %3551
  %4256 = call float @dx.op.binary.f32(i32 36, float %3475, float %4175)  ; FMin(a,b)
  %4257 = fsub fast float %4256, %3475
  %4258 = fmul fast float %4257, %4127
  %4259 = fadd fast float %4258, %3475
  %4260 = fsub fast float %4188, %3588
  %4261 = fmul fast float %4260, %4127
  %4262 = fadd fast float %4261, %3588
  br label %4263

; <label>:4263                                    ; preds = %4125, %4087, %3989
  %4264 = phi float [ %4236, %4125 ], [ %3570, %4087 ], [ %3570, %3989 ]
  %4265 = phi float [ %4237, %4125 ], [ %3571, %4087 ], [ %3571, %3989 ]
  %4266 = phi float [ %4238, %4125 ], [ %3572, %4087 ], [ %3572, %3989 ]
  %4267 = phi float [ %4253, %4125 ], [ %3549, %4087 ], [ %3549, %3989 ]
  %4268 = phi float [ %4254, %4125 ], [ %3550, %4087 ], [ %3550, %3989 ]
  %4269 = phi float [ %4255, %4125 ], [ %3551, %4087 ], [ %3551, %3989 ]
  %4270 = phi float [ %4227, %4125 ], [ %3585, %4087 ], [ %3585, %3989 ]
  %4271 = phi float [ %4228, %4125 ], [ %3586, %4087 ], [ %3586, %3989 ]
  %4272 = phi float [ %4229, %4125 ], [ %3587, %4087 ], [ %3587, %3989 ]
  %4273 = phi float [ %4262, %4125 ], [ %3588, %4087 ], [ %3588, %3989 ]
  %4274 = phi float [ %4259, %4125 ], [ %3475, %4087 ], [ %3475, %3989 ]
  br i1 %3987, label %4275, label %4548

; <label>:4275                                    ; preds = %4263
  %4276 = call float @dx.op.unary.f32(i32 23, float %4274)  ; Log(value)
  %4277 = fmul fast float %4276, 4.000000e+00
  %4278 = call float @dx.op.unary.f32(i32 21, float %4277)  ; Exp(value)
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4281 = fmul fast float %4280, %56
  %4282 = fmul fast float %4280, %57
  %4283 = fmul fast float %4280, %58
  %4284 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4285 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4286 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4287 = call float @dx.op.unary.f32(i32 23, float %4284)  ; Log(value)
  %4288 = call float @dx.op.unary.f32(i32 23, float %4285)  ; Log(value)
  %4289 = call float @dx.op.unary.f32(i32 23, float %4286)  ; Log(value)
  %4290 = fmul fast float %4287, 4.000000e+00
  %4291 = fmul fast float %4288, 4.000000e+00
  %4292 = fmul fast float %4289, 4.000000e+00
  %4293 = call float @dx.op.unary.f32(i32 21, float %4290)  ; Exp(value)
  %4294 = call float @dx.op.unary.f32(i32 21, float %4291)  ; Exp(value)
  %4295 = call float @dx.op.unary.f32(i32 21, float %4292)  ; Exp(value)
  %4296 = fadd fast float %4294, %4293
  %4297 = fadd fast float %4296, %4295
  %4298 = fdiv fast float 1.000000e+00, %4297
  %4299 = fmul fast float %4298, %4293
  %4300 = fcmp fast ogt float %66, 0.000000e+00
  %4301 = fcmp fast ogt float %67, 0.000000e+00
  %4302 = fcmp fast ogt float %68, 0.000000e+00
  %4303 = fcmp fast olt float %66, 0.000000e+00
  %4304 = fcmp fast olt float %67, 0.000000e+00
  %4305 = fcmp fast olt float %68, 0.000000e+00
  %4306 = zext i1 %4300 to i32
  %4307 = zext i1 %4301 to i32
  %4308 = zext i1 %4302 to i32
  %4309 = zext i1 %4303 to i32
  %4310 = zext i1 %4304 to i32
  %4311 = zext i1 %4305 to i32
  %4312 = sub nsw i32 %4306, %4309
  %4313 = sub nsw i32 %4307, %4310
  %4314 = sub nsw i32 %4308, %4311
  %4315 = call float @dx.op.unary.f32(i32 83, float %4281)  ; DerivCoarseX(value)
  %4316 = call float @dx.op.unary.f32(i32 83, float %4282)  ; DerivCoarseX(value)
  %4317 = call float @dx.op.unary.f32(i32 83, float %4283)  ; DerivCoarseX(value)
  %4318 = call float @dx.op.unary.f32(i32 84, float %4281)  ; DerivCoarseY(value)
  %4319 = call float @dx.op.unary.f32(i32 84, float %4282)  ; DerivCoarseY(value)
  %4320 = call float @dx.op.unary.f32(i32 84, float %4283)  ; DerivCoarseY(value)
  %4321 = fcmp fast ole float %276, %4299
  %4322 = fmul fast float %4298, %4296
  %4323 = fcmp fast ole float %276, %4322
  %4324 = select i1 %4323, float %4283, float %4281
  %4325 = select i1 %4323, float %4281, float %4282
  %4326 = select i1 %4321, float %4282, float %4324
  %4327 = select i1 %4321, float %4283, float %4325
  %4328 = select i1 %4323, float %4317, float %4315
  %4329 = select i1 %4323, float %4315, float %4316
  %4330 = select i1 %4321, float %4316, float %4328
  %4331 = select i1 %4321, float %4317, float %4329
  %4332 = select i1 %4323, float %4320, float %4318
  %4333 = select i1 %4323, float %4318, float %4319
  %4334 = select i1 %4321, float %4319, float %4332
  %4335 = select i1 %4321, float %4320, float %4333
  %4336 = call float @dx.op.unary.f32(i32 27, float %4326)  ; Round_ni(value)
  %4337 = call float @dx.op.unary.f32(i32 27, float %4327)  ; Round_ni(value)
  %4338 = fptosi float %4336 to i32
  %4339 = fptosi float %4337 to i32
  %4340 = xor i32 %4339, %4338
  %4341 = sitofp i32 %4340 to float
  %4342 = fptosi float %4341 to i32
  %4343 = sitofp i32 %4342 to float
  %4344 = fmul fast float %4343, 0x3FE3C6EF40000000
  %4345 = frem fast float %4336, 2.560000e+02
  %4346 = frem fast float %4337, 2.560000e+02
  %4347 = fptoui float %4345 to i32
  %4348 = fptoui float %4346 to i32
  %4349 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %4347, i32 %4348, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = fadd fast float %4350, %4344
  %4354 = fadd fast float %4351, %4344
  %4355 = fadd fast float %4352, %4344
  %4356 = call float @dx.op.unary.f32(i32 22, float %4353)  ; Frc(value)
  %4357 = call float @dx.op.unary.f32(i32 22, float %4354)  ; Frc(value)
  %4358 = call float @dx.op.unary.f32(i32 22, float %4355)  ; Frc(value)
  %4359 = fmul fast float %4358, 0x401921FB60000000
  %4360 = call float @dx.op.unary.f32(i32 13, float %4359)  ; Sin(value)
  %4361 = call float @dx.op.unary.f32(i32 12, float %4359)  ; Cos(value)
  %4362 = fsub fast float -0.000000e+00, %4361
  %4363 = fmul fast float %4361, %4326
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4327, float %4363)  ; FMad(a,b,c)
  %4365 = fmul fast float %4360, %4326
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4327, float %4365)  ; FMad(a,b,c)
  %4367 = fadd fast float %4364, %4356
  %4368 = fadd fast float %4366, %4357
  %4369 = extractvalue %dx.types.CBufRet.f32 %4279, 3
  %4370 = bitcast float %4369 to i32
  %4371 = icmp eq i32 %4370, 0
  br i1 %4371, label %4410, label %4372

; <label>:4372                                    ; preds = %4275
  %4373 = add i32 %4370, 0
  %4374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4374, %dx.types.Handle %107, float %4367, float %4368, float undef, float undef, i32 0, i32 0, i32 undef, float %4330, float %4331, float undef, float %4334, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4380 = fsub fast float 1.000000e+00, %3985
  %4381 = call float @dx.op.binary.f32(i32 35, float %4380, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4382 = bitcast float %3985 to i32
  %4383 = sitofp i32 %4382 to float
  %4384 = fadd fast float %4383, 0xC1CFBF8940000000
  %4385 = fmul fast float %4379, %4384
  %4386 = fadd fast float %4385, 0x41CFBF8940000000
  %4387 = fptosi float %4386 to i32
  %4388 = bitcast i32 %4387 to float
  %4389 = bitcast float %4381 to i32
  %4390 = sitofp i32 %4389 to float
  %4391 = fadd fast float %4390, 0xC1CFBF8940000000
  %4392 = fmul fast float %4391, %4379
  %4393 = fadd fast float %4392, 0x41CFBF8940000000
  %4394 = fptosi float %4393 to i32
  %4395 = bitcast i32 %4394 to float
  %4396 = fmul fast float %4388, %4378
  %4397 = fmul fast float %4395, %4378
  %4398 = fsub fast float %4381, %4396
  %4399 = fadd fast float %4397, %4381
  %4400 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4402 = fsub fast float %4376, %4400
  %4403 = fsub fast float %4401, %4400
  %4404 = bitcast float %4403 to i32
  %4405 = sub nsw i32 2129859010, %4404
  %4406 = bitcast i32 %4405 to float
  %4407 = fmul fast float %4406, %4402
  %4408 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4409 = fcmp fast olt float %4408, 0x3F70101020000000
  br i1 %4409, label %4548, label %4410

; <label>:4410                                    ; preds = %4372, %4275
  %4411 = phi float [ %4408, %4372 ], [ %3985, %4275 ]
  %4412 = fmul fast float %4411, %4278
  %4413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.i32 %4413, 1
  %4415 = extractvalue %dx.types.CBufRet.i32 %4413, 0
  %4416 = add i32 %4415, 0
  %4417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4418 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4417, %dx.types.Handle %106, float %4367, float %4368, float undef, float undef, i32 0, i32 0, i32 undef, float %4330, float %4331, float undef, float %4334, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = extractvalue %dx.types.ResRet.f32 %4418, 3
  %4423 = and i32 %4414, 255
  %4424 = uitofp i32 %4423 to float
  %4425 = lshr i32 %4414, 8
  %4426 = and i32 %4425, 255
  %4427 = uitofp i32 %4426 to float
  %4428 = fmul fast float %4422, %4424
  %4429 = fadd fast float %4428, %4427
  %4430 = fmul fast float %4429, 0x3F70101000000000
  %4431 = fadd fast float %4430, 0xBFB99999A0000000
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = fmul fast float %4432, 0x3FF1C71C80000000
  %4434 = call float @dx.op.binary.f32(i32 36, float %4430, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4435 = fsub fast float 1.000000e+00, %4433
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = fmul fast float %4436, %4419
  %4438 = fmul fast float %4436, %4420
  %4439 = fmul fast float %4436, %4421
  %4440 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4443 = fmul fast float %4433, %4419
  %4444 = fmul fast float %4433, %4420
  %4445 = fmul fast float %4433, %4421
  %4446 = fadd fast float %4443, %4434
  %4447 = fadd fast float %4444, %4434
  %4448 = fadd fast float %4445, %4434
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.i32 %4452, 3
  %4454 = extractvalue %dx.types.CBufRet.i32 %4452, 2
  %4455 = add i32 %4454, 0
  %4456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4457 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4456, %dx.types.Handle %106, float %4367, float %4368, float undef, float undef, i32 0, i32 0, i32 undef, float %4330, float %4331, float undef, float %4334, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.ResRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.ResRet.f32 %4457, 2
  %4461 = extractvalue %dx.types.ResRet.f32 %4457, 3
  %4462 = and i32 %4453, 255
  %4463 = uitofp i32 %4462 to float
  %4464 = lshr i32 %4453, 8
  %4465 = and i32 %4464, 255
  %4466 = uitofp i32 %4465 to float
  %4467 = lshr i32 %4453, 16
  %4468 = and i32 %4467, 255
  %4469 = uitofp i32 %4468 to float
  %4470 = fmul fast float %4469, 0x3F70101000000000
  %4471 = fmul fast float %4458, %4463
  %4472 = fadd fast float %4471, %4466
  %4473 = fmul fast float %4472, 0x3F70101000000000
  %4474 = fadd fast float %4459, -5.000000e-01
  %4475 = fadd fast float %4461, -5.000000e-01
  %4476 = fmul fast float %4474, %4470
  %4477 = fmul fast float %4475, %4470
  %4478 = fadd fast float %4476, 5.000000e-01
  %4479 = fadd fast float %4477, 5.000000e-01
  %4480 = fmul fast float %4478, 2.000000e+00
  %4481 = fadd fast float %4480, -1.000000e+00
  %4482 = fmul fast float %4479, 2.000000e+00
  %4483 = fadd fast float %4482, -1.000000e+00
  %4484 = fadd fast float %4481, %4483
  %4485 = fmul fast float %4484, 5.000000e-01
  %4486 = fsub fast float %4481, %4483
  %4487 = fmul fast float %4486, 5.000000e-01
  %4488 = call float @dx.op.unary.f32(i32 6, float %4485)  ; FAbs(value)
  %4489 = fsub fast float 1.000000e+00, %4488
  %4490 = call float @dx.op.unary.f32(i32 6, float %4487)  ; FAbs(value)
  %4491 = fsub fast float %4489, %4490
  %4492 = call float @dx.op.dot3.f32(i32 55, float %4485, float %4487, float %4491, float %4485, float %4487, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4493 = call float @dx.op.unary.f32(i32 25, float %4492)  ; Rsqrt(value)
  %4494 = fmul fast float %4485, %4493
  %4495 = fmul fast float %4487, %4493
  %4496 = select i1 %4323, i32 %4313, i32 %4314
  %4497 = select i1 %4321, i32 %4312, i32 %4496
  %4498 = sitofp i32 %4497 to float
  %4499 = fmul fast float %4491, %4498
  %4500 = fmul fast float %4499, %4493
  %4501 = select i1 %4323, float %4500, float %4495
  %4502 = select i1 %4323, float %4495, float %4500
  %4503 = select i1 %4321, float %4500, float %4494
  %4504 = select i1 %4321, float %4495, float %4501
  %4505 = select i1 %4321, float %4494, float %4502
  %4506 = fsub fast float %4440, %4270
  %4507 = fsub fast float %4441, %4271
  %4508 = fsub fast float %4442, %4272
  %4509 = fmul fast float %4506, %4412
  %4510 = fmul fast float %4507, %4412
  %4511 = fmul fast float %4508, %4412
  %4512 = fadd fast float %4509, %4270
  %4513 = fadd fast float %4510, %4271
  %4514 = fadd fast float %4511, %4272
  %4515 = fsub fast float %4449, %4264
  %4516 = fsub fast float %4450, %4265
  %4517 = fsub fast float %4451, %4266
  %4518 = fmul fast float %4515, %4412
  %4519 = fmul fast float %4516, %4412
  %4520 = fmul fast float %4517, %4412
  %4521 = fadd fast float %4518, %4264
  %4522 = fadd fast float %4519, %4265
  %4523 = fadd fast float %4520, %4266
  %4524 = fadd fast float %4503, %4267
  %4525 = fadd fast float %4504, %4268
  %4526 = fadd fast float %4505, %4269
  %4527 = call float @dx.op.dot3.f32(i32 55, float %4524, float %4525, float %4526, float %4524, float %4525, float %4526)  ; Dot3(ax,ay,az,bx,by,bz)
  %4528 = call float @dx.op.unary.f32(i32 25, float %4527)  ; Rsqrt(value)
  %4529 = fmul fast float %4524, %4528
  %4530 = fmul fast float %4525, %4528
  %4531 = fmul fast float %4526, %4528
  %4532 = fsub fast float %4529, %4267
  %4533 = fsub fast float %4530, %4268
  %4534 = fsub fast float %4531, %4269
  %4535 = fmul fast float %4532, %4412
  %4536 = fmul fast float %4533, %4412
  %4537 = fmul fast float %4534, %4412
  %4538 = fadd fast float %4535, %4267
  %4539 = fadd fast float %4536, %4268
  %4540 = fadd fast float %4537, %4269
  %4541 = call float @dx.op.binary.f32(i32 36, float %4274, float %4460)  ; FMin(a,b)
  %4542 = fsub fast float %4541, %4274
  %4543 = fmul fast float %4542, %4412
  %4544 = fadd fast float %4543, %4274
  %4545 = fsub fast float %4473, %4273
  %4546 = fmul fast float %4545, %4412
  %4547 = fadd fast float %4546, %4273
  br label %4548

; <label>:4548                                    ; preds = %4410, %4372, %4263, %3979
  %4549 = phi float [ %4521, %4410 ], [ %4264, %4372 ], [ %4264, %4263 ], [ %3570, %3979 ]
  %4550 = phi float [ %4522, %4410 ], [ %4265, %4372 ], [ %4265, %4263 ], [ %3571, %3979 ]
  %4551 = phi float [ %4523, %4410 ], [ %4266, %4372 ], [ %4266, %4263 ], [ %3572, %3979 ]
  %4552 = phi float [ %4538, %4410 ], [ %4267, %4372 ], [ %4267, %4263 ], [ %3549, %3979 ]
  %4553 = phi float [ %4539, %4410 ], [ %4268, %4372 ], [ %4268, %4263 ], [ %3550, %3979 ]
  %4554 = phi float [ %4540, %4410 ], [ %4269, %4372 ], [ %4269, %4263 ], [ %3551, %3979 ]
  %4555 = phi float [ %4512, %4410 ], [ %4270, %4372 ], [ %4270, %4263 ], [ %3585, %3979 ]
  %4556 = phi float [ %4513, %4410 ], [ %4271, %4372 ], [ %4271, %4263 ], [ %3586, %3979 ]
  %4557 = phi float [ %4514, %4410 ], [ %4272, %4372 ], [ %4272, %4263 ], [ %3587, %3979 ]
  %4558 = phi float [ %4547, %4410 ], [ %4273, %4372 ], [ %4273, %4263 ], [ %3588, %3979 ]
  %4559 = phi float [ %4544, %4410 ], [ %4274, %4372 ], [ %4274, %4263 ], [ %3475, %3979 ]
  %4560 = fcmp fast une float %3983, 0.000000e+00
  br i1 %4560, label %4561, label %4732

; <label>:4561                                    ; preds = %4548
  %4562 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call float @dx.op.unary.f32(i32 25, float %4562)  ; Rsqrt(value)
  %4564 = fmul fast float %193, %4563
  %4565 = fsub fast float -0.000000e+00, %4564
  %4566 = fmul fast float %194, %4563
  %4567 = fsub fast float -0.000000e+00, %4566
  %4568 = fmul fast float %195, %4563
  %4569 = fsub fast float -0.000000e+00, %4568
  %4570 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4567, float %4569, float %119, float %121, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4571 = fmul fast float %3983, 2.500000e+00
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = fmul fast float %3983, 0x4013FFFFE0000000
  %4574 = fadd fast float %4573, 0xBFFFFFFFE0000000
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fmul fast float %3983, 0x4004000020000000
  %4577 = fadd fast float %4576, 0xBFF8000040000000
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fmul fast float %3552, 1.000000e+01
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = fmul fast float %4580, 2.000000e+00
  %4582 = fsub fast float 3.000000e+00, %4581
  %4583 = fmul fast float %4580, %4580
  %4584 = fmul fast float %4583, %4582
  %4585 = fsub fast float 1.000000e+00, %4584
  %4586 = fmul fast float %4558, 0x3FF75C2900000000
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fsub fast float 0x3FE3333340000000, %4587
  %4589 = fmul fast float %4588, 0x400AAAAAA0000000
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fmul fast float %4585, %4590
  %4592 = fmul fast float %4555, 0x3FEA2B8620000000
  %4593 = fmul fast float %4556, 0x3FEA2B8620000000
  %4594 = fmul fast float %4557, 0x3FEA2B8620000000
  %4595 = fadd fast float %4592, 0x3FC81DFBA0000000
  %4596 = fmul fast float %4595, %4555
  %4597 = fadd fast float %4596, 0x3F910E6020000000
  %4598 = fadd fast float %4593, 0x3FC81DFBA0000000
  %4599 = fmul fast float %4598, %4556
  %4600 = fadd fast float %4599, 0x3F910E6020000000
  %4601 = fadd fast float %4594, 0x3FC81DFBA0000000
  %4602 = fmul fast float %4601, %4557
  %4603 = fadd fast float %4602, 0x3F910E6020000000
  %4604 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4606 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4607 = fsub fast float %4604, %4555
  %4608 = fsub fast float %4605, %4556
  %4609 = fsub fast float %4606, %4557
  %4610 = fmul fast float %4607, %4572
  %4611 = fmul fast float %4610, %4591
  %4612 = fmul fast float %4608, %4572
  %4613 = fmul fast float %4612, %4591
  %4614 = fmul fast float %4591, %4572
  %4615 = fmul fast float %4614, %4609
  %4616 = fadd fast float %4611, %4555
  %4617 = fadd fast float %4613, %4556
  %4618 = fadd fast float %4615, %4557
  %4619 = fmul fast float %4559, %4559
  %4620 = fmul fast float %4619, %4619
  %4621 = fadd fast float %4575, 1.000000e+00
  %4622 = fsub fast float %4621, %4591
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = call float @dx.op.dot3.f32(i32 55, float %119, float %121, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4625 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4626 = fsub fast float 1.000000e+00, %4620
  %4627 = call float @dx.op.binary.f32(i32 36, float %4623, float %4626)  ; FMin(a,b)
  %4628 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4629 = call float @dx.op.binary.f32(i32 35, float %4627, float %4628)  ; FMax(a,b)
  %4630 = fadd fast float %4625, 0xBFE4CCCCC0000000
  %4631 = fmul fast float %4630, 0x4006DB6DA0000000
  %4632 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4633 = fmul fast float %4632, 2.000000e+00
  %4634 = fsub fast float 3.000000e+00, %4633
  %4635 = bitcast float %4549 to i32
  %4636 = ashr i32 %4635, 1
  %4637 = add nsw i32 %4636, 532487669
  %4638 = bitcast i32 %4637 to float
  %4639 = fsub fast float 1.000000e+00, %4638
  %4640 = bitcast float %4639 to i32
  %4641 = sub nsw i32 2129859010, %4640
  %4642 = bitcast i32 %4641 to float
  %4643 = fmul fast float %4642, 2.000000e+00
  %4644 = bitcast float %4550 to i32
  %4645 = ashr i32 %4644, 1
  %4646 = add nsw i32 %4645, 532487669
  %4647 = bitcast i32 %4646 to float
  %4648 = fsub fast float 1.000000e+00, %4647
  %4649 = bitcast float %4648 to i32
  %4650 = sub nsw i32 2129859010, %4649
  %4651 = bitcast i32 %4650 to float
  %4652 = fmul fast float %4651, 2.000000e+00
  %4653 = bitcast float %4551 to i32
  %4654 = ashr i32 %4653, 1
  %4655 = add nsw i32 %4654, 532487669
  %4656 = bitcast i32 %4655 to float
  %4657 = fsub fast float 1.000000e+00, %4656
  %4658 = bitcast float %4657 to i32
  %4659 = sub nsw i32 2129859010, %4658
  %4660 = bitcast i32 %4659 to float
  %4661 = fmul fast float %4660, 2.000000e+00
  %4662 = fsub fast float 0x4002A9FBE0000000, %4643
  %4663 = fadd fast float %4643, 0x3FD54FDF00000000
  %4664 = bitcast float %4663 to i32
  %4665 = sub nsw i32 2129859010, %4664
  %4666 = bitcast i32 %4665 to float
  %4667 = fmul fast float %4666, %4662
  %4668 = fmul fast float %4667, %4667
  %4669 = fsub fast float 0x4002A9FBE0000000, %4652
  %4670 = fadd fast float %4652, 0x3FD54FDF00000000
  %4671 = bitcast float %4670 to i32
  %4672 = sub nsw i32 2129859010, %4671
  %4673 = bitcast i32 %4672 to float
  %4674 = fmul fast float %4673, %4669
  %4675 = fmul fast float %4674, %4674
  %4676 = fsub fast float 0x4002A9FBE0000000, %4661
  %4677 = fadd fast float %4661, 0x3FD54FDF00000000
  %4678 = bitcast float %4677 to i32
  %4679 = sub nsw i32 2129859010, %4678
  %4680 = bitcast i32 %4679 to float
  %4681 = fmul fast float %4680, %4676
  %4682 = fmul fast float %4681, %4681
  %4683 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4668)  ; FMax(a,b)
  %4684 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4675)  ; FMax(a,b)
  %4685 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4682)  ; FMax(a,b)
  %4686 = fsub fast float 1.000000e+00, %4570
  %4687 = fadd fast float %4686, %4585
  %4688 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4689 = fsub fast float 1.000000e+00, %3964
  %4690 = fmul fast float %4629, %4689
  %4691 = fmul fast float %4632, %4632
  %4692 = fmul fast float %4691, %4690
  %4693 = fmul fast float %4692, %4634
  %4694 = fmul fast float %4689, 0xBFE99999A0000000
  %4695 = fmul fast float %4694, %4572
  %4696 = fmul fast float %4695, %4591
  %4697 = fadd fast float %4696, 1.000000e+00
  %4698 = fadd fast float %4558, -1.000000e+00
  %4699 = fmul fast float %4697, %4698
  %4700 = fadd fast float %4699, 1.000000e+00
  %4701 = fsub fast float %4683, %4549
  %4702 = fsub fast float %4684, %4550
  %4703 = fsub fast float %4685, %4551
  %4704 = fmul fast float %4693, %4701
  %4705 = fmul fast float %4693, %4702
  %4706 = fmul fast float %4693, %4703
  %4707 = fadd fast float %4704, %4549
  %4708 = fadd fast float %4705, %4550
  %4709 = fadd fast float %4706, %4551
  %4710 = fsub fast float %119, %4552
  %4711 = fsub fast float %121, %4553
  %4712 = fsub fast float %123, %4554
  %4713 = fmul fast float %4693, %4710
  %4714 = fmul fast float %4693, %4711
  %4715 = fmul fast float %4693, %4712
  %4716 = fadd fast float %4713, %4552
  %4717 = fadd fast float %4714, %4553
  %4718 = fadd fast float %4715, %4554
  %4719 = fmul fast float %4693, %4688
  %4720 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4721 = fsub fast float 1.000000e+00, %4720
  %4722 = fmul fast float %4719, %4721
  %4723 = fadd fast float %4722, %4720
  %4724 = fsub fast float 1.000000e+00, %4559
  %4725 = fmul fast float %4693, %4724
  %4726 = fadd fast float %4725, %4559
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4716, float %4717, float %4718, float %4716, float %4717, float %4718)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.unary.f32(i32 25, float %4727)  ; Rsqrt(value)
  %4729 = fmul fast float %4716, %4728
  %4730 = fmul fast float %4717, %4728
  %4731 = fmul fast float %4718, %4728
  br label %4732

; <label>:4732                                    ; preds = %4561, %4548
  %4733 = phi float [ %4707, %4561 ], [ %4549, %4548 ]
  %4734 = phi float [ %4708, %4561 ], [ %4550, %4548 ]
  %4735 = phi float [ %4709, %4561 ], [ %4551, %4548 ]
  %4736 = phi float [ %4729, %4561 ], [ %4552, %4548 ]
  %4737 = phi float [ %4730, %4561 ], [ %4553, %4548 ]
  %4738 = phi float [ %4731, %4561 ], [ %4554, %4548 ]
  %4739 = phi float [ %4616, %4561 ], [ %4555, %4548 ]
  %4740 = phi float [ %4617, %4561 ], [ %4556, %4548 ]
  %4741 = phi float [ %4618, %4561 ], [ %4557, %4548 ]
  %4742 = phi float [ %4723, %4561 ], [ %4558, %4548 ]
  %4743 = phi float [ %4726, %4561 ], [ %4559, %4548 ]
  %4744 = icmp eq i32 %55, 0
  br i1 %4744, label %4775, label %4745

; <label>:4745                                    ; preds = %4732
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 2
  %4748 = extractvalue %dx.types.CBufRet.f32 %4746, 3
  %4749 = fmul fast float %4747, %110
  %4750 = fmul fast float %4748, %111
  %4751 = fmul fast float %4749, 1.024000e+03
  %4752 = fmul fast float %4750, 1.024000e+03
  %4753 = fadd fast float %4751, -5.120000e+02
  %4754 = fadd fast float %4752, -5.120000e+02
  %4755 = fmul fast float %4749, 0x4081BEDF00000000
  %4756 = fadd fast float %4755, 0xC071BEDF00000000
  %4757 = call float @dx.op.unary.f32(i32 22, float %4756)  ; Frc(value)
  %4758 = fmul fast float %4753, %4757
  %4759 = fadd fast float %4758, %4754
  %4760 = fmul fast float %4750, 0x4073BEBE20000000
  %4761 = fadd fast float %4760, 0xC063BEBE20000000
  %4762 = call float @dx.op.unary.f32(i32 22, float %4761)  ; Frc(value)
  %4763 = fmul fast float %4754, %4762
  %4764 = fadd fast float %4763, %4753
  %4765 = fmul fast float %4759, %4764
  %4766 = call float @dx.op.unary.f32(i32 22, float %4765)  ; Frc(value)
  %4767 = add i32 %319, 12
  %4768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4767, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.i32 %4768, 0
  %4770 = and i32 %4769, 255
  %4771 = uitofp i32 %4770 to float
  %4772 = fmul fast float %4771, 0x3F70101020000000
  %4773 = fcmp fast olt float %4766, %4772
  br i1 %4773, label %4774, label %4775

; <label>:4774                                    ; preds = %4745
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4775

; <label>:4775                                    ; preds = %4774, %4745, %4732
  %4776 = fsub fast float -0.000000e+00, %195
  %4777 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.unary.f32(i32 25, float %4777)  ; Rsqrt(value)
  %4779 = fmul fast float %4778, %193
  %4780 = fmul fast float %4778, %194
  %4781 = fmul fast float %4778, %195
  %4782 = fsub fast float -0.000000e+00, %4779
  %4783 = fsub fast float -0.000000e+00, %4780
  %4784 = fsub fast float -0.000000e+00, %4781
  %4785 = select i1 %265, float 0.000000e+00, float %4735
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %4738, float %4782, float %4783, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %4736, float %4737, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = fmul fast float %4788, 2.000000e+00
  %4790 = fmul fast float %4789, %4736
  %4791 = fmul fast float %4789, %4737
  %4792 = fmul fast float %4789, %4738
  %4793 = fsub fast float %4779, %4790
  %4794 = fsub fast float %4780, %4791
  %4795 = fsub fast float %4781, %4792
  %4796 = call float @dx.op.binary.f32(i32 36, float %4743, float 1.000000e+00)  ; FMin(a,b)
  %4797 = fsub fast float 1.000000e+00, %4743
  %4798 = bitcast float %4797 to i32
  %4799 = sub nsw i32 2129859010, %4798
  %4800 = bitcast i32 %4799 to float
  %4801 = call float @dx.op.dot3.f32(i32 55, float %81, float %77, float %73, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = fmul fast float %4801, 0x3FD20DD760000000
  %4803 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %81)  ; FMax(a,b)
  %4804 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = fcmp fast oeq float %4804, 0.000000e+00
  %4806 = fcmp fast oeq float %4803, 0.000000e+00
  %4807 = or i1 %4806, %4805
  br i1 %4807, label %4837, label %4808

; <label>:4808                                    ; preds = %4775
  %4809 = fsub fast float -0.000000e+00, %84
  %4810 = fsub fast float -0.000000e+00, %82
  %4811 = call float @dx.op.unary.f32(i32 24, float %4804)  ; Sqrt(value)
  %4812 = fdiv fast float %4811, %4803
  %4813 = fcmp fast ogt float %4812, 0x3FFB6F8900000000
  %4814 = select i1 %4813, float 0x3FFB6F8900000000, float %4812
  %4815 = fmul fast float %4814, 0x3FE8A23460000000
  %4816 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4817 = call float @dx.op.binary.f32(i32 35, float %4814, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4818 = fmul fast float %4816, %4803
  %4819 = fmul fast float %4817, 0x3FF279A740000000
  %4820 = fadd fast float %4819, -1.000000e+00
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4810, float %83, float %4809, float %4810, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = call float @dx.op.unary.f32(i32 25, float %4821)  ; Rsqrt(value)
  %4823 = fmul fast float %4822, %4809
  %4824 = fmul fast float %4822, %4810
  %4825 = fmul fast float %4822, %83
  %4826 = fmul fast float %4820, %4820
  %4827 = fsub fast float 1.000000e+00, %4826
  %4828 = fmul fast float %4817, 0x40005F8BE0000000
  %4829 = fsub fast float 0x400C5BF8A0000000, %4828
  %4830 = fdiv fast float %4818, %4829
  %4831 = fmul fast float %4830, 0x3FEE31C3C0000000
  %4832 = fmul fast float %4831, %4827
  %4833 = fmul fast float %4817, 0x3FDACB7480000000
  %4834 = fadd fast float %4833, 0xBFD7347680000000
  %4835 = fmul fast float %4834, %4830
  %4836 = fmul fast float %4835, %4827
  br label %4837

; <label>:4837                                    ; preds = %4808, %4775
  %4838 = phi float [ %4823, %4808 ], [ 0.000000e+00, %4775 ]
  %4839 = phi float [ %4824, %4808 ], [ 0.000000e+00, %4775 ]
  %4840 = phi float [ %4825, %4808 ], [ 0.000000e+00, %4775 ]
  %4841 = phi float [ %4832, %4808 ], [ 0.000000e+00, %4775 ]
  %4842 = phi float [ %4836, %4808 ], [ 0.000000e+00, %4775 ]
  %4843 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4839, float %4840, float %4736, float %4737, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4844 = fmul fast float %4843, %4843
  %4845 = fmul fast float %4844, 0x3FEE471020000000
  %4846 = fadd fast float %4845, 0xBFD42F6020000000
  %4847 = fmul fast float %4803, 0x3FD20DD760000000
  %4848 = fmul fast float %4846, %4842
  %4849 = fmul fast float %4841, 0x3FDF454380000000
  %4850 = fmul fast float %4849, %4843
  %4851 = fadd fast float %4850, %4847
  %4852 = fadd fast float %4851, %4848
  %4853 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4839, float %4840, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4854 = fmul fast float %4853, 0x3FDF454380000000
  %4855 = fmul fast float %4853, %4853
  %4856 = fmul fast float %4855, 0x3FEE471020000000
  %4857 = fadd fast float %4856, 0xBFD42F6020000000
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4841, float %4842, float 0x3FD20DD760000000, float %4854, float %4857)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %4860 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = fcmp fast oeq float %4860, 0.000000e+00
  %4862 = fcmp fast oeq float %4859, 0.000000e+00
  %4863 = or i1 %4862, %4861
  br i1 %4863, label %4893, label %4864

; <label>:4864                                    ; preds = %4837
  %4865 = fsub fast float -0.000000e+00, %80
  %4866 = fsub fast float -0.000000e+00, %78
  %4867 = call float @dx.op.unary.f32(i32 24, float %4860)  ; Sqrt(value)
  %4868 = fdiv fast float %4867, %4859
  %4869 = fcmp fast ogt float %4868, 0x3FFB6F8900000000
  %4870 = select i1 %4869, float 0x3FFB6F8900000000, float %4868
  %4871 = fmul fast float %4870, 0x3FE8A23460000000
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = call float @dx.op.binary.f32(i32 35, float %4870, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4874 = fmul fast float %4872, %4859
  %4875 = fmul fast float %4873, 0x3FF279A740000000
  %4876 = fadd fast float %4875, -1.000000e+00
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %79, float %4865, float %4866, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = call float @dx.op.unary.f32(i32 25, float %4877)  ; Rsqrt(value)
  %4879 = fmul fast float %4878, %4865
  %4880 = fmul fast float %4878, %4866
  %4881 = fmul fast float %4878, %79
  %4882 = fmul fast float %4876, %4876
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = fmul fast float %4873, 0x40005F8BE0000000
  %4885 = fsub fast float 0x400C5BF8A0000000, %4884
  %4886 = fdiv fast float %4874, %4885
  %4887 = fmul fast float %4886, 0x3FEE31C3C0000000
  %4888 = fmul fast float %4887, %4883
  %4889 = fmul fast float %4873, 0x3FDACB7480000000
  %4890 = fadd fast float %4889, 0xBFD7347680000000
  %4891 = fmul fast float %4890, %4886
  %4892 = fmul fast float %4891, %4883
  br label %4893

; <label>:4893                                    ; preds = %4864, %4837
  %4894 = phi float [ %4879, %4864 ], [ 0.000000e+00, %4837 ]
  %4895 = phi float [ %4880, %4864 ], [ 0.000000e+00, %4837 ]
  %4896 = phi float [ %4881, %4864 ], [ 0.000000e+00, %4837 ]
  %4897 = phi float [ %4888, %4864 ], [ 0.000000e+00, %4837 ]
  %4898 = phi float [ %4892, %4864 ], [ 0.000000e+00, %4837 ]
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %4736, float %4737, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = fmul fast float %4899, %4899
  %4901 = fmul fast float %4900, 0x3FEE471020000000
  %4902 = fadd fast float %4901, 0xBFD42F6020000000
  %4903 = fmul fast float %4859, 0x3FD20DD760000000
  %4904 = fmul fast float %4902, %4898
  %4905 = fmul fast float %4897, 0x3FDF454380000000
  %4906 = fmul fast float %4905, %4899
  %4907 = fadd fast float %4906, %4903
  %4908 = fadd fast float %4907, %4904
  %4909 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = fmul fast float %4909, 0x3FDF454380000000
  %4911 = fmul fast float %4909, %4909
  %4912 = fmul fast float %4911, 0x3FEE471020000000
  %4913 = fadd fast float %4912, 0xBFD42F6020000000
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4897, float %4898, float 0x3FD20DD760000000, float %4910, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %4916 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = fcmp fast oeq float %4916, 0.000000e+00
  %4918 = fcmp fast oeq float %4915, 0.000000e+00
  %4919 = or i1 %4918, %4917
  br i1 %4919, label %4949, label %4920

; <label>:4920                                    ; preds = %4893
  %4921 = fsub fast float -0.000000e+00, %76
  %4922 = fsub fast float -0.000000e+00, %74
  %4923 = call float @dx.op.unary.f32(i32 24, float %4916)  ; Sqrt(value)
  %4924 = fdiv fast float %4923, %4915
  %4925 = fcmp fast ogt float %4924, 0x3FFB6F8900000000
  %4926 = select i1 %4925, float 0x3FFB6F8900000000, float %4924
  %4927 = fmul fast float %4926, 0x3FE8A23460000000
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = call float @dx.op.binary.f32(i32 35, float %4926, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4930 = fmul fast float %4928, %4915
  %4931 = fmul fast float %4929, 0x3FF279A740000000
  %4932 = fadd fast float %4931, -1.000000e+00
  %4933 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %75, float %4921, float %4922, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4934 = call float @dx.op.unary.f32(i32 25, float %4933)  ; Rsqrt(value)
  %4935 = fmul fast float %4934, %4921
  %4936 = fmul fast float %4934, %4922
  %4937 = fmul fast float %4934, %75
  %4938 = fmul fast float %4932, %4932
  %4939 = fsub fast float 1.000000e+00, %4938
  %4940 = fmul fast float %4929, 0x40005F8BE0000000
  %4941 = fsub fast float 0x400C5BF8A0000000, %4940
  %4942 = fdiv fast float %4930, %4941
  %4943 = fmul fast float %4942, 0x3FEE31C3C0000000
  %4944 = fmul fast float %4943, %4939
  %4945 = fmul fast float %4929, 0x3FDACB7480000000
  %4946 = fadd fast float %4945, 0xBFD7347680000000
  %4947 = fmul fast float %4946, %4942
  %4948 = fmul fast float %4947, %4939
  br label %4949

; <label>:4949                                    ; preds = %4920, %4893
  %4950 = phi float [ %4935, %4920 ], [ 0.000000e+00, %4893 ]
  %4951 = phi float [ %4936, %4920 ], [ 0.000000e+00, %4893 ]
  %4952 = phi float [ %4937, %4920 ], [ 0.000000e+00, %4893 ]
  %4953 = phi float [ %4944, %4920 ], [ 0.000000e+00, %4893 ]
  %4954 = phi float [ %4948, %4920 ], [ 0.000000e+00, %4893 ]
  %4955 = call float @dx.op.dot3.f32(i32 55, float %4950, float %4951, float %4952, float %4736, float %4737, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4956 = fmul fast float %4955, %4955
  %4957 = fmul fast float %4956, 0x3FEE471020000000
  %4958 = fadd fast float %4957, 0xBFD42F6020000000
  %4959 = fmul fast float %4915, 0x3FD20DD760000000
  %4960 = fmul fast float %4958, %4954
  %4961 = fmul fast float %4953, 0x3FDF454380000000
  %4962 = fmul fast float %4961, %4955
  %4963 = fadd fast float %4962, %4959
  %4964 = fadd fast float %4963, %4960
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4950, float %4951, float %4952, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = fmul fast float %4965, 0x3FDF454380000000
  %4967 = fmul fast float %4965, %4965
  %4968 = fmul fast float %4967, 0x3FEE471020000000
  %4969 = fadd fast float %4968, 0xBFD42F6020000000
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4915, float %4953, float %4954, float 0x3FD20DD760000000, float %4966, float %4969)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = call float @dx.op.binary.f32(i32 35, float %4852, float 0.000000e+00)  ; FMax(a,b)
  %4972 = call float @dx.op.binary.f32(i32 35, float %4908, float 0.000000e+00)  ; FMax(a,b)
  %4973 = call float @dx.op.binary.f32(i32 35, float %4964, float 0.000000e+00)  ; FMax(a,b)
  %4974 = call float @dx.op.binary.f32(i32 35, float %4858, float 0.000000e+00)  ; FMax(a,b)
  %4975 = call float @dx.op.binary.f32(i32 35, float %4914, float 0.000000e+00)  ; FMax(a,b)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4970, float 0.000000e+00)  ; FMax(a,b)
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = call float @dx.op.binary.f32(i32 36, float %4739, float %4978)  ; FMin(a,b)
  %4980 = fsub fast float 1.000000e+00, %4796
  %4981 = fmul fast float %4979, %4980
  %4982 = fsub fast float 1.000000e+00, %4981
  %4983 = bitcast float %4982 to i32
  %4984 = sub nsw i32 2129859010, %4983
  %4985 = bitcast i32 %4984 to float
  %4986 = call float @dx.op.binary.f32(i32 36, float %4740, float %4978)  ; FMin(a,b)
  %4987 = fmul fast float %4986, %4980
  %4988 = fsub fast float 1.000000e+00, %4987
  %4989 = bitcast float %4988 to i32
  %4990 = sub nsw i32 2129859010, %4989
  %4991 = bitcast i32 %4990 to float
  %4992 = call float @dx.op.binary.f32(i32 36, float %4741, float %4978)  ; FMin(a,b)
  %4993 = fmul fast float %4992, %4980
  %4994 = fsub fast float 1.000000e+00, %4993
  %4995 = bitcast float %4994 to i32
  %4996 = sub nsw i32 2129859010, %4995
  %4997 = bitcast i32 %4996 to float
  %4998 = fmul fast float %4971, %4796
  %4999 = fmul fast float %4998, %4985
  %5000 = fmul fast float %4972, %4796
  %5001 = fmul fast float %5000, %4991
  %5002 = fmul fast float %4973, %4796
  %5003 = fmul fast float %5002, %4997
  %5004 = call float @dx.op.binary.f32(i32 36, float %4733, float %4978)  ; FMin(a,b)
  %5005 = fmul fast float %5004, %4980
  %5006 = fsub fast float 1.000000e+00, %5005
  %5007 = bitcast float %5006 to i32
  %5008 = sub nsw i32 2129859010, %5007
  %5009 = bitcast i32 %5008 to float
  %5010 = call float @dx.op.binary.f32(i32 36, float %4734, float %4978)  ; FMin(a,b)
  %5011 = fmul fast float %5010, %4980
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = bitcast float %5012 to i32
  %5014 = sub nsw i32 2129859010, %5013
  %5015 = bitcast i32 %5014 to float
  %5016 = call float @dx.op.binary.f32(i32 36, float %4785, float %4978)  ; FMin(a,b)
  %5017 = fmul fast float %5016, %4980
  %5018 = fsub fast float 1.000000e+00, %5017
  %5019 = bitcast float %5018 to i32
  %5020 = sub nsw i32 2129859010, %5019
  %5021 = bitcast i32 %5020 to float
  %5022 = fmul fast float %4974, %4796
  %5023 = fmul fast float %5022, %5009
  %5024 = fmul fast float %4975, %4796
  %5025 = fmul fast float %5024, %5015
  %5026 = fmul fast float %4976, %4796
  %5027 = fmul fast float %5026, %5021
  %5028 = call float @dx.op.dot3.f32(i32 55, float %4999, float %5001, float %5003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = select i1 %265, float 0.000000e+00, float %4999
  %5030 = select i1 %265, float %5028, float %5001
  %5031 = select i1 %265, float 0.000000e+00, float %5003
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5023, float %5025, float %5027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = select i1 %265, float 0.000000e+00, float %5023
  %5034 = select i1 %265, float %5032, float %5025
  %5035 = select i1 %265, float 0.000000e+00, float %5027
  %5036 = fmul fast float %4801, 0x4071A18460000000
  %5037 = fadd fast float %5036, 0x3F0FFB4800000000
  %5038 = call float @dx.op.unary.f32(i32 23, float %5037)  ; Log(value)
  %5039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %5040 = extractvalue %dx.types.ResRet.i32 %5039, 0
  %5041 = and i32 %5040, 8388608
  %5042 = icmp eq i32 %5041, 0
  br i1 %5042, label %5043, label %5083

; <label>:5043                                    ; preds = %4949
  %5044 = fadd fast float %5038, 0x4006B851E0000000
  %5045 = add i32 %319, 12
  %5046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %5045, i32 undef)  ; BufferLoad(srv,index,wot)
  %5047 = extractvalue %dx.types.ResRet.i32 %5046, 0
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 3
  %5050 = lshr i32 %5047, 16
  %5051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5050)  ; LegacyF16ToF32(value)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 1
  %5055 = fsub fast float %101, %5054
  %5056 = extractvalue %dx.types.CBufRet.f32 %5053, 2
  %5057 = fmul fast float %5055, %5056
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = fsub fast float %5052, %5044
  %5060 = fcmp fast ogt float %5059, 0.000000e+00
  %5061 = fcmp fast olt float %5059, 0.000000e+00
  %5062 = zext i1 %5060 to i32
  %5063 = zext i1 %5061 to i32
  %5064 = sub nsw i32 %5062, %5063
  %5065 = sitofp i32 %5064 to float
  %5066 = call float @dx.op.unary.f32(i32 6, float %5059)  ; FAbs(value)
  %5067 = fsub fast float -0.000000e+00, %5051
  %5068 = fsub fast float %5067, %5049
  %5069 = fadd fast float %5068, %5066
  %5070 = call float @dx.op.binary.f32(i32 35, float %5069, float 0.000000e+00)  ; FMax(a,b)
  %5071 = fmul fast float %5065, %5070
  %5072 = fadd fast float %5038, %5071
  %5073 = call float @dx.op.unary.f32(i32 21, float %5072)  ; Exp(value)
  %5074 = fmul fast float %5073, 0x3F50624DE0000000
  %5075 = fcmp fast oeq float %4802, 0.000000e+00
  %5076 = fdiv fast float 0x400C5BF880000000, %4801
  %5077 = fmul fast float %5074, %5076
  %5078 = select i1 %5075, float 1.000000e+00, float %5077
  %5079 = call float @dx.op.binary.f32(i32 35, float %5078, float 1.000000e+00)  ; FMax(a,b)
  %5080 = fadd fast float %5079, -1.000000e+00
  %5081 = fmul fast float %5080, %5058
  %5082 = fadd fast float %5081, 1.000000e+00
  br label %5083

; <label>:5083                                    ; preds = %5043, %4949
  %5084 = phi float [ %5082, %5043 ], [ 1.000000e+00, %4949 ]
  %5085 = call float @dx.op.unary.f32(i32 6, float %5084)  ; FAbs(value)
  %5086 = fmul fast float %5085, %5029
  %5087 = fmul fast float %5085, %5030
  %5088 = fmul fast float %5085, %5031
  %5089 = fmul fast float %4787, 9.843750e-01
  %5090 = fmul fast float %4742, 9.843750e-01
  %5091 = fadd fast float %5089, 7.812500e-03
  %5092 = fadd fast float %5090, 7.812500e-03
  %5093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %5091, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5094 = extractvalue %dx.types.ResRet.f32 %5093, 2
  %5095 = extractvalue %dx.types.ResRet.f32 %5093, 3
  %5096 = fmul fast float %5094, %4733
  %5097 = fmul fast float %5094, %4734
  %5098 = fmul fast float %5094, %4785
  %5099 = fadd fast float %5096, %5095
  %5100 = fadd fast float %5097, %5095
  %5101 = fadd fast float %5098, %5095
  %5102 = call float @dx.op.binary.f32(i32 35, float %5100, float %5101)  ; FMax(a,b)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5099, float %5102)  ; FMax(a,b)
  %5104 = fsub fast float 1.000000e+00, %5103
  %5105 = fmul fast float %193, %193
  %5106 = fmul fast float %194, %194
  %5107 = fadd fast float %5106, %5105
  %5108 = fmul fast float %195, %195
  %5109 = fadd fast float %5107, %5108
  %5110 = call float @dx.op.unary.f32(i32 24, float %5109)  ; Sqrt(value)
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 1
  %5113 = fsub fast float %5110, %5112
  %5114 = extractvalue %dx.types.CBufRet.f32 %5111, 2
  %5115 = fmul fast float %5113, %5114
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5118 = extractvalue %dx.types.CBufRet.f32 %5111, 3
  %5119 = and i32 %5040, 4194304
  %5120 = icmp ne i32 %5119, 0
  %5121 = icmp ne i32 %5041, 0
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5124 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5125 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5126 = extractvalue %dx.types.CBufRet.f32 %5122, 3
  %5127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.f32 %5127, 0
  %5129 = extractvalue %dx.types.CBufRet.f32 %5127, 1
  %5130 = extractvalue %dx.types.CBufRet.f32 %5127, 2
  %5131 = extractvalue %dx.types.CBufRet.f32 %5127, 3
  %5132 = select i1 %5120, float %5123, float %5128
  %5133 = select i1 %5120, float %5124, float %5129
  %5134 = select i1 %5120, float %5125, float %5130
  %5135 = select i1 %5120, float %5126, float %5131
  %5136 = select i1 %5121, float 0.000000e+00, float %5135
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = select i1 %5120, float %5138, float %5139
  %5141 = select i1 %5121, float 0.000000e+00, float %5140
  %5142 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5143 = extractvalue %dx.types.CBufRet.f32 %5137, 3
  %5144 = select i1 %5120, float %5142, float %5143
  %5145 = select i1 %5121, float 0.000000e+00, float %5144
  %5146 = fmul fast float %5116, %59
  %5147 = fmul fast float %5146, %5118
  %5148 = fmul fast float %5147, %5145
  %5149 = fadd fast float %5148, 1.000000e+00
  %5150 = fmul fast float %5104, %5086
  %5151 = fmul fast float %5150, %5149
  %5152 = fmul fast float %5104, %5087
  %5153 = fmul fast float %5152, %5149
  %5154 = fmul fast float %5104, %5088
  %5155 = fmul fast float %5154, %5149
  %5156 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5157 = fcmp fast ogt float %5156, 0x3E7FF19E20000000
  %5158 = fdiv fast float 1.000000e+00, %5156
  %5159 = select i1 %5157, float %5158, float 0.000000e+00
  %5160 = fmul fast float %5159, %4739
  %5161 = fmul fast float %5159, %4740
  %5162 = fmul fast float %5159, %4741
  %5163 = fadd fast float %5160, -1.000000e+00
  %5164 = fadd fast float %5161, -1.000000e+00
  %5165 = fadd fast float %5162, -1.000000e+00
  %5166 = fmul fast float %5163, 5.000000e-01
  %5167 = fmul fast float %5164, 5.000000e-01
  %5168 = fmul fast float %5165, 5.000000e-01
  %5169 = fadd fast float %5166, 1.000000e+00
  %5170 = fadd fast float %5167, 1.000000e+00
  %5171 = fadd fast float %5168, 1.000000e+00
  %5172 = fsub fast float %5132, %5169
  %5173 = fsub fast float %5133, %5170
  %5174 = fsub fast float %5134, %5171
  %5175 = fmul fast float %5172, %5136
  %5176 = fmul fast float %5173, %5136
  %5177 = fmul fast float %5174, %5136
  %5178 = fadd fast float %5175, %5169
  %5179 = fadd fast float %5176, %5170
  %5180 = fadd fast float %5177, %5171
  %5181 = fmul fast float %5099, %5033
  %5182 = fmul fast float %5100, %5034
  %5183 = fmul fast float %5101, %5035
  %5184 = fsub fast float 1.000000e+00, %4787
  %5185 = bitcast float %5184 to i32
  %5186 = sitofp i32 %5185 to float
  %5187 = fmul fast float %5186, 5.000000e+00
  %5188 = fadd fast float %5187, 0xC1EFBF8940000000
  %5189 = fptosi float %5188 to i32
  %5190 = bitcast i32 %5189 to float
  %5191 = fmul fast float %5190, %59
  %5192 = fmul fast float %5191, %5116
  %5193 = fmul fast float %5192, %5117
  %5194 = fmul fast float %5193, %5141
  %5195 = fmul fast float %5150, %5194
  %5196 = fmul fast float %5195, %5178
  %5197 = fmul fast float %5152, %5194
  %5198 = fmul fast float %5197, %5179
  %5199 = fmul fast float %5154, %5194
  %5200 = fmul fast float %5199, %5180
  %5201 = fmul fast float %5151, %1256
  %5202 = fmul fast float %5153, %1256
  %5203 = fmul fast float %5155, %1256
  %5204 = fadd fast float %5181, %3519
  %5205 = fadd fast float %5204, %5196
  %5206 = fmul fast float %5205, %1256
  %5207 = fadd fast float %5182, %3521
  %5208 = fadd fast float %5207, %5198
  %5209 = fmul fast float %5208, %1256
  %5210 = fadd fast float %5183, %3523
  %5211 = fadd fast float %5210, %5200
  %5212 = fmul fast float %5211, %1256
  %5213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.f32 %5213, 3
  %5215 = fcmp fast oeq float %5214, 0.000000e+00
  br i1 %5215, label %6261, label %5216

; <label>:5216                                    ; preds = %5083
  %5217 = extractvalue %dx.types.CBufRet.f32 %5213, 0
  %5218 = extractvalue %dx.types.CBufRet.f32 %5213, 1
  %5219 = extractvalue %dx.types.CBufRet.f32 %5213, 2
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.CBufRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.CBufRet.f32 %5220, 2
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5227 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5222, float %5223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = select i1 %265, float %5225, float %5221
  %5229 = select i1 %265, float %5227, float %5222
  %5230 = select i1 %265, float %5226, float %5223
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 2
  %5233 = fmul fast float %5232, %119
  %5234 = fmul fast float %5232, %121
  %5235 = fmul fast float %5232, %123
  %5236 = fadd fast float %5233, %193
  %5237 = fadd fast float %5234, %194
  %5238 = fadd fast float %5235, %195
  %5239 = fcmp fast olt float %5214, 0.000000e+00
  br i1 %5239, label %5879, label %5240

; <label>:5240                                    ; preds = %5216
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.CBufRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.CBufRet.f32 %5241, 2
  %5245 = extractvalue %dx.types.CBufRet.f32 %5241, 3
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.CBufRet.f32 %5246, 2
  %5250 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.CBufRet.f32 %5251, 2
  %5255 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5256 = fmul fast float %5242, %5236
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5243, float %5256)  ; FMad(a,b,c)
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5244, float %5257)  ; FMad(a,b,c)
  %5259 = fadd fast float %5258, %5245
  %5260 = fmul fast float %5247, %5236
  %5261 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5248, float %5260)  ; FMad(a,b,c)
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5249, float %5261)  ; FMad(a,b,c)
  %5263 = fadd fast float %5262, %5250
  %5264 = fmul fast float %5252, %5236
  %5265 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5253, float %5264)  ; FMad(a,b,c)
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5254, float %5265)  ; FMad(a,b,c)
  %5267 = fadd fast float %5266, %5255
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 0
  %5270 = fcmp fast une float %5269, 0.000000e+00
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5275 = fmul fast float %5274, %5259
  %5276 = fmul fast float %5274, %5263
  %5277 = fadd fast float %5275, %5272
  %5278 = fadd fast float %5276, %5273
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.CBufRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.CBufRet.f32 %5279, 3
  %5283 = fmul fast float %5282, %5259
  %5284 = fmul fast float %5282, %5263
  %5285 = fadd fast float %5283, %5280
  %5286 = fadd fast float %5284, %5281
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 1
  %5289 = fsub fast float %5288, %5267
  %5290 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5291 = fmul fast float %5289, %5290
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  br i1 %5270, label %5354, label %5294

; <label>:5294                                    ; preds = %5240
  %5295 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 2
  %5298 = fadd fast float %5297, %5295
  %5299 = fcmp fast ogt float %5298, 0.000000e+00
  br i1 %5299, label %5300, label %5324

; <label>:5300                                    ; preds = %5294
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5304 = fsub fast float %5285, %5302
  %5305 = fsub fast float %5286, %5303
  %5306 = fcmp fast olt float %5304, 0.000000e+00
  %5307 = fcmp fast olt float %5305, 0.000000e+00
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5310 = extractvalue %dx.types.CBufRet.f32 %5308, 1
  %5311 = extractvalue %dx.types.CBufRet.f32 %5308, 2
  %5312 = extractvalue %dx.types.CBufRet.f32 %5308, 3
  %5313 = select i1 %5306, float %5309, float %5311
  %5314 = select i1 %5307, float %5310, float %5312
  %5315 = fmul fast float %5313, %5304
  %5316 = fmul fast float %5314, %5305
  %5317 = call float @dx.op.unary.f32(i32 6, float %5315)  ; FAbs(value)
  %5318 = call float @dx.op.unary.f32(i32 6, float %5316)  ; FAbs(value)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5320 = call float @dx.op.binary.f32(i32 35, float %5317, float %5318)  ; FMax(a,b)
  %5321 = fsub fast float %5319, %5320
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fmul fast float %5322, %5293
  br label %5324

; <label>:5324                                    ; preds = %5300, %5294
  %5325 = phi float [ %5323, %5300 ], [ 0.000000e+00, %5294 ]
  %5326 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5327 = extractvalue %dx.types.CBufRet.f32 %5296, 1
  %5328 = fadd fast float %5327, %5326
  %5329 = fcmp fast ogt float %5328, 0.000000e+00
  br i1 %5329, label %5330, label %5354

; <label>:5330                                    ; preds = %5324
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.CBufRet.f32 %5331, 1
  %5334 = fsub fast float %5277, %5332
  %5335 = fsub fast float %5278, %5333
  %5336 = fcmp fast olt float %5334, 0.000000e+00
  %5337 = fcmp fast olt float %5335, 0.000000e+00
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 0
  %5340 = extractvalue %dx.types.CBufRet.f32 %5338, 1
  %5341 = extractvalue %dx.types.CBufRet.f32 %5338, 2
  %5342 = extractvalue %dx.types.CBufRet.f32 %5338, 3
  %5343 = select i1 %5336, float %5339, float %5341
  %5344 = select i1 %5337, float %5340, float %5342
  %5345 = fmul fast float %5343, %5334
  %5346 = fmul fast float %5344, %5335
  %5347 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5348 = call float @dx.op.unary.f32(i32 6, float %5346)  ; FAbs(value)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5350 = call float @dx.op.binary.f32(i32 35, float %5347, float %5348)  ; FMax(a,b)
  %5351 = fsub fast float %5349, %5350
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fmul fast float %5352, %5293
  br label %5354

; <label>:5354                                    ; preds = %5330, %5324, %5240
  %5355 = phi float [ 0.000000e+00, %5240 ], [ %5353, %5330 ], [ 0.000000e+00, %5324 ]
  %5356 = phi float [ 0.000000e+00, %5240 ], [ %5325, %5330 ], [ %5325, %5324 ]
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 1
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5361 = extractvalue %dx.types.CBufRet.f32 %5360, 0
  %5362 = extractvalue %dx.types.CBufRet.f32 %5360, 1
  %5363 = fsub fast float %5259, %5361
  %5364 = fsub fast float %5263, %5362
  %5365 = fcmp fast olt float %5363, 0.000000e+00
  %5366 = fcmp fast olt float %5364, 0.000000e+00
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 0
  %5369 = extractvalue %dx.types.CBufRet.f32 %5367, 1
  %5370 = extractvalue %dx.types.CBufRet.f32 %5367, 2
  %5371 = extractvalue %dx.types.CBufRet.f32 %5367, 3
  %5372 = select i1 %5365, float %5368, float %5370
  %5373 = select i1 %5366, float %5369, float %5371
  %5374 = fmul fast float %5372, %5363
  %5375 = fmul fast float %5373, %5364
  %5376 = call float @dx.op.unary.f32(i32 6, float %5374)  ; FAbs(value)
  %5377 = call float @dx.op.unary.f32(i32 6, float %5375)  ; FAbs(value)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5379 = call float @dx.op.binary.f32(i32 35, float %5376, float %5377)  ; FMax(a,b)
  %5380 = fsub fast float %5378, %5379
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = call float @dx.op.binary.f32(i32 36, float %5381, float %5359)  ; FMin(a,b)
  %5383 = fmul fast float %5382, %5293
  %5384 = fsub fast float %5355, %5383
  %5385 = fsub fast float %5356, %5355
  %5386 = fsub fast float %5385, %5383
  %5387 = call float @dx.op.binary.f32(i32 35, float %5355, float %5356)  ; FMax(a,b)
  %5388 = call float @dx.op.binary.f32(i32 35, float %5383, float %5387)  ; FMax(a,b)
  %5389 = fcmp fast olt float %5388, 1.000000e+00
  br i1 %5389, label %5390, label %5788, !dx.controlflow.hints !93

; <label>:5390                                    ; preds = %5354
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 0
  %5393 = fcmp fast une float %5392, 0.000000e+00
  br i1 %5393, label %5394, label %5788, !dx.controlflow.hints !94

; <label>:5394                                    ; preds = %5390
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5404 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5407 = extractvalue %dx.types.CBufRet.f32 %5405, 1
  %5408 = extractvalue %dx.types.CBufRet.f32 %5405, 2
  %5409 = extractvalue %dx.types.CBufRet.f32 %5405, 3
  %5410 = fmul fast float %5396, %5236
  %5411 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5397, float %5410)  ; FMad(a,b,c)
  %5412 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5398, float %5411)  ; FMad(a,b,c)
  %5413 = fadd fast float %5412, %5399
  %5414 = fmul fast float %5401, %5236
  %5415 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5402, float %5414)  ; FMad(a,b,c)
  %5416 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5403, float %5415)  ; FMad(a,b,c)
  %5417 = fadd fast float %5416, %5404
  %5418 = fmul fast float %5406, %5236
  %5419 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5407, float %5418)  ; FMad(a,b,c)
  %5420 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5408, float %5419)  ; FMad(a,b,c)
  %5421 = fadd fast float %5420, %5409
  %5422 = fcmp fast oge float %5413, 1.000000e+00
  %5423 = fcmp fast oge float %5417, 1.000000e+00
  %5424 = or i1 %5422, %5423
  %5425 = fcmp fast olt float %5413, 0.000000e+00
  %5426 = fcmp fast olt float %5417, 0.000000e+00
  %5427 = or i1 %5425, %5426
  %5428 = or i1 %5424, %5427
  br i1 %5428, label %5788, label %5429, !dx.controlflow.hints !95

; <label>:5429                                    ; preds = %5394
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.i32 %5434, 2
  %5436 = uitofp i32 %5435 to float
  %5437 = extractvalue %dx.types.CBufRet.i32 %5434, 3
  %5438 = uitofp i32 %5437 to float
  %5439 = extractvalue %dx.types.CBufRet.f32 %5430, 3
  %5440 = fmul fast float %5439, 2.000000e+00
  %5441 = fsub fast float %5413, %5431
  %5442 = fsub fast float %5417, %5432
  %5443 = fmul fast float %5440, %5441
  %5444 = fmul fast float %5440, %5442
  %5445 = fdiv fast float 1.000000e+00, %5219
  %5446 = fmul fast float %5444, %5445
  %5447 = call float @dx.op.unary.f32(i32 6, float %5446)  ; FAbs(value)
  %5448 = fmul fast float %5433, %5238
  %5449 = fmul fast float %5448, %5440
  %5450 = call float @dx.op.unary.f32(i32 6, float %5449)  ; FAbs(value)
  %5451 = call float @dx.op.unary.f32(i32 6, float %5443)  ; FAbs(value)
  %5452 = call float @dx.op.binary.f32(i32 35, float %5450, float %5447)  ; FMax(a,b)
  %5453 = call float @dx.op.binary.f32(i32 35, float %5451, float %5452)  ; FMax(a,b)
  %5454 = fmul fast float %5453, 2.000000e+00
  %5455 = call float @dx.op.unary.f32(i32 23, float %5454)  ; Log(value)
  %5456 = call float @dx.op.binary.f32(i32 35, float %5455, float %5436)  ; FMax(a,b)
  %5457 = call float @dx.op.unary.f32(i32 22, float %5456)  ; Frc(value)
  %5458 = fadd fast float %5457, 0xBFEA666660000000
  %5459 = fmul fast float %5458, 8.000000e+00
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5461 = call float @dx.op.unary.f32(i32 27, float %5456)  ; Round_ni(value)
  %5462 = fadd fast float %5461, %5460
  %5463 = call float @dx.op.binary.f32(i32 36, float %5462, float %5438)  ; FMin(a,b)
  %5464 = call float @dx.op.unary.f32(i32 27, float %5463)  ; Round_ni(value)
  %5465 = fsub fast float -0.000000e+00, %5464
  %5466 = call float @dx.op.unary.f32(i32 21, float %5465)  ; Exp(value)
  %5467 = fmul fast float %5466, %5440
  %5468 = fmul fast float %5467, %5413
  %5469 = fmul fast float %5467, %5417
  %5470 = fmul fast float %5468, 2.500000e-01
  %5471 = fmul fast float %5469, 2.500000e-01
  %5472 = fadd fast float %5470, 5.000000e-01
  %5473 = fadd fast float %5471, 5.000000e-01
  %5474 = fsub fast float %5438, %5436
  %5475 = fptoui float %5474 to i32
  %5476 = add i32 %5475, 320
  %5477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %5476)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5477, 0
  %5479 = extractvalue %dx.types.CBufRet.f32 %5477, 1
  %5480 = fcmp fast une float %5463, %5438
  %5481 = fsub fast float %5413, %5478
  %5482 = fsub fast float %5417, %5479
  %5483 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5484 = call float @dx.op.unary.f32(i32 6, float %5482)  ; FAbs(value)
  %5485 = fmul fast float %5483, %5467
  %5486 = fmul fast float %5484, %5467
  %5487 = fcmp fast olt float %5485, 1.000000e+00
  %5488 = fcmp fast olt float %5486, 1.000000e+00
  %5489 = and i1 %5487, %5488
  %5490 = or i1 %5480, %5489
  br i1 %5490, label %5491, label %5788, !dx.controlflow.hints !96

; <label>:5491                                    ; preds = %5429
  %5492 = fmul fast float %5469, 5.000000e-01
  %5493 = fmul fast float %5468, 5.000000e-01
  %5494 = fadd fast float %5492, 5.000000e-01
  %5495 = fadd fast float %5493, 5.000000e-01
  %5496 = sitofp i32 %5435 to float
  %5497 = fsub fast float %5463, %5496
  %5498 = call float @dx.op.unary.f32(i32 27, float %5497)  ; Round_ni(value)
  %5499 = call float @dx.op.unary.f32(i32 22, float %5463)  ; Frc(value)
  %5500 = call float @dx.op.unary.f32(i32 22, float %5495)  ; Frc(value)
  %5501 = call float @dx.op.unary.f32(i32 22, float %5494)  ; Frc(value)
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %5500, float %5501, float %5498, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.ResRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.ResRet.f32 %5502, 2
  %5506 = extractvalue %dx.types.ResRet.f32 %5502, 3
  %5507 = fcmp fast ogt float %5499, 0.000000e+00
  br i1 %5507, label %5508, label %5529, !dx.controlflow.hints !97

; <label>:5508                                    ; preds = %5491
  %5509 = fadd fast float %5498, 1.000000e+00
  %5510 = call float @dx.op.unary.f32(i32 22, float %5472)  ; Frc(value)
  %5511 = call float @dx.op.unary.f32(i32 22, float %5473)  ; Frc(value)
  %5512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %5510, float %5511, float %5509, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.ResRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.ResRet.f32 %5512, 2
  %5516 = extractvalue %dx.types.ResRet.f32 %5512, 3
  %5517 = fsub fast float %5513, %5503
  %5518 = fsub fast float %5514, %5504
  %5519 = fsub fast float %5515, %5505
  %5520 = fsub fast float %5516, %5506
  %5521 = fmul fast float %5517, %5499
  %5522 = fmul fast float %5518, %5499
  %5523 = fmul fast float %5519, %5499
  %5524 = fmul fast float %5520, %5499
  %5525 = fadd fast float %5521, %5503
  %5526 = fadd fast float %5522, %5504
  %5527 = fadd fast float %5523, %5505
  %5528 = fadd fast float %5524, %5506
  br label %5529

; <label>:5529                                    ; preds = %5508, %5491
  %5530 = phi float [ %5525, %5508 ], [ %5503, %5491 ]
  %5531 = phi float [ %5526, %5508 ], [ %5504, %5491 ]
  %5532 = phi float [ %5527, %5508 ], [ %5505, %5491 ]
  %5533 = phi float [ %5528, %5508 ], [ %5506, %5491 ]
  %5534 = fadd fast float %5530, -5.000000e-01
  %5535 = fadd fast float %5532, -5.000000e-01
  %5536 = fmul fast float %5534, 0xBFD5555560000000
  %5537 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5535, float %5536)  ; FMad(a,b,c)
  %5538 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5531, float 0.000000e+00)  ; FMad(a,b,c)
  %5539 = fadd fast float %5538, %5533
  %5540 = fmul fast float %5534, -7.500000e-01
  %5541 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5535, float %5540)  ; FMad(a,b,c)
  %5542 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5531, float 0.000000e+00)  ; FMad(a,b,c)
  %5543 = fadd fast float %5542, %5533
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 0
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 1
  %5549 = extractvalue %dx.types.CBufRet.f32 %5546, 2
  %5550 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5551 = fsub fast float %5547, %5537
  %5552 = fsub fast float %5548, %5539
  %5553 = fsub fast float %5549, %5541
  %5554 = fsub fast float %5550, %5543
  %5555 = fmul fast float %5551, %5545
  %5556 = fmul fast float %5552, %5545
  %5557 = fmul fast float %5553, %5545
  %5558 = fmul fast float %5554, %5545
  %5559 = fadd fast float %5555, %5537
  %5560 = fadd fast float %5556, %5539
  %5561 = fadd fast float %5557, %5541
  %5562 = fadd fast float %5558, %5543
  %5563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5564 = extractvalue %dx.types.ResRet.i32 %5563, 0
  %5565 = and i32 %5564, 536870911
  %5566 = uitofp i32 %5565 to float
  %5567 = fmul fast float %5566, %5413
  %5568 = fmul fast float %5566, %5417
  %5569 = fptoui float %5567 to i32
  %5570 = fptoui float %5568 to i32
  %5571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5572 = extractvalue %dx.types.ResRet.i32 %5571, 0
  %5573 = and i32 %5572, 31
  %5574 = lshr i32 %5569, %5573
  %5575 = lshr i32 %5570, %5573
  %5576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5577 = extractvalue %dx.types.ResRet.i32 %5576, 0
  %5578 = and i32 %5577, 31
  %5579 = shl i32 1, %5578
  %5580 = call i32 @dx.op.binary.i32(i32 40, i32 %5579, i32 4)  ; UMin(a,b)
  %5581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5582 = extractvalue %dx.types.ResRet.i32 %5581, 0
  %5583 = extractvalue %dx.types.ResRet.i32 %5581, 1
  %5584 = icmp eq i32 %5580, 0
  br i1 %5584, label %5626, label %5585

; <label>:5585                                    ; preds = %5529
  br label %5586

; <label>:5586                                    ; preds = %5614, %5585
  %5587 = phi i32 [ %5617, %5614 ], [ 0, %5585 ]
  %5588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5589 = extractvalue %dx.types.ResRet.i32 %5588, 0
  %5590 = lshr i32 %5589, 16
  %5591 = and i32 %5590, 31
  %5592 = shl i32 %5575, %5591
  %5593 = add i32 %5592, %5574
  %5594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5595 = extractvalue %dx.types.ResRet.i32 %5594, 0
  %5596 = and i32 %5595, 31
  %5597 = shl i32 %5593, %5596
  %5598 = add i32 %5597, %5587
  %5599 = shl i32 %5598, 2
  %5600 = add i32 %5599, 32
  %5601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5600, i32 undef)  ; BufferLoad(srv,index,wot)
  %5602 = extractvalue %dx.types.ResRet.i32 %5601, 0
  %5603 = icmp slt i32 %5602, 0
  %5604 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5587
  %5605 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5587
  %5606 = bitcast float* %5604 to i32*
  %5607 = bitcast float* %5605 to i32*
  br i1 %5603, label %5608, label %5614

; <label>:5608                                    ; preds = %5586
  %5609 = and i32 %5602, 1073741823
  %5610 = add nuw nsw i32 %5609, 20
  %5611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5610, i32 undef)  ; BufferLoad(srv,index,wot)
  %5612 = extractvalue %dx.types.ResRet.i32 %5611, 0
  %5613 = extractvalue %dx.types.ResRet.i32 %5611, 1
  br label %5614

; <label>:5614                                    ; preds = %5608, %5586
  %5615 = phi i32 [ %5612, %5608 ], [ %5582, %5586 ]
  %5616 = phi i32 [ %5613, %5608 ], [ %5583, %5586 ]
  store i32 %5615, i32* %5606, align 4
  store i32 %5616, i32* %5607, align 4
  %5617 = add nuw i32 %5587, 1
  %5618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.i32 %5618, 2
  %5620 = icmp eq i32 %5619, 0
  %5621 = icmp ugt i32 %5602, -1073741825
  %5622 = and i1 %5621, %5620
  %5623 = icmp ult i32 %5617, %5580
  %5624 = and i1 %5622, %5623
  br i1 %5624, label %5586, label %5625

; <label>:5625                                    ; preds = %5614
  br label %5626

; <label>:5626                                    ; preds = %5625, %5529
  %5627 = phi i32 [ 0, %5529 ], [ %5617, %5625 ]
  %5628 = extractvalue %dx.types.CBufRet.f32 %5391, 2
  %5629 = fptoui float %5628 to i32
  %5630 = icmp eq i32 %5629, 0
  br i1 %5630, label %5682, label %5631

; <label>:5631                                    ; preds = %5626
  br label %5632

; <label>:5632                                    ; preds = %5677, %5631
  %5633 = phi i32 [ %5678, %5677 ], [ %5627, %5631 ]
  %5634 = phi i32 [ %5679, %5677 ], [ 0, %5631 ]
  %5635 = lshr i32 %5634, 2
  %5636 = and i32 %5634, 3
  %5637 = add nuw nsw i32 %5635, 83
  %5638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %5637)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.i32 %5638, 0
  %5640 = extractvalue %dx.types.CBufRet.i32 %5638, 1
  %5641 = extractvalue %dx.types.CBufRet.i32 %5638, 2
  %5642 = extractvalue %dx.types.CBufRet.i32 %5638, 3
  %5643 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %5639, i32* %5643, align 4
  %5644 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %5640, i32* %5644, align 4
  %5645 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %5641, i32* %5645, align 4
  %5646 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %5642, i32* %5646, align 4
  %5647 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %5636
  %5648 = load i32, i32* %5647, align 4, !tbaa !98, !noalias !102
  %5649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5650 = extractvalue %dx.types.ResRet.i32 %5649, 0
  %5651 = lshr i32 %5650, 16
  %5652 = and i32 %5651, 31
  %5653 = shl i32 %5575, %5652
  %5654 = add i32 %5653, %5574
  %5655 = shl i32 %5654, 2
  %5656 = add i32 %5655, %5648
  %5657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5656, i32 undef)  ; BufferLoad(srv,index,wot)
  %5658 = extractvalue %dx.types.ResRet.i32 %5657, 0
  %5659 = icmp eq i32 %5658, 0
  br i1 %5659, label %5677, label %5660

; <label>:5660                                    ; preds = %5632
  %5661 = icmp slt i32 %5658, 0
  %5662 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5633
  %5663 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5633
  %5664 = bitcast float* %5662 to i32*
  %5665 = bitcast float* %5663 to i32*
  br i1 %5661, label %5666, label %5673

; <label>:5666                                    ; preds = %5660
  %5667 = and i32 %5658, 1073741823
  %5668 = add i32 %5648, 20
  %5669 = add i32 %5668, %5667
  %5670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5669, i32 undef)  ; BufferLoad(srv,index,wot)
  %5671 = extractvalue %dx.types.ResRet.i32 %5670, 0
  %5672 = extractvalue %dx.types.ResRet.i32 %5670, 1
  br label %5673

; <label>:5673                                    ; preds = %5666, %5660
  %5674 = phi i32 [ %5671, %5666 ], [ %5582, %5660 ]
  %5675 = phi i32 [ %5672, %5666 ], [ %5583, %5660 ]
  store i32 %5674, i32* %5664, align 4
  store i32 %5675, i32* %5665, align 4
  %5676 = add i32 %5633, 1
  br label %5677

; <label>:5677                                    ; preds = %5673, %5632
  %5678 = phi i32 [ %5633, %5632 ], [ %5676, %5673 ]
  %5679 = add nuw i32 %5634, 1
  %5680 = icmp eq i32 %5679, %5629
  br i1 %5680, label %5681, label %5632

; <label>:5681                                    ; preds = %5677
  br label %5682

; <label>:5682                                    ; preds = %5681, %5626
  %5683 = phi i32 [ %5627, %5626 ], [ %5678, %5681 ]
  %5684 = icmp eq i32 %5683, 1
  %5685 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %5686 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %5684, label %5687, label %5690

; <label>:5687                                    ; preds = %5682
  %5688 = load float, float* %5685, align 4
  %5689 = load float, float* %5686, align 4
  br label %5717

; <label>:5690                                    ; preds = %5682
  %5691 = load float, float* %5685, align 4
  %5692 = load float, float* %5686, align 4
  %5693 = fdiv fast float 1.000000e+00, %5692
  %5694 = fsub fast float %5691, %5693
  %5695 = icmp ugt i32 %5683, 1
  br i1 %5695, label %5696, label %5712

; <label>:5696                                    ; preds = %5690
  br label %5697

; <label>:5697                                    ; preds = %5697, %5696
  %5698 = phi float [ %5707, %5697 ], [ %5694, %5696 ]
  %5699 = phi float [ %5708, %5697 ], [ %5691, %5696 ]
  %5700 = phi i32 [ %5709, %5697 ], [ 1, %5696 ]
  %5701 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5700
  %5702 = load float, float* %5701, align 4
  %5703 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5700
  %5704 = load float, float* %5703, align 4
  %5705 = fdiv fast float 1.000000e+00, %5704
  %5706 = fsub fast float %5702, %5705
  %5707 = call float @dx.op.binary.f32(i32 36, float %5698, float %5706)  ; FMin(a,b)
  %5708 = call float @dx.op.binary.f32(i32 35, float %5699, float %5702)  ; FMax(a,b)
  %5709 = add nuw i32 %5700, 1
  %5710 = icmp eq i32 %5709, %5683
  br i1 %5710, label %5711, label %5697

; <label>:5711                                    ; preds = %5697
  br label %5712

; <label>:5712                                    ; preds = %5711, %5690
  %5713 = phi float [ %5694, %5690 ], [ %5707, %5711 ]
  %5714 = phi float [ %5691, %5690 ], [ %5708, %5711 ]
  %5715 = fsub fast float %5714, %5713
  %5716 = fdiv fast float 1.000000e+00, %5715
  br label %5717

; <label>:5717                                    ; preds = %5712, %5687
  %5718 = phi float [ %5688, %5687 ], [ %5714, %5712 ]
  %5719 = phi float [ %5689, %5687 ], [ %5716, %5712 ]
  %5720 = fadd fast float %5421, %5718
  %5721 = fmul fast float %5720, %5719
  %5722 = call float @dx.op.unary.f32(i32 7, float %5721)  ; Saturate(value)
  %5723 = fmul fast float %5722, 2.000000e+00
  %5724 = fsub fast float 1.000000e+00, %5723
  %5725 = fmul fast float %5559, %5559
  %5726 = fsub fast float %5560, %5725
  %5727 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5726)  ; FMax(a,b)
  %5728 = fdiv fast float 1.000000e+00, %5727
  %5729 = fmul fast float %5560, %5559
  %5730 = fsub fast float %5561, %5729
  %5731 = fsub fast float %5724, %5559
  %5732 = fmul fast float %5724, %5724
  %5733 = fsub fast float %5732, %5560
  %5734 = fmul fast float %5728, %5730
  %5735 = fmul fast float %5734, %5731
  %5736 = fsub fast float %5733, %5735
  %5737 = fmul fast float %5560, %5560
  %5738 = fsub fast float %5562, %5737
  %5739 = fmul fast float %5730, %5730
  %5740 = fmul fast float %5739, %5728
  %5741 = fsub fast float %5738, %5740
  %5742 = fdiv fast float %5736, %5741
  %5743 = fmul fast float %5742, %5730
  %5744 = fsub fast float %5731, %5743
  %5745 = fmul fast float %5744, %5728
  %5746 = fmul fast float %5745, %5559
  %5747 = fsub fast float 1.000000e+00, %5746
  %5748 = fmul fast float %5742, %5560
  %5749 = fsub fast float %5747, %5748
  %5750 = fmul fast float %5745, %5745
  %5751 = fmul fast float %5742, 4.000000e+00
  %5752 = fmul fast float %5751, %5749
  %5753 = fsub fast float %5750, %5752
  %5754 = call float @dx.op.unary.f32(i32 24, float %5753)  ; Sqrt(value)
  %5755 = fcmp fast oge float %5745, 0.000000e+00
  %5756 = fsub fast float -0.000000e+00, %5754
  %5757 = select i1 %5755, float %5756, float %5754
  %5758 = fsub fast float %5757, %5745
  %5759 = fdiv fast float %5758, %5742
  %5760 = fdiv fast float %5749, %5758
  %5761 = fmul fast float %5759, 5.000000e-01
  %5762 = fmul fast float %5760, 2.000000e+00
  %5763 = select i1 %5755, float %5761, float %5762
  %5764 = select i1 %5755, float %5762, float %5761
  %5765 = call float @dx.op.binary.f32(i32 35, float %5763, float %5764)  ; FMax(a,b)
  %5766 = call float @dx.op.binary.f32(i32 36, float %5763, float %5764)  ; FMin(a,b)
  %5767 = fcmp fast ogt float %5724, %5765
  %5768 = fsub fast float %5724, %5766
  %5769 = fsub fast float %5724, %5765
  %5770 = fsub fast float %5765, %5766
  %5771 = select i1 %5767, float %5769, float %5770
  %5772 = fmul float %5768, %5771
  %5773 = select i1 %5767, float %5766, float %5724
  %5774 = fcmp fast ogt float %5724, %5766
  %5775 = fmul fast float %5773, %5765
  %5776 = fadd fast float %5773, %5765
  %5777 = fmul fast float %5776, %5559
  %5778 = fadd fast float %5775, %5560
  %5779 = fsub fast float %5778, %5777
  %5780 = fdiv fast float %5779, %5772
  %5781 = select i1 %5774, float %5780, float 0.000000e+00
  %5782 = fsub fast float 1.000000e+00, %5781
  %5783 = select i1 %5767, float %5782, float %5781
  %5784 = call float @dx.op.unary.f32(i32 7, float %5783)  ; Saturate(value)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5544, 3
  %5786 = fmul fast float %5785, %5784
  %5787 = fsub fast float 1.000000e+00, %5786
  br label %5788

; <label>:5788                                    ; preds = %5717, %5429, %5394, %5390, %5354
  %5789 = phi float [ 1.000000e+00, %5354 ], [ %5787, %5717 ], [ 1.000000e+00, %5394 ], [ 1.000000e+00, %5429 ], [ 1.000000e+00, %5390 ]
  %5790 = fcmp fast ogt float %5386, 0.000000e+00
  br i1 %5790, label %5791, label %5799, !dx.controlflow.hints !111

; <label>:5791                                    ; preds = %5788
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5794 = fadd fast float %5793, %5267
  %5795 = call float @dx.op.binary.f32(i32 35, float %5794, float 0.000000e+00)  ; FMax(a,b)
  %5796 = fadd fast float %5795, 0x3F10000000000000
  %5797 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %5285, float %5286, float undef, float undef, i32 0, i32 0, i32 undef, float %5796)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 0
  br label %5799

; <label>:5799                                    ; preds = %5791, %5788
  %5800 = phi float [ %5798, %5791 ], [ 1.000000e+00, %5788 ]
  %5801 = fcmp fast ogt float %5384, 0.000000e+00
  br i1 %5801, label %5802, label %5810, !dx.controlflow.hints !112

; <label>:5802                                    ; preds = %5799
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5805 = fadd fast float %5804, %5267
  %5806 = call float @dx.op.binary.f32(i32 35, float %5805, float 0.000000e+00)  ; FMax(a,b)
  %5807 = fadd fast float %5806, 0x3F10000000000000
  %5808 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %5277, float %5278, float undef, float undef, i32 0, i32 0, i32 undef, float %5807)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  br label %5810

; <label>:5810                                    ; preds = %5802, %5799
  %5811 = phi float [ %5809, %5802 ], [ 1.000000e+00, %5799 ]
  %5812 = fcmp fast ogt float %5383, 0.000000e+00
  br i1 %5812, label %5813, label %5825, !dx.controlflow.hints !113

; <label>:5813                                    ; preds = %5810
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 0
  %5816 = fadd fast float %5815, %5267
  %5817 = call float @dx.op.binary.f32(i32 35, float %5816, float 0.000000e+00)  ; FMax(a,b)
  %5818 = fadd fast float %5817, 0x3F10000000000000
  br i1 %5270, label %5819, label %5822, !dx.controlflow.hints !114

; <label>:5819                                    ; preds = %5813
  %5820 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %5259, float %5263, float undef, float undef, i32 0, i32 0, i32 undef, float %5818)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  br label %5825

; <label>:5822                                    ; preds = %5813
  %5823 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %5259, float %5263, float undef, float undef, i32 0, i32 0, i32 undef, float %5818)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5824 = extractvalue %dx.types.ResRet.f32 %5823, 0
  br label %5825

; <label>:5825                                    ; preds = %5822, %5819, %5810
  %5826 = phi float [ %5821, %5819 ], [ %5824, %5822 ], [ 1.000000e+00, %5810 ]
  %5827 = fsub fast float %5800, %5789
  %5828 = fmul fast float %5827, %5356
  %5829 = fadd fast float %5828, %5789
  %5830 = fsub fast float %5811, %5829
  %5831 = fmul fast float %5830, %5355
  %5832 = fadd fast float %5831, %5829
  %5833 = fsub fast float %5826, %5832
  %5834 = fmul fast float %5833, %5383
  %5835 = fadd fast float %5834, %5832
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5838 = fcmp fast ogt float %5837, 0.000000e+00
  br i1 %5838, label %5839, label %5879, !dx.controlflow.hints !115

; <label>:5839                                    ; preds = %5825
  %5840 = fcmp fast ugt float %5837, 0.000000e+00
  br i1 %5840, label %5841, label %5876

; <label>:5841                                    ; preds = %5839
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.CBufRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.CBufRet.f32 %5842, 2
  %5846 = extractvalue %dx.types.CBufRet.f32 %5842, 3
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5850 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5851 = extractvalue %dx.types.CBufRet.f32 %5847, 3
  %5852 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5858 = fadd fast float %5855, %5236
  %5859 = fadd fast float %5856, %5237
  %5860 = fadd fast float %5857, %5238
  %5861 = fmul fast float %5858, %5843
  %5862 = call float @dx.op.tertiary.f32(i32 46, float %5844, float %5859, float %5861)  ; FMad(a,b,c)
  %5863 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5860, float %5862)  ; FMad(a,b,c)
  %5864 = fadd fast float %5863, %5846
  %5865 = fmul fast float %5858, %5848
  %5866 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %5859, float %5865)  ; FMad(a,b,c)
  %5867 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %5860, float %5866)  ; FMad(a,b,c)
  %5868 = fadd fast float %5867, %5851
  %5869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %5864, float %5868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5870 = extractvalue %dx.types.ResRet.f32 %5869, 0
  %5871 = fmul fast float %5870, %5853
  %5872 = fadd fast float %5871, %5852
  %5873 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5874 = fmul fast float %5873, %5837
  %5875 = fsub fast float 1.000000e+00, %5874
  br label %5876

; <label>:5876                                    ; preds = %5841, %5839
  %5877 = phi float [ %5875, %5841 ], [ 1.000000e+00, %5839 ]
  %5878 = fmul fast float %5877, %5835
  br label %5879

; <label>:5879                                    ; preds = %5876, %5825, %5216
  %5880 = phi float [ 1.000000e+00, %5216 ], [ %5878, %5876 ], [ %5835, %5825 ]
  %5881 = call float @dx.op.binary.f32(i32 36, float %5880, float %5880)  ; FMin(a,b)
  %5882 = call float @dx.op.binary.f32(i32 36, float %5880, float %5881)  ; FMin(a,b)
  %5883 = fcmp fast ogt float %5882, 0.000000e+00
  br i1 %5883, label %5884, label %6044, !dx.controlflow.hints !116

; <label>:5884                                    ; preds = %5879
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.CBufRet.f32 %5885, 1
  %5888 = extractvalue %dx.types.CBufRet.f32 %5885, 2
  %5889 = extractvalue %dx.types.CBufRet.f32 %5885, 3
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5894 = extractvalue %dx.types.CBufRet.f32 %5890, 3
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %5897 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5898 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5899 = extractvalue %dx.types.CBufRet.f32 %5895, 3
  %5900 = fmul fast float %5886, %5236
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5887, float %5900)  ; FMad(a,b,c)
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5888, float %5901)  ; FMad(a,b,c)
  %5903 = fadd fast float %5902, %5889
  %5904 = fmul fast float %5891, %5236
  %5905 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5892, float %5904)  ; FMad(a,b,c)
  %5906 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5893, float %5905)  ; FMad(a,b,c)
  %5907 = fadd fast float %5906, %5894
  %5908 = fmul fast float %5896, %5236
  %5909 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5897, float %5908)  ; FMad(a,b,c)
  %5910 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5898, float %5909)  ; FMad(a,b,c)
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 3
  %5915 = fmul fast float %5914, %5903
  %5916 = fmul fast float %5914, %5907
  %5917 = fadd fast float %5915, %5912
  %5918 = fadd fast float %5916, %5913
  %5919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5920 = extractvalue %dx.types.CBufRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.CBufRet.f32 %5919, 1
  %5922 = fsub fast float %5917, %5920
  %5923 = fsub fast float %5918, %5921
  %5924 = fcmp fast olt float %5922, 0.000000e+00
  %5925 = fcmp fast olt float %5923, 0.000000e+00
  %5926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.CBufRet.f32 %5926, 1
  %5929 = extractvalue %dx.types.CBufRet.f32 %5926, 2
  %5930 = extractvalue %dx.types.CBufRet.f32 %5926, 3
  %5931 = select i1 %5924, float %5927, float %5929
  %5932 = select i1 %5925, float %5928, float %5930
  %5933 = fmul fast float %5931, %5922
  %5934 = fmul fast float %5932, %5923
  %5935 = call float @dx.op.unary.f32(i32 6, float %5933)  ; FAbs(value)
  %5936 = call float @dx.op.unary.f32(i32 6, float %5934)  ; FAbs(value)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5938 = call float @dx.op.binary.f32(i32 35, float %5935, float %5936)  ; FMax(a,b)
  %5939 = fsub fast float %5937, %5938
  %5940 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5941 = fcmp fast ogt float %5940, 0.000000e+00
  br i1 %5941, label %5942, label %5983, !dx.controlflow.hints !117

; <label>:5942                                    ; preds = %5884
  %5943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %5917, float %5918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5945 = fcmp fast ogt float %5944, 0.000000e+00
  br i1 %5945, label %5946, label %5978

; <label>:5946                                    ; preds = %5942
  %5947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %5917, float %5918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5948 = extractvalue %dx.types.ResRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.ResRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.ResRet.f32 %5947, 2
  %5951 = extractvalue %dx.types.ResRet.f32 %5947, 3
  %5952 = fsub fast float 1.000000e+00, %5899
  %5953 = fsub fast float %5952, %5910
  %5954 = fmul fast float %5953, 0x400921FB60000000
  %5955 = fadd fast float %5954, 0x3FF921FB60000000
  %5956 = call float @dx.op.unary.f32(i32 13, float %5955)  ; Sin(value)
  %5957 = fadd fast float %5956, -1.000000e+00
  %5958 = fmul fast float %5957, 0x3FD45F3060000000
  %5959 = fmul fast float %5953, 0x401921FB60000000
  %5960 = fadd fast float %5959, 0x400921FB60000000
  %5961 = call float @dx.op.unary.f32(i32 13, float %5960)  ; Sin(value)
  %5962 = fadd fast float %5961, 0x3E7777A5C0000000
  %5963 = fmul fast float %5962, 0x3FC45F3060000000
  %5964 = fmul fast float %5953, 0x4022D97C80000000
  %5965 = fadd fast float %5964, 0x4012D97C80000000
  %5966 = call float @dx.op.unary.f32(i32 13, float %5965)  ; Sin(value)
  %5967 = fadd fast float %5966, 1.000000e+00
  %5968 = fmul fast float %5967, 0x3FBB2995E0000000
  %5969 = fmul fast float %5953, 0x402921FB60000000
  %5970 = fadd fast float %5969, 0x401921FB60000000
  %5971 = call float @dx.op.unary.f32(i32 13, float %5970)  ; Sin(value)
  %5972 = fadd fast float %5971, 0xBE8777A5C0000000
  %5973 = fmul fast float %5972, 0x3FB45F3060000000
  %5974 = call float @dx.op.dot4.f32(i32 56, float %5948, float %5949, float %5950, float %5951, float %5958, float %5963, float %5968, float %5973)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5975 = fmul fast float %5974, 0xBFF7154760000000
  %5976 = call float @dx.op.unary.f32(i32 21, float %5975)  ; Exp(value)
  %5977 = call float @dx.op.unary.f32(i32 7, float %5976)  ; Saturate(value)
  br label %5978

; <label>:5978                                    ; preds = %5946, %5942
  %5979 = phi float [ %5977, %5946 ], [ 1.000000e+00, %5942 ]
  %5980 = fadd fast float %5979, -1.000000e+00
  %5981 = fmul fast float %5980, %5940
  %5982 = fadd fast float %5981, 1.000000e+00
  br label %5983

; <label>:5983                                    ; preds = %5978, %5884
  %5984 = phi float [ %5982, %5978 ], [ 1.000000e+00, %5884 ]
  %5985 = fmul fast float %5984, %5880
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 0
  %5988 = extractvalue %dx.types.CBufRet.f32 %5986, 1
  %5989 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %5990 = fadd fast float %5987, %193
  %5991 = fadd fast float %5988, %194
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 1
  %5994 = fsub fast float -0.000000e+00, %5990
  %5995 = fsub fast float -0.000000e+00, %5991
  %5996 = fsub fast float %4776, %5989
  %5997 = fadd fast float %5996, %5993
  %5998 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5994, float %5995, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5217, float %5218, float %5219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = fdiv fast float 1.000000e+00, %5999
  %6001 = fmul fast float %6000, %5998
  %6002 = fmul fast float %5217, %6001
  %6003 = fmul fast float %5218, %6001
  %6004 = fadd fast float %6002, %5990
  %6005 = fadd fast float %6003, %5991
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.CBufRet.f32 %6006, 1
  %6009 = fsub fast float %6004, %6007
  %6010 = fsub fast float %6005, %6008
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 2
  %6013 = extractvalue %dx.types.CBufRet.f32 %6011, 3
  %6014 = fmul fast float %6009, %6012
  %6015 = fmul fast float %6010, %6013
  %6016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6017 = extractvalue %dx.types.CBufRet.i32 %6016, 3
  %6018 = icmp eq i32 %6017, 0
  br i1 %6018, label %6024, label %6019

; <label>:6019                                    ; preds = %5983
  %6020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %6014, float %6015, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6021 = extractvalue %dx.types.ResRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.ResRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.ResRet.f32 %6020, 2
  br label %6029

; <label>:6024                                    ; preds = %5983
  %6025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %6014, float %6015, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  br label %6029

; <label>:6029                                    ; preds = %6024, %6019
  %6030 = phi float [ %6021, %6019 ], [ %6026, %6024 ]
  %6031 = phi float [ %6022, %6019 ], [ %6027, %6024 ]
  %6032 = phi float [ %6023, %6019 ], [ %6028, %6024 ]
  %6033 = extractvalue %dx.types.CBufRet.f32 %5992, 2
  %6034 = fmul fast float %6033, %6030
  %6035 = extractvalue %dx.types.CBufRet.f32 %5992, 0
  %6036 = fsub fast float %6001, %6035
  %6037 = fsub fast float %6036, %6034
  %6038 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6037)  ; FMax(a,b)
  %6039 = fmul fast float %6038, %6031
  %6040 = call float @dx.op.binary.f32(i32 36, float %6032, float %6039)  ; FMin(a,b)
  %6041 = fmul fast float %6040, 0xBFF7154760000000
  %6042 = call float @dx.op.unary.f32(i32 21, float %6041)  ; Exp(value)
  %6043 = fmul fast float %5985, %6042
  br label %6044

; <label>:6044                                    ; preds = %6029, %5879
  %6045 = phi float [ %6043, %6029 ], [ %5880, %5879 ]
  %6046 = call float @dx.op.binary.f32(i32 36, float %6045, float %6045)  ; FMin(a,b)
  %6047 = call float @dx.op.binary.f32(i32 36, float %6045, float %6046)  ; FMin(a,b)
  %6048 = fcmp fast ogt float %6047, 0.000000e+00
  br i1 %6048, label %6049, label %6261, !dx.controlflow.hints !118

; <label>:6049                                    ; preds = %6044
  %6050 = fmul fast float %6045, %5228
  %6051 = fmul fast float %6045, %5229
  %6052 = fmul fast float %6045, %5230
  %6053 = fsub fast float %195, %3951
  %6054 = fcmp fast ogt float %6053, 0.000000e+00
  %6055 = fmul fast float %5217, 5.120000e+02
  %6056 = fmul fast float %5218, 5.120000e+02
  %6057 = fmul fast float %5219, 5.120000e+02
  %6058 = fadd fast float %6057, %195
  %6059 = fsub fast float %3951, %6058
  %6060 = fmul fast float %6059, 2.000000e+00
  %6061 = fadd fast float %6060, %6058
  %6062 = select i1 %6054, float %6061, float %6058
  %6063 = fsub fast float %6062, %195
  %6064 = call float @dx.op.dot3.f32(i32 55, float %6055, float %6056, float %6063, float %6055, float %6056, float %6063)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = call float @dx.op.unary.f32(i32 25, float %6064)  ; Rsqrt(value)
  %6066 = fmul fast float %6065, %6055
  %6067 = fmul fast float %6065, %6056
  %6068 = fmul fast float %6065, %6063
  %6069 = fsub fast float %3951, %195
  %6070 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6069)  ; Dot3(ax,ay,az,bx,by,bz)
  %6071 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6066, float %6067, float %6068)  ; Dot3(ax,ay,az,bx,by,bz)
  %6072 = fdiv fast float 1.000000e+00, %6071
  %6073 = fmul fast float %6072, %6070
  %6074 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6053, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = fcmp fast ogt float %6074, 0.000000e+00
  %6076 = fcmp fast olt float %6074, 0.000000e+00
  %6077 = zext i1 %6075 to i32
  %6078 = zext i1 %6076 to i32
  %6079 = sub nsw i32 %6077, %6078
  %6080 = sitofp i32 %6079 to float
  %6081 = fsub fast float %6062, %3951
  %6082 = call float @dx.op.dot3.f32(i32 55, float %6055, float %6056, float %6081, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = fcmp fast ogt float %6082, 0.000000e+00
  %6084 = fcmp fast olt float %6082, 0.000000e+00
  %6085 = zext i1 %6083 to i32
  %6086 = zext i1 %6084 to i32
  %6087 = sub nsw i32 %6085, %6086
  %6088 = sitofp i32 %6087 to float
  %6089 = fcmp fast une float %6080, %6088
  br i1 %6089, label %6090, label %6100

; <label>:6090                                    ; preds = %6049
  %6091 = fmul fast float %6073, %6068
  %6092 = fmul fast float %6073, %6067
  %6093 = fmul fast float %6073, %6066
  %6094 = fmul fast float %6093, %6093
  %6095 = fmul fast float %6092, %6092
  %6096 = fadd fast float %6094, %6095
  %6097 = fmul fast float %6091, %6091
  %6098 = fadd fast float %6096, %6097
  %6099 = call float @dx.op.unary.f32(i32 24, float %6098)  ; Sqrt(value)
  br label %6110

; <label>:6100                                    ; preds = %6049
  %6101 = icmp slt i32 %6079, 0
  br i1 %6101, label %6102, label %6110

; <label>:6102                                    ; preds = %6100
  %6103 = fsub fast float %195, %6062
  %6104 = fmul fast float %6055, %6055
  %6105 = fmul fast float %6056, %6056
  %6106 = fadd fast float %6104, %6105
  %6107 = fmul fast float %6103, %6103
  %6108 = fadd fast float %6106, %6107
  %6109 = call float @dx.op.unary.f32(i32 24, float %6108)  ; Sqrt(value)
  br label %6110

; <label>:6110                                    ; preds = %6102, %6100, %6090
  %6111 = phi float [ %6099, %6090 ], [ %6109, %6102 ], [ 0.000000e+00, %6100 ]
  %6112 = fsub fast float -0.000000e+00, %6111
  %6113 = select i1 %6054, float -0.000000e+00, float %6112
  %6114 = fmul fast float %3952, 0x3FF7154760000000
  %6115 = fmul fast float %6114, %6113
  %6116 = fmul fast float %3953, 0x3FF7154760000000
  %6117 = fmul fast float %6116, %6113
  %6118 = fmul fast float %3954, 0x3FF7154760000000
  %6119 = fmul fast float %6118, %6113
  %6120 = call float @dx.op.unary.f32(i32 21, float %6115)  ; Exp(value)
  %6121 = call float @dx.op.unary.f32(i32 21, float %6117)  ; Exp(value)
  %6122 = call float @dx.op.unary.f32(i32 21, float %6119)  ; Exp(value)
  %6123 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6124 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6125 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  %6126 = fmul fast float %6050, %6123
  %6127 = fmul fast float %6051, %6124
  %6128 = fmul fast float %6052, %6125
  %6129 = fsub fast float %5217, %4779
  %6130 = fsub fast float %5218, %4780
  %6131 = fsub fast float %5219, %4781
  %6132 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6131, float %6129, float %6130, float %6131)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = call float @dx.op.unary.f32(i32 25, float %6132)  ; Rsqrt(value)
  %6134 = fmul fast float %6133, %6129
  %6135 = fmul fast float %6133, %6130
  %6136 = fmul fast float %6133, %6131
  %6137 = call float @dx.op.dot3.f32(i32 55, float %5217, float %5218, float %5219, float %4736, float %4737, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4783, float %4784, float %6134, float %6135, float %6136)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6140 = fmul fast float %6139, %6139
  %6141 = fmul fast float %6140, %4800
  %6142 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6143 = fmul fast float %6142, %6139
  %6144 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %4738, float %6134, float %6135, float %6136)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = fmul fast float %6144, %6144
  %6146 = call float @dx.op.unary.f32(i32 6, float %6137)  ; FAbs(value)
  %6147 = fsub fast float 1.000000e+00, %4742
  %6148 = call float @dx.op.binary.f32(i32 35, float %6147, float 0x3F847AE140000000)  ; FMax(a,b)
  %6149 = fmul fast float %6148, %6148
  %6150 = fmul fast float %6149, %6149
  %6151 = fsub fast float 1.000000e+00, %6150
  %6152 = fmul fast float %4787, %4787
  %6153 = fmul fast float %6152, %6151
  %6154 = fadd fast float %6153, %6150
  %6155 = bitcast float %6154 to i32
  %6156 = ashr i32 %6155, 1
  %6157 = add nsw i32 %6156, 532487669
  %6158 = bitcast i32 %6157 to float
  %6159 = fadd fast float %6158, %4787
  %6160 = fmul fast float %6150, %6145
  %6161 = fsub fast float 1.000000e+00, %6145
  %6162 = fadd fast float %6161, %6160
  %6163 = fmul fast float %6146, %6146
  %6164 = fmul fast float %6163, %6151
  %6165 = fadd fast float %6164, %6150
  %6166 = bitcast float %6165 to i32
  %6167 = ashr i32 %6166, 1
  %6168 = add nsw i32 %6167, 532487669
  %6169 = bitcast i32 %6168 to float
  %6170 = fadd fast float %6169, %6146
  %6171 = fmul fast float %6162, %6162
  %6172 = fmul fast float %6171, %6159
  %6173 = fmul fast float %6172, %6170
  %6174 = fdiv fast float 1.000000e+00, %6173
  %6175 = fmul fast float %6150, %6174
  %6176 = fmul fast float %6175, 0x3FF0A00000000000
  %6177 = fsub fast float 1.000000e+00, %3590
  %6178 = call float @dx.op.binary.f32(i32 35, float %6177, float 0x3F847AE140000000)  ; FMax(a,b)
  %6179 = fmul fast float %6178, %6178
  %6180 = fmul fast float %6179, %6179
  %6181 = fsub fast float 1.000000e+00, %6180
  %6182 = fmul fast float %6152, %6181
  %6183 = fadd fast float %6182, %6180
  %6184 = bitcast float %6183 to i32
  %6185 = ashr i32 %6184, 1
  %6186 = add nsw i32 %6185, 532487669
  %6187 = bitcast i32 %6186 to float
  %6188 = fadd fast float %6187, %4787
  %6189 = fmul fast float %6180, %6145
  %6190 = fadd fast float %6161, %6189
  %6191 = fmul fast float %6163, %6181
  %6192 = fadd fast float %6191, %6180
  %6193 = bitcast float %6192 to i32
  %6194 = ashr i32 %6193, 1
  %6195 = add nsw i32 %6194, 532487669
  %6196 = bitcast i32 %6195 to float
  %6197 = fadd fast float %6196, %6146
  %6198 = fmul fast float %6190, %6190
  %6199 = fmul fast float %6198, %6188
  %6200 = fmul fast float %6199, %6197
  %6201 = fdiv fast float 1.000000e+00, %6200
  %6202 = fmul fast float %6180, %6201
  %6203 = fsub fast float %6202, %6175
  %6204 = fmul fast float %6203, 0x3FC3F33340000000
  %6205 = fadd fast float %6204, %6176
  %6206 = call float @dx.op.unary.f32(i32 6, float %6138)  ; FAbs(value)
  %6207 = fsub fast float 1.000000e+00, %6206
  %6208 = bitcast float %6207 to i32
  %6209 = sitofp i32 %6208 to float
  %6210 = fmul fast float %6209, 5.000000e+00
  %6211 = fadd fast float %6210, 0xC1EFBF8940000000
  %6212 = fptosi float %6211 to i32
  %6213 = bitcast i32 %6212 to float
  %6214 = fsub fast float 1.000000e+00, %4733
  %6215 = fsub fast float 1.000000e+00, %4734
  %6216 = fsub fast float 1.000000e+00, %4785
  %6217 = fmul fast float %6213, %6214
  %6218 = fmul fast float %6213, %6215
  %6219 = fmul fast float %6213, %6216
  %6220 = fadd fast float %6217, %4733
  %6221 = fadd fast float %6218, %4734
  %6222 = fadd fast float %6219, %4785
  %6223 = fmul fast float %6137, 9.843750e-01
  %6224 = fadd fast float %6223, 7.812500e-03
  %6225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %6224, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6226 = extractvalue %dx.types.ResRet.f32 %6225, 2
  %6227 = extractvalue %dx.types.ResRet.f32 %6225, 3
  %6228 = fmul fast float %6226, %4733
  %6229 = fmul fast float %6226, %4734
  %6230 = fmul fast float %6226, %4785
  %6231 = fadd fast float %6228, %6227
  %6232 = fadd fast float %6229, %6227
  %6233 = fadd fast float %6230, %6227
  %6234 = call float @dx.op.binary.f32(i32 35, float %6232, float %6233)  ; FMax(a,b)
  %6235 = call float @dx.op.binary.f32(i32 35, float %6231, float %6234)  ; FMax(a,b)
  %6236 = fsub fast float 1.000000e+00, %6235
  %6237 = fmul fast float %6143, %6126
  %6238 = fmul fast float %6237, %6236
  %6239 = fmul fast float %6143, %6127
  %6240 = fmul fast float %6239, %6236
  %6241 = fmul fast float %6143, %6128
  %6242 = fmul fast float %6241, %6236
  %6243 = fmul fast float %6237, %6205
  %6244 = fmul fast float %6243, %6220
  %6245 = fmul fast float %6239, %6205
  %6246 = fmul fast float %6245, %6221
  %6247 = fmul fast float %6241, %6205
  %6248 = fmul fast float %6247, %6222
  %6249 = fadd fast float %6238, %5151
  %6250 = fmul fast float %6249, %1256
  %6251 = fadd fast float %6240, %5153
  %6252 = fmul fast float %6251, %1256
  %6253 = fadd fast float %6242, %5155
  %6254 = fmul fast float %6253, %1256
  %6255 = fadd fast float %6244, %5205
  %6256 = fmul fast float %6255, %1256
  %6257 = fadd fast float %6246, %5208
  %6258 = fmul fast float %6257, %1256
  %6259 = fadd fast float %6248, %5211
  %6260 = fmul fast float %6259, %1256
  br label %6261

; <label>:6261                                    ; preds = %6110, %6044, %5083
  %6262 = phi float [ %5206, %5083 ], [ %5206, %6044 ], [ %6256, %6110 ]
  %6263 = phi float [ %5209, %5083 ], [ %5209, %6044 ], [ %6258, %6110 ]
  %6264 = phi float [ %5212, %5083 ], [ %5212, %6044 ], [ %6260, %6110 ]
  %6265 = phi float [ %5201, %5083 ], [ %5201, %6044 ], [ %6250, %6110 ]
  %6266 = phi float [ %5202, %5083 ], [ %5202, %6044 ], [ %6252, %6110 ]
  %6267 = phi float [ %5203, %5083 ], [ %5203, %6044 ], [ %6254, %6110 ]
  %6268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.i32 %6268, 0
  %6270 = icmp eq i32 %6269, 0
  br i1 %6270, label %6863, label %6271

; <label>:6271                                    ; preds = %6261
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6274 = extractvalue %dx.types.CBufRet.f32 %6272, 3
  %6275 = fmul fast float %6273, %110
  %6276 = fmul fast float %6274, %111
  %6277 = fptoui float %6275 to i32
  %6278 = fptoui float %6276 to i32
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.CBufRet.f32 %6279, 2
  %6282 = extractvalue %dx.types.CBufRet.f32 %6279, 3
  %6283 = fadd fast float %101, -4.000000e+00
  %6284 = call float @dx.op.binary.f32(i32 35, float %6283, float 0.000000e+00)  ; FMax(a,b)
  %6285 = fadd fast float %6284, %6280
  %6286 = fmul fast float %6285, %6281
  %6287 = call float @dx.op.unary.f32(i32 23, float %6286)  ; Log(value)
  %6288 = fmul fast float %6287, %6282
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6291 = fmul fast float %6288, %6290
  %6292 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6294 = extractvalue %dx.types.CBufRet.i32 %6293, 1
  %6295 = add i32 %6294, -1
  %6296 = uitofp i32 %6294 to float
  %6297 = fmul fast float %6296, %6292
  %6298 = fptoui float %6297 to i32
  %6299 = call i32 @dx.op.binary.i32(i32 40, i32 %6298, i32 %6295)  ; UMin(a,b)
  %6300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.i32 %6300, 2
  %6302 = extractvalue %dx.types.CBufRet.i32 %6300, 3
  %6303 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6278, i32 %6301, i32 %6277)  ; UMad(a,b,c)
  %6304 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6299, i32 %6302, i32 %6303)  ; UMad(a,b,c)
  %6305 = add nsw i32 %6269, -1
  %6306 = call i32 @dx.op.binary.i32(i32 37, i32 %6305, i32 0)  ; IMax(a,b)
  %6307 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %6308 = fptoui float %6307 to i32
  %6309 = lshr i32 %6308, 5
  %6310 = call i32 @dx.op.binary.i32(i32 40, i32 %6309, i32 8191)  ; UMin(a,b)
  %6311 = shl i32 %6310, 2
  %6312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6311, i32 undef)  ; BufferLoad(srv,index,wot)
  %6313 = extractvalue %dx.types.ResRet.i32 %6312, 0
  %6314 = lshr i32 %6313, 16
  %6315 = and i32 %6313, 65535
  %6316 = lshr i32 %6313, 21
  %6317 = lshr i32 %6315, 5
  %6318 = call i32 @dx.op.binary.i32(i32 40, i32 %6317, i32 %6306)  ; UMin(a,b)
  %6319 = icmp ugt i32 %6316, %6318
  br i1 %6319, label %6863, label %6320

; <label>:6320                                    ; preds = %6271
  br label %6321

; <label>:6321                                    ; preds = %6853, %6320
  %6322 = phi i32 [ %6860, %6853 ], [ %6316, %6320 ]
  %6323 = phi float [ %6854, %6853 ], [ %6262, %6320 ]
  %6324 = phi float [ %6855, %6853 ], [ %6263, %6320 ]
  %6325 = phi float [ %6856, %6853 ], [ %6264, %6320 ]
  %6326 = phi float [ %6857, %6853 ], [ %6265, %6320 ]
  %6327 = phi float [ %6858, %6853 ], [ %6266, %6320 ]
  %6328 = phi float [ %6859, %6853 ], [ %6267, %6320 ]
  %6329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.i32 %6329, 0
  %6331 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6304, i32 %6330, i32 %6322)  ; UMad(a,b,c)
  %6332 = shl i32 %6331, 2
  %6333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6332, i32 undef)  ; BufferLoad(srv,index,wot)
  %6334 = extractvalue %dx.types.ResRet.i32 %6333, 0
  %6335 = shl i32 %6322, 5
  %6336 = sub nsw i32 %6314, %6335
  %6337 = call i32 @dx.op.binary.i32(i32 37, i32 %6336, i32 0)  ; IMax(a,b)
  %6338 = call i32 @dx.op.binary.i32(i32 38, i32 %6337, i32 31)  ; IMin(a,b)
  %6339 = sub nsw i32 1, %6314
  %6340 = add nsw i32 %6339, %6315
  %6341 = call i32 @dx.op.binary.i32(i32 37, i32 %6340, i32 0)  ; IMax(a,b)
  %6342 = call i32 @dx.op.binary.i32(i32 38, i32 %6341, i32 32)  ; IMin(a,b)
  %6343 = and i32 %6342, 31
  %6344 = shl i32 -1, %6343
  %6345 = xor i32 %6344, -1
  %6346 = and i32 %6338, 31
  %6347 = shl i32 %6345, %6346
  %6348 = icmp eq i32 %6342, 32
  %6349 = select i1 %6348, i32 -1, i32 %6347
  %6350 = and i32 %6349, %6334
  %6351 = icmp eq i32 %6350, 0
  br i1 %6351, label %6853, label %6352

; <label>:6352                                    ; preds = %6321
  br label %6353

; <label>:6353                                    ; preds = %6487, %6352
  %6354 = phi i32 [ %6365, %6487 ], [ %6350, %6352 ]
  %6355 = phi float [ %6488, %6487 ], [ %6323, %6352 ]
  %6356 = phi float [ %6489, %6487 ], [ %6324, %6352 ]
  %6357 = phi float [ %6490, %6487 ], [ %6325, %6352 ]
  %6358 = phi float [ %6491, %6487 ], [ %6326, %6352 ]
  %6359 = phi float [ %6492, %6487 ], [ %6327, %6352 ]
  %6360 = phi float [ %6493, %6487 ], [ %6328, %6352 ]
  %6361 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6354)  ; FirstbitLo(value)
  %6362 = add i32 %6361, %6335
  %6363 = and i32 %6361, 31
  %6364 = shl i32 1, %6363
  %6365 = xor i32 %6364, %6354
  %6366 = mul i32 %6362, 112
  %6367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6366, i32 undef)  ; BufferLoad(srv,index,wot)
  %6368 = extractvalue %dx.types.ResRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.ResRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.ResRet.f32 %6367, 2
  %6371 = or i32 %6366, 12
  %6372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6371, i32 undef)  ; BufferLoad(srv,index,wot)
  %6373 = extractvalue %dx.types.ResRet.f32 %6372, 0
  %6374 = add i32 %6366, 16
  %6375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6374, i32 undef)  ; BufferLoad(srv,index,wot)
  %6376 = extractvalue %dx.types.ResRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.ResRet.f32 %6375, 1
  %6378 = extractvalue %dx.types.ResRet.f32 %6375, 2
  %6379 = add i32 %6366, 28
  %6380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6379, i32 undef)  ; BufferLoad(srv,index,wot)
  %6381 = extractvalue %dx.types.ResRet.i32 %6380, 0
  %6382 = add i32 %6366, 44
  %6383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6382, i32 undef)  ; BufferLoad(srv,index,wot)
  %6384 = extractvalue %dx.types.ResRet.f32 %6383, 0
  %6385 = add i32 %6366, 48
  %6386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6385, i32 undef)  ; BufferLoad(srv,index,wot)
  %6387 = extractvalue %dx.types.ResRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.ResRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.ResRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.ResRet.f32 %6386, 3
  %6391 = add i32 %6366, 64
  %6392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6391, i32 undef)  ; BufferLoad(srv,index,wot)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.ResRet.f32 %6392, 1
  %6395 = extractvalue %dx.types.ResRet.f32 %6392, 2
  %6396 = extractvalue %dx.types.ResRet.f32 %6392, 3
  %6397 = add i32 %6366, 80
  %6398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6397, i32 undef)  ; BufferLoad(srv,index,wot)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 1
  %6400 = extractvalue %dx.types.ResRet.f32 %6398, 2
  %6401 = add i32 %6366, 92
  %6402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6401, i32 undef)  ; BufferLoad(srv,index,wot)
  %6403 = extractvalue %dx.types.ResRet.i32 %6402, 0
  %6404 = call float @dx.op.dot3.f32(i32 55, float %6368, float %6369, float %6370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6405 = select i1 %265, float %6399, float %6368
  %6406 = select i1 %265, float %6404, float %6369
  %6407 = select i1 %265, float %6400, float %6370
  %6408 = and i32 %6403, 65535
  %6409 = uitofp i32 %6408 to float
  %6410 = lshr i32 %6403, 16
  %6411 = uitofp i32 %6410 to float
  %6412 = and i32 %6381, 65535
  %6413 = and i32 %6381, 50331648
  %6414 = icmp eq i32 %6413, 33554432
  %6415 = fsub fast float %6387, %193
  %6416 = fsub fast float %6388, %194
  %6417 = fsub fast float %6389, %195
  %6418 = call float @dx.op.dot3.f32(i32 55, float %6415, float %6416, float %6417, float %6415, float %6416, float %6417)  ; Dot3(ax,ay,az,bx,by,bz)
  %6419 = call float @dx.op.unary.f32(i32 24, float %6418)  ; Sqrt(value)
  %6420 = fdiv fast float 1.000000e+00, %6419
  %6421 = fmul fast float %6420, %6415
  %6422 = fmul fast float %6420, %6416
  %6423 = fmul fast float %6420, %6417
  %6424 = fadd fast float %6419, %6373
  %6425 = fdiv fast float 1.000000e+00, %6424
  %6426 = fmul float %6384, %6425
  %6427 = fmul float %6426, %6426
  %6428 = call float @dx.op.unary.f32(i32 7, float %6427)  ; Saturate(value)
  br i1 %6414, label %6429, label %6450

; <label>:6429                                    ; preds = %6353
  %6430 = fmul fast float %6395, %6376
  %6431 = fmul fast float %6395, %6377
  %6432 = fmul fast float %6395, %6378
  %6433 = fadd fast float %6415, %6430
  %6434 = fadd fast float %6416, %6431
  %6435 = fadd fast float %6417, %6432
  %6436 = call float @dx.op.dot3.f32(i32 55, float %6433, float %6434, float %6435, float %6433, float %6434, float %6435)  ; Dot3(ax,ay,az,bx,by,bz)
  %6437 = call float @dx.op.unary.f32(i32 25, float %6436)  ; Rsqrt(value)
  %6438 = fmul fast float %6437, %6433
  %6439 = fmul fast float %6437, %6434
  %6440 = fmul fast float %6437, %6435
  %6441 = fsub fast float %193, %6387
  %6442 = fsub fast float %194, %6388
  %6443 = fsub fast float %195, %6389
  %6444 = fsub fast float -0.000000e+00, %6441
  %6445 = fsub fast float -0.000000e+00, %6442
  %6446 = fsub fast float -0.000000e+00, %6443
  %6447 = call float @dx.op.dot3.f32(i32 55, float %6444, float %6445, float %6446, float %6376, float %6377, float %6378)  ; Dot3(ax,ay,az,bx,by,bz)
  %6448 = fcmp fast ogt float %6447, 0.000000e+00
  %6449 = uitofp i1 %6448 to float
  br label %6450

; <label>:6450                                    ; preds = %6429, %6353
  %6451 = phi float [ %6449, %6429 ], [ 1.000000e+00, %6353 ]
  %6452 = phi float [ %6438, %6429 ], [ %6421, %6353 ]
  %6453 = phi float [ %6439, %6429 ], [ %6422, %6353 ]
  %6454 = phi float [ %6440, %6429 ], [ %6423, %6353 ]
  %6455 = call float @dx.op.dot3.f32(i32 55, float %6376, float %6377, float %6378, float %6452, float %6453, float %6454)  ; Dot3(ax,ay,az,bx,by,bz)
  %6456 = fmul fast float %6455, %6455
  %6457 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6458 = fsub fast float 1.000000e+00, %6457
  %6459 = fmul fast float %6458, 5.000000e-01
  %6460 = fcmp fast ogt float %6455, 0.000000e+00
  %6461 = fsub fast float 1.000000e+00, %6459
  %6462 = select i1 %6460, float %6459, float %6461
  %6463 = fmul fast float %6462, %6411
  %6464 = fadd fast float %6463, %6409
  %6465 = fmul fast float %6464, 0x3EF0001000000000
  %6466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %6465, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6467 = extractvalue %dx.types.ResRet.f32 %6466, 0
  %6468 = fmul fast float %6455, %6393
  %6469 = fadd fast float %6468, %6394
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6471 = select i1 %6414, float 1.000000e+00, float %6470
  %6472 = select i1 %6414, float %6470, float 1.000000e+00
  %6473 = fmul fast float %6419, %6390
  %6474 = fsub fast float 1.000000e+00, %6473
  %6475 = fmul fast float %6474, %6396
  %6476 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6477 = fmul fast float %6476, %6472
  %6478 = fmul fast float %6477, 2.000000e+00
  %6479 = fsub fast float 3.000000e+00, %6478
  %6480 = fmul fast float %6467, %6451
  %6481 = fmul fast float %6477, %6477
  %6482 = fmul fast float %6481, %6480
  %6483 = fmul fast float %6482, %6479
  %6484 = call float @dx.op.binary.f32(i32 36, float %6483, float %6483)  ; FMin(a,b)
  %6485 = call float @dx.op.binary.f32(i32 36, float %6483, float %6484)  ; FMin(a,b)
  %6486 = fcmp fast ogt float %6485, 0.000000e+00
  br i1 %6486, label %6495, label %6487, !dx.controlflow.hints !119

; <label>:6487                                    ; preds = %6662, %6595, %6450
  %6488 = phi float [ %6355, %6595 ], [ %6355, %6450 ], [ %6849, %6662 ]
  %6489 = phi float [ %6356, %6595 ], [ %6356, %6450 ], [ %6850, %6662 ]
  %6490 = phi float [ %6357, %6595 ], [ %6357, %6450 ], [ %6851, %6662 ]
  %6491 = phi float [ %6358, %6595 ], [ %6358, %6450 ], [ %6840, %6662 ]
  %6492 = phi float [ %6359, %6595 ], [ %6359, %6450 ], [ %6841, %6662 ]
  %6493 = phi float [ %6360, %6595 ], [ %6360, %6450 ], [ %6842, %6662 ]
  %6494 = icmp eq i32 %6354, %6364
  br i1 %6494, label %6852, label %6353

; <label>:6495                                    ; preds = %6450
  %6496 = icmp eq i32 %6412, 255
  br i1 %6496, label %6595, label %6497, !dx.controlflow.hints !120

; <label>:6497                                    ; preds = %6495
  %6498 = mul nuw nsw i32 %6412, 176
  %6499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6498, i32 undef)  ; BufferLoad(srv,index,wot)
  %6500 = extractvalue %dx.types.ResRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.ResRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.ResRet.f32 %6499, 2
  %6503 = extractvalue %dx.types.ResRet.f32 %6499, 3
  %6504 = add nuw nsw i32 %6498, 16
  %6505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6504, i32 undef)  ; BufferLoad(srv,index,wot)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.ResRet.f32 %6505, 1
  %6508 = add nuw nsw i32 %6498, 32
  %6509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6508, i32 undef)  ; BufferLoad(srv,index,wot)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.ResRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.ResRet.f32 %6509, 2
  %6513 = add nuw nsw i32 %6498, 48
  %6514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6513, i32 undef)  ; BufferLoad(srv,index,wot)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.ResRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.ResRet.f32 %6514, 2
  %6518 = extractvalue %dx.types.ResRet.f32 %6514, 3
  %6519 = add nuw nsw i32 %6498, 64
  %6520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6519, i32 undef)  ; BufferLoad(srv,index,wot)
  %6521 = extractvalue %dx.types.ResRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.ResRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.ResRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.ResRet.f32 %6520, 3
  %6525 = add nuw nsw i32 %6498, 80
  %6526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6525, i32 undef)  ; BufferLoad(srv,index,wot)
  %6527 = extractvalue %dx.types.ResRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.ResRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.ResRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.ResRet.f32 %6526, 3
  %6531 = add nuw nsw i32 %6498, 96
  %6532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6531, i32 undef)  ; BufferLoad(srv,index,wot)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.ResRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.ResRet.f32 %6532, 2
  %6536 = extractvalue %dx.types.ResRet.f32 %6532, 3
  %6537 = bitcast float %6507 to i32
  %6538 = fmul fast float %6512, %119
  %6539 = fmul fast float %6512, %121
  %6540 = fmul fast float %6512, %123
  %6541 = fadd fast float %6538, %193
  %6542 = fadd fast float %6539, %194
  %6543 = fadd fast float %6540, %195
  %6544 = fmul fast float %6541, %6515
  %6545 = call float @dx.op.tertiary.f32(i32 46, float %6542, float %6521, float %6544)  ; FMad(a,b,c)
  %6546 = call float @dx.op.tertiary.f32(i32 46, float %6543, float %6527, float %6545)  ; FMad(a,b,c)
  %6547 = fadd fast float %6546, %6533
  %6548 = fmul fast float %6541, %6516
  %6549 = call float @dx.op.tertiary.f32(i32 46, float %6542, float %6522, float %6548)  ; FMad(a,b,c)
  %6550 = call float @dx.op.tertiary.f32(i32 46, float %6543, float %6528, float %6549)  ; FMad(a,b,c)
  %6551 = fadd fast float %6550, %6534
  %6552 = fmul fast float %6541, %6517
  %6553 = call float @dx.op.tertiary.f32(i32 46, float %6542, float %6523, float %6552)  ; FMad(a,b,c)
  %6554 = call float @dx.op.tertiary.f32(i32 46, float %6543, float %6529, float %6553)  ; FMad(a,b,c)
  %6555 = fadd fast float %6554, %6535
  %6556 = fmul fast float %6541, %6518
  %6557 = call float @dx.op.tertiary.f32(i32 46, float %6542, float %6524, float %6556)  ; FMad(a,b,c)
  %6558 = call float @dx.op.tertiary.f32(i32 46, float %6543, float %6530, float %6557)  ; FMad(a,b,c)
  %6559 = fadd fast float %6558, %6536
  %6560 = fdiv fast float %6547, %6559
  %6561 = fdiv fast float %6551, %6559
  %6562 = fdiv fast float %6555, %6559
  %6563 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6562)  ; FMax(a,b)
  %6564 = fmul fast float %276, 0x401921FB60000000
  %6565 = call float @dx.op.unary.f32(i32 13, float %6564)  ; Sin(value)
  %6566 = call float @dx.op.unary.f32(i32 12, float %6564)  ; Cos(value)
  %6567 = fsub fast float -0.000000e+00, %6565
  %6568 = fmul fast float %6502, 5.000000e-01
  %6569 = call float @dx.op.dot2.f32(i32 54, float %276, float %276, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6570 = call float @dx.op.unary.f32(i32 22, float %6569)  ; Frc(value)
  %6571 = fmul fast float %6570, 0x404A7DD040000000
  %6572 = call float @dx.op.unary.f32(i32 22, float %6571)  ; Frc(value)
  %6573 = fmul fast float %6572, %6511
  %6574 = fadd fast float %6573, %6568
  %6575 = call float @dx.op.tertiary.f32(i32 46, float %6574, float %6567, float 0.000000e+00)  ; FMad(a,b,c)
  %6576 = call float @dx.op.tertiary.f32(i32 46, float %6574, float %6566, float 0.000000e+00)  ; FMad(a,b,c)
  %6577 = fadd fast float %6575, %6560
  %6578 = fadd fast float %6576, %6561
  %6579 = fmul fast float %6577, %6506
  %6580 = fmul fast float %6578, %6506
  %6581 = call float @dx.op.binary.f32(i32 35, float %6579, float %6502)  ; FMax(a,b)
  %6582 = call float @dx.op.binary.f32(i32 35, float %6580, float %6502)  ; FMax(a,b)
  %6583 = call float @dx.op.binary.f32(i32 36, float %6581, float %6503)  ; FMin(a,b)
  %6584 = call float @dx.op.binary.f32(i32 36, float %6582, float %6503)  ; FMin(a,b)
  %6585 = fadd fast float %6583, %6500
  %6586 = fadd fast float %6584, %6501
  %6587 = uitofp i32 %6537 to float
  %6588 = fadd fast float %6563, %6510
  %6589 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %47, float %6585, float %6586, float %6587, float undef, i32 0, i32 0, i32 undef, float %6588)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = fadd fast float %6590, -1.000000e+00
  %6592 = fmul fast float %6591, %6471
  %6593 = fadd fast float %6592, 1.000000e+00
  %6594 = fmul fast float %6593, %6483
  br label %6595

; <label>:6595                                    ; preds = %6497, %6495
  %6596 = phi float [ %6594, %6497 ], [ %6483, %6495 ]
  %6597 = call float @dx.op.binary.f32(i32 36, float %6596, float %6596)  ; FMin(a,b)
  %6598 = call float @dx.op.binary.f32(i32 36, float %6596, float %6597)  ; FMin(a,b)
  %6599 = fcmp fast ogt float %6598, 0.000000e+00
  br i1 %6599, label %6600, label %6487, !dx.controlflow.hints !121

; <label>:6600                                    ; preds = %6595
  %6601 = fmul fast float %6596, %6405
  %6602 = fmul fast float %6596, %6406
  %6603 = fmul fast float %6596, %6407
  %6604 = fsub fast float %6389, %3951
  %6605 = fcmp fast ogt float %6604, 0.000000e+00
  %6606 = fsub fast float %195, %3951
  %6607 = fcmp fast ogt float %6606, 0.000000e+00
  %6608 = xor i1 %6607, %6605
  %6609 = fsub fast float %3951, %6389
  %6610 = fmul fast float %6609, 2.000000e+00
  %6611 = fadd fast float %6610, %6389
  %6612 = select i1 %6608, float %6389, float %6611
  %6613 = fsub fast float %6612, %195
  %6614 = call float @dx.op.dot3.f32(i32 55, float %6415, float %6416, float %6613, float %6415, float %6416, float %6613)  ; Dot3(ax,ay,az,bx,by,bz)
  %6615 = call float @dx.op.unary.f32(i32 25, float %6614)  ; Rsqrt(value)
  %6616 = fmul fast float %6615, %6415
  %6617 = fmul fast float %6615, %6416
  %6618 = fmul fast float %6615, %6613
  %6619 = fsub fast float %3951, %195
  %6620 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6619)  ; Dot3(ax,ay,az,bx,by,bz)
  %6621 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6616, float %6617, float %6618)  ; Dot3(ax,ay,az,bx,by,bz)
  %6622 = fdiv fast float 1.000000e+00, %6621
  %6623 = fmul fast float %6622, %6620
  %6624 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6606, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6625 = fcmp fast ogt float %6624, 0.000000e+00
  %6626 = fcmp fast olt float %6624, 0.000000e+00
  %6627 = zext i1 %6625 to i32
  %6628 = zext i1 %6626 to i32
  %6629 = sub nsw i32 %6627, %6628
  %6630 = sitofp i32 %6629 to float
  %6631 = fsub fast float %6612, %3951
  %6632 = call float @dx.op.dot3.f32(i32 55, float %6415, float %6416, float %6631, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6633 = fcmp fast ogt float %6632, 0.000000e+00
  %6634 = fcmp fast olt float %6632, 0.000000e+00
  %6635 = zext i1 %6633 to i32
  %6636 = zext i1 %6634 to i32
  %6637 = sub nsw i32 %6635, %6636
  %6638 = sitofp i32 %6637 to float
  %6639 = fcmp fast une float %6630, %6638
  br i1 %6639, label %6640, label %6650

; <label>:6640                                    ; preds = %6600
  %6641 = fmul fast float %6623, %6618
  %6642 = fmul fast float %6623, %6617
  %6643 = fmul fast float %6623, %6616
  %6644 = fmul fast float %6643, %6643
  %6645 = fmul fast float %6642, %6642
  %6646 = fadd fast float %6644, %6645
  %6647 = fmul fast float %6641, %6641
  %6648 = fadd fast float %6646, %6647
  %6649 = call float @dx.op.unary.f32(i32 24, float %6648)  ; Sqrt(value)
  br label %6662

; <label>:6650                                    ; preds = %6600
  %6651 = icmp slt i32 %6629, 0
  br i1 %6651, label %6652, label %6662

; <label>:6652                                    ; preds = %6650
  %6653 = fsub fast float %193, %6387
  %6654 = fsub fast float %194, %6388
  %6655 = fsub fast float %195, %6612
  %6656 = fmul fast float %6653, %6653
  %6657 = fmul fast float %6654, %6654
  %6658 = fadd fast float %6656, %6657
  %6659 = fmul fast float %6655, %6655
  %6660 = fadd fast float %6658, %6659
  %6661 = call float @dx.op.unary.f32(i32 24, float %6660)  ; Sqrt(value)
  br label %6662

; <label>:6662                                    ; preds = %6652, %6650, %6640
  %6663 = phi float [ %6649, %6640 ], [ %6661, %6652 ], [ 0.000000e+00, %6650 ]
  %6664 = and i1 %6607, %6605
  %6665 = fsub fast float -0.000000e+00, %6663
  %6666 = select i1 %6664, float -0.000000e+00, float %6665
  %6667 = fmul fast float %3952, 0x3FF7154760000000
  %6668 = fmul fast float %6667, %6666
  %6669 = fmul fast float %3953, 0x3FF7154760000000
  %6670 = fmul fast float %6669, %6666
  %6671 = fmul fast float %3954, 0x3FF7154760000000
  %6672 = fmul fast float %6671, %6666
  %6673 = call float @dx.op.unary.f32(i32 21, float %6668)  ; Exp(value)
  %6674 = call float @dx.op.unary.f32(i32 21, float %6670)  ; Exp(value)
  %6675 = call float @dx.op.unary.f32(i32 21, float %6672)  ; Exp(value)
  %6676 = call float @dx.op.unary.f32(i32 7, float %6673)  ; Saturate(value)
  %6677 = call float @dx.op.unary.f32(i32 7, float %6674)  ; Saturate(value)
  %6678 = call float @dx.op.unary.f32(i32 7, float %6675)  ; Saturate(value)
  %6679 = fmul fast float %6601, %6676
  %6680 = fmul fast float %6602, %6677
  %6681 = fmul fast float %6603, %6678
  %6682 = fsub fast float %6421, %4779
  %6683 = fsub fast float %6422, %4780
  %6684 = fsub fast float %6423, %4781
  %6685 = call float @dx.op.dot3.f32(i32 55, float %6682, float %6683, float %6684, float %6682, float %6683, float %6684)  ; Dot3(ax,ay,az,bx,by,bz)
  %6686 = call float @dx.op.unary.f32(i32 25, float %6685)  ; Rsqrt(value)
  %6687 = fmul fast float %6686, %6682
  %6688 = fmul fast float %6686, %6683
  %6689 = fmul fast float %6686, %6684
  %6690 = call float @dx.op.dot3.f32(i32 55, float %6421, float %6422, float %6423, float %4736, float %4737, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %6691 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4783, float %4784, float %6687, float %6688, float %6689)  ; Dot3(ax,ay,az,bx,by,bz)
  %6692 = call float @dx.op.unary.f32(i32 7, float %6690)  ; Saturate(value)
  %6693 = fmul fast float %6692, %6428
  %6694 = fmul fast float %6692, %6692
  %6695 = fmul fast float %6694, %4800
  %6696 = call float @dx.op.unary.f32(i32 7, float %6695)  ; Saturate(value)
  %6697 = fmul fast float %6693, %6696
  %6698 = bitcast float %6418 to i32
  %6699 = ashr i32 %6698, 1
  %6700 = sub nsw i32 1597463007, %6699
  %6701 = bitcast i32 %6700 to float
  %6702 = fmul fast float %6701, %6415
  %6703 = fmul fast float %6701, %6416
  %6704 = fmul fast float %6701, %6417
  %6705 = fmul fast float %6701, %6384
  %6706 = fsub fast float %6702, %4779
  %6707 = fsub fast float %6703, %4780
  %6708 = fsub fast float %6704, %4781
  %6709 = call float @dx.op.dot3.f32(i32 55, float %6706, float %6707, float %6708, float %6706, float %6707, float %6708)  ; Dot3(ax,ay,az,bx,by,bz)
  %6710 = call float @dx.op.unary.f32(i32 25, float %6709)  ; Rsqrt(value)
  %6711 = fmul fast float %6706, %6710
  %6712 = fmul fast float %6707, %6710
  %6713 = fmul fast float %6708, %6710
  %6714 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %4738, float %6711, float %6712, float %6713)  ; Dot3(ax,ay,az,bx,by,bz)
  %6715 = fmul fast float %6714, %6714
  %6716 = call float @dx.op.unary.f32(i32 6, float %6690)  ; FAbs(value)
  %6717 = fsub fast float 1.000000e+00, %4742
  %6718 = call float @dx.op.binary.f32(i32 35, float %6717, float 0x3F847AE140000000)  ; FMax(a,b)
  %6719 = fmul fast float %6718, %6718
  %6720 = fmul fast float %6719, %6719
  %6721 = fsub fast float 1.000000e+00, %6720
  %6722 = fmul fast float %4787, %4787
  %6723 = fmul fast float %6722, %6721
  %6724 = fadd fast float %6723, %6720
  %6725 = bitcast float %6724 to i32
  %6726 = ashr i32 %6725, 1
  %6727 = add nsw i32 %6726, 532487669
  %6728 = bitcast i32 %6727 to float
  %6729 = fadd fast float %6728, %4787
  %6730 = fmul fast float %6720, %6715
  %6731 = fsub fast float 1.000000e+00, %6715
  %6732 = fadd fast float %6731, %6730
  %6733 = fmul fast float %6716, %6716
  %6734 = fmul fast float %6733, %6721
  %6735 = fadd fast float %6734, %6720
  %6736 = bitcast float %6735 to i32
  %6737 = ashr i32 %6736, 1
  %6738 = add nsw i32 %6737, 532487669
  %6739 = bitcast i32 %6738 to float
  %6740 = fadd fast float %6739, %6716
  %6741 = fmul fast float %6732, %6732
  %6742 = fmul fast float %6741, %6729
  %6743 = fmul fast float %6742, %6740
  %6744 = fdiv fast float 1.000000e+00, %6743
  %6745 = bitcast float %6720 to i32
  %6746 = sitofp i32 %6745 to float
  %6747 = fmul fast float %6746, 0x3FE7F73180000000
  %6748 = fadd fast float %6747, 0x41AFE27C40000000
  %6749 = fptosi float %6748 to i32
  %6750 = bitcast i32 %6749 to float
  %6751 = fmul fast float %6705, 0x3FD80E9D60000000
  %6752 = fadd fast float %6750, %6751
  %6753 = bitcast float %6752 to i32
  %6754 = sub nsw i32 2129859010, %6753
  %6755 = bitcast i32 %6754 to float
  %6756 = fmul fast float %6720, %6744
  %6757 = fmul fast float %6756, %6750
  %6758 = fmul fast float %6757, %6755
  %6759 = fsub fast float 1.000000e+00, %3590
  %6760 = call float @dx.op.binary.f32(i32 35, float %6759, float 0x3F847AE140000000)  ; FMax(a,b)
  %6761 = fmul fast float %6760, %6760
  %6762 = fmul fast float %6761, %6761
  %6763 = fsub fast float 1.000000e+00, %6762
  %6764 = fmul fast float %6722, %6763
  %6765 = fadd fast float %6764, %6762
  %6766 = bitcast float %6765 to i32
  %6767 = ashr i32 %6766, 1
  %6768 = add nsw i32 %6767, 532487669
  %6769 = bitcast i32 %6768 to float
  %6770 = fadd fast float %6769, %4787
  %6771 = fmul fast float %6762, %6715
  %6772 = fadd fast float %6731, %6771
  %6773 = fmul fast float %6733, %6763
  %6774 = fadd fast float %6773, %6762
  %6775 = bitcast float %6774 to i32
  %6776 = ashr i32 %6775, 1
  %6777 = add nsw i32 %6776, 532487669
  %6778 = bitcast i32 %6777 to float
  %6779 = fadd fast float %6778, %6716
  %6780 = fmul fast float %6772, %6772
  %6781 = fmul fast float %6780, %6770
  %6782 = fmul fast float %6781, %6779
  %6783 = fdiv fast float 1.000000e+00, %6782
  %6784 = bitcast float %6762 to i32
  %6785 = sitofp i32 %6784 to float
  %6786 = fmul fast float %6785, 0x3FE7F73180000000
  %6787 = fadd fast float %6786, 0x41AFE27C40000000
  %6788 = fptosi float %6787 to i32
  %6789 = bitcast i32 %6788 to float
  %6790 = fadd fast float %6789, %6751
  %6791 = bitcast float %6790 to i32
  %6792 = sub nsw i32 2129859010, %6791
  %6793 = bitcast i32 %6792 to float
  %6794 = fmul fast float %6762, %6783
  %6795 = fmul fast float %6794, %6789
  %6796 = fmul fast float %6795, %6793
  %6797 = fsub fast float %6796, %6758
  %6798 = fmul fast float %6797, 0x3FC3333340000000
  %6799 = fadd fast float %6798, %6758
  %6800 = call float @dx.op.unary.f32(i32 6, float %6691)  ; FAbs(value)
  %6801 = fsub fast float 1.000000e+00, %6800
  %6802 = bitcast float %6801 to i32
  %6803 = sitofp i32 %6802 to float
  %6804 = fmul fast float %6803, 5.000000e+00
  %6805 = fadd fast float %6804, 0xC1EFBF8940000000
  %6806 = fptosi float %6805 to i32
  %6807 = bitcast i32 %6806 to float
  %6808 = fsub fast float 1.000000e+00, %4733
  %6809 = fsub fast float 1.000000e+00, %4734
  %6810 = fsub fast float 1.000000e+00, %4785
  %6811 = fmul fast float %6807, %6808
  %6812 = fmul fast float %6807, %6809
  %6813 = fmul fast float %6807, %6810
  %6814 = fadd fast float %6811, %4733
  %6815 = fadd fast float %6812, %4734
  %6816 = fadd fast float %6813, %4785
  %6817 = fmul fast float %6690, 9.843750e-01
  %6818 = fadd fast float %6817, 7.812500e-03
  %6819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %6818, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6820 = extractvalue %dx.types.ResRet.f32 %6819, 2
  %6821 = extractvalue %dx.types.ResRet.f32 %6819, 3
  %6822 = fmul fast float %6820, %4733
  %6823 = fmul fast float %6820, %4734
  %6824 = fmul fast float %6820, %4785
  %6825 = fadd fast float %6822, %6821
  %6826 = fadd fast float %6823, %6821
  %6827 = fadd fast float %6824, %6821
  %6828 = call float @dx.op.binary.f32(i32 35, float %6826, float %6827)  ; FMax(a,b)
  %6829 = call float @dx.op.binary.f32(i32 35, float %6825, float %6828)  ; FMax(a,b)
  %6830 = fsub fast float 1.000000e+00, %6829
  %6831 = fmul fast float %6679, %1256
  %6832 = fmul fast float %6831, %6697
  %6833 = fmul fast float %6832, %6830
  %6834 = fmul fast float %6680, %1256
  %6835 = fmul fast float %6834, %6697
  %6836 = fmul fast float %6835, %6830
  %6837 = fmul fast float %6681, %1256
  %6838 = fmul fast float %6837, %6697
  %6839 = fmul fast float %6838, %6830
  %6840 = fadd fast float %6833, %6358
  %6841 = fadd fast float %6836, %6359
  %6842 = fadd fast float %6839, %6360
  %6843 = fmul fast float %6832, %6814
  %6844 = fmul fast float %6843, %6799
  %6845 = fmul fast float %6835, %6815
  %6846 = fmul fast float %6845, %6799
  %6847 = fmul fast float %6838, %6816
  %6848 = fmul fast float %6847, %6799
  %6849 = fadd fast float %6844, %6355
  %6850 = fadd fast float %6846, %6356
  %6851 = fadd fast float %6848, %6357
  br label %6487

; <label>:6852                                    ; preds = %6487
  br label %6853

; <label>:6853                                    ; preds = %6852, %6321
  %6854 = phi float [ %6323, %6321 ], [ %6488, %6852 ]
  %6855 = phi float [ %6324, %6321 ], [ %6489, %6852 ]
  %6856 = phi float [ %6325, %6321 ], [ %6490, %6852 ]
  %6857 = phi float [ %6326, %6321 ], [ %6491, %6852 ]
  %6858 = phi float [ %6327, %6321 ], [ %6492, %6852 ]
  %6859 = phi float [ %6328, %6321 ], [ %6493, %6852 ]
  %6860 = add i32 %6322, 1
  %6861 = icmp ugt i32 %6860, %6318
  br i1 %6861, label %6862, label %6321

; <label>:6862                                    ; preds = %6853
  br label %6863

; <label>:6863                                    ; preds = %6862, %6271, %6261
  %6864 = phi float [ %6262, %6261 ], [ %6262, %6271 ], [ %6854, %6862 ]
  %6865 = phi float [ %6263, %6261 ], [ %6263, %6271 ], [ %6855, %6862 ]
  %6866 = phi float [ %6264, %6261 ], [ %6264, %6271 ], [ %6856, %6862 ]
  %6867 = phi float [ %6265, %6261 ], [ %6265, %6271 ], [ %6857, %6862 ]
  %6868 = phi float [ %6266, %6261 ], [ %6266, %6271 ], [ %6858, %6862 ]
  %6869 = phi float [ %6267, %6261 ], [ %6267, %6271 ], [ %6859, %6862 ]
  %6870 = fmul fast float %1256, %1256
  %6871 = fsub fast float 1.000000e+00, %6870
  %6872 = call float @dx.op.dot3.f32(i32 55, float %6871, float %6871, float %6871, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6873 = fsub fast float 1.000000e+00, %6872
  %6874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6875 = extractvalue %dx.types.CBufRet.f32 %6874, 0
  %6876 = fmul fast float %6875, %5184
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6879 = fsub fast float 1.000000e+00, %3476
  %6880 = call float @dx.op.unary.f32(i32 7, float %6879)  ; Saturate(value)
  %6881 = fadd fast float %3497, %6869
  %6882 = fmul fast float %6881, %3476
  %6883 = fmul fast float %6880, %6878
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 3
  %6886 = fmul fast float %6867, %4739
  %6887 = fmul fast float %6868, %4740
  %6888 = fmul fast float %6869, %4741
  %6889 = fcmp fast ogt float %101, %228
  %6890 = and i1 %6889, %3957
  %6891 = or i1 %3963, %6890
  %6892 = icmp eq i32 %3956, 2
  %6893 = fcmp fast ole float %101, %228
  %6894 = and i1 %6893, %6892
  %6895 = or i1 %6894, %6891
  br i1 %6890, label %6896, label %7153

; <label>:6896                                    ; preds = %6863
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6899 = extractvalue %dx.types.CBufRet.f32 %6897, 3
  %6900 = fmul fast float %6898, %110
  %6901 = fmul fast float %6899, %111
  %6902 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6903 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6904 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6902, float %6903, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6905 = extractvalue %dx.types.ResRet.f32 %6904, 0
  %6906 = extractvalue %dx.types.ResRet.f32 %6904, 1
  %6907 = extractvalue %dx.types.ResRet.f32 %6904, 2
  %6908 = extractvalue %dx.types.ResRet.f32 %6904, 3
  %6909 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6902, float %6903, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6910 = extractvalue %dx.types.ResRet.f32 %6909, 0
  %6911 = extractvalue %dx.types.ResRet.f32 %6909, 1
  %6912 = extractvalue %dx.types.ResRet.f32 %6909, 2
  %6913 = extractvalue %dx.types.ResRet.f32 %6909, 3
  %6914 = call float @dx.op.binary.f32(i32 35, float %6906, float %6907)  ; FMax(a,b)
  %6915 = call float @dx.op.binary.f32(i32 35, float %6905, float %6914)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6915, float %6908)  ; FMax(a,b)
  %6917 = call float @dx.op.binary.f32(i32 36, float %6911, float %6912)  ; FMin(a,b)
  %6918 = call float @dx.op.binary.f32(i32 36, float %6910, float %6917)  ; FMin(a,b)
  %6919 = call float @dx.op.binary.f32(i32 36, float %6918, float %6913)  ; FMin(a,b)
  %6920 = fmul fast float %6916, 2.550000e+02
  %6921 = fadd fast float %6920, 0x3F70101020000000
  %6922 = fptoui float %6921 to i32
  %6923 = fmul fast float %6919, 2.550000e+02
  %6924 = fadd fast float %6923, 0x3F70101020000000
  %6925 = fptoui float %6924 to i32
  %6926 = icmp ult i32 %6922, %6925
  br i1 %6926, label %6927, label %7095

; <label>:6927                                    ; preds = %6896
  %6928 = fcmp fast ogt float %100, 9.843750e-01
  %6929 = fadd fast float %101, -4.000000e+00
  %6930 = select i1 %6928, float -4.000000e+00, float %6929
  %6931 = call float @dx.op.binary.f32(i32 35, float %6930, float 0.000000e+00)  ; FMax(a,b)
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6934 = fadd fast float %6933, %6931
  %6935 = extractvalue %dx.types.CBufRet.f32 %6932, 2
  %6936 = fmul fast float %6934, %6935
  %6937 = call float @dx.op.unary.f32(i32 23, float %6936)  ; Log(value)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6932, 3
  %6939 = fmul fast float %6938, %6937
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %6942 = fmul fast float %6939, %6941
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = uitofp i32 %6922 to float
  %6945 = uitofp i32 %6925 to float
  %6946 = fadd fast float %6944, 5.000000e-01
  %6947 = fadd fast float %6945, 5.000000e-01
  %6948 = fmul fast float %6941, %6946
  %6949 = fmul fast float %6941, %6947
  %6950 = fadd fast float %6948, 0x3F0FFB4800000000
  %6951 = fadd fast float %6949, 0xBF0FFB4800000000
  %6952 = call float @dx.op.binary.f32(i32 35, float %6943, float %6950)  ; FMax(a,b)
  %6953 = call float @dx.op.binary.f32(i32 36, float %6952, float %6951)  ; FMin(a,b)
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 2
  %6957 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6958 = fmul fast float %6955, %6953
  %6959 = fadd fast float %6957, %6958
  %6960 = fadd fast float %6957, %6956
  %6961 = fsub fast float %6955, %6956
  %6962 = fadd fast float %6961, %6957
  %6963 = call float @dx.op.binary.f32(i32 35, float %6959, float %6960)  ; FMax(a,b)
  %6964 = call float @dx.op.binary.f32(i32 36, float %6963, float %6962)  ; FMin(a,b)
  %6965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %6902, float %6903, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6966 = extractvalue %dx.types.ResRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.ResRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.ResRet.f32 %6965, 2
  %6969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.i32 %6969, 0
  %6971 = extractvalue %dx.types.CBufRet.i32 %6969, 1
  %6972 = uitofp i32 %6970 to float
  %6973 = uitofp i32 %6971 to float
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %6976 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6977 = fmul fast float %6972, %6902
  %6978 = fmul fast float %6973, %6903
  %6979 = fadd fast float %6977, -5.000000e-01
  %6980 = fadd fast float %6978, -5.000000e-01
  %6981 = call float @dx.op.unary.f32(i32 22, float %6979)  ; Frc(value)
  %6982 = call float @dx.op.unary.f32(i32 22, float %6980)  ; Frc(value)
  %6983 = fmul fast float %6981, %6981
  %6984 = fmul fast float %6983, %6981
  %6985 = fsub fast float 3.000000e+00, %6981
  %6986 = fmul fast float %6983, %6985
  %6987 = fmul fast float %6981, 3.000000e+00
  %6988 = fmul fast float %6984, 3.000000e+00
  %6989 = fmul fast float %6983, 6.000000e+00
  %6990 = fsub fast float %6988, %6989
  %6991 = fadd fast float %6990, 4.000000e+00
  %6992 = fmul fast float %6991, 0x3FC5555560000000
  %6993 = fmul fast float %6984, -3.000000e+00
  %6994 = fadd fast float %6983, %6981
  %6995 = fmul fast float %6994, 3.000000e+00
  %6996 = fadd fast float %6993, 1.000000e+00
  %6997 = fadd fast float %6996, %6995
  %6998 = fmul fast float %6984, 0x3FC5555560000000
  %6999 = fmul fast float %6982, %6982
  %7000 = fmul fast float %6999, %6982
  %7001 = fsub fast float 3.000000e+00, %6982
  %7002 = fmul fast float %6999, %7001
  %7003 = fmul fast float %6982, 3.000000e+00
  %7004 = fmul fast float %7000, 3.000000e+00
  %7005 = fmul fast float %6999, 6.000000e+00
  %7006 = fsub fast float %7004, %7005
  %7007 = fadd fast float %7006, 4.000000e+00
  %7008 = fmul fast float %7007, 0x3FC5555560000000
  %7009 = fmul fast float %7000, -3.000000e+00
  %7010 = fadd fast float %6999, %6982
  %7011 = fmul fast float %7010, 3.000000e+00
  %7012 = fadd fast float %7009, 1.000000e+00
  %7013 = fadd fast float %7012, %7011
  %7014 = fmul fast float %7000, 0x3FC5555560000000
  %7015 = fadd fast float %6981, 1.000000e+00
  %7016 = fsub fast float 1.000000e+00, %6987
  %7017 = fadd fast float %7016, %6986
  %7018 = fadd fast float %7017, %6991
  %7019 = fmul fast float %7018, 0x3FC5555560000000
  %7020 = fdiv fast float %6992, %7019
  %7021 = fsub fast float %7015, %7020
  %7022 = fsub fast float 1.000000e+00, %6981
  %7023 = fadd fast float %6997, %6984
  %7024 = fmul fast float %7023, 0x3FC5555560000000
  %7025 = fdiv fast float %6998, %7024
  %7026 = fadd fast float %7022, %7025
  %7027 = fadd fast float %6982, 1.000000e+00
  %7028 = fsub fast float 1.000000e+00, %7003
  %7029 = fadd fast float %7028, %7002
  %7030 = fadd fast float %7029, %7007
  %7031 = fmul fast float %7030, 0x3FC5555560000000
  %7032 = fdiv fast float %7008, %7031
  %7033 = fsub fast float %7027, %7032
  %7034 = fsub fast float 1.000000e+00, %6982
  %7035 = fadd fast float %7013, %7000
  %7036 = fmul fast float %7035, 0x3FC5555560000000
  %7037 = fdiv fast float %7014, %7036
  %7038 = fadd fast float %7037, %7034
  %7039 = fmul fast float %7021, %6975
  %7040 = fsub fast float %6902, %7039
  %7041 = fmul fast float %7026, %6975
  %7042 = fadd fast float %7041, %6902
  %7043 = fmul fast float %7038, %6976
  %7044 = fadd fast float %7043, %6903
  %7045 = fmul fast float %7033, %6976
  %7046 = fsub fast float %6903, %7045
  %7047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7040, float %7046, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7048 = extractvalue %dx.types.ResRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.ResRet.f32 %7047, 1
  %7050 = extractvalue %dx.types.ResRet.f32 %7047, 2
  %7051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7042, float %7046, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7052 = extractvalue %dx.types.ResRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.ResRet.f32 %7051, 1
  %7054 = extractvalue %dx.types.ResRet.f32 %7051, 2
  %7055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7040, float %7044, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7056 = extractvalue %dx.types.ResRet.f32 %7055, 0
  %7057 = extractvalue %dx.types.ResRet.f32 %7055, 1
  %7058 = extractvalue %dx.types.ResRet.f32 %7055, 2
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %7042, float %7044, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = extractvalue %dx.types.ResRet.f32 %7059, 1
  %7062 = extractvalue %dx.types.ResRet.f32 %7059, 2
  %7063 = fsub fast float %7056, %7048
  %7064 = fsub fast float %7057, %7049
  %7065 = fsub fast float %7058, %7050
  %7066 = fmul fast float %7063, %7036
  %7067 = fmul fast float %7064, %7036
  %7068 = fmul fast float %7065, %7036
  %7069 = fadd fast float %7066, %7048
  %7070 = fadd fast float %7067, %7049
  %7071 = fadd fast float %7068, %7050
  %7072 = fsub fast float %7060, %7052
  %7073 = fsub fast float %7061, %7053
  %7074 = fsub fast float %7062, %7054
  %7075 = fmul fast float %7072, %7036
  %7076 = fmul fast float %7073, %7036
  %7077 = fmul fast float %7074, %7036
  %7078 = fsub fast float %7052, %7069
  %7079 = fadd fast float %7078, %7075
  %7080 = fsub fast float %7053, %7070
  %7081 = fadd fast float %7080, %7076
  %7082 = fsub fast float %7054, %7071
  %7083 = fadd fast float %7082, %7077
  %7084 = fmul fast float %7079, %7024
  %7085 = fmul fast float %7081, %7024
  %7086 = fmul fast float %7083, %7024
  %7087 = fadd fast float %7084, %7069
  %7088 = fadd fast float %7085, %7070
  %7089 = fadd fast float %7086, %7071
  %7090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7091 = extractvalue %dx.types.CBufRet.f32 %7090, 1
  %7092 = fmul fast float %7087, %7091
  %7093 = fmul fast float %7088, %7091
  %7094 = fmul fast float %7089, %7091
  br label %7095

; <label>:7095                                    ; preds = %6927, %6896
  %7096 = phi float [ %6966, %6927 ], [ 1.000000e+00, %6896 ]
  %7097 = phi float [ %6967, %6927 ], [ 1.000000e+00, %6896 ]
  %7098 = phi float [ %6968, %6927 ], [ 1.000000e+00, %6896 ]
  %7099 = phi float [ %7092, %6927 ], [ 0.000000e+00, %6896 ]
  %7100 = phi float [ %7093, %6927 ], [ 0.000000e+00, %6896 ]
  %7101 = phi float [ %7094, %6927 ], [ 0.000000e+00, %6896 ]
  %7102 = fmul fast float %7099, %6873
  %7103 = fmul fast float %7100, %6873
  %7104 = fmul fast float %7101, %6873
  %7105 = call float @dx.op.dot3.f32(i32 55, float %7096, float %7097, float %7098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7106 = call float @dx.op.dot3.f32(i32 55, float %7102, float %7103, float %7104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = select i1 %265, float %7105, float %7096
  %7108 = select i1 %265, float %7105, float %7097
  %7109 = select i1 %265, float 1.000000e+00, float %7098
  %7110 = select i1 %265, float %7106, float %7102
  %7111 = select i1 %265, float 0.000000e+00, float %7103
  %7112 = select i1 %265, float 0.000000e+00, float %7104
  %7113 = fmul fast float %7107, %6886
  %7114 = fmul fast float %7108, %6887
  %7115 = fmul fast float %7109, %6888
  %7116 = fadd fast float %7113, %7110
  %7117 = fadd fast float %7114, %7111
  %7118 = fadd fast float %7112, %7115
  %7119 = fmul fast float %7107, %6864
  %7120 = fmul fast float %7108, %6865
  %7121 = fmul fast float %7109, %6866
  %7122 = fmul fast float %142, %6898
  %7123 = fmul fast float %144, %6899
  %7124 = fsub fast float 1.000000e+00, %7122
  %7125 = fsub fast float 1.000000e+00, %7123
  %7126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7127 = extractvalue %dx.types.CBufRet.f32 %7126, 0
  %7128 = extractvalue %dx.types.CBufRet.f32 %7126, 1
  %7129 = extractvalue %dx.types.CBufRet.f32 %7126, 2
  %7130 = fmul fast float %7124, %7127
  %7131 = fmul fast float %7124, %7128
  %7132 = fmul fast float %7124, %7129
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 0
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7136 = extractvalue %dx.types.CBufRet.f32 %7133, 2
  %7137 = fmul fast float %7125, %7134
  %7138 = fmul fast float %7125, %7135
  %7139 = fmul fast float %7125, %7136
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 0
  %7142 = extractvalue %dx.types.CBufRet.f32 %7140, 1
  %7143 = extractvalue %dx.types.CBufRet.f32 %7140, 2
  %7144 = fadd fast float %7137, %7141
  %7145 = fadd fast float %7144, %7130
  %7146 = fadd fast float %7138, %7142
  %7147 = fadd fast float %7146, %7131
  %7148 = fadd fast float %7139, %7143
  %7149 = fadd fast float %7148, %7132
  %7150 = fmul fast float %7145, %228
  %7151 = fmul fast float %7147, %228
  %7152 = fmul fast float %7149, %228
  br label %7153

; <label>:7153                                    ; preds = %7095, %6863
  %7154 = phi float [ %7150, %7095 ], [ %193, %6863 ]
  %7155 = phi float [ %7151, %7095 ], [ %194, %6863 ]
  %7156 = phi float [ %7152, %7095 ], [ %195, %6863 ]
  %7157 = phi float [ %228, %7095 ], [ %101, %6863 ]
  %7158 = phi float [ %7116, %7095 ], [ %6886, %6863 ]
  %7159 = phi float [ %7117, %7095 ], [ %6887, %6863 ]
  %7160 = phi float [ %7118, %7095 ], [ %6888, %6863 ]
  %7161 = phi float [ %7119, %7095 ], [ %6864, %6863 ]
  %7162 = phi float [ %7120, %7095 ], [ %6865, %6863 ]
  %7163 = phi float [ %7121, %7095 ], [ %6866, %6863 ]
  %7164 = phi float [ %7096, %7095 ], [ 1.000000e+00, %6863 ]
  br i1 %6895, label %8319, label %7165

; <label>:7165                                    ; preds = %7153
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 0
  %7168 = extractvalue %dx.types.CBufRet.f32 %7166, 1
  %7169 = extractvalue %dx.types.CBufRet.f32 %7166, 2
  %7170 = extractvalue %dx.types.CBufRet.f32 %7166, 3
  %7171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7172 = extractvalue %dx.types.CBufRet.f32 %7171, 0
  %7173 = extractvalue %dx.types.CBufRet.f32 %7171, 1
  %7174 = extractvalue %dx.types.CBufRet.f32 %7171, 2
  %7175 = extractvalue %dx.types.CBufRet.f32 %7171, 3
  %7176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7177 = extractvalue %dx.types.CBufRet.f32 %7176, 0
  %7178 = extractvalue %dx.types.CBufRet.f32 %7176, 1
  %7179 = extractvalue %dx.types.CBufRet.f32 %7176, 2
  %7180 = extractvalue %dx.types.CBufRet.f32 %7176, 3
  %7181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7182 = extractvalue %dx.types.CBufRet.f32 %7181, 0
  %7183 = extractvalue %dx.types.CBufRet.f32 %7181, 1
  %7184 = extractvalue %dx.types.CBufRet.f32 %7181, 2
  %7185 = extractvalue %dx.types.CBufRet.f32 %7181, 3
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 3
  %7188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7189 = extractvalue %dx.types.CBufRet.f32 %7188, 3
  %7190 = extractvalue %dx.types.CBufRet.f32 %7188, 0
  %7191 = extractvalue %dx.types.CBufRet.f32 %7188, 1
  %7192 = extractvalue %dx.types.CBufRet.f32 %7188, 2
  %7193 = fcmp fast olt float %7192, -5.000000e-01
  %7194 = call float @dx.op.dot3.f32(i32 55, float %7154, float %7155, float %7156, float %7154, float %7155, float %7156)  ; Dot3(ax,ay,az,bx,by,bz)
  %7195 = call float @dx.op.unary.f32(i32 25, float %7194)  ; Rsqrt(value)
  %7196 = fmul fast float %7195, %7194
  %7197 = fmul fast float %7195, %7154
  %7198 = fmul fast float %7195, %7155
  %7199 = fmul fast float %7195, %7156
  %7200 = fadd fast float %7196, %7170
  %7201 = call float @dx.op.dot3.f32(i32 55, float %7197, float %7198, float %7199, float %7167, float %7168, float %7169)  ; Dot3(ax,ay,az,bx,by,bz)
  %7202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7203 = extractvalue %dx.types.CBufRet.i32 %7202, 1
  %7204 = and i32 %7203, 1
  %7205 = icmp ne i32 %7204, 0
  %7206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.f32 %7206, 2
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  %7209 = and i1 %7205, %7208
  br i1 %7209, label %7210, label %7616, !dx.controlflow.hints !122

; <label>:7210                                    ; preds = %7165
  %7211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7212 = extractvalue %dx.types.CBufRet.f32 %7211, 3
  %7213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7214 = extractvalue %dx.types.CBufRet.f32 %7213, 2
  %7215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.f32 %7215, 2
  %7217 = fsub fast float %7214, %7216
  %7218 = and i32 %7203, 2
  %7219 = extractvalue %dx.types.CBufRet.i32 %7202, 0
  %7220 = call i32 @dx.op.binary.i32(i32 40, i32 %7219, i32 3)  ; UMin(a,b)
  %7221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7222 = extractvalue %dx.types.CBufRet.f32 %7221, 0
  %7223 = extractvalue %dx.types.CBufRet.f32 %7221, 1
  %7224 = extractvalue %dx.types.CBufRet.f32 %7215, 0
  %7225 = extractvalue %dx.types.CBufRet.f32 %7215, 1
  %7226 = fsub fast float %7222, %7224
  %7227 = fsub fast float %7223, %7225
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 0
  %7230 = fcmp fast ogt float %7229, 0.000000e+00
  %7231 = fsub fast float -0.000000e+00, %7226
  %7232 = fsub fast float -0.000000e+00, %7227
  %7233 = call float @dx.op.dot2.f32(i32 54, float %7197, float %7198, float %7197, float %7198)  ; Dot2(ax,ay,bx,by)
  %7234 = call float @dx.op.dot2.f32(i32 54, float %7197, float %7198, float %7231, float %7232)  ; Dot2(ax,ay,bx,by)
  %7235 = fmul fast float %7234, 2.000000e+00
  %7236 = call float @dx.op.dot2.f32(i32 54, float %7231, float %7232, float %7231, float %7232)  ; Dot2(ax,ay,bx,by)
  %7237 = fmul fast float %7229, %7229
  %7238 = fsub fast float %7236, %7237
  %7239 = fmul fast float %7235, %7235
  %7240 = fmul fast float %7233, 4.000000e+00
  %7241 = fmul fast float %7240, %7238
  %7242 = fsub fast float %7239, %7241
  %7243 = fcmp fast ogt float %7242, 0.000000e+00
  br i1 %7243, label %7244, label %7259

; <label>:7244                                    ; preds = %7210
  %7245 = fcmp fast ogt float %7235, 0.000000e+00
  %7246 = call float @dx.op.unary.f32(i32 24, float %7242)  ; Sqrt(value)
  %7247 = fsub fast float -0.000000e+00, %7246
  %7248 = select i1 %7245, float %7246, float %7247
  %7249 = fadd fast float %7248, %7235
  %7250 = fmul float %7249, -5.000000e-01
  %7251 = fdiv fast float %7250, %7233
  %7252 = call float @dx.op.binary.f32(i32 35, float %7251, float 0.000000e+00)  ; FMax(a,b)
  %7253 = call float @dx.op.binary.f32(i32 36, float %7196, float %7252)  ; FMin(a,b)
  %7254 = fdiv fast float %7238, %7250
  %7255 = call float @dx.op.binary.f32(i32 35, float %7254, float 0.000000e+00)  ; FMax(a,b)
  %7256 = call float @dx.op.binary.f32(i32 36, float %7196, float %7255)  ; FMin(a,b)
  %7257 = call float @dx.op.binary.f32(i32 36, float %7253, float %7256)  ; FMin(a,b)
  %7258 = call float @dx.op.binary.f32(i32 35, float %7253, float %7256)  ; FMax(a,b)
  br label %7259

; <label>:7259                                    ; preds = %7244, %7210
  %7260 = phi float [ %7258, %7244 ], [ -1.000000e+00, %7210 ]
  %7261 = phi float [ %7257, %7244 ], [ -1.000000e+00, %7210 ]
  %7262 = phi i1 [ true, %7244 ], [ false, %7210 ]
  %7263 = and i1 %7230, %7262
  br i1 %7263, label %7264, label %7266

; <label>:7264                                    ; preds = %7259
  %7265 = fcmp fast oeq float %7261, %7260
  br i1 %7265, label %7569, label %7267

; <label>:7266                                    ; preds = %7259
  br i1 %7230, label %7569, label %7267

; <label>:7267                                    ; preds = %7266, %7264
  %7268 = phi float [ %7196, %7266 ], [ %7260, %7264 ]
  %7269 = phi float [ 0.000000e+00, %7266 ], [ %7261, %7264 ]
  %7270 = icmp ne i32 %7218, 0
  %7271 = fmul fast float %7268, %7199
  %7272 = fadd fast float %7271, %7212
  %7273 = fmul fast float %7272, %7268
  %7274 = select i1 %7270, float 0.000000e+00, float %7273
  %7275 = fcmp fast oeq float %7199, 0.000000e+00
  %7276 = fdiv fast float %7217, %7199
  %7277 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7276)  ; FMax(a,b)
  %7278 = select i1 %7275, float %7268, float %7277
  %7279 = call float @dx.op.binary.f32(i32 36, float %7268, float %7278)  ; FMin(a,b)
  %7280 = fcmp fast ogt float %7199, 0.000000e+00
  %7281 = fcmp fast olt float %7217, 0.000000e+00
  br i1 %7280, label %7282, label %7339

; <label>:7282                                    ; preds = %7267
  %7283 = icmp eq i32 %7218, 0
  br i1 %7281, label %7284, label %7328

; <label>:7284                                    ; preds = %7282
  %7285 = select i1 %7283, float %7268, float 0.000000e+00
  %7286 = fsub fast float -0.000000e+00, %7285
  %7287 = call float @dx.op.unary.f32(i32 6, float %7286)  ; FAbs(value)
  %7288 = fmul fast float %7285, %7199
  %7289 = fadd fast float %7288, %7212
  %7290 = fmul fast float %7287, %7289
  %7291 = fsub fast float %7274, %7290
  %7292 = fsub fast float %7268, %7287
  %7293 = select i1 %7283, float %7292, float 0.000000e+00
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.CBufRet.f32 %7294, 1
  %7297 = extractvalue %dx.types.CBufRet.f32 %7294, 2
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 0
  %7300 = extractvalue %dx.types.CBufRet.f32 %7298, 1
  %7301 = extractvalue %dx.types.CBufRet.f32 %7298, 2
  %7302 = extractvalue %dx.types.CBufRet.f32 %7298, 3
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 3
  %7305 = call float @dx.op.binary.f32(i32 36, float %7291, float %7304)  ; FMin(a,b)
  %7306 = fmul fast float %7302, %7293
  %7307 = call float @dx.op.unary.f32(i32 7, float %7306)  ; Saturate(value)
  %7308 = fsub fast float %7299, %7295
  %7309 = fsub fast float %7300, %7296
  %7310 = fsub fast float %7301, %7297
  %7311 = fmul fast float %7307, %7308
  %7312 = fmul fast float %7307, %7309
  %7313 = fmul fast float %7307, %7310
  %7314 = fadd fast float %7311, %7295
  %7315 = fadd fast float %7312, %7296
  %7316 = fadd fast float %7313, %7297
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7319 = extractvalue %dx.types.CBufRet.f32 %7317, 1
  %7320 = fadd fast float %7319, %7318
  %7321 = call float @dx.op.unary.f32(i32 7, float %7320)  ; Saturate(value)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7323 = extractvalue %dx.types.CBufRet.f32 %7317, 3
  %7324 = fadd fast float %7323, %7322
  %7325 = call float @dx.op.unary.f32(i32 7, float %7324)  ; Saturate(value)
  %7326 = fmul fast float %7321, %7305
  %7327 = fmul fast float %7326, %7325
  br label %7569

; <label>:7328                                    ; preds = %7282
  br i1 %7283, label %7329, label %7350

; <label>:7329                                    ; preds = %7328
  %7330 = call float @dx.op.binary.f32(i32 36, float %7279, float %7269)  ; FMin(a,b)
  %7331 = fsub fast float %7279, %7330
  %7332 = fsub fast float %7331, %7268
  %7333 = call float @dx.op.unary.f32(i32 6, float %7332)  ; FAbs(value)
  %7334 = fadd fast float %7331, %7268
  %7335 = fmul fast float %7334, %7199
  %7336 = fadd fast float %7335, %7212
  %7337 = fmul fast float %7336, %7333
  %7338 = fsub fast float %7274, %7337
  br label %7350

; <label>:7339                                    ; preds = %7267
  br i1 %7281, label %7340, label %7350

; <label>:7340                                    ; preds = %7339
  %7341 = call float @dx.op.binary.f32(i32 35, float %7269, float %7279)  ; FMax(a,b)
  %7342 = icmp eq i32 %7218, 0
  %7343 = select i1 %7342, float %7279, float 0.000000e+00
  %7344 = fsub fast float -0.000000e+00, %7343
  %7345 = call float @dx.op.unary.f32(i32 6, float %7344)  ; FAbs(value)
  %7346 = fmul fast float %7343, %7199
  %7347 = fadd fast float %7346, %7212
  %7348 = fmul fast float %7345, %7347
  %7349 = fsub fast float %7274, %7348
  br label %7350

; <label>:7350                                    ; preds = %7340, %7339, %7329, %7328
  %7351 = phi float [ %7269, %7328 ], [ %7269, %7329 ], [ %7341, %7340 ], [ %7269, %7339 ]
  %7352 = phi float [ 0.000000e+00, %7328 ], [ %7333, %7329 ], [ %7345, %7340 ], [ 0.000000e+00, %7339 ]
  %7353 = phi float [ %7274, %7328 ], [ %7338, %7329 ], [ %7349, %7340 ], [ %7274, %7339 ]
  %7354 = phi float [ %7279, %7328 ], [ %7279, %7329 ], [ %7268, %7340 ], [ %7268, %7339 ]
  %7355 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %7355, align 4, !tbaa !123, !noalias !125
  %7356 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %7356, align 4, !tbaa !123, !noalias !125
  %7357 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %7357, align 4, !tbaa !123, !noalias !125
  %7358 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7358, align 4, !tbaa !123, !noalias !125
  %7359 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7359, align 4, !tbaa !123, !noalias !125
  %7360 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7360, align 4, !tbaa !123, !noalias !125
  %7361 = icmp sgt i32 %7220, 0
  br i1 %7361, label %7362, label %7423

; <label>:7362                                    ; preds = %7350
  br label %7363

; <label>:7363                                    ; preds = %7412, %7362
  %7364 = phi i32 [ %7413, %7412 ], [ 0, %7362 ]
  %7365 = phi i32 [ %7414, %7412 ], [ 0, %7362 ]
  %7366 = add nuw i32 %7365, 171
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7366)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.CBufRet.f32 %7367, 1
  %7370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.f32 %7370, 0
  %7372 = extractvalue %dx.types.CBufRet.f32 %7370, 1
  %7373 = fsub fast float %7368, %7371
  %7374 = fsub fast float %7369, %7372
  %7375 = extractvalue %dx.types.CBufRet.f32 %7367, 2
  %7376 = fsub fast float -0.000000e+00, %7373
  %7377 = fsub fast float -0.000000e+00, %7374
  %7378 = call float @dx.op.dot2.f32(i32 54, float %7197, float %7198, float %7376, float %7377)  ; Dot2(ax,ay,bx,by)
  %7379 = fmul fast float %7378, 2.000000e+00
  %7380 = call float @dx.op.dot2.f32(i32 54, float %7376, float %7377, float %7376, float %7377)  ; Dot2(ax,ay,bx,by)
  %7381 = fmul fast float %7375, %7375
  %7382 = fsub fast float %7380, %7381
  %7383 = fmul fast float %7379, %7379
  %7384 = fmul fast float %7240, %7382
  %7385 = fsub fast float %7383, %7384
  %7386 = fcmp fast ogt float %7385, 0.000000e+00
  br i1 %7386, label %7387, label %7402

; <label>:7387                                    ; preds = %7363
  %7388 = fcmp fast ogt float %7379, 0.000000e+00
  %7389 = call float @dx.op.unary.f32(i32 24, float %7385)  ; Sqrt(value)
  %7390 = fsub fast float -0.000000e+00, %7389
  %7391 = select i1 %7388, float %7389, float %7390
  %7392 = fadd fast float %7391, %7379
  %7393 = fmul float %7392, -5.000000e-01
  %7394 = fdiv fast float %7393, %7233
  %7395 = call float @dx.op.binary.f32(i32 35, float %7394, float 0.000000e+00)  ; FMax(a,b)
  %7396 = call float @dx.op.binary.f32(i32 36, float %7268, float %7395)  ; FMin(a,b)
  %7397 = fdiv fast float %7382, %7393
  %7398 = call float @dx.op.binary.f32(i32 35, float %7397, float 0.000000e+00)  ; FMax(a,b)
  %7399 = call float @dx.op.binary.f32(i32 36, float %7268, float %7398)  ; FMin(a,b)
  %7400 = call float @dx.op.binary.f32(i32 36, float %7396, float %7399)  ; FMin(a,b)
  %7401 = call float @dx.op.binary.f32(i32 35, float %7396, float %7399)  ; FMax(a,b)
  br label %7402

; <label>:7402                                    ; preds = %7387, %7363
  %7403 = phi float [ %7401, %7387 ], [ -1.000000e+00, %7363 ]
  %7404 = phi float [ %7400, %7387 ], [ -1.000000e+00, %7363 ]
  %7405 = phi i1 [ true, %7387 ], [ false, %7363 ]
  br i1 %7405, label %7406, label %7412

; <label>:7406                                    ; preds = %7402
  %7407 = call float @dx.op.binary.f32(i32 35, float %7351, float %7404)  ; FMax(a,b)
  %7408 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7365
  store float %7407, float* %7408, align 4, !tbaa !123, !noalias !125
  %7409 = call float @dx.op.binary.f32(i32 35, float %7351, float %7403)  ; FMax(a,b)
  %7410 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7365
  store float %7409, float* %7410, align 4, !tbaa !123, !noalias !125
  %7411 = add nsw i32 %7364, 1
  br label %7412

; <label>:7412                                    ; preds = %7406, %7402
  %7413 = phi i32 [ %7411, %7406 ], [ %7364, %7402 ]
  %7414 = add nuw nsw i32 %7365, 1
  %7415 = icmp eq i32 %7414, %7220
  br i1 %7415, label %7416, label %7363

; <label>:7416                                    ; preds = %7412
  %7417 = load float, float* %7357, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7418 = load float, float* %7356, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %7419 = load float, float* %7355, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %7420 = load float, float* %7360, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7421 = load float, float* %7359, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %7422 = load float, float* %7358, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %7423

; <label>:7423                                    ; preds = %7416, %7350
  %7424 = phi float [ -1.000000e+00, %7350 ], [ %7422, %7416 ]
  %7425 = phi float [ -1.000000e+00, %7350 ], [ %7421, %7416 ]
  %7426 = phi float [ -1.000000e+00, %7350 ], [ %7420, %7416 ]
  %7427 = phi float [ -1.000000e+00, %7350 ], [ %7419, %7416 ]
  %7428 = phi float [ -1.000000e+00, %7350 ], [ %7418, %7416 ]
  %7429 = phi float [ -1.000000e+00, %7350 ], [ %7417, %7416 ]
  %7430 = phi i32 [ 0, %7350 ], [ %7413, %7416 ]
  %7431 = call float @dx.op.binary.f32(i32 36, float %7428, float %7429)  ; FMin(a,b)
  %7432 = call float @dx.op.binary.f32(i32 36, float %7427, float %7431)  ; FMin(a,b)
  %7433 = call float @dx.op.binary.f32(i32 35, float %7427, float %7428)  ; FMax(a,b)
  %7434 = call float @dx.op.binary.f32(i32 36, float %7433, float %7429)  ; FMin(a,b)
  %7435 = call float @dx.op.binary.f32(i32 36, float %7427, float %7428)  ; FMin(a,b)
  %7436 = call float @dx.op.binary.f32(i32 35, float %7435, float %7434)  ; FMax(a,b)
  %7437 = call float @dx.op.binary.f32(i32 35, float %7428, float %7429)  ; FMax(a,b)
  %7438 = call float @dx.op.binary.f32(i32 35, float %7427, float %7437)  ; FMax(a,b)
  store float %7432, float* %7355, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %7436, float* %7356, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %7438, float* %7357, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7439 = call float @dx.op.binary.f32(i32 36, float %7425, float %7426)  ; FMin(a,b)
  %7440 = call float @dx.op.binary.f32(i32 36, float %7424, float %7439)  ; FMin(a,b)
  %7441 = call float @dx.op.binary.f32(i32 35, float %7424, float %7425)  ; FMax(a,b)
  %7442 = call float @dx.op.binary.f32(i32 36, float %7441, float %7426)  ; FMin(a,b)
  %7443 = call float @dx.op.binary.f32(i32 36, float %7424, float %7425)  ; FMin(a,b)
  %7444 = call float @dx.op.binary.f32(i32 35, float %7443, float %7442)  ; FMax(a,b)
  %7445 = call float @dx.op.binary.f32(i32 35, float %7425, float %7426)  ; FMax(a,b)
  %7446 = call float @dx.op.binary.f32(i32 35, float %7424, float %7445)  ; FMax(a,b)
  store float %7440, float* %7358, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %7444, float* %7359, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %7446, float* %7360, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7447 = sub nsw i32 3, %7430
  %7448 = icmp sgt i32 %7447, 2
  br i1 %7448, label %7449, label %7487

; <label>:7449                                    ; preds = %7423
  %7450 = icmp eq i32 %7218, 0
  %7451 = fsub fast float %7268, %7352
  %7452 = select i1 %7450, float %7451, float %7352
  %7453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7454 = extractvalue %dx.types.CBufRet.f32 %7453, 0
  %7455 = extractvalue %dx.types.CBufRet.f32 %7453, 1
  %7456 = extractvalue %dx.types.CBufRet.f32 %7453, 2
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 0
  %7459 = extractvalue %dx.types.CBufRet.f32 %7457, 1
  %7460 = extractvalue %dx.types.CBufRet.f32 %7457, 2
  %7461 = extractvalue %dx.types.CBufRet.f32 %7457, 3
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 3
  %7464 = call float @dx.op.binary.f32(i32 36, float %7353, float %7463)  ; FMin(a,b)
  %7465 = fmul fast float %7461, %7452
  %7466 = call float @dx.op.unary.f32(i32 7, float %7465)  ; Saturate(value)
  %7467 = fsub fast float %7458, %7454
  %7468 = fsub fast float %7459, %7455
  %7469 = fsub fast float %7460, %7456
  %7470 = fmul fast float %7466, %7467
  %7471 = fmul fast float %7466, %7468
  %7472 = fmul fast float %7466, %7469
  %7473 = fadd fast float %7470, %7454
  %7474 = fadd fast float %7471, %7455
  %7475 = fadd fast float %7472, %7456
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.CBufRet.f32 %7476, 1
  %7479 = fadd fast float %7478, %7477
  %7480 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7481 = extractvalue %dx.types.CBufRet.f32 %7476, 2
  %7482 = extractvalue %dx.types.CBufRet.f32 %7476, 3
  %7483 = fadd fast float %7482, %7481
  %7484 = call float @dx.op.unary.f32(i32 7, float %7483)  ; Saturate(value)
  %7485 = fmul fast float %7480, %7464
  %7486 = fmul fast float %7485, %7484
  br label %7569

; <label>:7487                                    ; preds = %7423
  %7488 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7447
  %7489 = load float, float* %7488, align 4, !tbaa !123, !noalias !125
  %7490 = fcmp fast olt float %7489, %7354
  %7491 = icmp sgt i32 %7430, 0
  %7492 = and i1 %7491, %7490
  br i1 %7492, label %7493, label %7530

; <label>:7493                                    ; preds = %7487
  br label %7494

; <label>:7494                                    ; preds = %7523, %7493
  %7495 = phi float [ %7524, %7523 ], [ %7352, %7493 ]
  %7496 = phi float [ %7525, %7523 ], [ %7353, %7493 ]
  %7497 = phi float [ %7505, %7523 ], [ %7489, %7493 ]
  %7498 = phi i32 [ %7502, %7523 ], [ %7447, %7493 ]
  %7499 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7498
  %7500 = load float, float* %7499, align 4, !tbaa !123, !noalias !125
  %7501 = icmp slt i32 %7498, 2
  %7502 = add nsw i32 %7498, 1
  %7503 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7502
  %7504 = load float, float* %7503, align 4, !tbaa !123, !noalias !125
  %7505 = select i1 %7501, float %7504, float %7268
  %7506 = call float @dx.op.binary.f32(i32 36, float %7505, float %7500)  ; FMin(a,b)
  %7507 = call float @dx.op.binary.f32(i32 36, float %7354, float %7506)  ; FMin(a,b)
  %7508 = icmp eq i32 %7218, 0
  %7509 = fadd fast float %7507, %7497
  %7510 = fmul fast float %7509, %7199
  %7511 = fadd fast float %7510, %7212
  br i1 %7508, label %7517, label %7512

; <label>:7512                                    ; preds = %7494
  %7513 = fsub fast float %7507, %7497
  %7514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7513)  ; FMax(a,b)
  %7515 = fmul fast float %7514, %7511
  %7516 = fadd fast float %7515, %7496
  br label %7523

; <label>:7517                                    ; preds = %7494
  %7518 = fsub fast float %7497, %7507
  %7519 = call float @dx.op.unary.f32(i32 6, float %7518)  ; FAbs(value)
  %7520 = fadd fast float %7519, %7495
  %7521 = fmul fast float %7519, %7511
  %7522 = fsub fast float %7496, %7521
  br label %7523

; <label>:7523                                    ; preds = %7517, %7512
  %7524 = phi float [ %7514, %7512 ], [ %7520, %7517 ]
  %7525 = phi float [ %7516, %7512 ], [ %7522, %7517 ]
  %7526 = fcmp fast olt float %7505, %7354
  %7527 = icmp slt i32 %7502, 3
  %7528 = and i1 %7527, %7526
  br i1 %7528, label %7494, label %7529

; <label>:7529                                    ; preds = %7523
  br label %7530

; <label>:7530                                    ; preds = %7529, %7487
  %7531 = phi float [ %7352, %7487 ], [ %7524, %7529 ]
  %7532 = phi float [ %7353, %7487 ], [ %7525, %7529 ]
  %7533 = fsub fast float %7268, %7531
  %7534 = select i1 %7270, float %7531, float %7533
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7538 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 0
  %7541 = extractvalue %dx.types.CBufRet.f32 %7539, 1
  %7542 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7543 = extractvalue %dx.types.CBufRet.f32 %7539, 3
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 3
  %7546 = call float @dx.op.binary.f32(i32 36, float %7532, float %7545)  ; FMin(a,b)
  %7547 = fmul fast float %7543, %7534
  %7548 = call float @dx.op.unary.f32(i32 7, float %7547)  ; Saturate(value)
  %7549 = fsub fast float %7540, %7536
  %7550 = fsub fast float %7541, %7537
  %7551 = fsub fast float %7542, %7538
  %7552 = fmul fast float %7548, %7549
  %7553 = fmul fast float %7548, %7550
  %7554 = fmul fast float %7548, %7551
  %7555 = fadd fast float %7552, %7536
  %7556 = fadd fast float %7553, %7537
  %7557 = fadd fast float %7554, %7538
  %7558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7559 = extractvalue %dx.types.CBufRet.f32 %7558, 0
  %7560 = extractvalue %dx.types.CBufRet.f32 %7558, 1
  %7561 = fadd fast float %7560, %7559
  %7562 = call float @dx.op.unary.f32(i32 7, float %7561)  ; Saturate(value)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7558, 2
  %7564 = extractvalue %dx.types.CBufRet.f32 %7558, 3
  %7565 = fadd fast float %7564, %7563
  %7566 = call float @dx.op.unary.f32(i32 7, float %7565)  ; Saturate(value)
  %7567 = fmul fast float %7562, %7546
  %7568 = fmul fast float %7567, %7566
  br label %7569

; <label>:7569                                    ; preds = %7530, %7449, %7284, %7266, %7264
  %7570 = phi float [ %7293, %7284 ], [ %7452, %7449 ], [ %7534, %7530 ], [ 0.000000e+00, %7264 ], [ 0.000000e+00, %7266 ]
  %7571 = phi float [ %7327, %7284 ], [ %7486, %7449 ], [ %7568, %7530 ], [ 0.000000e+00, %7264 ], [ 0.000000e+00, %7266 ]
  %7572 = phi float [ %7314, %7284 ], [ %7473, %7449 ], [ %7555, %7530 ], [ 0.000000e+00, %7264 ], [ 0.000000e+00, %7266 ]
  %7573 = phi float [ %7315, %7284 ], [ %7474, %7449 ], [ %7556, %7530 ], [ 0.000000e+00, %7264 ], [ 0.000000e+00, %7266 ]
  %7574 = phi float [ %7316, %7284 ], [ %7475, %7449 ], [ %7557, %7530 ], [ 0.000000e+00, %7264 ], [ 0.000000e+00, %7266 ]
  %7575 = fmul fast float %7207, %7571
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.f32 %7576, 2
  %7578 = fsub fast float %7214, %7577
  %7579 = fcmp fast olt float %7575, -2.000000e+01
  %7580 = call float @dx.op.unary.f32(i32 21, float %7575)  ; Exp(value)
  %7581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.f32 %7581, 2
  %7583 = extractvalue %dx.types.CBufRet.f32 %7581, 3
  %7584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7584, 2
  %7586 = fmul fast float %7583, %7578
  %7587 = call float @dx.op.unary.f32(i32 7, float %7586)  ; Saturate(value)
  %7588 = fsub fast float 1.000000e+00, %7587
  %7589 = fmul fast float %7199, 5.000000e-01
  %7590 = fadd fast float %7589, 5.000000e-01
  %7591 = call float @dx.op.unary.f32(i32 7, float %7590)  ; Saturate(value)
  %7592 = fsub fast float 1.000000e+00, %7591
  %7593 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7588)  ; FMax(a,b)
  %7594 = fdiv fast float %7592, %7593
  %7595 = fsub fast float %7578, %7156
  %7596 = call float @dx.op.unary.f32(i32 6, float %7595)  ; FAbs(value)
  %7597 = fmul fast float %7596, %7582
  %7598 = call float @dx.op.unary.f32(i32 7, float %7594)  ; Saturate(value)
  %7599 = fsub fast float 1.000000e+00, %7597
  %7600 = fmul fast float %7599, %7598
  %7601 = fadd fast float %7600, %7597
  %7602 = fmul fast float %7585, %7578
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = fsub fast float 1.000000e+00, %7601
  %7605 = fmul fast float %7604, %7603
  %7606 = fadd fast float %7605, %7601
  %7607 = call float @dx.op.unary.f32(i32 7, float %7606)  ; Saturate(value)
  %7608 = fadd fast float %7580, -1.000000e+00
  %7609 = select i1 %7579, float -1.000000e+00, float %7608
  %7610 = fmul fast float %7607, %7609
  %7611 = fadd fast float %7610, 1.000000e+00
  %7612 = fsub fast float -0.000000e+00, %7610
  %7613 = fmul fast float %7572, %7612
  %7614 = fmul fast float %7573, %7612
  %7615 = fmul fast float %7574, %7612
  br label %7616

; <label>:7616                                    ; preds = %7569, %7165
  %7617 = phi float [ %7570, %7569 ], [ 0.000000e+00, %7165 ]
  %7618 = phi float [ %7611, %7569 ], [ 1.000000e+00, %7165 ]
  %7619 = phi float [ %7613, %7569 ], [ 0.000000e+00, %7165 ]
  %7620 = phi float [ %7614, %7569 ], [ 0.000000e+00, %7165 ]
  %7621 = phi float [ %7615, %7569 ], [ 0.000000e+00, %7165 ]
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 1
  %7624 = fsub fast float 1.000000e+00, %7618
  %7625 = fmul fast float %7624, %7200
  %7626 = fmul fast float %7625, %7623
  %7627 = fsub fast float %7200, %7626
  br i1 %7193, label %7628, label %7657, !dx.controlflow.hints !161

; <label>:7628                                    ; preds = %7616
  %7629 = fmul fast float %7201, %7190
  %7630 = fadd fast float %7629, %7191
  %7631 = call float @dx.op.unary.f32(i32 7, float %7630)  ; Saturate(value)
  %7632 = fmul fast float %7172, %7627
  %7633 = fsub fast float -0.000000e+00, %7632
  %7634 = fmul fast float %7173, %7627
  %7635 = fsub fast float -0.000000e+00, %7634
  %7636 = call float @dx.op.unary.f32(i32 21, float %7633)  ; Exp(value)
  %7637 = call float @dx.op.unary.f32(i32 21, float %7635)  ; Exp(value)
  %7638 = call float @dx.op.binary.f32(i32 35, float %7180, float %7636)  ; FMax(a,b)
  %7639 = call float @dx.op.binary.f32(i32 35, float %7180, float %7637)  ; FMax(a,b)
  %7640 = fsub fast float %7639, %7638
  %7641 = fmul fast float %7640, %7631
  %7642 = fadd fast float %7641, %7638
  %7643 = call float @dx.op.unary.f32(i32 7, float %7642)  ; Saturate(value)
  %7644 = fsub fast float %7177, %7182
  %7645 = fsub fast float %7178, %7183
  %7646 = fsub fast float %7179, %7184
  %7647 = fmul fast float %7631, %7644
  %7648 = fmul fast float %7631, %7645
  %7649 = fmul fast float %7631, %7646
  %7650 = fadd fast float %7647, %7182
  %7651 = fadd fast float %7648, %7183
  %7652 = fadd fast float %7649, %7184
  %7653 = fsub fast float 1.000000e+00, %7643
  %7654 = fmul fast float %7653, %7650
  %7655 = fmul fast float %7653, %7651
  %7656 = fmul fast float %7653, %7652
  br label %7716

; <label>:7657                                    ; preds = %7616
  %7658 = fmul fast float %7627, %7189
  %7659 = call float @dx.op.unary.f32(i32 7, float %7658)  ; Saturate(value)
  %7660 = fsub fast float 2.000000e+00, %7659
  %7661 = fmul fast float %7659, 9.921875e-01
  %7662 = fmul fast float %7661, %7660
  %7663 = fadd fast float %7662, 3.906250e-03
  %7664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %7663, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7665 = extractvalue %dx.types.ResRet.f32 %7664, 0
  %7666 = fsub fast float %7659, %7665
  %7667 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7666)  ; FMax(a,b)
  %7668 = fmul fast float %7175, %7156
  %7669 = call float @dx.op.unary.f32(i32 6, float %7668)  ; FAbs(value)
  %7670 = fcmp fast ogt float %7669, 0x3EB0C6F7A0000000
  br i1 %7670, label %7671, label %7677, !dx.controlflow.hints !162

; <label>:7671                                    ; preds = %7657
  %7672 = fmul fast float %7668, 0xBFF7154760000000
  %7673 = call float @dx.op.unary.f32(i32 21, float %7672)  ; Exp(value)
  %7674 = fsub fast float 1.000000e+00, %7673
  %7675 = fdiv fast float %7674, %7668
  %7676 = fmul fast float %7675, %7185
  br label %7677

; <label>:7677                                    ; preds = %7671, %7657
  %7678 = phi float [ %7676, %7671 ], [ %7185, %7657 ]
  %7679 = fadd fast float %7678, %7187
  %7680 = fmul fast float %7679, %7667
  %7681 = fmul fast float %7172, %7680
  %7682 = fsub fast float -0.000000e+00, %7681
  %7683 = fmul fast float %7173, %7680
  %7684 = fsub fast float -0.000000e+00, %7683
  %7685 = fmul fast float %7174, %7680
  %7686 = fsub fast float -0.000000e+00, %7685
  %7687 = call float @dx.op.unary.f32(i32 21, float %7682)  ; Exp(value)
  %7688 = call float @dx.op.unary.f32(i32 21, float %7684)  ; Exp(value)
  %7689 = call float @dx.op.unary.f32(i32 21, float %7686)  ; Exp(value)
  %7690 = fmul fast float %7201, %7201
  %7691 = fadd fast float %7690, 1.000000e+00
  %7692 = fmul fast float %7691, 0x3FAE8EC8A0000000
  %7693 = fmul fast float %7692, %7182
  %7694 = fmul fast float %7692, %7183
  %7695 = fmul fast float %7692, %7184
  %7696 = fmul fast float %7201, %7180
  %7697 = fsub fast float 1.000000e+00, %7696
  %7698 = fmul fast float %7180, %7180
  %7699 = fsub fast float 1.000000e+00, %7698
  %7700 = fmul fast float %7699, 0x3FB45F3060000000
  %7701 = fmul fast float %7697, %7697
  %7702 = fdiv fast float 1.000000e+00, %7701
  %7703 = fmul fast float %7700, %7702
  %7704 = fmul fast float %7703, %7177
  %7705 = fmul fast float %7703, %7178
  %7706 = fmul fast float %7703, %7179
  %7707 = fadd fast float %7704, %7693
  %7708 = fadd fast float %7705, %7694
  %7709 = fadd fast float %7706, %7695
  %7710 = fsub fast float 1.000000e+00, %7687
  %7711 = fsub fast float 1.000000e+00, %7688
  %7712 = fsub fast float 1.000000e+00, %7689
  %7713 = fmul fast float %7707, %7710
  %7714 = fmul fast float %7708, %7711
  %7715 = fmul fast float %7709, %7712
  br label %7716

; <label>:7716                                    ; preds = %7677, %7628
  %7717 = phi float [ %7654, %7628 ], [ %7713, %7677 ]
  %7718 = phi float [ %7655, %7628 ], [ %7714, %7677 ]
  %7719 = phi float [ %7656, %7628 ], [ %7715, %7677 ]
  %7720 = phi float [ %7643, %7628 ], [ %7687, %7677 ]
  %7721 = phi float [ %7643, %7628 ], [ %7688, %7677 ]
  %7722 = phi float [ %7643, %7628 ], [ %7689, %7677 ]
  br i1 %7209, label %7723, label %7921, !dx.controlflow.hints !163

; <label>:7723                                    ; preds = %7716
  %7724 = extractvalue %dx.types.CBufRet.f32 %7622, 0
  %7725 = fmul fast float %7724, %7624
  %7726 = fsub fast float %7619, %7717
  %7727 = fsub fast float %7620, %7718
  %7728 = fsub fast float %7621, %7719
  %7729 = fmul fast float %7725, %7726
  %7730 = fmul fast float %7725, %7727
  %7731 = fmul fast float %7725, %7728
  %7732 = fadd fast float %7729, %7717
  %7733 = fadd fast float %7730, %7718
  %7734 = fadd fast float %7731, %7719
  %7735 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7720)  ; FMax(a,b)
  %7736 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7721)  ; FMax(a,b)
  %7737 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7722)  ; FMax(a,b)
  %7738 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7618)  ; FMax(a,b)
  %7739 = call float @dx.op.binary.f32(i32 35, float %7617, float %7627)  ; FMax(a,b)
  %7740 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7739)  ; FMax(a,b)
  %7741 = fdiv fast float %7617, %7740
  %7742 = call float @dx.op.unary.f32(i32 7, float %7741)  ; Saturate(value)
  %7743 = fdiv fast float %7627, %7740
  %7744 = call float @dx.op.unary.f32(i32 7, float %7743)  ; Saturate(value)
  %7745 = fcmp fast une float %7738, 1.000000e+00
  br i1 %7745, label %7746, label %7759, !dx.controlflow.hints !164

; <label>:7746                                    ; preds = %7723
  %7747 = call float @dx.op.unary.f32(i32 23, float %7738)  ; Log(value)
  %7748 = fmul fast float %7747, 0x3FE62E4300000000
  %7749 = fmul fast float %7619, %7748
  %7750 = fsub fast float -0.000000e+00, %7749
  %7751 = fmul fast float %7620, %7748
  %7752 = fsub fast float -0.000000e+00, %7751
  %7753 = fmul fast float %7621, %7748
  %7754 = fsub fast float -0.000000e+00, %7753
  %7755 = fsub fast float 1.000000e+00, %7738
  %7756 = fdiv fast float %7750, %7755
  %7757 = fdiv fast float %7752, %7755
  %7758 = fdiv fast float %7754, %7755
  br label %7759

; <label>:7759                                    ; preds = %7746, %7723
  %7760 = phi float [ %7756, %7746 ], [ %7619, %7723 ]
  %7761 = phi float [ %7757, %7746 ], [ %7620, %7723 ]
  %7762 = phi float [ %7758, %7746 ], [ %7621, %7723 ]
  %7763 = phi float [ %7748, %7746 ], [ 0.000000e+00, %7723 ]
  %7764 = fcmp fast une float %7735, 1.000000e+00
  br i1 %7764, label %7765, label %7772, !dx.controlflow.hints !165

; <label>:7765                                    ; preds = %7759
  %7766 = call float @dx.op.unary.f32(i32 23, float %7735)  ; Log(value)
  %7767 = fmul fast float %7766, 0x3FE62E4300000000
  %7768 = fmul fast float %7732, %7767
  %7769 = fsub fast float -0.000000e+00, %7768
  %7770 = fsub fast float 1.000000e+00, %7735
  %7771 = fdiv fast float %7769, %7770
  br label %7772

; <label>:7772                                    ; preds = %7765, %7759
  %7773 = phi float [ %7771, %7765 ], [ %7732, %7759 ]
  %7774 = phi float [ %7767, %7765 ], [ 0.000000e+00, %7759 ]
  %7775 = fcmp fast une float %7736, 1.000000e+00
  br i1 %7775, label %7776, label %7783, !dx.controlflow.hints !165

; <label>:7776                                    ; preds = %7772
  %7777 = call float @dx.op.unary.f32(i32 23, float %7736)  ; Log(value)
  %7778 = fmul fast float %7777, 0x3FE62E4300000000
  %7779 = fmul fast float %7733, %7778
  %7780 = fsub fast float -0.000000e+00, %7779
  %7781 = fsub fast float 1.000000e+00, %7736
  %7782 = fdiv fast float %7780, %7781
  br label %7783

; <label>:7783                                    ; preds = %7776, %7772
  %7784 = phi float [ %7782, %7776 ], [ %7733, %7772 ]
  %7785 = phi float [ %7778, %7776 ], [ 0.000000e+00, %7772 ]
  %7786 = fcmp fast une float %7737, 1.000000e+00
  br i1 %7786, label %7787, label %7794, !dx.controlflow.hints !165

; <label>:7787                                    ; preds = %7783
  %7788 = call float @dx.op.unary.f32(i32 23, float %7737)  ; Log(value)
  %7789 = fmul fast float %7788, 0x3FE62E4300000000
  %7790 = fmul fast float %7734, %7789
  %7791 = fsub fast float -0.000000e+00, %7790
  %7792 = fsub fast float 1.000000e+00, %7737
  %7793 = fdiv fast float %7791, %7792
  br label %7794

; <label>:7794                                    ; preds = %7787, %7783
  %7795 = phi float [ %7793, %7787 ], [ %7734, %7783 ]
  %7796 = phi float [ %7789, %7787 ], [ 0.000000e+00, %7783 ]
  %7797 = fmul fast float %7760, %7744
  %7798 = fmul fast float %7761, %7744
  %7799 = fmul fast float %7762, %7744
  %7800 = fmul fast float %7763, %7744
  %7801 = fmul fast float %7773, %7742
  %7802 = fmul fast float %7784, %7742
  %7803 = fmul fast float %7795, %7742
  %7804 = fmul fast float %7774, %7742
  %7805 = fmul fast float %7785, %7742
  %7806 = fmul fast float %7796, %7742
  %7807 = fadd fast float %7801, %7797
  %7808 = fadd fast float %7802, %7798
  %7809 = fadd fast float %7803, %7799
  %7810 = fadd fast float %7804, %7800
  %7811 = fadd fast float %7805, %7800
  %7812 = fadd fast float %7806, %7800
  %7813 = fcmp fast une float %7810, 0.000000e+00
  br i1 %7813, label %7814, label %7821, !dx.controlflow.hints !166

; <label>:7814                                    ; preds = %7794
  %7815 = fmul fast float %7810, 0x3FF7154760000000
  %7816 = call float @dx.op.unary.f32(i32 21, float %7815)  ; Exp(value)
  %7817 = fsub fast float 1.000000e+00, %7816
  %7818 = fmul fast float %7807, %7817
  %7819 = fsub fast float -0.000000e+00, %7818
  %7820 = fdiv fast float %7819, %7810
  br label %7821

; <label>:7821                                    ; preds = %7814, %7794
  %7822 = phi float [ %7816, %7814 ], [ 1.000000e+00, %7794 ]
  %7823 = phi float [ %7820, %7814 ], [ %7807, %7794 ]
  %7824 = fcmp fast une float %7811, 0.000000e+00
  br i1 %7824, label %7825, label %7832, !dx.controlflow.hints !166

; <label>:7825                                    ; preds = %7821
  %7826 = fmul fast float %7811, 0x3FF7154760000000
  %7827 = call float @dx.op.unary.f32(i32 21, float %7826)  ; Exp(value)
  %7828 = fsub fast float 1.000000e+00, %7827
  %7829 = fmul fast float %7808, %7828
  %7830 = fsub fast float -0.000000e+00, %7829
  %7831 = fdiv fast float %7830, %7811
  br label %7832

; <label>:7832                                    ; preds = %7825, %7821
  %7833 = phi float [ %7827, %7825 ], [ 1.000000e+00, %7821 ]
  %7834 = phi float [ %7831, %7825 ], [ %7808, %7821 ]
  %7835 = fcmp fast une float %7812, 0.000000e+00
  br i1 %7835, label %7836, label %7843, !dx.controlflow.hints !166

; <label>:7836                                    ; preds = %7832
  %7837 = fmul fast float %7812, 0x3FF7154760000000
  %7838 = call float @dx.op.unary.f32(i32 21, float %7837)  ; Exp(value)
  %7839 = fsub fast float 1.000000e+00, %7838
  %7840 = fmul fast float %7809, %7839
  %7841 = fsub fast float -0.000000e+00, %7840
  %7842 = fdiv fast float %7841, %7812
  br label %7843

; <label>:7843                                    ; preds = %7836, %7832
  %7844 = phi float [ %7838, %7836 ], [ 1.000000e+00, %7832 ]
  %7845 = phi float [ %7842, %7836 ], [ %7809, %7832 ]
  %7846 = fcmp fast ogt float %7742, %7744
  br i1 %7846, label %7847, label %7867

; <label>:7847                                    ; preds = %7843
  %7848 = fsub fast float 1.000000e+00, %7744
  %7849 = fmul fast float %7760, %7848
  %7850 = fmul fast float %7761, %7848
  %7851 = fmul fast float %7762, %7848
  %7852 = fmul fast float %7763, %7848
  %7853 = fcmp fast une float %7852, 0.000000e+00
  br i1 %7853, label %7854, label %7905, !dx.controlflow.hints !167

; <label>:7854                                    ; preds = %7847
  %7855 = fmul fast float %7852, 0x3FF7154760000000
  %7856 = call float @dx.op.unary.f32(i32 21, float %7855)  ; Exp(value)
  %7857 = fsub fast float 1.000000e+00, %7856
  %7858 = fmul fast float %7849, %7857
  %7859 = fsub fast float -0.000000e+00, %7858
  %7860 = fmul fast float %7850, %7857
  %7861 = fsub fast float -0.000000e+00, %7860
  %7862 = fmul fast float %7851, %7857
  %7863 = fsub fast float -0.000000e+00, %7862
  %7864 = fdiv fast float %7859, %7852
  %7865 = fdiv fast float %7861, %7852
  %7866 = fdiv fast float %7863, %7852
  br label %7905

; <label>:7867                                    ; preds = %7843
  %7868 = fsub fast float 1.000000e+00, %7742
  %7869 = fmul fast float %7773, %7868
  %7870 = fmul fast float %7784, %7868
  %7871 = fmul fast float %7795, %7868
  %7872 = fmul fast float %7774, %7868
  %7873 = fmul fast float %7785, %7868
  %7874 = fmul fast float %7796, %7868
  %7875 = fcmp fast une float %7872, 0.000000e+00
  br i1 %7875, label %7876, label %7883, !dx.controlflow.hints !166

; <label>:7876                                    ; preds = %7867
  %7877 = fmul fast float %7872, 0x3FF7154760000000
  %7878 = call float @dx.op.unary.f32(i32 21, float %7877)  ; Exp(value)
  %7879 = fsub fast float 1.000000e+00, %7878
  %7880 = fmul fast float %7869, %7879
  %7881 = fsub fast float -0.000000e+00, %7880
  %7882 = fdiv fast float %7881, %7872
  br label %7883

; <label>:7883                                    ; preds = %7876, %7867
  %7884 = phi float [ %7882, %7876 ], [ %7869, %7867 ]
  %7885 = phi float [ %7878, %7876 ], [ 1.000000e+00, %7867 ]
  %7886 = fcmp fast une float %7873, 0.000000e+00
  br i1 %7886, label %7887, label %7894, !dx.controlflow.hints !166

; <label>:7887                                    ; preds = %7883
  %7888 = fmul fast float %7873, 0x3FF7154760000000
  %7889 = call float @dx.op.unary.f32(i32 21, float %7888)  ; Exp(value)
  %7890 = fsub fast float 1.000000e+00, %7889
  %7891 = fmul fast float %7870, %7890
  %7892 = fsub fast float -0.000000e+00, %7891
  %7893 = fdiv fast float %7892, %7873
  br label %7894

; <label>:7894                                    ; preds = %7887, %7883
  %7895 = phi float [ %7893, %7887 ], [ %7870, %7883 ]
  %7896 = phi float [ %7889, %7887 ], [ 1.000000e+00, %7883 ]
  %7897 = fcmp fast une float %7874, 0.000000e+00
  br i1 %7897, label %7898, label %7905, !dx.controlflow.hints !166

; <label>:7898                                    ; preds = %7894
  %7899 = fmul fast float %7874, 0x3FF7154760000000
  %7900 = call float @dx.op.unary.f32(i32 21, float %7899)  ; Exp(value)
  %7901 = fsub fast float 1.000000e+00, %7900
  %7902 = fmul fast float %7871, %7901
  %7903 = fsub fast float -0.000000e+00, %7902
  %7904 = fdiv fast float %7903, %7874
  br label %7905

; <label>:7905                                    ; preds = %7898, %7894, %7854, %7847
  %7906 = phi float [ %7904, %7898 ], [ %7866, %7854 ], [ %7851, %7847 ], [ %7871, %7894 ]
  %7907 = phi float [ %7895, %7898 ], [ %7865, %7854 ], [ %7850, %7847 ], [ %7895, %7894 ]
  %7908 = phi float [ %7884, %7898 ], [ %7864, %7854 ], [ %7849, %7847 ], [ %7884, %7894 ]
  %7909 = phi float [ %7900, %7898 ], [ %7856, %7854 ], [ 1.000000e+00, %7847 ], [ 1.000000e+00, %7894 ]
  %7910 = phi float [ %7896, %7898 ], [ %7856, %7854 ], [ 1.000000e+00, %7847 ], [ %7896, %7894 ]
  %7911 = phi float [ %7885, %7898 ], [ %7856, %7854 ], [ 1.000000e+00, %7847 ], [ %7885, %7894 ]
  %7912 = fmul fast float %7911, %7823
  %7913 = fmul fast float %7910, %7834
  %7914 = fmul fast float %7909, %7845
  %7915 = fadd fast float %7912, %7908
  %7916 = fadd fast float %7913, %7907
  %7917 = fadd fast float %7914, %7906
  %7918 = fmul fast float %7911, %7822
  %7919 = fmul fast float %7910, %7833
  %7920 = fmul fast float %7909, %7844
  br label %7921

; <label>:7921                                    ; preds = %7905, %7716
  %7922 = phi float [ %7920, %7905 ], [ %7722, %7716 ]
  %7923 = phi float [ %7919, %7905 ], [ %7721, %7716 ]
  %7924 = phi float [ %7918, %7905 ], [ %7720, %7716 ]
  %7925 = phi float [ %7917, %7905 ], [ %7719, %7716 ]
  %7926 = phi float [ %7916, %7905 ], [ %7718, %7716 ]
  %7927 = phi float [ %7915, %7905 ], [ %7717, %7716 ]
  %7928 = fmul fast float %7927, %6873
  %7929 = fmul fast float %7926, %6873
  %7930 = fmul fast float %7925, %6873
  %7931 = fmul fast float %7924, %7164
  %7932 = call float @dx.op.dot3.f32(i32 55, float %7924, float %7923, float %7922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7933 = call float @dx.op.dot3.f32(i32 55, float %7928, float %7929, float %7930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7934 = select i1 %265, float %7932, float %7924
  %7935 = select i1 %265, float %7932, float %7923
  %7936 = select i1 %265, float 1.000000e+00, float %7922
  %7937 = select i1 %265, float %7933, float %7928
  %7938 = select i1 %265, float 0.000000e+00, float %7929
  %7939 = select i1 %265, float 0.000000e+00, float %7930
  %7940 = fmul fast float %7934, %7158
  %7941 = fmul fast float %7935, %7159
  %7942 = fmul fast float %7936, %7160
  %7943 = fadd fast float %7940, %7937
  %7944 = fadd fast float %7941, %7938
  %7945 = fadd fast float %7939, %7942
  %7946 = fmul fast float %7934, %7161
  %7947 = fmul fast float %7935, %7162
  %7948 = fmul fast float %7936, %7163
  %7949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7950 = extractvalue %dx.types.CBufRet.i32 %7949, 0
  %7951 = icmp eq i32 %7950, 0
  br i1 %7951, label %8319, label %7952, !dx.controlflow.hints !168

; <label>:7952                                    ; preds = %7921
  %7953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.f32 %7953, 2
  %7955 = extractvalue %dx.types.CBufRet.f32 %7953, 3
  %7956 = fmul fast float %7954, %110
  %7957 = fmul fast float %7955, %111
  %7958 = fmul fast float %7956, 2.000000e+00
  %7959 = fmul fast float %7957, 2.000000e+00
  %7960 = fsub fast float 1.000000e+00, %7958
  %7961 = fsub fast float 1.000000e+00, %7959
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.CBufRet.f32 %7962, 2
  %7966 = fmul fast float %7960, %7963
  %7967 = fmul fast float %7960, %7964
  %7968 = fmul fast float %7960, %7965
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.CBufRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.CBufRet.f32 %7969, 2
  %7973 = fmul fast float %7961, %7970
  %7974 = fmul fast float %7961, %7971
  %7975 = fmul fast float %7961, %7972
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 0
  %7978 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7979 = extractvalue %dx.types.CBufRet.f32 %7976, 2
  %7980 = fadd fast float %7973, %7977
  %7981 = fadd fast float %7980, %7966
  %7982 = fadd fast float %7974, %7978
  %7983 = fadd fast float %7982, %7967
  %7984 = fadd fast float %7975, %7979
  %7985 = fadd fast float %7984, %7968
  %7986 = fmul fast float %7981, %7157
  %7987 = fmul fast float %7983, %7157
  %7988 = fmul fast float %7985, %7157
  %7989 = fmul fast float %7986, %7986
  %7990 = fmul fast float %7987, %7987
  %7991 = fadd fast float %7989, %7990
  %7992 = fmul fast float %7988, %7988
  %7993 = fadd fast float %7991, %7992
  %7994 = call float @dx.op.unary.f32(i32 24, float %7993)  ; Sqrt(value)
  %7995 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  %7996 = fsub fast float %7994, %7995
  %7997 = extractvalue %dx.types.CBufRet.f32 %6884, 2
  %7998 = fmul fast float %7996, %7997
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = fadd fast float %7999, -5.000000e-01
  %8001 = fmul fast float %8000, 2.000000e+00
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 2
  %8004 = call float @dx.op.binary.f32(i32 36, float %8003, float %8001)  ; FMin(a,b)
  %8005 = fsub fast float -0.000000e+00, %8003
  %8006 = fcmp fast ogt float %8004, %8005
  br i1 %8006, label %8007, label %8319, !dx.controlflow.hints !169

; <label>:8007                                    ; preds = %7952
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 3
  %8010 = fcmp fast ogt float %8009, 0.000000e+00
  br i1 %8010, label %8011, label %8086, !dx.controlflow.hints !170

; <label>:8011                                    ; preds = %8007
  %8012 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8013 = extractvalue %dx.types.Dimensions %8012, 0
  %8014 = sitofp i32 %8013 to float
  %8015 = extractvalue %dx.types.Dimensions %8012, 1
  %8016 = sitofp i32 %8015 to float
  %8017 = fmul fast float %7956, %8014
  %8018 = fmul fast float %7957, %8016
  %8019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.f32 %8019, 1
  %8021 = fsub fast float -0.000000e+00, %8020
  %8022 = fptoui float %8021 to i32
  %8023 = fptoui float %8017 to i32
  %8024 = fptoui float %8018 to i32
  %8025 = and i32 %8022, 31
  %8026 = lshr i32 %8023, %8025
  %8027 = lshr i32 %8024, %8025
  %8028 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8022, i32 %8026, i32 %8027, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8029 = extractvalue %dx.types.ResRet.f32 %8028, 0
  %8030 = fcmp fast olt float %8029, -1.000000e+00
  %8031 = fcmp fast ogt float %8029, -1.000000e+00
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 1
  %8034 = select i1 %8031, float %8033, float 1.000000e+00
  %8035 = fadd fast float %8029, 1.000000e+00
  %8036 = fmul fast float %8034, %8035
  %8037 = call float @dx.op.unary.f32(i32 6, float %8036)  ; FAbs(value)
  %8038 = extractvalue %dx.types.CBufRet.f32 %8032, 3
  %8039 = fcmp fast oge float %8037, %8038
  %8040 = select i1 %8039, float 0x4197782600000000, float %8037
  %8041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8042 = extractvalue %dx.types.CBufRet.f32 %8041, 0
  %8043 = extractvalue %dx.types.CBufRet.f32 %8041, 1
  %8044 = extractvalue %dx.types.CBufRet.f32 %8041, 2
  %8045 = select i1 %8030, float %8042, float %7963
  %8046 = select i1 %8030, float %8043, float %7964
  %8047 = select i1 %8030, float %8044, float %7965
  %8048 = fmul fast float %8045, %7960
  %8049 = fmul fast float %8046, %7960
  %8050 = fmul fast float %8047, %7960
  %8051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8052 = extractvalue %dx.types.CBufRet.f32 %8051, 0
  %8053 = extractvalue %dx.types.CBufRet.f32 %8051, 1
  %8054 = extractvalue %dx.types.CBufRet.f32 %8051, 2
  %8055 = select i1 %8030, float %8052, float %7970
  %8056 = select i1 %8030, float %8053, float %7971
  %8057 = select i1 %8030, float %8054, float %7972
  %8058 = fmul fast float %8055, %7961
  %8059 = fmul fast float %8056, %7961
  %8060 = fmul fast float %8057, %7961
  %8061 = fadd fast float %8058, %8048
  %8062 = fadd fast float %8059, %8049
  %8063 = fadd fast float %8060, %8050
  %8064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.CBufRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.CBufRet.f32 %8064, 2
  %8068 = select i1 %8030, float %8065, float %7977
  %8069 = select i1 %8030, float %8066, float %7978
  %8070 = select i1 %8030, float %8067, float %7979
  %8071 = fadd fast float %8061, %8068
  %8072 = fadd fast float %8062, %8069
  %8073 = fadd fast float %8063, %8070
  %8074 = fmul fast float %8071, %8040
  %8075 = fmul fast float %8072, %8040
  %8076 = fmul fast float %8073, %8040
  %8077 = fmul fast float %8074, %8074
  %8078 = fmul fast float %8075, %8075
  %8079 = fadd fast float %8077, %8078
  %8080 = fmul fast float %8076, %8076
  %8081 = fadd fast float %8079, %8080
  %8082 = call float @dx.op.unary.f32(i32 24, float %8081)  ; Sqrt(value)
  %8083 = fsub fast float %8082, %7995
  %8084 = fmul fast float %8083, %7997
  %8085 = call float @dx.op.unary.f32(i32 7, float %8084)  ; Saturate(value)
  br label %8086

; <label>:8086                                    ; preds = %8011, %8007
  %8087 = phi float [ %8085, %8011 ], [ 1.000000e+00, %8007 ]
  %8088 = fmul fast float %8004, 5.000000e-01
  %8089 = fadd fast float %8088, 5.000000e-01
  %8090 = call float @dx.op.unary.f32(i32 22, float %8089)  ; Frc(value)
  %8091 = call float @dx.op.unary.f32(i32 27, float %8090)  ; Round_ni(value)
  %8092 = call float @dx.op.unary.f32(i32 22, float %8090)  ; Frc(value)
  %8093 = fmul fast float %8092, 2.000000e+00
  %8094 = fadd fast float %8093, -1.000000e+00
  %8095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %7956, float %7957, float %8091, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8096 = extractvalue %dx.types.ResRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.ResRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.ResRet.f32 %8095, 2
  %8099 = extractvalue %dx.types.ResRet.f32 %8095, 3
  %8100 = fadd fast float %8096, -5.000000e-01
  %8101 = fadd fast float %8098, -5.000000e-01
  %8102 = fmul fast float %8100, 0xBFD5555560000000
  %8103 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8101, float %8102)  ; FMad(a,b,c)
  %8104 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8097, float 0.000000e+00)  ; FMad(a,b,c)
  %8105 = fadd fast float %8104, %8099
  %8106 = fmul fast float %8100, -7.500000e-01
  %8107 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8101, float %8106)  ; FMad(a,b,c)
  %8108 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8097, float 0.000000e+00)  ; FMad(a,b,c)
  %8109 = fadd fast float %8108, %8099
  %8110 = call float @dx.op.binary.f32(i32 35, float %8103, float -1.000000e+00)  ; FMax(a,b)
  %8111 = call float @dx.op.binary.f32(i32 35, float %8105, float -1.000000e+00)  ; FMax(a,b)
  %8112 = call float @dx.op.binary.f32(i32 35, float %8107, float -1.000000e+00)  ; FMax(a,b)
  %8113 = call float @dx.op.binary.f32(i32 35, float %8109, float -1.000000e+00)  ; FMax(a,b)
  %8114 = call float @dx.op.binary.f32(i32 36, float %8110, float 1.000000e+00)  ; FMin(a,b)
  %8115 = call float @dx.op.binary.f32(i32 36, float %8111, float 1.000000e+00)  ; FMin(a,b)
  %8116 = call float @dx.op.binary.f32(i32 36, float %8112, float 1.000000e+00)  ; FMin(a,b)
  %8117 = call float @dx.op.binary.f32(i32 36, float %8113, float 1.000000e+00)  ; FMin(a,b)
  %8118 = fcmp fast olt float %8114, 0x3FEFFF8020000000
  br i1 %8118, label %8119, label %8234, !dx.controlflow.hints !171

; <label>:8119                                    ; preds = %8086
  %8120 = extractvalue %dx.types.CBufRet.f32 %8002, 3
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.CBufRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.CBufRet.f32 %8121, 2
  %8125 = extractvalue %dx.types.CBufRet.f32 %8121, 3
  %8126 = fsub fast float %8122, %8114
  %8127 = fsub fast float %8123, %8115
  %8128 = fsub fast float %8124, %8116
  %8129 = fsub fast float %8125, %8117
  %8130 = fmul fast float %8126, %8120
  %8131 = fmul fast float %8127, %8120
  %8132 = fmul fast float %8128, %8120
  %8133 = fmul fast float %8129, %8120
  %8134 = fadd fast float %8130, %8114
  %8135 = fadd fast float %8131, %8115
  %8136 = fsub fast float -0.000000e+00, %8135
  %8137 = fadd fast float %8132, %8116
  %8138 = fadd fast float %8133, %8117
  %8139 = fmul fast float %8134, %8134
  %8140 = fsub fast float %8135, %8139
  %8141 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8140)  ; FMax(a,b)
  %8142 = fdiv fast float 1.000000e+00, %8141
  %8143 = fmul fast float %8135, %8134
  %8144 = fsub fast float %8137, %8143
  %8145 = fsub fast float %8094, %8134
  %8146 = fmul fast float %8094, %8094
  %8147 = fsub fast float %8146, %8135
  %8148 = fmul fast float %8145, %8142
  %8149 = fmul fast float %8148, %8144
  %8150 = fsub fast float %8147, %8149
  %8151 = fmul fast float %8135, %8135
  %8152 = fsub fast float %8138, %8151
  %8153 = fmul fast float %8144, %8144
  %8154 = fmul fast float %8153, %8142
  %8155 = fsub fast float %8152, %8154
  %8156 = fdiv fast float %8150, %8155
  %8157 = fmul fast float %8144, %8156
  %8158 = fsub fast float %8145, %8157
  %8159 = fmul fast float %8158, %8142
  %8160 = fmul fast float %8159, %8134
  %8161 = fsub fast float 1.000000e+00, %8160
  %8162 = fmul fast float %8135, %8156
  %8163 = fsub fast float %8161, %8162
  %8164 = fmul fast float %8159, %8159
  %8165 = fmul fast float %8156, 4.000000e+00
  %8166 = fmul fast float %8165, %8163
  %8167 = fsub fast float %8164, %8166
  %8168 = call float @dx.op.unary.f32(i32 24, float %8167)  ; Sqrt(value)
  %8169 = fcmp fast oge float %8159, 0.000000e+00
  %8170 = fsub fast float -0.000000e+00, %8168
  %8171 = select i1 %8169, float %8170, float %8168
  %8172 = fsub fast float %8171, %8159
  %8173 = fdiv fast float %8172, %8156
  %8174 = fdiv fast float %8163, %8172
  %8175 = fmul fast float %8173, 5.000000e-01
  %8176 = fmul fast float %8174, 2.000000e+00
  %8177 = select i1 %8169, float %8175, float %8176
  %8178 = select i1 %8169, float %8176, float %8175
  %8179 = call float @dx.op.binary.f32(i32 35, float %8177, float %8178)  ; FMax(a,b)
  %8180 = call float @dx.op.binary.f32(i32 36, float %8177, float %8178)  ; FMin(a,b)
  %8181 = fcmp fast ogt float %8094, %8180
  br i1 %8181, label %8182, label %8192

; <label>:8182                                    ; preds = %8119
  %8183 = fsub fast float %8094, %8180
  %8184 = fsub fast float %8179, %8180
  %8185 = fmul fast float %8183, %8184
  %8186 = fmul fast float %8179, %8094
  %8187 = fadd fast float %8179, %8094
  %8188 = fmul fast float %8187, %8134
  %8189 = fadd fast float %8186, %8135
  %8190 = fsub fast float %8189, %8188
  %8191 = fdiv fast float %8190, %8185
  br label %8192

; <label>:8192                                    ; preds = %8182, %8119
  %8193 = phi float [ %8191, %8182 ], [ 0.000000e+00, %8119 ]
  %8194 = fcmp fast ogt float %8094, %8179
  %8195 = fsub fast float %8094, %8179
  br i1 %8194, label %8196, label %8206

; <label>:8196                                    ; preds = %8192
  %8197 = fsub fast float %8179, %8180
  %8198 = fmul fast float %8197, %8195
  %8199 = fmul fast float %8180, %8094
  %8200 = fadd fast float %8180, %8094
  %8201 = fmul fast float %8200, %8134
  %8202 = fsub fast float %8136, %8199
  %8203 = fadd fast float %8202, %8201
  %8204 = fdiv fast float %8203, %8198
  %8205 = fadd fast float %8204, %8193
  br label %8206

; <label>:8206                                    ; preds = %8196, %8192
  %8207 = phi float [ %8205, %8196 ], [ %8193, %8192 ]
  %8208 = fsub fast float %8094, %8180
  %8209 = fmul fast float %8208, %8195
  %8210 = fmul fast float %8180, %8179
  %8211 = fadd fast float %8180, %8179
  %8212 = fmul fast float %8211, %8134
  %8213 = fadd fast float %8210, %8135
  %8214 = fsub fast float %8213, %8212
  %8215 = fdiv fast float %8214, %8209
  %8216 = call float @dx.op.unary.f32(i32 7, float %8207)  ; Saturate(value)
  %8217 = fcmp fast oeq float %6885, 0.000000e+00
  %8218 = extractvalue %dx.types.CBufRet.f32 %8002, 0
  %8219 = fcmp fast oeq float %8218, 0.000000e+00
  %8220 = or i1 %8217, %8219
  %8221 = fmul fast float %8218, 2.000000e+00
  %8222 = fadd fast float %8003, %8004
  %8223 = fdiv fast float %8222, %8221
  %8224 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8225 = fmul fast float %8224, 2.000000e+00
  %8226 = fsub fast float 3.000000e+00, %8225
  %8227 = fmul fast float %8224, %8224
  %8228 = fmul fast float %8227, %8226
  %8229 = select i1 %8220, float 1.000000e+00, float %8228
  %8230 = fmul fast float %8215, %6885
  %8231 = fadd fast float %8216, %8230
  %8232 = call float @dx.op.unary.f32(i32 7, float %8231)  ; Saturate(value)
  %8233 = fmul fast float %8229, %8232
  br label %8234

; <label>:8234                                    ; preds = %8206, %8086
  %8235 = phi float [ %8233, %8206 ], [ 0.000000e+00, %8086 ]
  %8236 = fsub fast float 1.000000e+00, %8235
  %8237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %7956, float %7957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8238 = extractvalue %dx.types.ResRet.f32 %8237, 0
  %8239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.i32 %8239, 2
  %8241 = icmp eq i32 %8240, 0
  br i1 %8241, label %8247, label %8242

; <label>:8242                                    ; preds = %8234
  %8243 = call float @dx.op.unary.f32(i32 7, float %8235)  ; Saturate(value)
  %8244 = fadd fast float %8238, -1.000000e+00
  %8245 = fmul fast float %8243, %8244
  %8246 = fadd fast float %8245, 1.000000e+00
  br label %8247

; <label>:8247                                    ; preds = %8242, %8234
  %8248 = phi float [ %8246, %8242 ], [ %8236, %8234 ]
  br i1 %8010, label %8249, label %8267

; <label>:8249                                    ; preds = %8247
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 1
  %8252 = fsub fast float %8087, %8251
  %8253 = call float @dx.op.unary.f32(i32 7, float %8252)  ; Saturate(value)
  %8254 = fsub fast float %8087, %8009
  %8255 = call float @dx.op.unary.f32(i32 7, float %8254)  ; Saturate(value)
  %8256 = fsub fast float %8253, %8255
  %8257 = fsub fast float %8089, %8255
  %8258 = fdiv fast float %8257, %8256
  %8259 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8260 = fmul fast float %8259, 2.000000e+00
  %8261 = fsub fast float 3.000000e+00, %8260
  %8262 = fsub fast float %8238, %8248
  %8263 = fmul fast float %8259, %8259
  %8264 = fmul fast float %8263, %8262
  %8265 = fmul fast float %8264, %8261
  %8266 = fadd fast float %8265, %8248
  br label %8267

; <label>:8267                                    ; preds = %8249, %8247
  %8268 = phi float [ %8266, %8249 ], [ %8248, %8247 ]
  %8269 = call float @dx.op.binary.f32(i32 35, float %8238, float %8268)  ; FMax(a,b)
  %8270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.i32 %8270, 2
  %8272 = and i32 %8271, 1
  %8273 = icmp eq i32 %8272, 0
  %8274 = fcmp fast une float %8269, 1.000000e+00
  %8275 = and i1 %8274, %8273
  br i1 %8275, label %8276, label %8295

; <label>:8276                                    ; preds = %8267
  %8277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %7956, float %7957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8278 = extractvalue %dx.types.ResRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.ResRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.ResRet.f32 %8277, 2
  %8281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.f32 %8281, 1
  %8283 = fmul fast float %8282, %8278
  %8284 = fmul fast float %8282, %8279
  %8285 = fmul fast float %8282, %8280
  %8286 = fcmp fast ogt float %8238, 0x3FEFFF2E40000000
  %8287 = fsub fast float 1.000000e+00, %8269
  %8288 = fsub fast float 1.000000e+00, %8238
  %8289 = fdiv fast float %8287, %8288
  %8290 = call float @dx.op.unary.f32(i32 7, float %8289)  ; Saturate(value)
  %8291 = select i1 %8286, float 0.000000e+00, float %8290
  %8292 = fmul fast float %8283, %8291
  %8293 = fmul fast float %8284, %8291
  %8294 = fmul fast float %8285, %8291
  br label %8295

; <label>:8295                                    ; preds = %8276, %8267
  %8296 = phi float [ 0.000000e+00, %8267 ], [ %8292, %8276 ]
  %8297 = phi float [ 0.000000e+00, %8267 ], [ %8293, %8276 ]
  %8298 = phi float [ 0.000000e+00, %8267 ], [ %8294, %8276 ]
  %8299 = fmul fast float %8296, %6873
  %8300 = fmul fast float %8297, %6873
  %8301 = fmul fast float %8298, %6873
  %8302 = fmul fast float %8269, %7931
  %8303 = call float @dx.op.dot3.f32(i32 55, float %8269, float %8269, float %8269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8304 = call float @dx.op.dot3.f32(i32 55, float %8299, float %8300, float %8301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8305 = select i1 %265, float %8303, float %8269
  %8306 = select i1 %265, float 1.000000e+00, float %8269
  %8307 = select i1 %265, float %8304, float %8299
  %8308 = select i1 %265, float 0.000000e+00, float %8300
  %8309 = select i1 %265, float 0.000000e+00, float %8301
  %8310 = fmul fast float %8305, %7943
  %8311 = fmul fast float %8305, %7944
  %8312 = fmul fast float %8306, %7945
  %8313 = fadd fast float %8310, %8307
  %8314 = fadd fast float %8311, %8308
  %8315 = fadd fast float %8309, %8312
  %8316 = fmul fast float %8305, %7946
  %8317 = fmul fast float %8305, %7947
  %8318 = fmul fast float %8306, %7948
  br label %8319

; <label>:8319                                    ; preds = %8295, %7952, %7921, %7153
  %8320 = phi float [ %7158, %7153 ], [ %7943, %7921 ], [ %8313, %8295 ], [ %7943, %7952 ]
  %8321 = phi float [ %7159, %7153 ], [ %7944, %7921 ], [ %8314, %8295 ], [ %7944, %7952 ]
  %8322 = phi float [ %7160, %7153 ], [ %7945, %7921 ], [ %8315, %8295 ], [ %7945, %7952 ]
  %8323 = phi float [ %7161, %7153 ], [ %7946, %7921 ], [ %8316, %8295 ], [ %7946, %7952 ]
  %8324 = phi float [ %7162, %7153 ], [ %7947, %7921 ], [ %8317, %8295 ], [ %7947, %7952 ]
  %8325 = phi float [ %7163, %7153 ], [ %7948, %7921 ], [ %8318, %8295 ], [ %7948, %7952 ]
  %8326 = phi float [ %7164, %7153 ], [ %7931, %7921 ], [ %8302, %8295 ], [ %7931, %7952 ]
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 2
  %8329 = extractvalue %dx.types.CBufRet.f32 %8327, 3
  %8330 = fmul fast float %8328, %110
  %8331 = fmul fast float %8329, %111
  %8332 = call float @dx.op.unary.f32(i32 7, float %8330)  ; Saturate(value)
  %8333 = call float @dx.op.unary.f32(i32 7, float %8331)  ; Saturate(value)
  %8334 = select i1 %6895, i32 2, i32 0
  %8335 = or i32 %8334, 1
  %8336 = uitofp i32 %8335 to float
  %8337 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8332, float %8333, float %8336, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8338 = extractvalue %dx.types.ResRet.f32 %8337, 0
  %8339 = extractvalue %dx.types.ResRet.f32 %8337, 1
  %8340 = extractvalue %dx.types.ResRet.f32 %8337, 2
  %8341 = extractvalue %dx.types.ResRet.f32 %8337, 3
  %8342 = add nuw nsw i32 %8334, 2
  %8343 = uitofp i32 %8342 to float
  %8344 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8332, float %8333, float %8343, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8345 = extractvalue %dx.types.ResRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.ResRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.ResRet.f32 %8344, 2
  %8348 = extractvalue %dx.types.ResRet.f32 %8344, 3
  %8349 = call float @dx.op.binary.f32(i32 35, float %8339, float %8340)  ; FMax(a,b)
  %8350 = call float @dx.op.binary.f32(i32 35, float %8338, float %8349)  ; FMax(a,b)
  %8351 = call float @dx.op.binary.f32(i32 35, float %8350, float %8341)  ; FMax(a,b)
  %8352 = call float @dx.op.binary.f32(i32 36, float %8346, float %8347)  ; FMin(a,b)
  %8353 = call float @dx.op.binary.f32(i32 36, float %8345, float %8352)  ; FMin(a,b)
  %8354 = call float @dx.op.binary.f32(i32 36, float %8353, float %8348)  ; FMin(a,b)
  %8355 = fmul fast float %8351, 2.550000e+02
  %8356 = fadd fast float %8355, 0x3F70101020000000
  %8357 = fptoui float %8356 to i32
  %8358 = fmul fast float %8354, 2.550000e+02
  %8359 = fadd fast float %8358, 0x3F70101020000000
  %8360 = fptoui float %8359 to i32
  %8361 = icmp ult i32 %8357, %8360
  br i1 %8361, label %8362, label %8531

; <label>:8362                                    ; preds = %8319
  %8363 = fcmp fast ogt float %100, 9.843750e-01
  %8364 = fadd fast float %7157, -4.000000e+00
  %8365 = select i1 %8363, float -4.000000e+00, float %8364
  %8366 = call float @dx.op.binary.f32(i32 35, float %8365, float 0.000000e+00)  ; FMax(a,b)
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = fadd fast float %8368, %8366
  %8370 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8371 = fmul fast float %8369, %8370
  %8372 = call float @dx.op.unary.f32(i32 23, float %8371)  ; Log(value)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8374 = fmul fast float %8373, %8372
  %8375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8376 = extractvalue %dx.types.CBufRet.f32 %8375, 2
  %8377 = fmul fast float %8374, %8376
  %8378 = call float @dx.op.unary.f32(i32 7, float %8377)  ; Saturate(value)
  %8379 = uitofp i32 %8357 to float
  %8380 = uitofp i32 %8360 to float
  %8381 = fadd fast float %8379, 5.000000e-01
  %8382 = fadd fast float %8380, 5.000000e-01
  %8383 = fmul fast float %8376, %8381
  %8384 = fmul fast float %8376, %8382
  %8385 = fadd fast float %8383, 0x3F0FFB4800000000
  %8386 = fadd fast float %8384, 0xBF0FFB4800000000
  %8387 = call float @dx.op.binary.f32(i32 35, float %8378, float %8385)  ; FMax(a,b)
  %8388 = call float @dx.op.binary.f32(i32 36, float %8387, float %8386)  ; FMin(a,b)
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 1
  %8391 = extractvalue %dx.types.CBufRet.f32 %8389, 2
  %8392 = extractvalue %dx.types.CBufRet.f32 %8389, 0
  %8393 = select i1 %6895, float %8392, float 0.000000e+00
  %8394 = fmul fast float %8390, %8388
  %8395 = fadd fast float %8393, %8394
  %8396 = fadd fast float %8393, %8391
  %8397 = fsub fast float %8390, %8391
  %8398 = fadd fast float %8397, %8393
  %8399 = call float @dx.op.binary.f32(i32 35, float %8395, float %8396)  ; FMax(a,b)
  %8400 = call float @dx.op.binary.f32(i32 36, float %8399, float %8398)  ; FMin(a,b)
  %8401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %8332, float %8333, float %8400, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8402 = extractvalue %dx.types.ResRet.f32 %8401, 0
  %8403 = extractvalue %dx.types.ResRet.f32 %8401, 1
  %8404 = extractvalue %dx.types.ResRet.f32 %8401, 2
  %8405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.i32 %8405, 0
  %8407 = extractvalue %dx.types.CBufRet.i32 %8405, 1
  %8408 = uitofp i32 %8406 to float
  %8409 = uitofp i32 %8407 to float
  %8410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8411 = extractvalue %dx.types.CBufRet.f32 %8410, 0
  %8412 = extractvalue %dx.types.CBufRet.f32 %8410, 1
  %8413 = fmul fast float %8408, %8332
  %8414 = fmul fast float %8409, %8333
  %8415 = fadd fast float %8413, -5.000000e-01
  %8416 = fadd fast float %8414, -5.000000e-01
  %8417 = call float @dx.op.unary.f32(i32 22, float %8415)  ; Frc(value)
  %8418 = call float @dx.op.unary.f32(i32 22, float %8416)  ; Frc(value)
  %8419 = fmul fast float %8417, %8417
  %8420 = fmul fast float %8419, %8417
  %8421 = fsub fast float 3.000000e+00, %8417
  %8422 = fmul fast float %8419, %8421
  %8423 = fmul fast float %8417, 3.000000e+00
  %8424 = fmul fast float %8420, 3.000000e+00
  %8425 = fmul fast float %8419, 6.000000e+00
  %8426 = fsub fast float %8424, %8425
  %8427 = fadd fast float %8426, 4.000000e+00
  %8428 = fmul fast float %8427, 0x3FC5555560000000
  %8429 = fmul fast float %8420, -3.000000e+00
  %8430 = fadd fast float %8419, %8417
  %8431 = fmul fast float %8430, 3.000000e+00
  %8432 = fadd fast float %8429, 1.000000e+00
  %8433 = fadd fast float %8432, %8431
  %8434 = fmul fast float %8420, 0x3FC5555560000000
  %8435 = fmul fast float %8418, %8418
  %8436 = fmul fast float %8435, %8418
  %8437 = fsub fast float 3.000000e+00, %8418
  %8438 = fmul fast float %8435, %8437
  %8439 = fmul fast float %8418, 3.000000e+00
  %8440 = fmul fast float %8436, 3.000000e+00
  %8441 = fmul fast float %8435, 6.000000e+00
  %8442 = fsub fast float %8440, %8441
  %8443 = fadd fast float %8442, 4.000000e+00
  %8444 = fmul fast float %8443, 0x3FC5555560000000
  %8445 = fmul fast float %8436, -3.000000e+00
  %8446 = fadd fast float %8435, %8418
  %8447 = fmul fast float %8446, 3.000000e+00
  %8448 = fadd fast float %8445, 1.000000e+00
  %8449 = fadd fast float %8448, %8447
  %8450 = fmul fast float %8436, 0x3FC5555560000000
  %8451 = fadd fast float %8417, 1.000000e+00
  %8452 = fsub fast float 1.000000e+00, %8423
  %8453 = fadd fast float %8452, %8422
  %8454 = fadd fast float %8453, %8427
  %8455 = fmul fast float %8454, 0x3FC5555560000000
  %8456 = fdiv fast float %8428, %8455
  %8457 = fsub fast float %8451, %8456
  %8458 = fsub fast float 1.000000e+00, %8417
  %8459 = fadd fast float %8433, %8420
  %8460 = fmul fast float %8459, 0x3FC5555560000000
  %8461 = fdiv fast float %8434, %8460
  %8462 = fadd fast float %8458, %8461
  %8463 = fadd fast float %8418, 1.000000e+00
  %8464 = fsub fast float 1.000000e+00, %8439
  %8465 = fadd fast float %8464, %8438
  %8466 = fadd fast float %8465, %8443
  %8467 = fmul fast float %8466, 0x3FC5555560000000
  %8468 = fdiv fast float %8444, %8467
  %8469 = fsub fast float %8463, %8468
  %8470 = fsub fast float 1.000000e+00, %8418
  %8471 = fadd fast float %8449, %8436
  %8472 = fmul fast float %8471, 0x3FC5555560000000
  %8473 = fdiv fast float %8450, %8472
  %8474 = fadd fast float %8473, %8470
  %8475 = fmul fast float %8457, %8411
  %8476 = fsub fast float %8332, %8475
  %8477 = fmul fast float %8462, %8411
  %8478 = fadd fast float %8477, %8332
  %8479 = fmul fast float %8474, %8412
  %8480 = fadd fast float %8479, %8333
  %8481 = fmul fast float %8469, %8412
  %8482 = fsub fast float %8333, %8481
  %8483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8476, float %8482, float %8400, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8484 = extractvalue %dx.types.ResRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.ResRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.ResRet.f32 %8483, 2
  %8487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8478, float %8482, float %8400, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8488 = extractvalue %dx.types.ResRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.ResRet.f32 %8487, 1
  %8490 = extractvalue %dx.types.ResRet.f32 %8487, 2
  %8491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8476, float %8480, float %8400, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8492 = extractvalue %dx.types.ResRet.f32 %8491, 0
  %8493 = extractvalue %dx.types.ResRet.f32 %8491, 1
  %8494 = extractvalue %dx.types.ResRet.f32 %8491, 2
  %8495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8478, float %8480, float %8400, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8496 = extractvalue %dx.types.ResRet.f32 %8495, 0
  %8497 = extractvalue %dx.types.ResRet.f32 %8495, 1
  %8498 = extractvalue %dx.types.ResRet.f32 %8495, 2
  %8499 = fsub fast float %8492, %8484
  %8500 = fsub fast float %8493, %8485
  %8501 = fsub fast float %8494, %8486
  %8502 = fmul fast float %8499, %8472
  %8503 = fmul fast float %8500, %8472
  %8504 = fmul fast float %8501, %8472
  %8505 = fadd fast float %8502, %8484
  %8506 = fadd fast float %8503, %8485
  %8507 = fadd fast float %8504, %8486
  %8508 = fsub fast float %8496, %8488
  %8509 = fsub fast float %8497, %8489
  %8510 = fsub fast float %8498, %8490
  %8511 = fmul fast float %8508, %8472
  %8512 = fmul fast float %8509, %8472
  %8513 = fmul fast float %8510, %8472
  %8514 = fsub fast float %8488, %8505
  %8515 = fadd fast float %8514, %8511
  %8516 = fsub fast float %8489, %8506
  %8517 = fadd fast float %8516, %8512
  %8518 = fsub fast float %8490, %8507
  %8519 = fadd fast float %8518, %8513
  %8520 = fmul fast float %8515, %8460
  %8521 = fmul fast float %8517, %8460
  %8522 = fmul fast float %8519, %8460
  %8523 = fadd fast float %8520, %8505
  %8524 = fadd fast float %8521, %8506
  %8525 = fadd fast float %8522, %8507
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 1
  %8528 = fmul fast float %8523, %8527
  %8529 = fmul fast float %8524, %8527
  %8530 = fmul fast float %8525, %8527
  br label %8531

; <label>:8531                                    ; preds = %8362, %8319
  %8532 = phi float [ %8402, %8362 ], [ 1.000000e+00, %8319 ]
  %8533 = phi float [ %8403, %8362 ], [ 1.000000e+00, %8319 ]
  %8534 = phi float [ %8404, %8362 ], [ 1.000000e+00, %8319 ]
  %8535 = phi float [ %8528, %8362 ], [ 0.000000e+00, %8319 ]
  %8536 = phi float [ %8529, %8362 ], [ 0.000000e+00, %8319 ]
  %8537 = phi float [ %8530, %8362 ], [ 0.000000e+00, %8319 ]
  %8538 = fmul fast float %8535, %6873
  %8539 = fmul fast float %8536, %6873
  %8540 = fmul fast float %8537, %6873
  %8541 = fmul fast float %8532, %8326
  %8542 = call float @dx.op.dot3.f32(i32 55, float %8532, float %8533, float %8534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8543 = call float @dx.op.dot3.f32(i32 55, float %8538, float %8539, float %8540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8544 = select i1 %265, float %8542, float %8532
  %8545 = select i1 %265, float %8542, float %8533
  %8546 = select i1 %265, float 1.000000e+00, float %8534
  %8547 = select i1 %265, float %8543, float %8538
  %8548 = select i1 %265, float 0.000000e+00, float %8539
  %8549 = select i1 %265, float 0.000000e+00, float %8540
  %8550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.i32 %8550, 3
  %8552 = and i32 %8551, 3
  %8553 = icmp ne i32 %8552, 0
  %8554 = and i32 %8551, 4
  %8555 = icmp ne i32 %8554, 0
  %8556 = and i1 %8553, %8555
  %8557 = and i1 %265, %8556
  br i1 %8557, label %8558, label %8564

; <label>:8558                                    ; preds = %8531
  %8559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8560 = extractvalue %dx.types.CBufRet.f32 %8559, 1
  %8561 = fadd fast float %8541, -1.000000e+00
  %8562 = fmul fast float %8560, %8561
  %8563 = fadd fast float %8562, 1.000000e+00
  br label %8564

; <label>:8564                                    ; preds = %8558, %8531
  %8565 = phi float [ %8563, %8558 ], [ %8541, %8531 ]
  %8566 = fadd fast float %8323, %8320
  %8567 = fmul fast float %8544, %8566
  %8568 = fadd fast float %8567, %8547
  %8569 = fadd fast float %8324, %8321
  %8570 = fmul fast float %8545, %8569
  %8571 = fadd fast float %8570, %8548
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 0
  br i1 %265, label %8574, label %8598

; <label>:8574                                    ; preds = %8564
  %8575 = fadd fast float %8568, %8571
  %8576 = fmul fast float %8573, %8575
  %8577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8578 = extractvalue %dx.types.CBufRet.f32 %8577, 3
  %8579 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %8580 = fsub fast float %6882, %6876
  %8581 = fadd fast float %8580, %6883
  %8582 = fsub fast float %8581, %8579
  %8583 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %8584 = fmul fast float %8582, %8583
  %8585 = call float @dx.op.unary.f32(i32 7, float %8584)  ; Saturate(value)
  %8586 = fsub fast float %8585, %8578
  %8587 = fmul fast float %8586, %8565
  %8588 = fadd fast float %8587, %8578
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 0
  %8591 = fsub fast float %8588, %8590
  %8592 = fmul fast float %8591, 1.000000e+01
  %8593 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8594 = fsub fast float %1256, %6873
  %8595 = fmul fast float %8593, %8594
  %8596 = fadd fast float %8595, %6873
  %8597 = fmul fast float %8596, %8588
  br label %8622

; <label>:8598                                    ; preds = %8564
  %8599 = fadd fast float %8325, %8322
  %8600 = fmul fast float %8546, %8599
  %8601 = fadd fast float %8600, %8549
  %8602 = fmul fast float %8573, %8568
  %8603 = fmul fast float %8573, %8571
  %8604 = fmul fast float %8573, %8601
  %8605 = call float @dx.op.binary.f32(i32 35, float %8603, float %8604)  ; FMax(a,b)
  %8606 = call float @dx.op.binary.f32(i32 35, float %8602, float %8605)  ; FMax(a,b)
  %8607 = call float @dx.op.binary.f32(i32 35, float %8606, float %6873)  ; FMax(a,b)
  %8608 = fcmp fast ugt float %8607, 0x3F10000000000000
  br i1 %8608, label %8610, label %8609

; <label>:8609                                    ; preds = %8598
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8610

; <label>:8610                                    ; preds = %8609, %8598
  %8611 = add i32 %53, 356
  %8612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %8611, i32 undef)  ; BufferLoad(srv,index,wot)
  %8613 = extractvalue %dx.types.ResRet.i32 %8612, 0
  %8614 = and i32 %8613, 32
  %8615 = icmp eq i32 %8614, 0
  br i1 %8615, label %8622, label %8616

; <label>:8616                                    ; preds = %8610
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 0
  %8619 = fmul fast float %8618, 0x3FE99999A0000000
  %8620 = fadd fast float %8618, %8602
  %8621 = fadd fast float %8619, %8604
  br label %8622

; <label>:8622                                    ; preds = %8616, %8610, %8574
  %8623 = phi float [ %8576, %8574 ], [ %8620, %8616 ], [ %8602, %8610 ]
  %8624 = phi float [ %8597, %8574 ], [ %8603, %8616 ], [ %8603, %8610 ]
  %8625 = phi float [ %8596, %8574 ], [ %8621, %8616 ], [ %8604, %8610 ]
  %8626 = phi float [ %8596, %8574 ], [ %6873, %8616 ], [ %6873, %8610 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8627 = call float @dx.op.binary.f32(i32 36, float %8623, float 3.225500e+04)  ; FMin(a,b)
  %8628 = call float @dx.op.binary.f32(i32 36, float %8624, float 3.225500e+04)  ; FMin(a,b)
  %8629 = call float @dx.op.binary.f32(i32 36, float %8625, float 3.225500e+04)  ; FMin(a,b)
  %8630 = call float @dx.op.binary.f32(i32 36, float %8626, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8627)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8628)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8629)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8630)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

