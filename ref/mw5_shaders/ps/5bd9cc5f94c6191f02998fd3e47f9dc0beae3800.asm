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
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; SV_IsFrontFace           0    y         13    FFACE    uint    y  
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
; shader hash: 18441de463d041907d7f3057b3a1df48
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
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
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
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t18,space1     1
;                                   texture    byte         r/o      T8     t19,space1     1
;                                   texture    byte         r/o      T9     t20,space1     1
;                                   texture    byte         r/o     T10     t21,space1     1
;                                   texture     f32          2d     T11     t37,space2     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13     t58,space2     1
;                                   texture     f32          2d     T14     t59,space2     1
;                                   texture     f32          2d     T15     t60,space2     1
;                                   texture    byte         r/o     T16     t45,space1     1
;                                   texture    byte         r/o     T17     t46,space1     1
;                                   texture    byte         r/o     T18     t47,space1     1
;                                   texture    byte         r/o     T19     t48,space1     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     u32          2d     T22     t56,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture    byte         r/o     T24     t10,space1     1
;                                   texture    byte         r/o     T25      t1,space1     1
;                                   texture     f32          1d     T26     t32,space2     1
;                                   texture     f32     2darray     T27      t8,space2     1
;                                   texture     f32          2d     T28      t1,space2     1
;                                   texture     f32          2d     T29      t2,space2     1
;                                   texture     f32          2d     T30      t3,space2     1
;                                   texture     f32          2d     T31      t4,space2     1
;                                   textureunorm_f32     2darray     T32     t80,space2     1
;                                   texture    byte         r/o     T33     t67,space1     1
;                                   texture     f32          2d     T34      t7,space2     1
;                                   texture     f32          2d     T35      t6,space2     1
;                                   texture     f32          2d     T36      t5,space2     1
;                                   texture     f32          2d     T37     t38,space2     1
;                                   texture    byte         r/o     T38     t12,space1     1
;                                   texture    byte         r/o     T39     t13,space1     1
;                                   texture     f32          1d     T40     t30,space2     1
;                                   texture     f32          3d     T41     t44,space2     1
;                                   texture     f32          3d     T42     t45,space2     1
;                                   texture     f32     2darray     T43     t47,space2     1
;                                   textureunorm_f32     2darray     T44     t85,space2     1
;                                   texture     f32          2d     T45     t83,space2     1
;                                   texture     f32          2d     T46     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = icmp ne i32 %54, 0
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = alloca [12 x float], align 4
  %104 = alloca [12 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %99
  %112 = fmul fast float %110, %100
  %113 = select i1 %55, float 1.000000e+00, float -1.000000e+00
  %114 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = bitcast float %114 to i32
  %116 = ashr i32 %115, 1
  %117 = sub nsw i32 1597250115, %116
  %118 = bitcast i32 %117 to float
  %119 = fmul fast float %90, %113
  %120 = fmul fast float %119, %118
  %121 = fmul fast float %91, %113
  %122 = fmul fast float %121, %118
  %123 = fmul fast float %92, %113
  %124 = fmul fast float %123, %118
  %125 = fmul fast float %91, %88
  %126 = fmul fast float %92, %87
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %92, %86
  %129 = fmul fast float %90, %88
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %90, %87
  %132 = fmul fast float %91, %86
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %127, %89
  %135 = fmul fast float %130, %89
  %136 = fmul fast float %133, %89
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = fcmp fast une float %138, 0.000000e+00
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %111, 2.000000e+00
  %144 = fmul fast float %143, %141
  %145 = fmul fast float %112, 2.000000e+00
  %146 = fmul fast float %145, %142
  %147 = fsub fast float 1.000000e+00, %144
  %148 = fsub fast float 1.000000e+00, %146
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = select i1 %139, float %150, float %154
  %158 = select i1 %139, float %151, float %155
  %159 = select i1 %139, float %152, float %156
  %160 = fmul fast float %157, %147
  %161 = fmul fast float %158, %147
  %162 = fmul fast float %159, %147
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = select i1 %139, float %164, float %168
  %172 = select i1 %139, float %165, float %169
  %173 = select i1 %139, float %166, float %170
  %174 = fmul fast float %171, %148
  %175 = fmul fast float %172, %148
  %176 = fmul fast float %173, %148
  %177 = fadd fast float %174, %160
  %178 = fadd fast float %175, %161
  %179 = fadd fast float %176, %162
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = select i1 %139, float %181, float %185
  %189 = select i1 %139, float %182, float %186
  %190 = select i1 %139, float %183, float %187
  %191 = fadd fast float %177, %188
  %192 = fadd fast float %178, %189
  %193 = fadd fast float %179, %190
  %194 = fmul fast float %191, %102
  %195 = fmul fast float %192, %102
  %196 = fmul fast float %193, %102
  %197 = fmul fast float %111, 5.000000e-01
  %198 = fmul fast float %112, 5.000000e-01
  %199 = fptosi float %197 to i32
  %200 = fptosi float %198 to i32
  %201 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %199, i32 %200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = lshr i32 %202, 18
  %204 = uitofp i32 %203 to float
  %205 = fmul fast float %204, 0x3F4C00EBA0000000
  %206 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %207 = fadd fast float %206, -1.000000e+00
  %208 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %209 = extractvalue %dx.types.Dimensions %208, 0
  %210 = sitofp i32 %209 to float
  %211 = extractvalue %dx.types.Dimensions %208, 1
  %212 = sitofp i32 %211 to float
  %213 = fcmp fast oge float %197, %210
  %214 = fcmp fast oge float %198, %212
  %215 = or i1 %213, %214
  %216 = select i1 %215, float 0x4197782600000000, float %207
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %220 = fmul fast float %218, %111
  %221 = fmul fast float %219, %112
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = and i32 %223, 114688
  %225 = icmp ne i32 %224, 0
  %226 = select i1 %225, float %220, float 0.000000e+00
  %227 = select i1 %225, float %221, float 0.000000e+00
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %49, float %226, float %227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fmul fast float %229, 2.550000e+02
  %231 = fptoui float %230 to i32
  %232 = select i1 %225, i32 %231, i32 0
  %233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.i32 %233, 3
  %235 = and i32 %234, 3
  %236 = icmp ne i32 %235, 0
  %237 = and i32 %234, 4
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %236, %238
  br i1 %239, label %240, label %249

; <label>:240                                     ; preds = %0
  %241 = fmul fast float %142, %112
  %242 = fmul fast float %141, %111
  %243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %48, float %242, float %241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = fsub fast float 1.000000e+00, %244
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = fcmp fast olt float %245, %247
  br label %252

; <label>:249                                     ; preds = %0
  %250 = icmp eq i32 %237, 0
  %251 = and i1 %236, %250
  br label %252

; <label>:252                                     ; preds = %249, %240
  %253 = phi i1 [ %248, %240 ], [ %251, %249 ]
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %256 = fmul fast float %255, 0x3FE3C6EF40000000
  %257 = frem fast float %111, 2.560000e+02
  %258 = frem fast float %112, 2.560000e+02
  %259 = fptoui float %257 to i32
  %260 = fptoui float %258 to i32
  %261 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %259, i32 %260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fadd fast float %262, %256
  %264 = call float @dx.op.unary.f32(i32 22, float %263)  ; Frc(value)
  %265 = add i32 %56, 156
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = shl i32 %267, 4
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %267, 7
  %272 = and i32 %271, 32752
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %267, 22
  %275 = shl nuw nsw i32 %274, 5
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = add i32 %56, 216
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %279, 8
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %279, 16
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = add i32 %56, 36
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = add i32 %56, 288
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = fmul fast float %302, 0x3F50624DE0000000
  %306 = fmul fast float %304, 0x3F50624DE0000000
  %307 = add i32 %56, 172
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = shl i32 %309, 4
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %309, 7
  %314 = and i32 %313, 32752
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %309, 22
  %317 = shl nuw nsw i32 %316, 5
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = add i32 %56, 232
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %321, 8
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %321, 16
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = add i32 %56, 52
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %335, 16
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %56, 304
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = fmul fast float %344, 0x3F50624DE0000000
  %348 = fmul fast float %346, 0x3F50624DE0000000
  %349 = add i32 %56, 188
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = shl i32 %351, 4
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %351, 7
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %351, 22
  %359 = shl nuw nsw i32 %358, 5
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %56, 248
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = lshr i32 %363, 8
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %363, 16
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = add i32 %56, 68
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 65535
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %377, 16
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = add i32 %56, 320
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = fmul fast float %386, 0x3F50624DE0000000
  %390 = fmul fast float %388, 0x3F50624DE0000000
  %391 = add i32 %56, 204
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = shl i32 %393, 4
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %393, 7
  %398 = and i32 %397, 32752
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %393, 22
  %401 = shl nuw nsw i32 %400, 5
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = add i32 %56, 264
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 255
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3F70101020000000
  %409 = lshr i32 %405, 8
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = lshr i32 %405, 16
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = add i32 %56, 84
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 65535
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %419, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = add i32 %56, 336
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = fmul fast float %428, 0x3F50624DE0000000
  %432 = fmul fast float %430, 0x3F50624DE0000000
  %433 = add i32 %56, 348
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 32
  %437 = icmp eq i32 %436, 0
  %438 = and i32 %435, 64
  %439 = icmp eq i32 %438, 0
  %440 = and i32 %435, 128
  %441 = icmp eq i32 %440, 0
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 2
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %461, label %446

; <label>:446                                     ; preds = %252
  %447 = add i32 %56, 472
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = add i32 %449, 0
  %451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %451, %dx.types.Handle %108, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = extractvalue %dx.types.ResRet.f32 %452, 3
  %457 = fmul fast float %456, %95
  %458 = fmul fast float %453, %96
  %459 = fmul fast float %454, %97
  %460 = fmul fast float %455, %98
  br label %461

; <label>:461                                     ; preds = %446, %252
  %462 = phi float [ %98, %252 ], [ %460, %446 ]
  %463 = phi float [ %97, %252 ], [ %459, %446 ]
  %464 = phi float [ %96, %252 ], [ %458, %446 ]
  %465 = phi float [ %95, %252 ], [ %457, %446 ]
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 2
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %489, label %470

; <label>:470                                     ; preds = %461
  %471 = add i32 %56, 44
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 1
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %475, float %464, float 1.000000e+00
  %477 = add i32 %56, 60
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 1
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %463, float 1.000000e+00
  %483 = add i32 %56, 76
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %462, float 1.000000e+00
  br label %489

; <label>:489                                     ; preds = %470, %461
  %490 = phi float [ %462, %461 ], [ %488, %470 ]
  %491 = phi float [ %463, %461 ], [ %482, %470 ]
  %492 = phi float [ %464, %461 ], [ %476, %470 ]
  %493 = lshr i32 %467, 20
  %494 = and i32 %493, 3
  %495 = add nuw nsw i32 %494, 1
  %496 = add i32 %56, 24
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = add i32 %56, 28
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = or i32 %501, %498
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %1038, label %504

; <label>:504                                     ; preds = %489
  %505 = and i32 %498, 262144
  %506 = icmp ne i32 %505, 0
  %507 = select i1 %506, float %61, float 1.000000e+00
  %508 = select i1 %506, float %62, float 0.000000e+00
  %509 = select i1 %506, float %63, float 0.000000e+00
  %510 = select i1 %506, float %64, float 1.000000e+00
  %511 = select i1 %506, float %65, float %93
  %512 = select i1 %506, float %66, float %94
  %513 = add i32 %56, 284
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = lshr i32 %515, 16
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = fmul fast float %517, 0x3F50624DE0000000
  %519 = add i32 %56, 88
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = lshr i32 %521, 16
  %523 = and i32 %522, 255
  %524 = lshr i32 %521, 24
  %525 = add i32 %56, 292
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 65535
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = lshr i32 %527, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = add i32 %56, 32
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = lshr i32 %534, 22
  %536 = shl nuw nsw i32 %535, 5
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = shl i32 %534, 4
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %534, 7
  %542 = and i32 %541, 32752
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %546 = fmul fast float %545, 1.000000e+03
  %547 = fmul fast float %305, %546
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = fadd fast float %548, %295
  %550 = fmul fast float %306, %546
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = fadd fast float %551, %297
  %553 = fmul fast float %518, %546
  %554 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %555 = fmul fast float %554, 0x401921FB60000000
  %556 = fadd fast float %555, %537
  %557 = call float @dx.op.unary.f32(i32 13, float %556)  ; Sin(value)
  %558 = call float @dx.op.unary.f32(i32 12, float %556)  ; Cos(value)
  %559 = fsub fast float -0.000000e+00, %557
  %560 = fadd fast float %511, -5.000000e-01
  %561 = fadd fast float %512, -5.000000e-01
  %562 = fmul fast float %529, %560
  %563 = fmul fast float %531, %561
  %564 = fadd fast float %562, 5.000000e-01
  %565 = fadd fast float %563, 5.000000e-01
  %566 = fmul fast float %540, %564
  %567 = fmul fast float %543, %565
  %568 = fmul fast float %558, %566
  %569 = call float @dx.op.tertiary.f32(i32 46, float %559, float %567, float %568)  ; FMad(a,b,c)
  %570 = fmul fast float %557, %566
  %571 = call float @dx.op.tertiary.f32(i32 46, float %558, float %567, float %570)  ; FMad(a,b,c)
  %572 = fadd fast float %549, %569
  %573 = fadd fast float %552, %571
  %574 = icmp ugt i32 %523, 1
  %575 = icmp ugt i32 %521, 33554431
  %576 = or i1 %575, %574
  br i1 %576, label %577, label %602

; <label>:577                                     ; preds = %504
  %578 = add i32 %56, 228
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = lshr i32 %580, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = fmul fast float %545, %582
  %584 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %585 = mul nuw nsw i32 %523, %524
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %584, %586
  %588 = call float @dx.op.unary.f32(i32 27, float %587)  ; Round_ni(value)
  %589 = fptoui float %588 to i32
  %590 = urem i32 %589, %523
  %591 = udiv i32 %589, %524
  %592 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %593 = call float @dx.op.unary.f32(i32 22, float %573)  ; Frc(value)
  %594 = uitofp i32 %590 to float
  %595 = uitofp i32 %591 to float
  %596 = fadd fast float %592, %594
  %597 = fadd fast float %593, %595
  %598 = uitofp i32 %523 to float
  %599 = uitofp i32 %524 to float
  %600 = fdiv fast float %596, %598
  %601 = fdiv fast float %597, %599
  br label %602

; <label>:602                                     ; preds = %577, %504
  %603 = phi float [ %600, %577 ], [ %572, %504 ]
  %604 = phi float [ %601, %577 ], [ %573, %504 ]
  %605 = and i32 %498, 256
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %653, label %607

; <label>:607                                     ; preds = %602
  %608 = add i32 %56, 424
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = add i32 %610, 0
  %612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %612, %dx.types.Handle %108, float %603, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = add i32 %56, 100
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = shl i32 %617, 4
  %619 = and i32 %618, 32752
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = lshr i32 %617, 7
  %622 = and i32 %621, 32752
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = fsub fast float 1.000000e+00, %465
  %625 = call float @dx.op.binary.f32(i32 35, float %624, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %626 = bitcast float %465 to i32
  %627 = sitofp i32 %626 to float
  %628 = fadd fast float %627, 0xC1CFBF8940000000
  %629 = fmul fast float %623, %628
  %630 = fadd fast float %629, 0x41CFBF8940000000
  %631 = fptosi float %630 to i32
  %632 = bitcast i32 %631 to float
  %633 = bitcast float %625 to i32
  %634 = sitofp i32 %633 to float
  %635 = fadd fast float %634, 0xC1CFBF8940000000
  %636 = fmul fast float %635, %623
  %637 = fadd fast float %636, 0x41CFBF8940000000
  %638 = fptosi float %637 to i32
  %639 = bitcast i32 %638 to float
  %640 = fmul fast float %632, %620
  %641 = fmul fast float %639, %620
  %642 = fsub fast float %625, %640
  %643 = fadd fast float %641, %625
  %644 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %645 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %646 = fsub fast float %614, %644
  %647 = fsub fast float %645, %644
  %648 = bitcast float %647 to i32
  %649 = sub nsw i32 2129859010, %648
  %650 = bitcast i32 %649 to float
  %651 = fmul fast float %650, %646
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  br label %653

; <label>:653                                     ; preds = %607, %602
  %654 = phi float [ %652, %607 ], [ %465, %602 ]
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 128
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %675, label %659

; <label>:659                                     ; preds = %653
  %660 = add i32 %56, 408
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %664, %dx.types.Handle %108, float %603, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 524288
  %670 = icmp ne i32 %669, 0
  %671 = fcmp fast ogt float %666, 0x3FE0101020000000
  %672 = select i1 %671, float 1.000000e+00, float 0.000000e+00
  %673 = select i1 %670, float %672, float %666
  %674 = fmul fast float %673, %654
  br label %675

; <label>:675                                     ; preds = %659, %653
  %676 = phi float [ %674, %659 ], [ %654, %653 ]
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 16
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %879, label %681

; <label>:681                                     ; preds = %675
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = add i32 %56, 360
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = add i32 %686, 0
  %688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %687, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %689 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %688, %dx.types.Handle %107, float %603, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = extractvalue %dx.types.ResRet.f32 %689, 3
  %694 = and i32 %683, 255
  %695 = uitofp i32 %694 to float
  %696 = lshr i32 %683, 8
  %697 = and i32 %696, 255
  %698 = uitofp i32 %697 to float
  %699 = fmul fast float %693, %695
  %700 = fadd fast float %699, %698
  %701 = fmul fast float %700, 0x3F70101000000000
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 512
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %714, label %706

; <label>:706                                     ; preds = %681
  %707 = add i32 %56, 440
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = add i32 %709, 0
  %711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %711, %dx.types.Handle %108, float %603, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  br label %714

; <label>:714                                     ; preds = %706, %681
  %715 = phi float [ %713, %706 ], [ 1.000000e+00, %681 ]
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 33554432
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %826, label %720

; <label>:720                                     ; preds = %714
  %721 = add i32 %56, 224
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 65535
  %725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %724)  ; LegacyF16ToF32(value)
  %726 = lshr i32 %723, 16
  %727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %726)  ; LegacyF16ToF32(value)
  %728 = add i32 %56, 228
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 65535
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = lshr i32 %734, 24
  %736 = uitofp i32 %735 to float
  %737 = fmul fast float %736, 0x3F70101020000000
  %738 = and i32 %734, 255
  %739 = uitofp i32 %738 to float
  %740 = fmul fast float %739, 0x3F70101020000000
  %741 = lshr i32 %734, 8
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = lshr i32 %734, 16
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101020000000
  %749 = add i32 %56, 220
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = lshr i32 %751, 24
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = and i32 %751, 255
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, 0x3F70101020000000
  %758 = lshr i32 %751, 8
  %759 = and i32 %758, 255
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = lshr i32 %751, 16
  %763 = and i32 %762, 255
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, 0x3F70101020000000
  %766 = bitcast float %690 to i32
  %767 = ashr i32 %766, 1
  %768 = sub nsw i32 1597463174, %767
  %769 = bitcast i32 %768 to float
  %770 = fmul fast float %690, 5.000000e-01
  %771 = fmul fast float %769, %769
  %772 = fmul fast float %771, %770
  %773 = fsub fast float 1.500000e+00, %772
  %774 = fmul fast float %769, %690
  %775 = fmul fast float %774, %773
  %776 = bitcast float %691 to i32
  %777 = ashr i32 %776, 1
  %778 = sub nsw i32 1597463174, %777
  %779 = bitcast i32 %778 to float
  %780 = fmul fast float %691, 5.000000e-01
  %781 = fmul fast float %779, %779
  %782 = fmul fast float %781, %780
  %783 = fsub fast float 1.500000e+00, %782
  %784 = fmul fast float %779, %691
  %785 = fmul fast float %784, %783
  %786 = bitcast float %692 to i32
  %787 = ashr i32 %786, 1
  %788 = sub nsw i32 1597463174, %787
  %789 = bitcast i32 %788 to float
  %790 = fmul fast float %692, 5.000000e-01
  %791 = fmul fast float %789, %789
  %792 = fmul fast float %791, %790
  %793 = fsub fast float 1.500000e+00, %792
  %794 = fmul fast float %789, %692
  %795 = fmul fast float %794, %793
  %796 = fsub fast float %775, %757
  %797 = fsub fast float %785, %761
  %798 = fsub fast float %795, %765
  %799 = fmul fast float %796, %725
  %800 = fmul fast float %797, %727
  %801 = fmul fast float %798, %732
  %802 = fadd fast float %799, %740
  %803 = fadd fast float %800, %744
  %804 = fadd fast float %801, %748
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %807 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %808 = fmul fast float %805, %805
  %809 = fmul fast float %806, %806
  %810 = fmul fast float %807, %807
  %811 = fsub fast float %808, %690
  %812 = fsub fast float %809, %691
  %813 = fsub fast float %810, %692
  %814 = fmul fast float %811, %715
  %815 = fmul fast float %812, %715
  %816 = fmul fast float %813, %715
  %817 = fadd fast float %814, %690
  %818 = fadd fast float %815, %691
  %819 = fadd fast float %816, %692
  %820 = fadd fast float %737, %701
  %821 = fsub fast float %820, %754
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = fsub fast float %822, %701
  %824 = fmul fast float %823, %715
  %825 = fadd fast float %824, %701
  br label %879

; <label>:826                                     ; preds = %714
  %827 = and i32 %717, 134217728
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %863, label %829

; <label>:829                                     ; preds = %826
  %830 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %831 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %832 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %833 = fadd fast float %830, -5.000000e-01
  %834 = fadd fast float %831, -5.000000e-01
  %835 = fadd fast float %832, -5.000000e-01
  %836 = fmul fast float %833, %715
  %837 = fmul fast float %834, %715
  %838 = fmul fast float %835, %715
  %839 = fadd fast float %836, 5.000000e-01
  %840 = fadd fast float %837, 5.000000e-01
  %841 = fadd fast float %838, 5.000000e-01
  %842 = call float @dx.op.unary.f32(i32 24, float %690)  ; Sqrt(value)
  %843 = call float @dx.op.unary.f32(i32 24, float %691)  ; Sqrt(value)
  %844 = call float @dx.op.unary.f32(i32 24, float %692)  ; Sqrt(value)
  %845 = fmul fast float %839, 2.000000e+00
  %846 = fsub fast float 1.000000e+00, %845
  %847 = fmul fast float %846, %842
  %848 = fadd fast float %847, %845
  %849 = fmul fast float %848, %842
  %850 = fmul fast float %840, 2.000000e+00
  %851 = fsub fast float 1.000000e+00, %850
  %852 = fmul fast float %851, %843
  %853 = fadd fast float %852, %850
  %854 = fmul fast float %853, %843
  %855 = fmul fast float %841, 2.000000e+00
  %856 = fsub fast float 1.000000e+00, %855
  %857 = fmul fast float %856, %844
  %858 = fadd fast float %857, %855
  %859 = fmul fast float %858, %844
  %860 = fmul fast float %849, %849
  %861 = fmul fast float %854, %854
  %862 = fmul fast float %859, %859
  br label %879

; <label>:863                                     ; preds = %826
  %864 = fmul fast float %282, %282
  %865 = fmul fast float %286, %286
  %866 = fmul fast float %290, %290
  %867 = fadd fast float %864, -1.000000e+00
  %868 = fadd fast float %865, -1.000000e+00
  %869 = fadd fast float %866, -1.000000e+00
  %870 = fmul fast float %715, %867
  %871 = fmul fast float %715, %868
  %872 = fmul fast float %715, %869
  %873 = fadd fast float %870, 1.000000e+00
  %874 = fadd fast float %871, 1.000000e+00
  %875 = fadd fast float %872, 1.000000e+00
  %876 = fmul fast float %873, %690
  %877 = fmul fast float %874, %691
  %878 = fmul fast float %875, %692
  br label %879

; <label>:879                                     ; preds = %863, %829, %720, %675
  %880 = phi float [ %825, %720 ], [ %701, %829 ], [ %701, %863 ], [ 0x3FA23C0BE0000000, %675 ]
  %881 = phi float [ %817, %720 ], [ %860, %829 ], [ %876, %863 ], [ 1.000000e+00, %675 ]
  %882 = phi float [ %818, %720 ], [ %861, %829 ], [ %877, %863 ], [ 1.000000e+00, %675 ]
  %883 = phi float [ %819, %720 ], [ %862, %829 ], [ %878, %863 ], [ 1.000000e+00, %675 ]
  %884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.i32 %884, 1
  %886 = and i32 %885, 1
  %887 = icmp ne i32 %886, 0
  %888 = add i32 %56, 356
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %890, 32
  %892 = icmp ne i32 %891, 0
  %893 = and i1 %887, %892
  %894 = select i1 %893, float 1.000000e+00, float %881
  %895 = select i1 %893, float 0x3FD3333340000000, float %882
  %896 = select i1 %893, float 0x3FD3333340000000, float %883
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = and i32 %898, 32
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %973, label %901

; <label>:901                                     ; preds = %879
  %902 = add i32 %56, 92
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %56, 376
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = add i32 %907, 0
  %909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %910 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %909, %dx.types.Handle %107, float %603, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = extractvalue %dx.types.ResRet.f32 %910, 2
  %914 = extractvalue %dx.types.ResRet.f32 %910, 3
  %915 = and i32 %904, 255
  %916 = uitofp i32 %915 to float
  %917 = lshr i32 %904, 8
  %918 = and i32 %917, 255
  %919 = uitofp i32 %918 to float
  %920 = lshr i32 %904, 16
  %921 = and i32 %920, 255
  %922 = uitofp i32 %921 to float
  %923 = fmul fast float %922, 0x3F70101000000000
  %924 = fmul fast float %911, %916
  %925 = fadd fast float %924, %919
  %926 = fmul fast float %925, 0x3F70101000000000
  %927 = fadd fast float %912, -5.000000e-01
  %928 = fadd fast float %914, -5.000000e-01
  %929 = fmul fast float %927, %923
  %930 = fmul fast float %928, %923
  %931 = fadd fast float %929, 5.000000e-01
  %932 = fadd fast float %930, 5.000000e-01
  %933 = fmul fast float %931, 2.000000e+00
  %934 = fadd fast float %933, -1.000000e+00
  %935 = fmul fast float %932, 2.000000e+00
  %936 = fadd fast float %935, -1.000000e+00
  %937 = fadd fast float %934, %936
  %938 = fmul fast float %937, 5.000000e-01
  %939 = fsub fast float %934, %936
  %940 = fmul fast float %939, 5.000000e-01
  %941 = call float @dx.op.unary.f32(i32 6, float %938)  ; FAbs(value)
  %942 = fsub fast float 1.000000e+00, %941
  %943 = call float @dx.op.unary.f32(i32 6, float %940)  ; FAbs(value)
  %944 = fsub fast float %942, %943
  %945 = call float @dx.op.dot3.f32(i32 55, float %938, float %940, float %944, float %938, float %940, float %944)  ; Dot3(ax,ay,az,bx,by,bz)
  %946 = call float @dx.op.unary.f32(i32 25, float %945)  ; Rsqrt(value)
  %947 = fmul fast float %938, %946
  %948 = fmul fast float %940, %946
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = and i32 %950, 67108864
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %969, label %953

; <label>:953                                     ; preds = %901
  %954 = add i32 %56, 280
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 65535
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = and i32 %960, 65535
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = lshr i32 %956, 16
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = fsub fast float %926, %964
  %966 = fmul fast float %965, %958
  %967 = fadd fast float %966, %962
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  br label %969

; <label>:969                                     ; preds = %953, %901
  %970 = phi float [ %968, %953 ], [ %926, %901 ]
  %971 = call float @dx.op.dot2.f32(i32 54, float %947, float %948, float %507, float %508)  ; Dot2(ax,ay,bx,by)
  %972 = call float @dx.op.dot2.f32(i32 54, float %947, float %948, float %509, float %510)  ; Dot2(ax,ay,bx,by)
  br label %973

; <label>:973                                     ; preds = %969, %879
  %974 = phi float [ %970, %969 ], [ 0x3FD6666660000000, %879 ]
  %975 = phi float [ %971, %969 ], [ 0.000000e+00, %879 ]
  %976 = phi float [ %972, %969 ], [ 0.000000e+00, %879 ]
  %977 = phi float [ %913, %969 ], [ 1.000000e+00, %879 ]
  %978 = add i32 %56, 160
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = lshr i32 %980, 22
  %982 = shl nuw nsw i32 %981, 5
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 64
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %1021, label %988

; <label>:988                                     ; preds = %973
  %989 = add i32 %56, 392
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = add i32 %991, 0
  %993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = and i32 %995, 131072
  %997 = icmp eq i32 %996, 0
  %998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %993, %dx.types.Handle %107, float %603, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = fmul fast float %999, %270
  %1003 = fmul fast float %1000, %273
  %1004 = fmul fast float %1001, %276
  br i1 %997, label %1011, label %1005

; <label>:1005                                    ; preds = %988
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = fmul fast float %1007, %1002
  %1009 = fmul fast float %1007, %1003
  %1010 = fmul fast float %1007, %1004
  br label %1011

; <label>:1011                                    ; preds = %1005, %988
  %1012 = phi float [ %1008, %1005 ], [ %1002, %988 ]
  %1013 = phi float [ %1009, %1005 ], [ %1003, %988 ]
  %1014 = phi float [ %1010, %1005 ], [ %1004, %988 ]
  %1015 = fmul fast float %1012, %983
  %1016 = select i1 %253, float %1015, float %1012
  %1017 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1013, float %1014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1018 = select i1 %253, float 0.000000e+00, float %1012
  %1019 = select i1 %253, float %1017, float %1013
  %1020 = select i1 %253, float 0.000000e+00, float %1014
  br label %1021

; <label>:1021                                    ; preds = %1011, %973
  %1022 = phi float [ %1018, %1011 ], [ 0.000000e+00, %973 ]
  %1023 = phi float [ %1019, %1011 ], [ 0.000000e+00, %973 ]
  %1024 = phi float [ %1020, %1011 ], [ 0.000000e+00, %973 ]
  %1025 = add i32 %56, 96
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 255
  %1029 = uitofp i32 %1028 to float
  %1030 = lshr i32 %1027, 8
  %1031 = and i32 %1030, 255
  %1032 = uitofp i32 %1031 to float
  %1033 = call float @dx.op.dot3.f32(i32 55, float %894, float %895, float %896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = fmul fast float %1032, %1033
  %1035 = fadd fast float %1034, %1029
  %1036 = fmul fast float %1035, 0x3F70101020000000
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  br label %1038

; <label>:1038                                    ; preds = %1021, %489
  %1039 = phi float [ 0.000000e+00, %489 ], [ %975, %1021 ]
  %1040 = phi float [ 0.000000e+00, %489 ], [ %976, %1021 ]
  %1041 = phi float [ 0.000000e+00, %489 ], [ %894, %1021 ]
  %1042 = phi float [ 0.000000e+00, %489 ], [ %895, %1021 ]
  %1043 = phi float [ 0.000000e+00, %489 ], [ %896, %1021 ]
  %1044 = phi float [ 0.000000e+00, %489 ], [ %1022, %1021 ]
  %1045 = phi float [ 0.000000e+00, %489 ], [ %1023, %1021 ]
  %1046 = phi float [ 0.000000e+00, %489 ], [ %1024, %1021 ]
  %1047 = phi float [ 0.000000e+00, %489 ], [ %880, %1021 ]
  %1048 = phi float [ 0.000000e+00, %489 ], [ %676, %1021 ]
  %1049 = phi float [ 0.000000e+00, %489 ], [ %974, %1021 ]
  %1050 = phi float [ 0.000000e+00, %489 ], [ %977, %1021 ]
  %1051 = phi float [ 0.000000e+00, %489 ], [ %1037, %1021 ]
  br i1 %437, label %1778, label %1052

; <label>:1052                                    ; preds = %1038
  %1053 = icmp ult i32 %495, 2
  %1054 = add i32 %56, 40
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %56, 44
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = or i32 %1059, %1056
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1778, label %1062

; <label>:1062                                    ; preds = %1052
  %1063 = and i32 %1056, 262144
  %1064 = icmp ne i32 %1063, 0
  %1065 = select i1 %1064, float %61, float 1.000000e+00
  %1066 = select i1 %1064, float %62, float 0.000000e+00
  %1067 = select i1 %1064, float %63, float 0.000000e+00
  %1068 = select i1 %1064, float %64, float 1.000000e+00
  %1069 = select i1 %1064, float %65, float %93
  %1070 = select i1 %1064, float %66, float %94
  %1071 = add i32 %56, 300
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = lshr i32 %1073, 16
  %1075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1074)  ; LegacyF16ToF32(value)
  %1076 = fmul fast float %1075, 0x3F50624DE0000000
  %1077 = add i32 %56, 104
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = lshr i32 %1079, 16
  %1081 = and i32 %1080, 255
  %1082 = lshr i32 %1079, 24
  %1083 = add i32 %56, 308
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 65535
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = lshr i32 %1085, 16
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = add i32 %56, 48
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = lshr i32 %1092, 22
  %1094 = shl nuw nsw i32 %1093, 5
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = shl i32 %1092, 4
  %1097 = and i32 %1096, 32752
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = lshr i32 %1092, 7
  %1100 = and i32 %1099, 32752
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 3
  %1104 = fmul fast float %1103, 1.000000e+03
  %1105 = fmul fast float %347, %1104
  %1106 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1107 = fadd fast float %1106, %337
  %1108 = fmul fast float %348, %1104
  %1109 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1110 = fadd fast float %1109, %339
  %1111 = fmul fast float %1076, %1104
  %1112 = call float @dx.op.unary.f32(i32 22, float %1111)  ; Frc(value)
  %1113 = fmul fast float %1112, 0x401921FB60000000
  %1114 = fadd fast float %1113, %1095
  %1115 = call float @dx.op.unary.f32(i32 13, float %1114)  ; Sin(value)
  %1116 = call float @dx.op.unary.f32(i32 12, float %1114)  ; Cos(value)
  %1117 = fsub fast float -0.000000e+00, %1115
  %1118 = fadd fast float %1069, -5.000000e-01
  %1119 = fadd fast float %1070, -5.000000e-01
  %1120 = fmul fast float %1087, %1118
  %1121 = fmul fast float %1089, %1119
  %1122 = fadd fast float %1120, 5.000000e-01
  %1123 = fadd fast float %1121, 5.000000e-01
  %1124 = fmul fast float %1098, %1122
  %1125 = fmul fast float %1101, %1123
  %1126 = fmul fast float %1116, %1124
  %1127 = call float @dx.op.tertiary.f32(i32 46, float %1117, float %1125, float %1126)  ; FMad(a,b,c)
  %1128 = fmul fast float %1115, %1124
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1116, float %1125, float %1128)  ; FMad(a,b,c)
  %1130 = fadd fast float %1107, %1127
  %1131 = fadd fast float %1110, %1129
  %1132 = icmp ugt i32 %1081, 1
  %1133 = icmp ugt i32 %1079, 33554431
  %1134 = or i1 %1133, %1132
  br i1 %1134, label %1135, label %1160

; <label>:1135                                    ; preds = %1062
  %1136 = add i32 %56, 244
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = lshr i32 %1138, 16
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  %1141 = fmul fast float %1103, %1140
  %1142 = call float @dx.op.unary.f32(i32 22, float %1141)  ; Frc(value)
  %1143 = mul nuw nsw i32 %1081, %1082
  %1144 = uitofp i32 %1143 to float
  %1145 = fmul fast float %1142, %1144
  %1146 = call float @dx.op.unary.f32(i32 27, float %1145)  ; Round_ni(value)
  %1147 = fptoui float %1146 to i32
  %1148 = urem i32 %1147, %1081
  %1149 = udiv i32 %1147, %1082
  %1150 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1151 = call float @dx.op.unary.f32(i32 22, float %1131)  ; Frc(value)
  %1152 = uitofp i32 %1148 to float
  %1153 = uitofp i32 %1149 to float
  %1154 = fadd fast float %1150, %1152
  %1155 = fadd fast float %1151, %1153
  %1156 = uitofp i32 %1081 to float
  %1157 = uitofp i32 %1082 to float
  %1158 = fdiv fast float %1154, %1156
  %1159 = fdiv fast float %1155, %1157
  br label %1160

; <label>:1160                                    ; preds = %1135, %1062
  %1161 = phi float [ %1158, %1135 ], [ %1130, %1062 ]
  %1162 = phi float [ %1159, %1135 ], [ %1131, %1062 ]
  %1163 = and i32 %1056, 256
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1211, label %1165

; <label>:1165                                    ; preds = %1160
  %1166 = add i32 %56, 428
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1170, %dx.types.Handle %108, float %1161, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = add i32 %56, 116
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = shl i32 %1175, 4
  %1177 = and i32 %1176, 32752
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = lshr i32 %1175, 7
  %1180 = and i32 %1179, 32752
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = fsub fast float 1.000000e+00, %492
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1184 = bitcast float %492 to i32
  %1185 = sitofp i32 %1184 to float
  %1186 = fadd fast float %1185, 0xC1CFBF8940000000
  %1187 = fmul fast float %1181, %1186
  %1188 = fadd fast float %1187, 0x41CFBF8940000000
  %1189 = fptosi float %1188 to i32
  %1190 = bitcast i32 %1189 to float
  %1191 = bitcast float %1183 to i32
  %1192 = sitofp i32 %1191 to float
  %1193 = fadd fast float %1192, 0xC1CFBF8940000000
  %1194 = fmul fast float %1193, %1181
  %1195 = fadd fast float %1194, 0x41CFBF8940000000
  %1196 = fptosi float %1195 to i32
  %1197 = bitcast i32 %1196 to float
  %1198 = fmul fast float %1190, %1178
  %1199 = fmul fast float %1197, %1178
  %1200 = fsub fast float %1183, %1198
  %1201 = fadd fast float %1199, %1183
  %1202 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1203 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1204 = fsub fast float %1172, %1202
  %1205 = fsub fast float %1203, %1202
  %1206 = bitcast float %1205 to i32
  %1207 = sub nsw i32 2129859010, %1206
  %1208 = bitcast i32 %1207 to float
  %1209 = fmul fast float %1208, %1204
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  br label %1211

; <label>:1211                                    ; preds = %1165, %1160
  %1212 = phi float [ %1210, %1165 ], [ %492, %1160 ]
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 128
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1233, label %1217

; <label>:1217                                    ; preds = %1211
  %1218 = add i32 %56, 412
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = add i32 %1220, 0
  %1222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1222, %dx.types.Handle %108, float %1161, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 524288
  %1228 = icmp ne i32 %1227, 0
  %1229 = fcmp fast ogt float %1224, 0x3FE0101020000000
  %1230 = select i1 %1229, float 1.000000e+00, float 0.000000e+00
  %1231 = select i1 %1228, float %1230, float %1224
  %1232 = fmul fast float %1231, %1212
  br label %1233

; <label>:1233                                    ; preds = %1217, %1211
  %1234 = phi float [ %1232, %1217 ], [ %1212, %1211 ]
  %1235 = fcmp fast ult float %1234, 0x3F70101020000000
  br i1 %1235, label %1778, label %1236

; <label>:1236                                    ; preds = %1233
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 16
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1439, label %1241

; <label>:1241                                    ; preds = %1236
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %56, 364
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %1246, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1248, %dx.types.Handle %107, float %1161, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = and i32 %1243, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = lshr i32 %1243, 8
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1253, %1255
  %1260 = fadd fast float %1259, %1258
  %1261 = fmul fast float %1260, 0x3F70101000000000
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 512
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1274, label %1266

; <label>:1266                                    ; preds = %1241
  %1267 = add i32 %56, 444
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = add i32 %1269, 0
  %1271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1271, %dx.types.Handle %108, float %1161, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  br label %1274

; <label>:1274                                    ; preds = %1266, %1241
  %1275 = phi float [ %1273, %1266 ], [ 1.000000e+00, %1241 ]
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 33554432
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1386, label %1280

; <label>:1280                                    ; preds = %1274
  %1281 = add i32 %56, 240
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 65535
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = lshr i32 %1283, 16
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = add i32 %56, 244
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 65535
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = lshr i32 %1294, 24
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = and i32 %1294, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = lshr i32 %1294, 8
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = lshr i32 %1294, 16
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F70101020000000
  %1309 = add i32 %56, 236
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = lshr i32 %1311, 24
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = and i32 %1311, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = lshr i32 %1311, 8
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = lshr i32 %1311, 16
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = bitcast float %1250 to i32
  %1327 = ashr i32 %1326, 1
  %1328 = sub nsw i32 1597463174, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1250, 5.000000e-01
  %1331 = fmul fast float %1329, %1329
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float 1.500000e+00, %1332
  %1334 = fmul fast float %1329, %1250
  %1335 = fmul fast float %1334, %1333
  %1336 = bitcast float %1251 to i32
  %1337 = ashr i32 %1336, 1
  %1338 = sub nsw i32 1597463174, %1337
  %1339 = bitcast i32 %1338 to float
  %1340 = fmul fast float %1251, 5.000000e-01
  %1341 = fmul fast float %1339, %1339
  %1342 = fmul fast float %1341, %1340
  %1343 = fsub fast float 1.500000e+00, %1342
  %1344 = fmul fast float %1339, %1251
  %1345 = fmul fast float %1344, %1343
  %1346 = bitcast float %1252 to i32
  %1347 = ashr i32 %1346, 1
  %1348 = sub nsw i32 1597463174, %1347
  %1349 = bitcast i32 %1348 to float
  %1350 = fmul fast float %1252, 5.000000e-01
  %1351 = fmul fast float %1349, %1349
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float 1.500000e+00, %1352
  %1354 = fmul fast float %1349, %1252
  %1355 = fmul fast float %1354, %1353
  %1356 = fsub fast float %1335, %1317
  %1357 = fsub fast float %1345, %1321
  %1358 = fsub fast float %1355, %1325
  %1359 = fmul fast float %1356, %1285
  %1360 = fmul fast float %1357, %1287
  %1361 = fmul fast float %1358, %1292
  %1362 = fadd fast float %1359, %1300
  %1363 = fadd fast float %1360, %1304
  %1364 = fadd fast float %1361, %1308
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1366, %1366
  %1370 = fmul fast float %1367, %1367
  %1371 = fsub fast float %1368, %1250
  %1372 = fsub fast float %1369, %1251
  %1373 = fsub fast float %1370, %1252
  %1374 = fmul fast float %1371, %1275
  %1375 = fmul fast float %1372, %1275
  %1376 = fmul fast float %1373, %1275
  %1377 = fadd fast float %1374, %1250
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1376, %1252
  %1380 = fadd fast float %1297, %1261
  %1381 = fsub fast float %1380, %1314
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1383 = fsub fast float %1382, %1261
  %1384 = fmul fast float %1383, %1275
  %1385 = fadd fast float %1384, %1261
  br label %1439

; <label>:1386                                    ; preds = %1274
  %1387 = and i32 %1277, 134217728
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1423, label %1389

; <label>:1389                                    ; preds = %1386
  %1390 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %1392 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fmul fast float %1393, %1275
  %1397 = fmul fast float %1394, %1275
  %1398 = fmul fast float %1395, %1275
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = call float @dx.op.unary.f32(i32 24, float %1252)  ; Sqrt(value)
  %1405 = fmul fast float %1399, 2.000000e+00
  %1406 = fsub fast float 1.000000e+00, %1405
  %1407 = fmul fast float %1406, %1402
  %1408 = fadd fast float %1407, %1405
  %1409 = fmul fast float %1408, %1402
  %1410 = fmul fast float %1400, 2.000000e+00
  %1411 = fsub fast float 1.000000e+00, %1410
  %1412 = fmul fast float %1411, %1403
  %1413 = fadd fast float %1412, %1410
  %1414 = fmul fast float %1413, %1403
  %1415 = fmul fast float %1401, 2.000000e+00
  %1416 = fsub fast float 1.000000e+00, %1415
  %1417 = fmul fast float %1416, %1404
  %1418 = fadd fast float %1417, %1415
  %1419 = fmul fast float %1418, %1404
  %1420 = fmul fast float %1409, %1409
  %1421 = fmul fast float %1414, %1414
  %1422 = fmul fast float %1419, %1419
  br label %1439

; <label>:1423                                    ; preds = %1386
  %1424 = fmul fast float %324, %324
  %1425 = fmul fast float %328, %328
  %1426 = fmul fast float %332, %332
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fmul fast float %1275, %1427
  %1431 = fmul fast float %1275, %1428
  %1432 = fmul fast float %1275, %1429
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fmul fast float %1433, %1250
  %1437 = fmul fast float %1434, %1251
  %1438 = fmul fast float %1435, %1252
  br label %1439

; <label>:1439                                    ; preds = %1423, %1389, %1280, %1236
  %1440 = phi float [ %1385, %1280 ], [ %1261, %1389 ], [ %1261, %1423 ], [ 0x3FA23C0BE0000000, %1236 ]
  %1441 = phi float [ %1377, %1280 ], [ %1420, %1389 ], [ %1436, %1423 ], [ 1.000000e+00, %1236 ]
  %1442 = phi float [ %1378, %1280 ], [ %1421, %1389 ], [ %1437, %1423 ], [ 1.000000e+00, %1236 ]
  %1443 = phi float [ %1379, %1280 ], [ %1422, %1389 ], [ %1438, %1423 ], [ 1.000000e+00, %1236 ]
  %1444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.i32 %1444, 1
  %1446 = and i32 %1445, 1
  %1447 = icmp ne i32 %1446, 0
  %1448 = add i32 %56, 356
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 32
  %1452 = icmp ne i32 %1451, 0
  %1453 = and i1 %1447, %1452
  %1454 = select i1 %1453, float 1.000000e+00, float %1441
  %1455 = select i1 %1453, float 0x3FD3333340000000, float %1442
  %1456 = select i1 %1453, float 0x3FD3333340000000, float %1443
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 32
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1533, label %1461

; <label>:1461                                    ; preds = %1439
  %1462 = add i32 %56, 108
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %56, 380
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %1467, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1469, %dx.types.Handle %107, float %1161, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.ResRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.ResRet.f32 %1470, 2
  %1474 = extractvalue %dx.types.ResRet.f32 %1470, 3
  %1475 = and i32 %1464, 255
  %1476 = uitofp i32 %1475 to float
  %1477 = lshr i32 %1464, 8
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = lshr i32 %1464, 16
  %1481 = and i32 %1480, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = fmul fast float %1482, 0x3F70101000000000
  %1484 = fmul fast float %1471, %1476
  %1485 = fadd fast float %1484, %1479
  %1486 = fmul fast float %1485, 0x3F70101000000000
  %1487 = fadd fast float %1472, -5.000000e-01
  %1488 = fadd fast float %1474, -5.000000e-01
  %1489 = fmul fast float %1487, %1483
  %1490 = fmul fast float %1488, %1483
  %1491 = fadd fast float %1489, 5.000000e-01
  %1492 = fadd fast float %1490, 5.000000e-01
  %1493 = fmul fast float %1491, 2.000000e+00
  %1494 = fadd fast float %1493, -1.000000e+00
  %1495 = fmul fast float %1492, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = fadd fast float %1494, %1496
  %1498 = fmul fast float %1497, 5.000000e-01
  %1499 = fsub fast float %1494, %1496
  %1500 = fmul fast float %1499, 5.000000e-01
  %1501 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1502 = fsub fast float 1.000000e+00, %1501
  %1503 = call float @dx.op.unary.f32(i32 6, float %1500)  ; FAbs(value)
  %1504 = fsub fast float %1502, %1503
  %1505 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1500, float %1504, float %1498, float %1500, float %1504)  ; Dot3(ax,ay,az,bx,by,bz)
  %1506 = call float @dx.op.unary.f32(i32 25, float %1505)  ; Rsqrt(value)
  %1507 = fmul fast float %1498, %1506
  %1508 = fmul fast float %1500, %1506
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 67108864
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1529, label %1513

; <label>:1513                                    ; preds = %1461
  %1514 = add i32 %56, 296
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 65535
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 65535
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = lshr i32 %1516, 16
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = fsub fast float %1486, %1524
  %1526 = fmul fast float %1525, %1518
  %1527 = fadd fast float %1526, %1522
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1529

; <label>:1529                                    ; preds = %1513, %1461
  %1530 = phi float [ %1528, %1513 ], [ %1486, %1461 ]
  %1531 = call float @dx.op.dot2.f32(i32 54, float %1507, float %1508, float %1065, float %1066)  ; Dot2(ax,ay,bx,by)
  %1532 = call float @dx.op.dot2.f32(i32 54, float %1507, float %1508, float %1067, float %1068)  ; Dot2(ax,ay,bx,by)
  br label %1533

; <label>:1533                                    ; preds = %1529, %1439
  %1534 = phi float [ %1530, %1529 ], [ 0x3FD6666660000000, %1439 ]
  %1535 = phi float [ %1531, %1529 ], [ 0.000000e+00, %1439 ]
  %1536 = phi float [ %1532, %1529 ], [ 0.000000e+00, %1439 ]
  %1537 = phi float [ %1473, %1529 ], [ 1.000000e+00, %1439 ]
  %1538 = add i32 %56, 176
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = lshr i32 %1540, 22
  %1542 = shl nuw nsw i32 %1541, 5
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 64
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1581, label %1548

; <label>:1548                                    ; preds = %1533
  %1549 = add i32 %56, 396
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = add i32 %1551, 0
  %1553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 131072
  %1557 = icmp eq i32 %1556, 0
  %1558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1553, %dx.types.Handle %107, float %1161, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.ResRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.ResRet.f32 %1558, 2
  %1562 = fmul fast float %1559, %312
  %1563 = fmul fast float %1560, %315
  %1564 = fmul fast float %1561, %318
  br i1 %1557, label %1571, label %1565

; <label>:1565                                    ; preds = %1548
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 0
  %1568 = fmul fast float %1567, %1562
  %1569 = fmul fast float %1567, %1563
  %1570 = fmul fast float %1567, %1564
  br label %1571

; <label>:1571                                    ; preds = %1565, %1548
  %1572 = phi float [ %1568, %1565 ], [ %1562, %1548 ]
  %1573 = phi float [ %1569, %1565 ], [ %1563, %1548 ]
  %1574 = phi float [ %1570, %1565 ], [ %1564, %1548 ]
  %1575 = fmul fast float %1572, %1543
  %1576 = select i1 %253, float %1575, float %1572
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1573, float %1574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = select i1 %253, float 0.000000e+00, float %1572
  %1579 = select i1 %253, float %1577, float %1573
  %1580 = select i1 %253, float 0.000000e+00, float %1574
  br label %1581

; <label>:1581                                    ; preds = %1571, %1533
  %1582 = phi float [ %1578, %1571 ], [ 0.000000e+00, %1533 ]
  %1583 = phi float [ %1579, %1571 ], [ 0.000000e+00, %1533 ]
  %1584 = phi float [ %1580, %1571 ], [ 0.000000e+00, %1533 ]
  %1585 = add i32 %56, 112
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = lshr i32 %1587, 8
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1594 = fmul fast float %1592, %1593
  %1595 = fadd fast float %1594, %1589
  %1596 = fmul fast float %1595, 0x3F70101020000000
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  br i1 %1053, label %1598, label %1606

; <label>:1598                                    ; preds = %1581
  %1599 = fsub fast float 1.000000e+00, %1234
  %1600 = fmul fast float %1599, %1041
  %1601 = fmul fast float %1599, %1042
  %1602 = fmul fast float %1599, %1043
  %1603 = fmul fast float %1599, %1044
  %1604 = fmul fast float %1599, %1045
  %1605 = fmul fast float %1599, %1046
  br label %1606

; <label>:1606                                    ; preds = %1598, %1581
  %1607 = phi float [ %1600, %1598 ], [ %1041, %1581 ]
  %1608 = phi float [ %1601, %1598 ], [ %1042, %1581 ]
  %1609 = phi float [ %1602, %1598 ], [ %1043, %1581 ]
  %1610 = phi float [ %1603, %1598 ], [ %1044, %1581 ]
  %1611 = phi float [ %1604, %1598 ], [ %1045, %1581 ]
  %1612 = phi float [ %1605, %1598 ], [ %1046, %1581 ]
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 3
  %1616 = icmp eq i32 %1615, 3
  br i1 %1616, label %1695, label %1617

; <label>:1617                                    ; preds = %1606
  %1618 = and i32 %1614, 16
  %1619 = icmp ne i32 %1618, 0
  %1620 = select i1 %1619, float %1234, float 0.000000e+00
  %1621 = icmp eq i32 %1615, 0
  br i1 %1621, label %1622, label %1650

; <label>:1622                                    ; preds = %1617
  %1623 = and i32 %1614, 64
  %1624 = icmp ne i32 %1623, 0
  %1625 = select i1 %1624, float %1234, float 0.000000e+00
  %1626 = fsub fast float %1454, %1607
  %1627 = fsub fast float %1455, %1608
  %1628 = fsub fast float %1456, %1609
  %1629 = fmul fast float %1620, %1626
  %1630 = fmul fast float %1620, %1627
  %1631 = fmul fast float %1620, %1628
  %1632 = fadd fast float %1629, %1607
  %1633 = fadd fast float %1630, %1608
  %1634 = fadd fast float %1631, %1609
  %1635 = fsub fast float %1440, %1047
  %1636 = fmul fast float %1620, %1635
  %1637 = fadd fast float %1636, %1047
  %1638 = fsub fast float %1582, %1610
  %1639 = fsub fast float %1583, %1611
  %1640 = fsub fast float %1584, %1612
  %1641 = fmul fast float %1625, %1638
  %1642 = fmul fast float %1625, %1639
  %1643 = fmul fast float %1625, %1640
  %1644 = fadd fast float %1641, %1610
  %1645 = fadd fast float %1642, %1611
  %1646 = fadd fast float %1643, %1612
  %1647 = fsub fast float %1597, %1051
  %1648 = fmul fast float %1620, %1647
  %1649 = fadd fast float %1648, %1051
  br label %1695

; <label>:1650                                    ; preds = %1617
  %1651 = icmp eq i32 %1615, 1
  br i1 %1651, label %1652, label %1665

; <label>:1652                                    ; preds = %1650
  %1653 = fadd fast float %1454, -1.000000e+00
  %1654 = fadd fast float %1455, -1.000000e+00
  %1655 = fadd fast float %1456, -1.000000e+00
  %1656 = fmul fast float %1620, %1653
  %1657 = fmul fast float %1620, %1654
  %1658 = fmul fast float %1620, %1655
  %1659 = fadd fast float %1656, 1.000000e+00
  %1660 = fadd fast float %1657, 1.000000e+00
  %1661 = fadd fast float %1658, 1.000000e+00
  %1662 = fmul fast float %1659, %1607
  %1663 = fmul fast float %1660, %1608
  %1664 = fmul fast float %1661, %1609
  br label %1695

; <label>:1665                                    ; preds = %1650
  %1666 = icmp eq i32 %1615, 2
  br i1 %1666, label %1667, label %1695

; <label>:1667                                    ; preds = %1665
  %1668 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1669 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1670 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1671 = fadd fast float %1668, -5.000000e-01
  %1672 = fadd fast float %1669, -5.000000e-01
  %1673 = fadd fast float %1670, -5.000000e-01
  %1674 = fmul fast float %1671, %1620
  %1675 = fmul fast float %1672, %1620
  %1676 = fmul fast float %1673, %1620
  %1677 = fadd fast float %1674, 5.000000e-01
  %1678 = fadd fast float %1675, 5.000000e-01
  %1679 = fadd fast float %1676, 5.000000e-01
  %1680 = fmul fast float %1677, 2.000000e+00
  %1681 = fsub fast float 1.000000e+00, %1680
  %1682 = fmul fast float %1681, %1607
  %1683 = fadd fast float %1682, %1680
  %1684 = fmul fast float %1683, %1607
  %1685 = fmul fast float %1678, 2.000000e+00
  %1686 = fsub fast float 1.000000e+00, %1685
  %1687 = fmul fast float %1686, %1608
  %1688 = fadd fast float %1687, %1685
  %1689 = fmul fast float %1688, %1608
  %1690 = fmul fast float %1679, 2.000000e+00
  %1691 = fsub fast float 1.000000e+00, %1690
  %1692 = fmul fast float %1691, %1609
  %1693 = fadd fast float %1692, %1690
  %1694 = fmul fast float %1693, %1609
  br label %1695

; <label>:1695                                    ; preds = %1667, %1665, %1652, %1622, %1606
  %1696 = phi float [ %1607, %1606 ], [ %1684, %1667 ], [ %1607, %1665 ], [ %1662, %1652 ], [ %1632, %1622 ]
  %1697 = phi float [ %1608, %1606 ], [ %1689, %1667 ], [ %1608, %1665 ], [ %1663, %1652 ], [ %1633, %1622 ]
  %1698 = phi float [ %1609, %1606 ], [ %1694, %1667 ], [ %1609, %1665 ], [ %1664, %1652 ], [ %1634, %1622 ]
  %1699 = phi float [ %1610, %1606 ], [ %1610, %1667 ], [ %1610, %1665 ], [ %1610, %1652 ], [ %1644, %1622 ]
  %1700 = phi float [ %1611, %1606 ], [ %1611, %1667 ], [ %1611, %1665 ], [ %1611, %1652 ], [ %1645, %1622 ]
  %1701 = phi float [ %1612, %1606 ], [ %1612, %1667 ], [ %1612, %1665 ], [ %1612, %1652 ], [ %1646, %1622 ]
  %1702 = phi float [ %1047, %1606 ], [ %1047, %1667 ], [ %1047, %1665 ], [ %1047, %1652 ], [ %1637, %1622 ]
  %1703 = phi float [ %1051, %1606 ], [ %1051, %1667 ], [ %1051, %1665 ], [ %1051, %1652 ], [ %1649, %1622 ]
  %1704 = and i32 %1614, 12
  %1705 = icmp eq i32 %1704, 12
  br i1 %1705, label %1778, label %1706

; <label>:1706                                    ; preds = %1695
  %1707 = and i32 %1614, 2097184
  %1708 = icmp eq i32 %1707, 2097184
  %1709 = select i1 %1708, float %1234, float 0.000000e+00
  %1710 = and i32 %1614, 4194336
  %1711 = icmp eq i32 %1710, 4194336
  %1712 = select i1 %1711, float %1234, float 0.000000e+00
  %1713 = and i32 %1614, 8388640
  %1714 = icmp eq i32 %1713, 8388640
  %1715 = select i1 %1714, float %1234, float 0.000000e+00
  %1716 = icmp eq i32 %1704, 0
  br i1 %1716, label %1717, label %1730

; <label>:1717                                    ; preds = %1706
  %1718 = fsub fast float %1535, %1039
  %1719 = fsub fast float %1536, %1040
  %1720 = fmul fast float %1709, %1718
  %1721 = fmul fast float %1709, %1719
  %1722 = fadd fast float %1720, %1039
  %1723 = fadd fast float %1721, %1040
  %1724 = fsub fast float %1537, %1050
  %1725 = fmul fast float %1712, %1724
  %1726 = fadd fast float %1725, %1050
  %1727 = fsub fast float %1534, %1049
  %1728 = fmul fast float %1715, %1727
  %1729 = fadd fast float %1728, %1049
  br label %1778

; <label>:1730                                    ; preds = %1706
  %1731 = icmp eq i32 %1704, 4
  br i1 %1731, label %1732, label %1764

; <label>:1732                                    ; preds = %1730
  %1733 = fmul fast float %1709, %1535
  %1734 = fmul fast float %1709, %1536
  %1735 = fadd fast float %1733, %1039
  %1736 = fadd fast float %1734, %1040
  %1737 = call float @dx.op.binary.f32(i32 36, float %1050, float %1537)  ; FMin(a,b)
  %1738 = fsub fast float %1737, %1050
  %1739 = fmul fast float %1738, %1712
  %1740 = fadd fast float %1739, %1050
  %1741 = fadd fast float %1534, %1049
  %1742 = fmul fast float %1741, 0x3FF337FAE0000000
  %1743 = fmul fast float %1049, %1049
  %1744 = fmul fast float %1534, %1534
  %1745 = fadd fast float %1744, %1743
  %1746 = fmul fast float %1745, 0x3FE5152B00000000
  %1747 = fmul fast float %1049, 0xBFCC1F85E0000000
  %1748 = fmul fast float %1747, %1534
  %1749 = fadd fast float %1748, 0xBFE1363700000000
  %1750 = fadd fast float %1749, %1742
  %1751 = fsub fast float %1750, %1746
  %1752 = fmul fast float %1741, 0x3FBA6F0D00000000
  %1753 = fmul fast float %1745, 0x3FD0432880000000
  %1754 = fmul fast float %1049, 0xBFEF110800000000
  %1755 = fmul fast float %1754, %1534
  %1756 = fadd fast float %1755, 1.000000e+00
  %1757 = fsub fast float %1756, %1752
  %1758 = fadd fast float %1757, %1753
  %1759 = fdiv fast float %1751, %1758
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = fsub fast float %1760, %1049
  %1762 = fmul fast float %1761, %1715
  %1763 = fadd fast float %1762, %1049
  br label %1778

; <label>:1764                                    ; preds = %1730
  %1765 = icmp eq i32 %1704, 8
  br i1 %1765, label %1766, label %1778

; <label>:1766                                    ; preds = %1764
  %1767 = fmul fast float %1709, %1535
  %1768 = fmul fast float %1709, %1536
  %1769 = fadd fast float %1767, %1039
  %1770 = fadd fast float %1768, %1040
  %1771 = call float @dx.op.binary.f32(i32 36, float %1050, float %1537)  ; FMin(a,b)
  %1772 = fsub fast float %1771, %1050
  %1773 = fmul fast float %1772, %1712
  %1774 = fadd fast float %1773, %1050
  %1775 = fsub fast float %1534, %1049
  %1776 = fmul fast float %1715, %1775
  %1777 = fadd fast float %1776, %1049
  br label %1778

; <label>:1778                                    ; preds = %1766, %1764, %1732, %1717, %1695, %1233, %1052, %1038
  %1779 = phi float [ %1039, %1695 ], [ %1039, %1233 ], [ %1039, %1038 ], [ %1769, %1766 ], [ %1039, %1764 ], [ %1735, %1732 ], [ %1722, %1717 ], [ %1039, %1052 ]
  %1780 = phi float [ %1040, %1695 ], [ %1040, %1233 ], [ %1040, %1038 ], [ %1770, %1766 ], [ %1040, %1764 ], [ %1736, %1732 ], [ %1723, %1717 ], [ %1040, %1052 ]
  %1781 = phi float [ %1696, %1695 ], [ %1041, %1233 ], [ %1041, %1038 ], [ %1696, %1766 ], [ %1696, %1764 ], [ %1696, %1732 ], [ %1696, %1717 ], [ %1041, %1052 ]
  %1782 = phi float [ %1697, %1695 ], [ %1042, %1233 ], [ %1042, %1038 ], [ %1697, %1766 ], [ %1697, %1764 ], [ %1697, %1732 ], [ %1697, %1717 ], [ %1042, %1052 ]
  %1783 = phi float [ %1698, %1695 ], [ %1043, %1233 ], [ %1043, %1038 ], [ %1698, %1766 ], [ %1698, %1764 ], [ %1698, %1732 ], [ %1698, %1717 ], [ %1043, %1052 ]
  %1784 = phi float [ %1699, %1695 ], [ %1044, %1233 ], [ %1044, %1038 ], [ %1699, %1766 ], [ %1699, %1764 ], [ %1699, %1732 ], [ %1699, %1717 ], [ %1044, %1052 ]
  %1785 = phi float [ %1700, %1695 ], [ %1045, %1233 ], [ %1045, %1038 ], [ %1700, %1766 ], [ %1700, %1764 ], [ %1700, %1732 ], [ %1700, %1717 ], [ %1045, %1052 ]
  %1786 = phi float [ %1701, %1695 ], [ %1046, %1233 ], [ %1046, %1038 ], [ %1701, %1766 ], [ %1701, %1764 ], [ %1701, %1732 ], [ %1701, %1717 ], [ %1046, %1052 ]
  %1787 = phi float [ %1702, %1695 ], [ %1047, %1233 ], [ %1047, %1038 ], [ %1702, %1766 ], [ %1702, %1764 ], [ %1702, %1732 ], [ %1702, %1717 ], [ %1047, %1052 ]
  %1788 = phi float [ %1049, %1695 ], [ %1049, %1233 ], [ %1049, %1038 ], [ %1777, %1766 ], [ %1049, %1764 ], [ %1763, %1732 ], [ %1729, %1717 ], [ %1049, %1052 ]
  %1789 = phi float [ %1050, %1695 ], [ %1050, %1233 ], [ %1050, %1038 ], [ %1774, %1766 ], [ %1050, %1764 ], [ %1740, %1732 ], [ %1726, %1717 ], [ %1050, %1052 ]
  %1790 = phi float [ %1703, %1695 ], [ %1051, %1233 ], [ %1051, %1038 ], [ %1703, %1766 ], [ %1703, %1764 ], [ %1703, %1732 ], [ %1703, %1717 ], [ %1051, %1052 ]
  br i1 %439, label %2517, label %1791

; <label>:1791                                    ; preds = %1778
  %1792 = icmp ult i32 %495, 3
  %1793 = add i32 %56, 56
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = add i32 %56, 60
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = or i32 %1798, %1795
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %2517, label %1801

; <label>:1801                                    ; preds = %1791
  %1802 = and i32 %1795, 262144
  %1803 = icmp ne i32 %1802, 0
  %1804 = select i1 %1803, float %61, float 1.000000e+00
  %1805 = select i1 %1803, float %62, float 0.000000e+00
  %1806 = select i1 %1803, float %63, float 0.000000e+00
  %1807 = select i1 %1803, float %64, float 1.000000e+00
  %1808 = select i1 %1803, float %65, float %93
  %1809 = select i1 %1803, float %66, float %94
  %1810 = add i32 %56, 316
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = lshr i32 %1812, 16
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = fmul fast float %1814, 0x3F50624DE0000000
  %1816 = add i32 %56, 120
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = lshr i32 %1818, 16
  %1820 = and i32 %1819, 255
  %1821 = lshr i32 %1818, 24
  %1822 = add i32 %56, 324
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 65535
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = lshr i32 %1824, 16
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = add i32 %56, 64
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = lshr i32 %1831, 22
  %1833 = shl nuw nsw i32 %1832, 5
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = shl i32 %1831, 4
  %1836 = and i32 %1835, 32752
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = lshr i32 %1831, 7
  %1839 = and i32 %1838, 32752
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %1843 = fmul fast float %1842, 1.000000e+03
  %1844 = fmul fast float %389, %1843
  %1845 = call float @dx.op.unary.f32(i32 22, float %1844)  ; Frc(value)
  %1846 = fadd fast float %1845, %379
  %1847 = fmul fast float %390, %1843
  %1848 = call float @dx.op.unary.f32(i32 22, float %1847)  ; Frc(value)
  %1849 = fadd fast float %1848, %381
  %1850 = fmul fast float %1815, %1843
  %1851 = call float @dx.op.unary.f32(i32 22, float %1850)  ; Frc(value)
  %1852 = fmul fast float %1851, 0x401921FB60000000
  %1853 = fadd fast float %1852, %1834
  %1854 = call float @dx.op.unary.f32(i32 13, float %1853)  ; Sin(value)
  %1855 = call float @dx.op.unary.f32(i32 12, float %1853)  ; Cos(value)
  %1856 = fsub fast float -0.000000e+00, %1854
  %1857 = fadd fast float %1808, -5.000000e-01
  %1858 = fadd fast float %1809, -5.000000e-01
  %1859 = fmul fast float %1826, %1857
  %1860 = fmul fast float %1828, %1858
  %1861 = fadd fast float %1859, 5.000000e-01
  %1862 = fadd fast float %1860, 5.000000e-01
  %1863 = fmul fast float %1837, %1861
  %1864 = fmul fast float %1840, %1862
  %1865 = fmul fast float %1855, %1863
  %1866 = call float @dx.op.tertiary.f32(i32 46, float %1856, float %1864, float %1865)  ; FMad(a,b,c)
  %1867 = fmul fast float %1854, %1863
  %1868 = call float @dx.op.tertiary.f32(i32 46, float %1855, float %1864, float %1867)  ; FMad(a,b,c)
  %1869 = fadd fast float %1846, %1866
  %1870 = fadd fast float %1849, %1868
  %1871 = icmp ugt i32 %1820, 1
  %1872 = icmp ugt i32 %1818, 33554431
  %1873 = or i1 %1872, %1871
  br i1 %1873, label %1874, label %1899

; <label>:1874                                    ; preds = %1801
  %1875 = add i32 %56, 260
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = lshr i32 %1877, 16
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = fmul fast float %1842, %1879
  %1881 = call float @dx.op.unary.f32(i32 22, float %1880)  ; Frc(value)
  %1882 = mul nuw nsw i32 %1820, %1821
  %1883 = uitofp i32 %1882 to float
  %1884 = fmul fast float %1881, %1883
  %1885 = call float @dx.op.unary.f32(i32 27, float %1884)  ; Round_ni(value)
  %1886 = fptoui float %1885 to i32
  %1887 = urem i32 %1886, %1820
  %1888 = udiv i32 %1886, %1821
  %1889 = call float @dx.op.unary.f32(i32 22, float %1869)  ; Frc(value)
  %1890 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1891 = uitofp i32 %1887 to float
  %1892 = uitofp i32 %1888 to float
  %1893 = fadd fast float %1889, %1891
  %1894 = fadd fast float %1890, %1892
  %1895 = uitofp i32 %1820 to float
  %1896 = uitofp i32 %1821 to float
  %1897 = fdiv fast float %1893, %1895
  %1898 = fdiv fast float %1894, %1896
  br label %1899

; <label>:1899                                    ; preds = %1874, %1801
  %1900 = phi float [ %1897, %1874 ], [ %1869, %1801 ]
  %1901 = phi float [ %1898, %1874 ], [ %1870, %1801 ]
  %1902 = and i32 %1795, 256
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %1950, label %1904

; <label>:1904                                    ; preds = %1899
  %1905 = add i32 %56, 432
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = add i32 %1907, 0
  %1909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1910 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1909, %dx.types.Handle %108, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = add i32 %56, 132
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = shl i32 %1914, 4
  %1916 = and i32 %1915, 32752
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = lshr i32 %1914, 7
  %1919 = and i32 %1918, 32752
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = fsub fast float 1.000000e+00, %491
  %1922 = call float @dx.op.binary.f32(i32 35, float %1921, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1923 = bitcast float %491 to i32
  %1924 = sitofp i32 %1923 to float
  %1925 = fadd fast float %1924, 0xC1CFBF8940000000
  %1926 = fmul fast float %1920, %1925
  %1927 = fadd fast float %1926, 0x41CFBF8940000000
  %1928 = fptosi float %1927 to i32
  %1929 = bitcast i32 %1928 to float
  %1930 = bitcast float %1922 to i32
  %1931 = sitofp i32 %1930 to float
  %1932 = fadd fast float %1931, 0xC1CFBF8940000000
  %1933 = fmul fast float %1932, %1920
  %1934 = fadd fast float %1933, 0x41CFBF8940000000
  %1935 = fptosi float %1934 to i32
  %1936 = bitcast i32 %1935 to float
  %1937 = fmul fast float %1929, %1917
  %1938 = fmul fast float %1936, %1917
  %1939 = fsub fast float %1922, %1937
  %1940 = fadd fast float %1938, %1922
  %1941 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1942 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1943 = fsub fast float %1911, %1941
  %1944 = fsub fast float %1942, %1941
  %1945 = bitcast float %1944 to i32
  %1946 = sub nsw i32 2129859010, %1945
  %1947 = bitcast i32 %1946 to float
  %1948 = fmul fast float %1947, %1943
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  br label %1950

; <label>:1950                                    ; preds = %1904, %1899
  %1951 = phi float [ %1949, %1904 ], [ %491, %1899 ]
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = and i32 %1953, 128
  %1955 = icmp eq i32 %1954, 0
  br i1 %1955, label %1972, label %1956

; <label>:1956                                    ; preds = %1950
  %1957 = add i32 %56, 416
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = add i32 %1959, 0
  %1961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1960, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1962 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1961, %dx.types.Handle %108, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1963 = extractvalue %dx.types.ResRet.f32 %1962, 0
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 524288
  %1967 = icmp ne i32 %1966, 0
  %1968 = fcmp fast ogt float %1963, 0x3FE0101020000000
  %1969 = select i1 %1968, float 1.000000e+00, float 0.000000e+00
  %1970 = select i1 %1967, float %1969, float %1963
  %1971 = fmul fast float %1970, %1951
  br label %1972

; <label>:1972                                    ; preds = %1956, %1950
  %1973 = phi float [ %1971, %1956 ], [ %1951, %1950 ]
  %1974 = fcmp fast ult float %1973, 0x3F70101020000000
  br i1 %1974, label %2517, label %1975

; <label>:1975                                    ; preds = %1972
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 16
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %2178, label %1980

; <label>:1980                                    ; preds = %1975
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %56, 368
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = add i32 %1985, 0
  %1987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1987, %dx.types.Handle %107, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.ResRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.ResRet.f32 %1988, 2
  %1992 = extractvalue %dx.types.ResRet.f32 %1988, 3
  %1993 = and i32 %1982, 255
  %1994 = uitofp i32 %1993 to float
  %1995 = lshr i32 %1982, 8
  %1996 = and i32 %1995, 255
  %1997 = uitofp i32 %1996 to float
  %1998 = fmul fast float %1992, %1994
  %1999 = fadd fast float %1998, %1997
  %2000 = fmul fast float %1999, 0x3F70101000000000
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 512
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2013, label %2005

; <label>:2005                                    ; preds = %1980
  %2006 = add i32 %56, 448
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = add i32 %2008, 0
  %2010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2009, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2011 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2010, %dx.types.Handle %108, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  br label %2013

; <label>:2013                                    ; preds = %2005, %1980
  %2014 = phi float [ %2012, %2005 ], [ 1.000000e+00, %1980 ]
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 33554432
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2125, label %2019

; <label>:2019                                    ; preds = %2013
  %2020 = add i32 %56, 256
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %2022, 65535
  %2024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2023)  ; LegacyF16ToF32(value)
  %2025 = lshr i32 %2022, 16
  %2026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2025)  ; LegacyF16ToF32(value)
  %2027 = add i32 %56, 260
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 65535
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = lshr i32 %2033, 24
  %2035 = uitofp i32 %2034 to float
  %2036 = fmul fast float %2035, 0x3F70101020000000
  %2037 = and i32 %2033, 255
  %2038 = uitofp i32 %2037 to float
  %2039 = fmul fast float %2038, 0x3F70101020000000
  %2040 = lshr i32 %2033, 8
  %2041 = and i32 %2040, 255
  %2042 = uitofp i32 %2041 to float
  %2043 = fmul fast float %2042, 0x3F70101020000000
  %2044 = lshr i32 %2033, 16
  %2045 = and i32 %2044, 255
  %2046 = uitofp i32 %2045 to float
  %2047 = fmul fast float %2046, 0x3F70101020000000
  %2048 = add i32 %56, 252
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = lshr i32 %2050, 24
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101020000000
  %2054 = and i32 %2050, 255
  %2055 = uitofp i32 %2054 to float
  %2056 = fmul fast float %2055, 0x3F70101020000000
  %2057 = lshr i32 %2050, 8
  %2058 = and i32 %2057, 255
  %2059 = uitofp i32 %2058 to float
  %2060 = fmul fast float %2059, 0x3F70101020000000
  %2061 = lshr i32 %2050, 16
  %2062 = and i32 %2061, 255
  %2063 = uitofp i32 %2062 to float
  %2064 = fmul fast float %2063, 0x3F70101020000000
  %2065 = bitcast float %1989 to i32
  %2066 = ashr i32 %2065, 1
  %2067 = sub nsw i32 1597463174, %2066
  %2068 = bitcast i32 %2067 to float
  %2069 = fmul fast float %1989, 5.000000e-01
  %2070 = fmul fast float %2068, %2068
  %2071 = fmul fast float %2070, %2069
  %2072 = fsub fast float 1.500000e+00, %2071
  %2073 = fmul fast float %2068, %1989
  %2074 = fmul fast float %2073, %2072
  %2075 = bitcast float %1990 to i32
  %2076 = ashr i32 %2075, 1
  %2077 = sub nsw i32 1597463174, %2076
  %2078 = bitcast i32 %2077 to float
  %2079 = fmul fast float %1990, 5.000000e-01
  %2080 = fmul fast float %2078, %2078
  %2081 = fmul fast float %2080, %2079
  %2082 = fsub fast float 1.500000e+00, %2081
  %2083 = fmul fast float %2078, %1990
  %2084 = fmul fast float %2083, %2082
  %2085 = bitcast float %1991 to i32
  %2086 = ashr i32 %2085, 1
  %2087 = sub nsw i32 1597463174, %2086
  %2088 = bitcast i32 %2087 to float
  %2089 = fmul fast float %1991, 5.000000e-01
  %2090 = fmul fast float %2088, %2088
  %2091 = fmul fast float %2090, %2089
  %2092 = fsub fast float 1.500000e+00, %2091
  %2093 = fmul fast float %2088, %1991
  %2094 = fmul fast float %2093, %2092
  %2095 = fsub fast float %2074, %2056
  %2096 = fsub fast float %2084, %2060
  %2097 = fsub fast float %2094, %2064
  %2098 = fmul fast float %2095, %2024
  %2099 = fmul fast float %2096, %2026
  %2100 = fmul fast float %2097, %2031
  %2101 = fadd fast float %2098, %2039
  %2102 = fadd fast float %2099, %2043
  %2103 = fadd fast float %2100, %2047
  %2104 = call float @dx.op.unary.f32(i32 7, float %2101)  ; Saturate(value)
  %2105 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  %2106 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  %2107 = fmul fast float %2104, %2104
  %2108 = fmul fast float %2105, %2105
  %2109 = fmul fast float %2106, %2106
  %2110 = fsub fast float %2107, %1989
  %2111 = fsub fast float %2108, %1990
  %2112 = fsub fast float %2109, %1991
  %2113 = fmul fast float %2110, %2014
  %2114 = fmul fast float %2111, %2014
  %2115 = fmul fast float %2112, %2014
  %2116 = fadd fast float %2113, %1989
  %2117 = fadd fast float %2114, %1990
  %2118 = fadd fast float %2115, %1991
  %2119 = fadd fast float %2036, %2000
  %2120 = fsub fast float %2119, %2053
  %2121 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2122 = fsub fast float %2121, %2000
  %2123 = fmul fast float %2122, %2014
  %2124 = fadd fast float %2123, %2000
  br label %2178

; <label>:2125                                    ; preds = %2013
  %2126 = and i32 %2016, 134217728
  %2127 = icmp eq i32 %2126, 0
  br i1 %2127, label %2162, label %2128

; <label>:2128                                    ; preds = %2125
  %2129 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2130 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2131 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2132 = fadd fast float %2129, -5.000000e-01
  %2133 = fadd fast float %2130, -5.000000e-01
  %2134 = fadd fast float %2131, -5.000000e-01
  %2135 = fmul fast float %2132, %2014
  %2136 = fmul fast float %2133, %2014
  %2137 = fmul fast float %2134, %2014
  %2138 = fadd fast float %2135, 5.000000e-01
  %2139 = fadd fast float %2136, 5.000000e-01
  %2140 = fadd fast float %2137, 5.000000e-01
  %2141 = call float @dx.op.unary.f32(i32 24, float %1989)  ; Sqrt(value)
  %2142 = call float @dx.op.unary.f32(i32 24, float %1990)  ; Sqrt(value)
  %2143 = call float @dx.op.unary.f32(i32 24, float %1991)  ; Sqrt(value)
  %2144 = fmul fast float %2138, 2.000000e+00
  %2145 = fsub fast float 1.000000e+00, %2144
  %2146 = fmul fast float %2145, %2141
  %2147 = fadd fast float %2146, %2144
  %2148 = fmul fast float %2147, %2141
  %2149 = fmul fast float %2139, 2.000000e+00
  %2150 = fsub fast float 1.000000e+00, %2149
  %2151 = fmul fast float %2150, %2142
  %2152 = fadd fast float %2151, %2149
  %2153 = fmul fast float %2152, %2142
  %2154 = fmul fast float %2140, 2.000000e+00
  %2155 = fsub fast float 1.000000e+00, %2154
  %2156 = fmul fast float %2155, %2143
  %2157 = fadd fast float %2156, %2154
  %2158 = fmul fast float %2157, %2143
  %2159 = fmul fast float %2148, %2148
  %2160 = fmul fast float %2153, %2153
  %2161 = fmul fast float %2158, %2158
  br label %2178

; <label>:2162                                    ; preds = %2125
  %2163 = fmul fast float %366, %366
  %2164 = fmul fast float %370, %370
  %2165 = fmul fast float %374, %374
  %2166 = fadd fast float %2163, -1.000000e+00
  %2167 = fadd fast float %2164, -1.000000e+00
  %2168 = fadd fast float %2165, -1.000000e+00
  %2169 = fmul fast float %2014, %2166
  %2170 = fmul fast float %2014, %2167
  %2171 = fmul fast float %2014, %2168
  %2172 = fadd fast float %2169, 1.000000e+00
  %2173 = fadd fast float %2170, 1.000000e+00
  %2174 = fadd fast float %2171, 1.000000e+00
  %2175 = fmul fast float %2172, %1989
  %2176 = fmul fast float %2173, %1990
  %2177 = fmul fast float %2174, %1991
  br label %2178

; <label>:2178                                    ; preds = %2162, %2128, %2019, %1975
  %2179 = phi float [ %2124, %2019 ], [ %2000, %2128 ], [ %2000, %2162 ], [ 0x3FA23C0BE0000000, %1975 ]
  %2180 = phi float [ %2116, %2019 ], [ %2159, %2128 ], [ %2175, %2162 ], [ 1.000000e+00, %1975 ]
  %2181 = phi float [ %2117, %2019 ], [ %2160, %2128 ], [ %2176, %2162 ], [ 1.000000e+00, %1975 ]
  %2182 = phi float [ %2118, %2019 ], [ %2161, %2128 ], [ %2177, %2162 ], [ 1.000000e+00, %1975 ]
  %2183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.i32 %2183, 1
  %2185 = and i32 %2184, 1
  %2186 = icmp ne i32 %2185, 0
  %2187 = add i32 %56, 356
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %2189, 32
  %2191 = icmp ne i32 %2190, 0
  %2192 = and i1 %2186, %2191
  %2193 = select i1 %2192, float 1.000000e+00, float %2180
  %2194 = select i1 %2192, float 0x3FD3333340000000, float %2181
  %2195 = select i1 %2192, float 0x3FD3333340000000, float %2182
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 32
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2272, label %2200

; <label>:2200                                    ; preds = %2178
  %2201 = add i32 %56, 124
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %56, 384
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = add i32 %2206, 0
  %2208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2208, %dx.types.Handle %107, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2210 = extractvalue %dx.types.ResRet.f32 %2209, 0
  %2211 = extractvalue %dx.types.ResRet.f32 %2209, 1
  %2212 = extractvalue %dx.types.ResRet.f32 %2209, 2
  %2213 = extractvalue %dx.types.ResRet.f32 %2209, 3
  %2214 = and i32 %2203, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = lshr i32 %2203, 8
  %2217 = and i32 %2216, 255
  %2218 = uitofp i32 %2217 to float
  %2219 = lshr i32 %2203, 16
  %2220 = and i32 %2219, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = fmul fast float %2221, 0x3F70101000000000
  %2223 = fmul fast float %2210, %2215
  %2224 = fadd fast float %2223, %2218
  %2225 = fmul fast float %2224, 0x3F70101000000000
  %2226 = fadd fast float %2211, -5.000000e-01
  %2227 = fadd fast float %2213, -5.000000e-01
  %2228 = fmul fast float %2226, %2222
  %2229 = fmul fast float %2227, %2222
  %2230 = fadd fast float %2228, 5.000000e-01
  %2231 = fadd fast float %2229, 5.000000e-01
  %2232 = fmul fast float %2230, 2.000000e+00
  %2233 = fadd fast float %2232, -1.000000e+00
  %2234 = fmul fast float %2231, 2.000000e+00
  %2235 = fadd fast float %2234, -1.000000e+00
  %2236 = fadd fast float %2233, %2235
  %2237 = fmul fast float %2236, 5.000000e-01
  %2238 = fsub fast float %2233, %2235
  %2239 = fmul fast float %2238, 5.000000e-01
  %2240 = call float @dx.op.unary.f32(i32 6, float %2237)  ; FAbs(value)
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = call float @dx.op.unary.f32(i32 6, float %2239)  ; FAbs(value)
  %2243 = fsub fast float %2241, %2242
  %2244 = call float @dx.op.dot3.f32(i32 55, float %2237, float %2239, float %2243, float %2237, float %2239, float %2243)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = call float @dx.op.unary.f32(i32 25, float %2244)  ; Rsqrt(value)
  %2246 = fmul fast float %2237, %2245
  %2247 = fmul fast float %2239, %2245
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 67108864
  %2251 = icmp eq i32 %2250, 0
  br i1 %2251, label %2268, label %2252

; <label>:2252                                    ; preds = %2200
  %2253 = add i32 %56, 312
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 65535
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = and i32 %2259, 65535
  %2261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2260)  ; LegacyF16ToF32(value)
  %2262 = lshr i32 %2255, 16
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = fsub fast float %2225, %2263
  %2265 = fmul fast float %2264, %2257
  %2266 = fadd fast float %2265, %2261
  %2267 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  br label %2268

; <label>:2268                                    ; preds = %2252, %2200
  %2269 = phi float [ %2267, %2252 ], [ %2225, %2200 ]
  %2270 = call float @dx.op.dot2.f32(i32 54, float %2246, float %2247, float %1804, float %1805)  ; Dot2(ax,ay,bx,by)
  %2271 = call float @dx.op.dot2.f32(i32 54, float %2246, float %2247, float %1806, float %1807)  ; Dot2(ax,ay,bx,by)
  br label %2272

; <label>:2272                                    ; preds = %2268, %2178
  %2273 = phi float [ %2269, %2268 ], [ 0x3FD6666660000000, %2178 ]
  %2274 = phi float [ %2270, %2268 ], [ 0.000000e+00, %2178 ]
  %2275 = phi float [ %2271, %2268 ], [ 0.000000e+00, %2178 ]
  %2276 = phi float [ %2212, %2268 ], [ 1.000000e+00, %2178 ]
  %2277 = add i32 %56, 192
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = lshr i32 %2279, 22
  %2281 = shl nuw nsw i32 %2280, 5
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 64
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2320, label %2287

; <label>:2287                                    ; preds = %2272
  %2288 = add i32 %56, 400
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %2290, 0
  %2292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %2294, 131072
  %2296 = icmp eq i32 %2295, 0
  %2297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2292, %dx.types.Handle %107, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.ResRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.ResRet.f32 %2297, 2
  %2301 = fmul fast float %2298, %354
  %2302 = fmul fast float %2299, %357
  %2303 = fmul fast float %2300, %360
  br i1 %2296, label %2310, label %2304

; <label>:2304                                    ; preds = %2287
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = fmul fast float %2306, %2301
  %2308 = fmul fast float %2306, %2302
  %2309 = fmul fast float %2306, %2303
  br label %2310

; <label>:2310                                    ; preds = %2304, %2287
  %2311 = phi float [ %2307, %2304 ], [ %2301, %2287 ]
  %2312 = phi float [ %2308, %2304 ], [ %2302, %2287 ]
  %2313 = phi float [ %2309, %2304 ], [ %2303, %2287 ]
  %2314 = fmul fast float %2311, %2282
  %2315 = select i1 %253, float %2314, float %2311
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2312, float %2313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = select i1 %253, float 0.000000e+00, float %2311
  %2318 = select i1 %253, float %2316, float %2312
  %2319 = select i1 %253, float 0.000000e+00, float %2313
  br label %2320

; <label>:2320                                    ; preds = %2310, %2272
  %2321 = phi float [ %2317, %2310 ], [ 0.000000e+00, %2272 ]
  %2322 = phi float [ %2318, %2310 ], [ 0.000000e+00, %2272 ]
  %2323 = phi float [ %2319, %2310 ], [ 0.000000e+00, %2272 ]
  %2324 = add i32 %56, 128
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = and i32 %2326, 255
  %2328 = uitofp i32 %2327 to float
  %2329 = lshr i32 %2326, 8
  %2330 = and i32 %2329, 255
  %2331 = uitofp i32 %2330 to float
  %2332 = call float @dx.op.dot3.f32(i32 55, float %2193, float %2194, float %2195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2333 = fmul fast float %2331, %2332
  %2334 = fadd fast float %2333, %2328
  %2335 = fmul fast float %2334, 0x3F70101020000000
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  br i1 %1792, label %2337, label %2345

; <label>:2337                                    ; preds = %2320
  %2338 = fsub fast float 1.000000e+00, %1973
  %2339 = fmul fast float %2338, %1781
  %2340 = fmul fast float %2338, %1782
  %2341 = fmul fast float %2338, %1783
  %2342 = fmul fast float %2338, %1784
  %2343 = fmul fast float %2338, %1785
  %2344 = fmul fast float %2338, %1786
  br label %2345

; <label>:2345                                    ; preds = %2337, %2320
  %2346 = phi float [ %2339, %2337 ], [ %1781, %2320 ]
  %2347 = phi float [ %2340, %2337 ], [ %1782, %2320 ]
  %2348 = phi float [ %2341, %2337 ], [ %1783, %2320 ]
  %2349 = phi float [ %2342, %2337 ], [ %1784, %2320 ]
  %2350 = phi float [ %2343, %2337 ], [ %1785, %2320 ]
  %2351 = phi float [ %2344, %2337 ], [ %1786, %2320 ]
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 3
  %2355 = icmp eq i32 %2354, 3
  br i1 %2355, label %2434, label %2356

; <label>:2356                                    ; preds = %2345
  %2357 = and i32 %2353, 16
  %2358 = icmp ne i32 %2357, 0
  %2359 = select i1 %2358, float %1973, float 0.000000e+00
  %2360 = icmp eq i32 %2354, 0
  br i1 %2360, label %2361, label %2389

; <label>:2361                                    ; preds = %2356
  %2362 = and i32 %2353, 64
  %2363 = icmp ne i32 %2362, 0
  %2364 = select i1 %2363, float %1973, float 0.000000e+00
  %2365 = fsub fast float %2193, %2346
  %2366 = fsub fast float %2194, %2347
  %2367 = fsub fast float %2195, %2348
  %2368 = fmul fast float %2359, %2365
  %2369 = fmul fast float %2359, %2366
  %2370 = fmul fast float %2359, %2367
  %2371 = fadd fast float %2368, %2346
  %2372 = fadd fast float %2369, %2347
  %2373 = fadd fast float %2370, %2348
  %2374 = fsub fast float %2179, %1787
  %2375 = fmul fast float %2359, %2374
  %2376 = fadd fast float %2375, %1787
  %2377 = fsub fast float %2321, %2349
  %2378 = fsub fast float %2322, %2350
  %2379 = fsub fast float %2323, %2351
  %2380 = fmul fast float %2364, %2377
  %2381 = fmul fast float %2364, %2378
  %2382 = fmul fast float %2364, %2379
  %2383 = fadd fast float %2380, %2349
  %2384 = fadd fast float %2381, %2350
  %2385 = fadd fast float %2382, %2351
  %2386 = fsub fast float %2336, %1790
  %2387 = fmul fast float %2359, %2386
  %2388 = fadd fast float %2387, %1790
  br label %2434

; <label>:2389                                    ; preds = %2356
  %2390 = icmp eq i32 %2354, 1
  br i1 %2390, label %2391, label %2404

; <label>:2391                                    ; preds = %2389
  %2392 = fadd fast float %2193, -1.000000e+00
  %2393 = fadd fast float %2194, -1.000000e+00
  %2394 = fadd fast float %2195, -1.000000e+00
  %2395 = fmul fast float %2359, %2392
  %2396 = fmul fast float %2359, %2393
  %2397 = fmul fast float %2359, %2394
  %2398 = fadd fast float %2395, 1.000000e+00
  %2399 = fadd fast float %2396, 1.000000e+00
  %2400 = fadd fast float %2397, 1.000000e+00
  %2401 = fmul fast float %2398, %2346
  %2402 = fmul fast float %2399, %2347
  %2403 = fmul fast float %2400, %2348
  br label %2434

; <label>:2404                                    ; preds = %2389
  %2405 = icmp eq i32 %2354, 2
  br i1 %2405, label %2406, label %2434

; <label>:2406                                    ; preds = %2404
  %2407 = call float @dx.op.unary.f32(i32 24, float %2193)  ; Sqrt(value)
  %2408 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2409 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2410 = fadd fast float %2407, -5.000000e-01
  %2411 = fadd fast float %2408, -5.000000e-01
  %2412 = fadd fast float %2409, -5.000000e-01
  %2413 = fmul fast float %2410, %2359
  %2414 = fmul fast float %2411, %2359
  %2415 = fmul fast float %2412, %2359
  %2416 = fadd fast float %2413, 5.000000e-01
  %2417 = fadd fast float %2414, 5.000000e-01
  %2418 = fadd fast float %2415, 5.000000e-01
  %2419 = fmul fast float %2416, 2.000000e+00
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = fmul fast float %2420, %2346
  %2422 = fadd fast float %2421, %2419
  %2423 = fmul fast float %2422, %2346
  %2424 = fmul fast float %2417, 2.000000e+00
  %2425 = fsub fast float 1.000000e+00, %2424
  %2426 = fmul fast float %2425, %2347
  %2427 = fadd fast float %2426, %2424
  %2428 = fmul fast float %2427, %2347
  %2429 = fmul fast float %2418, 2.000000e+00
  %2430 = fsub fast float 1.000000e+00, %2429
  %2431 = fmul fast float %2430, %2348
  %2432 = fadd fast float %2431, %2429
  %2433 = fmul fast float %2432, %2348
  br label %2434

; <label>:2434                                    ; preds = %2406, %2404, %2391, %2361, %2345
  %2435 = phi float [ %2346, %2345 ], [ %2423, %2406 ], [ %2346, %2404 ], [ %2401, %2391 ], [ %2371, %2361 ]
  %2436 = phi float [ %2347, %2345 ], [ %2428, %2406 ], [ %2347, %2404 ], [ %2402, %2391 ], [ %2372, %2361 ]
  %2437 = phi float [ %2348, %2345 ], [ %2433, %2406 ], [ %2348, %2404 ], [ %2403, %2391 ], [ %2373, %2361 ]
  %2438 = phi float [ %2349, %2345 ], [ %2349, %2406 ], [ %2349, %2404 ], [ %2349, %2391 ], [ %2383, %2361 ]
  %2439 = phi float [ %2350, %2345 ], [ %2350, %2406 ], [ %2350, %2404 ], [ %2350, %2391 ], [ %2384, %2361 ]
  %2440 = phi float [ %2351, %2345 ], [ %2351, %2406 ], [ %2351, %2404 ], [ %2351, %2391 ], [ %2385, %2361 ]
  %2441 = phi float [ %1787, %2345 ], [ %1787, %2406 ], [ %1787, %2404 ], [ %1787, %2391 ], [ %2376, %2361 ]
  %2442 = phi float [ %1790, %2345 ], [ %1790, %2406 ], [ %1790, %2404 ], [ %1790, %2391 ], [ %2388, %2361 ]
  %2443 = and i32 %2353, 12
  %2444 = icmp eq i32 %2443, 12
  br i1 %2444, label %2517, label %2445

; <label>:2445                                    ; preds = %2434
  %2446 = and i32 %2353, 2097184
  %2447 = icmp eq i32 %2446, 2097184
  %2448 = select i1 %2447, float %1973, float 0.000000e+00
  %2449 = and i32 %2353, 4194336
  %2450 = icmp eq i32 %2449, 4194336
  %2451 = select i1 %2450, float %1973, float 0.000000e+00
  %2452 = and i32 %2353, 8388640
  %2453 = icmp eq i32 %2452, 8388640
  %2454 = select i1 %2453, float %1973, float 0.000000e+00
  %2455 = icmp eq i32 %2443, 0
  br i1 %2455, label %2456, label %2469

; <label>:2456                                    ; preds = %2445
  %2457 = fsub fast float %2274, %1779
  %2458 = fsub fast float %2275, %1780
  %2459 = fmul fast float %2448, %2457
  %2460 = fmul fast float %2448, %2458
  %2461 = fadd fast float %2459, %1779
  %2462 = fadd fast float %2460, %1780
  %2463 = fsub fast float %2276, %1789
  %2464 = fmul fast float %2451, %2463
  %2465 = fadd fast float %2464, %1789
  %2466 = fsub fast float %2273, %1788
  %2467 = fmul fast float %2454, %2466
  %2468 = fadd fast float %2467, %1788
  br label %2517

; <label>:2469                                    ; preds = %2445
  %2470 = icmp eq i32 %2443, 4
  br i1 %2470, label %2471, label %2503

; <label>:2471                                    ; preds = %2469
  %2472 = fmul fast float %2448, %2274
  %2473 = fmul fast float %2448, %2275
  %2474 = fadd fast float %2472, %1779
  %2475 = fadd fast float %2473, %1780
  %2476 = call float @dx.op.binary.f32(i32 36, float %1789, float %2276)  ; FMin(a,b)
  %2477 = fsub fast float %2476, %1789
  %2478 = fmul fast float %2477, %2451
  %2479 = fadd fast float %2478, %1789
  %2480 = fadd fast float %2273, %1788
  %2481 = fmul fast float %2480, 0x3FF337FAE0000000
  %2482 = fmul fast float %1788, %1788
  %2483 = fmul fast float %2273, %2273
  %2484 = fadd fast float %2483, %2482
  %2485 = fmul fast float %2484, 0x3FE5152B00000000
  %2486 = fmul fast float %1788, 0xBFCC1F85E0000000
  %2487 = fmul fast float %2486, %2273
  %2488 = fadd fast float %2487, 0xBFE1363700000000
  %2489 = fadd fast float %2488, %2481
  %2490 = fsub fast float %2489, %2485
  %2491 = fmul fast float %2480, 0x3FBA6F0D00000000
  %2492 = fmul fast float %2484, 0x3FD0432880000000
  %2493 = fmul fast float %1788, 0xBFEF110800000000
  %2494 = fmul fast float %2493, %2273
  %2495 = fadd fast float %2494, 1.000000e+00
  %2496 = fsub fast float %2495, %2491
  %2497 = fadd fast float %2496, %2492
  %2498 = fdiv fast float %2490, %2497
  %2499 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  %2500 = fsub fast float %2499, %1788
  %2501 = fmul fast float %2500, %2454
  %2502 = fadd fast float %2501, %1788
  br label %2517

; <label>:2503                                    ; preds = %2469
  %2504 = icmp eq i32 %2443, 8
  br i1 %2504, label %2505, label %2517

; <label>:2505                                    ; preds = %2503
  %2506 = fmul fast float %2448, %2274
  %2507 = fmul fast float %2448, %2275
  %2508 = fadd fast float %2506, %1779
  %2509 = fadd fast float %2507, %1780
  %2510 = call float @dx.op.binary.f32(i32 36, float %1789, float %2276)  ; FMin(a,b)
  %2511 = fsub fast float %2510, %1789
  %2512 = fmul fast float %2511, %2451
  %2513 = fadd fast float %2512, %1789
  %2514 = fsub fast float %2273, %1788
  %2515 = fmul fast float %2454, %2514
  %2516 = fadd fast float %2515, %1788
  br label %2517

; <label>:2517                                    ; preds = %2505, %2503, %2471, %2456, %2434, %1972, %1791, %1778
  %2518 = phi float [ %1779, %2434 ], [ %1779, %1972 ], [ %1779, %1778 ], [ %2508, %2505 ], [ %1779, %2503 ], [ %2474, %2471 ], [ %2461, %2456 ], [ %1779, %1791 ]
  %2519 = phi float [ %1780, %2434 ], [ %1780, %1972 ], [ %1780, %1778 ], [ %2509, %2505 ], [ %1780, %2503 ], [ %2475, %2471 ], [ %2462, %2456 ], [ %1780, %1791 ]
  %2520 = phi float [ %2435, %2434 ], [ %1781, %1972 ], [ %1781, %1778 ], [ %2435, %2505 ], [ %2435, %2503 ], [ %2435, %2471 ], [ %2435, %2456 ], [ %1781, %1791 ]
  %2521 = phi float [ %2436, %2434 ], [ %1782, %1972 ], [ %1782, %1778 ], [ %2436, %2505 ], [ %2436, %2503 ], [ %2436, %2471 ], [ %2436, %2456 ], [ %1782, %1791 ]
  %2522 = phi float [ %2437, %2434 ], [ %1783, %1972 ], [ %1783, %1778 ], [ %2437, %2505 ], [ %2437, %2503 ], [ %2437, %2471 ], [ %2437, %2456 ], [ %1783, %1791 ]
  %2523 = phi float [ %2438, %2434 ], [ %1784, %1972 ], [ %1784, %1778 ], [ %2438, %2505 ], [ %2438, %2503 ], [ %2438, %2471 ], [ %2438, %2456 ], [ %1784, %1791 ]
  %2524 = phi float [ %2439, %2434 ], [ %1785, %1972 ], [ %1785, %1778 ], [ %2439, %2505 ], [ %2439, %2503 ], [ %2439, %2471 ], [ %2439, %2456 ], [ %1785, %1791 ]
  %2525 = phi float [ %2440, %2434 ], [ %1786, %1972 ], [ %1786, %1778 ], [ %2440, %2505 ], [ %2440, %2503 ], [ %2440, %2471 ], [ %2440, %2456 ], [ %1786, %1791 ]
  %2526 = phi float [ %2441, %2434 ], [ %1787, %1972 ], [ %1787, %1778 ], [ %2441, %2505 ], [ %2441, %2503 ], [ %2441, %2471 ], [ %2441, %2456 ], [ %1787, %1791 ]
  %2527 = phi float [ %1788, %2434 ], [ %1788, %1972 ], [ %1788, %1778 ], [ %2516, %2505 ], [ %1788, %2503 ], [ %2502, %2471 ], [ %2468, %2456 ], [ %1788, %1791 ]
  %2528 = phi float [ %1789, %2434 ], [ %1789, %1972 ], [ %1789, %1778 ], [ %2513, %2505 ], [ %1789, %2503 ], [ %2479, %2471 ], [ %2465, %2456 ], [ %1789, %1791 ]
  %2529 = phi float [ %2442, %2434 ], [ %1790, %1972 ], [ %1790, %1778 ], [ %2442, %2505 ], [ %2442, %2503 ], [ %2442, %2471 ], [ %2442, %2456 ], [ %1790, %1791 ]
  br i1 %441, label %3256, label %2530

; <label>:2530                                    ; preds = %2517
  %2531 = icmp ult i32 %495, 4
  %2532 = add i32 %56, 72
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %56, 76
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = or i32 %2537, %2534
  %2539 = icmp eq i32 %2538, 0
  br i1 %2539, label %3256, label %2540

; <label>:2540                                    ; preds = %2530
  %2541 = and i32 %2534, 262144
  %2542 = icmp ne i32 %2541, 0
  %2543 = select i1 %2542, float %61, float 1.000000e+00
  %2544 = select i1 %2542, float %62, float 0.000000e+00
  %2545 = select i1 %2542, float %63, float 0.000000e+00
  %2546 = select i1 %2542, float %64, float 1.000000e+00
  %2547 = select i1 %2542, float %65, float %93
  %2548 = select i1 %2542, float %66, float %94
  %2549 = add i32 %56, 332
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = lshr i32 %2551, 16
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = fmul fast float %2553, 0x3F50624DE0000000
  %2555 = add i32 %56, 136
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = lshr i32 %2557, 16
  %2559 = and i32 %2558, 255
  %2560 = lshr i32 %2557, 24
  %2561 = add i32 %56, 340
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 65535
  %2565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2564)  ; LegacyF16ToF32(value)
  %2566 = lshr i32 %2563, 16
  %2567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2566)  ; LegacyF16ToF32(value)
  %2568 = add i32 %56, 80
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = lshr i32 %2570, 22
  %2572 = shl nuw nsw i32 %2571, 5
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = shl i32 %2570, 4
  %2575 = and i32 %2574, 32752
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = lshr i32 %2570, 7
  %2578 = and i32 %2577, 32752
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 3
  %2582 = fmul fast float %2581, 1.000000e+03
  %2583 = fmul fast float %431, %2582
  %2584 = call float @dx.op.unary.f32(i32 22, float %2583)  ; Frc(value)
  %2585 = fadd fast float %2584, %421
  %2586 = fmul fast float %432, %2582
  %2587 = call float @dx.op.unary.f32(i32 22, float %2586)  ; Frc(value)
  %2588 = fadd fast float %2587, %423
  %2589 = fmul fast float %2554, %2582
  %2590 = call float @dx.op.unary.f32(i32 22, float %2589)  ; Frc(value)
  %2591 = fmul fast float %2590, 0x401921FB60000000
  %2592 = fadd fast float %2591, %2573
  %2593 = call float @dx.op.unary.f32(i32 13, float %2592)  ; Sin(value)
  %2594 = call float @dx.op.unary.f32(i32 12, float %2592)  ; Cos(value)
  %2595 = fsub fast float -0.000000e+00, %2593
  %2596 = fadd fast float %2547, -5.000000e-01
  %2597 = fadd fast float %2548, -5.000000e-01
  %2598 = fmul fast float %2565, %2596
  %2599 = fmul fast float %2567, %2597
  %2600 = fadd fast float %2598, 5.000000e-01
  %2601 = fadd fast float %2599, 5.000000e-01
  %2602 = fmul fast float %2576, %2600
  %2603 = fmul fast float %2579, %2601
  %2604 = fmul fast float %2594, %2602
  %2605 = call float @dx.op.tertiary.f32(i32 46, float %2595, float %2603, float %2604)  ; FMad(a,b,c)
  %2606 = fmul fast float %2593, %2602
  %2607 = call float @dx.op.tertiary.f32(i32 46, float %2594, float %2603, float %2606)  ; FMad(a,b,c)
  %2608 = fadd fast float %2585, %2605
  %2609 = fadd fast float %2588, %2607
  %2610 = icmp ugt i32 %2559, 1
  %2611 = icmp ugt i32 %2557, 33554431
  %2612 = or i1 %2611, %2610
  br i1 %2612, label %2613, label %2638

; <label>:2613                                    ; preds = %2540
  %2614 = add i32 %56, 276
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = lshr i32 %2616, 16
  %2618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2617)  ; LegacyF16ToF32(value)
  %2619 = fmul fast float %2581, %2618
  %2620 = call float @dx.op.unary.f32(i32 22, float %2619)  ; Frc(value)
  %2621 = mul nuw nsw i32 %2559, %2560
  %2622 = uitofp i32 %2621 to float
  %2623 = fmul fast float %2620, %2622
  %2624 = call float @dx.op.unary.f32(i32 27, float %2623)  ; Round_ni(value)
  %2625 = fptoui float %2624 to i32
  %2626 = urem i32 %2625, %2559
  %2627 = udiv i32 %2625, %2560
  %2628 = call float @dx.op.unary.f32(i32 22, float %2608)  ; Frc(value)
  %2629 = call float @dx.op.unary.f32(i32 22, float %2609)  ; Frc(value)
  %2630 = uitofp i32 %2626 to float
  %2631 = uitofp i32 %2627 to float
  %2632 = fadd fast float %2628, %2630
  %2633 = fadd fast float %2629, %2631
  %2634 = uitofp i32 %2559 to float
  %2635 = uitofp i32 %2560 to float
  %2636 = fdiv fast float %2632, %2634
  %2637 = fdiv fast float %2633, %2635
  br label %2638

; <label>:2638                                    ; preds = %2613, %2540
  %2639 = phi float [ %2636, %2613 ], [ %2608, %2540 ]
  %2640 = phi float [ %2637, %2613 ], [ %2609, %2540 ]
  %2641 = and i32 %2534, 256
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2689, label %2643

; <label>:2643                                    ; preds = %2638
  %2644 = add i32 %56, 436
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = add i32 %2646, 0
  %2648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2648, %dx.types.Handle %108, float %2639, float %2640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = add i32 %56, 148
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = shl i32 %2653, 4
  %2655 = and i32 %2654, 32752
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = lshr i32 %2653, 7
  %2658 = and i32 %2657, 32752
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = fsub fast float 1.000000e+00, %490
  %2661 = call float @dx.op.binary.f32(i32 35, float %2660, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2662 = bitcast float %490 to i32
  %2663 = sitofp i32 %2662 to float
  %2664 = fadd fast float %2663, 0xC1CFBF8940000000
  %2665 = fmul fast float %2659, %2664
  %2666 = fadd fast float %2665, 0x41CFBF8940000000
  %2667 = fptosi float %2666 to i32
  %2668 = bitcast i32 %2667 to float
  %2669 = bitcast float %2661 to i32
  %2670 = sitofp i32 %2669 to float
  %2671 = fadd fast float %2670, 0xC1CFBF8940000000
  %2672 = fmul fast float %2671, %2659
  %2673 = fadd fast float %2672, 0x41CFBF8940000000
  %2674 = fptosi float %2673 to i32
  %2675 = bitcast i32 %2674 to float
  %2676 = fmul fast float %2668, %2656
  %2677 = fmul fast float %2675, %2656
  %2678 = fsub fast float %2661, %2676
  %2679 = fadd fast float %2677, %2661
  %2680 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2681 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2682 = fsub fast float %2650, %2680
  %2683 = fsub fast float %2681, %2680
  %2684 = bitcast float %2683 to i32
  %2685 = sub nsw i32 2129859010, %2684
  %2686 = bitcast i32 %2685 to float
  %2687 = fmul fast float %2686, %2682
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  br label %2689

; <label>:2689                                    ; preds = %2643, %2638
  %2690 = phi float [ %2688, %2643 ], [ %490, %2638 ]
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 128
  %2694 = icmp eq i32 %2693, 0
  br i1 %2694, label %2711, label %2695

; <label>:2695                                    ; preds = %2689
  %2696 = add i32 %56, 420
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = add i32 %2698, 0
  %2700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2700, %dx.types.Handle %108, float %2639, float %2640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = and i32 %2704, 524288
  %2706 = icmp ne i32 %2705, 0
  %2707 = fcmp fast ogt float %2702, 0x3FE0101020000000
  %2708 = select i1 %2707, float 1.000000e+00, float 0.000000e+00
  %2709 = select i1 %2706, float %2708, float %2702
  %2710 = fmul fast float %2709, %2690
  br label %2711

; <label>:2711                                    ; preds = %2695, %2689
  %2712 = phi float [ %2710, %2695 ], [ %2690, %2689 ]
  %2713 = fcmp fast ult float %2712, 0x3F70101020000000
  br i1 %2713, label %3256, label %2714

; <label>:2714                                    ; preds = %2711
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = and i32 %2716, 16
  %2718 = icmp eq i32 %2717, 0
  br i1 %2718, label %2917, label %2719

; <label>:2719                                    ; preds = %2714
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = add i32 %56, 372
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = add i32 %2724, 0
  %2726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2726, %dx.types.Handle %107, float %2639, float %2640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.ResRet.f32 %2727, 2
  %2731 = extractvalue %dx.types.ResRet.f32 %2727, 3
  %2732 = and i32 %2721, 255
  %2733 = uitofp i32 %2732 to float
  %2734 = lshr i32 %2721, 8
  %2735 = and i32 %2734, 255
  %2736 = uitofp i32 %2735 to float
  %2737 = fmul fast float %2731, %2733
  %2738 = fadd fast float %2737, %2736
  %2739 = fmul fast float %2738, 0x3F70101000000000
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 512
  %2743 = icmp eq i32 %2742, 0
  br i1 %2743, label %2752, label %2744

; <label>:2744                                    ; preds = %2719
  %2745 = add i32 %56, 452
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = add i32 %2747, 0
  %2749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2750 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2749, %dx.types.Handle %108, float %2639, float %2640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  br label %2752

; <label>:2752                                    ; preds = %2744, %2719
  %2753 = phi float [ %2751, %2744 ], [ 1.000000e+00, %2719 ]
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = and i32 %2755, 33554432
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2864, label %2758

; <label>:2758                                    ; preds = %2752
  %2759 = add i32 %56, 272
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 65535
  %2763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2762)  ; LegacyF16ToF32(value)
  %2764 = lshr i32 %2761, 16
  %2765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2764)  ; LegacyF16ToF32(value)
  %2766 = add i32 %56, 276
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = and i32 %2768, 65535
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = lshr i32 %2772, 24
  %2774 = uitofp i32 %2773 to float
  %2775 = fmul fast float %2774, 0x3F70101020000000
  %2776 = and i32 %2772, 255
  %2777 = uitofp i32 %2776 to float
  %2778 = fmul fast float %2777, 0x3F70101020000000
  %2779 = lshr i32 %2772, 8
  %2780 = and i32 %2779, 255
  %2781 = uitofp i32 %2780 to float
  %2782 = fmul fast float %2781, 0x3F70101020000000
  %2783 = lshr i32 %2772, 16
  %2784 = and i32 %2783, 255
  %2785 = uitofp i32 %2784 to float
  %2786 = fmul fast float %2785, 0x3F70101020000000
  %2787 = add i32 %56, 268
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = lshr i32 %2789, 24
  %2791 = uitofp i32 %2790 to float
  %2792 = fmul fast float %2791, 0x3F70101020000000
  %2793 = and i32 %2789, 255
  %2794 = uitofp i32 %2793 to float
  %2795 = fmul fast float %2794, 0x3F70101020000000
  %2796 = lshr i32 %2789, 8
  %2797 = and i32 %2796, 255
  %2798 = uitofp i32 %2797 to float
  %2799 = fmul fast float %2798, 0x3F70101020000000
  %2800 = lshr i32 %2789, 16
  %2801 = and i32 %2800, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = fmul fast float %2802, 0x3F70101020000000
  %2804 = bitcast float %2728 to i32
  %2805 = ashr i32 %2804, 1
  %2806 = sub nsw i32 1597463174, %2805
  %2807 = bitcast i32 %2806 to float
  %2808 = fmul fast float %2728, 5.000000e-01
  %2809 = fmul fast float %2807, %2807
  %2810 = fmul fast float %2809, %2808
  %2811 = fsub fast float 1.500000e+00, %2810
  %2812 = fmul fast float %2807, %2728
  %2813 = fmul fast float %2812, %2811
  %2814 = bitcast float %2729 to i32
  %2815 = ashr i32 %2814, 1
  %2816 = sub nsw i32 1597463174, %2815
  %2817 = bitcast i32 %2816 to float
  %2818 = fmul fast float %2729, 5.000000e-01
  %2819 = fmul fast float %2817, %2817
  %2820 = fmul fast float %2819, %2818
  %2821 = fsub fast float 1.500000e+00, %2820
  %2822 = fmul fast float %2817, %2729
  %2823 = fmul fast float %2822, %2821
  %2824 = bitcast float %2730 to i32
  %2825 = ashr i32 %2824, 1
  %2826 = sub nsw i32 1597463174, %2825
  %2827 = bitcast i32 %2826 to float
  %2828 = fmul fast float %2730, 5.000000e-01
  %2829 = fmul fast float %2827, %2827
  %2830 = fmul fast float %2829, %2828
  %2831 = fsub fast float 1.500000e+00, %2830
  %2832 = fmul fast float %2827, %2730
  %2833 = fmul fast float %2832, %2831
  %2834 = fsub fast float %2813, %2795
  %2835 = fsub fast float %2823, %2799
  %2836 = fsub fast float %2833, %2803
  %2837 = fmul fast float %2834, %2763
  %2838 = fmul fast float %2835, %2765
  %2839 = fmul fast float %2836, %2770
  %2840 = fadd fast float %2837, %2778
  %2841 = fadd fast float %2838, %2782
  %2842 = fadd fast float %2839, %2786
  %2843 = call float @dx.op.unary.f32(i32 7, float %2840)  ; Saturate(value)
  %2844 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  %2845 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2846 = fmul fast float %2843, %2843
  %2847 = fmul fast float %2844, %2844
  %2848 = fmul fast float %2845, %2845
  %2849 = fsub fast float %2846, %2728
  %2850 = fsub fast float %2847, %2729
  %2851 = fsub fast float %2848, %2730
  %2852 = fmul fast float %2849, %2753
  %2853 = fmul fast float %2850, %2753
  %2854 = fmul fast float %2851, %2753
  %2855 = fadd fast float %2852, %2728
  %2856 = fadd fast float %2853, %2729
  %2857 = fadd fast float %2854, %2730
  %2858 = fadd fast float %2775, %2739
  %2859 = fsub fast float %2858, %2792
  %2860 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2861 = fsub fast float %2860, %2739
  %2862 = fmul fast float %2861, %2753
  %2863 = fadd fast float %2862, %2739
  br label %2917

; <label>:2864                                    ; preds = %2752
  %2865 = and i32 %2755, 134217728
  %2866 = icmp eq i32 %2865, 0
  br i1 %2866, label %2901, label %2867

; <label>:2867                                    ; preds = %2864
  %2868 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %2869 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %2870 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %2871 = fadd fast float %2868, -5.000000e-01
  %2872 = fadd fast float %2869, -5.000000e-01
  %2873 = fadd fast float %2870, -5.000000e-01
  %2874 = fmul fast float %2871, %2753
  %2875 = fmul fast float %2872, %2753
  %2876 = fmul fast float %2873, %2753
  %2877 = fadd fast float %2874, 5.000000e-01
  %2878 = fadd fast float %2875, 5.000000e-01
  %2879 = fadd fast float %2876, 5.000000e-01
  %2880 = call float @dx.op.unary.f32(i32 24, float %2728)  ; Sqrt(value)
  %2881 = call float @dx.op.unary.f32(i32 24, float %2729)  ; Sqrt(value)
  %2882 = call float @dx.op.unary.f32(i32 24, float %2730)  ; Sqrt(value)
  %2883 = fmul fast float %2877, 2.000000e+00
  %2884 = fsub fast float 1.000000e+00, %2883
  %2885 = fmul fast float %2884, %2880
  %2886 = fadd fast float %2885, %2883
  %2887 = fmul fast float %2886, %2880
  %2888 = fmul fast float %2878, 2.000000e+00
  %2889 = fsub fast float 1.000000e+00, %2888
  %2890 = fmul fast float %2889, %2881
  %2891 = fadd fast float %2890, %2888
  %2892 = fmul fast float %2891, %2881
  %2893 = fmul fast float %2879, 2.000000e+00
  %2894 = fsub fast float 1.000000e+00, %2893
  %2895 = fmul fast float %2894, %2882
  %2896 = fadd fast float %2895, %2893
  %2897 = fmul fast float %2896, %2882
  %2898 = fmul fast float %2887, %2887
  %2899 = fmul fast float %2892, %2892
  %2900 = fmul fast float %2897, %2897
  br label %2917

; <label>:2901                                    ; preds = %2864
  %2902 = fmul fast float %408, %408
  %2903 = fmul fast float %412, %412
  %2904 = fmul fast float %416, %416
  %2905 = fadd fast float %2902, -1.000000e+00
  %2906 = fadd fast float %2903, -1.000000e+00
  %2907 = fadd fast float %2904, -1.000000e+00
  %2908 = fmul fast float %2753, %2905
  %2909 = fmul fast float %2753, %2906
  %2910 = fmul fast float %2753, %2907
  %2911 = fadd fast float %2908, 1.000000e+00
  %2912 = fadd fast float %2909, 1.000000e+00
  %2913 = fadd fast float %2910, 1.000000e+00
  %2914 = fmul fast float %2911, %2728
  %2915 = fmul fast float %2912, %2729
  %2916 = fmul fast float %2913, %2730
  br label %2917

; <label>:2917                                    ; preds = %2901, %2867, %2758, %2714
  %2918 = phi float [ %2863, %2758 ], [ %2739, %2867 ], [ %2739, %2901 ], [ 0x3FA23C0BE0000000, %2714 ]
  %2919 = phi float [ %2855, %2758 ], [ %2898, %2867 ], [ %2914, %2901 ], [ 1.000000e+00, %2714 ]
  %2920 = phi float [ %2856, %2758 ], [ %2899, %2867 ], [ %2915, %2901 ], [ 1.000000e+00, %2714 ]
  %2921 = phi float [ %2857, %2758 ], [ %2900, %2867 ], [ %2916, %2901 ], [ 1.000000e+00, %2714 ]
  %2922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.i32 %2922, 1
  %2924 = and i32 %2923, 1
  %2925 = icmp ne i32 %2924, 0
  %2926 = add i32 %56, 356
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %2928, 32
  %2930 = icmp ne i32 %2929, 0
  %2931 = and i1 %2925, %2930
  %2932 = select i1 %2931, float 1.000000e+00, float %2919
  %2933 = select i1 %2931, float 0x3FD3333340000000, float %2920
  %2934 = select i1 %2931, float 0x3FD3333340000000, float %2921
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 32
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %3011, label %2939

; <label>:2939                                    ; preds = %2917
  %2940 = add i32 %56, 140
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = add i32 %56, 388
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = add i32 %2945, 0
  %2947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2946, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2948 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2947, %dx.types.Handle %107, float %2639, float %2640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2949 = extractvalue %dx.types.ResRet.f32 %2948, 0
  %2950 = extractvalue %dx.types.ResRet.f32 %2948, 1
  %2951 = extractvalue %dx.types.ResRet.f32 %2948, 2
  %2952 = extractvalue %dx.types.ResRet.f32 %2948, 3
  %2953 = and i32 %2942, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = lshr i32 %2942, 8
  %2956 = and i32 %2955, 255
  %2957 = uitofp i32 %2956 to float
  %2958 = lshr i32 %2942, 16
  %2959 = and i32 %2958, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101000000000
  %2962 = fmul fast float %2949, %2954
  %2963 = fadd fast float %2962, %2957
  %2964 = fmul fast float %2963, 0x3F70101000000000
  %2965 = fadd fast float %2950, -5.000000e-01
  %2966 = fadd fast float %2952, -5.000000e-01
  %2967 = fmul fast float %2965, %2961
  %2968 = fmul fast float %2966, %2961
  %2969 = fadd fast float %2967, 5.000000e-01
  %2970 = fadd fast float %2968, 5.000000e-01
  %2971 = fmul fast float %2969, 2.000000e+00
  %2972 = fadd fast float %2971, -1.000000e+00
  %2973 = fmul fast float %2970, 2.000000e+00
  %2974 = fadd fast float %2973, -1.000000e+00
  %2975 = fadd fast float %2972, %2974
  %2976 = fmul fast float %2975, 5.000000e-01
  %2977 = fsub fast float %2972, %2974
  %2978 = fmul fast float %2977, 5.000000e-01
  %2979 = call float @dx.op.unary.f32(i32 6, float %2976)  ; FAbs(value)
  %2980 = fsub fast float 1.000000e+00, %2979
  %2981 = call float @dx.op.unary.f32(i32 6, float %2978)  ; FAbs(value)
  %2982 = fsub fast float %2980, %2981
  %2983 = call float @dx.op.dot3.f32(i32 55, float %2976, float %2978, float %2982, float %2976, float %2978, float %2982)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = call float @dx.op.unary.f32(i32 25, float %2983)  ; Rsqrt(value)
  %2985 = fmul fast float %2976, %2984
  %2986 = fmul fast float %2978, %2984
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = and i32 %2988, 67108864
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %3007, label %2991

; <label>:2991                                    ; preds = %2939
  %2992 = add i32 %56, 328
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 65535
  %2996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2995)  ; LegacyF16ToF32(value)
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = and i32 %2998, 65535
  %3000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2999)  ; LegacyF16ToF32(value)
  %3001 = lshr i32 %2994, 16
  %3002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3001)  ; LegacyF16ToF32(value)
  %3003 = fsub fast float %2964, %3002
  %3004 = fmul fast float %3003, %2996
  %3005 = fadd fast float %3004, %3000
  %3006 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  br label %3007

; <label>:3007                                    ; preds = %2991, %2939
  %3008 = phi float [ %3006, %2991 ], [ %2964, %2939 ]
  %3009 = call float @dx.op.dot2.f32(i32 54, float %2985, float %2986, float %2543, float %2544)  ; Dot2(ax,ay,bx,by)
  %3010 = call float @dx.op.dot2.f32(i32 54, float %2985, float %2986, float %2545, float %2546)  ; Dot2(ax,ay,bx,by)
  br label %3011

; <label>:3011                                    ; preds = %3007, %2917
  %3012 = phi float [ %3008, %3007 ], [ 0x3FD6666660000000, %2917 ]
  %3013 = phi float [ %3009, %3007 ], [ 0.000000e+00, %2917 ]
  %3014 = phi float [ %3010, %3007 ], [ 0.000000e+00, %2917 ]
  %3015 = phi float [ %2951, %3007 ], [ 1.000000e+00, %2917 ]
  %3016 = add i32 %56, 208
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3016, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = lshr i32 %3018, 22
  %3020 = shl nuw nsw i32 %3019, 5
  %3021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3020)  ; LegacyF16ToF32(value)
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 64
  %3025 = icmp eq i32 %3024, 0
  br i1 %3025, label %3059, label %3026

; <label>:3026                                    ; preds = %3011
  %3027 = add i32 %56, 404
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = add i32 %3029, 0
  %3031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = and i32 %3033, 131072
  %3035 = icmp eq i32 %3034, 0
  %3036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3031, %dx.types.Handle %107, float %2639, float %2640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.ResRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.ResRet.f32 %3036, 2
  %3040 = fmul fast float %3037, %396
  %3041 = fmul fast float %3038, %399
  %3042 = fmul fast float %3039, %402
  br i1 %3035, label %3049, label %3043

; <label>:3043                                    ; preds = %3026
  %3044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3045 = extractvalue %dx.types.CBufRet.f32 %3044, 0
  %3046 = fmul fast float %3045, %3040
  %3047 = fmul fast float %3045, %3041
  %3048 = fmul fast float %3045, %3042
  br label %3049

; <label>:3049                                    ; preds = %3043, %3026
  %3050 = phi float [ %3046, %3043 ], [ %3040, %3026 ]
  %3051 = phi float [ %3047, %3043 ], [ %3041, %3026 ]
  %3052 = phi float [ %3048, %3043 ], [ %3042, %3026 ]
  %3053 = fmul fast float %3050, %3021
  %3054 = select i1 %253, float %3053, float %3050
  %3055 = call float @dx.op.dot3.f32(i32 55, float %3054, float %3051, float %3052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3056 = select i1 %253, float 0.000000e+00, float %3050
  %3057 = select i1 %253, float %3055, float %3051
  %3058 = select i1 %253, float 0.000000e+00, float %3052
  br label %3059

; <label>:3059                                    ; preds = %3049, %3011
  %3060 = phi float [ %3056, %3049 ], [ 0.000000e+00, %3011 ]
  %3061 = phi float [ %3057, %3049 ], [ 0.000000e+00, %3011 ]
  %3062 = phi float [ %3058, %3049 ], [ 0.000000e+00, %3011 ]
  %3063 = add i32 %56, 144
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = and i32 %3065, 255
  %3067 = uitofp i32 %3066 to float
  %3068 = lshr i32 %3065, 8
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = call float @dx.op.dot3.f32(i32 55, float %2932, float %2933, float %2934, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3072 = fmul fast float %3070, %3071
  %3073 = fadd fast float %3072, %3067
  %3074 = fmul fast float %3073, 0x3F70101020000000
  %3075 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  br i1 %2531, label %3076, label %3084

; <label>:3076                                    ; preds = %3059
  %3077 = fsub fast float 1.000000e+00, %2712
  %3078 = fmul fast float %3077, %2520
  %3079 = fmul fast float %3077, %2521
  %3080 = fmul fast float %3077, %2522
  %3081 = fmul fast float %3077, %2523
  %3082 = fmul fast float %3077, %2524
  %3083 = fmul fast float %3077, %2525
  br label %3084

; <label>:3084                                    ; preds = %3076, %3059
  %3085 = phi float [ %3078, %3076 ], [ %2520, %3059 ]
  %3086 = phi float [ %3079, %3076 ], [ %2521, %3059 ]
  %3087 = phi float [ %3080, %3076 ], [ %2522, %3059 ]
  %3088 = phi float [ %3081, %3076 ], [ %2523, %3059 ]
  %3089 = phi float [ %3082, %3076 ], [ %2524, %3059 ]
  %3090 = phi float [ %3083, %3076 ], [ %2525, %3059 ]
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = and i32 %3092, 3
  %3094 = icmp eq i32 %3093, 3
  br i1 %3094, label %3173, label %3095

; <label>:3095                                    ; preds = %3084
  %3096 = and i32 %3092, 16
  %3097 = icmp ne i32 %3096, 0
  %3098 = select i1 %3097, float %2712, float 0.000000e+00
  %3099 = icmp eq i32 %3093, 0
  br i1 %3099, label %3100, label %3128

; <label>:3100                                    ; preds = %3095
  %3101 = and i32 %3092, 64
  %3102 = icmp ne i32 %3101, 0
  %3103 = select i1 %3102, float %2712, float 0.000000e+00
  %3104 = fsub fast float %2932, %3085
  %3105 = fsub fast float %2933, %3086
  %3106 = fsub fast float %2934, %3087
  %3107 = fmul fast float %3098, %3104
  %3108 = fmul fast float %3098, %3105
  %3109 = fmul fast float %3098, %3106
  %3110 = fadd fast float %3107, %3085
  %3111 = fadd fast float %3108, %3086
  %3112 = fadd fast float %3109, %3087
  %3113 = fsub fast float %2918, %2526
  %3114 = fmul fast float %3098, %3113
  %3115 = fadd fast float %3114, %2526
  %3116 = fsub fast float %3060, %3088
  %3117 = fsub fast float %3061, %3089
  %3118 = fsub fast float %3062, %3090
  %3119 = fmul fast float %3103, %3116
  %3120 = fmul fast float %3103, %3117
  %3121 = fmul fast float %3103, %3118
  %3122 = fadd fast float %3119, %3088
  %3123 = fadd fast float %3120, %3089
  %3124 = fadd fast float %3121, %3090
  %3125 = fsub fast float %3075, %2529
  %3126 = fmul fast float %3098, %3125
  %3127 = fadd fast float %3126, %2529
  br label %3173

; <label>:3128                                    ; preds = %3095
  %3129 = icmp eq i32 %3093, 1
  br i1 %3129, label %3130, label %3143

; <label>:3130                                    ; preds = %3128
  %3131 = fadd fast float %2932, -1.000000e+00
  %3132 = fadd fast float %2933, -1.000000e+00
  %3133 = fadd fast float %2934, -1.000000e+00
  %3134 = fmul fast float %3098, %3131
  %3135 = fmul fast float %3098, %3132
  %3136 = fmul fast float %3098, %3133
  %3137 = fadd fast float %3134, 1.000000e+00
  %3138 = fadd fast float %3135, 1.000000e+00
  %3139 = fadd fast float %3136, 1.000000e+00
  %3140 = fmul fast float %3137, %3085
  %3141 = fmul fast float %3138, %3086
  %3142 = fmul fast float %3139, %3087
  br label %3173

; <label>:3143                                    ; preds = %3128
  %3144 = icmp eq i32 %3093, 2
  br i1 %3144, label %3145, label %3173

; <label>:3145                                    ; preds = %3143
  %3146 = call float @dx.op.unary.f32(i32 24, float %2932)  ; Sqrt(value)
  %3147 = call float @dx.op.unary.f32(i32 24, float %2933)  ; Sqrt(value)
  %3148 = call float @dx.op.unary.f32(i32 24, float %2934)  ; Sqrt(value)
  %3149 = fadd fast float %3146, -5.000000e-01
  %3150 = fadd fast float %3147, -5.000000e-01
  %3151 = fadd fast float %3148, -5.000000e-01
  %3152 = fmul fast float %3149, %3098
  %3153 = fmul fast float %3150, %3098
  %3154 = fmul fast float %3151, %3098
  %3155 = fadd fast float %3152, 5.000000e-01
  %3156 = fadd fast float %3153, 5.000000e-01
  %3157 = fadd fast float %3154, 5.000000e-01
  %3158 = fmul fast float %3155, 2.000000e+00
  %3159 = fsub fast float 1.000000e+00, %3158
  %3160 = fmul fast float %3159, %3085
  %3161 = fadd fast float %3160, %3158
  %3162 = fmul fast float %3161, %3085
  %3163 = fmul fast float %3156, 2.000000e+00
  %3164 = fsub fast float 1.000000e+00, %3163
  %3165 = fmul fast float %3164, %3086
  %3166 = fadd fast float %3165, %3163
  %3167 = fmul fast float %3166, %3086
  %3168 = fmul fast float %3157, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3087
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3087
  br label %3173

; <label>:3173                                    ; preds = %3145, %3143, %3130, %3100, %3084
  %3174 = phi float [ %3085, %3084 ], [ %3162, %3145 ], [ %3085, %3143 ], [ %3140, %3130 ], [ %3110, %3100 ]
  %3175 = phi float [ %3086, %3084 ], [ %3167, %3145 ], [ %3086, %3143 ], [ %3141, %3130 ], [ %3111, %3100 ]
  %3176 = phi float [ %3087, %3084 ], [ %3172, %3145 ], [ %3087, %3143 ], [ %3142, %3130 ], [ %3112, %3100 ]
  %3177 = phi float [ %3088, %3084 ], [ %3088, %3145 ], [ %3088, %3143 ], [ %3088, %3130 ], [ %3122, %3100 ]
  %3178 = phi float [ %3089, %3084 ], [ %3089, %3145 ], [ %3089, %3143 ], [ %3089, %3130 ], [ %3123, %3100 ]
  %3179 = phi float [ %3090, %3084 ], [ %3090, %3145 ], [ %3090, %3143 ], [ %3090, %3130 ], [ %3124, %3100 ]
  %3180 = phi float [ %2526, %3084 ], [ %2526, %3145 ], [ %2526, %3143 ], [ %2526, %3130 ], [ %3115, %3100 ]
  %3181 = phi float [ %2529, %3084 ], [ %2529, %3145 ], [ %2529, %3143 ], [ %2529, %3130 ], [ %3127, %3100 ]
  %3182 = and i32 %3092, 12
  %3183 = icmp eq i32 %3182, 12
  br i1 %3183, label %3256, label %3184

; <label>:3184                                    ; preds = %3173
  %3185 = and i32 %3092, 2097184
  %3186 = icmp eq i32 %3185, 2097184
  %3187 = select i1 %3186, float %2712, float 0.000000e+00
  %3188 = and i32 %3092, 4194336
  %3189 = icmp eq i32 %3188, 4194336
  %3190 = select i1 %3189, float %2712, float 0.000000e+00
  %3191 = and i32 %3092, 8388640
  %3192 = icmp eq i32 %3191, 8388640
  %3193 = select i1 %3192, float %2712, float 0.000000e+00
  %3194 = icmp eq i32 %3182, 0
  br i1 %3194, label %3195, label %3208

; <label>:3195                                    ; preds = %3184
  %3196 = fsub fast float %3013, %2518
  %3197 = fsub fast float %3014, %2519
  %3198 = fmul fast float %3187, %3196
  %3199 = fmul fast float %3187, %3197
  %3200 = fadd fast float %3198, %2518
  %3201 = fadd fast float %3199, %2519
  %3202 = fsub fast float %3015, %2528
  %3203 = fmul fast float %3190, %3202
  %3204 = fadd fast float %3203, %2528
  %3205 = fsub fast float %3012, %2527
  %3206 = fmul fast float %3193, %3205
  %3207 = fadd fast float %3206, %2527
  br label %3256

; <label>:3208                                    ; preds = %3184
  %3209 = icmp eq i32 %3182, 4
  br i1 %3209, label %3210, label %3242

; <label>:3210                                    ; preds = %3208
  %3211 = fmul fast float %3187, %3013
  %3212 = fmul fast float %3187, %3014
  %3213 = fadd fast float %3211, %2518
  %3214 = fadd fast float %3212, %2519
  %3215 = call float @dx.op.binary.f32(i32 36, float %2528, float %3015)  ; FMin(a,b)
  %3216 = fsub fast float %3215, %2528
  %3217 = fmul fast float %3216, %3190
  %3218 = fadd fast float %3217, %2528
  %3219 = fadd fast float %3012, %2527
  %3220 = fmul fast float %3219, 0x3FF337FAE0000000
  %3221 = fmul fast float %2527, %2527
  %3222 = fmul fast float %3012, %3012
  %3223 = fadd fast float %3222, %3221
  %3224 = fmul fast float %3223, 0x3FE5152B00000000
  %3225 = fmul fast float %2527, 0xBFCC1F85E0000000
  %3226 = fmul fast float %3225, %3012
  %3227 = fadd fast float %3226, 0xBFE1363700000000
  %3228 = fadd fast float %3227, %3220
  %3229 = fsub fast float %3228, %3224
  %3230 = fmul fast float %3219, 0x3FBA6F0D00000000
  %3231 = fmul fast float %3223, 0x3FD0432880000000
  %3232 = fmul fast float %2527, 0xBFEF110800000000
  %3233 = fmul fast float %3232, %3012
  %3234 = fadd fast float %3233, 1.000000e+00
  %3235 = fsub fast float %3234, %3230
  %3236 = fadd fast float %3235, %3231
  %3237 = fdiv fast float %3229, %3236
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3239 = fsub fast float %3238, %2527
  %3240 = fmul fast float %3239, %3193
  %3241 = fadd fast float %3240, %2527
  br label %3256

; <label>:3242                                    ; preds = %3208
  %3243 = icmp eq i32 %3182, 8
  br i1 %3243, label %3244, label %3256

; <label>:3244                                    ; preds = %3242
  %3245 = fmul fast float %3187, %3013
  %3246 = fmul fast float %3187, %3014
  %3247 = fadd fast float %3245, %2518
  %3248 = fadd fast float %3246, %2519
  %3249 = call float @dx.op.binary.f32(i32 36, float %2528, float %3015)  ; FMin(a,b)
  %3250 = fsub fast float %3249, %2528
  %3251 = fmul fast float %3250, %3190
  %3252 = fadd fast float %3251, %2528
  %3253 = fsub fast float %3012, %2527
  %3254 = fmul fast float %3193, %3253
  %3255 = fadd fast float %3254, %2527
  br label %3256

; <label>:3256                                    ; preds = %3244, %3242, %3210, %3195, %3173, %2711, %2530, %2517
  %3257 = phi float [ %2518, %3173 ], [ %2518, %2711 ], [ %2518, %2517 ], [ %2518, %2530 ], [ %3200, %3195 ], [ %3213, %3210 ], [ %2518, %3242 ], [ %3247, %3244 ]
  %3258 = phi float [ %2519, %3173 ], [ %2519, %2711 ], [ %2519, %2517 ], [ %2519, %2530 ], [ %3201, %3195 ], [ %3214, %3210 ], [ %2519, %3242 ], [ %3248, %3244 ]
  %3259 = phi float [ %3174, %3173 ], [ %2520, %2711 ], [ %2520, %2517 ], [ %2520, %2530 ], [ %3174, %3195 ], [ %3174, %3210 ], [ %3174, %3242 ], [ %3174, %3244 ]
  %3260 = phi float [ %3175, %3173 ], [ %2521, %2711 ], [ %2521, %2517 ], [ %2521, %2530 ], [ %3175, %3195 ], [ %3175, %3210 ], [ %3175, %3242 ], [ %3175, %3244 ]
  %3261 = phi float [ %3176, %3173 ], [ %2522, %2711 ], [ %2522, %2517 ], [ %2522, %2530 ], [ %3176, %3195 ], [ %3176, %3210 ], [ %3176, %3242 ], [ %3176, %3244 ]
  %3262 = phi float [ %3177, %3173 ], [ %2523, %2711 ], [ %2523, %2517 ], [ %2523, %2530 ], [ %3177, %3195 ], [ %3177, %3210 ], [ %3177, %3242 ], [ %3177, %3244 ]
  %3263 = phi float [ %3178, %3173 ], [ %2524, %2711 ], [ %2524, %2517 ], [ %2524, %2530 ], [ %3178, %3195 ], [ %3178, %3210 ], [ %3178, %3242 ], [ %3178, %3244 ]
  %3264 = phi float [ %3179, %3173 ], [ %2525, %2711 ], [ %2525, %2517 ], [ %2525, %2530 ], [ %3179, %3195 ], [ %3179, %3210 ], [ %3179, %3242 ], [ %3179, %3244 ]
  %3265 = phi float [ %3180, %3173 ], [ %2526, %2711 ], [ %2526, %2517 ], [ %2526, %2530 ], [ %3180, %3195 ], [ %3180, %3210 ], [ %3180, %3242 ], [ %3180, %3244 ]
  %3266 = phi float [ %2527, %3173 ], [ %2527, %2711 ], [ %2527, %2517 ], [ %2527, %2530 ], [ %3207, %3195 ], [ %3241, %3210 ], [ %2527, %3242 ], [ %3255, %3244 ]
  %3267 = phi float [ %2528, %3173 ], [ %2528, %2711 ], [ %2528, %2517 ], [ %2528, %2530 ], [ %3204, %3195 ], [ %3218, %3210 ], [ %2528, %3242 ], [ %3252, %3244 ]
  %3268 = phi float [ %3181, %3173 ], [ %2529, %2711 ], [ %2529, %2517 ], [ %2529, %2530 ], [ %3181, %3195 ], [ %3181, %3210 ], [ %3181, %3242 ], [ %3181, %3244 ]
  %3269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3270 = extractvalue %dx.types.CBufRet.f32 %3269, 0
  %3271 = call float @dx.op.dot2.f32(i32 54, float %3257, float %3258, float %3257, float %3258)  ; Dot2(ax,ay,bx,by)
  %3272 = fmul fast float %3271, 0x3FE3333340000000
  %3273 = fsub fast float 1.000000e+00, %3272
  %3274 = call float @dx.op.dot3.f32(i32 55, float %3257, float %3258, float %3273, float %3257, float %3258, float %3273)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = call float @dx.op.unary.f32(i32 25, float %3274)  ; Rsqrt(value)
  %3276 = fmul fast float %3275, %3257
  %3277 = fmul fast float %3275, %3258
  %3278 = fmul fast float %3273, %3275
  %3279 = fmul fast float %3278, %120
  %3280 = fmul fast float %3278, %122
  %3281 = fmul fast float %3278, %124
  %3282 = fmul fast float %3276, %86
  %3283 = fmul fast float %3276, %87
  %3284 = fmul fast float %3276, %88
  %3285 = fadd fast float %3279, %3282
  %3286 = fadd fast float %3280, %3283
  %3287 = fadd fast float %3281, %3284
  %3288 = fmul fast float %134, %3277
  %3289 = fmul fast float %135, %3277
  %3290 = fmul fast float %136, %3277
  %3291 = fadd fast float %3285, %3288
  %3292 = fadd fast float %3286, %3289
  %3293 = fadd fast float %3287, %3290
  %3294 = call float @dx.op.dot3.f32(i32 55, float %3291, float %3292, float %3293, float %3291, float %3292, float %3293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3295 = call float @dx.op.unary.f32(i32 25, float %3294)  ; Rsqrt(value)
  %3296 = fmul fast float %3291, %3295
  %3297 = fmul fast float %3292, %3295
  %3298 = fmul fast float %3293, %3295
  %3299 = icmp eq i32 %57, 65535
  br i1 %3299, label %3814, label %3300

; <label>:3300                                    ; preds = %3256
  %3301 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3302 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3303 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3304 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3305 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3306 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3307 = fadd fast float %3301, %58
  %3308 = fadd fast float %3302, %59
  %3309 = fadd fast float %3303, %60
  %3310 = fadd fast float %3304, %58
  %3311 = fadd fast float %3305, %59
  %3312 = fadd fast float %3306, %60
  %3313 = mul i32 %57, 48
  %3314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.ResRet.f32 %3314, 1
  %3317 = extractvalue %dx.types.ResRet.f32 %3314, 2
  %3318 = add i32 %3313, 16
  %3319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.ResRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.ResRet.f32 %3319, 2
  %3323 = add i32 %3313, 32
  %3324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = extractvalue %dx.types.ResRet.f32 %3324, 3
  %3329 = bitcast float %3328 to i32
  %3330 = fmul fast float %3315, %58
  %3331 = fmul fast float %3316, %59
  %3332 = fmul fast float %3317, %60
  %3333 = fsub fast float %3330, %3320
  %3334 = fsub fast float %3331, %3321
  %3335 = fsub fast float %3332, %3322
  %3336 = call float @dx.op.unary.f32(i32 7, float %3333)  ; Saturate(value)
  %3337 = call float @dx.op.unary.f32(i32 7, float %3334)  ; Saturate(value)
  %3338 = call float @dx.op.unary.f32(i32 7, float %3335)  ; Saturate(value)
  %3339 = fmul fast float %3336, %3325
  %3340 = fmul fast float %3337, %3326
  %3341 = fmul fast float %3338, %3327
  %3342 = fadd fast float %3325, -1.000000e+00
  %3343 = fadd fast float %3326, -1.000000e+00
  %3344 = fadd fast float %3327, -1.000000e+00
  %3345 = call float @dx.op.unary.f32(i32 27, float %3339)  ; Round_ni(value)
  %3346 = call float @dx.op.unary.f32(i32 27, float %3340)  ; Round_ni(value)
  %3347 = call float @dx.op.unary.f32(i32 27, float %3341)  ; Round_ni(value)
  %3348 = call float @dx.op.binary.f32(i32 36, float %3345, float %3342)  ; FMin(a,b)
  %3349 = call float @dx.op.binary.f32(i32 36, float %3346, float %3343)  ; FMin(a,b)
  %3350 = call float @dx.op.binary.f32(i32 36, float %3347, float %3344)  ; FMin(a,b)
  %3351 = fmul fast float %3350, %3326
  %3352 = fadd fast float %3351, %3349
  %3353 = fmul fast float %3352, %3325
  %3354 = fadd fast float %3353, %3348
  %3355 = fptosi float %3354 to i32
  %3356 = add nsw i32 %3355, %3329
  %3357 = shl nsw i32 %3356, 2
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = lshr i32 %3359, 16
  %3361 = icmp eq i32 %3360, 0
  br i1 %3361, label %3783, label %3362

; <label>:3362                                    ; preds = %3300
  br label %3363

; <label>:3363                                    ; preds = %3484, %3362
  %3364 = phi i32 [ %3386, %3484 ], [ %3360, %3362 ]
  %3365 = phi float [ %3485, %3484 ], [ 0.000000e+00, %3362 ]
  %3366 = phi float [ %3486, %3484 ], [ %3270, %3362 ]
  %3367 = phi float [ %3487, %3484 ], [ %3268, %3362 ]
  %3368 = phi float [ %3488, %3484 ], [ 0.000000e+00, %3362 ]
  %3369 = phi float [ %3489, %3484 ], [ 0.000000e+00, %3362 ]
  %3370 = phi float [ %3490, %3484 ], [ %3262, %3362 ]
  %3371 = phi float [ %3491, %3484 ], [ %3263, %3362 ]
  %3372 = phi float [ %3492, %3484 ], [ %3264, %3362 ]
  %3373 = phi float [ %3493, %3484 ], [ %3296, %3362 ]
  %3374 = phi float [ %3494, %3484 ], [ %3297, %3362 ]
  %3375 = phi float [ %3495, %3484 ], [ %3298, %3362 ]
  %3376 = phi float [ %3496, %3484 ], [ %3267, %3362 ]
  %3377 = phi float [ %3497, %3484 ], [ %3266, %3362 ]
  %3378 = phi float [ %3498, %3484 ], [ 0.000000e+00, %3362 ]
  %3379 = phi float [ %3499, %3484 ], [ %3265, %3362 ]
  %3380 = phi float [ %3500, %3484 ], [ %3259, %3362 ]
  %3381 = phi float [ %3501, %3484 ], [ %3260, %3362 ]
  %3382 = phi float [ %3502, %3484 ], [ %3261, %3362 ]
  %3383 = shl nuw nsw i32 %3364, 2
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = lshr i32 %3385, 16
  %3387 = shl i32 %3385, 8
  %3388 = and i32 %3387, 16776960
  %3389 = or i32 %3388, 48
  %3390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.ResRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.ResRet.f32 %3390, 2
  %3394 = or i32 %3388, 64
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = extractvalue %dx.types.ResRet.i32 %3395, 1
  %3398 = or i32 %3388, 80
  %3399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3402 = or i32 %3388, 96
  %3403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.f32 %3403, 0
  %3405 = extractvalue %dx.types.ResRet.f32 %3403, 1
  %3406 = extractvalue %dx.types.ResRet.f32 %3403, 2
  %3407 = extractvalue %dx.types.ResRet.f32 %3403, 3
  %3408 = or i32 %3388, 112
  %3409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3411 = or i32 %3388, 128
  %3412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = extractvalue %dx.types.ResRet.f32 %3412, 1
  %3415 = extractvalue %dx.types.ResRet.f32 %3412, 2
  %3416 = extractvalue %dx.types.ResRet.f32 %3412, 3
  %3417 = or i32 %3388, 144
  %3418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = extractvalue %dx.types.ResRet.f32 %3418, 3
  %3423 = or i32 %3388, 160
  %3424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = extractvalue %dx.types.ResRet.f32 %3424, 1
  %3427 = extractvalue %dx.types.ResRet.f32 %3424, 2
  %3428 = extractvalue %dx.types.ResRet.f32 %3424, 3
  %3429 = or i32 %3388, 192
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = or i32 %3388, 208
  %3433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = or i32 %3388, 248
  %3436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.f32 %3436, 0
  %3438 = extractvalue %dx.types.ResRet.f32 %3436, 1
  %3439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3441 = extractvalue %dx.types.ResRet.f32 %3439, 1
  %3442 = extractvalue %dx.types.ResRet.f32 %3439, 2
  %3443 = extractvalue %dx.types.ResRet.f32 %3439, 3
  %3444 = call float @dx.op.dot4.f32(i32 56, float %3440, float %3441, float %3442, float %3443, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3445 = or i32 %3388, 16
  %3446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.ResRet.f32 %3446, 1
  %3449 = extractvalue %dx.types.ResRet.f32 %3446, 2
  %3450 = extractvalue %dx.types.ResRet.f32 %3446, 3
  %3451 = call float @dx.op.dot4.f32(i32 56, float %3447, float %3448, float %3449, float %3450, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3452 = or i32 %3388, 32
  %3453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.ResRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.ResRet.f32 %3453, 2
  %3457 = extractvalue %dx.types.ResRet.f32 %3453, 3
  %3458 = call float @dx.op.dot4.f32(i32 56, float %3454, float %3455, float %3456, float %3457, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3459 = call float @dx.op.unary.f32(i32 27, float %3444)  ; Round_ni(value)
  %3460 = call float @dx.op.unary.f32(i32 6, float %3459)  ; FAbs(value)
  %3461 = call float @dx.op.unary.f32(i32 27, float %3451)  ; Round_ni(value)
  %3462 = call float @dx.op.unary.f32(i32 6, float %3461)  ; FAbs(value)
  %3463 = call float @dx.op.unary.f32(i32 6, float %3458)  ; FAbs(value)
  %3464 = call float @dx.op.unary.f32(i32 27, float %3463)  ; Round_ni(value)
  %3465 = fadd fast float %3462, %3460
  %3466 = fadd fast float %3465, %3464
  %3467 = fcmp fast oeq float %3466, 0.000000e+00
  %3468 = call float @dx.op.dot4.f32(i32 56, float %3440, float %3441, float %3442, float %3443, float %3307, float %3308, float %3309, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3469 = call float @dx.op.dot4.f32(i32 56, float %3447, float %3448, float %3449, float %3450, float %3307, float %3308, float %3309, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3470 = call float @dx.op.dot4.f32(i32 56, float %3440, float %3441, float %3442, float %3443, float %3310, float %3311, float %3312, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3471 = call float @dx.op.dot4.f32(i32 56, float %3447, float %3448, float %3449, float %3450, float %3310, float %3311, float %3312, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3472 = fsub fast float %3468, %3444
  %3473 = fsub fast float %3470, %3444
  %3474 = fsub fast float %3469, %3451
  %3475 = fsub fast float %3471, %3451
  %3476 = call float @dx.op.dot3.f32(i32 55, float %3391, float %3392, float %3393, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3479 = fadd fast float %3478, %3476
  %3480 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3482 = fcmp fast ogt float %3480, %3481
  %3483 = and i1 %3467, %3482
  br i1 %3483, label %3504, label %3484

; <label>:3484                                    ; preds = %3769, %3587, %3504, %3363
  %3485 = phi float [ %3365, %3504 ], [ %3590, %3587 ], [ %3590, %3769 ], [ %3365, %3363 ]
  %3486 = phi float [ %3366, %3504 ], [ %3366, %3587 ], [ %3744, %3769 ], [ %3366, %3363 ]
  %3487 = phi float [ %3367, %3504 ], [ %3367, %3587 ], [ %3742, %3769 ], [ %3367, %3363 ]
  %3488 = phi float [ %3368, %3504 ], [ %3368, %3587 ], [ %3714, %3769 ], [ %3368, %3363 ]
  %3489 = phi float [ %3369, %3504 ], [ %3369, %3587 ], [ %3712, %3769 ], [ %3369, %3363 ]
  %3490 = phi float [ %3370, %3504 ], [ %3370, %3587 ], [ %3779, %3769 ], [ %3370, %3363 ]
  %3491 = phi float [ %3371, %3504 ], [ %3371, %3587 ], [ %3780, %3769 ], [ %3371, %3363 ]
  %3492 = phi float [ %3372, %3504 ], [ %3372, %3587 ], [ %3781, %3769 ], [ %3372, %3363 ]
  %3493 = phi float [ %3373, %3504 ], [ %3373, %3587 ], [ %3693, %3769 ], [ %3373, %3363 ]
  %3494 = phi float [ %3374, %3504 ], [ %3374, %3587 ], [ %3694, %3769 ], [ %3374, %3363 ]
  %3495 = phi float [ %3375, %3504 ], [ %3375, %3587 ], [ %3695, %3769 ], [ %3375, %3363 ]
  %3496 = phi float [ %3376, %3504 ], [ %3376, %3587 ], [ %3722, %3769 ], [ %3376, %3363 ]
  %3497 = phi float [ %3377, %3504 ], [ %3377, %3587 ], [ %3719, %3769 ], [ %3377, %3363 ]
  %3498 = phi float [ %3378, %3504 ], [ %3378, %3587 ], [ %3716, %3769 ], [ %3378, %3363 ]
  %3499 = phi float [ %3379, %3504 ], [ %3379, %3587 ], [ %3710, %3769 ], [ %3379, %3363 ]
  %3500 = phi float [ %3380, %3504 ], [ %3380, %3587 ], [ %3705, %3769 ], [ %3380, %3363 ]
  %3501 = phi float [ %3381, %3504 ], [ %3381, %3587 ], [ %3706, %3769 ], [ %3381, %3363 ]
  %3502 = phi float [ %3382, %3504 ], [ %3382, %3587 ], [ %3707, %3769 ], [ %3382, %3363 ]
  %3503 = icmp eq i32 %3386, 0
  br i1 %3503, label %3782, label %3363

; <label>:3504                                    ; preds = %3363
  %3505 = extractvalue %dx.types.ResRet.f32 %3390, 3
  %3506 = extractvalue %dx.types.ResRet.f32 %3409, 3
  %3507 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3511 = extractvalue %dx.types.ResRet.i32 %3395, 3
  %3512 = extractvalue %dx.types.ResRet.i32 %3395, 2
  %3513 = bitcast float %3505 to i32
  %3514 = add i32 %3511, 0
  %3515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3514, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3517 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3515, %dx.types.Handle %3516, float %3444, float %3451, float undef, float undef, i32 0, i32 0, i32 undef, float %3472, float %3474, float undef, float %3473, float %3475, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = fmul fast float %3518, %3510
  %3520 = fadd fast float %3519, %3509
  %3521 = call float @dx.op.unary.f32(i32 7, float %3520)  ; Saturate(value)
  %3522 = fmul fast float %3444, %3404
  %3523 = call float @dx.op.tertiary.f32(i32 46, float %3405, float %3451, float %3522)  ; FMad(a,b,c)
  %3524 = fadd fast float %3523, %3508
  %3525 = fmul fast float %3444, %3406
  %3526 = call float @dx.op.tertiary.f32(i32 46, float %3407, float %3451, float %3525)  ; FMad(a,b,c)
  %3527 = fadd fast float %3526, %3507
  %3528 = fmul fast float %3472, %3404
  %3529 = call float @dx.op.tertiary.f32(i32 46, float %3405, float %3474, float %3528)  ; FMad(a,b,c)
  %3530 = fmul fast float %3472, %3406
  %3531 = call float @dx.op.tertiary.f32(i32 46, float %3407, float %3474, float %3530)  ; FMad(a,b,c)
  %3532 = fmul fast float %3473, %3404
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %3405, float %3475, float %3532)  ; FMad(a,b,c)
  %3534 = fmul fast float %3473, %3406
  %3535 = call float @dx.op.tertiary.f32(i32 46, float %3407, float %3475, float %3534)  ; FMad(a,b,c)
  %3536 = add i32 %3512, 0
  %3537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3536, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3538 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3537, %dx.types.Handle %3516, float %3524, float %3527, float undef, float undef, i32 0, i32 0, i32 undef, float %3529, float %3531, float undef, float %3533, float %3535, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = and i32 %3513, 1024
  %3541 = icmp ne i32 %3540, 0
  %3542 = fcmp fast ogt float %3539, 0x3FE0101020000000
  %3543 = uitofp i1 %3542 to float
  %3544 = select i1 %3541, float %3543, float %3539
  %3545 = and i32 %3513, 8192
  %3546 = icmp ne i32 %3545, 0
  %3547 = select i1 %3546, float %3506, float 1.000000e+00
  %3548 = fmul fast float %3444, 2.000000e+00
  %3549 = fadd fast float %3548, -1.000000e+00
  %3550 = call float @dx.op.unary.f32(i32 6, float %3549)  ; FAbs(value)
  %3551 = fmul fast float %3550, %3437
  %3552 = fsub fast float %3551, %3437
  %3553 = call float @dx.op.unary.f32(i32 7, float %3552)  ; Saturate(value)
  %3554 = fmul fast float %3451, 2.000000e+00
  %3555 = fadd fast float %3554, -1.000000e+00
  %3556 = call float @dx.op.unary.f32(i32 6, float %3555)  ; FAbs(value)
  %3557 = fmul fast float %3556, %3438
  %3558 = fsub fast float %3557, %3438
  %3559 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3560 = fmul fast float %3463, %3400
  %3561 = fsub fast float %3560, %3400
  %3562 = call float @dx.op.unary.f32(i32 7, float %3561)  ; Saturate(value)
  %3563 = fmul fast float %3521, %3547
  %3564 = fmul fast float %3563, %3518
  %3565 = fmul fast float %3564, %3553
  %3566 = fmul fast float %3565, %3544
  %3567 = fmul fast float %3566, %3559
  %3568 = fmul fast float %3567, %3562
  %3569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.f32 %3569, 1
  %3571 = extractvalue %dx.types.CBufRet.f32 %3569, 0
  %3572 = fsub fast float %3480, %3571
  %3573 = fmul fast float %3572, %3570
  %3574 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3575 = fmul fast float %3568, %3401
  %3576 = fadd fast float %3568, %3401
  %3577 = fmul fast float %3576, %3410
  %3578 = fsub fast float %3577, %3410
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = and i32 %3513, 128
  %3581 = icmp ne i32 %3580, 0
  %3582 = select i1 %3581, float %3579, float %3575
  %3583 = fmul fast float %3582, %3574
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 0
  %3586 = fcmp fast ugt float %3583, %3585
  br i1 %3586, label %3587, label %3484

; <label>:3587                                    ; preds = %3504
  %3588 = select i1 %3546, float %3583, float 0.000000e+00
  %3589 = fadd fast float %3588, %3365
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  br i1 %3546, label %3484, label %3591

; <label>:3591                                    ; preds = %3587
  %3592 = and i32 %3513, 4
  %3593 = and i32 %3513, 8
  %3594 = add i32 %3396, 0
  %3595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3594, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3595, %dx.types.Handle %3596, float %3524, float %3527, float undef, float undef, i32 0, i32 0, i32 undef, float %3529, float %3531, float undef, float %3533, float %3535, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = extractvalue %dx.types.ResRet.f32 %3597, 3
  %3602 = bitcast float %3422 to i32
  %3603 = and i32 %3602, 255
  %3604 = uitofp i32 %3603 to float
  %3605 = lshr i32 %3602, 8
  %3606 = and i32 %3605, 255
  %3607 = uitofp i32 %3606 to float
  %3608 = fmul fast float %3601, %3604
  %3609 = fadd fast float %3608, %3607
  %3610 = fmul fast float %3609, 0x3F70101000000000
  %3611 = add i32 %3397, 0
  %3612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3611, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3613 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3612, %dx.types.Handle %3596, float %3524, float %3527, float undef, float undef, i32 0, i32 0, i32 undef, float %3529, float %3531, float undef, float %3533, float %3535, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = bitcast float %3416 to i32
  %3619 = and i32 %3618, 255
  %3620 = uitofp i32 %3619 to float
  %3621 = lshr i32 %3618, 8
  %3622 = and i32 %3621, 255
  %3623 = uitofp i32 %3622 to float
  %3624 = lshr i32 %3618, 16
  %3625 = and i32 %3624, 255
  %3626 = uitofp i32 %3625 to float
  %3627 = fmul fast float %3626, 0x3F70101000000000
  %3628 = fmul fast float %3614, %3620
  %3629 = fadd fast float %3628, %3623
  %3630 = fmul fast float %3629, 0x3F70101000000000
  %3631 = fadd fast float %3615, -5.000000e-01
  %3632 = fadd fast float %3617, -5.000000e-01
  %3633 = fmul fast float %3631, %3627
  %3634 = fmul fast float %3632, %3627
  %3635 = fadd fast float %3633, 5.000000e-01
  %3636 = fadd fast float %3634, 5.000000e-01
  %3637 = fmul fast float %3598, %3425
  %3638 = fmul fast float %3599, %3426
  %3639 = fmul fast float %3600, %3427
  %3640 = fmul fast float %3635, 2.000000e+00
  %3641 = fadd fast float %3640, -1.000000e+00
  %3642 = fmul fast float %3636, 2.000000e+00
  %3643 = fadd fast float %3642, -1.000000e+00
  %3644 = fadd fast float %3641, %3643
  %3645 = fmul fast float %3644, 5.000000e-01
  %3646 = fsub fast float %3641, %3643
  %3647 = fmul fast float %3646, 5.000000e-01
  %3648 = call float @dx.op.unary.f32(i32 6, float %3645)  ; FAbs(value)
  %3649 = fsub fast float 1.000000e+00, %3648
  %3650 = call float @dx.op.unary.f32(i32 6, float %3647)  ; FAbs(value)
  %3651 = fsub fast float %3649, %3650
  %3652 = call float @dx.op.dot3.f32(i32 55, float %3645, float %3647, float %3651, float %3645, float %3647, float %3651)  ; Dot3(ax,ay,az,bx,by,bz)
  %3653 = call float @dx.op.unary.f32(i32 25, float %3652)  ; Rsqrt(value)
  %3654 = fmul fast float %3645, %3653
  %3655 = fmul fast float %3647, %3653
  %3656 = fmul fast float %3653, %3651
  %3657 = fmul fast float %3656, %3391
  %3658 = fmul fast float %3656, %3392
  %3659 = fmul fast float %3656, %3393
  %3660 = fmul fast float %3654, %3413
  %3661 = fmul fast float %3654, %3414
  %3662 = fmul fast float %3654, %3415
  %3663 = fadd fast float %3660, %3657
  %3664 = fadd fast float %3661, %3658
  %3665 = fadd fast float %3662, %3659
  %3666 = fmul fast float %3655, %3419
  %3667 = fmul fast float %3655, %3420
  %3668 = fmul fast float %3655, %3421
  %3669 = fadd fast float %3663, %3666
  %3670 = fadd fast float %3664, %3667
  %3671 = fadd fast float %3665, %3668
  %3672 = call float @dx.op.dot3.f32(i32 55, float %3669, float %3670, float %3671, float %3669, float %3670, float %3671)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = call float @dx.op.unary.f32(i32 25, float %3672)  ; Rsqrt(value)
  %3674 = fmul fast float %3669, %3673
  %3675 = fmul fast float %3670, %3673
  %3676 = fmul fast float %3671, %3673
  %3677 = icmp ne i32 %3593, 0
  %3678 = select i1 %3677, float 1.000000e+00, float 0.000000e+00
  %3679 = fmul fast float %3583, %3678
  %3680 = and i32 %3513, 1
  %3681 = icmp eq i32 %3680, 0
  br i1 %3681, label %3682, label %3686

; <label>:3682                                    ; preds = %3591
  %3683 = fsub fast float %3674, %3373
  %3684 = fsub fast float %3675, %3374
  %3685 = fsub fast float %3676, %3375
  br label %3686

; <label>:3686                                    ; preds = %3682, %3591
  %3687 = phi float [ %3683, %3682 ], [ %3674, %3591 ]
  %3688 = phi float [ %3684, %3682 ], [ %3675, %3591 ]
  %3689 = phi float [ %3685, %3682 ], [ %3676, %3591 ]
  %3690 = fmul float %3689, %3679
  %3691 = fmul float %3688, %3679
  %3692 = fmul float %3687, %3679
  %3693 = fadd fast float %3692, %3373
  %3694 = fadd fast float %3691, %3374
  %3695 = fadd fast float %3690, %3375
  %3696 = icmp ne i32 %3592, 0
  %3697 = select i1 %3696, float 1.000000e+00, float 0.000000e+00
  %3698 = fmul fast float %3583, %3697
  %3699 = fsub fast float %3637, %3380
  %3700 = fsub fast float %3638, %3381
  %3701 = fsub fast float %3639, %3382
  %3702 = fmul fast float %3699, %3698
  %3703 = fmul fast float %3700, %3698
  %3704 = fmul fast float %3701, %3698
  %3705 = fadd fast float %3702, %3380
  %3706 = fadd fast float %3703, %3381
  %3707 = fadd fast float %3704, %3382
  %3708 = fsub fast float %3610, %3379
  %3709 = fmul fast float %3708, %3698
  %3710 = fadd fast float %3709, %3379
  %3711 = fmul fast float %3698, %3369
  %3712 = fsub fast float %3369, %3711
  %3713 = fmul fast float %3698, %3368
  %3714 = fsub fast float %3368, %3713
  %3715 = fadd fast float %3583, %3378
  %3716 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3717 = fsub fast float %3630, %3377
  %3718 = fmul fast float %3717, %3679
  %3719 = fadd fast float %3718, %3377
  %3720 = fsub fast float %3616, %3376
  %3721 = fmul fast float %3720, %3679
  %3722 = fadd fast float %3721, %3376
  %3723 = call float @dx.op.dot3.f32(i32 55, float %3637, float %3638, float %3639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3725 = extractvalue %dx.types.CBufRet.f32 %3724, 0
  %3726 = extractvalue %dx.types.CBufRet.f32 %3724, 1
  %3727 = fmul fast float %3726, %3723
  %3728 = fadd fast float %3727, %3725
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = bitcast float %3428 to i32
  %3731 = and i32 %3730, 65535
  %3732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3731)  ; LegacyF16ToF32(value)
  %3733 = lshr i32 %3730, 16
  %3734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3733)  ; LegacyF16ToF32(value)
  %3735 = fcmp fast oge float %3732, 0.000000e+00
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3738 = select i1 %3735, float %3732, float %3737
  %3739 = fadd fast float %3738, %3734
  %3740 = fsub fast float %3729, %3367
  %3741 = fmul fast float %3740, %3583
  %3742 = fadd fast float %3741, %3367
  %3743 = fmul fast float %3739, %3583
  %3744 = call float @dx.op.binary.f32(i32 35, float %3366, float %3743)  ; FMax(a,b)
  %3745 = and i32 %3513, 16
  %3746 = icmp eq i32 %3745, 0
  br i1 %3746, label %3769, label %3747

; <label>:3747                                    ; preds = %3686
  %3748 = bitcast float %3434 to i32
  %3749 = add i32 %3431, 0
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3749, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3750, %dx.types.Handle %3596, float %3524, float %3527, float undef, float undef, i32 0, i32 0, i32 undef, float %3529, float %3531, float undef, float %3533, float %3535, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.ResRet.f32 %3751, 1
  %3754 = extractvalue %dx.types.ResRet.f32 %3751, 2
  %3755 = and i32 %3748, 65535
  %3756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3755)  ; LegacyF16ToF32(value)
  %3757 = fmul fast float %3752, %3425
  %3758 = fmul fast float %3753, %3426
  %3759 = fmul fast float %3754, %3427
  %3760 = and i32 %3513, 16384
  %3761 = icmp ne i32 %3760, 0
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = select i1 %3761, float %3763, float 1.000000e+00
  %3765 = fmul fast float %3764, %3756
  %3766 = fmul fast float %3757, %3765
  %3767 = fmul fast float %3758, %3765
  %3768 = fmul fast float %3759, %3765
  br label %3769

; <label>:3769                                    ; preds = %3747, %3686
  %3770 = phi float [ %3766, %3747 ], [ 0.000000e+00, %3686 ]
  %3771 = phi float [ %3767, %3747 ], [ 0.000000e+00, %3686 ]
  %3772 = phi float [ %3768, %3747 ], [ 0.000000e+00, %3686 ]
  %3773 = fsub fast float %3770, %3370
  %3774 = fsub fast float %3771, %3371
  %3775 = fsub fast float %3772, %3372
  %3776 = fmul fast float %3773, %3583
  %3777 = fmul fast float %3774, %3583
  %3778 = fmul fast float %3775, %3583
  %3779 = fadd fast float %3776, %3370
  %3780 = fadd fast float %3777, %3371
  %3781 = fadd fast float %3778, %3372
  br label %3484

; <label>:3782                                    ; preds = %3484
  br label %3783

; <label>:3783                                    ; preds = %3782, %3300
  %3784 = phi float [ 0.000000e+00, %3300 ], [ %3485, %3782 ]
  %3785 = phi float [ %3270, %3300 ], [ %3486, %3782 ]
  %3786 = phi float [ %3268, %3300 ], [ %3487, %3782 ]
  %3787 = phi float [ 0.000000e+00, %3300 ], [ %3488, %3782 ]
  %3788 = phi float [ 0.000000e+00, %3300 ], [ %3489, %3782 ]
  %3789 = phi float [ %3262, %3300 ], [ %3490, %3782 ]
  %3790 = phi float [ %3263, %3300 ], [ %3491, %3782 ]
  %3791 = phi float [ %3264, %3300 ], [ %3492, %3782 ]
  %3792 = phi float [ %3296, %3300 ], [ %3493, %3782 ]
  %3793 = phi float [ %3297, %3300 ], [ %3494, %3782 ]
  %3794 = phi float [ %3298, %3300 ], [ %3495, %3782 ]
  %3795 = phi float [ %3267, %3300 ], [ %3496, %3782 ]
  %3796 = phi float [ %3266, %3300 ], [ %3497, %3782 ]
  %3797 = phi float [ 0.000000e+00, %3300 ], [ %3498, %3782 ]
  %3798 = phi float [ %3265, %3300 ], [ %3499, %3782 ]
  %3799 = phi float [ %3259, %3300 ], [ %3500, %3782 ]
  %3800 = phi float [ %3260, %3300 ], [ %3501, %3782 ]
  %3801 = phi float [ %3261, %3300 ], [ %3502, %3782 ]
  %3802 = call float @dx.op.dot3.f32(i32 55, float %3792, float %3793, float %3794, float %3792, float %3793, float %3794)  ; Dot3(ax,ay,az,bx,by,bz)
  %3803 = call float @dx.op.unary.f32(i32 25, float %3802)  ; Rsqrt(value)
  %3804 = fmul fast float %3803, %3792
  %3805 = fmul fast float %3803, %3793
  %3806 = fmul fast float %3803, %3794
  %3807 = fadd fast float %3797, %1048
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3809 = call float @dx.op.dot3.f32(i32 55, float %3804, float %3805, float %3806, float %3804, float %3805, float %3806)  ; Dot3(ax,ay,az,bx,by,bz)
  %3810 = call float @dx.op.unary.f32(i32 25, float %3809)  ; Rsqrt(value)
  %3811 = fmul fast float %3810, %3804
  %3812 = fmul fast float %3810, %3805
  %3813 = fmul fast float %3810, %3806
  br label %3814

; <label>:3814                                    ; preds = %3783, %3256
  %3815 = phi float [ %3811, %3783 ], [ %3296, %3256 ]
  %3816 = phi float [ %3812, %3783 ], [ %3297, %3256 ]
  %3817 = phi float [ %3813, %3783 ], [ %3298, %3256 ]
  %3818 = phi float [ %3799, %3783 ], [ %3259, %3256 ]
  %3819 = phi float [ %3800, %3783 ], [ %3260, %3256 ]
  %3820 = phi float [ %3801, %3783 ], [ %3261, %3256 ]
  %3821 = phi float [ %3789, %3783 ], [ %3262, %3256 ]
  %3822 = phi float [ %3790, %3783 ], [ %3263, %3256 ]
  %3823 = phi float [ %3791, %3783 ], [ %3264, %3256 ]
  %3824 = phi float [ %3798, %3783 ], [ %3265, %3256 ]
  %3825 = phi float [ %3808, %3783 ], [ %1048, %3256 ]
  %3826 = phi float [ %3796, %3783 ], [ %3266, %3256 ]
  %3827 = phi float [ %3795, %3783 ], [ %3267, %3256 ]
  %3828 = phi float [ %3788, %3783 ], [ 0.000000e+00, %3256 ]
  %3829 = phi float [ %3787, %3783 ], [ 0.000000e+00, %3256 ]
  %3830 = phi float [ %3784, %3783 ], [ 0.000000e+00, %3256 ]
  %3831 = phi float [ %3785, %3783 ], [ %3270, %3256 ]
  %3832 = phi float [ %3786, %3783 ], [ %3268, %3256 ]
  %3833 = fadd fast float %3824, 0xBFB99999A0000000
  %3834 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3835 = fmul fast float %3834, 0x3FF1C71C80000000
  %3836 = call float @dx.op.binary.f32(i32 36, float %3824, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3837 = fsub fast float 1.000000e+00, %3835
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = fmul fast float %3838, %3818
  %3840 = fmul fast float %3838, %3819
  %3841 = fmul fast float %3838, %3820
  %3842 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3843 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3844 = call float @dx.op.unary.f32(i32 7, float %3841)  ; Saturate(value)
  %3845 = fmul fast float %3835, %3818
  %3846 = fmul fast float %3835, %3819
  %3847 = fmul fast float %3835, %3820
  %3848 = fadd fast float %3845, %3836
  %3849 = fadd fast float %3846, %3836
  %3850 = fadd fast float %3847, %3836
  %3851 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  %3852 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3853 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3854 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.i32 %3855, 3
  %3857 = and i32 %3856, 8
  %3858 = icmp ne i32 %3857, 0
  %3859 = call float @dx.op.binary.f32(i32 35, float %3842, float %3818)  ; FMax(a,b)
  %3860 = call float @dx.op.binary.f32(i32 35, float %3843, float %3818)  ; FMax(a,b)
  %3861 = call float @dx.op.binary.f32(i32 35, float %3844, float %3818)  ; FMax(a,b)
  %3862 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3863 = select i1 %253, float %3818, float %3842
  %3864 = select i1 %253, float %3862, float %3843
  %3865 = select i1 %253, float 1.000000e+00, float %3844
  %3866 = select i1 %3858, float %3859, float %3863
  %3867 = select i1 %3858, float %3860, float %3864
  %3868 = select i1 %3858, float %3861, float %3865
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.CBufRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %3873 = fadd fast float %3870, %194
  %3874 = fadd fast float %3871, %195
  %3875 = fadd fast float %3872, %196
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3879 = fsub fast float %3873, %3877
  %3880 = fsub fast float %3874, %3878
  %3881 = fmul fast float %3879, %3879
  %3882 = fmul fast float %3880, %3880
  %3883 = fadd fast float %3881, %3882
  %3884 = call float @dx.op.unary.f32(i32 24, float %3883)  ; Sqrt(value)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3876, 2
  %3886 = fcmp fast olt float %3884, %3885
  br i1 %3886, label %3887, label %3954

; <label>:3887                                    ; preds = %3814
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 0
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.CBufRet.f32 %3888, 1
  %3895 = extractvalue %dx.types.CBufRet.f32 %3890, 1
  %3896 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3897 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3898 = extractvalue %dx.types.CBufRet.f32 %3890, 3
  %3899 = extractvalue %dx.types.CBufRet.f32 %3892, 3
  %3900 = fadd fast float %3897, %3873
  %3901 = fadd fast float %3898, %3874
  %3902 = fadd fast float %3899, %3875
  %3903 = fmul fast float %3900, %3889
  %3904 = call float @dx.op.tertiary.f32(i32 46, float %3901, float %3891, float %3903)  ; FMad(a,b,c)
  %3905 = call float @dx.op.tertiary.f32(i32 46, float %3902, float %3893, float %3904)  ; FMad(a,b,c)
  %3906 = fmul fast float %3900, %3894
  %3907 = call float @dx.op.tertiary.f32(i32 46, float %3901, float %3895, float %3906)  ; FMad(a,b,c)
  %3908 = call float @dx.op.tertiary.f32(i32 46, float %3902, float %3896, float %3907)  ; FMad(a,b,c)
  %3909 = fsub fast float %3905, %3897
  %3910 = fsub fast float %3908, %3898
  %3911 = fsub fast float %3909, %3877
  %3912 = fadd fast float %3911, %3885
  %3913 = fsub fast float %3910, %3878
  %3914 = fadd fast float %3913, %3885
  %3915 = extractvalue %dx.types.CBufRet.f32 %3876, 3
  %3916 = fmul fast float %3912, %3915
  %3917 = fmul fast float %3914, %3915
  %3918 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3919 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3920 = fsub fast float 1.000000e+00, %3918
  %3921 = fsub fast float 1.000000e+00, %3919
  %3922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3920, float %3921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3923 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %3924 = fcmp fast ugt float %3923, 0.000000e+00
  br i1 %3924, label %3925, label %4228

; <label>:3925                                    ; preds = %3887
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 2
  %3928 = fmul fast float %3927, %3923
  %3929 = extractvalue %dx.types.CBufRet.f32 %3926, 3
  %3930 = fadd fast float %3929, %3928
  %3931 = extractvalue %dx.types.CBufRet.f32 %3892, 2
  %3932 = fadd fast float %3930, %3899
  %3933 = fmul fast float %3905, %3893
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3896, float %3933)  ; FMad(a,b,c)
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %3931, float %3934)  ; FMad(a,b,c)
  %3936 = fsub fast float %3935, %3899
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 2
  %3939 = fsub fast float %3936, %3938
  %3940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3920, float %3921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3940, 2
  %3944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3920, float %3921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3948 = fadd fast float %3945, %3941
  %3949 = fmul fast float %3948, 0x3F847AE140000000
  %3950 = fadd fast float %3946, %3942
  %3951 = fmul fast float %3950, 0x3F847AE140000000
  %3952 = fadd fast float %3947, %3943
  %3953 = fmul fast float %3952, 0x3F847AE140000000
  br label %4228

; <label>:3954                                    ; preds = %3814
  %3955 = and i32 %232, 1
  %3956 = icmp eq i32 %3955, 0
  br i1 %3956, label %4228, label %3957

; <label>:3957                                    ; preds = %3954
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3966 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3967 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3968 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3969 = extractvalue %dx.types.CBufRet.f32 %3962, 3
  %3970 = fadd fast float %3967, %3873
  %3971 = fadd fast float %3968, %3874
  %3972 = fadd fast float %3969, %3875
  %3973 = fmul fast float %3970, %3959
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3971, float %3961, float %3973)  ; FMad(a,b,c)
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3972, float %3963, float %3974)  ; FMad(a,b,c)
  %3976 = fmul fast float %3970, %3964
  %3977 = call float @dx.op.tertiary.f32(i32 46, float %3971, float %3965, float %3976)  ; FMad(a,b,c)
  %3978 = call float @dx.op.tertiary.f32(i32 46, float %3972, float %3966, float %3977)  ; FMad(a,b,c)
  %3979 = fsub fast float %3975, %3967
  %3980 = fsub fast float %3978, %3968
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.CBufRet.f32 %3981, 2
  %3985 = extractvalue %dx.types.CBufRet.f32 %3981, 3
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 3
  %3988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.i32 %3988, 0
  %3990 = extractvalue %dx.types.CBufRet.i32 %3988, 1
  %3991 = udiv i32 %3990, %3989
  %3992 = fsub fast float %3979, %3982
  %3993 = fsub fast float %3980, %3983
  %3994 = call float @dx.op.binary.f32(i32 35, float %3992, float 0.000000e+00)  ; FMax(a,b)
  %3995 = call float @dx.op.binary.f32(i32 35, float %3993, float 0.000000e+00)  ; FMax(a,b)
  %3996 = call float @dx.op.binary.f32(i32 36, float %3994, float %3984)  ; FMin(a,b)
  %3997 = call float @dx.op.binary.f32(i32 36, float %3995, float %3985)  ; FMin(a,b)
  %3998 = add i32 %3989, -1
  %3999 = add i32 %3991, -1
  %4000 = fmul fast float %3996, %3987
  %4001 = fmul fast float %3997, %3987
  %4002 = fptoui float %4000 to i32
  %4003 = fptoui float %4001 to i32
  %4004 = call i32 @dx.op.binary.i32(i32 40, i32 %4002, i32 %3998)  ; UMin(a,b)
  %4005 = call i32 @dx.op.binary.i32(i32 40, i32 %4003, i32 %3999)  ; UMin(a,b)
  %4006 = mul i32 %4005, %3989
  %4007 = add i32 %4006, %4004
  %4008 = shl i32 %4007, 2
  %4009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.i32 %4009, 0
  %4011 = icmp eq i32 %4010, -1
  br i1 %4011, label %4228, label %4012

; <label>:4012                                    ; preds = %3957
  %4013 = mul i32 %4010, 148
  %4014 = add i32 %4013, 4
  %4015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = add i32 %4013, 8
  %4018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = add i32 %4013, 36
  %4021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = add i32 %4013, 60
  %4024 = add i32 %4013, 92
  %4025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.i32 %4025, 0
  %4027 = add i32 %4013, 116
  %4028 = fsub fast float %3979, %4016
  %4029 = fsub fast float %3980, %4019
  %4030 = fmul fast float %3987, %4028
  %4031 = fmul fast float %3987, %4029
  %4032 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4033 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4034 = fsub fast float 1.000000e+00, %4033
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 2
  %4037 = call float @dx.op.unary.f32(i32 83, float %4032)  ; DerivCoarseX(value)
  %4038 = call float @dx.op.unary.f32(i32 83, float %4034)  ; DerivCoarseX(value)
  %4039 = call float @dx.op.unary.f32(i32 84, float %4032)  ; DerivCoarseY(value)
  %4040 = call float @dx.op.unary.f32(i32 84, float %4034)  ; DerivCoarseY(value)
  %4041 = fmul fast float %4037, %4036
  %4042 = fmul fast float %4038, %4036
  %4043 = fmul fast float %4039, %4036
  %4044 = fmul fast float %4040, %4036
  %4045 = call float @dx.op.dot2.f32(i32 54, float %4043, float %4044, float %4043, float %4044)  ; Dot2(ax,ay,bx,by)
  %4046 = call float @dx.op.dot2.f32(i32 54, float %4041, float %4042, float %4041, float %4042)  ; Dot2(ax,ay,bx,by)
  %4047 = call float @dx.op.binary.f32(i32 35, float %4046, float %4045)  ; FMax(a,b)
  %4048 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4049 = fmul fast float %4048, 5.000000e-01
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 1
  %4052 = fadd fast float %4051, %4049
  %4053 = call float @dx.op.binary.f32(i32 35, float %4052, float 0.000000e+00)  ; FMax(a,b)
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 3
  %4056 = fadd fast float %4055, %4053
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 3
  %4059 = fadd fast float %4056, %4058
  %4060 = add i32 %4026, 0
  %4061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4060, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4062 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4061, i32 0)  ; GetDimensions(handle,mipLevel)
  %4063 = extractvalue %dx.types.Dimensions %4062, 0
  %4064 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4063)  ; FirstbitLo(value)
  %4065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.i32 %4065, 1
  %4067 = sub nsw i32 %4066, %4064
  %4068 = sitofp i32 %4067 to float
  %4069 = fsub fast float %4059, %4068
  %4070 = call float @dx.op.binary.f32(i32 35, float %4069, float 0.000000e+00)  ; FMax(a,b)
  %4071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4061, %dx.types.Handle %46, float %4032, float %4034, float %4022, float undef, i32 0, i32 0, i32 undef, float %4070)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = fcmp ule float %4072, 0x3FE0101020000000
  %4074 = extractvalue %dx.types.CBufRet.i32 %4065, 0
  %4075 = and i32 %4074, 128
  %4076 = icmp ne i32 %4075, 0
  %4077 = and i1 %4073, %4076
  br i1 %4077, label %4228, label %4078

; <label>:4078                                    ; preds = %4012
  %4079 = add i32 %4013, 20
  %4080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = add i32 %4013, 24
  %4083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = add i32 %4013, 40
  %4086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = add i32 %4013, 96
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4093 = fmul fast float %4092, %4032
  %4094 = fmul fast float %4092, %4034
  %4095 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4096 = fadd fast float %4093, %4095
  %4097 = fadd fast float %4094, %4095
  %4098 = add i32 %4090, 0
  %4099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4098, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4100 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4099, i32 0)  ; GetDimensions(handle,mipLevel)
  %4101 = extractvalue %dx.types.Dimensions %4100, 0
  %4102 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4101)  ; FirstbitLo(value)
  %4103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.i32 %4103, 1
  %4105 = sub nsw i32 %4104, %4102
  %4106 = sitofp i32 %4105 to float
  %4107 = fsub fast float %4056, %4106
  %4108 = call float @dx.op.binary.f32(i32 35, float %4107, float 0.000000e+00)  ; FMax(a,b)
  %4109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4099, %dx.types.Handle %46, float %4096, float %4097, float %4087, float undef, i32 0, i32 0, i32 undef, float %4108)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = fmul fast float %4110, %4081
  %4112 = fadd fast float %4111, %4084
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 0
  %4115 = extractvalue %dx.types.CBufRet.f32 %4113, 1
  %4116 = extractvalue %dx.types.CBufRet.f32 %4113, 2
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4121 = extractvalue %dx.types.CBufRet.f32 %4113, 3
  %4122 = fadd fast float %4118, %3979
  %4123 = fadd fast float %4120, %3980
  %4124 = fadd fast float %4112, %4121
  %4125 = fmul fast float %4122, %4114
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %4123, float %4115, float %4125)  ; FMad(a,b,c)
  %4127 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4116, float %4126)  ; FMad(a,b,c)
  %4128 = fsub fast float %4127, %4121
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4131 = fsub fast float %4128, %4130
  %4132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.i32 %4132, 0
  %4134 = call i32 @dx.op.binary.i32(i32 40, i32 %4010, i32 %4133)  ; UMin(a,b)
  %4135 = mul i32 %4134, 36
  %4136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.i32 %4136, 0
  %4138 = add i32 %4135, 4
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = fmul fast float %4140, %4032
  %4142 = fmul fast float %4140, %4034
  %4143 = extractvalue %dx.types.CBufRet.f32 %4139, 1
  %4144 = fadd fast float %4141, %4143
  %4145 = fadd fast float %4142, %4143
  %4146 = icmp eq i32 %4137, 0
  br i1 %4146, label %4215, label %4147

; <label>:4147                                    ; preds = %4078
  br label %4148

; <label>:4148                                    ; preds = %4205, %4147
  %4149 = phi float [ %4206, %4205 ], [ 0.000000e+00, %4147 ]
  %4150 = phi float [ %4207, %4205 ], [ 0.000000e+00, %4147 ]
  %4151 = phi float [ %4208, %4205 ], [ 0.000000e+00, %4147 ]
  %4152 = phi float [ %4209, %4205 ], [ 0.000000e+00, %4147 ]
  %4153 = phi float [ %4210, %4205 ], [ 0.000000e+00, %4147 ]
  %4154 = phi float [ %4211, %4205 ], [ 0.000000e+00, %4147 ]
  %4155 = phi i32 [ %4212, %4205 ], [ 0, %4147 ]
  %4156 = shl i32 %4155, 2
  %4157 = add i32 %4023, %4156
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = add i32 %4027, %4156
  %4161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.i32 %4161, 0
  %4163 = add i32 %4162, 0
  %4164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4163, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4165 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4164, i32 0)  ; GetDimensions(handle,mipLevel)
  %4166 = extractvalue %dx.types.Dimensions %4165, 0
  %4167 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4166)  ; FirstbitLo(value)
  %4168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.i32 %4168, 1
  %4170 = sub nsw i32 %4169, %4167
  %4171 = sitofp i32 %4170 to float
  %4172 = fsub fast float %4056, %4171
  %4173 = call float @dx.op.binary.f32(i32 35, float %4172, float 0.000000e+00)  ; FMax(a,b)
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4164, %dx.types.Handle %46, float %4144, float %4145, float %4159, float undef, i32 0, i32 0, i32 undef, float %4173)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = fcmp fast ogt float %4175, 0.000000e+00
  br i1 %4176, label %4177, label %4205

; <label>:4177                                    ; preds = %4148
  %4178 = add i32 %4138, %4156
  %4179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.i32 %4179, 0
  %4181 = and i32 %4180, 32767
  %4182 = mul nuw nsw i32 %4181, 928
  %4183 = add nuw nsw i32 %4182, 48
  %4184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = add nuw nsw i32 %4182, 60
  %4189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.ResRet.f32 %4189, 1
  %4192 = extractvalue %dx.types.ResRet.f32 %4189, 2
  %4193 = fmul fast float %4185, %4175
  %4194 = fmul fast float %4186, %4175
  %4195 = fmul fast float %4187, %4175
  %4196 = fadd fast float %4193, %4149
  %4197 = fadd fast float %4194, %4150
  %4198 = fadd fast float %4195, %4151
  %4199 = fmul fast float %4190, %4175
  %4200 = fmul fast float %4191, %4175
  %4201 = fmul fast float %4192, %4175
  %4202 = fadd fast float %4199, %4152
  %4203 = fadd fast float %4200, %4153
  %4204 = fadd fast float %4201, %4154
  br label %4205

; <label>:4205                                    ; preds = %4177, %4148
  %4206 = phi float [ %4196, %4177 ], [ %4149, %4148 ]
  %4207 = phi float [ %4197, %4177 ], [ %4150, %4148 ]
  %4208 = phi float [ %4198, %4177 ], [ %4151, %4148 ]
  %4209 = phi float [ %4202, %4177 ], [ %4152, %4148 ]
  %4210 = phi float [ %4203, %4177 ], [ %4153, %4148 ]
  %4211 = phi float [ %4204, %4177 ], [ %4154, %4148 ]
  %4212 = add nuw i32 %4155, 1
  %4213 = icmp eq i32 %4212, %4137
  br i1 %4213, label %4214, label %4148

; <label>:4214                                    ; preds = %4205
  br label %4215

; <label>:4215                                    ; preds = %4214, %4078
  %4216 = phi float [ 0.000000e+00, %4078 ], [ %4206, %4214 ]
  %4217 = phi float [ 0.000000e+00, %4078 ], [ %4207, %4214 ]
  %4218 = phi float [ 0.000000e+00, %4078 ], [ %4208, %4214 ]
  %4219 = phi float [ 0.000000e+00, %4078 ], [ %4209, %4214 ]
  %4220 = phi float [ 0.000000e+00, %4078 ], [ %4210, %4214 ]
  %4221 = phi float [ 0.000000e+00, %4078 ], [ %4211, %4214 ]
  %4222 = fadd fast float %4219, %4216
  %4223 = fmul fast float %4222, 0x3F847AE140000000
  %4224 = fadd fast float %4220, %4217
  %4225 = fmul fast float %4224, 0x3F847AE140000000
  %4226 = fadd fast float %4221, %4218
  %4227 = fmul fast float %4226, 0x3F847AE140000000
  br label %4228

; <label>:4228                                    ; preds = %4215, %4012, %3957, %3954, %3925, %3887
  %4229 = phi float [ %3939, %3925 ], [ -1.310720e+05, %3887 ], [ %4131, %4215 ], [ -1.310720e+05, %3957 ], [ -1.310720e+05, %4012 ], [ -1.310720e+05, %3954 ]
  %4230 = phi float [ %3949, %3925 ], [ 0.000000e+00, %3887 ], [ %4223, %4215 ], [ 0.000000e+00, %3957 ], [ 0.000000e+00, %4012 ], [ 0.000000e+00, %3954 ]
  %4231 = phi float [ %3951, %3925 ], [ 0.000000e+00, %3887 ], [ %4225, %4215 ], [ 0.000000e+00, %3957 ], [ 0.000000e+00, %4012 ], [ 0.000000e+00, %3954 ]
  %4232 = phi float [ %3953, %3925 ], [ 0.000000e+00, %3887 ], [ %4227, %4215 ], [ 0.000000e+00, %3957 ], [ 0.000000e+00, %4012 ], [ 0.000000e+00, %3954 ]
  %4233 = phi i1 [ true, %3925 ], [ false, %3887 ], [ true, %4215 ], [ false, %3957 ], [ false, %4012 ], [ false, %3954 ]
  %4234 = and i32 %232, 3
  %4235 = icmp eq i32 %4234, 1
  %4236 = select i1 %4235, float 1.000000e+00, float 0.000000e+00
  %4237 = fsub fast float %4229, %196
  %4238 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4239 = select i1 %4233, float %4238, float 1.000000e+00
  %4240 = fmul fast float %4239, %4236
  %4241 = icmp eq i32 %4234, 3
  %4242 = select i1 %4241, float 1.000000e+00, float %4240
  %4243 = call float @dx.op.binary.f32(i32 35, float %3830, float %4242)  ; FMax(a,b)
  %4244 = fcmp fast olt float %4242, 1.000000e+00
  %4245 = fcmp uge float %71, 0.000000e+00
  %4246 = and i1 %4245, %4244
  br i1 %4246, label %4247, label %4257

; <label>:4247                                    ; preds = %4228
  %4248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = extractvalue %dx.types.ResRet.f32 %4248, 1
  %4251 = extractvalue %dx.types.ResRet.f32 %4248, 2
  %4252 = fadd fast float %4249, %4243
  %4253 = fcmp ule float %70, 0.000000e+00
  %4254 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = select i1 %4253, float %4254, float 1.000000e+00
  %4256 = fmul fast float %4255, %4251
  br label %4257

; <label>:4257                                    ; preds = %4247, %4228
  %4258 = phi float [ %4252, %4247 ], [ %4243, %4228 ]
  %4259 = phi float [ %4250, %4247 ], [ 0.000000e+00, %4228 ]
  %4260 = phi float [ %4256, %4247 ], [ 0.000000e+00, %4228 ]
  %4261 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4263 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4264 = fcmp fast une float %4262, 0.000000e+00
  %4265 = fcmp fast une float %4263, 0.000000e+00
  %4266 = or i1 %4264, %4265
  br i1 %4266, label %4267, label %4826

; <label>:4267                                    ; preds = %4257
  br i1 %4264, label %4268, label %4541

; <label>:4268                                    ; preds = %4267
  %4269 = call float @dx.op.unary.f32(i32 23, float %3827)  ; Log(value)
  %4270 = fmul fast float %4269, 4.000000e+00
  %4271 = call float @dx.op.unary.f32(i32 21, float %4270)  ; Exp(value)
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = fmul fast float %4273, %58
  %4275 = fmul fast float %4273, %59
  %4276 = fmul fast float %4273, %60
  %4277 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4278 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4279 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4280 = call float @dx.op.unary.f32(i32 23, float %4277)  ; Log(value)
  %4281 = call float @dx.op.unary.f32(i32 23, float %4278)  ; Log(value)
  %4282 = call float @dx.op.unary.f32(i32 23, float %4279)  ; Log(value)
  %4283 = fmul fast float %4280, 4.000000e+00
  %4284 = fmul fast float %4281, 4.000000e+00
  %4285 = fmul fast float %4282, 4.000000e+00
  %4286 = call float @dx.op.unary.f32(i32 21, float %4283)  ; Exp(value)
  %4287 = call float @dx.op.unary.f32(i32 21, float %4284)  ; Exp(value)
  %4288 = call float @dx.op.unary.f32(i32 21, float %4285)  ; Exp(value)
  %4289 = fadd fast float %4287, %4286
  %4290 = fadd fast float %4289, %4288
  %4291 = fdiv fast float 1.000000e+00, %4290
  %4292 = fmul fast float %4291, %4286
  %4293 = fcmp fast ogt float %67, 0.000000e+00
  %4294 = fcmp fast ogt float %68, 0.000000e+00
  %4295 = fcmp fast ogt float %69, 0.000000e+00
  %4296 = fcmp fast olt float %67, 0.000000e+00
  %4297 = fcmp fast olt float %68, 0.000000e+00
  %4298 = fcmp fast olt float %69, 0.000000e+00
  %4299 = zext i1 %4293 to i32
  %4300 = zext i1 %4294 to i32
  %4301 = zext i1 %4295 to i32
  %4302 = zext i1 %4296 to i32
  %4303 = zext i1 %4297 to i32
  %4304 = zext i1 %4298 to i32
  %4305 = sub nsw i32 %4299, %4302
  %4306 = sub nsw i32 %4300, %4303
  %4307 = sub nsw i32 %4301, %4304
  %4308 = call float @dx.op.unary.f32(i32 83, float %4274)  ; DerivCoarseX(value)
  %4309 = call float @dx.op.unary.f32(i32 83, float %4275)  ; DerivCoarseX(value)
  %4310 = call float @dx.op.unary.f32(i32 83, float %4276)  ; DerivCoarseX(value)
  %4311 = call float @dx.op.unary.f32(i32 84, float %4274)  ; DerivCoarseY(value)
  %4312 = call float @dx.op.unary.f32(i32 84, float %4275)  ; DerivCoarseY(value)
  %4313 = call float @dx.op.unary.f32(i32 84, float %4276)  ; DerivCoarseY(value)
  %4314 = fcmp fast ole float %264, %4292
  %4315 = fmul fast float %4291, %4289
  %4316 = fcmp fast ole float %264, %4315
  %4317 = select i1 %4316, float %4276, float %4274
  %4318 = select i1 %4316, float %4274, float %4275
  %4319 = select i1 %4314, float %4275, float %4317
  %4320 = select i1 %4314, float %4276, float %4318
  %4321 = select i1 %4316, float %4310, float %4308
  %4322 = select i1 %4316, float %4308, float %4309
  %4323 = select i1 %4314, float %4309, float %4321
  %4324 = select i1 %4314, float %4310, float %4322
  %4325 = select i1 %4316, float %4313, float %4311
  %4326 = select i1 %4316, float %4311, float %4312
  %4327 = select i1 %4314, float %4312, float %4325
  %4328 = select i1 %4314, float %4313, float %4326
  %4329 = call float @dx.op.unary.f32(i32 27, float %4319)  ; Round_ni(value)
  %4330 = call float @dx.op.unary.f32(i32 27, float %4320)  ; Round_ni(value)
  %4331 = fptosi float %4329 to i32
  %4332 = fptosi float %4330 to i32
  %4333 = xor i32 %4332, %4331
  %4334 = sitofp i32 %4333 to float
  %4335 = fptosi float %4334 to i32
  %4336 = sitofp i32 %4335 to float
  %4337 = fmul fast float %4336, 0x3FE3C6EF40000000
  %4338 = frem fast float %4329, 2.560000e+02
  %4339 = frem fast float %4330, 2.560000e+02
  %4340 = fptoui float %4338 to i32
  %4341 = fptoui float %4339 to i32
  %4342 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4340, i32 %4341, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.ResRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.ResRet.f32 %4342, 2
  %4346 = fadd fast float %4343, %4337
  %4347 = fadd fast float %4344, %4337
  %4348 = fadd fast float %4345, %4337
  %4349 = call float @dx.op.unary.f32(i32 22, float %4346)  ; Frc(value)
  %4350 = call float @dx.op.unary.f32(i32 22, float %4347)  ; Frc(value)
  %4351 = call float @dx.op.unary.f32(i32 22, float %4348)  ; Frc(value)
  %4352 = fmul fast float %4351, 0x401921FB60000000
  %4353 = call float @dx.op.unary.f32(i32 13, float %4352)  ; Sin(value)
  %4354 = call float @dx.op.unary.f32(i32 12, float %4352)  ; Cos(value)
  %4355 = fsub fast float -0.000000e+00, %4354
  %4356 = fmul fast float %4354, %4319
  %4357 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4320, float %4356)  ; FMad(a,b,c)
  %4358 = fmul fast float %4353, %4319
  %4359 = call float @dx.op.tertiary.f32(i32 46, float %4355, float %4320, float %4358)  ; FMad(a,b,c)
  %4360 = fadd fast float %4357, %4349
  %4361 = fadd fast float %4359, %4350
  %4362 = extractvalue %dx.types.CBufRet.f32 %4272, 3
  %4363 = bitcast float %4362 to i32
  %4364 = icmp eq i32 %4363, 0
  br i1 %4364, label %4403, label %4365

; <label>:4365                                    ; preds = %4268
  %4366 = add i32 %4363, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4367, %dx.types.Handle %108, float %4360, float %4361, float undef, float undef, i32 0, i32 0, i32 undef, float %4323, float %4324, float undef, float %4327, float %4328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4372 = extractvalue %dx.types.CBufRet.f32 %4370, 2
  %4373 = fsub fast float 1.000000e+00, %4262
  %4374 = call float @dx.op.binary.f32(i32 35, float %4373, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4375 = bitcast float %4262 to i32
  %4376 = sitofp i32 %4375 to float
  %4377 = fadd fast float %4376, 0xC1CFBF8940000000
  %4378 = fmul fast float %4372, %4377
  %4379 = fadd fast float %4378, 0x41CFBF8940000000
  %4380 = fptosi float %4379 to i32
  %4381 = bitcast i32 %4380 to float
  %4382 = bitcast float %4374 to i32
  %4383 = sitofp i32 %4382 to float
  %4384 = fadd fast float %4383, 0xC1CFBF8940000000
  %4385 = fmul fast float %4384, %4372
  %4386 = fadd fast float %4385, 0x41CFBF8940000000
  %4387 = fptosi float %4386 to i32
  %4388 = bitcast i32 %4387 to float
  %4389 = fmul fast float %4381, %4371
  %4390 = fmul fast float %4388, %4371
  %4391 = fsub fast float %4374, %4389
  %4392 = fadd fast float %4390, %4374
  %4393 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4394 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4395 = fsub fast float %4369, %4393
  %4396 = fsub fast float %4394, %4393
  %4397 = bitcast float %4396 to i32
  %4398 = sub nsw i32 2129859010, %4397
  %4399 = bitcast i32 %4398 to float
  %4400 = fmul fast float %4399, %4395
  %4401 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4402 = fcmp fast olt float %4401, 0x3F70101020000000
  br i1 %4402, label %4541, label %4403

; <label>:4403                                    ; preds = %4365, %4268
  %4404 = phi float [ %4401, %4365 ], [ %4262, %4268 ]
  %4405 = fmul fast float %4404, %4271
  %4406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.i32 %4406, 1
  %4408 = extractvalue %dx.types.CBufRet.i32 %4406, 0
  %4409 = add i32 %4408, 0
  %4410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4410, %dx.types.Handle %107, float %4360, float %4361, float undef, float undef, i32 0, i32 0, i32 undef, float %4323, float %4324, float undef, float %4327, float %4328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.ResRet.f32 %4411, 1
  %4414 = extractvalue %dx.types.ResRet.f32 %4411, 2
  %4415 = extractvalue %dx.types.ResRet.f32 %4411, 3
  %4416 = and i32 %4407, 255
  %4417 = uitofp i32 %4416 to float
  %4418 = lshr i32 %4407, 8
  %4419 = and i32 %4418, 255
  %4420 = uitofp i32 %4419 to float
  %4421 = fmul fast float %4415, %4417
  %4422 = fadd fast float %4421, %4420
  %4423 = fmul fast float %4422, 0x3F70101000000000
  %4424 = fadd fast float %4423, 0xBFB99999A0000000
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fmul fast float %4425, 0x3FF1C71C80000000
  %4427 = call float @dx.op.binary.f32(i32 36, float %4423, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4428 = fsub fast float 1.000000e+00, %4426
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = fmul fast float %4429, %4412
  %4431 = fmul fast float %4429, %4413
  %4432 = fmul fast float %4429, %4414
  %4433 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4434 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4435 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4436 = fmul fast float %4426, %4412
  %4437 = fmul fast float %4426, %4413
  %4438 = fmul fast float %4426, %4414
  %4439 = fadd fast float %4436, %4427
  %4440 = fadd fast float %4437, %4427
  %4441 = fadd fast float %4438, %4427
  %4442 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4443 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4444 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.i32 %4445, 3
  %4447 = extractvalue %dx.types.CBufRet.i32 %4445, 2
  %4448 = add i32 %4447, 0
  %4449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4449, %dx.types.Handle %107, float %4360, float %4361, float undef, float undef, i32 0, i32 0, i32 undef, float %4323, float %4324, float undef, float %4327, float %4328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.ResRet.f32 %4450, 1
  %4453 = extractvalue %dx.types.ResRet.f32 %4450, 2
  %4454 = extractvalue %dx.types.ResRet.f32 %4450, 3
  %4455 = and i32 %4446, 255
  %4456 = uitofp i32 %4455 to float
  %4457 = lshr i32 %4446, 8
  %4458 = and i32 %4457, 255
  %4459 = uitofp i32 %4458 to float
  %4460 = lshr i32 %4446, 16
  %4461 = and i32 %4460, 255
  %4462 = uitofp i32 %4461 to float
  %4463 = fmul fast float %4462, 0x3F70101000000000
  %4464 = fmul fast float %4451, %4456
  %4465 = fadd fast float %4464, %4459
  %4466 = fmul fast float %4465, 0x3F70101000000000
  %4467 = fadd fast float %4452, -5.000000e-01
  %4468 = fadd fast float %4454, -5.000000e-01
  %4469 = fmul fast float %4467, %4463
  %4470 = fmul fast float %4468, %4463
  %4471 = fadd fast float %4469, 5.000000e-01
  %4472 = fadd fast float %4470, 5.000000e-01
  %4473 = fmul fast float %4471, 2.000000e+00
  %4474 = fadd fast float %4473, -1.000000e+00
  %4475 = fmul fast float %4472, 2.000000e+00
  %4476 = fadd fast float %4475, -1.000000e+00
  %4477 = fadd fast float %4474, %4476
  %4478 = fmul fast float %4477, 5.000000e-01
  %4479 = fsub fast float %4474, %4476
  %4480 = fmul fast float %4479, 5.000000e-01
  %4481 = call float @dx.op.unary.f32(i32 6, float %4478)  ; FAbs(value)
  %4482 = fsub fast float 1.000000e+00, %4481
  %4483 = call float @dx.op.unary.f32(i32 6, float %4480)  ; FAbs(value)
  %4484 = fsub fast float %4482, %4483
  %4485 = call float @dx.op.dot3.f32(i32 55, float %4478, float %4480, float %4484, float %4478, float %4480, float %4484)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = call float @dx.op.unary.f32(i32 25, float %4485)  ; Rsqrt(value)
  %4487 = fmul fast float %4478, %4486
  %4488 = fmul fast float %4480, %4486
  %4489 = select i1 %4316, i32 %4306, i32 %4307
  %4490 = select i1 %4314, i32 %4305, i32 %4489
  %4491 = sitofp i32 %4490 to float
  %4492 = fmul fast float %4484, %4491
  %4493 = fmul fast float %4492, %4486
  %4494 = select i1 %4316, float %4493, float %4488
  %4495 = select i1 %4316, float %4488, float %4493
  %4496 = select i1 %4314, float %4493, float %4487
  %4497 = select i1 %4314, float %4488, float %4494
  %4498 = select i1 %4314, float %4487, float %4495
  %4499 = fsub fast float %4433, %3866
  %4500 = fsub fast float %4434, %3867
  %4501 = fsub fast float %4435, %3868
  %4502 = fmul fast float %4499, %4405
  %4503 = fmul fast float %4500, %4405
  %4504 = fmul fast float %4501, %4405
  %4505 = fadd fast float %4502, %3866
  %4506 = fadd fast float %4503, %3867
  %4507 = fadd fast float %4504, %3868
  %4508 = fsub fast float %4442, %3851
  %4509 = fsub fast float %4443, %3852
  %4510 = fsub fast float %4444, %3853
  %4511 = fmul fast float %4508, %4405
  %4512 = fmul fast float %4509, %4405
  %4513 = fmul fast float %4510, %4405
  %4514 = fadd fast float %4511, %3851
  %4515 = fadd fast float %4512, %3852
  %4516 = fadd fast float %4513, %3853
  %4517 = fadd fast float %4496, %3815
  %4518 = fadd fast float %4497, %3816
  %4519 = fadd fast float %4498, %3817
  %4520 = call float @dx.op.dot3.f32(i32 55, float %4517, float %4518, float %4519, float %4517, float %4518, float %4519)  ; Dot3(ax,ay,az,bx,by,bz)
  %4521 = call float @dx.op.unary.f32(i32 25, float %4520)  ; Rsqrt(value)
  %4522 = fmul fast float %4517, %4521
  %4523 = fmul fast float %4518, %4521
  %4524 = fmul fast float %4519, %4521
  %4525 = fsub fast float %4522, %3815
  %4526 = fsub fast float %4523, %3816
  %4527 = fsub fast float %4524, %3817
  %4528 = fmul fast float %4525, %4405
  %4529 = fmul fast float %4526, %4405
  %4530 = fmul fast float %4527, %4405
  %4531 = fadd fast float %4528, %3815
  %4532 = fadd fast float %4529, %3816
  %4533 = fadd fast float %4530, %3817
  %4534 = call float @dx.op.binary.f32(i32 36, float %3827, float %4453)  ; FMin(a,b)
  %4535 = fsub fast float %4534, %3827
  %4536 = fmul fast float %4535, %4405
  %4537 = fadd fast float %4536, %3827
  %4538 = fsub fast float %4466, %3854
  %4539 = fmul fast float %4538, %4405
  %4540 = fadd fast float %4539, %3854
  br label %4541

; <label>:4541                                    ; preds = %4403, %4365, %4267
  %4542 = phi float [ %4505, %4403 ], [ %3866, %4365 ], [ %3866, %4267 ]
  %4543 = phi float [ %4506, %4403 ], [ %3867, %4365 ], [ %3867, %4267 ]
  %4544 = phi float [ %4507, %4403 ], [ %3868, %4365 ], [ %3868, %4267 ]
  %4545 = phi float [ %4514, %4403 ], [ %3851, %4365 ], [ %3851, %4267 ]
  %4546 = phi float [ %4515, %4403 ], [ %3852, %4365 ], [ %3852, %4267 ]
  %4547 = phi float [ %4516, %4403 ], [ %3853, %4365 ], [ %3853, %4267 ]
  %4548 = phi float [ %4531, %4403 ], [ %3815, %4365 ], [ %3815, %4267 ]
  %4549 = phi float [ %4532, %4403 ], [ %3816, %4365 ], [ %3816, %4267 ]
  %4550 = phi float [ %4533, %4403 ], [ %3817, %4365 ], [ %3817, %4267 ]
  %4551 = phi float [ %4540, %4403 ], [ %3854, %4365 ], [ %3854, %4267 ]
  %4552 = phi float [ %4537, %4403 ], [ %3827, %4365 ], [ %3827, %4267 ]
  br i1 %4265, label %4553, label %4826

; <label>:4553                                    ; preds = %4541
  %4554 = call float @dx.op.unary.f32(i32 23, float %4552)  ; Log(value)
  %4555 = fmul fast float %4554, 4.000000e+00
  %4556 = call float @dx.op.unary.f32(i32 21, float %4555)  ; Exp(value)
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 0
  %4559 = fmul fast float %4558, %58
  %4560 = fmul fast float %4558, %59
  %4561 = fmul fast float %4558, %60
  %4562 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4563 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4564 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4565 = call float @dx.op.unary.f32(i32 23, float %4562)  ; Log(value)
  %4566 = call float @dx.op.unary.f32(i32 23, float %4563)  ; Log(value)
  %4567 = call float @dx.op.unary.f32(i32 23, float %4564)  ; Log(value)
  %4568 = fmul fast float %4565, 4.000000e+00
  %4569 = fmul fast float %4566, 4.000000e+00
  %4570 = fmul fast float %4567, 4.000000e+00
  %4571 = call float @dx.op.unary.f32(i32 21, float %4568)  ; Exp(value)
  %4572 = call float @dx.op.unary.f32(i32 21, float %4569)  ; Exp(value)
  %4573 = call float @dx.op.unary.f32(i32 21, float %4570)  ; Exp(value)
  %4574 = fadd fast float %4572, %4571
  %4575 = fadd fast float %4574, %4573
  %4576 = fdiv fast float 1.000000e+00, %4575
  %4577 = fmul fast float %4576, %4571
  %4578 = fcmp fast ogt float %67, 0.000000e+00
  %4579 = fcmp fast ogt float %68, 0.000000e+00
  %4580 = fcmp fast ogt float %69, 0.000000e+00
  %4581 = fcmp fast olt float %67, 0.000000e+00
  %4582 = fcmp fast olt float %68, 0.000000e+00
  %4583 = fcmp fast olt float %69, 0.000000e+00
  %4584 = zext i1 %4578 to i32
  %4585 = zext i1 %4579 to i32
  %4586 = zext i1 %4580 to i32
  %4587 = zext i1 %4581 to i32
  %4588 = zext i1 %4582 to i32
  %4589 = zext i1 %4583 to i32
  %4590 = sub nsw i32 %4584, %4587
  %4591 = sub nsw i32 %4585, %4588
  %4592 = sub nsw i32 %4586, %4589
  %4593 = call float @dx.op.unary.f32(i32 83, float %4559)  ; DerivCoarseX(value)
  %4594 = call float @dx.op.unary.f32(i32 83, float %4560)  ; DerivCoarseX(value)
  %4595 = call float @dx.op.unary.f32(i32 83, float %4561)  ; DerivCoarseX(value)
  %4596 = call float @dx.op.unary.f32(i32 84, float %4559)  ; DerivCoarseY(value)
  %4597 = call float @dx.op.unary.f32(i32 84, float %4560)  ; DerivCoarseY(value)
  %4598 = call float @dx.op.unary.f32(i32 84, float %4561)  ; DerivCoarseY(value)
  %4599 = fcmp fast ole float %264, %4577
  %4600 = fmul fast float %4576, %4574
  %4601 = fcmp fast ole float %264, %4600
  %4602 = select i1 %4601, float %4561, float %4559
  %4603 = select i1 %4601, float %4559, float %4560
  %4604 = select i1 %4599, float %4560, float %4602
  %4605 = select i1 %4599, float %4561, float %4603
  %4606 = select i1 %4601, float %4595, float %4593
  %4607 = select i1 %4601, float %4593, float %4594
  %4608 = select i1 %4599, float %4594, float %4606
  %4609 = select i1 %4599, float %4595, float %4607
  %4610 = select i1 %4601, float %4598, float %4596
  %4611 = select i1 %4601, float %4596, float %4597
  %4612 = select i1 %4599, float %4597, float %4610
  %4613 = select i1 %4599, float %4598, float %4611
  %4614 = call float @dx.op.unary.f32(i32 27, float %4604)  ; Round_ni(value)
  %4615 = call float @dx.op.unary.f32(i32 27, float %4605)  ; Round_ni(value)
  %4616 = fptosi float %4614 to i32
  %4617 = fptosi float %4615 to i32
  %4618 = xor i32 %4617, %4616
  %4619 = sitofp i32 %4618 to float
  %4620 = fptosi float %4619 to i32
  %4621 = sitofp i32 %4620 to float
  %4622 = fmul fast float %4621, 0x3FE3C6EF40000000
  %4623 = frem fast float %4614, 2.560000e+02
  %4624 = frem fast float %4615, 2.560000e+02
  %4625 = fptoui float %4623 to i32
  %4626 = fptoui float %4624 to i32
  %4627 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4625, i32 %4626, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.ResRet.f32 %4627, 2
  %4631 = fadd fast float %4628, %4622
  %4632 = fadd fast float %4629, %4622
  %4633 = fadd fast float %4630, %4622
  %4634 = call float @dx.op.unary.f32(i32 22, float %4631)  ; Frc(value)
  %4635 = call float @dx.op.unary.f32(i32 22, float %4632)  ; Frc(value)
  %4636 = call float @dx.op.unary.f32(i32 22, float %4633)  ; Frc(value)
  %4637 = fmul fast float %4636, 0x401921FB60000000
  %4638 = call float @dx.op.unary.f32(i32 13, float %4637)  ; Sin(value)
  %4639 = call float @dx.op.unary.f32(i32 12, float %4637)  ; Cos(value)
  %4640 = fsub fast float -0.000000e+00, %4639
  %4641 = fmul fast float %4639, %4604
  %4642 = call float @dx.op.tertiary.f32(i32 46, float %4638, float %4605, float %4641)  ; FMad(a,b,c)
  %4643 = fmul fast float %4638, %4604
  %4644 = call float @dx.op.tertiary.f32(i32 46, float %4640, float %4605, float %4643)  ; FMad(a,b,c)
  %4645 = fadd fast float %4642, %4634
  %4646 = fadd fast float %4644, %4635
  %4647 = extractvalue %dx.types.CBufRet.f32 %4557, 3
  %4648 = bitcast float %4647 to i32
  %4649 = icmp eq i32 %4648, 0
  br i1 %4649, label %4688, label %4650

; <label>:4650                                    ; preds = %4553
  %4651 = add i32 %4648, 0
  %4652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4653 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4652, %dx.types.Handle %108, float %4645, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float %4608, float %4609, float undef, float %4612, float %4613, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 1
  %4657 = extractvalue %dx.types.CBufRet.f32 %4655, 2
  %4658 = fsub fast float 1.000000e+00, %4263
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4660 = bitcast float %4263 to i32
  %4661 = sitofp i32 %4660 to float
  %4662 = fadd fast float %4661, 0xC1CFBF8940000000
  %4663 = fmul fast float %4657, %4662
  %4664 = fadd fast float %4663, 0x41CFBF8940000000
  %4665 = fptosi float %4664 to i32
  %4666 = bitcast i32 %4665 to float
  %4667 = bitcast float %4659 to i32
  %4668 = sitofp i32 %4667 to float
  %4669 = fadd fast float %4668, 0xC1CFBF8940000000
  %4670 = fmul fast float %4669, %4657
  %4671 = fadd fast float %4670, 0x41CFBF8940000000
  %4672 = fptosi float %4671 to i32
  %4673 = bitcast i32 %4672 to float
  %4674 = fmul fast float %4666, %4656
  %4675 = fmul fast float %4673, %4656
  %4676 = fsub fast float %4659, %4674
  %4677 = fadd fast float %4675, %4659
  %4678 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4679 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4680 = fsub fast float %4654, %4678
  %4681 = fsub fast float %4679, %4678
  %4682 = bitcast float %4681 to i32
  %4683 = sub nsw i32 2129859010, %4682
  %4684 = bitcast i32 %4683 to float
  %4685 = fmul fast float %4684, %4680
  %4686 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4687 = fcmp fast olt float %4686, 0x3F70101020000000
  br i1 %4687, label %4826, label %4688

; <label>:4688                                    ; preds = %4650, %4553
  %4689 = phi float [ %4686, %4650 ], [ %4263, %4553 ]
  %4690 = fmul fast float %4689, %4556
  %4691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.i32 %4691, 1
  %4693 = extractvalue %dx.types.CBufRet.i32 %4691, 0
  %4694 = add i32 %4693, 0
  %4695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4696 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4695, %dx.types.Handle %107, float %4645, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float %4608, float %4609, float undef, float %4612, float %4613, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.ResRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.ResRet.f32 %4696, 2
  %4700 = extractvalue %dx.types.ResRet.f32 %4696, 3
  %4701 = and i32 %4692, 255
  %4702 = uitofp i32 %4701 to float
  %4703 = lshr i32 %4692, 8
  %4704 = and i32 %4703, 255
  %4705 = uitofp i32 %4704 to float
  %4706 = fmul fast float %4700, %4702
  %4707 = fadd fast float %4706, %4705
  %4708 = fmul fast float %4707, 0x3F70101000000000
  %4709 = fadd fast float %4708, 0xBFB99999A0000000
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = fmul fast float %4710, 0x3FF1C71C80000000
  %4712 = call float @dx.op.binary.f32(i32 36, float %4708, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4713 = fsub fast float 1.000000e+00, %4711
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fmul fast float %4714, %4697
  %4716 = fmul fast float %4714, %4698
  %4717 = fmul fast float %4714, %4699
  %4718 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = fmul fast float %4711, %4697
  %4722 = fmul fast float %4711, %4698
  %4723 = fmul fast float %4711, %4699
  %4724 = fadd fast float %4721, %4712
  %4725 = fadd fast float %4722, %4712
  %4726 = fadd fast float %4723, %4712
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.i32 %4730, 3
  %4732 = extractvalue %dx.types.CBufRet.i32 %4730, 2
  %4733 = add i32 %4732, 0
  %4734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4735 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4734, %dx.types.Handle %107, float %4645, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float %4608, float %4609, float undef, float %4612, float %4613, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4736 = extractvalue %dx.types.ResRet.f32 %4735, 0
  %4737 = extractvalue %dx.types.ResRet.f32 %4735, 1
  %4738 = extractvalue %dx.types.ResRet.f32 %4735, 2
  %4739 = extractvalue %dx.types.ResRet.f32 %4735, 3
  %4740 = and i32 %4731, 255
  %4741 = uitofp i32 %4740 to float
  %4742 = lshr i32 %4731, 8
  %4743 = and i32 %4742, 255
  %4744 = uitofp i32 %4743 to float
  %4745 = lshr i32 %4731, 16
  %4746 = and i32 %4745, 255
  %4747 = uitofp i32 %4746 to float
  %4748 = fmul fast float %4747, 0x3F70101000000000
  %4749 = fmul fast float %4736, %4741
  %4750 = fadd fast float %4749, %4744
  %4751 = fmul fast float %4750, 0x3F70101000000000
  %4752 = fadd fast float %4737, -5.000000e-01
  %4753 = fadd fast float %4739, -5.000000e-01
  %4754 = fmul fast float %4752, %4748
  %4755 = fmul fast float %4753, %4748
  %4756 = fadd fast float %4754, 5.000000e-01
  %4757 = fadd fast float %4755, 5.000000e-01
  %4758 = fmul fast float %4756, 2.000000e+00
  %4759 = fadd fast float %4758, -1.000000e+00
  %4760 = fmul fast float %4757, 2.000000e+00
  %4761 = fadd fast float %4760, -1.000000e+00
  %4762 = fadd fast float %4759, %4761
  %4763 = fmul fast float %4762, 5.000000e-01
  %4764 = fsub fast float %4759, %4761
  %4765 = fmul fast float %4764, 5.000000e-01
  %4766 = call float @dx.op.unary.f32(i32 6, float %4763)  ; FAbs(value)
  %4767 = fsub fast float 1.000000e+00, %4766
  %4768 = call float @dx.op.unary.f32(i32 6, float %4765)  ; FAbs(value)
  %4769 = fsub fast float %4767, %4768
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4765, float %4769, float %4763, float %4765, float %4769)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = call float @dx.op.unary.f32(i32 25, float %4770)  ; Rsqrt(value)
  %4772 = fmul fast float %4763, %4771
  %4773 = fmul fast float %4765, %4771
  %4774 = select i1 %4601, i32 %4591, i32 %4592
  %4775 = select i1 %4599, i32 %4590, i32 %4774
  %4776 = sitofp i32 %4775 to float
  %4777 = fmul fast float %4769, %4776
  %4778 = fmul fast float %4777, %4771
  %4779 = select i1 %4601, float %4778, float %4773
  %4780 = select i1 %4601, float %4773, float %4778
  %4781 = select i1 %4599, float %4778, float %4772
  %4782 = select i1 %4599, float %4773, float %4779
  %4783 = select i1 %4599, float %4772, float %4780
  %4784 = fsub fast float %4718, %4542
  %4785 = fsub fast float %4719, %4543
  %4786 = fsub fast float %4720, %4544
  %4787 = fmul fast float %4784, %4690
  %4788 = fmul fast float %4785, %4690
  %4789 = fmul fast float %4786, %4690
  %4790 = fadd fast float %4787, %4542
  %4791 = fadd fast float %4788, %4543
  %4792 = fadd fast float %4789, %4544
  %4793 = fsub fast float %4727, %4545
  %4794 = fsub fast float %4728, %4546
  %4795 = fsub fast float %4729, %4547
  %4796 = fmul fast float %4793, %4690
  %4797 = fmul fast float %4794, %4690
  %4798 = fmul fast float %4795, %4690
  %4799 = fadd fast float %4796, %4545
  %4800 = fadd fast float %4797, %4546
  %4801 = fadd fast float %4798, %4547
  %4802 = fadd fast float %4781, %4548
  %4803 = fadd fast float %4782, %4549
  %4804 = fadd fast float %4783, %4550
  %4805 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %4804, float %4802, float %4803, float %4804)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = call float @dx.op.unary.f32(i32 25, float %4805)  ; Rsqrt(value)
  %4807 = fmul fast float %4802, %4806
  %4808 = fmul fast float %4803, %4806
  %4809 = fmul fast float %4804, %4806
  %4810 = fsub fast float %4807, %4548
  %4811 = fsub fast float %4808, %4549
  %4812 = fsub fast float %4809, %4550
  %4813 = fmul fast float %4810, %4690
  %4814 = fmul fast float %4811, %4690
  %4815 = fmul fast float %4812, %4690
  %4816 = fadd fast float %4813, %4548
  %4817 = fadd fast float %4814, %4549
  %4818 = fadd fast float %4815, %4550
  %4819 = call float @dx.op.binary.f32(i32 36, float %4552, float %4738)  ; FMin(a,b)
  %4820 = fsub fast float %4819, %4552
  %4821 = fmul fast float %4820, %4690
  %4822 = fadd fast float %4821, %4552
  %4823 = fsub fast float %4751, %4551
  %4824 = fmul fast float %4823, %4690
  %4825 = fadd fast float %4824, %4551
  br label %4826

; <label>:4826                                    ; preds = %4688, %4650, %4541, %4257
  %4827 = phi float [ %4790, %4688 ], [ %4542, %4650 ], [ %4542, %4541 ], [ %3866, %4257 ]
  %4828 = phi float [ %4791, %4688 ], [ %4543, %4650 ], [ %4543, %4541 ], [ %3867, %4257 ]
  %4829 = phi float [ %4792, %4688 ], [ %4544, %4650 ], [ %4544, %4541 ], [ %3868, %4257 ]
  %4830 = phi float [ %4799, %4688 ], [ %4545, %4650 ], [ %4545, %4541 ], [ %3851, %4257 ]
  %4831 = phi float [ %4800, %4688 ], [ %4546, %4650 ], [ %4546, %4541 ], [ %3852, %4257 ]
  %4832 = phi float [ %4801, %4688 ], [ %4547, %4650 ], [ %4547, %4541 ], [ %3853, %4257 ]
  %4833 = phi float [ %4816, %4688 ], [ %4548, %4650 ], [ %4548, %4541 ], [ %3815, %4257 ]
  %4834 = phi float [ %4817, %4688 ], [ %4549, %4650 ], [ %4549, %4541 ], [ %3816, %4257 ]
  %4835 = phi float [ %4818, %4688 ], [ %4550, %4650 ], [ %4550, %4541 ], [ %3817, %4257 ]
  %4836 = phi float [ %4825, %4688 ], [ %4551, %4650 ], [ %4551, %4541 ], [ %3854, %4257 ]
  %4837 = phi float [ %4822, %4688 ], [ %4552, %4650 ], [ %4552, %4541 ], [ %3827, %4257 ]
  %4838 = fcmp fast une float %4261, 0.000000e+00
  %4839 = call float @dx.op.dot3.f32(i32 55, float %194, float %195, float %196, float %194, float %195, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = call float @dx.op.unary.f32(i32 25, float %4839)  ; Rsqrt(value)
  br i1 %4838, label %4848, label %4841

; <label>:4841                                    ; preds = %4826
  %4842 = fmul fast float %4840, %194
  %4843 = fmul fast float %4840, %195
  %4844 = fmul fast float %4840, %196
  %4845 = fsub fast float -0.000000e+00, %4842
  %4846 = fsub fast float -0.000000e+00, %4843
  %4847 = fsub fast float -0.000000e+00, %4844
  br label %5015

; <label>:4848                                    ; preds = %4826
  %4849 = fmul fast float %194, %4840
  %4850 = fsub fast float -0.000000e+00, %4849
  %4851 = fmul fast float %195, %4840
  %4852 = fsub fast float -0.000000e+00, %4851
  %4853 = fmul fast float %196, %4840
  %4854 = fsub fast float -0.000000e+00, %4853
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4850, float %4852, float %4854, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = fmul fast float %4261, 2.500000e+00
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fmul fast float %4261, 0x4013FFFFE0000000
  %4859 = fadd fast float %4858, 0xBFFFFFFFE0000000
  %4860 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4861 = fmul fast float %4261, 0x4004000020000000
  %4862 = fadd fast float %4861, 0xBFF8000040000000
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = fmul fast float %3833, 1.000000e+01
  %4865 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4866 = fmul fast float %4865, 2.000000e+00
  %4867 = fsub fast float 3.000000e+00, %4866
  %4868 = fmul fast float %4865, %4865
  %4869 = fmul fast float %4868, %4867
  %4870 = fsub fast float 1.000000e+00, %4869
  %4871 = fsub fast float 0x3FE3333340000000, %4836
  %4872 = fmul fast float %4871, 0x400AAAAAA0000000
  %4873 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4874 = fmul fast float %4870, %4873
  %4875 = fmul fast float %4827, 0x3FEA2B8620000000
  %4876 = fmul fast float %4828, 0x3FEA2B8620000000
  %4877 = fmul fast float %4829, 0x3FEA2B8620000000
  %4878 = fadd fast float %4875, 0x3FC81DFBA0000000
  %4879 = fmul fast float %4878, %4827
  %4880 = fadd fast float %4879, 0x3F910E6020000000
  %4881 = fadd fast float %4876, 0x3FC81DFBA0000000
  %4882 = fmul fast float %4881, %4828
  %4883 = fadd fast float %4882, 0x3F910E6020000000
  %4884 = fadd fast float %4877, 0x3FC81DFBA0000000
  %4885 = fmul fast float %4884, %4829
  %4886 = fadd fast float %4885, 0x3F910E6020000000
  %4887 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4888 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = fsub fast float %4887, %4827
  %4891 = fsub fast float %4888, %4828
  %4892 = fsub fast float %4889, %4829
  %4893 = fmul fast float %4890, %4857
  %4894 = fmul fast float %4893, %4874
  %4895 = fmul fast float %4891, %4857
  %4896 = fmul fast float %4895, %4874
  %4897 = fmul fast float %4892, %4857
  %4898 = fmul fast float %4897, %4874
  %4899 = fadd fast float %4894, %4827
  %4900 = fadd fast float %4896, %4828
  %4901 = fadd fast float %4898, %4829
  %4902 = fmul fast float %4837, %4837
  %4903 = fmul fast float %4902, %4902
  %4904 = fadd fast float %4860, 1.000000e+00
  %4905 = fsub fast float %4904, %4874
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fsub fast float 1.000000e+00, %4903
  %4910 = call float @dx.op.binary.f32(i32 36, float %4906, float %4909)  ; FMin(a,b)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4912 = call float @dx.op.binary.f32(i32 35, float %4910, float %4911)  ; FMax(a,b)
  %4913 = fadd fast float %4908, 0xBFE4CCCCC0000000
  %4914 = fmul fast float %4913, 0x4006DB6DA0000000
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fmul fast float %4915, 2.000000e+00
  %4917 = fsub fast float 3.000000e+00, %4916
  %4918 = bitcast float %4830 to i32
  %4919 = ashr i32 %4918, 1
  %4920 = add nsw i32 %4919, 532487669
  %4921 = bitcast i32 %4920 to float
  %4922 = fsub fast float 1.000000e+00, %4921
  %4923 = bitcast float %4922 to i32
  %4924 = sub nsw i32 2129859010, %4923
  %4925 = bitcast i32 %4924 to float
  %4926 = fmul fast float %4925, 2.000000e+00
  %4927 = bitcast float %4831 to i32
  %4928 = ashr i32 %4927, 1
  %4929 = add nsw i32 %4928, 532487669
  %4930 = bitcast i32 %4929 to float
  %4931 = fsub fast float 1.000000e+00, %4930
  %4932 = bitcast float %4931 to i32
  %4933 = sub nsw i32 2129859010, %4932
  %4934 = bitcast i32 %4933 to float
  %4935 = fmul fast float %4934, 2.000000e+00
  %4936 = bitcast float %4832 to i32
  %4937 = ashr i32 %4936, 1
  %4938 = add nsw i32 %4937, 532487669
  %4939 = bitcast i32 %4938 to float
  %4940 = fsub fast float 1.000000e+00, %4939
  %4941 = bitcast float %4940 to i32
  %4942 = sub nsw i32 2129859010, %4941
  %4943 = bitcast i32 %4942 to float
  %4944 = fmul fast float %4943, 2.000000e+00
  %4945 = fsub fast float 0x4002A9FBE0000000, %4926
  %4946 = fadd fast float %4926, 0x3FD54FDF00000000
  %4947 = bitcast float %4946 to i32
  %4948 = sub nsw i32 2129859010, %4947
  %4949 = bitcast i32 %4948 to float
  %4950 = fmul fast float %4949, %4945
  %4951 = fmul fast float %4950, %4950
  %4952 = fsub fast float 0x4002A9FBE0000000, %4935
  %4953 = fadd fast float %4935, 0x3FD54FDF00000000
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = fmul fast float %4956, %4952
  %4958 = fmul fast float %4957, %4957
  %4959 = fsub fast float 0x4002A9FBE0000000, %4944
  %4960 = fadd fast float %4944, 0x3FD54FDF00000000
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, %4959
  %4965 = fmul fast float %4964, %4964
  %4966 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4951)  ; FMax(a,b)
  %4967 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4958)  ; FMax(a,b)
  %4968 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4965)  ; FMax(a,b)
  %4969 = fsub fast float 1.000000e+00, %4855
  %4970 = fadd fast float %4969, %4870
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = fsub fast float 1.000000e+00, %4242
  %4973 = fmul fast float %4912, %4972
  %4974 = fmul fast float %4915, %4915
  %4975 = fmul fast float %4974, %4973
  %4976 = fmul fast float %4975, %4917
  %4977 = fmul fast float %4972, 0xBFE99999A0000000
  %4978 = fmul fast float %4977, %4857
  %4979 = fmul fast float %4978, %4874
  %4980 = fadd fast float %4979, 1.000000e+00
  %4981 = fadd fast float %4836, -1.000000e+00
  %4982 = fmul fast float %4980, %4981
  %4983 = fadd fast float %4982, 1.000000e+00
  %4984 = fsub fast float %4966, %4830
  %4985 = fsub fast float %4967, %4831
  %4986 = fsub fast float %4968, %4832
  %4987 = fmul fast float %4976, %4984
  %4988 = fmul fast float %4976, %4985
  %4989 = fmul fast float %4976, %4986
  %4990 = fadd fast float %4987, %4830
  %4991 = fadd fast float %4988, %4831
  %4992 = fadd fast float %4989, %4832
  %4993 = fsub fast float %120, %4833
  %4994 = fsub fast float %122, %4834
  %4995 = fsub fast float %124, %4835
  %4996 = fmul fast float %4976, %4993
  %4997 = fmul fast float %4976, %4994
  %4998 = fmul fast float %4976, %4995
  %4999 = fadd fast float %4996, %4833
  %5000 = fadd fast float %4997, %4834
  %5001 = fadd fast float %4998, %4835
  %5002 = fmul fast float %4976, %4971
  %5003 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %5004 = fsub fast float 1.000000e+00, %5003
  %5005 = fmul fast float %5002, %5004
  %5006 = fadd fast float %5005, %5003
  %5007 = fsub fast float 1.000000e+00, %4837
  %5008 = fmul fast float %4976, %5007
  %5009 = fadd fast float %5008, %4837
  %5010 = call float @dx.op.dot3.f32(i32 55, float %4999, float %5000, float %5001, float %4999, float %5000, float %5001)  ; Dot3(ax,ay,az,bx,by,bz)
  %5011 = call float @dx.op.unary.f32(i32 25, float %5010)  ; Rsqrt(value)
  %5012 = fmul fast float %4999, %5011
  %5013 = fmul fast float %5000, %5011
  %5014 = fmul fast float %5001, %5011
  br label %5015

; <label>:5015                                    ; preds = %4848, %4841
  %5016 = phi float [ %4847, %4841 ], [ %4854, %4848 ]
  %5017 = phi float [ %4846, %4841 ], [ %4852, %4848 ]
  %5018 = phi float [ %4845, %4841 ], [ %4850, %4848 ]
  %5019 = phi float [ %4844, %4841 ], [ %4853, %4848 ]
  %5020 = phi float [ %4843, %4841 ], [ %4851, %4848 ]
  %5021 = phi float [ %4842, %4841 ], [ %4849, %4848 ]
  %5022 = phi float [ %4827, %4841 ], [ %4899, %4848 ]
  %5023 = phi float [ %4828, %4841 ], [ %4900, %4848 ]
  %5024 = phi float [ %4829, %4841 ], [ %4901, %4848 ]
  %5025 = phi float [ %4830, %4841 ], [ %4990, %4848 ]
  %5026 = phi float [ %4831, %4841 ], [ %4991, %4848 ]
  %5027 = phi float [ %4832, %4841 ], [ %4992, %4848 ]
  %5028 = phi float [ %4833, %4841 ], [ %5012, %4848 ]
  %5029 = phi float [ %4834, %4841 ], [ %5013, %4848 ]
  %5030 = phi float [ %4835, %4841 ], [ %5014, %4848 ]
  %5031 = phi float [ %4836, %4841 ], [ %5006, %4848 ]
  %5032 = phi float [ %4837, %4841 ], [ %5009, %4848 ]
  %5033 = fsub fast float -0.000000e+00, %196
  %5034 = select i1 %253, float 0.000000e+00, float %5027
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %5018, float %5017, float %5016)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5021, float %5020, float %5019, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = fmul fast float %5037, 2.000000e+00
  %5039 = fmul fast float %5038, %5028
  %5040 = fmul fast float %5038, %5029
  %5041 = fmul fast float %5038, %5030
  %5042 = fsub fast float %5021, %5039
  %5043 = fsub fast float %5020, %5040
  %5044 = fsub fast float %5019, %5041
  %5045 = call float @dx.op.binary.f32(i32 36, float %5032, float 1.000000e+00)  ; FMin(a,b)
  %5046 = fsub fast float 1.000000e+00, %5032
  %5047 = bitcast float %5046 to i32
  %5048 = sub nsw i32 2129859010, %5047
  %5049 = bitcast i32 %5048 to float
  %5050 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5051 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5052 = fcmp fast oeq float %5051, 0.000000e+00
  %5053 = fcmp fast oeq float %5050, 0.000000e+00
  %5054 = or i1 %5053, %5052
  br i1 %5054, label %5084, label %5055

; <label>:5055                                    ; preds = %5015
  %5056 = fsub fast float -0.000000e+00, %85
  %5057 = fsub fast float -0.000000e+00, %83
  %5058 = call float @dx.op.unary.f32(i32 24, float %5051)  ; Sqrt(value)
  %5059 = fdiv fast float %5058, %5050
  %5060 = fcmp fast ogt float %5059, 0x3FFB6F8900000000
  %5061 = select i1 %5060, float 0x3FFB6F8900000000, float %5059
  %5062 = fmul fast float %5061, 0x3FE8A23460000000
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = call float @dx.op.binary.f32(i32 35, float %5061, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5065 = fmul fast float %5063, %5050
  %5066 = fmul fast float %5064, 0x3FF279A740000000
  %5067 = fadd fast float %5066, -1.000000e+00
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %84, float %5056, float %5057, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = call float @dx.op.unary.f32(i32 25, float %5068)  ; Rsqrt(value)
  %5070 = fmul fast float %5069, %5056
  %5071 = fmul fast float %5069, %5057
  %5072 = fmul fast float %5069, %84
  %5073 = fmul fast float %5067, %5067
  %5074 = fsub fast float 1.000000e+00, %5073
  %5075 = fmul fast float %5064, 0x40005F8BE0000000
  %5076 = fsub fast float 0x400C5BF8A0000000, %5075
  %5077 = fdiv fast float %5065, %5076
  %5078 = fmul fast float %5077, 0x3FEE31C3C0000000
  %5079 = fmul fast float %5078, %5074
  %5080 = fmul fast float %5064, 0x3FDACB7480000000
  %5081 = fadd fast float %5080, 0xBFD7347680000000
  %5082 = fmul fast float %5081, %5077
  %5083 = fmul fast float %5082, %5074
  br label %5084

; <label>:5084                                    ; preds = %5055, %5015
  %5085 = phi float [ %5070, %5055 ], [ 0.000000e+00, %5015 ]
  %5086 = phi float [ %5071, %5055 ], [ 0.000000e+00, %5015 ]
  %5087 = phi float [ %5072, %5055 ], [ 0.000000e+00, %5015 ]
  %5088 = phi float [ %5079, %5055 ], [ 0.000000e+00, %5015 ]
  %5089 = phi float [ %5083, %5055 ], [ 0.000000e+00, %5015 ]
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = fmul fast float %5090, %5090
  %5092 = fmul fast float %5091, 0x3FEE471020000000
  %5093 = fadd fast float %5092, 0xBFD42F6020000000
  %5094 = fmul fast float %5050, 0x3FD20DD760000000
  %5095 = fmul fast float %5093, %5089
  %5096 = fmul fast float %5088, 0x3FDF454380000000
  %5097 = fmul fast float %5096, %5090
  %5098 = fadd fast float %5097, %5094
  %5099 = fadd fast float %5098, %5095
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = fmul fast float %5100, 0x3FDF454380000000
  %5102 = fmul fast float %5100, %5100
  %5103 = fmul fast float %5102, 0x3FEE471020000000
  %5104 = fadd fast float %5103, 0xBFD42F6020000000
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5088, float %5089, float 0x3FD20DD760000000, float %5101, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5107 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = fcmp fast oeq float %5107, 0.000000e+00
  %5109 = fcmp fast oeq float %5106, 0.000000e+00
  %5110 = or i1 %5109, %5108
  br i1 %5110, label %5140, label %5111

; <label>:5111                                    ; preds = %5084
  %5112 = fsub fast float -0.000000e+00, %81
  %5113 = fsub fast float -0.000000e+00, %79
  %5114 = call float @dx.op.unary.f32(i32 24, float %5107)  ; Sqrt(value)
  %5115 = fdiv fast float %5114, %5106
  %5116 = fcmp fast ogt float %5115, 0x3FFB6F8900000000
  %5117 = select i1 %5116, float 0x3FFB6F8900000000, float %5115
  %5118 = fmul fast float %5117, 0x3FE8A23460000000
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = call float @dx.op.binary.f32(i32 35, float %5117, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5121 = fmul fast float %5119, %5106
  %5122 = fmul fast float %5120, 0x3FF279A740000000
  %5123 = fadd fast float %5122, -1.000000e+00
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5113, float %80, float %5112, float %5113, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = call float @dx.op.unary.f32(i32 25, float %5124)  ; Rsqrt(value)
  %5126 = fmul fast float %5125, %5112
  %5127 = fmul fast float %5125, %5113
  %5128 = fmul fast float %5125, %80
  %5129 = fmul fast float %5123, %5123
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = fmul fast float %5120, 0x40005F8BE0000000
  %5132 = fsub fast float 0x400C5BF8A0000000, %5131
  %5133 = fdiv fast float %5121, %5132
  %5134 = fmul fast float %5133, 0x3FEE31C3C0000000
  %5135 = fmul fast float %5134, %5130
  %5136 = fmul fast float %5120, 0x3FDACB7480000000
  %5137 = fadd fast float %5136, 0xBFD7347680000000
  %5138 = fmul fast float %5137, %5133
  %5139 = fmul fast float %5138, %5130
  br label %5140

; <label>:5140                                    ; preds = %5111, %5084
  %5141 = phi float [ %5126, %5111 ], [ 0.000000e+00, %5084 ]
  %5142 = phi float [ %5127, %5111 ], [ 0.000000e+00, %5084 ]
  %5143 = phi float [ %5128, %5111 ], [ 0.000000e+00, %5084 ]
  %5144 = phi float [ %5135, %5111 ], [ 0.000000e+00, %5084 ]
  %5145 = phi float [ %5139, %5111 ], [ 0.000000e+00, %5084 ]
  %5146 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5142, float %5143, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = fmul fast float %5146, %5146
  %5148 = fmul fast float %5147, 0x3FEE471020000000
  %5149 = fadd fast float %5148, 0xBFD42F6020000000
  %5150 = fmul fast float %5106, 0x3FD20DD760000000
  %5151 = fmul fast float %5149, %5145
  %5152 = fmul fast float %5144, 0x3FDF454380000000
  %5153 = fmul fast float %5152, %5146
  %5154 = fadd fast float %5153, %5150
  %5155 = fadd fast float %5154, %5151
  %5156 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5142, float %5143, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5157 = fmul fast float %5156, 0x3FDF454380000000
  %5158 = fmul fast float %5156, %5156
  %5159 = fmul fast float %5158, 0x3FEE471020000000
  %5160 = fadd fast float %5159, 0xBFD42F6020000000
  %5161 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5144, float %5145, float 0x3FD20DD760000000, float %5157, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5163 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = fcmp fast oeq float %5163, 0.000000e+00
  %5165 = fcmp fast oeq float %5162, 0.000000e+00
  %5166 = or i1 %5165, %5164
  br i1 %5166, label %5196, label %5167

; <label>:5167                                    ; preds = %5140
  %5168 = fsub fast float -0.000000e+00, %77
  %5169 = fsub fast float -0.000000e+00, %75
  %5170 = call float @dx.op.unary.f32(i32 24, float %5163)  ; Sqrt(value)
  %5171 = fdiv fast float %5170, %5162
  %5172 = fcmp fast ogt float %5171, 0x3FFB6F8900000000
  %5173 = select i1 %5172, float 0x3FFB6F8900000000, float %5171
  %5174 = fmul fast float %5173, 0x3FE8A23460000000
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = call float @dx.op.binary.f32(i32 35, float %5173, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5177 = fmul fast float %5175, %5162
  %5178 = fmul fast float %5176, 0x3FF279A740000000
  %5179 = fadd fast float %5178, -1.000000e+00
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5168, float %5169, float %76, float %5168, float %5169, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = call float @dx.op.unary.f32(i32 25, float %5180)  ; Rsqrt(value)
  %5182 = fmul fast float %5181, %5168
  %5183 = fmul fast float %5181, %5169
  %5184 = fmul fast float %5181, %76
  %5185 = fmul fast float %5179, %5179
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = fmul fast float %5176, 0x40005F8BE0000000
  %5188 = fsub fast float 0x400C5BF8A0000000, %5187
  %5189 = fdiv fast float %5177, %5188
  %5190 = fmul fast float %5189, 0x3FEE31C3C0000000
  %5191 = fmul fast float %5190, %5186
  %5192 = fmul fast float %5176, 0x3FDACB7480000000
  %5193 = fadd fast float %5192, 0xBFD7347680000000
  %5194 = fmul fast float %5193, %5189
  %5195 = fmul fast float %5194, %5186
  br label %5196

; <label>:5196                                    ; preds = %5167, %5140
  %5197 = phi float [ %5182, %5167 ], [ 0.000000e+00, %5140 ]
  %5198 = phi float [ %5183, %5167 ], [ 0.000000e+00, %5140 ]
  %5199 = phi float [ %5184, %5167 ], [ 0.000000e+00, %5140 ]
  %5200 = phi float [ %5191, %5167 ], [ 0.000000e+00, %5140 ]
  %5201 = phi float [ %5195, %5167 ], [ 0.000000e+00, %5140 ]
  %5202 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5198, float %5199, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5203 = fmul fast float %5202, %5202
  %5204 = fmul fast float %5203, 0x3FEE471020000000
  %5205 = fadd fast float %5204, 0xBFD42F6020000000
  %5206 = fmul fast float %5162, 0x3FD20DD760000000
  %5207 = fmul fast float %5205, %5201
  %5208 = fmul fast float %5200, 0x3FDF454380000000
  %5209 = fmul fast float %5208, %5202
  %5210 = fadd fast float %5209, %5206
  %5211 = fadd fast float %5210, %5207
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5198, float %5199, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = fmul fast float %5212, 0x3FDF454380000000
  %5214 = fmul fast float %5212, %5212
  %5215 = fmul fast float %5214, 0x3FEE471020000000
  %5216 = fadd fast float %5215, 0xBFD42F6020000000
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5162, float %5200, float %5201, float 0x3FD20DD760000000, float %5213, float %5216)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = call float @dx.op.binary.f32(i32 35, float %5099, float 0.000000e+00)  ; FMax(a,b)
  %5219 = call float @dx.op.binary.f32(i32 35, float %5155, float 0.000000e+00)  ; FMax(a,b)
  %5220 = call float @dx.op.binary.f32(i32 35, float %5211, float 0.000000e+00)  ; FMax(a,b)
  %5221 = call float @dx.op.binary.f32(i32 35, float %5105, float 0.000000e+00)  ; FMax(a,b)
  %5222 = call float @dx.op.binary.f32(i32 35, float %5161, float 0.000000e+00)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float %5217, float 0.000000e+00)  ; FMax(a,b)
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = call float @dx.op.binary.f32(i32 36, float %5022, float %5225)  ; FMin(a,b)
  %5227 = fsub fast float 1.000000e+00, %5045
  %5228 = fmul fast float %5226, %5227
  %5229 = fsub fast float 1.000000e+00, %5228
  %5230 = bitcast float %5229 to i32
  %5231 = sub nsw i32 2129859010, %5230
  %5232 = bitcast i32 %5231 to float
  %5233 = call float @dx.op.binary.f32(i32 36, float %5023, float %5225)  ; FMin(a,b)
  %5234 = fmul fast float %5233, %5227
  %5235 = fsub fast float 1.000000e+00, %5234
  %5236 = bitcast float %5235 to i32
  %5237 = sub nsw i32 2129859010, %5236
  %5238 = bitcast i32 %5237 to float
  %5239 = call float @dx.op.binary.f32(i32 36, float %5024, float %5225)  ; FMin(a,b)
  %5240 = fmul fast float %5239, %5227
  %5241 = fsub fast float 1.000000e+00, %5240
  %5242 = bitcast float %5241 to i32
  %5243 = sub nsw i32 2129859010, %5242
  %5244 = bitcast i32 %5243 to float
  %5245 = fmul fast float %5218, %5045
  %5246 = fmul fast float %5245, %5232
  %5247 = fmul fast float %5219, %5045
  %5248 = fmul fast float %5247, %5238
  %5249 = fmul fast float %5220, %5045
  %5250 = fmul fast float %5249, %5244
  %5251 = call float @dx.op.binary.f32(i32 36, float %5025, float %5225)  ; FMin(a,b)
  %5252 = fmul fast float %5251, %5227
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = bitcast float %5253 to i32
  %5255 = sub nsw i32 2129859010, %5254
  %5256 = bitcast i32 %5255 to float
  %5257 = call float @dx.op.binary.f32(i32 36, float %5026, float %5225)  ; FMin(a,b)
  %5258 = fmul fast float %5257, %5227
  %5259 = fsub fast float 1.000000e+00, %5258
  %5260 = bitcast float %5259 to i32
  %5261 = sub nsw i32 2129859010, %5260
  %5262 = bitcast i32 %5261 to float
  %5263 = call float @dx.op.binary.f32(i32 36, float %5034, float %5225)  ; FMin(a,b)
  %5264 = fmul fast float %5263, %5227
  %5265 = fsub fast float 1.000000e+00, %5264
  %5266 = bitcast float %5265 to i32
  %5267 = sub nsw i32 2129859010, %5266
  %5268 = bitcast i32 %5267 to float
  %5269 = fmul fast float %5221, %5045
  %5270 = fmul fast float %5269, %5256
  %5271 = fmul fast float %5222, %5045
  %5272 = fmul fast float %5271, %5262
  %5273 = fmul fast float %5223, %5045
  %5274 = fmul fast float %5273, %5268
  %5275 = call float @dx.op.dot3.f32(i32 55, float %5246, float %5248, float %5250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5276 = select i1 %253, float 0.000000e+00, float %5246
  %5277 = select i1 %253, float %5275, float %5248
  %5278 = select i1 %253, float 0.000000e+00, float %5250
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5272, float %5274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = select i1 %253, float 0.000000e+00, float %5270
  %5281 = select i1 %253, float %5279, float %5272
  %5282 = select i1 %253, float 0.000000e+00, float %5274
  %5283 = fmul fast float %5036, 9.843750e-01
  %5284 = fmul fast float %5031, 9.843750e-01
  %5285 = fadd fast float %5283, 7.812500e-03
  %5286 = fadd fast float %5284, 7.812500e-03
  %5287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5285, float %5286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 2
  %5289 = extractvalue %dx.types.ResRet.f32 %5287, 3
  %5290 = fmul fast float %5288, %5025
  %5291 = fmul fast float %5288, %5026
  %5292 = fmul fast float %5288, %5034
  %5293 = fadd fast float %5290, %5289
  %5294 = fadd fast float %5291, %5289
  %5295 = fadd fast float %5292, %5289
  %5296 = fcmp fast ogt float %3828, 0.000000e+00
  br i1 %5296, label %5297, label %5323

; <label>:5297                                    ; preds = %5196
  %5298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3828, float %5036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = fadd fast float %5299, -5.000000e-01
  %5303 = fadd fast float %5300, -5.000000e-01
  %5304 = fadd fast float %5301, -5.000000e-01
  %5305 = fsub fast float 1.000000e+00, %5025
  %5306 = fsub fast float 1.000000e+00, %5026
  %5307 = fsub fast float 1.000000e+00, %5034
  %5308 = fmul fast float %5025, 4.000000e+00
  %5309 = fmul fast float %5308, %5305
  %5310 = fmul fast float %5309, %5302
  %5311 = fmul fast float %5026, 4.000000e+00
  %5312 = fmul fast float %5311, %5306
  %5313 = fmul fast float %5312, %5303
  %5314 = fmul fast float %5034, 4.000000e+00
  %5315 = fmul fast float %5314, %5307
  %5316 = fmul fast float %5315, %5304
  %5317 = fadd fast float %5310, %5293
  %5318 = fadd fast float %5313, %5294
  %5319 = fadd fast float %5316, %5295
  %5320 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5321 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  br label %5323

; <label>:5323                                    ; preds = %5297, %5196
  %5324 = phi float [ %5320, %5297 ], [ %5293, %5196 ]
  %5325 = phi float [ %5321, %5297 ], [ %5294, %5196 ]
  %5326 = phi float [ %5322, %5297 ], [ %5295, %5196 ]
  %5327 = call float @dx.op.binary.f32(i32 35, float %5325, float %5326)  ; FMax(a,b)
  %5328 = call float @dx.op.binary.f32(i32 35, float %5324, float %5327)  ; FMax(a,b)
  %5329 = fsub fast float 1.000000e+00, %5328
  %5330 = fmul fast float %5329, %5276
  %5331 = fmul fast float %5329, %5277
  %5332 = fmul fast float %5329, %5278
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = fcmp fast ogt float %5333, 0x3E7FF19E20000000
  %5335 = fdiv fast float 1.000000e+00, %5333
  %5336 = select i1 %5334, float %5335, float 0.000000e+00
  %5337 = fmul fast float %5336, %5022
  %5338 = fmul fast float %5336, %5023
  %5339 = fmul fast float %5336, %5024
  %5340 = fadd fast float %5337, -1.000000e+00
  %5341 = fadd fast float %5338, -1.000000e+00
  %5342 = fadd fast float %5339, -1.000000e+00
  %5343 = fmul fast float %5340, 5.000000e-01
  %5344 = fmul fast float %5341, 5.000000e-01
  %5345 = fmul fast float %5342, 5.000000e-01
  %5346 = fadd fast float %5343, 1.000000e+00
  %5347 = fadd fast float %5344, 1.000000e+00
  %5348 = fadd fast float %5345, 1.000000e+00
  %5349 = fmul fast float %5324, %5280
  %5350 = fmul fast float %5325, %5281
  %5351 = fmul fast float %5326, %5282
  %5352 = fsub fast float 1.000000e+00, %5036
  %5353 = bitcast float %5352 to i32
  %5354 = sitofp i32 %5353 to float
  %5355 = fmul fast float %5354, 5.000000e+00
  %5356 = fadd fast float %5355, 0xC1EFBF8940000000
  %5357 = fptosi float %5356 to i32
  %5358 = bitcast i32 %5357 to float
  %5359 = fmul fast float %5358, %3829
  %5360 = fmul fast float %5276, %5359
  %5361 = fmul fast float %5360, %5329
  %5362 = fmul fast float %5361, %5346
  %5363 = fmul fast float %5277, %5359
  %5364 = fmul fast float %5363, %5329
  %5365 = fmul fast float %5364, %5347
  %5366 = fmul fast float %5278, %5359
  %5367 = fmul fast float %5366, %5329
  %5368 = fmul fast float %5367, %5348
  %5369 = fmul fast float %5330, %3825
  %5370 = fmul fast float %5331, %3825
  %5371 = fmul fast float %5332, %3825
  %5372 = fadd fast float %5349, %3821
  %5373 = fadd fast float %5372, %5362
  %5374 = fmul fast float %5373, %3825
  %5375 = fadd fast float %5350, %3822
  %5376 = fadd fast float %5375, %5365
  %5377 = fmul fast float %5376, %3825
  %5378 = fadd fast float %5351, %3823
  %5379 = fadd fast float %5378, %5368
  %5380 = fmul fast float %5379, %3825
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 3
  %5383 = fcmp fast oeq float %5382, 0.000000e+00
  br i1 %5383, label %6468, label %5384

; <label>:5384                                    ; preds = %5323
  %5385 = extractvalue %dx.types.CBufRet.f32 %5381, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5381, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5381, 2
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.CBufRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.CBufRet.f32 %5388, 2
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 0
  %5394 = extractvalue %dx.types.CBufRet.f32 %5392, 1
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5389, float %5390, float %5391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = select i1 %253, float %5393, float %5389
  %5397 = select i1 %253, float %5395, float %5390
  %5398 = select i1 %253, float %5394, float %5391
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 2
  %5401 = fmul fast float %5400, %120
  %5402 = fmul fast float %5400, %122
  %5403 = fmul fast float %5400, %124
  %5404 = fadd fast float %5401, %194
  %5405 = fadd fast float %5402, %195
  %5406 = fadd fast float %5403, %196
  %5407 = fcmp fast olt float %5382, 0.000000e+00
  br i1 %5407, label %6047, label %5408

; <label>:5408                                    ; preds = %5384
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5412 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5413 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.CBufRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.CBufRet.f32 %5414, 2
  %5418 = extractvalue %dx.types.CBufRet.f32 %5414, 3
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5423 = extractvalue %dx.types.CBufRet.f32 %5419, 3
  %5424 = fmul fast float %5410, %5404
  %5425 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5411, float %5424)  ; FMad(a,b,c)
  %5426 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %5412, float %5425)  ; FMad(a,b,c)
  %5427 = fadd fast float %5426, %5413
  %5428 = fmul fast float %5415, %5404
  %5429 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5416, float %5428)  ; FMad(a,b,c)
  %5430 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %5417, float %5429)  ; FMad(a,b,c)
  %5431 = fadd fast float %5430, %5418
  %5432 = fmul fast float %5420, %5404
  %5433 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5421, float %5432)  ; FMad(a,b,c)
  %5434 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %5422, float %5433)  ; FMad(a,b,c)
  %5435 = fadd fast float %5434, %5423
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = fcmp fast une float %5437, 0.000000e+00
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.CBufRet.f32 %5439, 1
  %5442 = extractvalue %dx.types.CBufRet.f32 %5439, 3
  %5443 = fmul fast float %5442, %5427
  %5444 = fmul fast float %5442, %5431
  %5445 = fadd fast float %5443, %5440
  %5446 = fadd fast float %5444, %5441
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5451 = fmul fast float %5450, %5427
  %5452 = fmul fast float %5450, %5431
  %5453 = fadd fast float %5451, %5448
  %5454 = fadd fast float %5452, %5449
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5457 = fsub fast float %5456, %5435
  %5458 = extractvalue %dx.types.CBufRet.f32 %5455, 2
  %5459 = fmul fast float %5457, %5458
  %5460 = fsub fast float 1.000000e+00, %5459
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  br i1 %5438, label %5522, label %5462

; <label>:5462                                    ; preds = %5408
  %5463 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5466 = fadd fast float %5465, %5463
  %5467 = fcmp fast ogt float %5466, 0.000000e+00
  br i1 %5467, label %5468, label %5492

; <label>:5468                                    ; preds = %5462
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.CBufRet.f32 %5469, 1
  %5472 = fsub fast float %5453, %5470
  %5473 = fsub fast float %5454, %5471
  %5474 = fcmp fast olt float %5472, 0.000000e+00
  %5475 = fcmp fast olt float %5473, 0.000000e+00
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5480 = extractvalue %dx.types.CBufRet.f32 %5476, 3
  %5481 = select i1 %5474, float %5477, float %5479
  %5482 = select i1 %5475, float %5478, float %5480
  %5483 = fmul fast float %5481, %5472
  %5484 = fmul fast float %5482, %5473
  %5485 = call float @dx.op.unary.f32(i32 6, float %5483)  ; FAbs(value)
  %5486 = call float @dx.op.unary.f32(i32 6, float %5484)  ; FAbs(value)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5399, 0
  %5488 = call float @dx.op.binary.f32(i32 35, float %5485, float %5486)  ; FMax(a,b)
  %5489 = fsub fast float %5487, %5488
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %5490, %5461
  br label %5492

; <label>:5492                                    ; preds = %5468, %5462
  %5493 = phi float [ %5491, %5468 ], [ 0.000000e+00, %5462 ]
  %5494 = extractvalue %dx.types.CBufRet.f32 %5439, 2
  %5495 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5496 = fadd fast float %5495, %5494
  %5497 = fcmp fast ogt float %5496, 0.000000e+00
  br i1 %5497, label %5498, label %5522

; <label>:5498                                    ; preds = %5492
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.CBufRet.f32 %5499, 1
  %5502 = fsub fast float %5445, %5500
  %5503 = fsub fast float %5446, %5501
  %5504 = fcmp fast olt float %5502, 0.000000e+00
  %5505 = fcmp fast olt float %5503, 0.000000e+00
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 0
  %5508 = extractvalue %dx.types.CBufRet.f32 %5506, 1
  %5509 = extractvalue %dx.types.CBufRet.f32 %5506, 2
  %5510 = extractvalue %dx.types.CBufRet.f32 %5506, 3
  %5511 = select i1 %5504, float %5507, float %5509
  %5512 = select i1 %5505, float %5508, float %5510
  %5513 = fmul fast float %5511, %5502
  %5514 = fmul fast float %5512, %5503
  %5515 = call float @dx.op.unary.f32(i32 6, float %5513)  ; FAbs(value)
  %5516 = call float @dx.op.unary.f32(i32 6, float %5514)  ; FAbs(value)
  %5517 = extractvalue %dx.types.CBufRet.f32 %5399, 0
  %5518 = call float @dx.op.binary.f32(i32 35, float %5515, float %5516)  ; FMax(a,b)
  %5519 = fsub fast float %5517, %5518
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fmul fast float %5520, %5461
  br label %5522

; <label>:5522                                    ; preds = %5498, %5492, %5408
  %5523 = phi float [ 0.000000e+00, %5408 ], [ %5521, %5498 ], [ 0.000000e+00, %5492 ]
  %5524 = phi float [ 0.000000e+00, %5408 ], [ %5493, %5498 ], [ %5493, %5492 ]
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 1
  %5527 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5530 = extractvalue %dx.types.CBufRet.f32 %5528, 1
  %5531 = fsub fast float %5427, %5529
  %5532 = fsub fast float %5431, %5530
  %5533 = fcmp fast olt float %5531, 0.000000e+00
  %5534 = fcmp fast olt float %5532, 0.000000e+00
  %5535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.f32 %5535, 0
  %5537 = extractvalue %dx.types.CBufRet.f32 %5535, 1
  %5538 = extractvalue %dx.types.CBufRet.f32 %5535, 2
  %5539 = extractvalue %dx.types.CBufRet.f32 %5535, 3
  %5540 = select i1 %5533, float %5536, float %5538
  %5541 = select i1 %5534, float %5537, float %5539
  %5542 = fmul fast float %5540, %5531
  %5543 = fmul fast float %5541, %5532
  %5544 = call float @dx.op.unary.f32(i32 6, float %5542)  ; FAbs(value)
  %5545 = call float @dx.op.unary.f32(i32 6, float %5543)  ; FAbs(value)
  %5546 = extractvalue %dx.types.CBufRet.f32 %5399, 0
  %5547 = call float @dx.op.binary.f32(i32 35, float %5544, float %5545)  ; FMax(a,b)
  %5548 = fsub fast float %5546, %5547
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = call float @dx.op.binary.f32(i32 36, float %5549, float %5527)  ; FMin(a,b)
  %5551 = fmul fast float %5550, %5461
  %5552 = fsub fast float %5523, %5551
  %5553 = fsub fast float %5524, %5523
  %5554 = fsub fast float %5553, %5551
  %5555 = call float @dx.op.binary.f32(i32 35, float %5523, float %5524)  ; FMax(a,b)
  %5556 = call float @dx.op.binary.f32(i32 35, float %5551, float %5555)  ; FMax(a,b)
  %5557 = fcmp fast olt float %5556, 1.000000e+00
  br i1 %5557, label %5558, label %5956, !dx.controlflow.hints !96

; <label>:5558                                    ; preds = %5522
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5561 = fcmp fast une float %5560, 0.000000e+00
  br i1 %5561, label %5562, label %5956, !dx.controlflow.hints !97

; <label>:5562                                    ; preds = %5558
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 0
  %5565 = extractvalue %dx.types.CBufRet.f32 %5563, 1
  %5566 = extractvalue %dx.types.CBufRet.f32 %5563, 2
  %5567 = extractvalue %dx.types.CBufRet.f32 %5563, 3
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.CBufRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.CBufRet.f32 %5568, 2
  %5572 = extractvalue %dx.types.CBufRet.f32 %5568, 3
  %5573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5573, 0
  %5575 = extractvalue %dx.types.CBufRet.f32 %5573, 1
  %5576 = extractvalue %dx.types.CBufRet.f32 %5573, 2
  %5577 = extractvalue %dx.types.CBufRet.f32 %5573, 3
  %5578 = fmul fast float %5564, %5404
  %5579 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5565, float %5578)  ; FMad(a,b,c)
  %5580 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %5566, float %5579)  ; FMad(a,b,c)
  %5581 = fadd fast float %5580, %5567
  %5582 = fmul fast float %5569, %5404
  %5583 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5570, float %5582)  ; FMad(a,b,c)
  %5584 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %5571, float %5583)  ; FMad(a,b,c)
  %5585 = fadd fast float %5584, %5572
  %5586 = fmul fast float %5574, %5404
  %5587 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5575, float %5586)  ; FMad(a,b,c)
  %5588 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %5576, float %5587)  ; FMad(a,b,c)
  %5589 = fadd fast float %5588, %5577
  %5590 = fcmp fast oge float %5581, 1.000000e+00
  %5591 = fcmp fast oge float %5585, 1.000000e+00
  %5592 = or i1 %5590, %5591
  %5593 = fcmp fast olt float %5581, 0.000000e+00
  %5594 = fcmp fast olt float %5585, 0.000000e+00
  %5595 = or i1 %5593, %5594
  %5596 = or i1 %5592, %5595
  br i1 %5596, label %5956, label %5597, !dx.controlflow.hints !98

; <label>:5597                                    ; preds = %5562
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.CBufRet.f32 %5598, 2
  %5602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.i32 %5602, 2
  %5604 = uitofp i32 %5603 to float
  %5605 = extractvalue %dx.types.CBufRet.i32 %5602, 3
  %5606 = uitofp i32 %5605 to float
  %5607 = extractvalue %dx.types.CBufRet.f32 %5598, 3
  %5608 = fmul fast float %5607, 2.000000e+00
  %5609 = fsub fast float %5581, %5599
  %5610 = fsub fast float %5585, %5600
  %5611 = fmul fast float %5608, %5609
  %5612 = fmul fast float %5608, %5610
  %5613 = fdiv fast float 1.000000e+00, %5387
  %5614 = fmul fast float %5612, %5613
  %5615 = call float @dx.op.unary.f32(i32 6, float %5614)  ; FAbs(value)
  %5616 = fmul fast float %5601, %5406
  %5617 = fmul fast float %5616, %5608
  %5618 = call float @dx.op.unary.f32(i32 6, float %5617)  ; FAbs(value)
  %5619 = call float @dx.op.unary.f32(i32 6, float %5611)  ; FAbs(value)
  %5620 = call float @dx.op.binary.f32(i32 35, float %5618, float %5615)  ; FMax(a,b)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5619, float %5620)  ; FMax(a,b)
  %5622 = fmul fast float %5621, 2.000000e+00
  %5623 = call float @dx.op.unary.f32(i32 23, float %5622)  ; Log(value)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5623, float %5604)  ; FMax(a,b)
  %5625 = call float @dx.op.unary.f32(i32 22, float %5624)  ; Frc(value)
  %5626 = fadd fast float %5625, 0xBFEA666660000000
  %5627 = fmul fast float %5626, 8.000000e+00
  %5628 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5629 = call float @dx.op.unary.f32(i32 27, float %5624)  ; Round_ni(value)
  %5630 = fadd fast float %5629, %5628
  %5631 = call float @dx.op.binary.f32(i32 36, float %5630, float %5606)  ; FMin(a,b)
  %5632 = call float @dx.op.unary.f32(i32 27, float %5631)  ; Round_ni(value)
  %5633 = fsub fast float -0.000000e+00, %5632
  %5634 = call float @dx.op.unary.f32(i32 21, float %5633)  ; Exp(value)
  %5635 = fmul fast float %5634, %5608
  %5636 = fmul fast float %5635, %5581
  %5637 = fmul fast float %5635, %5585
  %5638 = fmul fast float %5636, 2.500000e-01
  %5639 = fmul fast float %5637, 2.500000e-01
  %5640 = fadd fast float %5638, 5.000000e-01
  %5641 = fadd fast float %5639, 5.000000e-01
  %5642 = fsub fast float %5606, %5604
  %5643 = fptoui float %5642 to i32
  %5644 = add i32 %5643, 320
  %5645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5644)  ; CBufferLoadLegacy(handle,regIndex)
  %5646 = extractvalue %dx.types.CBufRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.CBufRet.f32 %5645, 1
  %5648 = fcmp fast une float %5631, %5606
  %5649 = fsub fast float %5581, %5646
  %5650 = fsub fast float %5585, %5647
  %5651 = call float @dx.op.unary.f32(i32 6, float %5649)  ; FAbs(value)
  %5652 = call float @dx.op.unary.f32(i32 6, float %5650)  ; FAbs(value)
  %5653 = fmul fast float %5651, %5635
  %5654 = fmul fast float %5652, %5635
  %5655 = fcmp fast olt float %5653, 1.000000e+00
  %5656 = fcmp fast olt float %5654, 1.000000e+00
  %5657 = and i1 %5655, %5656
  %5658 = or i1 %5648, %5657
  br i1 %5658, label %5659, label %5956, !dx.controlflow.hints !99

; <label>:5659                                    ; preds = %5597
  %5660 = fmul fast float %5637, 5.000000e-01
  %5661 = fmul fast float %5636, 5.000000e-01
  %5662 = fadd fast float %5660, 5.000000e-01
  %5663 = fadd fast float %5661, 5.000000e-01
  %5664 = sitofp i32 %5603 to float
  %5665 = fsub fast float %5631, %5664
  %5666 = call float @dx.op.unary.f32(i32 27, float %5665)  ; Round_ni(value)
  %5667 = call float @dx.op.unary.f32(i32 22, float %5631)  ; Frc(value)
  %5668 = call float @dx.op.unary.f32(i32 22, float %5663)  ; Frc(value)
  %5669 = call float @dx.op.unary.f32(i32 22, float %5662)  ; Frc(value)
  %5670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5668, float %5669, float %5666, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5671 = extractvalue %dx.types.ResRet.f32 %5670, 0
  %5672 = extractvalue %dx.types.ResRet.f32 %5670, 1
  %5673 = extractvalue %dx.types.ResRet.f32 %5670, 2
  %5674 = extractvalue %dx.types.ResRet.f32 %5670, 3
  %5675 = fcmp fast ogt float %5667, 0.000000e+00
  br i1 %5675, label %5676, label %5697, !dx.controlflow.hints !100

; <label>:5676                                    ; preds = %5659
  %5677 = fadd fast float %5666, 1.000000e+00
  %5678 = call float @dx.op.unary.f32(i32 22, float %5640)  ; Frc(value)
  %5679 = call float @dx.op.unary.f32(i32 22, float %5641)  ; Frc(value)
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5678, float %5679, float %5677, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5684 = extractvalue %dx.types.ResRet.f32 %5680, 3
  %5685 = fsub fast float %5681, %5671
  %5686 = fsub fast float %5682, %5672
  %5687 = fsub fast float %5683, %5673
  %5688 = fsub fast float %5684, %5674
  %5689 = fmul fast float %5685, %5667
  %5690 = fmul fast float %5686, %5667
  %5691 = fmul fast float %5687, %5667
  %5692 = fmul fast float %5688, %5667
  %5693 = fadd fast float %5689, %5671
  %5694 = fadd fast float %5690, %5672
  %5695 = fadd fast float %5691, %5673
  %5696 = fadd fast float %5692, %5674
  br label %5697

; <label>:5697                                    ; preds = %5676, %5659
  %5698 = phi float [ %5693, %5676 ], [ %5671, %5659 ]
  %5699 = phi float [ %5694, %5676 ], [ %5672, %5659 ]
  %5700 = phi float [ %5695, %5676 ], [ %5673, %5659 ]
  %5701 = phi float [ %5696, %5676 ], [ %5674, %5659 ]
  %5702 = fadd fast float %5698, -5.000000e-01
  %5703 = fadd fast float %5700, -5.000000e-01
  %5704 = fmul fast float %5702, 0xBFD5555560000000
  %5705 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5703, float %5704)  ; FMad(a,b,c)
  %5706 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5699, float 0.000000e+00)  ; FMad(a,b,c)
  %5707 = fadd fast float %5706, %5701
  %5708 = fmul fast float %5702, -7.500000e-01
  %5709 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5703, float %5708)  ; FMad(a,b,c)
  %5710 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5699, float 0.000000e+00)  ; FMad(a,b,c)
  %5711 = fadd fast float %5710, %5701
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.CBufRet.f32 %5714, 1
  %5717 = extractvalue %dx.types.CBufRet.f32 %5714, 2
  %5718 = extractvalue %dx.types.CBufRet.f32 %5714, 3
  %5719 = fsub fast float %5715, %5705
  %5720 = fsub fast float %5716, %5707
  %5721 = fsub fast float %5717, %5709
  %5722 = fsub fast float %5718, %5711
  %5723 = fmul fast float %5719, %5713
  %5724 = fmul fast float %5720, %5713
  %5725 = fmul fast float %5721, %5713
  %5726 = fmul fast float %5722, %5713
  %5727 = fadd fast float %5723, %5705
  %5728 = fadd fast float %5724, %5707
  %5729 = fadd fast float %5725, %5709
  %5730 = fadd fast float %5726, %5711
  %5731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5732 = extractvalue %dx.types.ResRet.i32 %5731, 0
  %5733 = and i32 %5732, 536870911
  %5734 = uitofp i32 %5733 to float
  %5735 = fmul fast float %5734, %5581
  %5736 = fmul fast float %5734, %5585
  %5737 = fptoui float %5735 to i32
  %5738 = fptoui float %5736 to i32
  %5739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5740 = extractvalue %dx.types.ResRet.i32 %5739, 0
  %5741 = and i32 %5740, 31
  %5742 = lshr i32 %5737, %5741
  %5743 = lshr i32 %5738, %5741
  %5744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5745 = extractvalue %dx.types.ResRet.i32 %5744, 0
  %5746 = and i32 %5745, 31
  %5747 = shl i32 1, %5746
  %5748 = call i32 @dx.op.binary.i32(i32 40, i32 %5747, i32 4)  ; UMin(a,b)
  %5749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5750 = extractvalue %dx.types.ResRet.i32 %5749, 0
  %5751 = extractvalue %dx.types.ResRet.i32 %5749, 1
  %5752 = icmp eq i32 %5748, 0
  br i1 %5752, label %5794, label %5753

; <label>:5753                                    ; preds = %5697
  br label %5754

; <label>:5754                                    ; preds = %5782, %5753
  %5755 = phi i32 [ %5785, %5782 ], [ 0, %5753 ]
  %5756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5757 = extractvalue %dx.types.ResRet.i32 %5756, 0
  %5758 = lshr i32 %5757, 16
  %5759 = and i32 %5758, 31
  %5760 = shl i32 %5743, %5759
  %5761 = add i32 %5760, %5742
  %5762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5763 = extractvalue %dx.types.ResRet.i32 %5762, 0
  %5764 = and i32 %5763, 31
  %5765 = shl i32 %5761, %5764
  %5766 = add i32 %5765, %5755
  %5767 = shl i32 %5766, 2
  %5768 = add i32 %5767, 32
  %5769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5768, i32 undef)  ; BufferLoad(srv,index,wot)
  %5770 = extractvalue %dx.types.ResRet.i32 %5769, 0
  %5771 = icmp slt i32 %5770, 0
  %5772 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5755
  %5773 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5755
  %5774 = bitcast float* %5772 to i32*
  %5775 = bitcast float* %5773 to i32*
  br i1 %5771, label %5776, label %5782

; <label>:5776                                    ; preds = %5754
  %5777 = and i32 %5770, 1073741823
  %5778 = add nuw nsw i32 %5777, 20
  %5779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5778, i32 undef)  ; BufferLoad(srv,index,wot)
  %5780 = extractvalue %dx.types.ResRet.i32 %5779, 0
  %5781 = extractvalue %dx.types.ResRet.i32 %5779, 1
  br label %5782

; <label>:5782                                    ; preds = %5776, %5754
  %5783 = phi i32 [ %5780, %5776 ], [ %5750, %5754 ]
  %5784 = phi i32 [ %5781, %5776 ], [ %5751, %5754 ]
  store i32 %5783, i32* %5774, align 4
  store i32 %5784, i32* %5775, align 4
  %5785 = add nuw i32 %5755, 1
  %5786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.i32 %5786, 2
  %5788 = icmp eq i32 %5787, 0
  %5789 = icmp ugt i32 %5770, -1073741825
  %5790 = and i1 %5789, %5788
  %5791 = icmp ult i32 %5785, %5748
  %5792 = and i1 %5790, %5791
  br i1 %5792, label %5754, label %5793

; <label>:5793                                    ; preds = %5782
  br label %5794

; <label>:5794                                    ; preds = %5793, %5697
  %5795 = phi i32 [ 0, %5697 ], [ %5785, %5793 ]
  %5796 = extractvalue %dx.types.CBufRet.f32 %5559, 2
  %5797 = fptoui float %5796 to i32
  %5798 = icmp eq i32 %5797, 0
  br i1 %5798, label %5850, label %5799

; <label>:5799                                    ; preds = %5794
  br label %5800

; <label>:5800                                    ; preds = %5845, %5799
  %5801 = phi i32 [ %5846, %5845 ], [ %5795, %5799 ]
  %5802 = phi i32 [ %5847, %5845 ], [ 0, %5799 ]
  %5803 = lshr i32 %5802, 2
  %5804 = and i32 %5802, 3
  %5805 = add nuw nsw i32 %5803, 83
  %5806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5805)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.i32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.i32 %5806, 1
  %5809 = extractvalue %dx.types.CBufRet.i32 %5806, 2
  %5810 = extractvalue %dx.types.CBufRet.i32 %5806, 3
  %5811 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5807, i32* %5811, align 4
  %5812 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5808, i32* %5812, align 4
  %5813 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5809, i32* %5813, align 4
  %5814 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5810, i32* %5814, align 4
  %5815 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5804
  %5816 = load i32, i32* %5815, align 4, !tbaa !101, !noalias !105
  %5817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5818 = extractvalue %dx.types.ResRet.i32 %5817, 0
  %5819 = lshr i32 %5818, 16
  %5820 = and i32 %5819, 31
  %5821 = shl i32 %5743, %5820
  %5822 = add i32 %5821, %5742
  %5823 = shl i32 %5822, 2
  %5824 = add i32 %5823, %5816
  %5825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5824, i32 undef)  ; BufferLoad(srv,index,wot)
  %5826 = extractvalue %dx.types.ResRet.i32 %5825, 0
  %5827 = icmp eq i32 %5826, 0
  br i1 %5827, label %5845, label %5828

; <label>:5828                                    ; preds = %5800
  %5829 = icmp slt i32 %5826, 0
  %5830 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5801
  %5831 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5801
  %5832 = bitcast float* %5830 to i32*
  %5833 = bitcast float* %5831 to i32*
  br i1 %5829, label %5834, label %5841

; <label>:5834                                    ; preds = %5828
  %5835 = and i32 %5826, 1073741823
  %5836 = add i32 %5816, 20
  %5837 = add i32 %5836, %5835
  %5838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5837, i32 undef)  ; BufferLoad(srv,index,wot)
  %5839 = extractvalue %dx.types.ResRet.i32 %5838, 0
  %5840 = extractvalue %dx.types.ResRet.i32 %5838, 1
  br label %5841

; <label>:5841                                    ; preds = %5834, %5828
  %5842 = phi i32 [ %5839, %5834 ], [ %5750, %5828 ]
  %5843 = phi i32 [ %5840, %5834 ], [ %5751, %5828 ]
  store i32 %5842, i32* %5832, align 4
  store i32 %5843, i32* %5833, align 4
  %5844 = add i32 %5801, 1
  br label %5845

; <label>:5845                                    ; preds = %5841, %5800
  %5846 = phi i32 [ %5801, %5800 ], [ %5844, %5841 ]
  %5847 = add nuw i32 %5802, 1
  %5848 = icmp eq i32 %5847, %5797
  br i1 %5848, label %5849, label %5800

; <label>:5849                                    ; preds = %5845
  br label %5850

; <label>:5850                                    ; preds = %5849, %5794
  %5851 = phi i32 [ %5795, %5794 ], [ %5846, %5849 ]
  %5852 = icmp eq i32 %5851, 1
  %5853 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  %5854 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  br i1 %5852, label %5855, label %5858

; <label>:5855                                    ; preds = %5850
  %5856 = load float, float* %5853, align 4
  %5857 = load float, float* %5854, align 4
  br label %5885

; <label>:5858                                    ; preds = %5850
  %5859 = load float, float* %5853, align 4
  %5860 = load float, float* %5854, align 4
  %5861 = fdiv fast float 1.000000e+00, %5860
  %5862 = fsub fast float %5859, %5861
  %5863 = icmp ugt i32 %5851, 1
  br i1 %5863, label %5864, label %5880

; <label>:5864                                    ; preds = %5858
  br label %5865

; <label>:5865                                    ; preds = %5865, %5864
  %5866 = phi float [ %5875, %5865 ], [ %5862, %5864 ]
  %5867 = phi float [ %5876, %5865 ], [ %5859, %5864 ]
  %5868 = phi i32 [ %5877, %5865 ], [ 1, %5864 ]
  %5869 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5868
  %5870 = load float, float* %5869, align 4
  %5871 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5868
  %5872 = load float, float* %5871, align 4
  %5873 = fdiv fast float 1.000000e+00, %5872
  %5874 = fsub fast float %5870, %5873
  %5875 = call float @dx.op.binary.f32(i32 36, float %5866, float %5874)  ; FMin(a,b)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5867, float %5870)  ; FMax(a,b)
  %5877 = add nuw i32 %5868, 1
  %5878 = icmp eq i32 %5877, %5851
  br i1 %5878, label %5879, label %5865

; <label>:5879                                    ; preds = %5865
  br label %5880

; <label>:5880                                    ; preds = %5879, %5858
  %5881 = phi float [ %5862, %5858 ], [ %5875, %5879 ]
  %5882 = phi float [ %5859, %5858 ], [ %5876, %5879 ]
  %5883 = fsub fast float %5882, %5881
  %5884 = fdiv fast float 1.000000e+00, %5883
  br label %5885

; <label>:5885                                    ; preds = %5880, %5855
  %5886 = phi float [ %5856, %5855 ], [ %5882, %5880 ]
  %5887 = phi float [ %5857, %5855 ], [ %5884, %5880 ]
  %5888 = fadd fast float %5589, %5886
  %5889 = fmul fast float %5888, %5887
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = fmul fast float %5890, 2.000000e+00
  %5892 = fsub fast float 1.000000e+00, %5891
  %5893 = fmul fast float %5727, %5727
  %5894 = fsub fast float %5728, %5893
  %5895 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5894)  ; FMax(a,b)
  %5896 = fdiv fast float 1.000000e+00, %5895
  %5897 = fmul fast float %5728, %5727
  %5898 = fsub fast float %5729, %5897
  %5899 = fsub fast float %5892, %5727
  %5900 = fmul fast float %5892, %5892
  %5901 = fsub fast float %5900, %5728
  %5902 = fmul fast float %5896, %5898
  %5903 = fmul fast float %5902, %5899
  %5904 = fsub fast float %5901, %5903
  %5905 = fmul fast float %5728, %5728
  %5906 = fsub fast float %5730, %5905
  %5907 = fmul fast float %5898, %5898
  %5908 = fmul fast float %5907, %5896
  %5909 = fsub fast float %5906, %5908
  %5910 = fdiv fast float %5904, %5909
  %5911 = fmul fast float %5910, %5898
  %5912 = fsub fast float %5899, %5911
  %5913 = fmul fast float %5912, %5896
  %5914 = fmul fast float %5913, %5727
  %5915 = fsub fast float 1.000000e+00, %5914
  %5916 = fmul fast float %5910, %5728
  %5917 = fsub fast float %5915, %5916
  %5918 = fmul fast float %5913, %5913
  %5919 = fmul fast float %5910, 4.000000e+00
  %5920 = fmul fast float %5919, %5917
  %5921 = fsub fast float %5918, %5920
  %5922 = call float @dx.op.unary.f32(i32 24, float %5921)  ; Sqrt(value)
  %5923 = fcmp fast oge float %5913, 0.000000e+00
  %5924 = fsub fast float -0.000000e+00, %5922
  %5925 = select i1 %5923, float %5924, float %5922
  %5926 = fsub fast float %5925, %5913
  %5927 = fdiv fast float %5926, %5910
  %5928 = fdiv fast float %5917, %5926
  %5929 = fmul fast float %5927, 5.000000e-01
  %5930 = fmul fast float %5928, 2.000000e+00
  %5931 = select i1 %5923, float %5929, float %5930
  %5932 = select i1 %5923, float %5930, float %5929
  %5933 = call float @dx.op.binary.f32(i32 35, float %5931, float %5932)  ; FMax(a,b)
  %5934 = call float @dx.op.binary.f32(i32 36, float %5931, float %5932)  ; FMin(a,b)
  %5935 = fcmp fast ogt float %5892, %5933
  %5936 = fsub fast float %5892, %5934
  %5937 = fsub fast float %5892, %5933
  %5938 = fsub fast float %5933, %5934
  %5939 = select i1 %5935, float %5937, float %5938
  %5940 = fmul float %5936, %5939
  %5941 = select i1 %5935, float %5934, float %5892
  %5942 = fcmp fast ogt float %5892, %5934
  %5943 = fmul fast float %5941, %5933
  %5944 = fadd fast float %5941, %5933
  %5945 = fmul fast float %5944, %5727
  %5946 = fadd fast float %5943, %5728
  %5947 = fsub fast float %5946, %5945
  %5948 = fdiv fast float %5947, %5940
  %5949 = select i1 %5942, float %5948, float 0.000000e+00
  %5950 = fsub fast float 1.000000e+00, %5949
  %5951 = select i1 %5935, float %5950, float %5949
  %5952 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5712, 3
  %5954 = fmul fast float %5953, %5952
  %5955 = fsub fast float 1.000000e+00, %5954
  br label %5956

; <label>:5956                                    ; preds = %5885, %5597, %5562, %5558, %5522
  %5957 = phi float [ 1.000000e+00, %5522 ], [ %5955, %5885 ], [ 1.000000e+00, %5562 ], [ 1.000000e+00, %5597 ], [ 1.000000e+00, %5558 ]
  %5958 = fcmp fast ogt float %5554, 0.000000e+00
  br i1 %5958, label %5959, label %5967, !dx.controlflow.hints !114

; <label>:5959                                    ; preds = %5956
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5962 = fadd fast float %5961, %5435
  %5963 = call float @dx.op.binary.f32(i32 35, float %5962, float 0.000000e+00)  ; FMax(a,b)
  %5964 = fadd fast float %5963, 0x3F10000000000000
  %5965 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5453, float %5454, float undef, float undef, i32 0, i32 0, i32 undef, float %5964)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  br label %5967

; <label>:5967                                    ; preds = %5959, %5956
  %5968 = phi float [ %5966, %5959 ], [ 1.000000e+00, %5956 ]
  %5969 = fcmp fast ogt float %5552, 0.000000e+00
  br i1 %5969, label %5970, label %5978, !dx.controlflow.hints !115

; <label>:5970                                    ; preds = %5967
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5973 = fadd fast float %5972, %5435
  %5974 = call float @dx.op.binary.f32(i32 35, float %5973, float 0.000000e+00)  ; FMax(a,b)
  %5975 = fadd fast float %5974, 0x3F10000000000000
  %5976 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5445, float %5446, float undef, float undef, i32 0, i32 0, i32 undef, float %5975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5977 = extractvalue %dx.types.ResRet.f32 %5976, 0
  br label %5978

; <label>:5978                                    ; preds = %5970, %5967
  %5979 = phi float [ %5977, %5970 ], [ 1.000000e+00, %5967 ]
  %5980 = fcmp fast ogt float %5551, 0.000000e+00
  br i1 %5980, label %5981, label %5993, !dx.controlflow.hints !116

; <label>:5981                                    ; preds = %5978
  %5982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5982, 0
  %5984 = fadd fast float %5983, %5435
  %5985 = call float @dx.op.binary.f32(i32 35, float %5984, float 0.000000e+00)  ; FMax(a,b)
  %5986 = fadd fast float %5985, 0x3F10000000000000
  br i1 %5438, label %5987, label %5990, !dx.controlflow.hints !117

; <label>:5987                                    ; preds = %5981
  %5988 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5427, float %5431, float undef, float undef, i32 0, i32 0, i32 undef, float %5986)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5989 = extractvalue %dx.types.ResRet.f32 %5988, 0
  br label %5993

; <label>:5990                                    ; preds = %5981
  %5991 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5427, float %5431, float undef, float undef, i32 0, i32 0, i32 undef, float %5986)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 0
  br label %5993

; <label>:5993                                    ; preds = %5990, %5987, %5978
  %5994 = phi float [ %5989, %5987 ], [ %5992, %5990 ], [ 1.000000e+00, %5978 ]
  %5995 = fsub fast float %5968, %5957
  %5996 = fmul fast float %5995, %5524
  %5997 = fadd fast float %5996, %5957
  %5998 = fsub fast float %5979, %5997
  %5999 = fmul fast float %5998, %5523
  %6000 = fadd fast float %5999, %5997
  %6001 = fsub fast float %5994, %6000
  %6002 = fmul fast float %6001, %5551
  %6003 = fadd fast float %6002, %6000
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 2
  %6006 = fcmp fast ogt float %6005, 0.000000e+00
  br i1 %6006, label %6007, label %6047, !dx.controlflow.hints !118

; <label>:6007                                    ; preds = %5993
  %6008 = fcmp fast ugt float %6005, 0.000000e+00
  br i1 %6008, label %6009, label %6044

; <label>:6009                                    ; preds = %6007
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.CBufRet.f32 %6010, 1
  %6013 = extractvalue %dx.types.CBufRet.f32 %6010, 2
  %6014 = extractvalue %dx.types.CBufRet.f32 %6010, 3
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6019 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6020 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6021 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.CBufRet.f32 %6022, 1
  %6025 = extractvalue %dx.types.CBufRet.f32 %6022, 2
  %6026 = fadd fast float %6023, %5404
  %6027 = fadd fast float %6024, %5405
  %6028 = fadd fast float %6025, %5406
  %6029 = fmul fast float %6026, %6011
  %6030 = call float @dx.op.tertiary.f32(i32 46, float %6012, float %6027, float %6029)  ; FMad(a,b,c)
  %6031 = call float @dx.op.tertiary.f32(i32 46, float %6013, float %6028, float %6030)  ; FMad(a,b,c)
  %6032 = fadd fast float %6031, %6014
  %6033 = fmul fast float %6026, %6016
  %6034 = call float @dx.op.tertiary.f32(i32 46, float %6017, float %6027, float %6033)  ; FMad(a,b,c)
  %6035 = call float @dx.op.tertiary.f32(i32 46, float %6018, float %6028, float %6034)  ; FMad(a,b,c)
  %6036 = fadd fast float %6035, %6019
  %6037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6032, float %6036, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6038 = extractvalue %dx.types.ResRet.f32 %6037, 0
  %6039 = fmul fast float %6038, %6021
  %6040 = fadd fast float %6039, %6020
  %6041 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6042 = fmul fast float %6041, %6005
  %6043 = fsub fast float 1.000000e+00, %6042
  br label %6044

; <label>:6044                                    ; preds = %6009, %6007
  %6045 = phi float [ %6043, %6009 ], [ 1.000000e+00, %6007 ]
  %6046 = fmul fast float %6045, %6003
  br label %6047

; <label>:6047                                    ; preds = %6044, %5993, %5384
  %6048 = phi float [ 1.000000e+00, %5384 ], [ %6046, %6044 ], [ %6003, %5993 ]
  %6049 = call float @dx.op.binary.f32(i32 36, float %6048, float %6048)  ; FMin(a,b)
  %6050 = call float @dx.op.binary.f32(i32 36, float %6048, float %6049)  ; FMin(a,b)
  %6051 = fcmp fast ogt float %6050, 0.000000e+00
  br i1 %6051, label %6052, label %6212, !dx.controlflow.hints !119

; <label>:6052                                    ; preds = %6047
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.CBufRet.f32 %6053, 1
  %6056 = extractvalue %dx.types.CBufRet.f32 %6053, 2
  %6057 = extractvalue %dx.types.CBufRet.f32 %6053, 3
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 0
  %6060 = extractvalue %dx.types.CBufRet.f32 %6058, 1
  %6061 = extractvalue %dx.types.CBufRet.f32 %6058, 2
  %6062 = extractvalue %dx.types.CBufRet.f32 %6058, 3
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.CBufRet.f32 %6063, 2
  %6067 = extractvalue %dx.types.CBufRet.f32 %6063, 3
  %6068 = fmul fast float %6054, %5404
  %6069 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %6055, float %6068)  ; FMad(a,b,c)
  %6070 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %6056, float %6069)  ; FMad(a,b,c)
  %6071 = fadd fast float %6070, %6057
  %6072 = fmul fast float %6059, %5404
  %6073 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %6060, float %6072)  ; FMad(a,b,c)
  %6074 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %6061, float %6073)  ; FMad(a,b,c)
  %6075 = fadd fast float %6074, %6062
  %6076 = fmul fast float %6064, %5404
  %6077 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %6065, float %6076)  ; FMad(a,b,c)
  %6078 = call float @dx.op.tertiary.f32(i32 46, float %5406, float %6066, float %6077)  ; FMad(a,b,c)
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 0
  %6081 = extractvalue %dx.types.CBufRet.f32 %6079, 1
  %6082 = extractvalue %dx.types.CBufRet.f32 %6079, 3
  %6083 = fmul fast float %6082, %6071
  %6084 = fmul fast float %6082, %6075
  %6085 = fadd fast float %6083, %6080
  %6086 = fadd fast float %6084, %6081
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.CBufRet.f32 %6087, 1
  %6090 = fsub fast float %6085, %6088
  %6091 = fsub fast float %6086, %6089
  %6092 = fcmp fast olt float %6090, 0.000000e+00
  %6093 = fcmp fast olt float %6091, 0.000000e+00
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6097 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6098 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6099 = select i1 %6092, float %6095, float %6097
  %6100 = select i1 %6093, float %6096, float %6098
  %6101 = fmul fast float %6099, %6090
  %6102 = fmul fast float %6100, %6091
  %6103 = call float @dx.op.unary.f32(i32 6, float %6101)  ; FAbs(value)
  %6104 = call float @dx.op.unary.f32(i32 6, float %6102)  ; FAbs(value)
  %6105 = extractvalue %dx.types.CBufRet.f32 %5399, 0
  %6106 = call float @dx.op.binary.f32(i32 35, float %6103, float %6104)  ; FMax(a,b)
  %6107 = fsub fast float %6105, %6106
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6109 = fcmp fast ogt float %6108, 0.000000e+00
  br i1 %6109, label %6110, label %6151, !dx.controlflow.hints !120

; <label>:6110                                    ; preds = %6052
  %6111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6085, float %6086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6112 = extractvalue %dx.types.ResRet.f32 %6111, 1
  %6113 = fcmp fast ogt float %6112, 0.000000e+00
  br i1 %6113, label %6114, label %6146

; <label>:6114                                    ; preds = %6110
  %6115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6085, float %6086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6116 = extractvalue %dx.types.ResRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.ResRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.ResRet.f32 %6115, 2
  %6119 = extractvalue %dx.types.ResRet.f32 %6115, 3
  %6120 = fsub fast float 1.000000e+00, %6067
  %6121 = fsub fast float %6120, %6078
  %6122 = fmul fast float %6121, 0x400921FB60000000
  %6123 = fadd fast float %6122, 0x3FF921FB60000000
  %6124 = call float @dx.op.unary.f32(i32 13, float %6123)  ; Sin(value)
  %6125 = fadd fast float %6124, -1.000000e+00
  %6126 = fmul fast float %6125, 0x3FD45F3060000000
  %6127 = fmul fast float %6121, 0x401921FB60000000
  %6128 = fadd fast float %6127, 0x400921FB60000000
  %6129 = call float @dx.op.unary.f32(i32 13, float %6128)  ; Sin(value)
  %6130 = fadd fast float %6129, 0x3E7777A5C0000000
  %6131 = fmul fast float %6130, 0x3FC45F3060000000
  %6132 = fmul fast float %6121, 0x4022D97C80000000
  %6133 = fadd fast float %6132, 0x4012D97C80000000
  %6134 = call float @dx.op.unary.f32(i32 13, float %6133)  ; Sin(value)
  %6135 = fadd fast float %6134, 1.000000e+00
  %6136 = fmul fast float %6135, 0x3FBB2995E0000000
  %6137 = fmul fast float %6121, 0x402921FB60000000
  %6138 = fadd fast float %6137, 0x401921FB60000000
  %6139 = call float @dx.op.unary.f32(i32 13, float %6138)  ; Sin(value)
  %6140 = fadd fast float %6139, 0xBE8777A5C0000000
  %6141 = fmul fast float %6140, 0x3FB45F3060000000
  %6142 = call float @dx.op.dot4.f32(i32 56, float %6116, float %6117, float %6118, float %6119, float %6126, float %6131, float %6136, float %6141)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6143 = fmul fast float %6142, 0xBFF7154760000000
  %6144 = call float @dx.op.unary.f32(i32 21, float %6143)  ; Exp(value)
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  br label %6146

; <label>:6146                                    ; preds = %6114, %6110
  %6147 = phi float [ %6145, %6114 ], [ 1.000000e+00, %6110 ]
  %6148 = fadd fast float %6147, -1.000000e+00
  %6149 = fmul fast float %6148, %6108
  %6150 = fadd fast float %6149, 1.000000e+00
  br label %6151

; <label>:6151                                    ; preds = %6146, %6052
  %6152 = phi float [ %6150, %6146 ], [ 1.000000e+00, %6052 ]
  %6153 = fmul fast float %6152, %6048
  %6154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.CBufRet.f32 %6154, 1
  %6157 = extractvalue %dx.types.CBufRet.f32 %6154, 2
  %6158 = fadd fast float %6155, %194
  %6159 = fadd fast float %6156, %195
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 1
  %6162 = fsub fast float -0.000000e+00, %6158
  %6163 = fsub fast float -0.000000e+00, %6159
  %6164 = fsub fast float %5033, %6157
  %6165 = fadd fast float %6164, %6161
  %6166 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6162, float %6163, float %6165)  ; Dot3(ax,ay,az,bx,by,bz)
  %6167 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5385, float %5386, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = fdiv fast float 1.000000e+00, %6167
  %6169 = fmul fast float %6168, %6166
  %6170 = fmul fast float %5385, %6169
  %6171 = fmul fast float %5386, %6169
  %6172 = fadd fast float %6170, %6158
  %6173 = fadd fast float %6171, %6159
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.f32 %6174, 1
  %6177 = fsub fast float %6172, %6175
  %6178 = fsub fast float %6173, %6176
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6182 = fmul fast float %6177, %6180
  %6183 = fmul fast float %6178, %6181
  %6184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6185 = extractvalue %dx.types.CBufRet.i32 %6184, 3
  %6186 = icmp eq i32 %6185, 0
  br i1 %6186, label %6192, label %6187

; <label>:6187                                    ; preds = %6151
  %6188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6182, float %6183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6189 = extractvalue %dx.types.ResRet.f32 %6188, 0
  %6190 = extractvalue %dx.types.ResRet.f32 %6188, 1
  %6191 = extractvalue %dx.types.ResRet.f32 %6188, 2
  br label %6197

; <label>:6192                                    ; preds = %6151
  %6193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6182, float %6183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6194 = extractvalue %dx.types.ResRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.ResRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.ResRet.f32 %6193, 2
  br label %6197

; <label>:6197                                    ; preds = %6192, %6187
  %6198 = phi float [ %6189, %6187 ], [ %6194, %6192 ]
  %6199 = phi float [ %6190, %6187 ], [ %6195, %6192 ]
  %6200 = phi float [ %6191, %6187 ], [ %6196, %6192 ]
  %6201 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6202 = fmul fast float %6201, %6198
  %6203 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6204 = fsub fast float %6169, %6203
  %6205 = fsub fast float %6204, %6202
  %6206 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6205)  ; FMax(a,b)
  %6207 = fmul fast float %6206, %6199
  %6208 = call float @dx.op.binary.f32(i32 36, float %6200, float %6207)  ; FMin(a,b)
  %6209 = fmul fast float %6208, 0xBFF7154760000000
  %6210 = call float @dx.op.unary.f32(i32 21, float %6209)  ; Exp(value)
  %6211 = fmul fast float %6153, %6210
  br label %6212

; <label>:6212                                    ; preds = %6197, %6047
  %6213 = phi float [ %6211, %6197 ], [ %6048, %6047 ]
  %6214 = call float @dx.op.binary.f32(i32 36, float %6213, float %6213)  ; FMin(a,b)
  %6215 = call float @dx.op.binary.f32(i32 36, float %6213, float %6214)  ; FMin(a,b)
  %6216 = fcmp fast ogt float %6215, 0.000000e+00
  br i1 %6216, label %6217, label %6468, !dx.controlflow.hints !121

; <label>:6217                                    ; preds = %6212
  %6218 = fmul fast float %6213, %5396
  %6219 = fmul fast float %6213, %5397
  %6220 = fmul fast float %6213, %5398
  %6221 = fsub fast float %196, %4229
  %6222 = fcmp fast ogt float %6221, 0.000000e+00
  %6223 = fmul fast float %5385, 5.120000e+02
  %6224 = fmul fast float %5386, 5.120000e+02
  %6225 = fmul fast float %5387, 5.120000e+02
  %6226 = fadd fast float %6225, %196
  %6227 = fsub fast float %4229, %6226
  %6228 = fmul fast float %6227, 2.000000e+00
  %6229 = fadd fast float %6228, %6226
  %6230 = select i1 %6222, float %6229, float %6226
  %6231 = fsub fast float %6230, %196
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6223, float %6224, float %6231, float %6223, float %6224, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = call float @dx.op.unary.f32(i32 25, float %6232)  ; Rsqrt(value)
  %6234 = fmul fast float %6233, %6223
  %6235 = fmul fast float %6233, %6224
  %6236 = fmul fast float %6233, %6231
  %6237 = fsub fast float %4229, %196
  %6238 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6237)  ; Dot3(ax,ay,az,bx,by,bz)
  %6239 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6234, float %6235, float %6236)  ; Dot3(ax,ay,az,bx,by,bz)
  %6240 = fdiv fast float 1.000000e+00, %6239
  %6241 = fmul fast float %6240, %6238
  %6242 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6221, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6243 = fcmp fast ogt float %6242, 0.000000e+00
  %6244 = fcmp fast olt float %6242, 0.000000e+00
  %6245 = zext i1 %6243 to i32
  %6246 = zext i1 %6244 to i32
  %6247 = sub nsw i32 %6245, %6246
  %6248 = sitofp i32 %6247 to float
  %6249 = fsub fast float %6230, %4229
  %6250 = call float @dx.op.dot3.f32(i32 55, float %6223, float %6224, float %6249, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6251 = fcmp fast ogt float %6250, 0.000000e+00
  %6252 = fcmp fast olt float %6250, 0.000000e+00
  %6253 = zext i1 %6251 to i32
  %6254 = zext i1 %6252 to i32
  %6255 = sub nsw i32 %6253, %6254
  %6256 = sitofp i32 %6255 to float
  %6257 = fcmp fast une float %6248, %6256
  br i1 %6257, label %6258, label %6268

; <label>:6258                                    ; preds = %6217
  %6259 = fmul fast float %6241, %6236
  %6260 = fmul fast float %6241, %6235
  %6261 = fmul fast float %6241, %6234
  %6262 = fmul fast float %6261, %6261
  %6263 = fmul fast float %6260, %6260
  %6264 = fadd fast float %6262, %6263
  %6265 = fmul fast float %6259, %6259
  %6266 = fadd fast float %6264, %6265
  %6267 = call float @dx.op.unary.f32(i32 24, float %6266)  ; Sqrt(value)
  br label %6278

; <label>:6268                                    ; preds = %6217
  %6269 = icmp slt i32 %6247, 0
  br i1 %6269, label %6270, label %6278

; <label>:6270                                    ; preds = %6268
  %6271 = fsub fast float %196, %6230
  %6272 = fmul fast float %6223, %6223
  %6273 = fmul fast float %6224, %6224
  %6274 = fadd fast float %6272, %6273
  %6275 = fmul fast float %6271, %6271
  %6276 = fadd fast float %6274, %6275
  %6277 = call float @dx.op.unary.f32(i32 24, float %6276)  ; Sqrt(value)
  br label %6278

; <label>:6278                                    ; preds = %6270, %6268, %6258
  %6279 = phi float [ %6267, %6258 ], [ %6277, %6270 ], [ 0.000000e+00, %6268 ]
  %6280 = fsub fast float -0.000000e+00, %6279
  %6281 = select i1 %6222, float -0.000000e+00, float %6280
  %6282 = fmul fast float %4230, 0x3FF7154760000000
  %6283 = fmul fast float %6282, %6281
  %6284 = fmul fast float %4231, 0x3FF7154760000000
  %6285 = fmul fast float %6284, %6281
  %6286 = fmul fast float %4232, 0x3FF7154760000000
  %6287 = fmul fast float %6286, %6281
  %6288 = call float @dx.op.unary.f32(i32 21, float %6283)  ; Exp(value)
  %6289 = call float @dx.op.unary.f32(i32 21, float %6285)  ; Exp(value)
  %6290 = call float @dx.op.unary.f32(i32 21, float %6287)  ; Exp(value)
  %6291 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6292 = call float @dx.op.unary.f32(i32 7, float %6289)  ; Saturate(value)
  %6293 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6294 = fmul fast float %6218, %6291
  %6295 = fmul fast float %6219, %6292
  %6296 = fmul fast float %6220, %6293
  %6297 = fsub fast float %5385, %5021
  %6298 = fsub fast float %5386, %5020
  %6299 = fsub fast float %5387, %5019
  %6300 = call float @dx.op.dot3.f32(i32 55, float %6297, float %6298, float %6299, float %6297, float %6298, float %6299)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = call float @dx.op.unary.f32(i32 25, float %6300)  ; Rsqrt(value)
  %6302 = fmul fast float %6301, %6297
  %6303 = fmul fast float %6301, %6298
  %6304 = fmul fast float %6301, %6299
  %6305 = call float @dx.op.dot3.f32(i32 55, float %5385, float %5386, float %5387, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %6306 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5017, float %5016, float %6302, float %6303, float %6304)  ; Dot3(ax,ay,az,bx,by,bz)
  %6307 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6308 = fmul fast float %6307, %6307
  %6309 = fmul fast float %6308, %5049
  %6310 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6311 = fmul fast float %6310, %6307
  %6312 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %6302, float %6303, float %6304)  ; Dot3(ax,ay,az,bx,by,bz)
  %6313 = fmul fast float %6312, %6312
  %6314 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6315 = fsub fast float 1.000000e+00, %5031
  %6316 = call float @dx.op.binary.f32(i32 35, float %6315, float 0x3F847AE140000000)  ; FMax(a,b)
  %6317 = fmul fast float %6316, %6316
  %6318 = fmul fast float %6317, %6317
  %6319 = fsub fast float 1.000000e+00, %6318
  %6320 = fmul fast float %5036, %5036
  %6321 = fmul fast float %6320, %6319
  %6322 = fadd fast float %6321, %6318
  %6323 = bitcast float %6322 to i32
  %6324 = ashr i32 %6323, 1
  %6325 = add nsw i32 %6324, 532487669
  %6326 = bitcast i32 %6325 to float
  %6327 = fadd fast float %6326, %5036
  %6328 = fmul fast float %6318, %6313
  %6329 = fsub fast float 1.000000e+00, %6313
  %6330 = fadd fast float %6329, %6328
  %6331 = fmul fast float %6314, %6314
  %6332 = fmul fast float %6331, %6319
  %6333 = fadd fast float %6332, %6318
  %6334 = bitcast float %6333 to i32
  %6335 = ashr i32 %6334, 1
  %6336 = add nsw i32 %6335, 532487669
  %6337 = bitcast i32 %6336 to float
  %6338 = fadd fast float %6337, %6314
  %6339 = fmul fast float %6330, %6330
  %6340 = fmul fast float %6339, %6327
  %6341 = fmul fast float %6340, %6338
  %6342 = fdiv fast float 0x3FF0A00000000000, %6341
  %6343 = fmul fast float %6342, %6318
  %6344 = call float @dx.op.unary.f32(i32 6, float %6306)  ; FAbs(value)
  %6345 = fsub fast float 1.000000e+00, %6344
  %6346 = bitcast float %6345 to i32
  %6347 = sitofp i32 %6346 to float
  %6348 = fmul fast float %6347, 5.000000e+00
  %6349 = fadd fast float %6348, 0xC1EFBF8940000000
  %6350 = fptosi float %6349 to i32
  %6351 = bitcast i32 %6350 to float
  %6352 = fsub fast float 1.000000e+00, %5025
  %6353 = fsub fast float 1.000000e+00, %5026
  %6354 = fsub fast float 1.000000e+00, %5034
  %6355 = fmul fast float %6351, %6352
  %6356 = fmul fast float %6351, %6353
  %6357 = fmul fast float %6351, %6354
  %6358 = fadd fast float %6355, %5025
  %6359 = fadd fast float %6356, %5026
  %6360 = fadd fast float %6357, %5034
  br i1 %5296, label %6361, label %6384

; <label>:6361                                    ; preds = %6278
  %6362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3828, float %6344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6363 = extractvalue %dx.types.ResRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.ResRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.ResRet.f32 %6362, 2
  %6366 = fadd fast float %6363, -5.000000e-01
  %6367 = fadd fast float %6364, -5.000000e-01
  %6368 = fadd fast float %6365, -5.000000e-01
  %6369 = fmul fast float %5025, 4.000000e+00
  %6370 = fmul fast float %6369, %6352
  %6371 = fmul fast float %6370, %6366
  %6372 = fmul fast float %5026, 4.000000e+00
  %6373 = fmul fast float %6372, %6353
  %6374 = fmul fast float %6373, %6367
  %6375 = fmul fast float %5034, 4.000000e+00
  %6376 = fmul fast float %6375, %6354
  %6377 = fmul fast float %6376, %6368
  %6378 = fadd fast float %6371, %6358
  %6379 = fadd fast float %6374, %6359
  %6380 = fadd fast float %6377, %6360
  %6381 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6382 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6383 = call float @dx.op.unary.f32(i32 7, float %6380)  ; Saturate(value)
  br label %6384

; <label>:6384                                    ; preds = %6361, %6278
  %6385 = phi float [ %6381, %6361 ], [ %6358, %6278 ]
  %6386 = phi float [ %6382, %6361 ], [ %6359, %6278 ]
  %6387 = phi float [ %6383, %6361 ], [ %6360, %6278 ]
  %6388 = fmul fast float %6305, 9.843750e-01
  %6389 = fadd fast float %6388, 7.812500e-03
  %6390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6389, float %5286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6391 = extractvalue %dx.types.ResRet.f32 %6390, 2
  %6392 = extractvalue %dx.types.ResRet.f32 %6390, 3
  %6393 = fmul fast float %6391, %5025
  %6394 = fmul fast float %6391, %5026
  %6395 = fmul fast float %6391, %5034
  %6396 = fadd fast float %6393, %6392
  %6397 = fadd fast float %6394, %6392
  %6398 = fadd fast float %6395, %6392
  br i1 %5296, label %6399, label %6422

; <label>:6399                                    ; preds = %6384
  %6400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3828, float %6305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6401 = extractvalue %dx.types.ResRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.ResRet.f32 %6400, 1
  %6403 = extractvalue %dx.types.ResRet.f32 %6400, 2
  %6404 = fadd fast float %6401, -5.000000e-01
  %6405 = fadd fast float %6402, -5.000000e-01
  %6406 = fadd fast float %6403, -5.000000e-01
  %6407 = fmul fast float %5025, 4.000000e+00
  %6408 = fmul fast float %6407, %6352
  %6409 = fmul fast float %6408, %6404
  %6410 = fmul fast float %5026, 4.000000e+00
  %6411 = fmul fast float %6410, %6353
  %6412 = fmul fast float %6411, %6405
  %6413 = fmul fast float %5034, 4.000000e+00
  %6414 = fmul fast float %6413, %6354
  %6415 = fmul fast float %6414, %6406
  %6416 = fadd fast float %6409, %6396
  %6417 = fadd fast float %6412, %6397
  %6418 = fadd fast float %6415, %6398
  %6419 = call float @dx.op.unary.f32(i32 7, float %6416)  ; Saturate(value)
  %6420 = call float @dx.op.unary.f32(i32 7, float %6417)  ; Saturate(value)
  %6421 = call float @dx.op.unary.f32(i32 7, float %6418)  ; Saturate(value)
  br label %6422

; <label>:6422                                    ; preds = %6399, %6384
  %6423 = phi float [ %6419, %6399 ], [ %6396, %6384 ]
  %6424 = phi float [ %6420, %6399 ], [ %6397, %6384 ]
  %6425 = phi float [ %6421, %6399 ], [ %6398, %6384 ]
  %6426 = call float @dx.op.binary.f32(i32 35, float %6424, float %6425)  ; FMax(a,b)
  %6427 = call float @dx.op.binary.f32(i32 35, float %6423, float %6426)  ; FMax(a,b)
  %6428 = fsub fast float 1.000000e+00, %6427
  %6429 = fmul fast float %6385, %6343
  %6430 = fmul fast float %6386, %6343
  %6431 = fmul fast float %6387, %6343
  %6432 = fsub fast float 1.000000e+00, %6306
  %6433 = bitcast float %6432 to i32
  %6434 = sitofp i32 %6433 to float
  %6435 = fmul fast float %6434, 5.000000e+00
  %6436 = fadd fast float %6435, 0xC1EFBF8940000000
  %6437 = fptosi float %6436 to i32
  %6438 = bitcast i32 %6437 to float
  %6439 = fmul fast float %6438, %3829
  %6440 = fmul fast float %6428, %6439
  %6441 = fmul fast float %6440, %5346
  %6442 = fmul fast float %6440, %5347
  %6443 = fmul fast float %6440, %5348
  %6444 = fadd fast float %6441, %6429
  %6445 = fadd fast float %6442, %6430
  %6446 = fadd fast float %6443, %6431
  %6447 = fmul fast float %6311, %6294
  %6448 = fmul fast float %6447, %6428
  %6449 = fmul fast float %6311, %6295
  %6450 = fmul fast float %6449, %6428
  %6451 = fmul fast float %6311, %6296
  %6452 = fmul fast float %6451, %6428
  %6453 = fmul fast float %6447, %6444
  %6454 = fmul fast float %6449, %6445
  %6455 = fmul fast float %6451, %6446
  %6456 = fadd fast float %6448, %5330
  %6457 = fmul fast float %6456, %3825
  %6458 = fadd fast float %6450, %5331
  %6459 = fmul fast float %6458, %3825
  %6460 = fadd fast float %6452, %5332
  %6461 = fmul fast float %6460, %3825
  %6462 = fadd fast float %6453, %5373
  %6463 = fmul fast float %6462, %3825
  %6464 = fadd fast float %6454, %5376
  %6465 = fmul fast float %6464, %3825
  %6466 = fadd fast float %6455, %5379
  %6467 = fmul fast float %6466, %3825
  br label %6468

; <label>:6468                                    ; preds = %6422, %6212, %5323
  %6469 = phi float [ %5374, %5323 ], [ %5374, %6212 ], [ %6463, %6422 ]
  %6470 = phi float [ %5377, %5323 ], [ %5377, %6212 ], [ %6465, %6422 ]
  %6471 = phi float [ %5380, %5323 ], [ %5380, %6212 ], [ %6467, %6422 ]
  %6472 = phi float [ %5369, %5323 ], [ %5369, %6212 ], [ %6457, %6422 ]
  %6473 = phi float [ %5370, %5323 ], [ %5370, %6212 ], [ %6459, %6422 ]
  %6474 = phi float [ %5371, %5323 ], [ %5371, %6212 ], [ %6461, %6422 ]
  %6475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.i32 %6475, 0
  %6477 = icmp eq i32 %6476, 0
  br i1 %6477, label %7098, label %6478

; <label>:6478                                    ; preds = %6468
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6481 = extractvalue %dx.types.CBufRet.f32 %6479, 3
  %6482 = fmul fast float %6480, %111
  %6483 = fmul fast float %6481, %112
  %6484 = fptoui float %6482 to i32
  %6485 = fptoui float %6483 to i32
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6488 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6489 = extractvalue %dx.types.CBufRet.f32 %6486, 3
  %6490 = fadd fast float %102, -4.000000e+00
  %6491 = call float @dx.op.binary.f32(i32 35, float %6490, float 0.000000e+00)  ; FMax(a,b)
  %6492 = fadd fast float %6491, %6487
  %6493 = fmul fast float %6492, %6488
  %6494 = call float @dx.op.unary.f32(i32 23, float %6493)  ; Log(value)
  %6495 = fmul fast float %6494, %6489
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 2
  %6498 = fmul fast float %6495, %6497
  %6499 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  %6500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.i32 %6500, 1
  %6502 = add i32 %6501, -1
  %6503 = uitofp i32 %6501 to float
  %6504 = fmul fast float %6503, %6499
  %6505 = fptoui float %6504 to i32
  %6506 = call i32 @dx.op.binary.i32(i32 40, i32 %6505, i32 %6502)  ; UMin(a,b)
  %6507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.i32 %6507, 2
  %6509 = extractvalue %dx.types.CBufRet.i32 %6507, 3
  %6510 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6485, i32 %6508, i32 %6484)  ; UMad(a,b,c)
  %6511 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6506, i32 %6509, i32 %6510)  ; UMad(a,b,c)
  %6512 = add nsw i32 %6476, -1
  %6513 = call i32 @dx.op.binary.i32(i32 37, i32 %6512, i32 0)  ; IMax(a,b)
  %6514 = call float @dx.op.binary.f32(i32 35, float %102, float 0.000000e+00)  ; FMax(a,b)
  %6515 = fptoui float %6514 to i32
  %6516 = lshr i32 %6515, 5
  %6517 = call i32 @dx.op.binary.i32(i32 40, i32 %6516, i32 8191)  ; UMin(a,b)
  %6518 = shl i32 %6517, 2
  %6519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6518, i32 undef)  ; BufferLoad(srv,index,wot)
  %6520 = extractvalue %dx.types.ResRet.i32 %6519, 0
  %6521 = lshr i32 %6520, 16
  %6522 = and i32 %6520, 65535
  %6523 = lshr i32 %6520, 21
  %6524 = lshr i32 %6522, 5
  %6525 = call i32 @dx.op.binary.i32(i32 40, i32 %6524, i32 %6513)  ; UMin(a,b)
  %6526 = icmp ugt i32 %6523, %6525
  br i1 %6526, label %7098, label %6527

; <label>:6527                                    ; preds = %6478
  br label %6528

; <label>:6528                                    ; preds = %7088, %6527
  %6529 = phi i32 [ %7095, %7088 ], [ %6523, %6527 ]
  %6530 = phi float [ %7089, %7088 ], [ %6469, %6527 ]
  %6531 = phi float [ %7090, %7088 ], [ %6470, %6527 ]
  %6532 = phi float [ %7091, %7088 ], [ %6471, %6527 ]
  %6533 = phi float [ %7092, %7088 ], [ %6472, %6527 ]
  %6534 = phi float [ %7093, %7088 ], [ %6473, %6527 ]
  %6535 = phi float [ %7094, %7088 ], [ %6474, %6527 ]
  %6536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.i32 %6536, 0
  %6538 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6511, i32 %6537, i32 %6529)  ; UMad(a,b,c)
  %6539 = shl i32 %6538, 2
  %6540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6539, i32 undef)  ; BufferLoad(srv,index,wot)
  %6541 = extractvalue %dx.types.ResRet.i32 %6540, 0
  %6542 = shl i32 %6529, 5
  %6543 = sub nsw i32 %6521, %6542
  %6544 = call i32 @dx.op.binary.i32(i32 37, i32 %6543, i32 0)  ; IMax(a,b)
  %6545 = call i32 @dx.op.binary.i32(i32 38, i32 %6544, i32 31)  ; IMin(a,b)
  %6546 = sub nsw i32 1, %6521
  %6547 = add nsw i32 %6546, %6522
  %6548 = call i32 @dx.op.binary.i32(i32 37, i32 %6547, i32 0)  ; IMax(a,b)
  %6549 = call i32 @dx.op.binary.i32(i32 38, i32 %6548, i32 32)  ; IMin(a,b)
  %6550 = and i32 %6549, 31
  %6551 = shl i32 -1, %6550
  %6552 = xor i32 %6551, -1
  %6553 = and i32 %6545, 31
  %6554 = shl i32 %6552, %6553
  %6555 = icmp eq i32 %6549, 32
  %6556 = select i1 %6555, i32 -1, i32 %6554
  %6557 = and i32 %6556, %6541
  %6558 = icmp eq i32 %6557, 0
  br i1 %6558, label %7088, label %6559

; <label>:6559                                    ; preds = %6528
  br label %6560

; <label>:6560                                    ; preds = %6694, %6559
  %6561 = phi i32 [ %6572, %6694 ], [ %6557, %6559 ]
  %6562 = phi float [ %6695, %6694 ], [ %6530, %6559 ]
  %6563 = phi float [ %6696, %6694 ], [ %6531, %6559 ]
  %6564 = phi float [ %6697, %6694 ], [ %6532, %6559 ]
  %6565 = phi float [ %6698, %6694 ], [ %6533, %6559 ]
  %6566 = phi float [ %6699, %6694 ], [ %6534, %6559 ]
  %6567 = phi float [ %6700, %6694 ], [ %6535, %6559 ]
  %6568 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6561)  ; FirstbitLo(value)
  %6569 = add i32 %6568, %6542
  %6570 = and i32 %6568, 31
  %6571 = shl i32 1, %6570
  %6572 = xor i32 %6571, %6561
  %6573 = mul i32 %6569, 112
  %6574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6573, i32 undef)  ; BufferLoad(srv,index,wot)
  %6575 = extractvalue %dx.types.ResRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.ResRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.ResRet.f32 %6574, 2
  %6578 = or i32 %6573, 12
  %6579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6578, i32 undef)  ; BufferLoad(srv,index,wot)
  %6580 = extractvalue %dx.types.ResRet.f32 %6579, 0
  %6581 = add i32 %6573, 16
  %6582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6581, i32 undef)  ; BufferLoad(srv,index,wot)
  %6583 = extractvalue %dx.types.ResRet.f32 %6582, 0
  %6584 = extractvalue %dx.types.ResRet.f32 %6582, 1
  %6585 = extractvalue %dx.types.ResRet.f32 %6582, 2
  %6586 = add i32 %6573, 28
  %6587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6586, i32 undef)  ; BufferLoad(srv,index,wot)
  %6588 = extractvalue %dx.types.ResRet.i32 %6587, 0
  %6589 = add i32 %6573, 44
  %6590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6589, i32 undef)  ; BufferLoad(srv,index,wot)
  %6591 = extractvalue %dx.types.ResRet.f32 %6590, 0
  %6592 = add i32 %6573, 48
  %6593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6592, i32 undef)  ; BufferLoad(srv,index,wot)
  %6594 = extractvalue %dx.types.ResRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.ResRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.ResRet.f32 %6593, 2
  %6597 = extractvalue %dx.types.ResRet.f32 %6593, 3
  %6598 = add i32 %6573, 64
  %6599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6598, i32 undef)  ; BufferLoad(srv,index,wot)
  %6600 = extractvalue %dx.types.ResRet.f32 %6599, 0
  %6601 = extractvalue %dx.types.ResRet.f32 %6599, 1
  %6602 = extractvalue %dx.types.ResRet.f32 %6599, 2
  %6603 = extractvalue %dx.types.ResRet.f32 %6599, 3
  %6604 = add i32 %6573, 80
  %6605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6604, i32 undef)  ; BufferLoad(srv,index,wot)
  %6606 = extractvalue %dx.types.ResRet.f32 %6605, 1
  %6607 = extractvalue %dx.types.ResRet.f32 %6605, 2
  %6608 = add i32 %6573, 92
  %6609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6608, i32 undef)  ; BufferLoad(srv,index,wot)
  %6610 = extractvalue %dx.types.ResRet.i32 %6609, 0
  %6611 = call float @dx.op.dot3.f32(i32 55, float %6575, float %6576, float %6577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6612 = select i1 %253, float %6606, float %6575
  %6613 = select i1 %253, float %6611, float %6576
  %6614 = select i1 %253, float %6607, float %6577
  %6615 = and i32 %6610, 65535
  %6616 = uitofp i32 %6615 to float
  %6617 = lshr i32 %6610, 16
  %6618 = uitofp i32 %6617 to float
  %6619 = and i32 %6588, 65535
  %6620 = and i32 %6588, 50331648
  %6621 = icmp eq i32 %6620, 33554432
  %6622 = fsub fast float %6594, %194
  %6623 = fsub fast float %6595, %195
  %6624 = fsub fast float %6596, %196
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6622, float %6623, float %6624, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = call float @dx.op.unary.f32(i32 24, float %6625)  ; Sqrt(value)
  %6627 = fdiv fast float 1.000000e+00, %6626
  %6628 = fmul fast float %6627, %6622
  %6629 = fmul fast float %6627, %6623
  %6630 = fmul fast float %6627, %6624
  %6631 = fadd fast float %6626, %6580
  %6632 = fdiv fast float 1.000000e+00, %6631
  %6633 = fmul float %6591, %6632
  %6634 = fmul float %6633, %6633
  %6635 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  br i1 %6621, label %6636, label %6657

; <label>:6636                                    ; preds = %6560
  %6637 = fmul fast float %6602, %6583
  %6638 = fmul fast float %6602, %6584
  %6639 = fmul fast float %6602, %6585
  %6640 = fadd fast float %6622, %6637
  %6641 = fadd fast float %6623, %6638
  %6642 = fadd fast float %6624, %6639
  %6643 = call float @dx.op.dot3.f32(i32 55, float %6640, float %6641, float %6642, float %6640, float %6641, float %6642)  ; Dot3(ax,ay,az,bx,by,bz)
  %6644 = call float @dx.op.unary.f32(i32 25, float %6643)  ; Rsqrt(value)
  %6645 = fmul fast float %6644, %6640
  %6646 = fmul fast float %6644, %6641
  %6647 = fmul fast float %6644, %6642
  %6648 = fsub fast float %194, %6594
  %6649 = fsub fast float %195, %6595
  %6650 = fsub fast float %196, %6596
  %6651 = fsub fast float -0.000000e+00, %6648
  %6652 = fsub fast float -0.000000e+00, %6649
  %6653 = fsub fast float -0.000000e+00, %6650
  %6654 = call float @dx.op.dot3.f32(i32 55, float %6651, float %6652, float %6653, float %6583, float %6584, float %6585)  ; Dot3(ax,ay,az,bx,by,bz)
  %6655 = fcmp fast ogt float %6654, 0.000000e+00
  %6656 = uitofp i1 %6655 to float
  br label %6657

; <label>:6657                                    ; preds = %6636, %6560
  %6658 = phi float [ %6656, %6636 ], [ 1.000000e+00, %6560 ]
  %6659 = phi float [ %6645, %6636 ], [ %6628, %6560 ]
  %6660 = phi float [ %6646, %6636 ], [ %6629, %6560 ]
  %6661 = phi float [ %6647, %6636 ], [ %6630, %6560 ]
  %6662 = call float @dx.op.dot3.f32(i32 55, float %6583, float %6584, float %6585, float %6659, float %6660, float %6661)  ; Dot3(ax,ay,az,bx,by,bz)
  %6663 = fmul fast float %6662, %6662
  %6664 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6665 = fsub fast float 1.000000e+00, %6664
  %6666 = fmul fast float %6665, 5.000000e-01
  %6667 = fcmp fast ogt float %6662, 0.000000e+00
  %6668 = fsub fast float 1.000000e+00, %6666
  %6669 = select i1 %6667, float %6666, float %6668
  %6670 = fmul fast float %6669, %6618
  %6671 = fadd fast float %6670, %6616
  %6672 = fmul fast float %6671, 0x3EF0001000000000
  %6673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6672, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6674 = extractvalue %dx.types.ResRet.f32 %6673, 0
  %6675 = fmul fast float %6662, %6600
  %6676 = fadd fast float %6675, %6601
  %6677 = call float @dx.op.unary.f32(i32 7, float %6676)  ; Saturate(value)
  %6678 = select i1 %6621, float 1.000000e+00, float %6677
  %6679 = select i1 %6621, float %6677, float 1.000000e+00
  %6680 = fmul fast float %6626, %6597
  %6681 = fsub fast float 1.000000e+00, %6680
  %6682 = fmul fast float %6681, %6603
  %6683 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6684 = fmul fast float %6683, %6679
  %6685 = fmul fast float %6684, 2.000000e+00
  %6686 = fsub fast float 3.000000e+00, %6685
  %6687 = fmul fast float %6674, %6658
  %6688 = fmul fast float %6684, %6684
  %6689 = fmul fast float %6688, %6687
  %6690 = fmul fast float %6689, %6686
  %6691 = call float @dx.op.binary.f32(i32 36, float %6690, float %6690)  ; FMin(a,b)
  %6692 = call float @dx.op.binary.f32(i32 36, float %6690, float %6691)  ; FMin(a,b)
  %6693 = fcmp fast ogt float %6692, 0.000000e+00
  br i1 %6693, label %6702, label %6694, !dx.controlflow.hints !122

; <label>:6694                                    ; preds = %7044, %6802, %6657
  %6695 = phi float [ %6562, %6802 ], [ %6562, %6657 ], [ %7084, %7044 ]
  %6696 = phi float [ %6563, %6802 ], [ %6563, %6657 ], [ %7085, %7044 ]
  %6697 = phi float [ %6564, %6802 ], [ %6564, %6657 ], [ %7086, %7044 ]
  %6698 = phi float [ %6565, %6802 ], [ %6565, %6657 ], [ %7078, %7044 ]
  %6699 = phi float [ %6566, %6802 ], [ %6566, %6657 ], [ %7079, %7044 ]
  %6700 = phi float [ %6567, %6802 ], [ %6567, %6657 ], [ %7080, %7044 ]
  %6701 = icmp eq i32 %6561, %6571
  br i1 %6701, label %7087, label %6560

; <label>:6702                                    ; preds = %6657
  %6703 = icmp eq i32 %6619, 255
  br i1 %6703, label %6802, label %6704, !dx.controlflow.hints !123

; <label>:6704                                    ; preds = %6702
  %6705 = mul nuw nsw i32 %6619, 176
  %6706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6705, i32 undef)  ; BufferLoad(srv,index,wot)
  %6707 = extractvalue %dx.types.ResRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.ResRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.ResRet.f32 %6706, 2
  %6710 = extractvalue %dx.types.ResRet.f32 %6706, 3
  %6711 = add nuw nsw i32 %6705, 16
  %6712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6711, i32 undef)  ; BufferLoad(srv,index,wot)
  %6713 = extractvalue %dx.types.ResRet.f32 %6712, 0
  %6714 = extractvalue %dx.types.ResRet.f32 %6712, 1
  %6715 = add nuw nsw i32 %6705, 32
  %6716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6715, i32 undef)  ; BufferLoad(srv,index,wot)
  %6717 = extractvalue %dx.types.ResRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.ResRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.ResRet.f32 %6716, 2
  %6720 = add nuw nsw i32 %6705, 48
  %6721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6720, i32 undef)  ; BufferLoad(srv,index,wot)
  %6722 = extractvalue %dx.types.ResRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.ResRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.ResRet.f32 %6721, 2
  %6725 = extractvalue %dx.types.ResRet.f32 %6721, 3
  %6726 = add nuw nsw i32 %6705, 64
  %6727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6726, i32 undef)  ; BufferLoad(srv,index,wot)
  %6728 = extractvalue %dx.types.ResRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.ResRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.ResRet.f32 %6727, 2
  %6731 = extractvalue %dx.types.ResRet.f32 %6727, 3
  %6732 = add nuw nsw i32 %6705, 80
  %6733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6732, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.f32 %6733, 0
  %6735 = extractvalue %dx.types.ResRet.f32 %6733, 1
  %6736 = extractvalue %dx.types.ResRet.f32 %6733, 2
  %6737 = extractvalue %dx.types.ResRet.f32 %6733, 3
  %6738 = add nuw nsw i32 %6705, 96
  %6739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6738, i32 undef)  ; BufferLoad(srv,index,wot)
  %6740 = extractvalue %dx.types.ResRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.ResRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.ResRet.f32 %6739, 2
  %6743 = extractvalue %dx.types.ResRet.f32 %6739, 3
  %6744 = bitcast float %6714 to i32
  %6745 = fmul fast float %6719, %120
  %6746 = fmul fast float %6719, %122
  %6747 = fmul fast float %6719, %124
  %6748 = fadd fast float %6745, %194
  %6749 = fadd fast float %6746, %195
  %6750 = fadd fast float %6747, %196
  %6751 = fmul fast float %6748, %6722
  %6752 = call float @dx.op.tertiary.f32(i32 46, float %6749, float %6728, float %6751)  ; FMad(a,b,c)
  %6753 = call float @dx.op.tertiary.f32(i32 46, float %6750, float %6734, float %6752)  ; FMad(a,b,c)
  %6754 = fadd fast float %6753, %6740
  %6755 = fmul fast float %6748, %6723
  %6756 = call float @dx.op.tertiary.f32(i32 46, float %6749, float %6729, float %6755)  ; FMad(a,b,c)
  %6757 = call float @dx.op.tertiary.f32(i32 46, float %6750, float %6735, float %6756)  ; FMad(a,b,c)
  %6758 = fadd fast float %6757, %6741
  %6759 = fmul fast float %6748, %6724
  %6760 = call float @dx.op.tertiary.f32(i32 46, float %6749, float %6730, float %6759)  ; FMad(a,b,c)
  %6761 = call float @dx.op.tertiary.f32(i32 46, float %6750, float %6736, float %6760)  ; FMad(a,b,c)
  %6762 = fadd fast float %6761, %6742
  %6763 = fmul fast float %6748, %6725
  %6764 = call float @dx.op.tertiary.f32(i32 46, float %6749, float %6731, float %6763)  ; FMad(a,b,c)
  %6765 = call float @dx.op.tertiary.f32(i32 46, float %6750, float %6737, float %6764)  ; FMad(a,b,c)
  %6766 = fadd fast float %6765, %6743
  %6767 = fdiv fast float %6754, %6766
  %6768 = fdiv fast float %6758, %6766
  %6769 = fdiv fast float %6762, %6766
  %6770 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6769)  ; FMax(a,b)
  %6771 = fmul fast float %264, 0x401921FB60000000
  %6772 = call float @dx.op.unary.f32(i32 13, float %6771)  ; Sin(value)
  %6773 = call float @dx.op.unary.f32(i32 12, float %6771)  ; Cos(value)
  %6774 = fsub fast float -0.000000e+00, %6772
  %6775 = fmul fast float %6709, 5.000000e-01
  %6776 = call float @dx.op.dot2.f32(i32 54, float %264, float %264, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6777 = call float @dx.op.unary.f32(i32 22, float %6776)  ; Frc(value)
  %6778 = fmul fast float %6777, 0x404A7DD040000000
  %6779 = call float @dx.op.unary.f32(i32 22, float %6778)  ; Frc(value)
  %6780 = fmul fast float %6779, %6718
  %6781 = fadd fast float %6780, %6775
  %6782 = call float @dx.op.tertiary.f32(i32 46, float %6781, float %6774, float 0.000000e+00)  ; FMad(a,b,c)
  %6783 = call float @dx.op.tertiary.f32(i32 46, float %6781, float %6773, float 0.000000e+00)  ; FMad(a,b,c)
  %6784 = fadd fast float %6782, %6767
  %6785 = fadd fast float %6783, %6768
  %6786 = fmul fast float %6784, %6713
  %6787 = fmul fast float %6785, %6713
  %6788 = call float @dx.op.binary.f32(i32 35, float %6786, float %6709)  ; FMax(a,b)
  %6789 = call float @dx.op.binary.f32(i32 35, float %6787, float %6709)  ; FMax(a,b)
  %6790 = call float @dx.op.binary.f32(i32 36, float %6788, float %6710)  ; FMin(a,b)
  %6791 = call float @dx.op.binary.f32(i32 36, float %6789, float %6710)  ; FMin(a,b)
  %6792 = fadd fast float %6790, %6707
  %6793 = fadd fast float %6791, %6708
  %6794 = uitofp i32 %6744 to float
  %6795 = fadd fast float %6770, %6717
  %6796 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6792, float %6793, float %6794, float undef, i32 0, i32 0, i32 undef, float %6795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6797 = extractvalue %dx.types.ResRet.f32 %6796, 0
  %6798 = fadd fast float %6797, -1.000000e+00
  %6799 = fmul fast float %6798, %6678
  %6800 = fadd fast float %6799, 1.000000e+00
  %6801 = fmul fast float %6800, %6690
  br label %6802

; <label>:6802                                    ; preds = %6704, %6702
  %6803 = phi float [ %6801, %6704 ], [ %6690, %6702 ]
  %6804 = call float @dx.op.binary.f32(i32 36, float %6803, float %6803)  ; FMin(a,b)
  %6805 = call float @dx.op.binary.f32(i32 36, float %6803, float %6804)  ; FMin(a,b)
  %6806 = fcmp fast ogt float %6805, 0.000000e+00
  br i1 %6806, label %6807, label %6694, !dx.controlflow.hints !124

; <label>:6807                                    ; preds = %6802
  %6808 = fmul fast float %6803, %6612
  %6809 = fmul fast float %6803, %6613
  %6810 = fmul fast float %6803, %6614
  %6811 = fsub fast float %6596, %4229
  %6812 = fcmp fast ogt float %6811, 0.000000e+00
  %6813 = fsub fast float %196, %4229
  %6814 = fcmp fast ogt float %6813, 0.000000e+00
  %6815 = xor i1 %6814, %6812
  %6816 = fsub fast float %4229, %6596
  %6817 = fmul fast float %6816, 2.000000e+00
  %6818 = fadd fast float %6817, %6596
  %6819 = select i1 %6815, float %6596, float %6818
  %6820 = fsub fast float %6819, %196
  %6821 = call float @dx.op.dot3.f32(i32 55, float %6622, float %6623, float %6820, float %6622, float %6623, float %6820)  ; Dot3(ax,ay,az,bx,by,bz)
  %6822 = call float @dx.op.unary.f32(i32 25, float %6821)  ; Rsqrt(value)
  %6823 = fmul fast float %6822, %6622
  %6824 = fmul fast float %6822, %6623
  %6825 = fmul fast float %6822, %6820
  %6826 = fsub fast float %4229, %196
  %6827 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6826)  ; Dot3(ax,ay,az,bx,by,bz)
  %6828 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6823, float %6824, float %6825)  ; Dot3(ax,ay,az,bx,by,bz)
  %6829 = fdiv fast float 1.000000e+00, %6828
  %6830 = fmul fast float %6829, %6827
  %6831 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6813, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6832 = fcmp fast ogt float %6831, 0.000000e+00
  %6833 = fcmp fast olt float %6831, 0.000000e+00
  %6834 = zext i1 %6832 to i32
  %6835 = zext i1 %6833 to i32
  %6836 = sub nsw i32 %6834, %6835
  %6837 = sitofp i32 %6836 to float
  %6838 = fsub fast float %6819, %4229
  %6839 = call float @dx.op.dot3.f32(i32 55, float %6622, float %6623, float %6838, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6840 = fcmp fast ogt float %6839, 0.000000e+00
  %6841 = fcmp fast olt float %6839, 0.000000e+00
  %6842 = zext i1 %6840 to i32
  %6843 = zext i1 %6841 to i32
  %6844 = sub nsw i32 %6842, %6843
  %6845 = sitofp i32 %6844 to float
  %6846 = fcmp fast une float %6837, %6845
  br i1 %6846, label %6847, label %6857

; <label>:6847                                    ; preds = %6807
  %6848 = fmul fast float %6830, %6825
  %6849 = fmul fast float %6830, %6824
  %6850 = fmul fast float %6830, %6823
  %6851 = fmul fast float %6850, %6850
  %6852 = fmul fast float %6849, %6849
  %6853 = fadd fast float %6851, %6852
  %6854 = fmul fast float %6848, %6848
  %6855 = fadd fast float %6853, %6854
  %6856 = call float @dx.op.unary.f32(i32 24, float %6855)  ; Sqrt(value)
  br label %6869

; <label>:6857                                    ; preds = %6807
  %6858 = icmp slt i32 %6836, 0
  br i1 %6858, label %6859, label %6869

; <label>:6859                                    ; preds = %6857
  %6860 = fsub fast float %194, %6594
  %6861 = fsub fast float %195, %6595
  %6862 = fsub fast float %196, %6819
  %6863 = fmul fast float %6860, %6860
  %6864 = fmul fast float %6861, %6861
  %6865 = fadd fast float %6863, %6864
  %6866 = fmul fast float %6862, %6862
  %6867 = fadd fast float %6865, %6866
  %6868 = call float @dx.op.unary.f32(i32 24, float %6867)  ; Sqrt(value)
  br label %6869

; <label>:6869                                    ; preds = %6859, %6857, %6847
  %6870 = phi float [ %6856, %6847 ], [ %6868, %6859 ], [ 0.000000e+00, %6857 ]
  %6871 = and i1 %6814, %6812
  %6872 = fsub fast float -0.000000e+00, %6870
  %6873 = select i1 %6871, float -0.000000e+00, float %6872
  %6874 = fmul fast float %4230, 0x3FF7154760000000
  %6875 = fmul fast float %6874, %6873
  %6876 = fmul fast float %4231, 0x3FF7154760000000
  %6877 = fmul fast float %6876, %6873
  %6878 = fmul fast float %4232, 0x3FF7154760000000
  %6879 = fmul fast float %6878, %6873
  %6880 = call float @dx.op.unary.f32(i32 21, float %6875)  ; Exp(value)
  %6881 = call float @dx.op.unary.f32(i32 21, float %6877)  ; Exp(value)
  %6882 = call float @dx.op.unary.f32(i32 21, float %6879)  ; Exp(value)
  %6883 = call float @dx.op.unary.f32(i32 7, float %6880)  ; Saturate(value)
  %6884 = call float @dx.op.unary.f32(i32 7, float %6881)  ; Saturate(value)
  %6885 = call float @dx.op.unary.f32(i32 7, float %6882)  ; Saturate(value)
  %6886 = fmul fast float %6808, %6883
  %6887 = fmul fast float %6809, %6884
  %6888 = fmul fast float %6810, %6885
  %6889 = fsub fast float %6628, %5021
  %6890 = fsub fast float %6629, %5020
  %6891 = fsub fast float %6630, %5019
  %6892 = call float @dx.op.dot3.f32(i32 55, float %6889, float %6890, float %6891, float %6889, float %6890, float %6891)  ; Dot3(ax,ay,az,bx,by,bz)
  %6893 = call float @dx.op.unary.f32(i32 25, float %6892)  ; Rsqrt(value)
  %6894 = fmul fast float %6893, %6889
  %6895 = fmul fast float %6893, %6890
  %6896 = fmul fast float %6893, %6891
  %6897 = call float @dx.op.dot3.f32(i32 55, float %6628, float %6629, float %6630, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %6898 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5017, float %5016, float %6894, float %6895, float %6896)  ; Dot3(ax,ay,az,bx,by,bz)
  %6899 = call float @dx.op.unary.f32(i32 7, float %6897)  ; Saturate(value)
  %6900 = fmul fast float %6899, %6635
  %6901 = fmul fast float %6899, %6899
  %6902 = fmul fast float %6901, %5049
  %6903 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6904 = fmul fast float %6900, %6903
  %6905 = bitcast float %6625 to i32
  %6906 = ashr i32 %6905, 1
  %6907 = sub nsw i32 1597463007, %6906
  %6908 = bitcast i32 %6907 to float
  %6909 = fmul fast float %6908, %6622
  %6910 = fmul fast float %6908, %6623
  %6911 = fmul fast float %6908, %6624
  %6912 = fsub fast float %6909, %5021
  %6913 = fsub fast float %6910, %5020
  %6914 = fsub fast float %6911, %5019
  %6915 = call float @dx.op.dot3.f32(i32 55, float %6912, float %6913, float %6914, float %6912, float %6913, float %6914)  ; Dot3(ax,ay,az,bx,by,bz)
  %6916 = call float @dx.op.unary.f32(i32 25, float %6915)  ; Rsqrt(value)
  %6917 = fmul fast float %6912, %6916
  %6918 = fmul fast float %6913, %6916
  %6919 = fmul fast float %6914, %6916
  %6920 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %6917, float %6918, float %6919)  ; Dot3(ax,ay,az,bx,by,bz)
  %6921 = fmul fast float %6920, %6920
  %6922 = call float @dx.op.unary.f32(i32 6, float %6897)  ; FAbs(value)
  %6923 = fsub fast float 1.000000e+00, %5031
  %6924 = call float @dx.op.binary.f32(i32 35, float %6923, float 0x3F847AE140000000)  ; FMax(a,b)
  %6925 = fmul fast float %6924, %6924
  %6926 = fmul fast float %6925, %6925
  %6927 = fsub fast float 1.000000e+00, %6926
  %6928 = fmul fast float %5036, %5036
  %6929 = fmul fast float %6928, %6927
  %6930 = fadd fast float %6929, %6926
  %6931 = bitcast float %6930 to i32
  %6932 = ashr i32 %6931, 1
  %6933 = add nsw i32 %6932, 532487669
  %6934 = bitcast i32 %6933 to float
  %6935 = fadd fast float %6934, %5036
  %6936 = fmul fast float %6926, %6921
  %6937 = fsub fast float 1.000000e+00, %6921
  %6938 = fadd fast float %6937, %6936
  %6939 = fmul fast float %6922, %6922
  %6940 = fmul fast float %6939, %6927
  %6941 = fadd fast float %6940, %6926
  %6942 = bitcast float %6941 to i32
  %6943 = ashr i32 %6942, 1
  %6944 = add nsw i32 %6943, 532487669
  %6945 = bitcast i32 %6944 to float
  %6946 = fadd fast float %6945, %6922
  %6947 = fmul fast float %6938, %6938
  %6948 = fmul fast float %6947, %6935
  %6949 = fmul fast float %6948, %6946
  %6950 = fdiv fast float 1.000000e+00, %6949
  %6951 = bitcast float %6926 to i32
  %6952 = sitofp i32 %6951 to float
  %6953 = fmul fast float %6952, 0x3FE7F73180000000
  %6954 = fadd fast float %6953, 0x41AFE27C40000000
  %6955 = fptosi float %6954 to i32
  %6956 = bitcast i32 %6955 to float
  %6957 = fmul fast float %6591, 0x3FD80E9D60000000
  %6958 = fmul fast float %6957, %6908
  %6959 = fadd fast float %6956, %6958
  %6960 = bitcast float %6959 to i32
  %6961 = sub nsw i32 2129859010, %6960
  %6962 = bitcast i32 %6961 to float
  %6963 = fmul fast float %6926, %6950
  %6964 = fmul fast float %6963, %6956
  %6965 = fmul fast float %6964, %6962
  %6966 = call float @dx.op.unary.f32(i32 6, float %6898)  ; FAbs(value)
  %6967 = fsub fast float 1.000000e+00, %6966
  %6968 = bitcast float %6967 to i32
  %6969 = sitofp i32 %6968 to float
  %6970 = fmul fast float %6969, 5.000000e+00
  %6971 = fadd fast float %6970, 0xC1EFBF8940000000
  %6972 = fptosi float %6971 to i32
  %6973 = bitcast i32 %6972 to float
  %6974 = fsub fast float 1.000000e+00, %5025
  %6975 = fsub fast float 1.000000e+00, %5026
  %6976 = fsub fast float 1.000000e+00, %5034
  %6977 = fmul fast float %6973, %6974
  %6978 = fmul fast float %6973, %6975
  %6979 = fmul fast float %6973, %6976
  %6980 = fadd fast float %6977, %5025
  %6981 = fadd fast float %6978, %5026
  %6982 = fadd fast float %6979, %5034
  br i1 %5296, label %6983, label %7006

; <label>:6983                                    ; preds = %6869
  %6984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3828, float %6966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6985 = extractvalue %dx.types.ResRet.f32 %6984, 0
  %6986 = extractvalue %dx.types.ResRet.f32 %6984, 1
  %6987 = extractvalue %dx.types.ResRet.f32 %6984, 2
  %6988 = fadd fast float %6985, -5.000000e-01
  %6989 = fadd fast float %6986, -5.000000e-01
  %6990 = fadd fast float %6987, -5.000000e-01
  %6991 = fmul fast float %5025, 4.000000e+00
  %6992 = fmul fast float %6991, %6974
  %6993 = fmul fast float %6992, %6988
  %6994 = fmul fast float %5026, 4.000000e+00
  %6995 = fmul fast float %6994, %6975
  %6996 = fmul fast float %6995, %6989
  %6997 = fmul fast float %5034, 4.000000e+00
  %6998 = fmul fast float %6997, %6976
  %6999 = fmul fast float %6998, %6990
  %7000 = fadd fast float %6993, %6980
  %7001 = fadd fast float %6996, %6981
  %7002 = fadd fast float %6999, %6982
  %7003 = call float @dx.op.unary.f32(i32 7, float %7000)  ; Saturate(value)
  %7004 = call float @dx.op.unary.f32(i32 7, float %7001)  ; Saturate(value)
  %7005 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  br label %7006

; <label>:7006                                    ; preds = %6983, %6869
  %7007 = phi float [ %7003, %6983 ], [ %6980, %6869 ]
  %7008 = phi float [ %7004, %6983 ], [ %6981, %6869 ]
  %7009 = phi float [ %7005, %6983 ], [ %6982, %6869 ]
  %7010 = fmul fast float %6897, 9.843750e-01
  %7011 = fadd fast float %7010, 7.812500e-03
  %7012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %7011, float %5286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7013 = extractvalue %dx.types.ResRet.f32 %7012, 2
  %7014 = extractvalue %dx.types.ResRet.f32 %7012, 3
  %7015 = fmul fast float %7013, %5025
  %7016 = fmul fast float %7013, %5026
  %7017 = fmul fast float %7013, %5034
  %7018 = fadd fast float %7015, %7014
  %7019 = fadd fast float %7016, %7014
  %7020 = fadd fast float %7017, %7014
  br i1 %5296, label %7021, label %7044

; <label>:7021                                    ; preds = %7006
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3828, float %6897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = fadd fast float %7023, -5.000000e-01
  %7027 = fadd fast float %7024, -5.000000e-01
  %7028 = fadd fast float %7025, -5.000000e-01
  %7029 = fmul fast float %5025, 4.000000e+00
  %7030 = fmul fast float %7029, %6974
  %7031 = fmul fast float %7030, %7026
  %7032 = fmul fast float %5026, 4.000000e+00
  %7033 = fmul fast float %7032, %6975
  %7034 = fmul fast float %7033, %7027
  %7035 = fmul fast float %5034, 4.000000e+00
  %7036 = fmul fast float %7035, %6976
  %7037 = fmul fast float %7036, %7028
  %7038 = fadd fast float %7031, %7018
  %7039 = fadd fast float %7034, %7019
  %7040 = fadd fast float %7037, %7020
  %7041 = call float @dx.op.unary.f32(i32 7, float %7038)  ; Saturate(value)
  %7042 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7043 = call float @dx.op.unary.f32(i32 7, float %7040)  ; Saturate(value)
  br label %7044

; <label>:7044                                    ; preds = %7021, %7006
  %7045 = phi float [ %7041, %7021 ], [ %7018, %7006 ]
  %7046 = phi float [ %7042, %7021 ], [ %7019, %7006 ]
  %7047 = phi float [ %7043, %7021 ], [ %7020, %7006 ]
  %7048 = call float @dx.op.binary.f32(i32 35, float %7046, float %7047)  ; FMax(a,b)
  %7049 = call float @dx.op.binary.f32(i32 35, float %7045, float %7048)  ; FMax(a,b)
  %7050 = fsub fast float 1.000000e+00, %7049
  %7051 = fmul fast float %7007, %6965
  %7052 = fmul fast float %7008, %6965
  %7053 = fmul fast float %7009, %6965
  %7054 = fsub fast float 1.000000e+00, %6898
  %7055 = bitcast float %7054 to i32
  %7056 = sitofp i32 %7055 to float
  %7057 = fmul fast float %7056, 5.000000e+00
  %7058 = fadd fast float %7057, 0xC1EFBF8940000000
  %7059 = fptosi float %7058 to i32
  %7060 = bitcast i32 %7059 to float
  %7061 = fmul fast float %7060, %3829
  %7062 = fmul fast float %7050, %7061
  %7063 = fmul fast float %7062, %5346
  %7064 = fmul fast float %7062, %5347
  %7065 = fmul fast float %7062, %5348
  %7066 = fadd fast float %7063, %7051
  %7067 = fadd fast float %7064, %7052
  %7068 = fadd fast float %7065, %7053
  %7069 = fmul fast float %6886, %3825
  %7070 = fmul fast float %7069, %6904
  %7071 = fmul fast float %7070, %7050
  %7072 = fmul fast float %6887, %3825
  %7073 = fmul fast float %7072, %6904
  %7074 = fmul fast float %7073, %7050
  %7075 = fmul fast float %6888, %3825
  %7076 = fmul fast float %7075, %6904
  %7077 = fmul fast float %7076, %7050
  %7078 = fadd fast float %7071, %6565
  %7079 = fadd fast float %7074, %6566
  %7080 = fadd fast float %7077, %6567
  %7081 = fmul fast float %7070, %7066
  %7082 = fmul fast float %7073, %7067
  %7083 = fmul fast float %7076, %7068
  %7084 = fadd fast float %7081, %6562
  %7085 = fadd fast float %7082, %6563
  %7086 = fadd fast float %7083, %6564
  br label %6694

; <label>:7087                                    ; preds = %6694
  br label %7088

; <label>:7088                                    ; preds = %7087, %6528
  %7089 = phi float [ %6530, %6528 ], [ %6695, %7087 ]
  %7090 = phi float [ %6531, %6528 ], [ %6696, %7087 ]
  %7091 = phi float [ %6532, %6528 ], [ %6697, %7087 ]
  %7092 = phi float [ %6533, %6528 ], [ %6698, %7087 ]
  %7093 = phi float [ %6534, %6528 ], [ %6699, %7087 ]
  %7094 = phi float [ %6535, %6528 ], [ %6700, %7087 ]
  %7095 = add i32 %6529, 1
  %7096 = icmp ugt i32 %7095, %6525
  br i1 %7096, label %7097, label %6528

; <label>:7097                                    ; preds = %7088
  br label %7098

; <label>:7098                                    ; preds = %7097, %6478, %6468
  %7099 = phi float [ %6469, %6468 ], [ %6469, %6478 ], [ %7089, %7097 ]
  %7100 = phi float [ %6470, %6468 ], [ %6470, %6478 ], [ %7090, %7097 ]
  %7101 = phi float [ %6471, %6468 ], [ %6471, %6478 ], [ %7091, %7097 ]
  %7102 = phi float [ %6472, %6468 ], [ %6472, %6478 ], [ %7092, %7097 ]
  %7103 = phi float [ %6473, %6468 ], [ %6473, %6478 ], [ %7093, %7097 ]
  %7104 = phi float [ %6474, %6468 ], [ %6474, %6478 ], [ %7094, %7097 ]
  %7105 = fmul fast float %3825, %3825
  %7106 = fsub fast float 1.000000e+00, %7105
  %7107 = call float @dx.op.dot3.f32(i32 55, float %7106, float %7106, float %7106, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7108 = fsub fast float 1.000000e+00, %7107
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7111 = fmul fast float %7110, %5352
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 3
  %7114 = fsub fast float 1.000000e+00, %3832
  %7115 = call float @dx.op.unary.f32(i32 7, float %7114)  ; Saturate(value)
  %7116 = fadd fast float %7104, %3831
  %7117 = fmul fast float %7116, %3832
  %7118 = fmul fast float %7115, %7113
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 3
  %7121 = fmul fast float %7102, %5022
  %7122 = fmul fast float %7103, %5023
  %7123 = fmul fast float %7104, %5024
  %7124 = fcmp fast ogt float %102, %216
  %7125 = and i1 %7124, %4235
  %7126 = or i1 %4241, %7125
  %7127 = icmp eq i32 %4234, 2
  %7128 = fcmp fast ole float %102, %216
  %7129 = and i1 %7128, %7127
  %7130 = or i1 %7129, %7126
  br i1 %7125, label %7131, label %7388

; <label>:7131                                    ; preds = %7098
  %7132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7133 = extractvalue %dx.types.CBufRet.f32 %7132, 2
  %7134 = extractvalue %dx.types.CBufRet.f32 %7132, 3
  %7135 = fmul fast float %7133, %111
  %7136 = fmul fast float %7134, %112
  %7137 = call float @dx.op.unary.f32(i32 7, float %7135)  ; Saturate(value)
  %7138 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  %7139 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7137, float %7138, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7140 = extractvalue %dx.types.ResRet.f32 %7139, 0
  %7141 = extractvalue %dx.types.ResRet.f32 %7139, 1
  %7142 = extractvalue %dx.types.ResRet.f32 %7139, 2
  %7143 = extractvalue %dx.types.ResRet.f32 %7139, 3
  %7144 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7137, float %7138, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7145 = extractvalue %dx.types.ResRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.ResRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.ResRet.f32 %7144, 2
  %7148 = extractvalue %dx.types.ResRet.f32 %7144, 3
  %7149 = call float @dx.op.binary.f32(i32 35, float %7141, float %7142)  ; FMax(a,b)
  %7150 = call float @dx.op.binary.f32(i32 35, float %7140, float %7149)  ; FMax(a,b)
  %7151 = call float @dx.op.binary.f32(i32 35, float %7150, float %7143)  ; FMax(a,b)
  %7152 = call float @dx.op.binary.f32(i32 36, float %7146, float %7147)  ; FMin(a,b)
  %7153 = call float @dx.op.binary.f32(i32 36, float %7145, float %7152)  ; FMin(a,b)
  %7154 = call float @dx.op.binary.f32(i32 36, float %7153, float %7148)  ; FMin(a,b)
  %7155 = fmul fast float %7151, 2.550000e+02
  %7156 = fadd fast float %7155, 0x3F70101020000000
  %7157 = fptoui float %7156 to i32
  %7158 = fmul fast float %7154, 2.550000e+02
  %7159 = fadd fast float %7158, 0x3F70101020000000
  %7160 = fptoui float %7159 to i32
  %7161 = icmp ult i32 %7157, %7160
  br i1 %7161, label %7162, label %7330

; <label>:7162                                    ; preds = %7131
  %7163 = fcmp fast ogt float %101, 9.843750e-01
  %7164 = fadd fast float %102, -4.000000e+00
  %7165 = select i1 %7163, float -4.000000e+00, float %7164
  %7166 = call float @dx.op.binary.f32(i32 35, float %7165, float 0.000000e+00)  ; FMax(a,b)
  %7167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.f32 %7167, 0
  %7169 = fadd fast float %7168, %7166
  %7170 = extractvalue %dx.types.CBufRet.f32 %7167, 2
  %7171 = fmul fast float %7169, %7170
  %7172 = call float @dx.op.unary.f32(i32 23, float %7171)  ; Log(value)
  %7173 = extractvalue %dx.types.CBufRet.f32 %7167, 3
  %7174 = fmul fast float %7173, %7172
  %7175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7176 = extractvalue %dx.types.CBufRet.f32 %7175, 2
  %7177 = fmul fast float %7174, %7176
  %7178 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  %7179 = uitofp i32 %7157 to float
  %7180 = uitofp i32 %7160 to float
  %7181 = fadd fast float %7179, 5.000000e-01
  %7182 = fadd fast float %7180, 5.000000e-01
  %7183 = fmul fast float %7176, %7181
  %7184 = fmul fast float %7176, %7182
  %7185 = fadd fast float %7183, 0x3F0FFB4800000000
  %7186 = fadd fast float %7184, 0xBF0FFB4800000000
  %7187 = call float @dx.op.binary.f32(i32 35, float %7178, float %7185)  ; FMax(a,b)
  %7188 = call float @dx.op.binary.f32(i32 36, float %7187, float %7186)  ; FMin(a,b)
  %7189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7190 = extractvalue %dx.types.CBufRet.f32 %7189, 1
  %7191 = extractvalue %dx.types.CBufRet.f32 %7189, 2
  %7192 = extractvalue %dx.types.CBufRet.f32 %7189, 0
  %7193 = fmul fast float %7190, %7188
  %7194 = fadd fast float %7192, %7193
  %7195 = fadd fast float %7192, %7191
  %7196 = fsub fast float %7190, %7191
  %7197 = fadd fast float %7196, %7192
  %7198 = call float @dx.op.binary.f32(i32 35, float %7194, float %7195)  ; FMax(a,b)
  %7199 = call float @dx.op.binary.f32(i32 36, float %7198, float %7197)  ; FMin(a,b)
  %7200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7137, float %7138, float %7199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7201 = extractvalue %dx.types.ResRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.ResRet.f32 %7200, 1
  %7203 = extractvalue %dx.types.ResRet.f32 %7200, 2
  %7204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7205 = extractvalue %dx.types.CBufRet.i32 %7204, 0
  %7206 = extractvalue %dx.types.CBufRet.i32 %7204, 1
  %7207 = uitofp i32 %7205 to float
  %7208 = uitofp i32 %7206 to float
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.CBufRet.f32 %7209, 1
  %7212 = fmul fast float %7207, %7137
  %7213 = fmul fast float %7208, %7138
  %7214 = fadd fast float %7212, -5.000000e-01
  %7215 = fadd fast float %7213, -5.000000e-01
  %7216 = call float @dx.op.unary.f32(i32 22, float %7214)  ; Frc(value)
  %7217 = call float @dx.op.unary.f32(i32 22, float %7215)  ; Frc(value)
  %7218 = fmul fast float %7216, %7216
  %7219 = fmul fast float %7218, %7216
  %7220 = fsub fast float 3.000000e+00, %7216
  %7221 = fmul fast float %7218, %7220
  %7222 = fmul fast float %7216, 3.000000e+00
  %7223 = fmul fast float %7219, 3.000000e+00
  %7224 = fmul fast float %7218, 6.000000e+00
  %7225 = fsub fast float %7223, %7224
  %7226 = fadd fast float %7225, 4.000000e+00
  %7227 = fmul fast float %7226, 0x3FC5555560000000
  %7228 = fmul fast float %7219, -3.000000e+00
  %7229 = fadd fast float %7218, %7216
  %7230 = fmul fast float %7229, 3.000000e+00
  %7231 = fadd fast float %7228, 1.000000e+00
  %7232 = fadd fast float %7231, %7230
  %7233 = fmul fast float %7219, 0x3FC5555560000000
  %7234 = fmul fast float %7217, %7217
  %7235 = fmul fast float %7234, %7217
  %7236 = fsub fast float 3.000000e+00, %7217
  %7237 = fmul fast float %7234, %7236
  %7238 = fmul fast float %7217, 3.000000e+00
  %7239 = fmul fast float %7235, 3.000000e+00
  %7240 = fmul fast float %7234, 6.000000e+00
  %7241 = fsub fast float %7239, %7240
  %7242 = fadd fast float %7241, 4.000000e+00
  %7243 = fmul fast float %7242, 0x3FC5555560000000
  %7244 = fmul fast float %7235, -3.000000e+00
  %7245 = fadd fast float %7234, %7217
  %7246 = fmul fast float %7245, 3.000000e+00
  %7247 = fadd fast float %7244, 1.000000e+00
  %7248 = fadd fast float %7247, %7246
  %7249 = fmul fast float %7235, 0x3FC5555560000000
  %7250 = fadd fast float %7216, 1.000000e+00
  %7251 = fsub fast float 1.000000e+00, %7222
  %7252 = fadd fast float %7251, %7221
  %7253 = fadd fast float %7252, %7226
  %7254 = fmul fast float %7253, 0x3FC5555560000000
  %7255 = fdiv fast float %7227, %7254
  %7256 = fsub fast float %7250, %7255
  %7257 = fsub fast float 1.000000e+00, %7216
  %7258 = fadd fast float %7232, %7219
  %7259 = fmul fast float %7258, 0x3FC5555560000000
  %7260 = fdiv fast float %7233, %7259
  %7261 = fadd fast float %7257, %7260
  %7262 = fadd fast float %7217, 1.000000e+00
  %7263 = fsub fast float 1.000000e+00, %7238
  %7264 = fadd fast float %7263, %7237
  %7265 = fadd fast float %7264, %7242
  %7266 = fmul fast float %7265, 0x3FC5555560000000
  %7267 = fdiv fast float %7243, %7266
  %7268 = fsub fast float %7262, %7267
  %7269 = fsub fast float 1.000000e+00, %7217
  %7270 = fadd fast float %7248, %7235
  %7271 = fmul fast float %7270, 0x3FC5555560000000
  %7272 = fdiv fast float %7249, %7271
  %7273 = fadd fast float %7272, %7269
  %7274 = fmul fast float %7256, %7210
  %7275 = fsub fast float %7137, %7274
  %7276 = fmul fast float %7261, %7210
  %7277 = fadd fast float %7276, %7137
  %7278 = fmul fast float %7273, %7211
  %7279 = fadd fast float %7278, %7138
  %7280 = fmul fast float %7268, %7211
  %7281 = fsub fast float %7138, %7280
  %7282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7275, float %7281, float %7199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7283 = extractvalue %dx.types.ResRet.f32 %7282, 0
  %7284 = extractvalue %dx.types.ResRet.f32 %7282, 1
  %7285 = extractvalue %dx.types.ResRet.f32 %7282, 2
  %7286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7277, float %7281, float %7199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7287 = extractvalue %dx.types.ResRet.f32 %7286, 0
  %7288 = extractvalue %dx.types.ResRet.f32 %7286, 1
  %7289 = extractvalue %dx.types.ResRet.f32 %7286, 2
  %7290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7275, float %7279, float %7199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7291 = extractvalue %dx.types.ResRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.ResRet.f32 %7290, 1
  %7293 = extractvalue %dx.types.ResRet.f32 %7290, 2
  %7294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7277, float %7279, float %7199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7295 = extractvalue %dx.types.ResRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.ResRet.f32 %7294, 1
  %7297 = extractvalue %dx.types.ResRet.f32 %7294, 2
  %7298 = fsub fast float %7291, %7283
  %7299 = fsub fast float %7292, %7284
  %7300 = fsub fast float %7293, %7285
  %7301 = fmul fast float %7298, %7271
  %7302 = fmul fast float %7299, %7271
  %7303 = fmul fast float %7300, %7271
  %7304 = fadd fast float %7301, %7283
  %7305 = fadd fast float %7302, %7284
  %7306 = fadd fast float %7303, %7285
  %7307 = fsub fast float %7295, %7287
  %7308 = fsub fast float %7296, %7288
  %7309 = fsub fast float %7297, %7289
  %7310 = fmul fast float %7307, %7271
  %7311 = fmul fast float %7308, %7271
  %7312 = fmul fast float %7309, %7271
  %7313 = fsub fast float %7287, %7304
  %7314 = fadd fast float %7313, %7310
  %7315 = fsub fast float %7288, %7305
  %7316 = fadd fast float %7315, %7311
  %7317 = fsub fast float %7289, %7306
  %7318 = fadd fast float %7317, %7312
  %7319 = fmul fast float %7314, %7259
  %7320 = fmul fast float %7316, %7259
  %7321 = fmul fast float %7318, %7259
  %7322 = fadd fast float %7319, %7304
  %7323 = fadd fast float %7320, %7305
  %7324 = fadd fast float %7321, %7306
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 1
  %7327 = fmul fast float %7322, %7326
  %7328 = fmul fast float %7323, %7326
  %7329 = fmul fast float %7324, %7326
  br label %7330

; <label>:7330                                    ; preds = %7162, %7131
  %7331 = phi float [ %7201, %7162 ], [ 1.000000e+00, %7131 ]
  %7332 = phi float [ %7202, %7162 ], [ 1.000000e+00, %7131 ]
  %7333 = phi float [ %7203, %7162 ], [ 1.000000e+00, %7131 ]
  %7334 = phi float [ %7327, %7162 ], [ 0.000000e+00, %7131 ]
  %7335 = phi float [ %7328, %7162 ], [ 0.000000e+00, %7131 ]
  %7336 = phi float [ %7329, %7162 ], [ 0.000000e+00, %7131 ]
  %7337 = fmul fast float %7334, %7108
  %7338 = fmul fast float %7335, %7108
  %7339 = fmul fast float %7336, %7108
  %7340 = call float @dx.op.dot3.f32(i32 55, float %7331, float %7332, float %7333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7341 = call float @dx.op.dot3.f32(i32 55, float %7337, float %7338, float %7339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7342 = select i1 %253, float %7340, float %7331
  %7343 = select i1 %253, float %7340, float %7332
  %7344 = select i1 %253, float 1.000000e+00, float %7333
  %7345 = select i1 %253, float %7341, float %7337
  %7346 = select i1 %253, float 0.000000e+00, float %7338
  %7347 = select i1 %253, float 0.000000e+00, float %7339
  %7348 = fmul fast float %7342, %7121
  %7349 = fmul fast float %7343, %7122
  %7350 = fmul fast float %7344, %7123
  %7351 = fadd fast float %7348, %7345
  %7352 = fadd fast float %7349, %7346
  %7353 = fadd fast float %7347, %7350
  %7354 = fmul fast float %7342, %7099
  %7355 = fmul fast float %7343, %7100
  %7356 = fmul fast float %7344, %7101
  %7357 = fmul fast float %143, %7133
  %7358 = fmul fast float %145, %7134
  %7359 = fsub fast float 1.000000e+00, %7357
  %7360 = fsub fast float 1.000000e+00, %7358
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7364 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7365 = fmul fast float %7359, %7362
  %7366 = fmul fast float %7359, %7363
  %7367 = fmul fast float %7359, %7364
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 0
  %7370 = extractvalue %dx.types.CBufRet.f32 %7368, 1
  %7371 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7372 = fmul fast float %7360, %7369
  %7373 = fmul fast float %7360, %7370
  %7374 = fmul fast float %7360, %7371
  %7375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7376 = extractvalue %dx.types.CBufRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.CBufRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.CBufRet.f32 %7375, 2
  %7379 = fadd fast float %7372, %7376
  %7380 = fadd fast float %7379, %7365
  %7381 = fadd fast float %7373, %7377
  %7382 = fadd fast float %7381, %7366
  %7383 = fadd fast float %7374, %7378
  %7384 = fadd fast float %7383, %7367
  %7385 = fmul fast float %7380, %216
  %7386 = fmul fast float %7382, %216
  %7387 = fmul fast float %7384, %216
  br label %7388

; <label>:7388                                    ; preds = %7330, %7098
  %7389 = phi float [ %7385, %7330 ], [ %194, %7098 ]
  %7390 = phi float [ %7386, %7330 ], [ %195, %7098 ]
  %7391 = phi float [ %7387, %7330 ], [ %196, %7098 ]
  %7392 = phi float [ %216, %7330 ], [ %102, %7098 ]
  %7393 = phi float [ %7351, %7330 ], [ %7121, %7098 ]
  %7394 = phi float [ %7352, %7330 ], [ %7122, %7098 ]
  %7395 = phi float [ %7353, %7330 ], [ %7123, %7098 ]
  %7396 = phi float [ %7354, %7330 ], [ %7099, %7098 ]
  %7397 = phi float [ %7355, %7330 ], [ %7100, %7098 ]
  %7398 = phi float [ %7356, %7330 ], [ %7101, %7098 ]
  %7399 = phi float [ %7331, %7330 ], [ 1.000000e+00, %7098 ]
  br i1 %7130, label %8554, label %7400

; <label>:7400                                    ; preds = %7388
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 0
  %7403 = extractvalue %dx.types.CBufRet.f32 %7401, 1
  %7404 = extractvalue %dx.types.CBufRet.f32 %7401, 2
  %7405 = extractvalue %dx.types.CBufRet.f32 %7401, 3
  %7406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7407 = extractvalue %dx.types.CBufRet.f32 %7406, 0
  %7408 = extractvalue %dx.types.CBufRet.f32 %7406, 1
  %7409 = extractvalue %dx.types.CBufRet.f32 %7406, 2
  %7410 = extractvalue %dx.types.CBufRet.f32 %7406, 3
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.CBufRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %7415 = extractvalue %dx.types.CBufRet.f32 %7411, 3
  %7416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.CBufRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.CBufRet.f32 %7416, 2
  %7420 = extractvalue %dx.types.CBufRet.f32 %7416, 3
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 3
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 3
  %7425 = extractvalue %dx.types.CBufRet.f32 %7423, 0
  %7426 = extractvalue %dx.types.CBufRet.f32 %7423, 1
  %7427 = extractvalue %dx.types.CBufRet.f32 %7423, 2
  %7428 = fcmp fast olt float %7427, -5.000000e-01
  %7429 = call float @dx.op.dot3.f32(i32 55, float %7389, float %7390, float %7391, float %7389, float %7390, float %7391)  ; Dot3(ax,ay,az,bx,by,bz)
  %7430 = call float @dx.op.unary.f32(i32 25, float %7429)  ; Rsqrt(value)
  %7431 = fmul fast float %7430, %7429
  %7432 = fmul fast float %7430, %7389
  %7433 = fmul fast float %7430, %7390
  %7434 = fmul fast float %7430, %7391
  %7435 = fadd fast float %7431, %7405
  %7436 = call float @dx.op.dot3.f32(i32 55, float %7432, float %7433, float %7434, float %7402, float %7403, float %7404)  ; Dot3(ax,ay,az,bx,by,bz)
  %7437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.i32 %7437, 1
  %7439 = and i32 %7438, 1
  %7440 = icmp ne i32 %7439, 0
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 2
  %7443 = fcmp fast ogt float %7442, 0.000000e+00
  %7444 = and i1 %7440, %7443
  br i1 %7444, label %7445, label %7851, !dx.controlflow.hints !125

; <label>:7445                                    ; preds = %7400
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 3
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 2
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 2
  %7452 = fsub fast float %7449, %7451
  %7453 = and i32 %7438, 2
  %7454 = extractvalue %dx.types.CBufRet.i32 %7437, 0
  %7455 = call i32 @dx.op.binary.i32(i32 40, i32 %7454, i32 3)  ; UMin(a,b)
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = extractvalue %dx.types.CBufRet.f32 %7450, 0
  %7460 = extractvalue %dx.types.CBufRet.f32 %7450, 1
  %7461 = fsub fast float %7457, %7459
  %7462 = fsub fast float %7458, %7460
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 0
  %7465 = fcmp fast ogt float %7464, 0.000000e+00
  %7466 = fsub fast float -0.000000e+00, %7461
  %7467 = fsub fast float -0.000000e+00, %7462
  %7468 = call float @dx.op.dot2.f32(i32 54, float %7432, float %7433, float %7432, float %7433)  ; Dot2(ax,ay,bx,by)
  %7469 = call float @dx.op.dot2.f32(i32 54, float %7432, float %7433, float %7466, float %7467)  ; Dot2(ax,ay,bx,by)
  %7470 = fmul fast float %7469, 2.000000e+00
  %7471 = call float @dx.op.dot2.f32(i32 54, float %7466, float %7467, float %7466, float %7467)  ; Dot2(ax,ay,bx,by)
  %7472 = fmul fast float %7464, %7464
  %7473 = fsub fast float %7471, %7472
  %7474 = fmul fast float %7470, %7470
  %7475 = fmul fast float %7468, 4.000000e+00
  %7476 = fmul fast float %7475, %7473
  %7477 = fsub fast float %7474, %7476
  %7478 = fcmp fast ogt float %7477, 0.000000e+00
  br i1 %7478, label %7479, label %7494

; <label>:7479                                    ; preds = %7445
  %7480 = fcmp fast ogt float %7470, 0.000000e+00
  %7481 = call float @dx.op.unary.f32(i32 24, float %7477)  ; Sqrt(value)
  %7482 = fsub fast float -0.000000e+00, %7481
  %7483 = select i1 %7480, float %7481, float %7482
  %7484 = fadd fast float %7483, %7470
  %7485 = fmul float %7484, -5.000000e-01
  %7486 = fdiv fast float %7485, %7468
  %7487 = call float @dx.op.binary.f32(i32 35, float %7486, float 0.000000e+00)  ; FMax(a,b)
  %7488 = call float @dx.op.binary.f32(i32 36, float %7431, float %7487)  ; FMin(a,b)
  %7489 = fdiv fast float %7473, %7485
  %7490 = call float @dx.op.binary.f32(i32 35, float %7489, float 0.000000e+00)  ; FMax(a,b)
  %7491 = call float @dx.op.binary.f32(i32 36, float %7431, float %7490)  ; FMin(a,b)
  %7492 = call float @dx.op.binary.f32(i32 36, float %7488, float %7491)  ; FMin(a,b)
  %7493 = call float @dx.op.binary.f32(i32 35, float %7488, float %7491)  ; FMax(a,b)
  br label %7494

; <label>:7494                                    ; preds = %7479, %7445
  %7495 = phi float [ %7493, %7479 ], [ -1.000000e+00, %7445 ]
  %7496 = phi float [ %7492, %7479 ], [ -1.000000e+00, %7445 ]
  %7497 = phi i1 [ true, %7479 ], [ false, %7445 ]
  %7498 = and i1 %7465, %7497
  br i1 %7498, label %7499, label %7501

; <label>:7499                                    ; preds = %7494
  %7500 = fcmp fast oeq float %7496, %7495
  br i1 %7500, label %7804, label %7502

; <label>:7501                                    ; preds = %7494
  br i1 %7465, label %7804, label %7502

; <label>:7502                                    ; preds = %7501, %7499
  %7503 = phi float [ %7431, %7501 ], [ %7495, %7499 ]
  %7504 = phi float [ 0.000000e+00, %7501 ], [ %7496, %7499 ]
  %7505 = icmp ne i32 %7453, 0
  %7506 = fmul fast float %7503, %7434
  %7507 = fadd fast float %7506, %7447
  %7508 = fmul fast float %7507, %7503
  %7509 = select i1 %7505, float 0.000000e+00, float %7508
  %7510 = fcmp fast oeq float %7434, 0.000000e+00
  %7511 = fdiv fast float %7452, %7434
  %7512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7511)  ; FMax(a,b)
  %7513 = select i1 %7510, float %7503, float %7512
  %7514 = call float @dx.op.binary.f32(i32 36, float %7503, float %7513)  ; FMin(a,b)
  %7515 = fcmp fast ogt float %7434, 0.000000e+00
  %7516 = fcmp fast olt float %7452, 0.000000e+00
  br i1 %7515, label %7517, label %7574

; <label>:7517                                    ; preds = %7502
  %7518 = icmp eq i32 %7453, 0
  br i1 %7516, label %7519, label %7563

; <label>:7519                                    ; preds = %7517
  %7520 = select i1 %7518, float %7503, float 0.000000e+00
  %7521 = fsub fast float -0.000000e+00, %7520
  %7522 = call float @dx.op.unary.f32(i32 6, float %7521)  ; FAbs(value)
  %7523 = fmul fast float %7520, %7434
  %7524 = fadd fast float %7523, %7447
  %7525 = fmul fast float %7522, %7524
  %7526 = fsub fast float %7509, %7525
  %7527 = fsub fast float %7503, %7522
  %7528 = select i1 %7518, float %7527, float 0.000000e+00
  %7529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7530 = extractvalue %dx.types.CBufRet.f32 %7529, 0
  %7531 = extractvalue %dx.types.CBufRet.f32 %7529, 1
  %7532 = extractvalue %dx.types.CBufRet.f32 %7529, 2
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 0
  %7535 = extractvalue %dx.types.CBufRet.f32 %7533, 1
  %7536 = extractvalue %dx.types.CBufRet.f32 %7533, 2
  %7537 = extractvalue %dx.types.CBufRet.f32 %7533, 3
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 3
  %7540 = call float @dx.op.binary.f32(i32 36, float %7526, float %7539)  ; FMin(a,b)
  %7541 = fmul fast float %7537, %7528
  %7542 = call float @dx.op.unary.f32(i32 7, float %7541)  ; Saturate(value)
  %7543 = fsub fast float %7534, %7530
  %7544 = fsub fast float %7535, %7531
  %7545 = fsub fast float %7536, %7532
  %7546 = fmul fast float %7542, %7543
  %7547 = fmul fast float %7542, %7544
  %7548 = fmul fast float %7542, %7545
  %7549 = fadd fast float %7546, %7530
  %7550 = fadd fast float %7547, %7531
  %7551 = fadd fast float %7548, %7532
  %7552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7553 = extractvalue %dx.types.CBufRet.f32 %7552, 0
  %7554 = extractvalue %dx.types.CBufRet.f32 %7552, 1
  %7555 = fadd fast float %7554, %7553
  %7556 = call float @dx.op.unary.f32(i32 7, float %7555)  ; Saturate(value)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7552, 2
  %7558 = extractvalue %dx.types.CBufRet.f32 %7552, 3
  %7559 = fadd fast float %7558, %7557
  %7560 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7561 = fmul fast float %7556, %7540
  %7562 = fmul fast float %7561, %7560
  br label %7804

; <label>:7563                                    ; preds = %7517
  br i1 %7518, label %7564, label %7585

; <label>:7564                                    ; preds = %7563
  %7565 = call float @dx.op.binary.f32(i32 36, float %7514, float %7504)  ; FMin(a,b)
  %7566 = fsub fast float %7514, %7565
  %7567 = fsub fast float %7566, %7503
  %7568 = call float @dx.op.unary.f32(i32 6, float %7567)  ; FAbs(value)
  %7569 = fadd fast float %7566, %7503
  %7570 = fmul fast float %7569, %7434
  %7571 = fadd fast float %7570, %7447
  %7572 = fmul fast float %7571, %7568
  %7573 = fsub fast float %7509, %7572
  br label %7585

; <label>:7574                                    ; preds = %7502
  br i1 %7516, label %7575, label %7585

; <label>:7575                                    ; preds = %7574
  %7576 = call float @dx.op.binary.f32(i32 35, float %7504, float %7514)  ; FMax(a,b)
  %7577 = icmp eq i32 %7453, 0
  %7578 = select i1 %7577, float %7514, float 0.000000e+00
  %7579 = fsub fast float -0.000000e+00, %7578
  %7580 = call float @dx.op.unary.f32(i32 6, float %7579)  ; FAbs(value)
  %7581 = fmul fast float %7578, %7434
  %7582 = fadd fast float %7581, %7447
  %7583 = fmul fast float %7580, %7582
  %7584 = fsub fast float %7509, %7583
  br label %7585

; <label>:7585                                    ; preds = %7575, %7574, %7564, %7563
  %7586 = phi float [ %7504, %7563 ], [ %7504, %7564 ], [ %7576, %7575 ], [ %7504, %7574 ]
  %7587 = phi float [ 0.000000e+00, %7563 ], [ %7568, %7564 ], [ %7580, %7575 ], [ 0.000000e+00, %7574 ]
  %7588 = phi float [ %7509, %7563 ], [ %7573, %7564 ], [ %7584, %7575 ], [ %7509, %7574 ]
  %7589 = phi float [ %7514, %7563 ], [ %7514, %7564 ], [ %7503, %7575 ], [ %7503, %7574 ]
  %7590 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7590, align 4, !tbaa !126, !noalias !128
  %7591 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7591, align 4, !tbaa !126, !noalias !128
  %7592 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7592, align 4, !tbaa !126, !noalias !128
  %7593 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %7593, align 4, !tbaa !126, !noalias !128
  %7594 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %7594, align 4, !tbaa !126, !noalias !128
  %7595 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %7595, align 4, !tbaa !126, !noalias !128
  %7596 = icmp sgt i32 %7455, 0
  br i1 %7596, label %7597, label %7658

; <label>:7597                                    ; preds = %7585
  br label %7598

; <label>:7598                                    ; preds = %7647, %7597
  %7599 = phi i32 [ %7648, %7647 ], [ 0, %7597 ]
  %7600 = phi i32 [ %7649, %7647 ], [ 0, %7597 ]
  %7601 = add nuw i32 %7600, 171
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7601)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 0
  %7604 = extractvalue %dx.types.CBufRet.f32 %7602, 1
  %7605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7606 = extractvalue %dx.types.CBufRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.CBufRet.f32 %7605, 1
  %7608 = fsub fast float %7603, %7606
  %7609 = fsub fast float %7604, %7607
  %7610 = extractvalue %dx.types.CBufRet.f32 %7602, 2
  %7611 = fsub fast float -0.000000e+00, %7608
  %7612 = fsub fast float -0.000000e+00, %7609
  %7613 = call float @dx.op.dot2.f32(i32 54, float %7432, float %7433, float %7611, float %7612)  ; Dot2(ax,ay,bx,by)
  %7614 = fmul fast float %7613, 2.000000e+00
  %7615 = call float @dx.op.dot2.f32(i32 54, float %7611, float %7612, float %7611, float %7612)  ; Dot2(ax,ay,bx,by)
  %7616 = fmul fast float %7610, %7610
  %7617 = fsub fast float %7615, %7616
  %7618 = fmul fast float %7614, %7614
  %7619 = fmul fast float %7475, %7617
  %7620 = fsub fast float %7618, %7619
  %7621 = fcmp fast ogt float %7620, 0.000000e+00
  br i1 %7621, label %7622, label %7637

; <label>:7622                                    ; preds = %7598
  %7623 = fcmp fast ogt float %7614, 0.000000e+00
  %7624 = call float @dx.op.unary.f32(i32 24, float %7620)  ; Sqrt(value)
  %7625 = fsub fast float -0.000000e+00, %7624
  %7626 = select i1 %7623, float %7624, float %7625
  %7627 = fadd fast float %7626, %7614
  %7628 = fmul float %7627, -5.000000e-01
  %7629 = fdiv fast float %7628, %7468
  %7630 = call float @dx.op.binary.f32(i32 35, float %7629, float 0.000000e+00)  ; FMax(a,b)
  %7631 = call float @dx.op.binary.f32(i32 36, float %7503, float %7630)  ; FMin(a,b)
  %7632 = fdiv fast float %7617, %7628
  %7633 = call float @dx.op.binary.f32(i32 35, float %7632, float 0.000000e+00)  ; FMax(a,b)
  %7634 = call float @dx.op.binary.f32(i32 36, float %7503, float %7633)  ; FMin(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7631, float %7634)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 35, float %7631, float %7634)  ; FMax(a,b)
  br label %7637

; <label>:7637                                    ; preds = %7622, %7598
  %7638 = phi float [ %7636, %7622 ], [ -1.000000e+00, %7598 ]
  %7639 = phi float [ %7635, %7622 ], [ -1.000000e+00, %7598 ]
  %7640 = phi i1 [ true, %7622 ], [ false, %7598 ]
  br i1 %7640, label %7641, label %7647

; <label>:7641                                    ; preds = %7637
  %7642 = call float @dx.op.binary.f32(i32 35, float %7586, float %7639)  ; FMax(a,b)
  %7643 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7600
  store float %7642, float* %7643, align 4, !tbaa !126, !noalias !128
  %7644 = call float @dx.op.binary.f32(i32 35, float %7586, float %7638)  ; FMax(a,b)
  %7645 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %7600
  store float %7644, float* %7645, align 4, !tbaa !126, !noalias !128
  %7646 = add nsw i32 %7599, 1
  br label %7647

; <label>:7647                                    ; preds = %7641, %7637
  %7648 = phi i32 [ %7646, %7641 ], [ %7599, %7637 ]
  %7649 = add nuw nsw i32 %7600, 1
  %7650 = icmp eq i32 %7649, %7455
  br i1 %7650, label %7651, label %7598

; <label>:7651                                    ; preds = %7647
  %7652 = load float, float* %7592, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7653 = load float, float* %7591, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %7654 = load float, float* %7590, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %7655 = load float, float* %7595, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7656 = load float, float* %7594, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %7657 = load float, float* %7593, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %7658

; <label>:7658                                    ; preds = %7651, %7585
  %7659 = phi float [ -1.000000e+00, %7585 ], [ %7657, %7651 ]
  %7660 = phi float [ -1.000000e+00, %7585 ], [ %7656, %7651 ]
  %7661 = phi float [ -1.000000e+00, %7585 ], [ %7655, %7651 ]
  %7662 = phi float [ -1.000000e+00, %7585 ], [ %7654, %7651 ]
  %7663 = phi float [ -1.000000e+00, %7585 ], [ %7653, %7651 ]
  %7664 = phi float [ -1.000000e+00, %7585 ], [ %7652, %7651 ]
  %7665 = phi i32 [ 0, %7585 ], [ %7648, %7651 ]
  %7666 = call float @dx.op.binary.f32(i32 36, float %7663, float %7664)  ; FMin(a,b)
  %7667 = call float @dx.op.binary.f32(i32 36, float %7662, float %7666)  ; FMin(a,b)
  %7668 = call float @dx.op.binary.f32(i32 35, float %7662, float %7663)  ; FMax(a,b)
  %7669 = call float @dx.op.binary.f32(i32 36, float %7668, float %7664)  ; FMin(a,b)
  %7670 = call float @dx.op.binary.f32(i32 36, float %7662, float %7663)  ; FMin(a,b)
  %7671 = call float @dx.op.binary.f32(i32 35, float %7670, float %7669)  ; FMax(a,b)
  %7672 = call float @dx.op.binary.f32(i32 35, float %7663, float %7664)  ; FMax(a,b)
  %7673 = call float @dx.op.binary.f32(i32 35, float %7662, float %7672)  ; FMax(a,b)
  store float %7667, float* %7590, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %7671, float* %7591, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %7673, float* %7592, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7674 = call float @dx.op.binary.f32(i32 36, float %7660, float %7661)  ; FMin(a,b)
  %7675 = call float @dx.op.binary.f32(i32 36, float %7659, float %7674)  ; FMin(a,b)
  %7676 = call float @dx.op.binary.f32(i32 35, float %7659, float %7660)  ; FMax(a,b)
  %7677 = call float @dx.op.binary.f32(i32 36, float %7676, float %7661)  ; FMin(a,b)
  %7678 = call float @dx.op.binary.f32(i32 36, float %7659, float %7660)  ; FMin(a,b)
  %7679 = call float @dx.op.binary.f32(i32 35, float %7678, float %7677)  ; FMax(a,b)
  %7680 = call float @dx.op.binary.f32(i32 35, float %7660, float %7661)  ; FMax(a,b)
  %7681 = call float @dx.op.binary.f32(i32 35, float %7659, float %7680)  ; FMax(a,b)
  store float %7675, float* %7593, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %7679, float* %7594, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %7681, float* %7595, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7682 = sub nsw i32 3, %7665
  %7683 = icmp sgt i32 %7682, 2
  br i1 %7683, label %7684, label %7722

; <label>:7684                                    ; preds = %7658
  %7685 = icmp eq i32 %7453, 0
  %7686 = fsub fast float %7503, %7587
  %7687 = select i1 %7685, float %7686, float %7587
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.CBufRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.CBufRet.f32 %7692, 2
  %7696 = extractvalue %dx.types.CBufRet.f32 %7692, 3
  %7697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7697, 3
  %7699 = call float @dx.op.binary.f32(i32 36, float %7588, float %7698)  ; FMin(a,b)
  %7700 = fmul fast float %7696, %7687
  %7701 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7702 = fsub fast float %7693, %7689
  %7703 = fsub fast float %7694, %7690
  %7704 = fsub fast float %7695, %7691
  %7705 = fmul fast float %7701, %7702
  %7706 = fmul fast float %7701, %7703
  %7707 = fmul fast float %7701, %7704
  %7708 = fadd fast float %7705, %7689
  %7709 = fadd fast float %7706, %7690
  %7710 = fadd fast float %7707, %7691
  %7711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7712 = extractvalue %dx.types.CBufRet.f32 %7711, 0
  %7713 = extractvalue %dx.types.CBufRet.f32 %7711, 1
  %7714 = fadd fast float %7713, %7712
  %7715 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7711, 2
  %7717 = extractvalue %dx.types.CBufRet.f32 %7711, 3
  %7718 = fadd fast float %7717, %7716
  %7719 = call float @dx.op.unary.f32(i32 7, float %7718)  ; Saturate(value)
  %7720 = fmul fast float %7715, %7699
  %7721 = fmul fast float %7720, %7719
  br label %7804

; <label>:7722                                    ; preds = %7658
  %7723 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7682
  %7724 = load float, float* %7723, align 4, !tbaa !126, !noalias !128
  %7725 = fcmp fast olt float %7724, %7589
  %7726 = icmp sgt i32 %7665, 0
  %7727 = and i1 %7726, %7725
  br i1 %7727, label %7728, label %7765

; <label>:7728                                    ; preds = %7722
  br label %7729

; <label>:7729                                    ; preds = %7758, %7728
  %7730 = phi float [ %7759, %7758 ], [ %7587, %7728 ]
  %7731 = phi float [ %7760, %7758 ], [ %7588, %7728 ]
  %7732 = phi float [ %7740, %7758 ], [ %7724, %7728 ]
  %7733 = phi i32 [ %7737, %7758 ], [ %7682, %7728 ]
  %7734 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %7733
  %7735 = load float, float* %7734, align 4, !tbaa !126, !noalias !128
  %7736 = icmp slt i32 %7733, 2
  %7737 = add nsw i32 %7733, 1
  %7738 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7737
  %7739 = load float, float* %7738, align 4, !tbaa !126, !noalias !128
  %7740 = select i1 %7736, float %7739, float %7503
  %7741 = call float @dx.op.binary.f32(i32 36, float %7740, float %7735)  ; FMin(a,b)
  %7742 = call float @dx.op.binary.f32(i32 36, float %7589, float %7741)  ; FMin(a,b)
  %7743 = icmp eq i32 %7453, 0
  %7744 = fadd fast float %7742, %7732
  %7745 = fmul fast float %7744, %7434
  %7746 = fadd fast float %7745, %7447
  br i1 %7743, label %7752, label %7747

; <label>:7747                                    ; preds = %7729
  %7748 = fsub fast float %7742, %7732
  %7749 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7748)  ; FMax(a,b)
  %7750 = fmul fast float %7749, %7746
  %7751 = fadd fast float %7750, %7731
  br label %7758

; <label>:7752                                    ; preds = %7729
  %7753 = fsub fast float %7732, %7742
  %7754 = call float @dx.op.unary.f32(i32 6, float %7753)  ; FAbs(value)
  %7755 = fadd fast float %7754, %7730
  %7756 = fmul fast float %7754, %7746
  %7757 = fsub fast float %7731, %7756
  br label %7758

; <label>:7758                                    ; preds = %7752, %7747
  %7759 = phi float [ %7749, %7747 ], [ %7755, %7752 ]
  %7760 = phi float [ %7751, %7747 ], [ %7757, %7752 ]
  %7761 = fcmp fast olt float %7740, %7589
  %7762 = icmp slt i32 %7737, 3
  %7763 = and i1 %7762, %7761
  br i1 %7763, label %7729, label %7764

; <label>:7764                                    ; preds = %7758
  br label %7765

; <label>:7765                                    ; preds = %7764, %7722
  %7766 = phi float [ %7587, %7722 ], [ %7759, %7764 ]
  %7767 = phi float [ %7588, %7722 ], [ %7760, %7764 ]
  %7768 = fsub fast float %7503, %7766
  %7769 = select i1 %7505, float %7766, float %7768
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = extractvalue %dx.types.CBufRet.f32 %7774, 1
  %7777 = extractvalue %dx.types.CBufRet.f32 %7774, 2
  %7778 = extractvalue %dx.types.CBufRet.f32 %7774, 3
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 3
  %7781 = call float @dx.op.binary.f32(i32 36, float %7767, float %7780)  ; FMin(a,b)
  %7782 = fmul fast float %7778, %7769
  %7783 = call float @dx.op.unary.f32(i32 7, float %7782)  ; Saturate(value)
  %7784 = fsub fast float %7775, %7771
  %7785 = fsub fast float %7776, %7772
  %7786 = fsub fast float %7777, %7773
  %7787 = fmul fast float %7783, %7784
  %7788 = fmul fast float %7783, %7785
  %7789 = fmul fast float %7783, %7786
  %7790 = fadd fast float %7787, %7771
  %7791 = fadd fast float %7788, %7772
  %7792 = fadd fast float %7789, %7773
  %7793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7794 = extractvalue %dx.types.CBufRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.CBufRet.f32 %7793, 1
  %7796 = fadd fast float %7795, %7794
  %7797 = call float @dx.op.unary.f32(i32 7, float %7796)  ; Saturate(value)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7793, 2
  %7799 = extractvalue %dx.types.CBufRet.f32 %7793, 3
  %7800 = fadd fast float %7799, %7798
  %7801 = call float @dx.op.unary.f32(i32 7, float %7800)  ; Saturate(value)
  %7802 = fmul fast float %7797, %7781
  %7803 = fmul fast float %7802, %7801
  br label %7804

; <label>:7804                                    ; preds = %7765, %7684, %7519, %7501, %7499
  %7805 = phi float [ %7528, %7519 ], [ %7687, %7684 ], [ %7769, %7765 ], [ 0.000000e+00, %7499 ], [ 0.000000e+00, %7501 ]
  %7806 = phi float [ %7562, %7519 ], [ %7721, %7684 ], [ %7803, %7765 ], [ 0.000000e+00, %7499 ], [ 0.000000e+00, %7501 ]
  %7807 = phi float [ %7549, %7519 ], [ %7708, %7684 ], [ %7790, %7765 ], [ 0.000000e+00, %7499 ], [ 0.000000e+00, %7501 ]
  %7808 = phi float [ %7550, %7519 ], [ %7709, %7684 ], [ %7791, %7765 ], [ 0.000000e+00, %7499 ], [ 0.000000e+00, %7501 ]
  %7809 = phi float [ %7551, %7519 ], [ %7710, %7684 ], [ %7792, %7765 ], [ 0.000000e+00, %7499 ], [ 0.000000e+00, %7501 ]
  %7810 = fmul fast float %7442, %7806
  %7811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7812 = extractvalue %dx.types.CBufRet.f32 %7811, 2
  %7813 = fsub fast float %7449, %7812
  %7814 = fcmp fast olt float %7810, -2.000000e+01
  %7815 = call float @dx.op.unary.f32(i32 21, float %7810)  ; Exp(value)
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 2
  %7818 = extractvalue %dx.types.CBufRet.f32 %7816, 3
  %7819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7820 = extractvalue %dx.types.CBufRet.f32 %7819, 2
  %7821 = fmul fast float %7818, %7813
  %7822 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  %7823 = fsub fast float 1.000000e+00, %7822
  %7824 = fmul fast float %7434, 5.000000e-01
  %7825 = fadd fast float %7824, 5.000000e-01
  %7826 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7827 = fsub fast float 1.000000e+00, %7826
  %7828 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7823)  ; FMax(a,b)
  %7829 = fdiv fast float %7827, %7828
  %7830 = fsub fast float %7813, %7391
  %7831 = call float @dx.op.unary.f32(i32 6, float %7830)  ; FAbs(value)
  %7832 = fmul fast float %7831, %7817
  %7833 = call float @dx.op.unary.f32(i32 7, float %7829)  ; Saturate(value)
  %7834 = fsub fast float 1.000000e+00, %7832
  %7835 = fmul fast float %7834, %7833
  %7836 = fadd fast float %7835, %7832
  %7837 = fmul fast float %7820, %7813
  %7838 = call float @dx.op.unary.f32(i32 7, float %7837)  ; Saturate(value)
  %7839 = fsub fast float 1.000000e+00, %7836
  %7840 = fmul fast float %7839, %7838
  %7841 = fadd fast float %7840, %7836
  %7842 = call float @dx.op.unary.f32(i32 7, float %7841)  ; Saturate(value)
  %7843 = fadd fast float %7815, -1.000000e+00
  %7844 = select i1 %7814, float -1.000000e+00, float %7843
  %7845 = fmul fast float %7842, %7844
  %7846 = fadd fast float %7845, 1.000000e+00
  %7847 = fsub fast float -0.000000e+00, %7845
  %7848 = fmul fast float %7807, %7847
  %7849 = fmul fast float %7808, %7847
  %7850 = fmul fast float %7809, %7847
  br label %7851

; <label>:7851                                    ; preds = %7804, %7400
  %7852 = phi float [ %7805, %7804 ], [ 0.000000e+00, %7400 ]
  %7853 = phi float [ %7846, %7804 ], [ 1.000000e+00, %7400 ]
  %7854 = phi float [ %7848, %7804 ], [ 0.000000e+00, %7400 ]
  %7855 = phi float [ %7849, %7804 ], [ 0.000000e+00, %7400 ]
  %7856 = phi float [ %7850, %7804 ], [ 0.000000e+00, %7400 ]
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 1
  %7859 = fsub fast float 1.000000e+00, %7853
  %7860 = fmul fast float %7859, %7435
  %7861 = fmul fast float %7860, %7858
  %7862 = fsub fast float %7435, %7861
  br i1 %7428, label %7863, label %7892, !dx.controlflow.hints !164

; <label>:7863                                    ; preds = %7851
  %7864 = fmul fast float %7436, %7425
  %7865 = fadd fast float %7864, %7426
  %7866 = call float @dx.op.unary.f32(i32 7, float %7865)  ; Saturate(value)
  %7867 = fmul fast float %7407, %7862
  %7868 = fsub fast float -0.000000e+00, %7867
  %7869 = fmul fast float %7408, %7862
  %7870 = fsub fast float -0.000000e+00, %7869
  %7871 = call float @dx.op.unary.f32(i32 21, float %7868)  ; Exp(value)
  %7872 = call float @dx.op.unary.f32(i32 21, float %7870)  ; Exp(value)
  %7873 = call float @dx.op.binary.f32(i32 35, float %7415, float %7871)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7415, float %7872)  ; FMax(a,b)
  %7875 = fsub fast float %7874, %7873
  %7876 = fmul fast float %7875, %7866
  %7877 = fadd fast float %7876, %7873
  %7878 = call float @dx.op.unary.f32(i32 7, float %7877)  ; Saturate(value)
  %7879 = fsub fast float %7412, %7417
  %7880 = fsub fast float %7413, %7418
  %7881 = fsub fast float %7414, %7419
  %7882 = fmul fast float %7866, %7879
  %7883 = fmul fast float %7866, %7880
  %7884 = fmul fast float %7866, %7881
  %7885 = fadd fast float %7882, %7417
  %7886 = fadd fast float %7883, %7418
  %7887 = fadd fast float %7884, %7419
  %7888 = fsub fast float 1.000000e+00, %7878
  %7889 = fmul fast float %7888, %7885
  %7890 = fmul fast float %7888, %7886
  %7891 = fmul fast float %7888, %7887
  br label %7951

; <label>:7892                                    ; preds = %7851
  %7893 = fmul fast float %7862, %7424
  %7894 = call float @dx.op.unary.f32(i32 7, float %7893)  ; Saturate(value)
  %7895 = fsub fast float 2.000000e+00, %7894
  %7896 = fmul fast float %7894, 9.921875e-01
  %7897 = fmul fast float %7896, %7895
  %7898 = fadd fast float %7897, 3.906250e-03
  %7899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7898, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7900 = extractvalue %dx.types.ResRet.f32 %7899, 0
  %7901 = fsub fast float %7894, %7900
  %7902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7901)  ; FMax(a,b)
  %7903 = fmul fast float %7410, %7391
  %7904 = call float @dx.op.unary.f32(i32 6, float %7903)  ; FAbs(value)
  %7905 = fcmp fast ogt float %7904, 0x3EB0C6F7A0000000
  br i1 %7905, label %7906, label %7912, !dx.controlflow.hints !165

; <label>:7906                                    ; preds = %7892
  %7907 = fmul fast float %7903, 0xBFF7154760000000
  %7908 = call float @dx.op.unary.f32(i32 21, float %7907)  ; Exp(value)
  %7909 = fsub fast float 1.000000e+00, %7908
  %7910 = fdiv fast float %7909, %7903
  %7911 = fmul fast float %7910, %7420
  br label %7912

; <label>:7912                                    ; preds = %7906, %7892
  %7913 = phi float [ %7911, %7906 ], [ %7420, %7892 ]
  %7914 = fadd fast float %7913, %7422
  %7915 = fmul fast float %7914, %7902
  %7916 = fmul fast float %7407, %7915
  %7917 = fsub fast float -0.000000e+00, %7916
  %7918 = fmul fast float %7408, %7915
  %7919 = fsub fast float -0.000000e+00, %7918
  %7920 = fmul fast float %7409, %7915
  %7921 = fsub fast float -0.000000e+00, %7920
  %7922 = call float @dx.op.unary.f32(i32 21, float %7917)  ; Exp(value)
  %7923 = call float @dx.op.unary.f32(i32 21, float %7919)  ; Exp(value)
  %7924 = call float @dx.op.unary.f32(i32 21, float %7921)  ; Exp(value)
  %7925 = fmul fast float %7436, %7436
  %7926 = fadd fast float %7925, 1.000000e+00
  %7927 = fmul fast float %7926, 0x3FAE8EC8A0000000
  %7928 = fmul fast float %7927, %7417
  %7929 = fmul fast float %7927, %7418
  %7930 = fmul fast float %7927, %7419
  %7931 = fmul fast float %7436, %7415
  %7932 = fsub fast float 1.000000e+00, %7931
  %7933 = fmul fast float %7415, %7415
  %7934 = fsub fast float 1.000000e+00, %7933
  %7935 = fmul fast float %7934, 0x3FB45F3060000000
  %7936 = fmul fast float %7932, %7932
  %7937 = fdiv fast float 1.000000e+00, %7936
  %7938 = fmul fast float %7935, %7937
  %7939 = fmul fast float %7938, %7412
  %7940 = fmul fast float %7938, %7413
  %7941 = fmul fast float %7938, %7414
  %7942 = fadd fast float %7939, %7928
  %7943 = fadd fast float %7940, %7929
  %7944 = fadd fast float %7941, %7930
  %7945 = fsub fast float 1.000000e+00, %7922
  %7946 = fsub fast float 1.000000e+00, %7923
  %7947 = fsub fast float 1.000000e+00, %7924
  %7948 = fmul fast float %7942, %7945
  %7949 = fmul fast float %7943, %7946
  %7950 = fmul fast float %7944, %7947
  br label %7951

; <label>:7951                                    ; preds = %7912, %7863
  %7952 = phi float [ %7889, %7863 ], [ %7948, %7912 ]
  %7953 = phi float [ %7890, %7863 ], [ %7949, %7912 ]
  %7954 = phi float [ %7891, %7863 ], [ %7950, %7912 ]
  %7955 = phi float [ %7878, %7863 ], [ %7922, %7912 ]
  %7956 = phi float [ %7878, %7863 ], [ %7923, %7912 ]
  %7957 = phi float [ %7878, %7863 ], [ %7924, %7912 ]
  br i1 %7444, label %7958, label %8156, !dx.controlflow.hints !166

; <label>:7958                                    ; preds = %7951
  %7959 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7960 = fmul fast float %7959, %7859
  %7961 = fsub fast float %7854, %7952
  %7962 = fsub fast float %7855, %7953
  %7963 = fsub fast float %7856, %7954
  %7964 = fmul fast float %7960, %7961
  %7965 = fmul fast float %7960, %7962
  %7966 = fmul fast float %7960, %7963
  %7967 = fadd fast float %7964, %7952
  %7968 = fadd fast float %7965, %7953
  %7969 = fadd fast float %7966, %7954
  %7970 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7955)  ; FMax(a,b)
  %7971 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7956)  ; FMax(a,b)
  %7972 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7957)  ; FMax(a,b)
  %7973 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7853)  ; FMax(a,b)
  %7974 = call float @dx.op.binary.f32(i32 35, float %7852, float %7862)  ; FMax(a,b)
  %7975 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7974)  ; FMax(a,b)
  %7976 = fdiv fast float %7852, %7975
  %7977 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7978 = fdiv fast float %7862, %7975
  %7979 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7980 = fcmp fast une float %7973, 1.000000e+00
  br i1 %7980, label %7981, label %7994, !dx.controlflow.hints !167

; <label>:7981                                    ; preds = %7958
  %7982 = call float @dx.op.unary.f32(i32 23, float %7973)  ; Log(value)
  %7983 = fmul fast float %7982, 0x3FE62E4300000000
  %7984 = fmul fast float %7854, %7983
  %7985 = fsub fast float -0.000000e+00, %7984
  %7986 = fmul fast float %7855, %7983
  %7987 = fsub fast float -0.000000e+00, %7986
  %7988 = fmul fast float %7856, %7983
  %7989 = fsub fast float -0.000000e+00, %7988
  %7990 = fsub fast float 1.000000e+00, %7973
  %7991 = fdiv fast float %7985, %7990
  %7992 = fdiv fast float %7987, %7990
  %7993 = fdiv fast float %7989, %7990
  br label %7994

; <label>:7994                                    ; preds = %7981, %7958
  %7995 = phi float [ %7991, %7981 ], [ %7854, %7958 ]
  %7996 = phi float [ %7992, %7981 ], [ %7855, %7958 ]
  %7997 = phi float [ %7993, %7981 ], [ %7856, %7958 ]
  %7998 = phi float [ %7983, %7981 ], [ 0.000000e+00, %7958 ]
  %7999 = fcmp fast une float %7970, 1.000000e+00
  br i1 %7999, label %8000, label %8007, !dx.controlflow.hints !168

; <label>:8000                                    ; preds = %7994
  %8001 = call float @dx.op.unary.f32(i32 23, float %7970)  ; Log(value)
  %8002 = fmul fast float %8001, 0x3FE62E4300000000
  %8003 = fmul fast float %7967, %8002
  %8004 = fsub fast float -0.000000e+00, %8003
  %8005 = fsub fast float 1.000000e+00, %7970
  %8006 = fdiv fast float %8004, %8005
  br label %8007

; <label>:8007                                    ; preds = %8000, %7994
  %8008 = phi float [ %8006, %8000 ], [ %7967, %7994 ]
  %8009 = phi float [ %8002, %8000 ], [ 0.000000e+00, %7994 ]
  %8010 = fcmp fast une float %7971, 1.000000e+00
  br i1 %8010, label %8011, label %8018, !dx.controlflow.hints !168

; <label>:8011                                    ; preds = %8007
  %8012 = call float @dx.op.unary.f32(i32 23, float %7971)  ; Log(value)
  %8013 = fmul fast float %8012, 0x3FE62E4300000000
  %8014 = fmul fast float %7968, %8013
  %8015 = fsub fast float -0.000000e+00, %8014
  %8016 = fsub fast float 1.000000e+00, %7971
  %8017 = fdiv fast float %8015, %8016
  br label %8018

; <label>:8018                                    ; preds = %8011, %8007
  %8019 = phi float [ %8017, %8011 ], [ %7968, %8007 ]
  %8020 = phi float [ %8013, %8011 ], [ 0.000000e+00, %8007 ]
  %8021 = fcmp fast une float %7972, 1.000000e+00
  br i1 %8021, label %8022, label %8029, !dx.controlflow.hints !168

; <label>:8022                                    ; preds = %8018
  %8023 = call float @dx.op.unary.f32(i32 23, float %7972)  ; Log(value)
  %8024 = fmul fast float %8023, 0x3FE62E4300000000
  %8025 = fmul fast float %7969, %8024
  %8026 = fsub fast float -0.000000e+00, %8025
  %8027 = fsub fast float 1.000000e+00, %7972
  %8028 = fdiv fast float %8026, %8027
  br label %8029

; <label>:8029                                    ; preds = %8022, %8018
  %8030 = phi float [ %8028, %8022 ], [ %7969, %8018 ]
  %8031 = phi float [ %8024, %8022 ], [ 0.000000e+00, %8018 ]
  %8032 = fmul fast float %7995, %7979
  %8033 = fmul fast float %7996, %7979
  %8034 = fmul fast float %7997, %7979
  %8035 = fmul fast float %7998, %7979
  %8036 = fmul fast float %8008, %7977
  %8037 = fmul fast float %8019, %7977
  %8038 = fmul fast float %8030, %7977
  %8039 = fmul fast float %8009, %7977
  %8040 = fmul fast float %8020, %7977
  %8041 = fmul fast float %8031, %7977
  %8042 = fadd fast float %8036, %8032
  %8043 = fadd fast float %8037, %8033
  %8044 = fadd fast float %8038, %8034
  %8045 = fadd fast float %8039, %8035
  %8046 = fadd fast float %8040, %8035
  %8047 = fadd fast float %8041, %8035
  %8048 = fcmp fast une float %8045, 0.000000e+00
  br i1 %8048, label %8049, label %8056, !dx.controlflow.hints !169

; <label>:8049                                    ; preds = %8029
  %8050 = fmul fast float %8045, 0x3FF7154760000000
  %8051 = call float @dx.op.unary.f32(i32 21, float %8050)  ; Exp(value)
  %8052 = fsub fast float 1.000000e+00, %8051
  %8053 = fmul fast float %8042, %8052
  %8054 = fsub fast float -0.000000e+00, %8053
  %8055 = fdiv fast float %8054, %8045
  br label %8056

; <label>:8056                                    ; preds = %8049, %8029
  %8057 = phi float [ %8051, %8049 ], [ 1.000000e+00, %8029 ]
  %8058 = phi float [ %8055, %8049 ], [ %8042, %8029 ]
  %8059 = fcmp fast une float %8046, 0.000000e+00
  br i1 %8059, label %8060, label %8067, !dx.controlflow.hints !169

; <label>:8060                                    ; preds = %8056
  %8061 = fmul fast float %8046, 0x3FF7154760000000
  %8062 = call float @dx.op.unary.f32(i32 21, float %8061)  ; Exp(value)
  %8063 = fsub fast float 1.000000e+00, %8062
  %8064 = fmul fast float %8043, %8063
  %8065 = fsub fast float -0.000000e+00, %8064
  %8066 = fdiv fast float %8065, %8046
  br label %8067

; <label>:8067                                    ; preds = %8060, %8056
  %8068 = phi float [ %8062, %8060 ], [ 1.000000e+00, %8056 ]
  %8069 = phi float [ %8066, %8060 ], [ %8043, %8056 ]
  %8070 = fcmp fast une float %8047, 0.000000e+00
  br i1 %8070, label %8071, label %8078, !dx.controlflow.hints !169

; <label>:8071                                    ; preds = %8067
  %8072 = fmul fast float %8047, 0x3FF7154760000000
  %8073 = call float @dx.op.unary.f32(i32 21, float %8072)  ; Exp(value)
  %8074 = fsub fast float 1.000000e+00, %8073
  %8075 = fmul fast float %8044, %8074
  %8076 = fsub fast float -0.000000e+00, %8075
  %8077 = fdiv fast float %8076, %8047
  br label %8078

; <label>:8078                                    ; preds = %8071, %8067
  %8079 = phi float [ %8073, %8071 ], [ 1.000000e+00, %8067 ]
  %8080 = phi float [ %8077, %8071 ], [ %8044, %8067 ]
  %8081 = fcmp fast ogt float %7977, %7979
  br i1 %8081, label %8082, label %8102

; <label>:8082                                    ; preds = %8078
  %8083 = fsub fast float 1.000000e+00, %7979
  %8084 = fmul fast float %7995, %8083
  %8085 = fmul fast float %7996, %8083
  %8086 = fmul fast float %7997, %8083
  %8087 = fmul fast float %7998, %8083
  %8088 = fcmp fast une float %8087, 0.000000e+00
  br i1 %8088, label %8089, label %8140, !dx.controlflow.hints !170

; <label>:8089                                    ; preds = %8082
  %8090 = fmul fast float %8087, 0x3FF7154760000000
  %8091 = call float @dx.op.unary.f32(i32 21, float %8090)  ; Exp(value)
  %8092 = fsub fast float 1.000000e+00, %8091
  %8093 = fmul fast float %8084, %8092
  %8094 = fsub fast float -0.000000e+00, %8093
  %8095 = fmul fast float %8085, %8092
  %8096 = fsub fast float -0.000000e+00, %8095
  %8097 = fmul fast float %8086, %8092
  %8098 = fsub fast float -0.000000e+00, %8097
  %8099 = fdiv fast float %8094, %8087
  %8100 = fdiv fast float %8096, %8087
  %8101 = fdiv fast float %8098, %8087
  br label %8140

; <label>:8102                                    ; preds = %8078
  %8103 = fsub fast float 1.000000e+00, %7977
  %8104 = fmul fast float %8008, %8103
  %8105 = fmul fast float %8019, %8103
  %8106 = fmul fast float %8030, %8103
  %8107 = fmul fast float %8009, %8103
  %8108 = fmul fast float %8020, %8103
  %8109 = fmul fast float %8031, %8103
  %8110 = fcmp fast une float %8107, 0.000000e+00
  br i1 %8110, label %8111, label %8118, !dx.controlflow.hints !169

; <label>:8111                                    ; preds = %8102
  %8112 = fmul fast float %8107, 0x3FF7154760000000
  %8113 = call float @dx.op.unary.f32(i32 21, float %8112)  ; Exp(value)
  %8114 = fsub fast float 1.000000e+00, %8113
  %8115 = fmul fast float %8104, %8114
  %8116 = fsub fast float -0.000000e+00, %8115
  %8117 = fdiv fast float %8116, %8107
  br label %8118

; <label>:8118                                    ; preds = %8111, %8102
  %8119 = phi float [ %8117, %8111 ], [ %8104, %8102 ]
  %8120 = phi float [ %8113, %8111 ], [ 1.000000e+00, %8102 ]
  %8121 = fcmp fast une float %8108, 0.000000e+00
  br i1 %8121, label %8122, label %8129, !dx.controlflow.hints !169

; <label>:8122                                    ; preds = %8118
  %8123 = fmul fast float %8108, 0x3FF7154760000000
  %8124 = call float @dx.op.unary.f32(i32 21, float %8123)  ; Exp(value)
  %8125 = fsub fast float 1.000000e+00, %8124
  %8126 = fmul fast float %8105, %8125
  %8127 = fsub fast float -0.000000e+00, %8126
  %8128 = fdiv fast float %8127, %8108
  br label %8129

; <label>:8129                                    ; preds = %8122, %8118
  %8130 = phi float [ %8128, %8122 ], [ %8105, %8118 ]
  %8131 = phi float [ %8124, %8122 ], [ 1.000000e+00, %8118 ]
  %8132 = fcmp fast une float %8109, 0.000000e+00
  br i1 %8132, label %8133, label %8140, !dx.controlflow.hints !169

; <label>:8133                                    ; preds = %8129
  %8134 = fmul fast float %8109, 0x3FF7154760000000
  %8135 = call float @dx.op.unary.f32(i32 21, float %8134)  ; Exp(value)
  %8136 = fsub fast float 1.000000e+00, %8135
  %8137 = fmul fast float %8106, %8136
  %8138 = fsub fast float -0.000000e+00, %8137
  %8139 = fdiv fast float %8138, %8109
  br label %8140

; <label>:8140                                    ; preds = %8133, %8129, %8089, %8082
  %8141 = phi float [ %8139, %8133 ], [ %8101, %8089 ], [ %8086, %8082 ], [ %8106, %8129 ]
  %8142 = phi float [ %8130, %8133 ], [ %8100, %8089 ], [ %8085, %8082 ], [ %8130, %8129 ]
  %8143 = phi float [ %8119, %8133 ], [ %8099, %8089 ], [ %8084, %8082 ], [ %8119, %8129 ]
  %8144 = phi float [ %8135, %8133 ], [ %8091, %8089 ], [ 1.000000e+00, %8082 ], [ 1.000000e+00, %8129 ]
  %8145 = phi float [ %8131, %8133 ], [ %8091, %8089 ], [ 1.000000e+00, %8082 ], [ %8131, %8129 ]
  %8146 = phi float [ %8120, %8133 ], [ %8091, %8089 ], [ 1.000000e+00, %8082 ], [ %8120, %8129 ]
  %8147 = fmul fast float %8146, %8058
  %8148 = fmul fast float %8145, %8069
  %8149 = fmul fast float %8144, %8080
  %8150 = fadd fast float %8147, %8143
  %8151 = fadd fast float %8148, %8142
  %8152 = fadd fast float %8149, %8141
  %8153 = fmul fast float %8146, %8057
  %8154 = fmul fast float %8145, %8068
  %8155 = fmul fast float %8144, %8079
  br label %8156

; <label>:8156                                    ; preds = %8140, %7951
  %8157 = phi float [ %8155, %8140 ], [ %7957, %7951 ]
  %8158 = phi float [ %8154, %8140 ], [ %7956, %7951 ]
  %8159 = phi float [ %8153, %8140 ], [ %7955, %7951 ]
  %8160 = phi float [ %8152, %8140 ], [ %7954, %7951 ]
  %8161 = phi float [ %8151, %8140 ], [ %7953, %7951 ]
  %8162 = phi float [ %8150, %8140 ], [ %7952, %7951 ]
  %8163 = fmul fast float %8162, %7108
  %8164 = fmul fast float %8161, %7108
  %8165 = fmul fast float %8160, %7108
  %8166 = fmul fast float %8159, %7399
  %8167 = call float @dx.op.dot3.f32(i32 55, float %8159, float %8158, float %8157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8168 = call float @dx.op.dot3.f32(i32 55, float %8163, float %8164, float %8165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8169 = select i1 %253, float %8167, float %8159
  %8170 = select i1 %253, float %8167, float %8158
  %8171 = select i1 %253, float 1.000000e+00, float %8157
  %8172 = select i1 %253, float %8168, float %8163
  %8173 = select i1 %253, float 0.000000e+00, float %8164
  %8174 = select i1 %253, float 0.000000e+00, float %8165
  %8175 = fmul fast float %8169, %7393
  %8176 = fmul fast float %8170, %7394
  %8177 = fmul fast float %8171, %7395
  %8178 = fadd fast float %8175, %8172
  %8179 = fadd fast float %8176, %8173
  %8180 = fadd fast float %8174, %8177
  %8181 = fmul fast float %8169, %7396
  %8182 = fmul fast float %8170, %7397
  %8183 = fmul fast float %8171, %7398
  %8184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.i32 %8184, 0
  %8186 = icmp eq i32 %8185, 0
  br i1 %8186, label %8554, label %8187, !dx.controlflow.hints !171

; <label>:8187                                    ; preds = %8156
  %8188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8189 = extractvalue %dx.types.CBufRet.f32 %8188, 2
  %8190 = extractvalue %dx.types.CBufRet.f32 %8188, 3
  %8191 = fmul fast float %8189, %111
  %8192 = fmul fast float %8190, %112
  %8193 = fmul fast float %8191, 2.000000e+00
  %8194 = fmul fast float %8192, 2.000000e+00
  %8195 = fsub fast float 1.000000e+00, %8193
  %8196 = fsub fast float 1.000000e+00, %8194
  %8197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8198 = extractvalue %dx.types.CBufRet.f32 %8197, 0
  %8199 = extractvalue %dx.types.CBufRet.f32 %8197, 1
  %8200 = extractvalue %dx.types.CBufRet.f32 %8197, 2
  %8201 = fmul fast float %8195, %8198
  %8202 = fmul fast float %8195, %8199
  %8203 = fmul fast float %8195, %8200
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.CBufRet.f32 %8204, 1
  %8207 = extractvalue %dx.types.CBufRet.f32 %8204, 2
  %8208 = fmul fast float %8196, %8205
  %8209 = fmul fast float %8196, %8206
  %8210 = fmul fast float %8196, %8207
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 0
  %8213 = extractvalue %dx.types.CBufRet.f32 %8211, 1
  %8214 = extractvalue %dx.types.CBufRet.f32 %8211, 2
  %8215 = fadd fast float %8208, %8212
  %8216 = fadd fast float %8215, %8201
  %8217 = fadd fast float %8209, %8213
  %8218 = fadd fast float %8217, %8202
  %8219 = fadd fast float %8210, %8214
  %8220 = fadd fast float %8219, %8203
  %8221 = fmul fast float %8216, %7392
  %8222 = fmul fast float %8218, %7392
  %8223 = fmul fast float %8220, %7392
  %8224 = fmul fast float %8221, %8221
  %8225 = fmul fast float %8222, %8222
  %8226 = fadd fast float %8224, %8225
  %8227 = fmul fast float %8223, %8223
  %8228 = fadd fast float %8226, %8227
  %8229 = call float @dx.op.unary.f32(i32 24, float %8228)  ; Sqrt(value)
  %8230 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %8231 = fsub fast float %8229, %8230
  %8232 = extractvalue %dx.types.CBufRet.f32 %7119, 2
  %8233 = fmul fast float %8231, %8232
  %8234 = call float @dx.op.unary.f32(i32 7, float %8233)  ; Saturate(value)
  %8235 = fadd fast float %8234, -5.000000e-01
  %8236 = fmul fast float %8235, 2.000000e+00
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 2
  %8239 = call float @dx.op.binary.f32(i32 36, float %8238, float %8236)  ; FMin(a,b)
  %8240 = fsub fast float -0.000000e+00, %8238
  %8241 = fcmp fast ogt float %8239, %8240
  br i1 %8241, label %8242, label %8554, !dx.controlflow.hints !172

; <label>:8242                                    ; preds = %8187
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 3
  %8245 = fcmp fast ogt float %8244, 0.000000e+00
  br i1 %8245, label %8246, label %8321, !dx.controlflow.hints !173

; <label>:8246                                    ; preds = %8242
  %8247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8248 = extractvalue %dx.types.Dimensions %8247, 0
  %8249 = sitofp i32 %8248 to float
  %8250 = extractvalue %dx.types.Dimensions %8247, 1
  %8251 = sitofp i32 %8250 to float
  %8252 = fmul fast float %8191, %8249
  %8253 = fmul fast float %8192, %8251
  %8254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8255 = extractvalue %dx.types.CBufRet.f32 %8254, 1
  %8256 = fsub fast float -0.000000e+00, %8255
  %8257 = fptoui float %8256 to i32
  %8258 = fptoui float %8252 to i32
  %8259 = fptoui float %8253 to i32
  %8260 = and i32 %8257, 31
  %8261 = lshr i32 %8258, %8260
  %8262 = lshr i32 %8259, %8260
  %8263 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8257, i32 %8261, i32 %8262, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8264 = extractvalue %dx.types.ResRet.f32 %8263, 0
  %8265 = fcmp fast olt float %8264, -1.000000e+00
  %8266 = fcmp fast ogt float %8264, -1.000000e+00
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 1
  %8269 = select i1 %8266, float %8268, float 1.000000e+00
  %8270 = fadd fast float %8264, 1.000000e+00
  %8271 = fmul fast float %8269, %8270
  %8272 = call float @dx.op.unary.f32(i32 6, float %8271)  ; FAbs(value)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8267, 3
  %8274 = fcmp fast oge float %8272, %8273
  %8275 = select i1 %8274, float 0x4197782600000000, float %8272
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8280 = select i1 %8265, float %8277, float %8198
  %8281 = select i1 %8265, float %8278, float %8199
  %8282 = select i1 %8265, float %8279, float %8200
  %8283 = fmul fast float %8280, %8195
  %8284 = fmul fast float %8281, %8195
  %8285 = fmul fast float %8282, %8195
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %8289 = extractvalue %dx.types.CBufRet.f32 %8286, 2
  %8290 = select i1 %8265, float %8287, float %8205
  %8291 = select i1 %8265, float %8288, float %8206
  %8292 = select i1 %8265, float %8289, float %8207
  %8293 = fmul fast float %8290, %8196
  %8294 = fmul fast float %8291, %8196
  %8295 = fmul fast float %8292, %8196
  %8296 = fadd fast float %8293, %8283
  %8297 = fadd fast float %8294, %8284
  %8298 = fadd fast float %8295, %8285
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8301 = extractvalue %dx.types.CBufRet.f32 %8299, 1
  %8302 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8303 = select i1 %8265, float %8300, float %8212
  %8304 = select i1 %8265, float %8301, float %8213
  %8305 = select i1 %8265, float %8302, float %8214
  %8306 = fadd fast float %8296, %8303
  %8307 = fadd fast float %8297, %8304
  %8308 = fadd fast float %8298, %8305
  %8309 = fmul fast float %8306, %8275
  %8310 = fmul fast float %8307, %8275
  %8311 = fmul fast float %8308, %8275
  %8312 = fmul fast float %8309, %8309
  %8313 = fmul fast float %8310, %8310
  %8314 = fadd fast float %8312, %8313
  %8315 = fmul fast float %8311, %8311
  %8316 = fadd fast float %8314, %8315
  %8317 = call float @dx.op.unary.f32(i32 24, float %8316)  ; Sqrt(value)
  %8318 = fsub fast float %8317, %8230
  %8319 = fmul fast float %8318, %8232
  %8320 = call float @dx.op.unary.f32(i32 7, float %8319)  ; Saturate(value)
  br label %8321

; <label>:8321                                    ; preds = %8246, %8242
  %8322 = phi float [ %8320, %8246 ], [ 1.000000e+00, %8242 ]
  %8323 = fmul fast float %8239, 5.000000e-01
  %8324 = fadd fast float %8323, 5.000000e-01
  %8325 = call float @dx.op.unary.f32(i32 22, float %8324)  ; Frc(value)
  %8326 = call float @dx.op.unary.f32(i32 27, float %8325)  ; Round_ni(value)
  %8327 = call float @dx.op.unary.f32(i32 22, float %8325)  ; Frc(value)
  %8328 = fmul fast float %8327, 2.000000e+00
  %8329 = fadd fast float %8328, -1.000000e+00
  %8330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8191, float %8192, float %8326, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8331 = extractvalue %dx.types.ResRet.f32 %8330, 0
  %8332 = extractvalue %dx.types.ResRet.f32 %8330, 1
  %8333 = extractvalue %dx.types.ResRet.f32 %8330, 2
  %8334 = extractvalue %dx.types.ResRet.f32 %8330, 3
  %8335 = fadd fast float %8331, -5.000000e-01
  %8336 = fadd fast float %8333, -5.000000e-01
  %8337 = fmul fast float %8335, 0xBFD5555560000000
  %8338 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8336, float %8337)  ; FMad(a,b,c)
  %8339 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8332, float 0.000000e+00)  ; FMad(a,b,c)
  %8340 = fadd fast float %8339, %8334
  %8341 = fmul fast float %8335, -7.500000e-01
  %8342 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8336, float %8341)  ; FMad(a,b,c)
  %8343 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8332, float 0.000000e+00)  ; FMad(a,b,c)
  %8344 = fadd fast float %8343, %8334
  %8345 = call float @dx.op.binary.f32(i32 35, float %8338, float -1.000000e+00)  ; FMax(a,b)
  %8346 = call float @dx.op.binary.f32(i32 35, float %8340, float -1.000000e+00)  ; FMax(a,b)
  %8347 = call float @dx.op.binary.f32(i32 35, float %8342, float -1.000000e+00)  ; FMax(a,b)
  %8348 = call float @dx.op.binary.f32(i32 35, float %8344, float -1.000000e+00)  ; FMax(a,b)
  %8349 = call float @dx.op.binary.f32(i32 36, float %8345, float 1.000000e+00)  ; FMin(a,b)
  %8350 = call float @dx.op.binary.f32(i32 36, float %8346, float 1.000000e+00)  ; FMin(a,b)
  %8351 = call float @dx.op.binary.f32(i32 36, float %8347, float 1.000000e+00)  ; FMin(a,b)
  %8352 = call float @dx.op.binary.f32(i32 36, float %8348, float 1.000000e+00)  ; FMin(a,b)
  %8353 = fcmp fast olt float %8349, 0x3FEFFF8020000000
  br i1 %8353, label %8354, label %8469, !dx.controlflow.hints !174

; <label>:8354                                    ; preds = %8321
  %8355 = extractvalue %dx.types.CBufRet.f32 %8237, 3
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = extractvalue %dx.types.CBufRet.f32 %8356, 1
  %8359 = extractvalue %dx.types.CBufRet.f32 %8356, 2
  %8360 = extractvalue %dx.types.CBufRet.f32 %8356, 3
  %8361 = fsub fast float %8357, %8349
  %8362 = fsub fast float %8358, %8350
  %8363 = fsub fast float %8359, %8351
  %8364 = fsub fast float %8360, %8352
  %8365 = fmul fast float %8361, %8355
  %8366 = fmul fast float %8362, %8355
  %8367 = fmul fast float %8363, %8355
  %8368 = fmul fast float %8364, %8355
  %8369 = fadd fast float %8365, %8349
  %8370 = fadd fast float %8366, %8350
  %8371 = fsub fast float -0.000000e+00, %8370
  %8372 = fadd fast float %8367, %8351
  %8373 = fadd fast float %8368, %8352
  %8374 = fmul fast float %8369, %8369
  %8375 = fsub fast float %8370, %8374
  %8376 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8375)  ; FMax(a,b)
  %8377 = fdiv fast float 1.000000e+00, %8376
  %8378 = fmul fast float %8370, %8369
  %8379 = fsub fast float %8372, %8378
  %8380 = fsub fast float %8329, %8369
  %8381 = fmul fast float %8329, %8329
  %8382 = fsub fast float %8381, %8370
  %8383 = fmul fast float %8380, %8377
  %8384 = fmul fast float %8383, %8379
  %8385 = fsub fast float %8382, %8384
  %8386 = fmul fast float %8370, %8370
  %8387 = fsub fast float %8373, %8386
  %8388 = fmul fast float %8379, %8379
  %8389 = fmul fast float %8388, %8377
  %8390 = fsub fast float %8387, %8389
  %8391 = fdiv fast float %8385, %8390
  %8392 = fmul fast float %8379, %8391
  %8393 = fsub fast float %8380, %8392
  %8394 = fmul fast float %8393, %8377
  %8395 = fmul fast float %8394, %8369
  %8396 = fsub fast float 1.000000e+00, %8395
  %8397 = fmul fast float %8370, %8391
  %8398 = fsub fast float %8396, %8397
  %8399 = fmul fast float %8394, %8394
  %8400 = fmul fast float %8391, 4.000000e+00
  %8401 = fmul fast float %8400, %8398
  %8402 = fsub fast float %8399, %8401
  %8403 = call float @dx.op.unary.f32(i32 24, float %8402)  ; Sqrt(value)
  %8404 = fcmp fast oge float %8394, 0.000000e+00
  %8405 = fsub fast float -0.000000e+00, %8403
  %8406 = select i1 %8404, float %8405, float %8403
  %8407 = fsub fast float %8406, %8394
  %8408 = fdiv fast float %8407, %8391
  %8409 = fdiv fast float %8398, %8407
  %8410 = fmul fast float %8408, 5.000000e-01
  %8411 = fmul fast float %8409, 2.000000e+00
  %8412 = select i1 %8404, float %8410, float %8411
  %8413 = select i1 %8404, float %8411, float %8410
  %8414 = call float @dx.op.binary.f32(i32 35, float %8412, float %8413)  ; FMax(a,b)
  %8415 = call float @dx.op.binary.f32(i32 36, float %8412, float %8413)  ; FMin(a,b)
  %8416 = fcmp fast ogt float %8329, %8415
  br i1 %8416, label %8417, label %8427

; <label>:8417                                    ; preds = %8354
  %8418 = fsub fast float %8329, %8415
  %8419 = fsub fast float %8414, %8415
  %8420 = fmul fast float %8418, %8419
  %8421 = fmul fast float %8414, %8329
  %8422 = fadd fast float %8414, %8329
  %8423 = fmul fast float %8422, %8369
  %8424 = fadd fast float %8421, %8370
  %8425 = fsub fast float %8424, %8423
  %8426 = fdiv fast float %8425, %8420
  br label %8427

; <label>:8427                                    ; preds = %8417, %8354
  %8428 = phi float [ %8426, %8417 ], [ 0.000000e+00, %8354 ]
  %8429 = fcmp fast ogt float %8329, %8414
  %8430 = fsub fast float %8329, %8414
  br i1 %8429, label %8431, label %8441

; <label>:8431                                    ; preds = %8427
  %8432 = fsub fast float %8414, %8415
  %8433 = fmul fast float %8432, %8430
  %8434 = fmul fast float %8415, %8329
  %8435 = fadd fast float %8415, %8329
  %8436 = fmul fast float %8435, %8369
  %8437 = fsub fast float %8371, %8434
  %8438 = fadd fast float %8437, %8436
  %8439 = fdiv fast float %8438, %8433
  %8440 = fadd fast float %8439, %8428
  br label %8441

; <label>:8441                                    ; preds = %8431, %8427
  %8442 = phi float [ %8440, %8431 ], [ %8428, %8427 ]
  %8443 = fsub fast float %8329, %8415
  %8444 = fmul fast float %8443, %8430
  %8445 = fmul fast float %8415, %8414
  %8446 = fadd fast float %8415, %8414
  %8447 = fmul fast float %8446, %8369
  %8448 = fadd fast float %8445, %8370
  %8449 = fsub fast float %8448, %8447
  %8450 = fdiv fast float %8449, %8444
  %8451 = call float @dx.op.unary.f32(i32 7, float %8442)  ; Saturate(value)
  %8452 = fcmp fast oeq float %7120, 0.000000e+00
  %8453 = extractvalue %dx.types.CBufRet.f32 %8237, 0
  %8454 = fcmp fast oeq float %8453, 0.000000e+00
  %8455 = or i1 %8452, %8454
  %8456 = fmul fast float %8453, 2.000000e+00
  %8457 = fadd fast float %8238, %8239
  %8458 = fdiv fast float %8457, %8456
  %8459 = call float @dx.op.unary.f32(i32 7, float %8458)  ; Saturate(value)
  %8460 = fmul fast float %8459, 2.000000e+00
  %8461 = fsub fast float 3.000000e+00, %8460
  %8462 = fmul fast float %8459, %8459
  %8463 = fmul fast float %8462, %8461
  %8464 = select i1 %8455, float 1.000000e+00, float %8463
  %8465 = fmul fast float %8450, %7120
  %8466 = fadd fast float %8451, %8465
  %8467 = call float @dx.op.unary.f32(i32 7, float %8466)  ; Saturate(value)
  %8468 = fmul fast float %8464, %8467
  br label %8469

; <label>:8469                                    ; preds = %8441, %8321
  %8470 = phi float [ %8468, %8441 ], [ 0.000000e+00, %8321 ]
  %8471 = fsub fast float 1.000000e+00, %8470
  %8472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8191, float %8192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8473 = extractvalue %dx.types.ResRet.f32 %8472, 0
  %8474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.i32 %8474, 2
  %8476 = icmp eq i32 %8475, 0
  br i1 %8476, label %8482, label %8477

; <label>:8477                                    ; preds = %8469
  %8478 = call float @dx.op.unary.f32(i32 7, float %8470)  ; Saturate(value)
  %8479 = fadd fast float %8473, -1.000000e+00
  %8480 = fmul fast float %8478, %8479
  %8481 = fadd fast float %8480, 1.000000e+00
  br label %8482

; <label>:8482                                    ; preds = %8477, %8469
  %8483 = phi float [ %8481, %8477 ], [ %8471, %8469 ]
  br i1 %8245, label %8484, label %8502

; <label>:8484                                    ; preds = %8482
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8487 = fsub fast float %8322, %8486
  %8488 = call float @dx.op.unary.f32(i32 7, float %8487)  ; Saturate(value)
  %8489 = fsub fast float %8322, %8244
  %8490 = call float @dx.op.unary.f32(i32 7, float %8489)  ; Saturate(value)
  %8491 = fsub fast float %8488, %8490
  %8492 = fsub fast float %8324, %8490
  %8493 = fdiv fast float %8492, %8491
  %8494 = call float @dx.op.unary.f32(i32 7, float %8493)  ; Saturate(value)
  %8495 = fmul fast float %8494, 2.000000e+00
  %8496 = fsub fast float 3.000000e+00, %8495
  %8497 = fsub fast float %8473, %8483
  %8498 = fmul fast float %8494, %8494
  %8499 = fmul fast float %8498, %8497
  %8500 = fmul fast float %8499, %8496
  %8501 = fadd fast float %8500, %8483
  br label %8502

; <label>:8502                                    ; preds = %8484, %8482
  %8503 = phi float [ %8501, %8484 ], [ %8483, %8482 ]
  %8504 = call float @dx.op.binary.f32(i32 35, float %8473, float %8503)  ; FMax(a,b)
  %8505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.i32 %8505, 2
  %8507 = and i32 %8506, 1
  %8508 = icmp eq i32 %8507, 0
  %8509 = fcmp fast une float %8504, 1.000000e+00
  %8510 = and i1 %8509, %8508
  br i1 %8510, label %8511, label %8530

; <label>:8511                                    ; preds = %8502
  %8512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8191, float %8192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8513 = extractvalue %dx.types.ResRet.f32 %8512, 0
  %8514 = extractvalue %dx.types.ResRet.f32 %8512, 1
  %8515 = extractvalue %dx.types.ResRet.f32 %8512, 2
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8518 = fmul fast float %8517, %8513
  %8519 = fmul fast float %8517, %8514
  %8520 = fmul fast float %8517, %8515
  %8521 = fcmp fast ogt float %8473, 0x3FEFFF2E40000000
  %8522 = fsub fast float 1.000000e+00, %8504
  %8523 = fsub fast float 1.000000e+00, %8473
  %8524 = fdiv fast float %8522, %8523
  %8525 = call float @dx.op.unary.f32(i32 7, float %8524)  ; Saturate(value)
  %8526 = select i1 %8521, float 0.000000e+00, float %8525
  %8527 = fmul fast float %8518, %8526
  %8528 = fmul fast float %8519, %8526
  %8529 = fmul fast float %8520, %8526
  br label %8530

; <label>:8530                                    ; preds = %8511, %8502
  %8531 = phi float [ 0.000000e+00, %8502 ], [ %8527, %8511 ]
  %8532 = phi float [ 0.000000e+00, %8502 ], [ %8528, %8511 ]
  %8533 = phi float [ 0.000000e+00, %8502 ], [ %8529, %8511 ]
  %8534 = fmul fast float %8531, %7108
  %8535 = fmul fast float %8532, %7108
  %8536 = fmul fast float %8533, %7108
  %8537 = fmul fast float %8504, %8166
  %8538 = call float @dx.op.dot3.f32(i32 55, float %8504, float %8504, float %8504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8539 = call float @dx.op.dot3.f32(i32 55, float %8534, float %8535, float %8536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8540 = select i1 %253, float %8538, float %8504
  %8541 = select i1 %253, float 1.000000e+00, float %8504
  %8542 = select i1 %253, float %8539, float %8534
  %8543 = select i1 %253, float 0.000000e+00, float %8535
  %8544 = select i1 %253, float 0.000000e+00, float %8536
  %8545 = fmul fast float %8540, %8178
  %8546 = fmul fast float %8540, %8179
  %8547 = fmul fast float %8541, %8180
  %8548 = fadd fast float %8545, %8542
  %8549 = fadd fast float %8546, %8543
  %8550 = fadd fast float %8544, %8547
  %8551 = fmul fast float %8540, %8181
  %8552 = fmul fast float %8540, %8182
  %8553 = fmul fast float %8541, %8183
  br label %8554

; <label>:8554                                    ; preds = %8530, %8187, %8156, %7388
  %8555 = phi float [ %7393, %7388 ], [ %8178, %8156 ], [ %8548, %8530 ], [ %8178, %8187 ]
  %8556 = phi float [ %7394, %7388 ], [ %8179, %8156 ], [ %8549, %8530 ], [ %8179, %8187 ]
  %8557 = phi float [ %7395, %7388 ], [ %8180, %8156 ], [ %8550, %8530 ], [ %8180, %8187 ]
  %8558 = phi float [ %7396, %7388 ], [ %8181, %8156 ], [ %8551, %8530 ], [ %8181, %8187 ]
  %8559 = phi float [ %7397, %7388 ], [ %8182, %8156 ], [ %8552, %8530 ], [ %8182, %8187 ]
  %8560 = phi float [ %7398, %7388 ], [ %8183, %8156 ], [ %8553, %8530 ], [ %8183, %8187 ]
  %8561 = phi float [ %7399, %7388 ], [ %8166, %8156 ], [ %8537, %8530 ], [ %8166, %8187 ]
  %8562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8563 = extractvalue %dx.types.CBufRet.f32 %8562, 2
  %8564 = extractvalue %dx.types.CBufRet.f32 %8562, 3
  %8565 = fmul fast float %8563, %111
  %8566 = fmul fast float %8564, %112
  %8567 = call float @dx.op.unary.f32(i32 7, float %8565)  ; Saturate(value)
  %8568 = call float @dx.op.unary.f32(i32 7, float %8566)  ; Saturate(value)
  %8569 = select i1 %7130, i32 2, i32 0
  %8570 = or i32 %8569, 1
  %8571 = uitofp i32 %8570 to float
  %8572 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8567, float %8568, float %8571, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8573 = extractvalue %dx.types.ResRet.f32 %8572, 0
  %8574 = extractvalue %dx.types.ResRet.f32 %8572, 1
  %8575 = extractvalue %dx.types.ResRet.f32 %8572, 2
  %8576 = extractvalue %dx.types.ResRet.f32 %8572, 3
  %8577 = add nuw nsw i32 %8569, 2
  %8578 = uitofp i32 %8577 to float
  %8579 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8567, float %8568, float %8578, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8580 = extractvalue %dx.types.ResRet.f32 %8579, 0
  %8581 = extractvalue %dx.types.ResRet.f32 %8579, 1
  %8582 = extractvalue %dx.types.ResRet.f32 %8579, 2
  %8583 = extractvalue %dx.types.ResRet.f32 %8579, 3
  %8584 = call float @dx.op.binary.f32(i32 35, float %8574, float %8575)  ; FMax(a,b)
  %8585 = call float @dx.op.binary.f32(i32 35, float %8573, float %8584)  ; FMax(a,b)
  %8586 = call float @dx.op.binary.f32(i32 35, float %8585, float %8576)  ; FMax(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8581, float %8582)  ; FMin(a,b)
  %8588 = call float @dx.op.binary.f32(i32 36, float %8580, float %8587)  ; FMin(a,b)
  %8589 = call float @dx.op.binary.f32(i32 36, float %8588, float %8583)  ; FMin(a,b)
  %8590 = fmul fast float %8586, 2.550000e+02
  %8591 = fadd fast float %8590, 0x3F70101020000000
  %8592 = fptoui float %8591 to i32
  %8593 = fmul fast float %8589, 2.550000e+02
  %8594 = fadd fast float %8593, 0x3F70101020000000
  %8595 = fptoui float %8594 to i32
  %8596 = icmp ult i32 %8592, %8595
  br i1 %8596, label %8597, label %8766

; <label>:8597                                    ; preds = %8554
  %8598 = fcmp fast ogt float %101, 9.843750e-01
  %8599 = fadd fast float %7392, -4.000000e+00
  %8600 = select i1 %8598, float -4.000000e+00, float %8599
  %8601 = call float @dx.op.binary.f32(i32 35, float %8600, float 0.000000e+00)  ; FMax(a,b)
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 0
  %8604 = fadd fast float %8603, %8601
  %8605 = extractvalue %dx.types.CBufRet.f32 %8602, 2
  %8606 = fmul fast float %8604, %8605
  %8607 = call float @dx.op.unary.f32(i32 23, float %8606)  ; Log(value)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8602, 3
  %8609 = fmul fast float %8608, %8607
  %8610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8611 = extractvalue %dx.types.CBufRet.f32 %8610, 2
  %8612 = fmul fast float %8609, %8611
  %8613 = call float @dx.op.unary.f32(i32 7, float %8612)  ; Saturate(value)
  %8614 = uitofp i32 %8592 to float
  %8615 = uitofp i32 %8595 to float
  %8616 = fadd fast float %8614, 5.000000e-01
  %8617 = fadd fast float %8615, 5.000000e-01
  %8618 = fmul fast float %8611, %8616
  %8619 = fmul fast float %8611, %8617
  %8620 = fadd fast float %8618, 0x3F0FFB4800000000
  %8621 = fadd fast float %8619, 0xBF0FFB4800000000
  %8622 = call float @dx.op.binary.f32(i32 35, float %8613, float %8620)  ; FMax(a,b)
  %8623 = call float @dx.op.binary.f32(i32 36, float %8622, float %8621)  ; FMin(a,b)
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 1
  %8626 = extractvalue %dx.types.CBufRet.f32 %8624, 2
  %8627 = extractvalue %dx.types.CBufRet.f32 %8624, 0
  %8628 = select i1 %7130, float %8627, float 0.000000e+00
  %8629 = fmul fast float %8625, %8623
  %8630 = fadd fast float %8628, %8629
  %8631 = fadd fast float %8628, %8626
  %8632 = fsub fast float %8625, %8626
  %8633 = fadd fast float %8632, %8628
  %8634 = call float @dx.op.binary.f32(i32 35, float %8630, float %8631)  ; FMax(a,b)
  %8635 = call float @dx.op.binary.f32(i32 36, float %8634, float %8633)  ; FMin(a,b)
  %8636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8567, float %8568, float %8635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8637 = extractvalue %dx.types.ResRet.f32 %8636, 0
  %8638 = extractvalue %dx.types.ResRet.f32 %8636, 1
  %8639 = extractvalue %dx.types.ResRet.f32 %8636, 2
  %8640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.i32 %8640, 0
  %8642 = extractvalue %dx.types.CBufRet.i32 %8640, 1
  %8643 = uitofp i32 %8641 to float
  %8644 = uitofp i32 %8642 to float
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.CBufRet.f32 %8645, 1
  %8648 = fmul fast float %8643, %8567
  %8649 = fmul fast float %8644, %8568
  %8650 = fadd fast float %8648, -5.000000e-01
  %8651 = fadd fast float %8649, -5.000000e-01
  %8652 = call float @dx.op.unary.f32(i32 22, float %8650)  ; Frc(value)
  %8653 = call float @dx.op.unary.f32(i32 22, float %8651)  ; Frc(value)
  %8654 = fmul fast float %8652, %8652
  %8655 = fmul fast float %8654, %8652
  %8656 = fsub fast float 3.000000e+00, %8652
  %8657 = fmul fast float %8654, %8656
  %8658 = fmul fast float %8652, 3.000000e+00
  %8659 = fmul fast float %8655, 3.000000e+00
  %8660 = fmul fast float %8654, 6.000000e+00
  %8661 = fsub fast float %8659, %8660
  %8662 = fadd fast float %8661, 4.000000e+00
  %8663 = fmul fast float %8662, 0x3FC5555560000000
  %8664 = fmul fast float %8655, -3.000000e+00
  %8665 = fadd fast float %8654, %8652
  %8666 = fmul fast float %8665, 3.000000e+00
  %8667 = fadd fast float %8664, 1.000000e+00
  %8668 = fadd fast float %8667, %8666
  %8669 = fmul fast float %8655, 0x3FC5555560000000
  %8670 = fmul fast float %8653, %8653
  %8671 = fmul fast float %8670, %8653
  %8672 = fsub fast float 3.000000e+00, %8653
  %8673 = fmul fast float %8670, %8672
  %8674 = fmul fast float %8653, 3.000000e+00
  %8675 = fmul fast float %8671, 3.000000e+00
  %8676 = fmul fast float %8670, 6.000000e+00
  %8677 = fsub fast float %8675, %8676
  %8678 = fadd fast float %8677, 4.000000e+00
  %8679 = fmul fast float %8678, 0x3FC5555560000000
  %8680 = fmul fast float %8671, -3.000000e+00
  %8681 = fadd fast float %8670, %8653
  %8682 = fmul fast float %8681, 3.000000e+00
  %8683 = fadd fast float %8680, 1.000000e+00
  %8684 = fadd fast float %8683, %8682
  %8685 = fmul fast float %8671, 0x3FC5555560000000
  %8686 = fadd fast float %8652, 1.000000e+00
  %8687 = fsub fast float 1.000000e+00, %8658
  %8688 = fadd fast float %8687, %8657
  %8689 = fadd fast float %8688, %8662
  %8690 = fmul fast float %8689, 0x3FC5555560000000
  %8691 = fdiv fast float %8663, %8690
  %8692 = fsub fast float %8686, %8691
  %8693 = fsub fast float 1.000000e+00, %8652
  %8694 = fadd fast float %8668, %8655
  %8695 = fmul fast float %8694, 0x3FC5555560000000
  %8696 = fdiv fast float %8669, %8695
  %8697 = fadd fast float %8693, %8696
  %8698 = fadd fast float %8653, 1.000000e+00
  %8699 = fsub fast float 1.000000e+00, %8674
  %8700 = fadd fast float %8699, %8673
  %8701 = fadd fast float %8700, %8678
  %8702 = fmul fast float %8701, 0x3FC5555560000000
  %8703 = fdiv fast float %8679, %8702
  %8704 = fsub fast float %8698, %8703
  %8705 = fsub fast float 1.000000e+00, %8653
  %8706 = fadd fast float %8684, %8671
  %8707 = fmul fast float %8706, 0x3FC5555560000000
  %8708 = fdiv fast float %8685, %8707
  %8709 = fadd fast float %8708, %8705
  %8710 = fmul fast float %8692, %8646
  %8711 = fsub fast float %8567, %8710
  %8712 = fmul fast float %8697, %8646
  %8713 = fadd fast float %8712, %8567
  %8714 = fmul fast float %8709, %8647
  %8715 = fadd fast float %8714, %8568
  %8716 = fmul fast float %8704, %8647
  %8717 = fsub fast float %8568, %8716
  %8718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8711, float %8717, float %8635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8719 = extractvalue %dx.types.ResRet.f32 %8718, 0
  %8720 = extractvalue %dx.types.ResRet.f32 %8718, 1
  %8721 = extractvalue %dx.types.ResRet.f32 %8718, 2
  %8722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8713, float %8717, float %8635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8723 = extractvalue %dx.types.ResRet.f32 %8722, 0
  %8724 = extractvalue %dx.types.ResRet.f32 %8722, 1
  %8725 = extractvalue %dx.types.ResRet.f32 %8722, 2
  %8726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8711, float %8715, float %8635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8727 = extractvalue %dx.types.ResRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.ResRet.f32 %8726, 1
  %8729 = extractvalue %dx.types.ResRet.f32 %8726, 2
  %8730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8713, float %8715, float %8635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8731 = extractvalue %dx.types.ResRet.f32 %8730, 0
  %8732 = extractvalue %dx.types.ResRet.f32 %8730, 1
  %8733 = extractvalue %dx.types.ResRet.f32 %8730, 2
  %8734 = fsub fast float %8727, %8719
  %8735 = fsub fast float %8728, %8720
  %8736 = fsub fast float %8729, %8721
  %8737 = fmul fast float %8734, %8707
  %8738 = fmul fast float %8735, %8707
  %8739 = fmul fast float %8736, %8707
  %8740 = fadd fast float %8737, %8719
  %8741 = fadd fast float %8738, %8720
  %8742 = fadd fast float %8739, %8721
  %8743 = fsub fast float %8731, %8723
  %8744 = fsub fast float %8732, %8724
  %8745 = fsub fast float %8733, %8725
  %8746 = fmul fast float %8743, %8707
  %8747 = fmul fast float %8744, %8707
  %8748 = fmul fast float %8745, %8707
  %8749 = fsub fast float %8723, %8740
  %8750 = fadd fast float %8749, %8746
  %8751 = fsub fast float %8724, %8741
  %8752 = fadd fast float %8751, %8747
  %8753 = fsub fast float %8725, %8742
  %8754 = fadd fast float %8753, %8748
  %8755 = fmul fast float %8750, %8695
  %8756 = fmul fast float %8752, %8695
  %8757 = fmul fast float %8754, %8695
  %8758 = fadd fast float %8755, %8740
  %8759 = fadd fast float %8756, %8741
  %8760 = fadd fast float %8757, %8742
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 1
  %8763 = fmul fast float %8758, %8762
  %8764 = fmul fast float %8759, %8762
  %8765 = fmul fast float %8760, %8762
  br label %8766

; <label>:8766                                    ; preds = %8597, %8554
  %8767 = phi float [ %8637, %8597 ], [ 1.000000e+00, %8554 ]
  %8768 = phi float [ %8638, %8597 ], [ 1.000000e+00, %8554 ]
  %8769 = phi float [ %8639, %8597 ], [ 1.000000e+00, %8554 ]
  %8770 = phi float [ %8763, %8597 ], [ 0.000000e+00, %8554 ]
  %8771 = phi float [ %8764, %8597 ], [ 0.000000e+00, %8554 ]
  %8772 = phi float [ %8765, %8597 ], [ 0.000000e+00, %8554 ]
  %8773 = fmul fast float %8770, %7108
  %8774 = fmul fast float %8771, %7108
  %8775 = fmul fast float %8772, %7108
  %8776 = fmul fast float %8767, %8561
  %8777 = call float @dx.op.dot3.f32(i32 55, float %8767, float %8768, float %8769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8778 = call float @dx.op.dot3.f32(i32 55, float %8773, float %8774, float %8775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8779 = select i1 %253, float %8777, float %8767
  %8780 = select i1 %253, float %8777, float %8768
  %8781 = select i1 %253, float 1.000000e+00, float %8769
  %8782 = select i1 %253, float %8778, float %8773
  %8783 = select i1 %253, float 0.000000e+00, float %8774
  %8784 = select i1 %253, float 0.000000e+00, float %8775
  %8785 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.i32 %8785, 3
  %8787 = and i32 %8786, 3
  %8788 = icmp ne i32 %8787, 0
  %8789 = and i32 %8786, 4
  %8790 = icmp ne i32 %8789, 0
  %8791 = and i1 %8788, %8790
  %8792 = and i1 %253, %8791
  br i1 %8792, label %8793, label %8799

; <label>:8793                                    ; preds = %8766
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 1
  %8796 = fadd fast float %8776, -1.000000e+00
  %8797 = fmul fast float %8795, %8796
  %8798 = fadd fast float %8797, 1.000000e+00
  br label %8799

; <label>:8799                                    ; preds = %8793, %8766
  %8800 = phi float [ %8798, %8793 ], [ %8776, %8766 ]
  %8801 = fadd fast float %8558, %8555
  %8802 = fmul fast float %8779, %8801
  %8803 = fadd fast float %8802, %8782
  %8804 = fadd fast float %8559, %8556
  %8805 = fmul fast float %8780, %8804
  %8806 = fadd fast float %8805, %8783
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 0
  br i1 %253, label %8809, label %8832

; <label>:8809                                    ; preds = %8799
  %8810 = fadd fast float %8803, %8806
  %8811 = fmul fast float %8808, %8810
  %8812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8812, 3
  %8814 = extractvalue %dx.types.CBufRet.f32 %7112, 1
  %8815 = fsub fast float %7117, %7111
  %8816 = fadd fast float %8815, %7118
  %8817 = fsub fast float %8816, %8814
  %8818 = extractvalue %dx.types.CBufRet.f32 %7112, 2
  %8819 = fmul fast float %8817, %8818
  %8820 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8821 = fsub fast float %8820, %8813
  %8822 = fmul fast float %8821, %8800
  %8823 = fadd fast float %8822, %8813
  %8824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8825 = extractvalue %dx.types.CBufRet.f32 %8824, 0
  %8826 = fsub fast float %8823, %8825
  %8827 = fmul fast float %8826, 1.000000e+01
  %8828 = call float @dx.op.unary.f32(i32 7, float %8827)  ; Saturate(value)
  %8829 = fmul fast float %8828, %7107
  %8830 = fadd fast float %8829, %7108
  %8831 = fmul fast float %8830, %8823
  br label %8856

; <label>:8832                                    ; preds = %8799
  %8833 = fadd fast float %8560, %8557
  %8834 = fmul fast float %8781, %8833
  %8835 = fadd fast float %8834, %8784
  %8836 = fmul fast float %8808, %8803
  %8837 = fmul fast float %8808, %8806
  %8838 = fmul fast float %8808, %8835
  %8839 = call float @dx.op.binary.f32(i32 35, float %8837, float %8838)  ; FMax(a,b)
  %8840 = call float @dx.op.binary.f32(i32 35, float %8836, float %8839)  ; FMax(a,b)
  %8841 = call float @dx.op.binary.f32(i32 35, float %8840, float %7108)  ; FMax(a,b)
  %8842 = fcmp fast ugt float %8841, 0x3F10000000000000
  br i1 %8842, label %8844, label %8843

; <label>:8843                                    ; preds = %8832
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8844

; <label>:8844                                    ; preds = %8843, %8832
  %8845 = add i32 %56, 356
  %8846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8845, i32 undef)  ; BufferLoad(srv,index,wot)
  %8847 = extractvalue %dx.types.ResRet.i32 %8846, 0
  %8848 = and i32 %8847, 32
  %8849 = icmp eq i32 %8848, 0
  br i1 %8849, label %8856, label %8850

; <label>:8850                                    ; preds = %8844
  %8851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8851, 0
  %8853 = fmul fast float %8852, 0x3FE99999A0000000
  %8854 = fadd fast float %8852, %8836
  %8855 = fadd fast float %8853, %8838
  br label %8856

; <label>:8856                                    ; preds = %8850, %8844, %8809
  %8857 = phi float [ %8811, %8809 ], [ %8854, %8850 ], [ %8836, %8844 ]
  %8858 = phi float [ %8831, %8809 ], [ %8837, %8850 ], [ %8837, %8844 ]
  %8859 = phi float [ %8830, %8809 ], [ %8855, %8850 ], [ %8838, %8844 ]
  %8860 = phi float [ %8830, %8809 ], [ %7108, %8850 ], [ %7108, %8844 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8861 = call float @dx.op.binary.f32(i32 36, float %8857, float 3.225500e+04)  ; FMin(a,b)
  %8862 = call float @dx.op.binary.f32(i32 36, float %8858, float 3.225500e+04)  ; FMin(a,b)
  %8863 = call float @dx.op.binary.f32(i32 36, float %8859, float 3.225500e+04)  ; FMin(a,b)
  %8864 = call float @dx.op.binary.f32(i32 36, float %8860, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8861)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8862)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8863)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8864)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!67}
!dx.entryPoints = !{!68}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !56, !59}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !30}
!30 = !{i32 0, i32 5}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !41}
!41 = !{i32 0, i32 14}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!50 = !{i32 41, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !41}
!54 = !{i32 45, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!56 = !{!57, !58}
!57 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!58 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!59 = !{!60, !61, !62, !63, !64, !65, !66}
!60 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!61 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!62 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!63 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!64 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!65 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!66 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!67 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!68 = !{void ()* @ps_main, !"ps_main", !69, !4, !95}
!69 = !{!70, !93, null}
!70 = !{!71, !74, !75, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92}
!71 = !{i32 0, !"SV_Position", i8 9, i8 3, !72, i8 4, i32 1, i8 4, i32 0, i8 0, !73}
!72 = !{i32 0}
!73 = !{i32 3, i32 15}
!74 = !{i32 1, !"COLOR", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 1, i8 0, !73}
!75 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 2, i8 0, !76}
!76 = !{i32 3, i32 3}
!77 = !{i32 3, !"NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 3, i8 0, !78}
!78 = !{i32 3, i32 7}
!79 = !{i32 4, !"TANGENT", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 4, i8 0, !73}
!80 = !{i32 5, !"SH_RED", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 5, i8 0, !73}
!81 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 6, i8 0, !73}
!82 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 7, i8 0, !73}
!83 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 8, i8 0, !78}
!84 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 9, i8 0, !73}
!85 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !72, i8 2, i32 1, i8 2, i32 10, i8 0, !76}
!86 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 11, i8 0, !73}
!87 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 12, i8 0, !78}
!88 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !72, i8 1, i32 1, i8 1, i32 13, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !72, i8 1, i32 1, i8 4, i32 14, i8 0, !89}
!91 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !72, i8 1, i32 1, i8 1, i32 13, i8 1, !89}
!92 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !72, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!93 = !{!94}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !72, i8 0, i32 1, i8 4, i32 0, i8 0, !73}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !103, i64 0}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

