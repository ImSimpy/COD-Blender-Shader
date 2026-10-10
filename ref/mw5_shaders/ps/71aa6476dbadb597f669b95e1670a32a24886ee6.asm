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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: b8940a05a34ac9054fbdc71620c9e1a5
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
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 4 depends on inputs: { 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 53, 56 }
;   output 5 depends on inputs: { 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 53, 56 }
;   output 6 depends on inputs: { 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 53, 56 }
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
  br i1 %3299, label %3818, label %3300

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
  br i1 %3361, label %3786, label %3362

; <label>:3362                                    ; preds = %3300
  br label %3363

; <label>:3363                                    ; preds = %3485, %3362
  %3364 = phi i32 [ %3387, %3485 ], [ %3360, %3362 ]
  %3365 = phi float [ %3486, %3485 ], [ 0.000000e+00, %3362 ]
  %3366 = phi float [ %3487, %3485 ], [ %1048, %3362 ]
  %3367 = phi float [ %3488, %3485 ], [ %3270, %3362 ]
  %3368 = phi float [ %3489, %3485 ], [ %3268, %3362 ]
  %3369 = phi float [ %3490, %3485 ], [ 0.000000e+00, %3362 ]
  %3370 = phi float [ %3491, %3485 ], [ 0.000000e+00, %3362 ]
  %3371 = phi float [ %3492, %3485 ], [ %3262, %3362 ]
  %3372 = phi float [ %3493, %3485 ], [ %3263, %3362 ]
  %3373 = phi float [ %3494, %3485 ], [ %3264, %3362 ]
  %3374 = phi float [ %3495, %3485 ], [ %3296, %3362 ]
  %3375 = phi float [ %3496, %3485 ], [ %3297, %3362 ]
  %3376 = phi float [ %3497, %3485 ], [ %3298, %3362 ]
  %3377 = phi float [ %3498, %3485 ], [ %3267, %3362 ]
  %3378 = phi float [ %3499, %3485 ], [ %3266, %3362 ]
  %3379 = phi float [ %3500, %3485 ], [ 0.000000e+00, %3362 ]
  %3380 = phi float [ %3501, %3485 ], [ %3265, %3362 ]
  %3381 = phi float [ %3502, %3485 ], [ %3259, %3362 ]
  %3382 = phi float [ %3503, %3485 ], [ %3260, %3362 ]
  %3383 = phi float [ %3504, %3485 ], [ %3261, %3362 ]
  %3384 = shl nuw nsw i32 %3364, 2
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = lshr i32 %3386, 16
  %3388 = shl i32 %3386, 8
  %3389 = and i32 %3388, 16776960
  %3390 = or i32 %3389, 48
  %3391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = or i32 %3389, 64
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = extractvalue %dx.types.ResRet.i32 %3396, 1
  %3399 = or i32 %3389, 80
  %3400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 2
  %3402 = extractvalue %dx.types.ResRet.f32 %3400, 3
  %3403 = or i32 %3389, 96
  %3404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.ResRet.f32 %3404, 2
  %3408 = extractvalue %dx.types.ResRet.f32 %3404, 3
  %3409 = or i32 %3389, 112
  %3410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3412 = or i32 %3389, 128
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3417 = extractvalue %dx.types.ResRet.f32 %3413, 3
  %3418 = or i32 %3389, 144
  %3419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = extractvalue %dx.types.ResRet.f32 %3419, 3
  %3424 = or i32 %3389, 160
  %3425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.f32 %3425, 0
  %3427 = extractvalue %dx.types.ResRet.f32 %3425, 1
  %3428 = extractvalue %dx.types.ResRet.f32 %3425, 2
  %3429 = extractvalue %dx.types.ResRet.f32 %3425, 3
  %3430 = or i32 %3389, 192
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = or i32 %3389, 208
  %3434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = or i32 %3389, 248
  %3437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.ResRet.f32 %3437, 1
  %3440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.f32 %3440, 0
  %3442 = extractvalue %dx.types.ResRet.f32 %3440, 1
  %3443 = extractvalue %dx.types.ResRet.f32 %3440, 2
  %3444 = extractvalue %dx.types.ResRet.f32 %3440, 3
  %3445 = call float @dx.op.dot4.f32(i32 56, float %3441, float %3442, float %3443, float %3444, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3446 = or i32 %3389, 16
  %3447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = extractvalue %dx.types.ResRet.f32 %3447, 3
  %3452 = call float @dx.op.dot4.f32(i32 56, float %3448, float %3449, float %3450, float %3451, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3453 = or i32 %3389, 32
  %3454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3458 = extractvalue %dx.types.ResRet.f32 %3454, 3
  %3459 = call float @dx.op.dot4.f32(i32 56, float %3455, float %3456, float %3457, float %3458, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3460 = call float @dx.op.unary.f32(i32 27, float %3445)  ; Round_ni(value)
  %3461 = call float @dx.op.unary.f32(i32 6, float %3460)  ; FAbs(value)
  %3462 = call float @dx.op.unary.f32(i32 27, float %3452)  ; Round_ni(value)
  %3463 = call float @dx.op.unary.f32(i32 6, float %3462)  ; FAbs(value)
  %3464 = call float @dx.op.unary.f32(i32 6, float %3459)  ; FAbs(value)
  %3465 = call float @dx.op.unary.f32(i32 27, float %3464)  ; Round_ni(value)
  %3466 = fadd fast float %3463, %3461
  %3467 = fadd fast float %3466, %3465
  %3468 = fcmp fast oeq float %3467, 0.000000e+00
  %3469 = call float @dx.op.dot4.f32(i32 56, float %3441, float %3442, float %3443, float %3444, float %3307, float %3308, float %3309, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3470 = call float @dx.op.dot4.f32(i32 56, float %3448, float %3449, float %3450, float %3451, float %3307, float %3308, float %3309, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3471 = call float @dx.op.dot4.f32(i32 56, float %3441, float %3442, float %3443, float %3444, float %3310, float %3311, float %3312, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3472 = call float @dx.op.dot4.f32(i32 56, float %3448, float %3449, float %3450, float %3451, float %3310, float %3311, float %3312, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3473 = fsub fast float %3469, %3445
  %3474 = fsub fast float %3471, %3445
  %3475 = fsub fast float %3470, %3452
  %3476 = fsub fast float %3472, %3452
  %3477 = call float @dx.op.dot3.f32(i32 55, float %3392, float %3393, float %3394, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 2
  %3480 = fadd fast float %3479, %3477
  %3481 = call float @dx.op.unary.f32(i32 7, float %3480)  ; Saturate(value)
  %3482 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3483 = fcmp fast ogt float %3481, %3482
  %3484 = and i1 %3468, %3483
  br i1 %3484, label %3506, label %3485

; <label>:3485                                    ; preds = %3772, %3589, %3506, %3363
  %3486 = phi float [ %3365, %3506 ], [ %3592, %3589 ], [ %3592, %3772 ], [ %3365, %3363 ]
  %3487 = phi float [ %3366, %3506 ], [ %3366, %3589 ], [ %3747, %3772 ], [ %3366, %3363 ]
  %3488 = phi float [ %3367, %3506 ], [ %3367, %3589 ], [ %3746, %3772 ], [ %3367, %3363 ]
  %3489 = phi float [ %3368, %3506 ], [ %3368, %3589 ], [ %3744, %3772 ], [ %3368, %3363 ]
  %3490 = phi float [ %3369, %3506 ], [ %3369, %3589 ], [ %3716, %3772 ], [ %3369, %3363 ]
  %3491 = phi float [ %3370, %3506 ], [ %3370, %3589 ], [ %3714, %3772 ], [ %3370, %3363 ]
  %3492 = phi float [ %3371, %3506 ], [ %3371, %3589 ], [ %3782, %3772 ], [ %3371, %3363 ]
  %3493 = phi float [ %3372, %3506 ], [ %3372, %3589 ], [ %3783, %3772 ], [ %3372, %3363 ]
  %3494 = phi float [ %3373, %3506 ], [ %3373, %3589 ], [ %3784, %3772 ], [ %3373, %3363 ]
  %3495 = phi float [ %3374, %3506 ], [ %3374, %3589 ], [ %3695, %3772 ], [ %3374, %3363 ]
  %3496 = phi float [ %3375, %3506 ], [ %3375, %3589 ], [ %3696, %3772 ], [ %3375, %3363 ]
  %3497 = phi float [ %3376, %3506 ], [ %3376, %3589 ], [ %3697, %3772 ], [ %3376, %3363 ]
  %3498 = phi float [ %3377, %3506 ], [ %3377, %3589 ], [ %3724, %3772 ], [ %3377, %3363 ]
  %3499 = phi float [ %3378, %3506 ], [ %3378, %3589 ], [ %3721, %3772 ], [ %3378, %3363 ]
  %3500 = phi float [ %3379, %3506 ], [ %3379, %3589 ], [ %3718, %3772 ], [ %3379, %3363 ]
  %3501 = phi float [ %3380, %3506 ], [ %3380, %3589 ], [ %3712, %3772 ], [ %3380, %3363 ]
  %3502 = phi float [ %3381, %3506 ], [ %3381, %3589 ], [ %3707, %3772 ], [ %3381, %3363 ]
  %3503 = phi float [ %3382, %3506 ], [ %3382, %3589 ], [ %3708, %3772 ], [ %3382, %3363 ]
  %3504 = phi float [ %3383, %3506 ], [ %3383, %3589 ], [ %3709, %3772 ], [ %3383, %3363 ]
  %3505 = icmp eq i32 %3387, 0
  br i1 %3505, label %3785, label %3363

; <label>:3506                                    ; preds = %3363
  %3507 = extractvalue %dx.types.ResRet.f32 %3391, 3
  %3508 = extractvalue %dx.types.ResRet.f32 %3410, 3
  %3509 = extractvalue %dx.types.ResRet.f32 %3410, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3511 = extractvalue %dx.types.ResRet.f32 %3400, 1
  %3512 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3513 = extractvalue %dx.types.ResRet.i32 %3396, 3
  %3514 = extractvalue %dx.types.ResRet.i32 %3396, 2
  %3515 = bitcast float %3507 to i32
  %3516 = add i32 %3513, 0
  %3517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3516, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3519 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3517, %dx.types.Handle %3518, float %3445, float %3452, float undef, float undef, i32 0, i32 0, i32 undef, float %3473, float %3475, float undef, float %3474, float %3476, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = fmul fast float %3520, %3512
  %3522 = fadd fast float %3521, %3511
  %3523 = call float @dx.op.unary.f32(i32 7, float %3522)  ; Saturate(value)
  %3524 = fmul fast float %3445, %3405
  %3525 = call float @dx.op.tertiary.f32(i32 46, float %3406, float %3452, float %3524)  ; FMad(a,b,c)
  %3526 = fadd fast float %3525, %3510
  %3527 = fmul fast float %3445, %3407
  %3528 = call float @dx.op.tertiary.f32(i32 46, float %3408, float %3452, float %3527)  ; FMad(a,b,c)
  %3529 = fadd fast float %3528, %3509
  %3530 = fmul fast float %3473, %3405
  %3531 = call float @dx.op.tertiary.f32(i32 46, float %3406, float %3475, float %3530)  ; FMad(a,b,c)
  %3532 = fmul fast float %3473, %3407
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %3408, float %3475, float %3532)  ; FMad(a,b,c)
  %3534 = fmul fast float %3474, %3405
  %3535 = call float @dx.op.tertiary.f32(i32 46, float %3406, float %3476, float %3534)  ; FMad(a,b,c)
  %3536 = fmul fast float %3474, %3407
  %3537 = call float @dx.op.tertiary.f32(i32 46, float %3408, float %3476, float %3536)  ; FMad(a,b,c)
  %3538 = add i32 %3514, 0
  %3539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3540 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3539, %dx.types.Handle %3518, float %3526, float %3529, float undef, float undef, i32 0, i32 0, i32 undef, float %3531, float %3533, float undef, float %3535, float %3537, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = and i32 %3515, 1024
  %3543 = icmp ne i32 %3542, 0
  %3544 = fcmp fast ogt float %3541, 0x3FE0101020000000
  %3545 = uitofp i1 %3544 to float
  %3546 = select i1 %3543, float %3545, float %3541
  %3547 = and i32 %3515, 8192
  %3548 = icmp ne i32 %3547, 0
  %3549 = select i1 %3548, float %3508, float 1.000000e+00
  %3550 = fmul fast float %3445, 2.000000e+00
  %3551 = fadd fast float %3550, -1.000000e+00
  %3552 = call float @dx.op.unary.f32(i32 6, float %3551)  ; FAbs(value)
  %3553 = fmul fast float %3552, %3438
  %3554 = fsub fast float %3553, %3438
  %3555 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3556 = fmul fast float %3452, 2.000000e+00
  %3557 = fadd fast float %3556, -1.000000e+00
  %3558 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3559 = fmul fast float %3558, %3439
  %3560 = fsub fast float %3559, %3439
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3562 = fmul fast float %3464, %3401
  %3563 = fsub fast float %3562, %3401
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3565 = fmul fast float %3523, %3549
  %3566 = fmul fast float %3565, %3520
  %3567 = fmul fast float %3566, %3555
  %3568 = fmul fast float %3567, %3546
  %3569 = fmul fast float %3568, %3561
  %3570 = fmul fast float %3569, %3564
  %3571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.f32 %3571, 1
  %3573 = extractvalue %dx.types.CBufRet.f32 %3571, 0
  %3574 = fsub fast float %3481, %3573
  %3575 = fmul fast float %3574, %3572
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = fmul fast float %3570, %3402
  %3578 = fadd fast float %3570, %3402
  %3579 = fmul fast float %3578, %3411
  %3580 = fsub fast float %3579, %3411
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3582 = and i32 %3515, 128
  %3583 = icmp ne i32 %3582, 0
  %3584 = select i1 %3583, float %3581, float %3577
  %3585 = fmul fast float %3584, %3576
  %3586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.f32 %3586, 0
  %3588 = fcmp fast ugt float %3585, %3587
  br i1 %3588, label %3589, label %3485

; <label>:3589                                    ; preds = %3506
  %3590 = select i1 %3548, float %3585, float 0.000000e+00
  %3591 = fadd fast float %3590, %3365
  %3592 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  br i1 %3548, label %3485, label %3593

; <label>:3593                                    ; preds = %3589
  %3594 = and i32 %3515, 4
  %3595 = and i32 %3515, 8
  %3596 = add i32 %3397, 0
  %3597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3596, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3599 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3597, %dx.types.Handle %3598, float %3526, float %3529, float undef, float undef, i32 0, i32 0, i32 undef, float %3531, float %3533, float undef, float %3535, float %3537, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = bitcast float %3423 to i32
  %3605 = and i32 %3604, 255
  %3606 = uitofp i32 %3605 to float
  %3607 = lshr i32 %3604, 8
  %3608 = and i32 %3607, 255
  %3609 = uitofp i32 %3608 to float
  %3610 = fmul fast float %3603, %3606
  %3611 = fadd fast float %3610, %3609
  %3612 = fmul fast float %3611, 0x3F70101000000000
  %3613 = add i32 %3398, 0
  %3614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3613, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3615 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3614, %dx.types.Handle %3598, float %3526, float %3529, float undef, float undef, i32 0, i32 0, i32 undef, float %3531, float %3533, float undef, float %3535, float %3537, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3620 = bitcast float %3417 to i32
  %3621 = and i32 %3620, 255
  %3622 = uitofp i32 %3621 to float
  %3623 = lshr i32 %3620, 8
  %3624 = and i32 %3623, 255
  %3625 = uitofp i32 %3624 to float
  %3626 = lshr i32 %3620, 16
  %3627 = and i32 %3626, 255
  %3628 = uitofp i32 %3627 to float
  %3629 = fmul fast float %3628, 0x3F70101000000000
  %3630 = fmul fast float %3616, %3622
  %3631 = fadd fast float %3630, %3625
  %3632 = fmul fast float %3631, 0x3F70101000000000
  %3633 = fadd fast float %3617, -5.000000e-01
  %3634 = fadd fast float %3619, -5.000000e-01
  %3635 = fmul fast float %3633, %3629
  %3636 = fmul fast float %3634, %3629
  %3637 = fadd fast float %3635, 5.000000e-01
  %3638 = fadd fast float %3636, 5.000000e-01
  %3639 = fmul fast float %3600, %3426
  %3640 = fmul fast float %3601, %3427
  %3641 = fmul fast float %3602, %3428
  %3642 = fmul fast float %3637, 2.000000e+00
  %3643 = fadd fast float %3642, -1.000000e+00
  %3644 = fmul fast float %3638, 2.000000e+00
  %3645 = fadd fast float %3644, -1.000000e+00
  %3646 = fadd fast float %3643, %3645
  %3647 = fmul fast float %3646, 5.000000e-01
  %3648 = fsub fast float %3643, %3645
  %3649 = fmul fast float %3648, 5.000000e-01
  %3650 = call float @dx.op.unary.f32(i32 6, float %3647)  ; FAbs(value)
  %3651 = fsub fast float 1.000000e+00, %3650
  %3652 = call float @dx.op.unary.f32(i32 6, float %3649)  ; FAbs(value)
  %3653 = fsub fast float %3651, %3652
  %3654 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3649, float %3653, float %3647, float %3649, float %3653)  ; Dot3(ax,ay,az,bx,by,bz)
  %3655 = call float @dx.op.unary.f32(i32 25, float %3654)  ; Rsqrt(value)
  %3656 = fmul fast float %3647, %3655
  %3657 = fmul fast float %3649, %3655
  %3658 = fmul fast float %3655, %3653
  %3659 = fmul fast float %3658, %3392
  %3660 = fmul fast float %3658, %3393
  %3661 = fmul fast float %3658, %3394
  %3662 = fmul fast float %3656, %3414
  %3663 = fmul fast float %3656, %3415
  %3664 = fmul fast float %3656, %3416
  %3665 = fadd fast float %3662, %3659
  %3666 = fadd fast float %3663, %3660
  %3667 = fadd fast float %3664, %3661
  %3668 = fmul fast float %3657, %3420
  %3669 = fmul fast float %3657, %3421
  %3670 = fmul fast float %3657, %3422
  %3671 = fadd fast float %3665, %3668
  %3672 = fadd fast float %3666, %3669
  %3673 = fadd fast float %3667, %3670
  %3674 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %3671, float %3672, float %3673)  ; Dot3(ax,ay,az,bx,by,bz)
  %3675 = call float @dx.op.unary.f32(i32 25, float %3674)  ; Rsqrt(value)
  %3676 = fmul fast float %3671, %3675
  %3677 = fmul fast float %3672, %3675
  %3678 = fmul fast float %3673, %3675
  %3679 = icmp ne i32 %3595, 0
  %3680 = select i1 %3679, float 1.000000e+00, float 0.000000e+00
  %3681 = fmul fast float %3585, %3680
  %3682 = and i32 %3515, 1
  %3683 = icmp eq i32 %3682, 0
  br i1 %3683, label %3684, label %3688

; <label>:3684                                    ; preds = %3593
  %3685 = fsub fast float %3676, %3374
  %3686 = fsub fast float %3677, %3375
  %3687 = fsub fast float %3678, %3376
  br label %3688

; <label>:3688                                    ; preds = %3684, %3593
  %3689 = phi float [ %3685, %3684 ], [ %3676, %3593 ]
  %3690 = phi float [ %3686, %3684 ], [ %3677, %3593 ]
  %3691 = phi float [ %3687, %3684 ], [ %3678, %3593 ]
  %3692 = fmul float %3691, %3681
  %3693 = fmul float %3690, %3681
  %3694 = fmul float %3689, %3681
  %3695 = fadd fast float %3694, %3374
  %3696 = fadd fast float %3693, %3375
  %3697 = fadd fast float %3692, %3376
  %3698 = icmp ne i32 %3594, 0
  %3699 = select i1 %3698, float 1.000000e+00, float 0.000000e+00
  %3700 = fmul fast float %3585, %3699
  %3701 = fsub fast float %3639, %3381
  %3702 = fsub fast float %3640, %3382
  %3703 = fsub fast float %3641, %3383
  %3704 = fmul fast float %3701, %3700
  %3705 = fmul fast float %3702, %3700
  %3706 = fmul fast float %3703, %3700
  %3707 = fadd fast float %3704, %3381
  %3708 = fadd fast float %3705, %3382
  %3709 = fadd fast float %3706, %3383
  %3710 = fsub fast float %3612, %3380
  %3711 = fmul fast float %3710, %3700
  %3712 = fadd fast float %3711, %3380
  %3713 = fmul fast float %3700, %3370
  %3714 = fsub fast float %3370, %3713
  %3715 = fmul fast float %3700, %3369
  %3716 = fsub fast float %3369, %3715
  %3717 = fadd fast float %3585, %3379
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = fsub fast float %3632, %3378
  %3720 = fmul fast float %3719, %3681
  %3721 = fadd fast float %3720, %3378
  %3722 = fsub fast float %3618, %3377
  %3723 = fmul fast float %3722, %3681
  %3724 = fadd fast float %3723, %3377
  %3725 = call float @dx.op.dot3.f32(i32 55, float %3639, float %3640, float %3641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.CBufRet.f32 %3726, 1
  %3729 = fmul fast float %3728, %3725
  %3730 = fadd fast float %3729, %3727
  %3731 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3732 = bitcast float %3429 to i32
  %3733 = and i32 %3732, 65535
  %3734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3733)  ; LegacyF16ToF32(value)
  %3735 = lshr i32 %3732, 16
  %3736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3735)  ; LegacyF16ToF32(value)
  %3737 = fcmp fast oge float %3734, 0.000000e+00
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3740 = select i1 %3737, float %3734, float %3739
  %3741 = fadd fast float %3740, %3736
  %3742 = fsub fast float %3731, %3368
  %3743 = fmul fast float %3742, %3585
  %3744 = fadd fast float %3743, %3368
  %3745 = fmul fast float %3741, %3585
  %3746 = call float @dx.op.binary.f32(i32 35, float %3367, float %3745)  ; FMax(a,b)
  %3747 = call float @dx.op.binary.f32(i32 35, float %3366, float %3585)  ; FMax(a,b)
  %3748 = and i32 %3515, 16
  %3749 = icmp eq i32 %3748, 0
  br i1 %3749, label %3772, label %3750

; <label>:3750                                    ; preds = %3688
  %3751 = bitcast float %3435 to i32
  %3752 = add i32 %3432, 0
  %3753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3754 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3753, %dx.types.Handle %3598, float %3526, float %3529, float undef, float undef, i32 0, i32 0, i32 undef, float %3531, float %3533, float undef, float %3535, float %3537, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3755 = extractvalue %dx.types.ResRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.ResRet.f32 %3754, 1
  %3757 = extractvalue %dx.types.ResRet.f32 %3754, 2
  %3758 = and i32 %3751, 65535
  %3759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3758)  ; LegacyF16ToF32(value)
  %3760 = fmul fast float %3755, %3426
  %3761 = fmul fast float %3756, %3427
  %3762 = fmul fast float %3757, %3428
  %3763 = and i32 %3515, 16384
  %3764 = icmp ne i32 %3763, 0
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3767 = select i1 %3764, float %3766, float 1.000000e+00
  %3768 = fmul fast float %3767, %3759
  %3769 = fmul fast float %3760, %3768
  %3770 = fmul fast float %3761, %3768
  %3771 = fmul fast float %3762, %3768
  br label %3772

; <label>:3772                                    ; preds = %3750, %3688
  %3773 = phi float [ %3769, %3750 ], [ 0.000000e+00, %3688 ]
  %3774 = phi float [ %3770, %3750 ], [ 0.000000e+00, %3688 ]
  %3775 = phi float [ %3771, %3750 ], [ 0.000000e+00, %3688 ]
  %3776 = fsub fast float %3773, %3371
  %3777 = fsub fast float %3774, %3372
  %3778 = fsub fast float %3775, %3373
  %3779 = fmul fast float %3776, %3585
  %3780 = fmul fast float %3777, %3585
  %3781 = fmul fast float %3778, %3585
  %3782 = fadd fast float %3779, %3371
  %3783 = fadd fast float %3780, %3372
  %3784 = fadd fast float %3781, %3373
  br label %3485

; <label>:3785                                    ; preds = %3485
  br label %3786

; <label>:3786                                    ; preds = %3785, %3300
  %3787 = phi float [ 0.000000e+00, %3300 ], [ %3486, %3785 ]
  %3788 = phi float [ %1048, %3300 ], [ %3487, %3785 ]
  %3789 = phi float [ %3270, %3300 ], [ %3488, %3785 ]
  %3790 = phi float [ %3268, %3300 ], [ %3489, %3785 ]
  %3791 = phi float [ 0.000000e+00, %3300 ], [ %3490, %3785 ]
  %3792 = phi float [ 0.000000e+00, %3300 ], [ %3491, %3785 ]
  %3793 = phi float [ %3262, %3300 ], [ %3492, %3785 ]
  %3794 = phi float [ %3263, %3300 ], [ %3493, %3785 ]
  %3795 = phi float [ %3264, %3300 ], [ %3494, %3785 ]
  %3796 = phi float [ %3296, %3300 ], [ %3495, %3785 ]
  %3797 = phi float [ %3297, %3300 ], [ %3496, %3785 ]
  %3798 = phi float [ %3298, %3300 ], [ %3497, %3785 ]
  %3799 = phi float [ %3267, %3300 ], [ %3498, %3785 ]
  %3800 = phi float [ %3266, %3300 ], [ %3499, %3785 ]
  %3801 = phi float [ 0.000000e+00, %3300 ], [ %3500, %3785 ]
  %3802 = phi float [ %3265, %3300 ], [ %3501, %3785 ]
  %3803 = phi float [ %3259, %3300 ], [ %3502, %3785 ]
  %3804 = phi float [ %3260, %3300 ], [ %3503, %3785 ]
  %3805 = phi float [ %3261, %3300 ], [ %3504, %3785 ]
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3796, float %3797, float %3798, float %3796, float %3797, float %3798)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = call float @dx.op.unary.f32(i32 25, float %3806)  ; Rsqrt(value)
  %3808 = fmul fast float %3807, %3796
  %3809 = fmul fast float %3807, %3797
  %3810 = fmul fast float %3807, %3798
  %3811 = fadd fast float %3801, %1048
  %3812 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3813 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3808, float %3809, float %3810)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = call float @dx.op.unary.f32(i32 25, float %3813)  ; Rsqrt(value)
  %3815 = fmul fast float %3814, %3808
  %3816 = fmul fast float %3814, %3809
  %3817 = fmul fast float %3814, %3810
  br label %3818

; <label>:3818                                    ; preds = %3786, %3256
  %3819 = phi float [ %3815, %3786 ], [ %3296, %3256 ]
  %3820 = phi float [ %3816, %3786 ], [ %3297, %3256 ]
  %3821 = phi float [ %3817, %3786 ], [ %3298, %3256 ]
  %3822 = phi float [ %3803, %3786 ], [ %3259, %3256 ]
  %3823 = phi float [ %3804, %3786 ], [ %3260, %3256 ]
  %3824 = phi float [ %3805, %3786 ], [ %3261, %3256 ]
  %3825 = phi float [ %3793, %3786 ], [ %3262, %3256 ]
  %3826 = phi float [ %3794, %3786 ], [ %3263, %3256 ]
  %3827 = phi float [ %3795, %3786 ], [ %3264, %3256 ]
  %3828 = phi float [ %3802, %3786 ], [ %3265, %3256 ]
  %3829 = phi float [ %3812, %3786 ], [ %1048, %3256 ]
  %3830 = phi float [ %3800, %3786 ], [ %3266, %3256 ]
  %3831 = phi float [ %3799, %3786 ], [ %3267, %3256 ]
  %3832 = phi float [ %3792, %3786 ], [ 0.000000e+00, %3256 ]
  %3833 = phi float [ %3791, %3786 ], [ 0.000000e+00, %3256 ]
  %3834 = phi float [ %3787, %3786 ], [ 0.000000e+00, %3256 ]
  %3835 = phi float [ %3789, %3786 ], [ %3270, %3256 ]
  %3836 = phi float [ %3788, %3786 ], [ %1048, %3256 ]
  %3837 = phi float [ %3790, %3786 ], [ %3268, %3256 ]
  %3838 = fadd fast float %3828, 0xBFB99999A0000000
  %3839 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3840 = fmul fast float %3839, 0x3FF1C71C80000000
  %3841 = call float @dx.op.binary.f32(i32 36, float %3828, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3842 = fsub fast float 1.000000e+00, %3840
  %3843 = call float @dx.op.unary.f32(i32 7, float %3842)  ; Saturate(value)
  %3844 = fmul fast float %3843, %3822
  %3845 = fmul fast float %3843, %3823
  %3846 = fmul fast float %3843, %3824
  %3847 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3849 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3850 = fmul fast float %3840, %3822
  %3851 = fmul fast float %3840, %3823
  %3852 = fmul fast float %3840, %3824
  %3853 = fadd fast float %3850, %3841
  %3854 = fadd fast float %3851, %3841
  %3855 = fadd fast float %3852, %3841
  %3856 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3857 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3858 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3859 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3861 = extractvalue %dx.types.CBufRet.i32 %3860, 3
  %3862 = and i32 %3861, 8
  %3863 = icmp ne i32 %3862, 0
  %3864 = call float @dx.op.binary.f32(i32 35, float %3847, float %3822)  ; FMax(a,b)
  %3865 = call float @dx.op.binary.f32(i32 35, float %3848, float %3822)  ; FMax(a,b)
  %3866 = call float @dx.op.binary.f32(i32 35, float %3849, float %3822)  ; FMax(a,b)
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = select i1 %253, float %3822, float %3847
  %3869 = select i1 %253, float %3867, float %3848
  %3870 = select i1 %253, float 1.000000e+00, float %3849
  %3871 = select i1 %3863, float %3864, float %3868
  %3872 = select i1 %3863, float %3865, float %3869
  %3873 = select i1 %3863, float %3866, float %3870
  %3874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.CBufRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.CBufRet.f32 %3874, 2
  %3878 = fadd fast float %3875, %194
  %3879 = fadd fast float %3876, %195
  %3880 = fadd fast float %3877, %196
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3884 = fsub fast float %3878, %3882
  %3885 = fsub fast float %3879, %3883
  %3886 = fmul fast float %3884, %3884
  %3887 = fmul fast float %3885, %3885
  %3888 = fadd fast float %3886, %3887
  %3889 = call float @dx.op.unary.f32(i32 24, float %3888)  ; Sqrt(value)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3891 = fcmp fast olt float %3889, %3890
  br i1 %3891, label %3892, label %3959

; <label>:3892                                    ; preds = %3818
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 0
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.CBufRet.f32 %3893, 1
  %3900 = extractvalue %dx.types.CBufRet.f32 %3895, 1
  %3901 = extractvalue %dx.types.CBufRet.f32 %3897, 1
  %3902 = extractvalue %dx.types.CBufRet.f32 %3893, 3
  %3903 = extractvalue %dx.types.CBufRet.f32 %3895, 3
  %3904 = extractvalue %dx.types.CBufRet.f32 %3897, 3
  %3905 = fadd fast float %3902, %3878
  %3906 = fadd fast float %3903, %3879
  %3907 = fadd fast float %3904, %3880
  %3908 = fmul fast float %3905, %3894
  %3909 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3896, float %3908)  ; FMad(a,b,c)
  %3910 = call float @dx.op.tertiary.f32(i32 46, float %3907, float %3898, float %3909)  ; FMad(a,b,c)
  %3911 = fmul fast float %3905, %3899
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3900, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3907, float %3901, float %3912)  ; FMad(a,b,c)
  %3914 = fsub fast float %3910, %3902
  %3915 = fsub fast float %3913, %3903
  %3916 = fsub fast float %3914, %3882
  %3917 = fadd fast float %3916, %3890
  %3918 = fsub fast float %3915, %3883
  %3919 = fadd fast float %3918, %3890
  %3920 = extractvalue %dx.types.CBufRet.f32 %3881, 3
  %3921 = fmul fast float %3917, %3920
  %3922 = fmul fast float %3919, %3920
  %3923 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3924 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3925 = fsub fast float 1.000000e+00, %3923
  %3926 = fsub fast float 1.000000e+00, %3924
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3925, float %3926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = fcmp fast ugt float %3928, 0.000000e+00
  br i1 %3929, label %3930, label %4233

; <label>:3930                                    ; preds = %3892
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 2
  %3933 = fmul fast float %3932, %3928
  %3934 = extractvalue %dx.types.CBufRet.f32 %3931, 3
  %3935 = fadd fast float %3934, %3933
  %3936 = extractvalue %dx.types.CBufRet.f32 %3897, 2
  %3937 = fadd fast float %3935, %3904
  %3938 = fmul fast float %3910, %3898
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3913, float %3901, float %3938)  ; FMad(a,b,c)
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3936, float %3939)  ; FMad(a,b,c)
  %3941 = fsub fast float %3940, %3904
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 2
  %3944 = fsub fast float %3941, %3943
  %3945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3925, float %3926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.ResRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.ResRet.f32 %3945, 2
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3925, float %3926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = fadd fast float %3950, %3946
  %3954 = fmul fast float %3953, 0x3F847AE140000000
  %3955 = fadd fast float %3951, %3947
  %3956 = fmul fast float %3955, 0x3F847AE140000000
  %3957 = fadd fast float %3952, %3948
  %3958 = fmul fast float %3957, 0x3F847AE140000000
  br label %4233

; <label>:3959                                    ; preds = %3818
  %3960 = and i32 %232, 1
  %3961 = icmp eq i32 %3960, 0
  br i1 %3961, label %4233, label %3962

; <label>:3962                                    ; preds = %3959
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.f32 %3965, 0
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3970 = extractvalue %dx.types.CBufRet.f32 %3965, 1
  %3971 = extractvalue %dx.types.CBufRet.f32 %3967, 1
  %3972 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3973 = extractvalue %dx.types.CBufRet.f32 %3965, 3
  %3974 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3975 = fadd fast float %3972, %3878
  %3976 = fadd fast float %3973, %3879
  %3977 = fadd fast float %3974, %3880
  %3978 = fmul fast float %3975, %3964
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3976, float %3966, float %3978)  ; FMad(a,b,c)
  %3980 = call float @dx.op.tertiary.f32(i32 46, float %3977, float %3968, float %3979)  ; FMad(a,b,c)
  %3981 = fmul fast float %3975, %3969
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3976, float %3970, float %3981)  ; FMad(a,b,c)
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3977, float %3971, float %3982)  ; FMad(a,b,c)
  %3984 = fsub fast float %3980, %3972
  %3985 = fsub fast float %3983, %3973
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 0
  %3988 = extractvalue %dx.types.CBufRet.f32 %3986, 1
  %3989 = extractvalue %dx.types.CBufRet.f32 %3986, 2
  %3990 = extractvalue %dx.types.CBufRet.f32 %3986, 3
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %3993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.i32 %3993, 0
  %3995 = extractvalue %dx.types.CBufRet.i32 %3993, 1
  %3996 = udiv i32 %3995, %3994
  %3997 = fsub fast float %3984, %3987
  %3998 = fsub fast float %3985, %3988
  %3999 = call float @dx.op.binary.f32(i32 35, float %3997, float 0.000000e+00)  ; FMax(a,b)
  %4000 = call float @dx.op.binary.f32(i32 35, float %3998, float 0.000000e+00)  ; FMax(a,b)
  %4001 = call float @dx.op.binary.f32(i32 36, float %3999, float %3989)  ; FMin(a,b)
  %4002 = call float @dx.op.binary.f32(i32 36, float %4000, float %3990)  ; FMin(a,b)
  %4003 = add i32 %3994, -1
  %4004 = add i32 %3996, -1
  %4005 = fmul fast float %4001, %3992
  %4006 = fmul fast float %4002, %3992
  %4007 = fptoui float %4005 to i32
  %4008 = fptoui float %4006 to i32
  %4009 = call i32 @dx.op.binary.i32(i32 40, i32 %4007, i32 %4003)  ; UMin(a,b)
  %4010 = call i32 @dx.op.binary.i32(i32 40, i32 %4008, i32 %4004)  ; UMin(a,b)
  %4011 = mul i32 %4010, %3994
  %4012 = add i32 %4011, %4009
  %4013 = shl i32 %4012, 2
  %4014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.i32 %4014, 0
  %4016 = icmp eq i32 %4015, -1
  br i1 %4016, label %4233, label %4017

; <label>:4017                                    ; preds = %3962
  %4018 = mul i32 %4015, 148
  %4019 = add i32 %4018, 4
  %4020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = add i32 %4018, 8
  %4023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = add i32 %4018, 36
  %4026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = add i32 %4018, 60
  %4029 = add i32 %4018, 92
  %4030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.i32 %4030, 0
  %4032 = add i32 %4018, 116
  %4033 = fsub fast float %3984, %4021
  %4034 = fsub fast float %3985, %4024
  %4035 = fmul fast float %3992, %4033
  %4036 = fmul fast float %3992, %4034
  %4037 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4038 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4039 = fsub fast float 1.000000e+00, %4038
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 2
  %4042 = call float @dx.op.unary.f32(i32 83, float %4037)  ; DerivCoarseX(value)
  %4043 = call float @dx.op.unary.f32(i32 83, float %4039)  ; DerivCoarseX(value)
  %4044 = call float @dx.op.unary.f32(i32 84, float %4037)  ; DerivCoarseY(value)
  %4045 = call float @dx.op.unary.f32(i32 84, float %4039)  ; DerivCoarseY(value)
  %4046 = fmul fast float %4042, %4041
  %4047 = fmul fast float %4043, %4041
  %4048 = fmul fast float %4044, %4041
  %4049 = fmul fast float %4045, %4041
  %4050 = call float @dx.op.dot2.f32(i32 54, float %4048, float %4049, float %4048, float %4049)  ; Dot2(ax,ay,bx,by)
  %4051 = call float @dx.op.dot2.f32(i32 54, float %4046, float %4047, float %4046, float %4047)  ; Dot2(ax,ay,bx,by)
  %4052 = call float @dx.op.binary.f32(i32 35, float %4051, float %4050)  ; FMax(a,b)
  %4053 = call float @dx.op.unary.f32(i32 23, float %4052)  ; Log(value)
  %4054 = fmul fast float %4053, 5.000000e-01
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4057 = fadd fast float %4056, %4054
  %4058 = call float @dx.op.binary.f32(i32 35, float %4057, float 0.000000e+00)  ; FMax(a,b)
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 3
  %4061 = fadd fast float %4060, %4058
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 3
  %4064 = fadd fast float %4061, %4063
  %4065 = add i32 %4031, 0
  %4066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4065, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4067 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4066, i32 0)  ; GetDimensions(handle,mipLevel)
  %4068 = extractvalue %dx.types.Dimensions %4067, 0
  %4069 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4068)  ; FirstbitLo(value)
  %4070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.i32 %4070, 1
  %4072 = sub nsw i32 %4071, %4069
  %4073 = sitofp i32 %4072 to float
  %4074 = fsub fast float %4064, %4073
  %4075 = call float @dx.op.binary.f32(i32 35, float %4074, float 0.000000e+00)  ; FMax(a,b)
  %4076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4066, %dx.types.Handle %46, float %4037, float %4039, float %4027, float undef, i32 0, i32 0, i32 undef, float %4075)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = fcmp ule float %4077, 0x3FE0101020000000
  %4079 = extractvalue %dx.types.CBufRet.i32 %4070, 0
  %4080 = and i32 %4079, 128
  %4081 = icmp ne i32 %4080, 0
  %4082 = and i1 %4078, %4081
  br i1 %4082, label %4233, label %4083

; <label>:4083                                    ; preds = %4017
  %4084 = add i32 %4018, 20
  %4085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4084, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = add i32 %4018, 24
  %4088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = add i32 %4018, 40
  %4091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4090, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.f32 %4091, 0
  %4093 = add i32 %4018, 96
  %4094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.i32 %4094, 0
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4098 = fmul fast float %4097, %4037
  %4099 = fmul fast float %4097, %4039
  %4100 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4101 = fadd fast float %4098, %4100
  %4102 = fadd fast float %4099, %4100
  %4103 = add i32 %4095, 0
  %4104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4103, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4105 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4104, i32 0)  ; GetDimensions(handle,mipLevel)
  %4106 = extractvalue %dx.types.Dimensions %4105, 0
  %4107 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4106)  ; FirstbitLo(value)
  %4108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.i32 %4108, 1
  %4110 = sub nsw i32 %4109, %4107
  %4111 = sitofp i32 %4110 to float
  %4112 = fsub fast float %4061, %4111
  %4113 = call float @dx.op.binary.f32(i32 35, float %4112, float 0.000000e+00)  ; FMax(a,b)
  %4114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4104, %dx.types.Handle %46, float %4101, float %4102, float %4092, float undef, i32 0, i32 0, i32 undef, float %4113)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = fmul fast float %4115, %4086
  %4117 = fadd fast float %4116, %4089
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.CBufRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.CBufRet.f32 %4118, 2
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 3
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 3
  %4126 = extractvalue %dx.types.CBufRet.f32 %4118, 3
  %4127 = fadd fast float %4123, %3984
  %4128 = fadd fast float %4125, %3985
  %4129 = fadd fast float %4117, %4126
  %4130 = fmul fast float %4127, %4119
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %4128, float %4120, float %4130)  ; FMad(a,b,c)
  %4132 = call float @dx.op.tertiary.f32(i32 46, float %4129, float %4121, float %4131)  ; FMad(a,b,c)
  %4133 = fsub fast float %4132, %4126
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 2
  %4136 = fsub fast float %4133, %4135
  %4137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.i32 %4137, 0
  %4139 = call i32 @dx.op.binary.i32(i32 40, i32 %4015, i32 %4138)  ; UMin(a,b)
  %4140 = mul i32 %4139, 36
  %4141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.i32 %4141, 0
  %4143 = add i32 %4140, 4
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 0
  %4146 = fmul fast float %4145, %4037
  %4147 = fmul fast float %4145, %4039
  %4148 = extractvalue %dx.types.CBufRet.f32 %4144, 1
  %4149 = fadd fast float %4146, %4148
  %4150 = fadd fast float %4147, %4148
  %4151 = icmp eq i32 %4142, 0
  br i1 %4151, label %4220, label %4152

; <label>:4152                                    ; preds = %4083
  br label %4153

; <label>:4153                                    ; preds = %4210, %4152
  %4154 = phi float [ %4211, %4210 ], [ 0.000000e+00, %4152 ]
  %4155 = phi float [ %4212, %4210 ], [ 0.000000e+00, %4152 ]
  %4156 = phi float [ %4213, %4210 ], [ 0.000000e+00, %4152 ]
  %4157 = phi float [ %4214, %4210 ], [ 0.000000e+00, %4152 ]
  %4158 = phi float [ %4215, %4210 ], [ 0.000000e+00, %4152 ]
  %4159 = phi float [ %4216, %4210 ], [ 0.000000e+00, %4152 ]
  %4160 = phi i32 [ %4217, %4210 ], [ 0, %4152 ]
  %4161 = shl i32 %4160, 2
  %4162 = add i32 %4028, %4161
  %4163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = add i32 %4032, %4161
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = add i32 %4167, 0
  %4169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4168, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4170 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4169, i32 0)  ; GetDimensions(handle,mipLevel)
  %4171 = extractvalue %dx.types.Dimensions %4170, 0
  %4172 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4171)  ; FirstbitLo(value)
  %4173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.i32 %4173, 1
  %4175 = sub nsw i32 %4174, %4172
  %4176 = sitofp i32 %4175 to float
  %4177 = fsub fast float %4061, %4176
  %4178 = call float @dx.op.binary.f32(i32 35, float %4177, float 0.000000e+00)  ; FMax(a,b)
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4169, %dx.types.Handle %46, float %4149, float %4150, float %4164, float undef, i32 0, i32 0, i32 undef, float %4178)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = fcmp fast ogt float %4180, 0.000000e+00
  br i1 %4181, label %4182, label %4210

; <label>:4182                                    ; preds = %4153
  %4183 = add i32 %4143, %4161
  %4184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.i32 %4184, 0
  %4186 = and i32 %4185, 32767
  %4187 = mul nuw nsw i32 %4186, 928
  %4188 = add nuw nsw i32 %4187, 48
  %4189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.ResRet.f32 %4189, 1
  %4192 = extractvalue %dx.types.ResRet.f32 %4189, 2
  %4193 = add nuw nsw i32 %4187, 60
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4198 = fmul fast float %4190, %4180
  %4199 = fmul fast float %4191, %4180
  %4200 = fmul fast float %4192, %4180
  %4201 = fadd fast float %4198, %4154
  %4202 = fadd fast float %4199, %4155
  %4203 = fadd fast float %4200, %4156
  %4204 = fmul fast float %4195, %4180
  %4205 = fmul fast float %4196, %4180
  %4206 = fmul fast float %4197, %4180
  %4207 = fadd fast float %4204, %4157
  %4208 = fadd fast float %4205, %4158
  %4209 = fadd fast float %4206, %4159
  br label %4210

; <label>:4210                                    ; preds = %4182, %4153
  %4211 = phi float [ %4201, %4182 ], [ %4154, %4153 ]
  %4212 = phi float [ %4202, %4182 ], [ %4155, %4153 ]
  %4213 = phi float [ %4203, %4182 ], [ %4156, %4153 ]
  %4214 = phi float [ %4207, %4182 ], [ %4157, %4153 ]
  %4215 = phi float [ %4208, %4182 ], [ %4158, %4153 ]
  %4216 = phi float [ %4209, %4182 ], [ %4159, %4153 ]
  %4217 = add nuw i32 %4160, 1
  %4218 = icmp eq i32 %4217, %4142
  br i1 %4218, label %4219, label %4153

; <label>:4219                                    ; preds = %4210
  br label %4220

; <label>:4220                                    ; preds = %4219, %4083
  %4221 = phi float [ 0.000000e+00, %4083 ], [ %4211, %4219 ]
  %4222 = phi float [ 0.000000e+00, %4083 ], [ %4212, %4219 ]
  %4223 = phi float [ 0.000000e+00, %4083 ], [ %4213, %4219 ]
  %4224 = phi float [ 0.000000e+00, %4083 ], [ %4214, %4219 ]
  %4225 = phi float [ 0.000000e+00, %4083 ], [ %4215, %4219 ]
  %4226 = phi float [ 0.000000e+00, %4083 ], [ %4216, %4219 ]
  %4227 = fadd fast float %4224, %4221
  %4228 = fmul fast float %4227, 0x3F847AE140000000
  %4229 = fadd fast float %4225, %4222
  %4230 = fmul fast float %4229, 0x3F847AE140000000
  %4231 = fadd fast float %4226, %4223
  %4232 = fmul fast float %4231, 0x3F847AE140000000
  br label %4233

; <label>:4233                                    ; preds = %4220, %4017, %3962, %3959, %3930, %3892
  %4234 = phi float [ %3944, %3930 ], [ -1.310720e+05, %3892 ], [ %4136, %4220 ], [ -1.310720e+05, %3962 ], [ -1.310720e+05, %4017 ], [ -1.310720e+05, %3959 ]
  %4235 = phi float [ %3954, %3930 ], [ 0.000000e+00, %3892 ], [ %4228, %4220 ], [ 0.000000e+00, %3962 ], [ 0.000000e+00, %4017 ], [ 0.000000e+00, %3959 ]
  %4236 = phi float [ %3956, %3930 ], [ 0.000000e+00, %3892 ], [ %4230, %4220 ], [ 0.000000e+00, %3962 ], [ 0.000000e+00, %4017 ], [ 0.000000e+00, %3959 ]
  %4237 = phi float [ %3958, %3930 ], [ 0.000000e+00, %3892 ], [ %4232, %4220 ], [ 0.000000e+00, %3962 ], [ 0.000000e+00, %4017 ], [ 0.000000e+00, %3959 ]
  %4238 = phi i1 [ true, %3930 ], [ false, %3892 ], [ true, %4220 ], [ false, %3962 ], [ false, %4017 ], [ false, %3959 ]
  %4239 = and i32 %232, 3
  %4240 = icmp eq i32 %4239, 1
  %4241 = select i1 %4240, float 1.000000e+00, float 0.000000e+00
  %4242 = fsub fast float %4234, %196
  %4243 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4244 = select i1 %4238, float %4243, float 1.000000e+00
  %4245 = fmul fast float %4244, %4241
  %4246 = icmp eq i32 %4239, 3
  %4247 = select i1 %4246, float 1.000000e+00, float %4245
  %4248 = call float @dx.op.binary.f32(i32 35, float %3834, float %4247)  ; FMax(a,b)
  %4249 = fcmp fast olt float %4247, 1.000000e+00
  %4250 = fcmp uge float %71, 0.000000e+00
  %4251 = and i1 %4250, %4249
  br i1 %4251, label %4252, label %4262

; <label>:4252                                    ; preds = %4233
  %4253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = extractvalue %dx.types.ResRet.f32 %4253, 1
  %4256 = extractvalue %dx.types.ResRet.f32 %4253, 2
  %4257 = fadd fast float %4254, %4248
  %4258 = fcmp ule float %70, 0.000000e+00
  %4259 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4260 = select i1 %4258, float %4259, float 1.000000e+00
  %4261 = fmul fast float %4260, %4256
  br label %4262

; <label>:4262                                    ; preds = %4252, %4233
  %4263 = phi float [ %4257, %4252 ], [ %4248, %4233 ]
  %4264 = phi float [ %4255, %4252 ], [ 0.000000e+00, %4233 ]
  %4265 = phi float [ %4261, %4252 ], [ 0.000000e+00, %4233 ]
  %4266 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4268 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4269 = fcmp fast une float %4267, 0.000000e+00
  %4270 = fcmp fast une float %4268, 0.000000e+00
  %4271 = or i1 %4269, %4270
  br i1 %4271, label %4272, label %4831

; <label>:4272                                    ; preds = %4262
  br i1 %4269, label %4273, label %4546

; <label>:4273                                    ; preds = %4272
  %4274 = call float @dx.op.unary.f32(i32 23, float %3831)  ; Log(value)
  %4275 = fmul fast float %4274, 4.000000e+00
  %4276 = call float @dx.op.unary.f32(i32 21, float %4275)  ; Exp(value)
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 0
  %4279 = fmul fast float %4278, %58
  %4280 = fmul fast float %4278, %59
  %4281 = fmul fast float %4278, %60
  %4282 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4283 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4284 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4285 = call float @dx.op.unary.f32(i32 23, float %4282)  ; Log(value)
  %4286 = call float @dx.op.unary.f32(i32 23, float %4283)  ; Log(value)
  %4287 = call float @dx.op.unary.f32(i32 23, float %4284)  ; Log(value)
  %4288 = fmul fast float %4285, 4.000000e+00
  %4289 = fmul fast float %4286, 4.000000e+00
  %4290 = fmul fast float %4287, 4.000000e+00
  %4291 = call float @dx.op.unary.f32(i32 21, float %4288)  ; Exp(value)
  %4292 = call float @dx.op.unary.f32(i32 21, float %4289)  ; Exp(value)
  %4293 = call float @dx.op.unary.f32(i32 21, float %4290)  ; Exp(value)
  %4294 = fadd fast float %4292, %4291
  %4295 = fadd fast float %4294, %4293
  %4296 = fdiv fast float 1.000000e+00, %4295
  %4297 = fmul fast float %4296, %4291
  %4298 = fcmp fast ogt float %67, 0.000000e+00
  %4299 = fcmp fast ogt float %68, 0.000000e+00
  %4300 = fcmp fast ogt float %69, 0.000000e+00
  %4301 = fcmp fast olt float %67, 0.000000e+00
  %4302 = fcmp fast olt float %68, 0.000000e+00
  %4303 = fcmp fast olt float %69, 0.000000e+00
  %4304 = zext i1 %4298 to i32
  %4305 = zext i1 %4299 to i32
  %4306 = zext i1 %4300 to i32
  %4307 = zext i1 %4301 to i32
  %4308 = zext i1 %4302 to i32
  %4309 = zext i1 %4303 to i32
  %4310 = sub nsw i32 %4304, %4307
  %4311 = sub nsw i32 %4305, %4308
  %4312 = sub nsw i32 %4306, %4309
  %4313 = call float @dx.op.unary.f32(i32 83, float %4279)  ; DerivCoarseX(value)
  %4314 = call float @dx.op.unary.f32(i32 83, float %4280)  ; DerivCoarseX(value)
  %4315 = call float @dx.op.unary.f32(i32 83, float %4281)  ; DerivCoarseX(value)
  %4316 = call float @dx.op.unary.f32(i32 84, float %4279)  ; DerivCoarseY(value)
  %4317 = call float @dx.op.unary.f32(i32 84, float %4280)  ; DerivCoarseY(value)
  %4318 = call float @dx.op.unary.f32(i32 84, float %4281)  ; DerivCoarseY(value)
  %4319 = fcmp fast ole float %264, %4297
  %4320 = fmul fast float %4296, %4294
  %4321 = fcmp fast ole float %264, %4320
  %4322 = select i1 %4321, float %4281, float %4279
  %4323 = select i1 %4321, float %4279, float %4280
  %4324 = select i1 %4319, float %4280, float %4322
  %4325 = select i1 %4319, float %4281, float %4323
  %4326 = select i1 %4321, float %4315, float %4313
  %4327 = select i1 %4321, float %4313, float %4314
  %4328 = select i1 %4319, float %4314, float %4326
  %4329 = select i1 %4319, float %4315, float %4327
  %4330 = select i1 %4321, float %4318, float %4316
  %4331 = select i1 %4321, float %4316, float %4317
  %4332 = select i1 %4319, float %4317, float %4330
  %4333 = select i1 %4319, float %4318, float %4331
  %4334 = call float @dx.op.unary.f32(i32 27, float %4324)  ; Round_ni(value)
  %4335 = call float @dx.op.unary.f32(i32 27, float %4325)  ; Round_ni(value)
  %4336 = fptosi float %4334 to i32
  %4337 = fptosi float %4335 to i32
  %4338 = xor i32 %4337, %4336
  %4339 = sitofp i32 %4338 to float
  %4340 = fptosi float %4339 to i32
  %4341 = sitofp i32 %4340 to float
  %4342 = fmul fast float %4341, 0x3FE3C6EF40000000
  %4343 = frem fast float %4334, 2.560000e+02
  %4344 = frem fast float %4335, 2.560000e+02
  %4345 = fptoui float %4343 to i32
  %4346 = fptoui float %4344 to i32
  %4347 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4345, i32 %4346, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.ResRet.f32 %4347, 1
  %4350 = extractvalue %dx.types.ResRet.f32 %4347, 2
  %4351 = fadd fast float %4348, %4342
  %4352 = fadd fast float %4349, %4342
  %4353 = fadd fast float %4350, %4342
  %4354 = call float @dx.op.unary.f32(i32 22, float %4351)  ; Frc(value)
  %4355 = call float @dx.op.unary.f32(i32 22, float %4352)  ; Frc(value)
  %4356 = call float @dx.op.unary.f32(i32 22, float %4353)  ; Frc(value)
  %4357 = fmul fast float %4356, 0x401921FB60000000
  %4358 = call float @dx.op.unary.f32(i32 13, float %4357)  ; Sin(value)
  %4359 = call float @dx.op.unary.f32(i32 12, float %4357)  ; Cos(value)
  %4360 = fsub fast float -0.000000e+00, %4359
  %4361 = fmul fast float %4359, %4324
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4358, float %4325, float %4361)  ; FMad(a,b,c)
  %4363 = fmul fast float %4358, %4324
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4325, float %4363)  ; FMad(a,b,c)
  %4365 = fadd fast float %4362, %4354
  %4366 = fadd fast float %4364, %4355
  %4367 = extractvalue %dx.types.CBufRet.f32 %4277, 3
  %4368 = bitcast float %4367 to i32
  %4369 = icmp eq i32 %4368, 0
  br i1 %4369, label %4408, label %4370

; <label>:4370                                    ; preds = %4273
  %4371 = add i32 %4368, 0
  %4372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4371, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4373 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4372, %dx.types.Handle %108, float %4365, float %4366, float undef, float undef, i32 0, i32 0, i32 undef, float %4328, float %4329, float undef, float %4332, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4377 = extractvalue %dx.types.CBufRet.f32 %4375, 2
  %4378 = fsub fast float 1.000000e+00, %4267
  %4379 = call float @dx.op.binary.f32(i32 35, float %4378, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4380 = bitcast float %4267 to i32
  %4381 = sitofp i32 %4380 to float
  %4382 = fadd fast float %4381, 0xC1CFBF8940000000
  %4383 = fmul fast float %4377, %4382
  %4384 = fadd fast float %4383, 0x41CFBF8940000000
  %4385 = fptosi float %4384 to i32
  %4386 = bitcast i32 %4385 to float
  %4387 = bitcast float %4379 to i32
  %4388 = sitofp i32 %4387 to float
  %4389 = fadd fast float %4388, 0xC1CFBF8940000000
  %4390 = fmul fast float %4389, %4377
  %4391 = fadd fast float %4390, 0x41CFBF8940000000
  %4392 = fptosi float %4391 to i32
  %4393 = bitcast i32 %4392 to float
  %4394 = fmul fast float %4386, %4376
  %4395 = fmul fast float %4393, %4376
  %4396 = fsub fast float %4379, %4394
  %4397 = fadd fast float %4395, %4379
  %4398 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4399 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4400 = fsub fast float %4374, %4398
  %4401 = fsub fast float %4399, %4398
  %4402 = bitcast float %4401 to i32
  %4403 = sub nsw i32 2129859010, %4402
  %4404 = bitcast i32 %4403 to float
  %4405 = fmul fast float %4404, %4400
  %4406 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4407 = fcmp fast olt float %4406, 0x3F70101020000000
  br i1 %4407, label %4546, label %4408

; <label>:4408                                    ; preds = %4370, %4273
  %4409 = phi float [ %4406, %4370 ], [ %4267, %4273 ]
  %4410 = fmul fast float %4409, %4276
  %4411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.i32 %4411, 1
  %4413 = extractvalue %dx.types.CBufRet.i32 %4411, 0
  %4414 = add i32 %4413, 0
  %4415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4416 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4415, %dx.types.Handle %107, float %4365, float %4366, float undef, float undef, i32 0, i32 0, i32 undef, float %4328, float %4329, float undef, float %4332, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = extractvalue %dx.types.ResRet.f32 %4416, 3
  %4421 = and i32 %4412, 255
  %4422 = uitofp i32 %4421 to float
  %4423 = lshr i32 %4412, 8
  %4424 = and i32 %4423, 255
  %4425 = uitofp i32 %4424 to float
  %4426 = fmul fast float %4420, %4422
  %4427 = fadd fast float %4426, %4425
  %4428 = fmul fast float %4427, 0x3F70101000000000
  %4429 = fadd fast float %4428, 0xBFB99999A0000000
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = fmul fast float %4430, 0x3FF1C71C80000000
  %4432 = call float @dx.op.binary.f32(i32 36, float %4428, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4433 = fsub fast float 1.000000e+00, %4431
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = fmul fast float %4434, %4417
  %4436 = fmul fast float %4434, %4418
  %4437 = fmul fast float %4434, %4419
  %4438 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4439 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4441 = fmul fast float %4431, %4417
  %4442 = fmul fast float %4431, %4418
  %4443 = fmul fast float %4431, %4419
  %4444 = fadd fast float %4441, %4432
  %4445 = fadd fast float %4442, %4432
  %4446 = fadd fast float %4443, %4432
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.i32 %4450, 3
  %4452 = extractvalue %dx.types.CBufRet.i32 %4450, 2
  %4453 = add i32 %4452, 0
  %4454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4455 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4454, %dx.types.Handle %107, float %4365, float %4366, float undef, float undef, i32 0, i32 0, i32 undef, float %4328, float %4329, float undef, float %4332, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.ResRet.f32 %4455, 1
  %4458 = extractvalue %dx.types.ResRet.f32 %4455, 2
  %4459 = extractvalue %dx.types.ResRet.f32 %4455, 3
  %4460 = and i32 %4451, 255
  %4461 = uitofp i32 %4460 to float
  %4462 = lshr i32 %4451, 8
  %4463 = and i32 %4462, 255
  %4464 = uitofp i32 %4463 to float
  %4465 = lshr i32 %4451, 16
  %4466 = and i32 %4465, 255
  %4467 = uitofp i32 %4466 to float
  %4468 = fmul fast float %4467, 0x3F70101000000000
  %4469 = fmul fast float %4456, %4461
  %4470 = fadd fast float %4469, %4464
  %4471 = fmul fast float %4470, 0x3F70101000000000
  %4472 = fadd fast float %4457, -5.000000e-01
  %4473 = fadd fast float %4459, -5.000000e-01
  %4474 = fmul fast float %4472, %4468
  %4475 = fmul fast float %4473, %4468
  %4476 = fadd fast float %4474, 5.000000e-01
  %4477 = fadd fast float %4475, 5.000000e-01
  %4478 = fmul fast float %4476, 2.000000e+00
  %4479 = fadd fast float %4478, -1.000000e+00
  %4480 = fmul fast float %4477, 2.000000e+00
  %4481 = fadd fast float %4480, -1.000000e+00
  %4482 = fadd fast float %4479, %4481
  %4483 = fmul fast float %4482, 5.000000e-01
  %4484 = fsub fast float %4479, %4481
  %4485 = fmul fast float %4484, 5.000000e-01
  %4486 = call float @dx.op.unary.f32(i32 6, float %4483)  ; FAbs(value)
  %4487 = fsub fast float 1.000000e+00, %4486
  %4488 = call float @dx.op.unary.f32(i32 6, float %4485)  ; FAbs(value)
  %4489 = fsub fast float %4487, %4488
  %4490 = call float @dx.op.dot3.f32(i32 55, float %4483, float %4485, float %4489, float %4483, float %4485, float %4489)  ; Dot3(ax,ay,az,bx,by,bz)
  %4491 = call float @dx.op.unary.f32(i32 25, float %4490)  ; Rsqrt(value)
  %4492 = fmul fast float %4483, %4491
  %4493 = fmul fast float %4485, %4491
  %4494 = select i1 %4321, i32 %4311, i32 %4312
  %4495 = select i1 %4319, i32 %4310, i32 %4494
  %4496 = sitofp i32 %4495 to float
  %4497 = fmul fast float %4489, %4496
  %4498 = fmul fast float %4497, %4491
  %4499 = select i1 %4321, float %4498, float %4493
  %4500 = select i1 %4321, float %4493, float %4498
  %4501 = select i1 %4319, float %4498, float %4492
  %4502 = select i1 %4319, float %4493, float %4499
  %4503 = select i1 %4319, float %4492, float %4500
  %4504 = fsub fast float %4438, %3871
  %4505 = fsub fast float %4439, %3872
  %4506 = fsub fast float %4440, %3873
  %4507 = fmul fast float %4504, %4410
  %4508 = fmul fast float %4505, %4410
  %4509 = fmul fast float %4506, %4410
  %4510 = fadd fast float %4507, %3871
  %4511 = fadd fast float %4508, %3872
  %4512 = fadd fast float %4509, %3873
  %4513 = fsub fast float %4447, %3856
  %4514 = fsub fast float %4448, %3857
  %4515 = fsub fast float %4449, %3858
  %4516 = fmul fast float %4513, %4410
  %4517 = fmul fast float %4514, %4410
  %4518 = fmul fast float %4515, %4410
  %4519 = fadd fast float %4516, %3856
  %4520 = fadd fast float %4517, %3857
  %4521 = fadd fast float %4518, %3858
  %4522 = fadd fast float %4501, %3819
  %4523 = fadd fast float %4502, %3820
  %4524 = fadd fast float %4503, %3821
  %4525 = call float @dx.op.dot3.f32(i32 55, float %4522, float %4523, float %4524, float %4522, float %4523, float %4524)  ; Dot3(ax,ay,az,bx,by,bz)
  %4526 = call float @dx.op.unary.f32(i32 25, float %4525)  ; Rsqrt(value)
  %4527 = fmul fast float %4522, %4526
  %4528 = fmul fast float %4523, %4526
  %4529 = fmul fast float %4524, %4526
  %4530 = fsub fast float %4527, %3819
  %4531 = fsub fast float %4528, %3820
  %4532 = fsub fast float %4529, %3821
  %4533 = fmul fast float %4530, %4410
  %4534 = fmul fast float %4531, %4410
  %4535 = fmul fast float %4532, %4410
  %4536 = fadd fast float %4533, %3819
  %4537 = fadd fast float %4534, %3820
  %4538 = fadd fast float %4535, %3821
  %4539 = call float @dx.op.binary.f32(i32 36, float %3831, float %4458)  ; FMin(a,b)
  %4540 = fsub fast float %4539, %3831
  %4541 = fmul fast float %4540, %4410
  %4542 = fadd fast float %4541, %3831
  %4543 = fsub fast float %4471, %3859
  %4544 = fmul fast float %4543, %4410
  %4545 = fadd fast float %4544, %3859
  br label %4546

; <label>:4546                                    ; preds = %4408, %4370, %4272
  %4547 = phi float [ %4519, %4408 ], [ %3856, %4370 ], [ %3856, %4272 ]
  %4548 = phi float [ %4520, %4408 ], [ %3857, %4370 ], [ %3857, %4272 ]
  %4549 = phi float [ %4521, %4408 ], [ %3858, %4370 ], [ %3858, %4272 ]
  %4550 = phi float [ %4536, %4408 ], [ %3819, %4370 ], [ %3819, %4272 ]
  %4551 = phi float [ %4537, %4408 ], [ %3820, %4370 ], [ %3820, %4272 ]
  %4552 = phi float [ %4538, %4408 ], [ %3821, %4370 ], [ %3821, %4272 ]
  %4553 = phi float [ %4510, %4408 ], [ %3871, %4370 ], [ %3871, %4272 ]
  %4554 = phi float [ %4511, %4408 ], [ %3872, %4370 ], [ %3872, %4272 ]
  %4555 = phi float [ %4512, %4408 ], [ %3873, %4370 ], [ %3873, %4272 ]
  %4556 = phi float [ %4545, %4408 ], [ %3859, %4370 ], [ %3859, %4272 ]
  %4557 = phi float [ %4542, %4408 ], [ %3831, %4370 ], [ %3831, %4272 ]
  br i1 %4270, label %4558, label %4831

; <label>:4558                                    ; preds = %4546
  %4559 = call float @dx.op.unary.f32(i32 23, float %4557)  ; Log(value)
  %4560 = fmul fast float %4559, 4.000000e+00
  %4561 = call float @dx.op.unary.f32(i32 21, float %4560)  ; Exp(value)
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 0
  %4564 = fmul fast float %4563, %58
  %4565 = fmul fast float %4563, %59
  %4566 = fmul fast float %4563, %60
  %4567 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4568 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4569 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4570 = call float @dx.op.unary.f32(i32 23, float %4567)  ; Log(value)
  %4571 = call float @dx.op.unary.f32(i32 23, float %4568)  ; Log(value)
  %4572 = call float @dx.op.unary.f32(i32 23, float %4569)  ; Log(value)
  %4573 = fmul fast float %4570, 4.000000e+00
  %4574 = fmul fast float %4571, 4.000000e+00
  %4575 = fmul fast float %4572, 4.000000e+00
  %4576 = call float @dx.op.unary.f32(i32 21, float %4573)  ; Exp(value)
  %4577 = call float @dx.op.unary.f32(i32 21, float %4574)  ; Exp(value)
  %4578 = call float @dx.op.unary.f32(i32 21, float %4575)  ; Exp(value)
  %4579 = fadd fast float %4577, %4576
  %4580 = fadd fast float %4579, %4578
  %4581 = fdiv fast float 1.000000e+00, %4580
  %4582 = fmul fast float %4581, %4576
  %4583 = fcmp fast ogt float %67, 0.000000e+00
  %4584 = fcmp fast ogt float %68, 0.000000e+00
  %4585 = fcmp fast ogt float %69, 0.000000e+00
  %4586 = fcmp fast olt float %67, 0.000000e+00
  %4587 = fcmp fast olt float %68, 0.000000e+00
  %4588 = fcmp fast olt float %69, 0.000000e+00
  %4589 = zext i1 %4583 to i32
  %4590 = zext i1 %4584 to i32
  %4591 = zext i1 %4585 to i32
  %4592 = zext i1 %4586 to i32
  %4593 = zext i1 %4587 to i32
  %4594 = zext i1 %4588 to i32
  %4595 = sub nsw i32 %4589, %4592
  %4596 = sub nsw i32 %4590, %4593
  %4597 = sub nsw i32 %4591, %4594
  %4598 = call float @dx.op.unary.f32(i32 83, float %4564)  ; DerivCoarseX(value)
  %4599 = call float @dx.op.unary.f32(i32 83, float %4565)  ; DerivCoarseX(value)
  %4600 = call float @dx.op.unary.f32(i32 83, float %4566)  ; DerivCoarseX(value)
  %4601 = call float @dx.op.unary.f32(i32 84, float %4564)  ; DerivCoarseY(value)
  %4602 = call float @dx.op.unary.f32(i32 84, float %4565)  ; DerivCoarseY(value)
  %4603 = call float @dx.op.unary.f32(i32 84, float %4566)  ; DerivCoarseY(value)
  %4604 = fcmp fast ole float %264, %4582
  %4605 = fmul fast float %4581, %4579
  %4606 = fcmp fast ole float %264, %4605
  %4607 = select i1 %4606, float %4566, float %4564
  %4608 = select i1 %4606, float %4564, float %4565
  %4609 = select i1 %4604, float %4565, float %4607
  %4610 = select i1 %4604, float %4566, float %4608
  %4611 = select i1 %4606, float %4600, float %4598
  %4612 = select i1 %4606, float %4598, float %4599
  %4613 = select i1 %4604, float %4599, float %4611
  %4614 = select i1 %4604, float %4600, float %4612
  %4615 = select i1 %4606, float %4603, float %4601
  %4616 = select i1 %4606, float %4601, float %4602
  %4617 = select i1 %4604, float %4602, float %4615
  %4618 = select i1 %4604, float %4603, float %4616
  %4619 = call float @dx.op.unary.f32(i32 27, float %4609)  ; Round_ni(value)
  %4620 = call float @dx.op.unary.f32(i32 27, float %4610)  ; Round_ni(value)
  %4621 = fptosi float %4619 to i32
  %4622 = fptosi float %4620 to i32
  %4623 = xor i32 %4622, %4621
  %4624 = sitofp i32 %4623 to float
  %4625 = fptosi float %4624 to i32
  %4626 = sitofp i32 %4625 to float
  %4627 = fmul fast float %4626, 0x3FE3C6EF40000000
  %4628 = frem fast float %4619, 2.560000e+02
  %4629 = frem fast float %4620, 2.560000e+02
  %4630 = fptoui float %4628 to i32
  %4631 = fptoui float %4629 to i32
  %4632 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4630, i32 %4631, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.ResRet.f32 %4632, 2
  %4636 = fadd fast float %4633, %4627
  %4637 = fadd fast float %4634, %4627
  %4638 = fadd fast float %4635, %4627
  %4639 = call float @dx.op.unary.f32(i32 22, float %4636)  ; Frc(value)
  %4640 = call float @dx.op.unary.f32(i32 22, float %4637)  ; Frc(value)
  %4641 = call float @dx.op.unary.f32(i32 22, float %4638)  ; Frc(value)
  %4642 = fmul fast float %4641, 0x401921FB60000000
  %4643 = call float @dx.op.unary.f32(i32 13, float %4642)  ; Sin(value)
  %4644 = call float @dx.op.unary.f32(i32 12, float %4642)  ; Cos(value)
  %4645 = fsub fast float -0.000000e+00, %4644
  %4646 = fmul fast float %4644, %4609
  %4647 = call float @dx.op.tertiary.f32(i32 46, float %4643, float %4610, float %4646)  ; FMad(a,b,c)
  %4648 = fmul fast float %4643, %4609
  %4649 = call float @dx.op.tertiary.f32(i32 46, float %4645, float %4610, float %4648)  ; FMad(a,b,c)
  %4650 = fadd fast float %4647, %4639
  %4651 = fadd fast float %4649, %4640
  %4652 = extractvalue %dx.types.CBufRet.f32 %4562, 3
  %4653 = bitcast float %4652 to i32
  %4654 = icmp eq i32 %4653, 0
  br i1 %4654, label %4693, label %4655

; <label>:4655                                    ; preds = %4558
  %4656 = add i32 %4653, 0
  %4657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4658 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4657, %dx.types.Handle %108, float %4650, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float %4613, float %4614, float undef, float %4617, float %4618, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 1
  %4662 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4663 = fsub fast float 1.000000e+00, %4268
  %4664 = call float @dx.op.binary.f32(i32 35, float %4663, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4665 = bitcast float %4268 to i32
  %4666 = sitofp i32 %4665 to float
  %4667 = fadd fast float %4666, 0xC1CFBF8940000000
  %4668 = fmul fast float %4662, %4667
  %4669 = fadd fast float %4668, 0x41CFBF8940000000
  %4670 = fptosi float %4669 to i32
  %4671 = bitcast i32 %4670 to float
  %4672 = bitcast float %4664 to i32
  %4673 = sitofp i32 %4672 to float
  %4674 = fadd fast float %4673, 0xC1CFBF8940000000
  %4675 = fmul fast float %4674, %4662
  %4676 = fadd fast float %4675, 0x41CFBF8940000000
  %4677 = fptosi float %4676 to i32
  %4678 = bitcast i32 %4677 to float
  %4679 = fmul fast float %4671, %4661
  %4680 = fmul fast float %4678, %4661
  %4681 = fsub fast float %4664, %4679
  %4682 = fadd fast float %4680, %4664
  %4683 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4684 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4685 = fsub fast float %4659, %4683
  %4686 = fsub fast float %4684, %4683
  %4687 = bitcast float %4686 to i32
  %4688 = sub nsw i32 2129859010, %4687
  %4689 = bitcast i32 %4688 to float
  %4690 = fmul fast float %4689, %4685
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = fcmp fast olt float %4691, 0x3F70101020000000
  br i1 %4692, label %4831, label %4693

; <label>:4693                                    ; preds = %4655, %4558
  %4694 = phi float [ %4691, %4655 ], [ %4268, %4558 ]
  %4695 = fmul fast float %4694, %4561
  %4696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.i32 %4696, 1
  %4698 = extractvalue %dx.types.CBufRet.i32 %4696, 0
  %4699 = add i32 %4698, 0
  %4700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4700, %dx.types.Handle %107, float %4650, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float %4613, float %4614, float undef, float %4617, float %4618, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.ResRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.ResRet.f32 %4701, 2
  %4705 = extractvalue %dx.types.ResRet.f32 %4701, 3
  %4706 = and i32 %4697, 255
  %4707 = uitofp i32 %4706 to float
  %4708 = lshr i32 %4697, 8
  %4709 = and i32 %4708, 255
  %4710 = uitofp i32 %4709 to float
  %4711 = fmul fast float %4705, %4707
  %4712 = fadd fast float %4711, %4710
  %4713 = fmul fast float %4712, 0x3F70101000000000
  %4714 = fadd fast float %4713, 0xBFB99999A0000000
  %4715 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4716 = fmul fast float %4715, 0x3FF1C71C80000000
  %4717 = call float @dx.op.binary.f32(i32 36, float %4713, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4718 = fsub fast float 1.000000e+00, %4716
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fmul fast float %4719, %4702
  %4721 = fmul fast float %4719, %4703
  %4722 = fmul fast float %4719, %4704
  %4723 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4726 = fmul fast float %4716, %4702
  %4727 = fmul fast float %4716, %4703
  %4728 = fmul fast float %4716, %4704
  %4729 = fadd fast float %4726, %4717
  %4730 = fadd fast float %4727, %4717
  %4731 = fadd fast float %4728, %4717
  %4732 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4733 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.i32 %4735, 3
  %4737 = extractvalue %dx.types.CBufRet.i32 %4735, 2
  %4738 = add i32 %4737, 0
  %4739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4740 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4739, %dx.types.Handle %107, float %4650, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float %4613, float %4614, float undef, float %4617, float %4618, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4741 = extractvalue %dx.types.ResRet.f32 %4740, 0
  %4742 = extractvalue %dx.types.ResRet.f32 %4740, 1
  %4743 = extractvalue %dx.types.ResRet.f32 %4740, 2
  %4744 = extractvalue %dx.types.ResRet.f32 %4740, 3
  %4745 = and i32 %4736, 255
  %4746 = uitofp i32 %4745 to float
  %4747 = lshr i32 %4736, 8
  %4748 = and i32 %4747, 255
  %4749 = uitofp i32 %4748 to float
  %4750 = lshr i32 %4736, 16
  %4751 = and i32 %4750, 255
  %4752 = uitofp i32 %4751 to float
  %4753 = fmul fast float %4752, 0x3F70101000000000
  %4754 = fmul fast float %4741, %4746
  %4755 = fadd fast float %4754, %4749
  %4756 = fmul fast float %4755, 0x3F70101000000000
  %4757 = fadd fast float %4742, -5.000000e-01
  %4758 = fadd fast float %4744, -5.000000e-01
  %4759 = fmul fast float %4757, %4753
  %4760 = fmul fast float %4758, %4753
  %4761 = fadd fast float %4759, 5.000000e-01
  %4762 = fadd fast float %4760, 5.000000e-01
  %4763 = fmul fast float %4761, 2.000000e+00
  %4764 = fadd fast float %4763, -1.000000e+00
  %4765 = fmul fast float %4762, 2.000000e+00
  %4766 = fadd fast float %4765, -1.000000e+00
  %4767 = fadd fast float %4764, %4766
  %4768 = fmul fast float %4767, 5.000000e-01
  %4769 = fsub fast float %4764, %4766
  %4770 = fmul fast float %4769, 5.000000e-01
  %4771 = call float @dx.op.unary.f32(i32 6, float %4768)  ; FAbs(value)
  %4772 = fsub fast float 1.000000e+00, %4771
  %4773 = call float @dx.op.unary.f32(i32 6, float %4770)  ; FAbs(value)
  %4774 = fsub fast float %4772, %4773
  %4775 = call float @dx.op.dot3.f32(i32 55, float %4768, float %4770, float %4774, float %4768, float %4770, float %4774)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = call float @dx.op.unary.f32(i32 25, float %4775)  ; Rsqrt(value)
  %4777 = fmul fast float %4768, %4776
  %4778 = fmul fast float %4770, %4776
  %4779 = select i1 %4606, i32 %4596, i32 %4597
  %4780 = select i1 %4604, i32 %4595, i32 %4779
  %4781 = sitofp i32 %4780 to float
  %4782 = fmul fast float %4774, %4781
  %4783 = fmul fast float %4782, %4776
  %4784 = select i1 %4606, float %4783, float %4778
  %4785 = select i1 %4606, float %4778, float %4783
  %4786 = select i1 %4604, float %4783, float %4777
  %4787 = select i1 %4604, float %4778, float %4784
  %4788 = select i1 %4604, float %4777, float %4785
  %4789 = fsub fast float %4723, %4553
  %4790 = fsub fast float %4724, %4554
  %4791 = fsub fast float %4725, %4555
  %4792 = fmul fast float %4789, %4695
  %4793 = fmul fast float %4790, %4695
  %4794 = fmul fast float %4791, %4695
  %4795 = fadd fast float %4792, %4553
  %4796 = fadd fast float %4793, %4554
  %4797 = fadd fast float %4794, %4555
  %4798 = fsub fast float %4732, %4547
  %4799 = fsub fast float %4733, %4548
  %4800 = fsub fast float %4734, %4549
  %4801 = fmul fast float %4798, %4695
  %4802 = fmul fast float %4799, %4695
  %4803 = fmul fast float %4800, %4695
  %4804 = fadd fast float %4801, %4547
  %4805 = fadd fast float %4802, %4548
  %4806 = fadd fast float %4803, %4549
  %4807 = fadd fast float %4786, %4550
  %4808 = fadd fast float %4787, %4551
  %4809 = fadd fast float %4788, %4552
  %4810 = call float @dx.op.dot3.f32(i32 55, float %4807, float %4808, float %4809, float %4807, float %4808, float %4809)  ; Dot3(ax,ay,az,bx,by,bz)
  %4811 = call float @dx.op.unary.f32(i32 25, float %4810)  ; Rsqrt(value)
  %4812 = fmul fast float %4807, %4811
  %4813 = fmul fast float %4808, %4811
  %4814 = fmul fast float %4809, %4811
  %4815 = fsub fast float %4812, %4550
  %4816 = fsub fast float %4813, %4551
  %4817 = fsub fast float %4814, %4552
  %4818 = fmul fast float %4815, %4695
  %4819 = fmul fast float %4816, %4695
  %4820 = fmul fast float %4817, %4695
  %4821 = fadd fast float %4818, %4550
  %4822 = fadd fast float %4819, %4551
  %4823 = fadd fast float %4820, %4552
  %4824 = call float @dx.op.binary.f32(i32 36, float %4557, float %4743)  ; FMin(a,b)
  %4825 = fsub fast float %4824, %4557
  %4826 = fmul fast float %4825, %4695
  %4827 = fadd fast float %4826, %4557
  %4828 = fsub fast float %4756, %4556
  %4829 = fmul fast float %4828, %4695
  %4830 = fadd fast float %4829, %4556
  br label %4831

; <label>:4831                                    ; preds = %4693, %4655, %4546, %4262
  %4832 = phi float [ %4804, %4693 ], [ %4547, %4655 ], [ %4547, %4546 ], [ %3856, %4262 ]
  %4833 = phi float [ %4805, %4693 ], [ %4548, %4655 ], [ %4548, %4546 ], [ %3857, %4262 ]
  %4834 = phi float [ %4806, %4693 ], [ %4549, %4655 ], [ %4549, %4546 ], [ %3858, %4262 ]
  %4835 = phi float [ %4821, %4693 ], [ %4550, %4655 ], [ %4550, %4546 ], [ %3819, %4262 ]
  %4836 = phi float [ %4822, %4693 ], [ %4551, %4655 ], [ %4551, %4546 ], [ %3820, %4262 ]
  %4837 = phi float [ %4823, %4693 ], [ %4552, %4655 ], [ %4552, %4546 ], [ %3821, %4262 ]
  %4838 = phi float [ %4795, %4693 ], [ %4553, %4655 ], [ %4553, %4546 ], [ %3871, %4262 ]
  %4839 = phi float [ %4796, %4693 ], [ %4554, %4655 ], [ %4554, %4546 ], [ %3872, %4262 ]
  %4840 = phi float [ %4797, %4693 ], [ %4555, %4655 ], [ %4555, %4546 ], [ %3873, %4262 ]
  %4841 = phi float [ %4830, %4693 ], [ %4556, %4655 ], [ %4556, %4546 ], [ %3859, %4262 ]
  %4842 = phi float [ %4827, %4693 ], [ %4557, %4655 ], [ %4557, %4546 ], [ %3831, %4262 ]
  %4843 = fcmp fast une float %4266, 0.000000e+00
  %4844 = call float @dx.op.dot3.f32(i32 55, float %194, float %195, float %196, float %194, float %195, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = call float @dx.op.unary.f32(i32 25, float %4844)  ; Rsqrt(value)
  br i1 %4843, label %4853, label %4846

; <label>:4846                                    ; preds = %4831
  %4847 = fmul fast float %4845, %194
  %4848 = fmul fast float %4845, %195
  %4849 = fmul fast float %4845, %196
  %4850 = fsub fast float -0.000000e+00, %4847
  %4851 = fsub fast float -0.000000e+00, %4848
  %4852 = fsub fast float -0.000000e+00, %4849
  br label %5020

; <label>:4853                                    ; preds = %4831
  %4854 = fmul fast float %194, %4845
  %4855 = fsub fast float -0.000000e+00, %4854
  %4856 = fmul fast float %195, %4845
  %4857 = fsub fast float -0.000000e+00, %4856
  %4858 = fmul fast float %196, %4845
  %4859 = fsub fast float -0.000000e+00, %4858
  %4860 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4857, float %4859, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = fmul fast float %4266, 2.500000e+00
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fmul fast float %4266, 0x4013FFFFE0000000
  %4864 = fadd fast float %4863, 0xBFFFFFFFE0000000
  %4865 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4866 = fmul fast float %4266, 0x4004000020000000
  %4867 = fadd fast float %4866, 0xBFF8000040000000
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = fmul fast float %3838, 1.000000e+01
  %4870 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4871 = fmul fast float %4870, 2.000000e+00
  %4872 = fsub fast float 3.000000e+00, %4871
  %4873 = fmul fast float %4870, %4870
  %4874 = fmul fast float %4873, %4872
  %4875 = fsub fast float 1.000000e+00, %4874
  %4876 = fsub fast float 0x3FE3333340000000, %4841
  %4877 = fmul fast float %4876, 0x400AAAAAA0000000
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %4875, %4878
  %4880 = fmul fast float %4838, 0x3FEA2B8620000000
  %4881 = fmul fast float %4839, 0x3FEA2B8620000000
  %4882 = fmul fast float %4840, 0x3FEA2B8620000000
  %4883 = fadd fast float %4880, 0x3FC81DFBA0000000
  %4884 = fmul fast float %4883, %4838
  %4885 = fadd fast float %4884, 0x3F910E6020000000
  %4886 = fadd fast float %4881, 0x3FC81DFBA0000000
  %4887 = fmul fast float %4886, %4839
  %4888 = fadd fast float %4887, 0x3F910E6020000000
  %4889 = fadd fast float %4882, 0x3FC81DFBA0000000
  %4890 = fmul fast float %4889, %4840
  %4891 = fadd fast float %4890, 0x3F910E6020000000
  %4892 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4895 = fsub fast float %4892, %4838
  %4896 = fsub fast float %4893, %4839
  %4897 = fsub fast float %4894, %4840
  %4898 = fmul fast float %4895, %4862
  %4899 = fmul fast float %4898, %4879
  %4900 = fmul fast float %4896, %4862
  %4901 = fmul fast float %4900, %4879
  %4902 = fmul fast float %4897, %4862
  %4903 = fmul fast float %4902, %4879
  %4904 = fadd fast float %4899, %4838
  %4905 = fadd fast float %4901, %4839
  %4906 = fadd fast float %4903, %4840
  %4907 = fmul fast float %4842, %4842
  %4908 = fmul fast float %4907, %4907
  %4909 = fadd fast float %4865, 1.000000e+00
  %4910 = fsub fast float %4909, %4879
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4914 = fsub fast float 1.000000e+00, %4908
  %4915 = call float @dx.op.binary.f32(i32 36, float %4911, float %4914)  ; FMin(a,b)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4917 = call float @dx.op.binary.f32(i32 35, float %4915, float %4916)  ; FMax(a,b)
  %4918 = fadd fast float %4913, 0xBFE4CCCCC0000000
  %4919 = fmul fast float %4918, 0x4006DB6DA0000000
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = fmul fast float %4920, 2.000000e+00
  %4922 = fsub fast float 3.000000e+00, %4921
  %4923 = bitcast float %4832 to i32
  %4924 = ashr i32 %4923, 1
  %4925 = add nsw i32 %4924, 532487669
  %4926 = bitcast i32 %4925 to float
  %4927 = fsub fast float 1.000000e+00, %4926
  %4928 = bitcast float %4927 to i32
  %4929 = sub nsw i32 2129859010, %4928
  %4930 = bitcast i32 %4929 to float
  %4931 = fmul fast float %4930, 2.000000e+00
  %4932 = bitcast float %4833 to i32
  %4933 = ashr i32 %4932, 1
  %4934 = add nsw i32 %4933, 532487669
  %4935 = bitcast i32 %4934 to float
  %4936 = fsub fast float 1.000000e+00, %4935
  %4937 = bitcast float %4936 to i32
  %4938 = sub nsw i32 2129859010, %4937
  %4939 = bitcast i32 %4938 to float
  %4940 = fmul fast float %4939, 2.000000e+00
  %4941 = bitcast float %4834 to i32
  %4942 = ashr i32 %4941, 1
  %4943 = add nsw i32 %4942, 532487669
  %4944 = bitcast i32 %4943 to float
  %4945 = fsub fast float 1.000000e+00, %4944
  %4946 = bitcast float %4945 to i32
  %4947 = sub nsw i32 2129859010, %4946
  %4948 = bitcast i32 %4947 to float
  %4949 = fmul fast float %4948, 2.000000e+00
  %4950 = fsub fast float 0x4002A9FBE0000000, %4931
  %4951 = fadd fast float %4931, 0x3FD54FDF00000000
  %4952 = bitcast float %4951 to i32
  %4953 = sub nsw i32 2129859010, %4952
  %4954 = bitcast i32 %4953 to float
  %4955 = fmul fast float %4954, %4950
  %4956 = fmul fast float %4955, %4955
  %4957 = fsub fast float 0x4002A9FBE0000000, %4940
  %4958 = fadd fast float %4940, 0x3FD54FDF00000000
  %4959 = bitcast float %4958 to i32
  %4960 = sub nsw i32 2129859010, %4959
  %4961 = bitcast i32 %4960 to float
  %4962 = fmul fast float %4961, %4957
  %4963 = fmul fast float %4962, %4962
  %4964 = fsub fast float 0x4002A9FBE0000000, %4949
  %4965 = fadd fast float %4949, 0x3FD54FDF00000000
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4968, %4964
  %4970 = fmul fast float %4969, %4969
  %4971 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4956)  ; FMax(a,b)
  %4972 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4963)  ; FMax(a,b)
  %4973 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4970)  ; FMax(a,b)
  %4974 = fsub fast float 1.000000e+00, %4860
  %4975 = fadd fast float %4974, %4875
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fsub fast float 1.000000e+00, %4247
  %4978 = fmul fast float %4917, %4977
  %4979 = fmul fast float %4920, %4920
  %4980 = fmul fast float %4979, %4978
  %4981 = fmul fast float %4980, %4922
  %4982 = fmul fast float %4977, 0xBFE99999A0000000
  %4983 = fmul fast float %4982, %4862
  %4984 = fmul fast float %4983, %4879
  %4985 = fadd fast float %4984, 1.000000e+00
  %4986 = fadd fast float %4841, -1.000000e+00
  %4987 = fmul fast float %4985, %4986
  %4988 = fadd fast float %4987, 1.000000e+00
  %4989 = fsub fast float %4971, %4832
  %4990 = fsub fast float %4972, %4833
  %4991 = fsub fast float %4973, %4834
  %4992 = fmul fast float %4981, %4989
  %4993 = fmul fast float %4981, %4990
  %4994 = fmul fast float %4981, %4991
  %4995 = fadd fast float %4992, %4832
  %4996 = fadd fast float %4993, %4833
  %4997 = fadd fast float %4994, %4834
  %4998 = fsub fast float %120, %4835
  %4999 = fsub fast float %122, %4836
  %5000 = fsub fast float %124, %4837
  %5001 = fmul fast float %4981, %4998
  %5002 = fmul fast float %4981, %4999
  %5003 = fmul fast float %4981, %5000
  %5004 = fadd fast float %5001, %4835
  %5005 = fadd fast float %5002, %4836
  %5006 = fadd fast float %5003, %4837
  %5007 = fmul fast float %4981, %4976
  %5008 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %5009 = fsub fast float 1.000000e+00, %5008
  %5010 = fmul fast float %5007, %5009
  %5011 = fadd fast float %5010, %5008
  %5012 = fsub fast float 1.000000e+00, %4842
  %5013 = fmul fast float %4981, %5012
  %5014 = fadd fast float %5013, %4842
  %5015 = call float @dx.op.dot3.f32(i32 55, float %5004, float %5005, float %5006, float %5004, float %5005, float %5006)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = call float @dx.op.unary.f32(i32 25, float %5015)  ; Rsqrt(value)
  %5017 = fmul fast float %5004, %5016
  %5018 = fmul fast float %5005, %5016
  %5019 = fmul fast float %5006, %5016
  br label %5020

; <label>:5020                                    ; preds = %4853, %4846
  %5021 = phi float [ %4852, %4846 ], [ %4859, %4853 ]
  %5022 = phi float [ %4851, %4846 ], [ %4857, %4853 ]
  %5023 = phi float [ %4850, %4846 ], [ %4855, %4853 ]
  %5024 = phi float [ %4849, %4846 ], [ %4858, %4853 ]
  %5025 = phi float [ %4848, %4846 ], [ %4856, %4853 ]
  %5026 = phi float [ %4847, %4846 ], [ %4854, %4853 ]
  %5027 = phi float [ %4832, %4846 ], [ %4995, %4853 ]
  %5028 = phi float [ %4833, %4846 ], [ %4996, %4853 ]
  %5029 = phi float [ %4834, %4846 ], [ %4997, %4853 ]
  %5030 = phi float [ %4835, %4846 ], [ %5017, %4853 ]
  %5031 = phi float [ %4836, %4846 ], [ %5018, %4853 ]
  %5032 = phi float [ %4837, %4846 ], [ %5019, %4853 ]
  %5033 = phi float [ %4838, %4846 ], [ %4904, %4853 ]
  %5034 = phi float [ %4839, %4846 ], [ %4905, %4853 ]
  %5035 = phi float [ %4840, %4846 ], [ %4906, %4853 ]
  %5036 = phi float [ %4841, %4846 ], [ %5011, %4853 ]
  %5037 = phi float [ %4842, %4846 ], [ %5014, %4853 ]
  %5038 = fsub fast float -0.000000e+00, %196
  %5039 = select i1 %253, float 0.000000e+00, float %5029
  %5040 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %5023, float %5022, float %5021)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = call float @dx.op.dot3.f32(i32 55, float %5026, float %5025, float %5024, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = fmul fast float %5042, 2.000000e+00
  %5044 = fmul fast float %5043, %5030
  %5045 = fmul fast float %5043, %5031
  %5046 = fmul fast float %5043, %5032
  %5047 = fsub fast float %5026, %5044
  %5048 = fsub fast float %5025, %5045
  %5049 = fsub fast float %5024, %5046
  %5050 = call float @dx.op.binary.f32(i32 36, float %5037, float 1.000000e+00)  ; FMin(a,b)
  %5051 = fsub fast float 1.000000e+00, %5037
  %5052 = bitcast float %5051 to i32
  %5053 = sub nsw i32 2129859010, %5052
  %5054 = bitcast i32 %5053 to float
  %5055 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5056 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = fcmp fast oeq float %5056, 0.000000e+00
  %5058 = fcmp fast oeq float %5055, 0.000000e+00
  %5059 = or i1 %5058, %5057
  br i1 %5059, label %5089, label %5060

; <label>:5060                                    ; preds = %5020
  %5061 = fsub fast float -0.000000e+00, %85
  %5062 = fsub fast float -0.000000e+00, %83
  %5063 = call float @dx.op.unary.f32(i32 24, float %5056)  ; Sqrt(value)
  %5064 = fdiv fast float %5063, %5055
  %5065 = fcmp fast ogt float %5064, 0x3FFB6F8900000000
  %5066 = select i1 %5065, float 0x3FFB6F8900000000, float %5064
  %5067 = fmul fast float %5066, 0x3FE8A23460000000
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = call float @dx.op.binary.f32(i32 35, float %5066, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5070 = fmul fast float %5068, %5055
  %5071 = fmul fast float %5069, 0x3FF279A740000000
  %5072 = fadd fast float %5071, -1.000000e+00
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %84, float %5061, float %5062, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.unary.f32(i32 25, float %5073)  ; Rsqrt(value)
  %5075 = fmul fast float %5074, %5061
  %5076 = fmul fast float %5074, %5062
  %5077 = fmul fast float %5074, %84
  %5078 = fmul fast float %5072, %5072
  %5079 = fsub fast float 1.000000e+00, %5078
  %5080 = fmul fast float %5069, 0x40005F8BE0000000
  %5081 = fsub fast float 0x400C5BF8A0000000, %5080
  %5082 = fdiv fast float %5070, %5081
  %5083 = fmul fast float %5082, 0x3FEE31C3C0000000
  %5084 = fmul fast float %5083, %5079
  %5085 = fmul fast float %5069, 0x3FDACB7480000000
  %5086 = fadd fast float %5085, 0xBFD7347680000000
  %5087 = fmul fast float %5086, %5082
  %5088 = fmul fast float %5087, %5079
  br label %5089

; <label>:5089                                    ; preds = %5060, %5020
  %5090 = phi float [ %5075, %5060 ], [ 0.000000e+00, %5020 ]
  %5091 = phi float [ %5076, %5060 ], [ 0.000000e+00, %5020 ]
  %5092 = phi float [ %5077, %5060 ], [ 0.000000e+00, %5020 ]
  %5093 = phi float [ %5084, %5060 ], [ 0.000000e+00, %5020 ]
  %5094 = phi float [ %5088, %5060 ], [ 0.000000e+00, %5020 ]
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = fmul fast float %5095, %5095
  %5097 = fmul fast float %5096, 0x3FEE471020000000
  %5098 = fadd fast float %5097, 0xBFD42F6020000000
  %5099 = fmul fast float %5055, 0x3FD20DD760000000
  %5100 = fmul fast float %5098, %5094
  %5101 = fmul fast float %5093, 0x3FDF454380000000
  %5102 = fmul fast float %5101, %5095
  %5103 = fadd fast float %5102, %5099
  %5104 = fadd fast float %5103, %5100
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = fmul fast float %5105, 0x3FDF454380000000
  %5107 = fmul fast float %5105, %5105
  %5108 = fmul fast float %5107, 0x3FEE471020000000
  %5109 = fadd fast float %5108, 0xBFD42F6020000000
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5093, float %5094, float 0x3FD20DD760000000, float %5106, float %5109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5112 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fcmp fast oeq float %5112, 0.000000e+00
  %5114 = fcmp fast oeq float %5111, 0.000000e+00
  %5115 = or i1 %5114, %5113
  br i1 %5115, label %5145, label %5116

; <label>:5116                                    ; preds = %5089
  %5117 = fsub fast float -0.000000e+00, %81
  %5118 = fsub fast float -0.000000e+00, %79
  %5119 = call float @dx.op.unary.f32(i32 24, float %5112)  ; Sqrt(value)
  %5120 = fdiv fast float %5119, %5111
  %5121 = fcmp fast ogt float %5120, 0x3FFB6F8900000000
  %5122 = select i1 %5121, float 0x3FFB6F8900000000, float %5120
  %5123 = fmul fast float %5122, 0x3FE8A23460000000
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = call float @dx.op.binary.f32(i32 35, float %5122, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5126 = fmul fast float %5124, %5111
  %5127 = fmul fast float %5125, 0x3FF279A740000000
  %5128 = fadd fast float %5127, -1.000000e+00
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %80, float %5117, float %5118, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.unary.f32(i32 25, float %5129)  ; Rsqrt(value)
  %5131 = fmul fast float %5130, %5117
  %5132 = fmul fast float %5130, %5118
  %5133 = fmul fast float %5130, %80
  %5134 = fmul fast float %5128, %5128
  %5135 = fsub fast float 1.000000e+00, %5134
  %5136 = fmul fast float %5125, 0x40005F8BE0000000
  %5137 = fsub fast float 0x400C5BF8A0000000, %5136
  %5138 = fdiv fast float %5126, %5137
  %5139 = fmul fast float %5138, 0x3FEE31C3C0000000
  %5140 = fmul fast float %5139, %5135
  %5141 = fmul fast float %5125, 0x3FDACB7480000000
  %5142 = fadd fast float %5141, 0xBFD7347680000000
  %5143 = fmul fast float %5142, %5138
  %5144 = fmul fast float %5143, %5135
  br label %5145

; <label>:5145                                    ; preds = %5116, %5089
  %5146 = phi float [ %5131, %5116 ], [ 0.000000e+00, %5089 ]
  %5147 = phi float [ %5132, %5116 ], [ 0.000000e+00, %5089 ]
  %5148 = phi float [ %5133, %5116 ], [ 0.000000e+00, %5089 ]
  %5149 = phi float [ %5140, %5116 ], [ 0.000000e+00, %5089 ]
  %5150 = phi float [ %5144, %5116 ], [ 0.000000e+00, %5089 ]
  %5151 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = fmul fast float %5151, %5151
  %5153 = fmul fast float %5152, 0x3FEE471020000000
  %5154 = fadd fast float %5153, 0xBFD42F6020000000
  %5155 = fmul fast float %5111, 0x3FD20DD760000000
  %5156 = fmul fast float %5154, %5150
  %5157 = fmul fast float %5149, 0x3FDF454380000000
  %5158 = fmul fast float %5157, %5151
  %5159 = fadd fast float %5158, %5155
  %5160 = fadd fast float %5159, %5156
  %5161 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = fmul fast float %5161, 0x3FDF454380000000
  %5163 = fmul fast float %5161, %5161
  %5164 = fmul fast float %5163, 0x3FEE471020000000
  %5165 = fadd fast float %5164, 0xBFD42F6020000000
  %5166 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5149, float %5150, float 0x3FD20DD760000000, float %5162, float %5165)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5168 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = fcmp fast oeq float %5168, 0.000000e+00
  %5170 = fcmp fast oeq float %5167, 0.000000e+00
  %5171 = or i1 %5170, %5169
  br i1 %5171, label %5201, label %5172

; <label>:5172                                    ; preds = %5145
  %5173 = fsub fast float -0.000000e+00, %77
  %5174 = fsub fast float -0.000000e+00, %75
  %5175 = call float @dx.op.unary.f32(i32 24, float %5168)  ; Sqrt(value)
  %5176 = fdiv fast float %5175, %5167
  %5177 = fcmp fast ogt float %5176, 0x3FFB6F8900000000
  %5178 = select i1 %5177, float 0x3FFB6F8900000000, float %5176
  %5179 = fmul fast float %5178, 0x3FE8A23460000000
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = call float @dx.op.binary.f32(i32 35, float %5178, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5182 = fmul fast float %5180, %5167
  %5183 = fmul fast float %5181, 0x3FF279A740000000
  %5184 = fadd fast float %5183, -1.000000e+00
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %76, float %5173, float %5174, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = call float @dx.op.unary.f32(i32 25, float %5185)  ; Rsqrt(value)
  %5187 = fmul fast float %5186, %5173
  %5188 = fmul fast float %5186, %5174
  %5189 = fmul fast float %5186, %76
  %5190 = fmul fast float %5184, %5184
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = fmul fast float %5181, 0x40005F8BE0000000
  %5193 = fsub fast float 0x400C5BF8A0000000, %5192
  %5194 = fdiv fast float %5182, %5193
  %5195 = fmul fast float %5194, 0x3FEE31C3C0000000
  %5196 = fmul fast float %5195, %5191
  %5197 = fmul fast float %5181, 0x3FDACB7480000000
  %5198 = fadd fast float %5197, 0xBFD7347680000000
  %5199 = fmul fast float %5198, %5194
  %5200 = fmul fast float %5199, %5191
  br label %5201

; <label>:5201                                    ; preds = %5172, %5145
  %5202 = phi float [ %5187, %5172 ], [ 0.000000e+00, %5145 ]
  %5203 = phi float [ %5188, %5172 ], [ 0.000000e+00, %5145 ]
  %5204 = phi float [ %5189, %5172 ], [ 0.000000e+00, %5145 ]
  %5205 = phi float [ %5196, %5172 ], [ 0.000000e+00, %5145 ]
  %5206 = phi float [ %5200, %5172 ], [ 0.000000e+00, %5145 ]
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5202, float %5203, float %5204, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = fmul fast float %5207, %5207
  %5209 = fmul fast float %5208, 0x3FEE471020000000
  %5210 = fadd fast float %5209, 0xBFD42F6020000000
  %5211 = fmul fast float %5167, 0x3FD20DD760000000
  %5212 = fmul fast float %5210, %5206
  %5213 = fmul fast float %5205, 0x3FDF454380000000
  %5214 = fmul fast float %5213, %5207
  %5215 = fadd fast float %5214, %5211
  %5216 = fadd fast float %5215, %5212
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5202, float %5203, float %5204, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = fmul fast float %5217, 0x3FDF454380000000
  %5219 = fmul fast float %5217, %5217
  %5220 = fmul fast float %5219, 0x3FEE471020000000
  %5221 = fadd fast float %5220, 0xBFD42F6020000000
  %5222 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5205, float %5206, float 0x3FD20DD760000000, float %5218, float %5221)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = call float @dx.op.binary.f32(i32 35, float %5104, float 0.000000e+00)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float %5160, float 0.000000e+00)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float %5216, float 0.000000e+00)  ; FMax(a,b)
  %5226 = call float @dx.op.binary.f32(i32 35, float %5110, float 0.000000e+00)  ; FMax(a,b)
  %5227 = call float @dx.op.binary.f32(i32 35, float %5166, float 0.000000e+00)  ; FMax(a,b)
  %5228 = call float @dx.op.binary.f32(i32 35, float %5222, float 0.000000e+00)  ; FMax(a,b)
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = call float @dx.op.binary.f32(i32 36, float %5033, float %5230)  ; FMin(a,b)
  %5232 = fsub fast float 1.000000e+00, %5050
  %5233 = fmul fast float %5231, %5232
  %5234 = fsub fast float 1.000000e+00, %5233
  %5235 = bitcast float %5234 to i32
  %5236 = sub nsw i32 2129859010, %5235
  %5237 = bitcast i32 %5236 to float
  %5238 = call float @dx.op.binary.f32(i32 36, float %5034, float %5230)  ; FMin(a,b)
  %5239 = fmul fast float %5238, %5232
  %5240 = fsub fast float 1.000000e+00, %5239
  %5241 = bitcast float %5240 to i32
  %5242 = sub nsw i32 2129859010, %5241
  %5243 = bitcast i32 %5242 to float
  %5244 = call float @dx.op.binary.f32(i32 36, float %5035, float %5230)  ; FMin(a,b)
  %5245 = fmul fast float %5244, %5232
  %5246 = fsub fast float 1.000000e+00, %5245
  %5247 = bitcast float %5246 to i32
  %5248 = sub nsw i32 2129859010, %5247
  %5249 = bitcast i32 %5248 to float
  %5250 = fmul fast float %5223, %5050
  %5251 = fmul fast float %5250, %5237
  %5252 = fmul fast float %5224, %5050
  %5253 = fmul fast float %5252, %5243
  %5254 = fmul fast float %5225, %5050
  %5255 = fmul fast float %5254, %5249
  %5256 = call float @dx.op.binary.f32(i32 36, float %5027, float %5230)  ; FMin(a,b)
  %5257 = fmul fast float %5256, %5232
  %5258 = fsub fast float 1.000000e+00, %5257
  %5259 = bitcast float %5258 to i32
  %5260 = sub nsw i32 2129859010, %5259
  %5261 = bitcast i32 %5260 to float
  %5262 = call float @dx.op.binary.f32(i32 36, float %5028, float %5230)  ; FMin(a,b)
  %5263 = fmul fast float %5262, %5232
  %5264 = fsub fast float 1.000000e+00, %5263
  %5265 = bitcast float %5264 to i32
  %5266 = sub nsw i32 2129859010, %5265
  %5267 = bitcast i32 %5266 to float
  %5268 = call float @dx.op.binary.f32(i32 36, float %5039, float %5230)  ; FMin(a,b)
  %5269 = fmul fast float %5268, %5232
  %5270 = fsub fast float 1.000000e+00, %5269
  %5271 = bitcast float %5270 to i32
  %5272 = sub nsw i32 2129859010, %5271
  %5273 = bitcast i32 %5272 to float
  %5274 = fmul fast float %5226, %5050
  %5275 = fmul fast float %5274, %5261
  %5276 = fmul fast float %5227, %5050
  %5277 = fmul fast float %5276, %5267
  %5278 = fmul fast float %5228, %5050
  %5279 = fmul fast float %5278, %5273
  %5280 = call float @dx.op.dot3.f32(i32 55, float %5251, float %5253, float %5255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = select i1 %253, float 0.000000e+00, float %5251
  %5282 = select i1 %253, float %5280, float %5253
  %5283 = select i1 %253, float 0.000000e+00, float %5255
  %5284 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5277, float %5279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5285 = select i1 %253, float 0.000000e+00, float %5275
  %5286 = select i1 %253, float %5284, float %5277
  %5287 = select i1 %253, float 0.000000e+00, float %5279
  %5288 = fmul fast float %5041, 9.843750e-01
  %5289 = fmul fast float %5036, 9.843750e-01
  %5290 = fadd fast float %5288, 7.812500e-03
  %5291 = fadd fast float %5289, 7.812500e-03
  %5292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5290, float %5291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 3
  %5295 = fmul fast float %5293, %5027
  %5296 = fmul fast float %5293, %5028
  %5297 = fmul fast float %5293, %5039
  %5298 = fadd fast float %5295, %5294
  %5299 = fadd fast float %5296, %5294
  %5300 = fadd fast float %5297, %5294
  %5301 = fcmp fast ogt float %3832, 0.000000e+00
  br i1 %5301, label %5302, label %5328

; <label>:5302                                    ; preds = %5201
  %5303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3832, float %5041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5307 = fadd fast float %5304, -5.000000e-01
  %5308 = fadd fast float %5305, -5.000000e-01
  %5309 = fadd fast float %5306, -5.000000e-01
  %5310 = fsub fast float 1.000000e+00, %5027
  %5311 = fsub fast float 1.000000e+00, %5028
  %5312 = fsub fast float 1.000000e+00, %5039
  %5313 = fmul fast float %5027, 4.000000e+00
  %5314 = fmul fast float %5313, %5310
  %5315 = fmul fast float %5314, %5307
  %5316 = fmul fast float %5028, 4.000000e+00
  %5317 = fmul fast float %5316, %5311
  %5318 = fmul fast float %5317, %5308
  %5319 = fmul fast float %5039, 4.000000e+00
  %5320 = fmul fast float %5319, %5312
  %5321 = fmul fast float %5320, %5309
  %5322 = fadd fast float %5315, %5298
  %5323 = fadd fast float %5318, %5299
  %5324 = fadd fast float %5321, %5300
  %5325 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  br label %5328

; <label>:5328                                    ; preds = %5302, %5201
  %5329 = phi float [ %5325, %5302 ], [ %5298, %5201 ]
  %5330 = phi float [ %5326, %5302 ], [ %5299, %5201 ]
  %5331 = phi float [ %5327, %5302 ], [ %5300, %5201 ]
  %5332 = call float @dx.op.binary.f32(i32 35, float %5330, float %5331)  ; FMax(a,b)
  %5333 = call float @dx.op.binary.f32(i32 35, float %5329, float %5332)  ; FMax(a,b)
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = fmul fast float %5334, %5281
  %5336 = fmul fast float %5334, %5282
  %5337 = fmul fast float %5334, %5283
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5034, float %5035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = fcmp fast ogt float %5338, 0x3E7FF19E20000000
  %5340 = fdiv fast float 1.000000e+00, %5338
  %5341 = select i1 %5339, float %5340, float 0.000000e+00
  %5342 = fmul fast float %5341, %5033
  %5343 = fmul fast float %5341, %5034
  %5344 = fmul fast float %5341, %5035
  %5345 = fadd fast float %5342, -1.000000e+00
  %5346 = fadd fast float %5343, -1.000000e+00
  %5347 = fadd fast float %5344, -1.000000e+00
  %5348 = fmul fast float %5345, 5.000000e-01
  %5349 = fmul fast float %5346, 5.000000e-01
  %5350 = fmul fast float %5347, 5.000000e-01
  %5351 = fadd fast float %5348, 1.000000e+00
  %5352 = fadd fast float %5349, 1.000000e+00
  %5353 = fadd fast float %5350, 1.000000e+00
  %5354 = fmul fast float %5329, %5285
  %5355 = fmul fast float %5330, %5286
  %5356 = fmul fast float %5331, %5287
  %5357 = fsub fast float 1.000000e+00, %5041
  %5358 = bitcast float %5357 to i32
  %5359 = sitofp i32 %5358 to float
  %5360 = fmul fast float %5359, 5.000000e+00
  %5361 = fadd fast float %5360, 0xC1EFBF8940000000
  %5362 = fptosi float %5361 to i32
  %5363 = bitcast i32 %5362 to float
  %5364 = fmul fast float %5363, %3833
  %5365 = fmul fast float %5281, %5364
  %5366 = fmul fast float %5365, %5334
  %5367 = fmul fast float %5366, %5351
  %5368 = fmul fast float %5282, %5364
  %5369 = fmul fast float %5368, %5334
  %5370 = fmul fast float %5369, %5352
  %5371 = fmul fast float %5283, %5364
  %5372 = fmul fast float %5371, %5334
  %5373 = fmul fast float %5372, %5353
  %5374 = fmul fast float %5335, %3829
  %5375 = fmul fast float %5336, %3829
  %5376 = fmul fast float %5337, %3829
  %5377 = fadd fast float %5354, %3825
  %5378 = fadd fast float %5377, %5367
  %5379 = fmul fast float %5378, %3829
  %5380 = fadd fast float %5355, %3826
  %5381 = fadd fast float %5380, %5370
  %5382 = fmul fast float %5381, %3829
  %5383 = fadd fast float %5356, %3827
  %5384 = fadd fast float %5383, %5373
  %5385 = fmul fast float %5384, %3829
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 3
  %5388 = fcmp fast oeq float %5387, 0.000000e+00
  br i1 %5388, label %6473, label %5389

; <label>:5389                                    ; preds = %5328
  %5390 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5386, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5386, 2
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.CBufRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.CBufRet.f32 %5393, 2
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.CBufRet.f32 %5397, 1
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5394, float %5395, float %5396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = select i1 %253, float %5398, float %5394
  %5402 = select i1 %253, float %5400, float %5395
  %5403 = select i1 %253, float %5399, float %5396
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 2
  %5406 = fmul fast float %5405, %120
  %5407 = fmul fast float %5405, %122
  %5408 = fmul fast float %5405, %124
  %5409 = fadd fast float %5406, %194
  %5410 = fadd fast float %5407, %195
  %5411 = fadd fast float %5408, %196
  %5412 = fcmp fast olt float %5387, 0.000000e+00
  br i1 %5412, label %6052, label %5413

; <label>:5413                                    ; preds = %5389
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.CBufRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.CBufRet.f32 %5414, 2
  %5418 = extractvalue %dx.types.CBufRet.f32 %5414, 3
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5423 = extractvalue %dx.types.CBufRet.f32 %5419, 3
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.CBufRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.CBufRet.f32 %5424, 2
  %5428 = extractvalue %dx.types.CBufRet.f32 %5424, 3
  %5429 = fmul fast float %5415, %5409
  %5430 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5416, float %5429)  ; FMad(a,b,c)
  %5431 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5417, float %5430)  ; FMad(a,b,c)
  %5432 = fadd fast float %5431, %5418
  %5433 = fmul fast float %5420, %5409
  %5434 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5421, float %5433)  ; FMad(a,b,c)
  %5435 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5422, float %5434)  ; FMad(a,b,c)
  %5436 = fadd fast float %5435, %5423
  %5437 = fmul fast float %5425, %5409
  %5438 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5426, float %5437)  ; FMad(a,b,c)
  %5439 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5427, float %5438)  ; FMad(a,b,c)
  %5440 = fadd fast float %5439, %5428
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = fcmp fast une float %5442, 0.000000e+00
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5447 = extractvalue %dx.types.CBufRet.f32 %5444, 3
  %5448 = fmul fast float %5447, %5432
  %5449 = fmul fast float %5447, %5436
  %5450 = fadd fast float %5448, %5445
  %5451 = fadd fast float %5449, %5446
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5456 = fmul fast float %5455, %5432
  %5457 = fmul fast float %5455, %5436
  %5458 = fadd fast float %5456, %5453
  %5459 = fadd fast float %5457, %5454
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 1
  %5462 = fsub fast float %5461, %5440
  %5463 = extractvalue %dx.types.CBufRet.f32 %5460, 2
  %5464 = fmul fast float %5462, %5463
  %5465 = fsub fast float 1.000000e+00, %5464
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  br i1 %5443, label %5527, label %5467

; <label>:5467                                    ; preds = %5413
  %5468 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5471 = fadd fast float %5470, %5468
  %5472 = fcmp fast ogt float %5471, 0.000000e+00
  br i1 %5472, label %5473, label %5497

; <label>:5473                                    ; preds = %5467
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.CBufRet.f32 %5474, 1
  %5477 = fsub fast float %5458, %5475
  %5478 = fsub fast float %5459, %5476
  %5479 = fcmp fast olt float %5477, 0.000000e+00
  %5480 = fcmp fast olt float %5478, 0.000000e+00
  %5481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.CBufRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.CBufRet.f32 %5481, 2
  %5485 = extractvalue %dx.types.CBufRet.f32 %5481, 3
  %5486 = select i1 %5479, float %5482, float %5484
  %5487 = select i1 %5480, float %5483, float %5485
  %5488 = fmul fast float %5486, %5477
  %5489 = fmul fast float %5487, %5478
  %5490 = call float @dx.op.unary.f32(i32 6, float %5488)  ; FAbs(value)
  %5491 = call float @dx.op.unary.f32(i32 6, float %5489)  ; FAbs(value)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5493 = call float @dx.op.binary.f32(i32 35, float %5490, float %5491)  ; FMax(a,b)
  %5494 = fsub fast float %5492, %5493
  %5495 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5496 = fmul fast float %5495, %5466
  br label %5497

; <label>:5497                                    ; preds = %5473, %5467
  %5498 = phi float [ %5496, %5473 ], [ 0.000000e+00, %5467 ]
  %5499 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5500 = extractvalue %dx.types.CBufRet.f32 %5469, 1
  %5501 = fadd fast float %5500, %5499
  %5502 = fcmp fast ogt float %5501, 0.000000e+00
  br i1 %5502, label %5503, label %5527

; <label>:5503                                    ; preds = %5497
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5507 = fsub fast float %5450, %5505
  %5508 = fsub fast float %5451, %5506
  %5509 = fcmp fast olt float %5507, 0.000000e+00
  %5510 = fcmp fast olt float %5508, 0.000000e+00
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5514 = extractvalue %dx.types.CBufRet.f32 %5511, 2
  %5515 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5516 = select i1 %5509, float %5512, float %5514
  %5517 = select i1 %5510, float %5513, float %5515
  %5518 = fmul fast float %5516, %5507
  %5519 = fmul fast float %5517, %5508
  %5520 = call float @dx.op.unary.f32(i32 6, float %5518)  ; FAbs(value)
  %5521 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5522 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5523 = call float @dx.op.binary.f32(i32 35, float %5520, float %5521)  ; FMax(a,b)
  %5524 = fsub fast float %5522, %5523
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = fmul fast float %5525, %5466
  br label %5527

; <label>:5527                                    ; preds = %5503, %5497, %5413
  %5528 = phi float [ 0.000000e+00, %5413 ], [ %5526, %5503 ], [ 0.000000e+00, %5497 ]
  %5529 = phi float [ 0.000000e+00, %5413 ], [ %5498, %5503 ], [ %5498, %5497 ]
  %5530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5531 = extractvalue %dx.types.CBufRet.f32 %5530, 1
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5536 = fsub fast float %5432, %5534
  %5537 = fsub fast float %5436, %5535
  %5538 = fcmp fast olt float %5536, 0.000000e+00
  %5539 = fcmp fast olt float %5537, 0.000000e+00
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 0
  %5542 = extractvalue %dx.types.CBufRet.f32 %5540, 1
  %5543 = extractvalue %dx.types.CBufRet.f32 %5540, 2
  %5544 = extractvalue %dx.types.CBufRet.f32 %5540, 3
  %5545 = select i1 %5538, float %5541, float %5543
  %5546 = select i1 %5539, float %5542, float %5544
  %5547 = fmul fast float %5545, %5536
  %5548 = fmul fast float %5546, %5537
  %5549 = call float @dx.op.unary.f32(i32 6, float %5547)  ; FAbs(value)
  %5550 = call float @dx.op.unary.f32(i32 6, float %5548)  ; FAbs(value)
  %5551 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5552 = call float @dx.op.binary.f32(i32 35, float %5549, float %5550)  ; FMax(a,b)
  %5553 = fsub fast float %5551, %5552
  %5554 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5555 = call float @dx.op.binary.f32(i32 36, float %5554, float %5532)  ; FMin(a,b)
  %5556 = fmul fast float %5555, %5466
  %5557 = fsub fast float %5528, %5556
  %5558 = fsub fast float %5529, %5528
  %5559 = fsub fast float %5558, %5556
  %5560 = call float @dx.op.binary.f32(i32 35, float %5528, float %5529)  ; FMax(a,b)
  %5561 = call float @dx.op.binary.f32(i32 35, float %5556, float %5560)  ; FMax(a,b)
  %5562 = fcmp fast olt float %5561, 1.000000e+00
  br i1 %5562, label %5563, label %5961, !dx.controlflow.hints !98

; <label>:5563                                    ; preds = %5527
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5566 = fcmp fast une float %5565, 0.000000e+00
  br i1 %5566, label %5567, label %5961, !dx.controlflow.hints !99

; <label>:5567                                    ; preds = %5563
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.CBufRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.CBufRet.f32 %5568, 2
  %5572 = extractvalue %dx.types.CBufRet.f32 %5568, 3
  %5573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5573, 0
  %5575 = extractvalue %dx.types.CBufRet.f32 %5573, 1
  %5576 = extractvalue %dx.types.CBufRet.f32 %5573, 2
  %5577 = extractvalue %dx.types.CBufRet.f32 %5573, 3
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.CBufRet.f32 %5578, 2
  %5582 = extractvalue %dx.types.CBufRet.f32 %5578, 3
  %5583 = fmul fast float %5569, %5409
  %5584 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5570, float %5583)  ; FMad(a,b,c)
  %5585 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5571, float %5584)  ; FMad(a,b,c)
  %5586 = fadd fast float %5585, %5572
  %5587 = fmul fast float %5574, %5409
  %5588 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5575, float %5587)  ; FMad(a,b,c)
  %5589 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5576, float %5588)  ; FMad(a,b,c)
  %5590 = fadd fast float %5589, %5577
  %5591 = fmul fast float %5579, %5409
  %5592 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5580, float %5591)  ; FMad(a,b,c)
  %5593 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5581, float %5592)  ; FMad(a,b,c)
  %5594 = fadd fast float %5593, %5582
  %5595 = fcmp fast oge float %5586, 1.000000e+00
  %5596 = fcmp fast oge float %5590, 1.000000e+00
  %5597 = or i1 %5595, %5596
  %5598 = fcmp fast olt float %5586, 0.000000e+00
  %5599 = fcmp fast olt float %5590, 0.000000e+00
  %5600 = or i1 %5598, %5599
  %5601 = or i1 %5597, %5600
  br i1 %5601, label %5961, label %5602, !dx.controlflow.hints !100

; <label>:5602                                    ; preds = %5567
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.CBufRet.f32 %5603, 1
  %5606 = extractvalue %dx.types.CBufRet.f32 %5603, 2
  %5607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.i32 %5607, 2
  %5609 = uitofp i32 %5608 to float
  %5610 = extractvalue %dx.types.CBufRet.i32 %5607, 3
  %5611 = uitofp i32 %5610 to float
  %5612 = extractvalue %dx.types.CBufRet.f32 %5603, 3
  %5613 = fmul fast float %5612, 2.000000e+00
  %5614 = fsub fast float %5586, %5604
  %5615 = fsub fast float %5590, %5605
  %5616 = fmul fast float %5613, %5614
  %5617 = fmul fast float %5613, %5615
  %5618 = fdiv fast float 1.000000e+00, %5392
  %5619 = fmul fast float %5617, %5618
  %5620 = call float @dx.op.unary.f32(i32 6, float %5619)  ; FAbs(value)
  %5621 = fmul fast float %5606, %5411
  %5622 = fmul fast float %5621, %5613
  %5623 = call float @dx.op.unary.f32(i32 6, float %5622)  ; FAbs(value)
  %5624 = call float @dx.op.unary.f32(i32 6, float %5616)  ; FAbs(value)
  %5625 = call float @dx.op.binary.f32(i32 35, float %5623, float %5620)  ; FMax(a,b)
  %5626 = call float @dx.op.binary.f32(i32 35, float %5624, float %5625)  ; FMax(a,b)
  %5627 = fmul fast float %5626, 2.000000e+00
  %5628 = call float @dx.op.unary.f32(i32 23, float %5627)  ; Log(value)
  %5629 = call float @dx.op.binary.f32(i32 35, float %5628, float %5609)  ; FMax(a,b)
  %5630 = call float @dx.op.unary.f32(i32 22, float %5629)  ; Frc(value)
  %5631 = fadd fast float %5630, 0xBFEA666660000000
  %5632 = fmul fast float %5631, 8.000000e+00
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = call float @dx.op.unary.f32(i32 27, float %5629)  ; Round_ni(value)
  %5635 = fadd fast float %5634, %5633
  %5636 = call float @dx.op.binary.f32(i32 36, float %5635, float %5611)  ; FMin(a,b)
  %5637 = call float @dx.op.unary.f32(i32 27, float %5636)  ; Round_ni(value)
  %5638 = fsub fast float -0.000000e+00, %5637
  %5639 = call float @dx.op.unary.f32(i32 21, float %5638)  ; Exp(value)
  %5640 = fmul fast float %5639, %5613
  %5641 = fmul fast float %5640, %5586
  %5642 = fmul fast float %5640, %5590
  %5643 = fmul fast float %5641, 2.500000e-01
  %5644 = fmul fast float %5642, 2.500000e-01
  %5645 = fadd fast float %5643, 5.000000e-01
  %5646 = fadd fast float %5644, 5.000000e-01
  %5647 = fsub fast float %5611, %5609
  %5648 = fptoui float %5647 to i32
  %5649 = add i32 %5648, 320
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5649)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.CBufRet.f32 %5650, 1
  %5653 = fcmp fast une float %5636, %5611
  %5654 = fsub fast float %5586, %5651
  %5655 = fsub fast float %5590, %5652
  %5656 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5657 = call float @dx.op.unary.f32(i32 6, float %5655)  ; FAbs(value)
  %5658 = fmul fast float %5656, %5640
  %5659 = fmul fast float %5657, %5640
  %5660 = fcmp fast olt float %5658, 1.000000e+00
  %5661 = fcmp fast olt float %5659, 1.000000e+00
  %5662 = and i1 %5660, %5661
  %5663 = or i1 %5653, %5662
  br i1 %5663, label %5664, label %5961, !dx.controlflow.hints !101

; <label>:5664                                    ; preds = %5602
  %5665 = fmul fast float %5642, 5.000000e-01
  %5666 = fmul fast float %5641, 5.000000e-01
  %5667 = fadd fast float %5665, 5.000000e-01
  %5668 = fadd fast float %5666, 5.000000e-01
  %5669 = sitofp i32 %5608 to float
  %5670 = fsub fast float %5636, %5669
  %5671 = call float @dx.op.unary.f32(i32 27, float %5670)  ; Round_ni(value)
  %5672 = call float @dx.op.unary.f32(i32 22, float %5636)  ; Frc(value)
  %5673 = call float @dx.op.unary.f32(i32 22, float %5668)  ; Frc(value)
  %5674 = call float @dx.op.unary.f32(i32 22, float %5667)  ; Frc(value)
  %5675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5673, float %5674, float %5671, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = extractvalue %dx.types.ResRet.f32 %5675, 3
  %5680 = fcmp fast ogt float %5672, 0.000000e+00
  br i1 %5680, label %5681, label %5702, !dx.controlflow.hints !102

; <label>:5681                                    ; preds = %5664
  %5682 = fadd fast float %5671, 1.000000e+00
  %5683 = call float @dx.op.unary.f32(i32 22, float %5645)  ; Frc(value)
  %5684 = call float @dx.op.unary.f32(i32 22, float %5646)  ; Frc(value)
  %5685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5683, float %5684, float %5682, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5686 = extractvalue %dx.types.ResRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.ResRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.ResRet.f32 %5685, 2
  %5689 = extractvalue %dx.types.ResRet.f32 %5685, 3
  %5690 = fsub fast float %5686, %5676
  %5691 = fsub fast float %5687, %5677
  %5692 = fsub fast float %5688, %5678
  %5693 = fsub fast float %5689, %5679
  %5694 = fmul fast float %5690, %5672
  %5695 = fmul fast float %5691, %5672
  %5696 = fmul fast float %5692, %5672
  %5697 = fmul fast float %5693, %5672
  %5698 = fadd fast float %5694, %5676
  %5699 = fadd fast float %5695, %5677
  %5700 = fadd fast float %5696, %5678
  %5701 = fadd fast float %5697, %5679
  br label %5702

; <label>:5702                                    ; preds = %5681, %5664
  %5703 = phi float [ %5698, %5681 ], [ %5676, %5664 ]
  %5704 = phi float [ %5699, %5681 ], [ %5677, %5664 ]
  %5705 = phi float [ %5700, %5681 ], [ %5678, %5664 ]
  %5706 = phi float [ %5701, %5681 ], [ %5679, %5664 ]
  %5707 = fadd fast float %5703, -5.000000e-01
  %5708 = fadd fast float %5705, -5.000000e-01
  %5709 = fmul fast float %5707, 0xBFD5555560000000
  %5710 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5708, float %5709)  ; FMad(a,b,c)
  %5711 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5704, float 0.000000e+00)  ; FMad(a,b,c)
  %5712 = fadd fast float %5711, %5706
  %5713 = fmul fast float %5707, -7.500000e-01
  %5714 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5708, float %5713)  ; FMad(a,b,c)
  %5715 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5704, float 0.000000e+00)  ; FMad(a,b,c)
  %5716 = fadd fast float %5715, %5706
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.CBufRet.f32 %5719, 2
  %5723 = extractvalue %dx.types.CBufRet.f32 %5719, 3
  %5724 = fsub fast float %5720, %5710
  %5725 = fsub fast float %5721, %5712
  %5726 = fsub fast float %5722, %5714
  %5727 = fsub fast float %5723, %5716
  %5728 = fmul fast float %5724, %5718
  %5729 = fmul fast float %5725, %5718
  %5730 = fmul fast float %5726, %5718
  %5731 = fmul fast float %5727, %5718
  %5732 = fadd fast float %5728, %5710
  %5733 = fadd fast float %5729, %5712
  %5734 = fadd fast float %5730, %5714
  %5735 = fadd fast float %5731, %5716
  %5736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5737 = extractvalue %dx.types.ResRet.i32 %5736, 0
  %5738 = and i32 %5737, 536870911
  %5739 = uitofp i32 %5738 to float
  %5740 = fmul fast float %5739, %5586
  %5741 = fmul fast float %5739, %5590
  %5742 = fptoui float %5740 to i32
  %5743 = fptoui float %5741 to i32
  %5744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5745 = extractvalue %dx.types.ResRet.i32 %5744, 0
  %5746 = and i32 %5745, 31
  %5747 = lshr i32 %5742, %5746
  %5748 = lshr i32 %5743, %5746
  %5749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5750 = extractvalue %dx.types.ResRet.i32 %5749, 0
  %5751 = and i32 %5750, 31
  %5752 = shl i32 1, %5751
  %5753 = call i32 @dx.op.binary.i32(i32 40, i32 %5752, i32 4)  ; UMin(a,b)
  %5754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5755 = extractvalue %dx.types.ResRet.i32 %5754, 0
  %5756 = extractvalue %dx.types.ResRet.i32 %5754, 1
  %5757 = icmp eq i32 %5753, 0
  br i1 %5757, label %5799, label %5758

; <label>:5758                                    ; preds = %5702
  br label %5759

; <label>:5759                                    ; preds = %5787, %5758
  %5760 = phi i32 [ %5790, %5787 ], [ 0, %5758 ]
  %5761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5762 = extractvalue %dx.types.ResRet.i32 %5761, 0
  %5763 = lshr i32 %5762, 16
  %5764 = and i32 %5763, 31
  %5765 = shl i32 %5748, %5764
  %5766 = add i32 %5765, %5747
  %5767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5768 = extractvalue %dx.types.ResRet.i32 %5767, 0
  %5769 = and i32 %5768, 31
  %5770 = shl i32 %5766, %5769
  %5771 = add i32 %5770, %5760
  %5772 = shl i32 %5771, 2
  %5773 = add i32 %5772, 32
  %5774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5773, i32 undef)  ; BufferLoad(srv,index,wot)
  %5775 = extractvalue %dx.types.ResRet.i32 %5774, 0
  %5776 = icmp slt i32 %5775, 0
  %5777 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5760
  %5778 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5760
  %5779 = bitcast float* %5777 to i32*
  %5780 = bitcast float* %5778 to i32*
  br i1 %5776, label %5781, label %5787

; <label>:5781                                    ; preds = %5759
  %5782 = and i32 %5775, 1073741823
  %5783 = add nuw nsw i32 %5782, 20
  %5784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5783, i32 undef)  ; BufferLoad(srv,index,wot)
  %5785 = extractvalue %dx.types.ResRet.i32 %5784, 0
  %5786 = extractvalue %dx.types.ResRet.i32 %5784, 1
  br label %5787

; <label>:5787                                    ; preds = %5781, %5759
  %5788 = phi i32 [ %5785, %5781 ], [ %5755, %5759 ]
  %5789 = phi i32 [ %5786, %5781 ], [ %5756, %5759 ]
  store i32 %5788, i32* %5779, align 4
  store i32 %5789, i32* %5780, align 4
  %5790 = add nuw i32 %5760, 1
  %5791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.i32 %5791, 2
  %5793 = icmp eq i32 %5792, 0
  %5794 = icmp ugt i32 %5775, -1073741825
  %5795 = and i1 %5794, %5793
  %5796 = icmp ult i32 %5790, %5753
  %5797 = and i1 %5795, %5796
  br i1 %5797, label %5759, label %5798

; <label>:5798                                    ; preds = %5787
  br label %5799

; <label>:5799                                    ; preds = %5798, %5702
  %5800 = phi i32 [ 0, %5702 ], [ %5790, %5798 ]
  %5801 = extractvalue %dx.types.CBufRet.f32 %5564, 2
  %5802 = fptoui float %5801 to i32
  %5803 = icmp eq i32 %5802, 0
  br i1 %5803, label %5855, label %5804

; <label>:5804                                    ; preds = %5799
  br label %5805

; <label>:5805                                    ; preds = %5850, %5804
  %5806 = phi i32 [ %5851, %5850 ], [ %5800, %5804 ]
  %5807 = phi i32 [ %5852, %5850 ], [ 0, %5804 ]
  %5808 = lshr i32 %5807, 2
  %5809 = and i32 %5807, 3
  %5810 = add nuw nsw i32 %5808, 83
  %5811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5810)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.i32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.i32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.i32 %5811, 2
  %5815 = extractvalue %dx.types.CBufRet.i32 %5811, 3
  %5816 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5812, i32* %5816, align 4
  %5817 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5813, i32* %5817, align 4
  %5818 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5814, i32* %5818, align 4
  %5819 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5815, i32* %5819, align 4
  %5820 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5809
  %5821 = load i32, i32* %5820, align 4, !tbaa !103, !noalias !107
  %5822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5823 = extractvalue %dx.types.ResRet.i32 %5822, 0
  %5824 = lshr i32 %5823, 16
  %5825 = and i32 %5824, 31
  %5826 = shl i32 %5748, %5825
  %5827 = add i32 %5826, %5747
  %5828 = shl i32 %5827, 2
  %5829 = add i32 %5828, %5821
  %5830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5831 = extractvalue %dx.types.ResRet.i32 %5830, 0
  %5832 = icmp eq i32 %5831, 0
  br i1 %5832, label %5850, label %5833

; <label>:5833                                    ; preds = %5805
  %5834 = icmp slt i32 %5831, 0
  %5835 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5806
  %5836 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5806
  %5837 = bitcast float* %5835 to i32*
  %5838 = bitcast float* %5836 to i32*
  br i1 %5834, label %5839, label %5846

; <label>:5839                                    ; preds = %5833
  %5840 = and i32 %5831, 1073741823
  %5841 = add i32 %5821, 20
  %5842 = add i32 %5841, %5840
  %5843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.i32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.i32 %5843, 1
  br label %5846

; <label>:5846                                    ; preds = %5839, %5833
  %5847 = phi i32 [ %5844, %5839 ], [ %5755, %5833 ]
  %5848 = phi i32 [ %5845, %5839 ], [ %5756, %5833 ]
  store i32 %5847, i32* %5837, align 4
  store i32 %5848, i32* %5838, align 4
  %5849 = add i32 %5806, 1
  br label %5850

; <label>:5850                                    ; preds = %5846, %5805
  %5851 = phi i32 [ %5806, %5805 ], [ %5849, %5846 ]
  %5852 = add nuw i32 %5807, 1
  %5853 = icmp eq i32 %5852, %5802
  br i1 %5853, label %5854, label %5805

; <label>:5854                                    ; preds = %5850
  br label %5855

; <label>:5855                                    ; preds = %5854, %5799
  %5856 = phi i32 [ %5800, %5799 ], [ %5851, %5854 ]
  %5857 = icmp eq i32 %5856, 1
  %5858 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  %5859 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  br i1 %5857, label %5860, label %5863

; <label>:5860                                    ; preds = %5855
  %5861 = load float, float* %5858, align 4
  %5862 = load float, float* %5859, align 4
  br label %5890

; <label>:5863                                    ; preds = %5855
  %5864 = load float, float* %5858, align 4
  %5865 = load float, float* %5859, align 4
  %5866 = fdiv fast float 1.000000e+00, %5865
  %5867 = fsub fast float %5864, %5866
  %5868 = icmp ugt i32 %5856, 1
  br i1 %5868, label %5869, label %5885

; <label>:5869                                    ; preds = %5863
  br label %5870

; <label>:5870                                    ; preds = %5870, %5869
  %5871 = phi float [ %5880, %5870 ], [ %5867, %5869 ]
  %5872 = phi float [ %5881, %5870 ], [ %5864, %5869 ]
  %5873 = phi i32 [ %5882, %5870 ], [ 1, %5869 ]
  %5874 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5873
  %5875 = load float, float* %5874, align 4
  %5876 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5873
  %5877 = load float, float* %5876, align 4
  %5878 = fdiv fast float 1.000000e+00, %5877
  %5879 = fsub fast float %5875, %5878
  %5880 = call float @dx.op.binary.f32(i32 36, float %5871, float %5879)  ; FMin(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5872, float %5875)  ; FMax(a,b)
  %5882 = add nuw i32 %5873, 1
  %5883 = icmp eq i32 %5882, %5856
  br i1 %5883, label %5884, label %5870

; <label>:5884                                    ; preds = %5870
  br label %5885

; <label>:5885                                    ; preds = %5884, %5863
  %5886 = phi float [ %5867, %5863 ], [ %5880, %5884 ]
  %5887 = phi float [ %5864, %5863 ], [ %5881, %5884 ]
  %5888 = fsub fast float %5887, %5886
  %5889 = fdiv fast float 1.000000e+00, %5888
  br label %5890

; <label>:5890                                    ; preds = %5885, %5860
  %5891 = phi float [ %5861, %5860 ], [ %5887, %5885 ]
  %5892 = phi float [ %5862, %5860 ], [ %5889, %5885 ]
  %5893 = fadd fast float %5594, %5891
  %5894 = fmul fast float %5893, %5892
  %5895 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5896 = fmul fast float %5895, 2.000000e+00
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = fmul fast float %5732, %5732
  %5899 = fsub fast float %5733, %5898
  %5900 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5899)  ; FMax(a,b)
  %5901 = fdiv fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5733, %5732
  %5903 = fsub fast float %5734, %5902
  %5904 = fsub fast float %5897, %5732
  %5905 = fmul fast float %5897, %5897
  %5906 = fsub fast float %5905, %5733
  %5907 = fmul fast float %5901, %5903
  %5908 = fmul fast float %5907, %5904
  %5909 = fsub fast float %5906, %5908
  %5910 = fmul fast float %5733, %5733
  %5911 = fsub fast float %5735, %5910
  %5912 = fmul fast float %5903, %5903
  %5913 = fmul fast float %5912, %5901
  %5914 = fsub fast float %5911, %5913
  %5915 = fdiv fast float %5909, %5914
  %5916 = fmul fast float %5915, %5903
  %5917 = fsub fast float %5904, %5916
  %5918 = fmul fast float %5917, %5901
  %5919 = fmul fast float %5918, %5732
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = fmul fast float %5915, %5733
  %5922 = fsub fast float %5920, %5921
  %5923 = fmul fast float %5918, %5918
  %5924 = fmul fast float %5915, 4.000000e+00
  %5925 = fmul fast float %5924, %5922
  %5926 = fsub fast float %5923, %5925
  %5927 = call float @dx.op.unary.f32(i32 24, float %5926)  ; Sqrt(value)
  %5928 = fcmp fast oge float %5918, 0.000000e+00
  %5929 = fsub fast float -0.000000e+00, %5927
  %5930 = select i1 %5928, float %5929, float %5927
  %5931 = fsub fast float %5930, %5918
  %5932 = fdiv fast float %5931, %5915
  %5933 = fdiv fast float %5922, %5931
  %5934 = fmul fast float %5932, 5.000000e-01
  %5935 = fmul fast float %5933, 2.000000e+00
  %5936 = select i1 %5928, float %5934, float %5935
  %5937 = select i1 %5928, float %5935, float %5934
  %5938 = call float @dx.op.binary.f32(i32 35, float %5936, float %5937)  ; FMax(a,b)
  %5939 = call float @dx.op.binary.f32(i32 36, float %5936, float %5937)  ; FMin(a,b)
  %5940 = fcmp fast ogt float %5897, %5938
  %5941 = fsub fast float %5897, %5939
  %5942 = fsub fast float %5897, %5938
  %5943 = fsub fast float %5938, %5939
  %5944 = select i1 %5940, float %5942, float %5943
  %5945 = fmul float %5941, %5944
  %5946 = select i1 %5940, float %5939, float %5897
  %5947 = fcmp fast ogt float %5897, %5939
  %5948 = fmul fast float %5946, %5938
  %5949 = fadd fast float %5946, %5938
  %5950 = fmul fast float %5949, %5732
  %5951 = fadd fast float %5948, %5733
  %5952 = fsub fast float %5951, %5950
  %5953 = fdiv fast float %5952, %5945
  %5954 = select i1 %5947, float %5953, float 0.000000e+00
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = select i1 %5940, float %5955, float %5954
  %5957 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5717, 3
  %5959 = fmul fast float %5958, %5957
  %5960 = fsub fast float 1.000000e+00, %5959
  br label %5961

; <label>:5961                                    ; preds = %5890, %5602, %5567, %5563, %5527
  %5962 = phi float [ 1.000000e+00, %5527 ], [ %5960, %5890 ], [ 1.000000e+00, %5567 ], [ 1.000000e+00, %5602 ], [ 1.000000e+00, %5563 ]
  %5963 = fcmp fast ogt float %5559, 0.000000e+00
  br i1 %5963, label %5964, label %5972, !dx.controlflow.hints !116

; <label>:5964                                    ; preds = %5961
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5967 = fadd fast float %5966, %5440
  %5968 = call float @dx.op.binary.f32(i32 35, float %5967, float 0.000000e+00)  ; FMax(a,b)
  %5969 = fadd fast float %5968, 0x3F10000000000000
  %5970 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5458, float %5459, float undef, float undef, i32 0, i32 0, i32 undef, float %5969)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  br label %5972

; <label>:5972                                    ; preds = %5964, %5961
  %5973 = phi float [ %5971, %5964 ], [ 1.000000e+00, %5961 ]
  %5974 = fcmp fast ogt float %5557, 0.000000e+00
  br i1 %5974, label %5975, label %5983, !dx.controlflow.hints !117

; <label>:5975                                    ; preds = %5972
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5978 = fadd fast float %5977, %5440
  %5979 = call float @dx.op.binary.f32(i32 35, float %5978, float 0.000000e+00)  ; FMax(a,b)
  %5980 = fadd fast float %5979, 0x3F10000000000000
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5450, float %5451, float undef, float undef, i32 0, i32 0, i32 undef, float %5980)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  br label %5983

; <label>:5983                                    ; preds = %5975, %5972
  %5984 = phi float [ %5982, %5975 ], [ 1.000000e+00, %5972 ]
  %5985 = fcmp fast ogt float %5556, 0.000000e+00
  br i1 %5985, label %5986, label %5998, !dx.controlflow.hints !118

; <label>:5986                                    ; preds = %5983
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %5989 = fadd fast float %5988, %5440
  %5990 = call float @dx.op.binary.f32(i32 35, float %5989, float 0.000000e+00)  ; FMax(a,b)
  %5991 = fadd fast float %5990, 0x3F10000000000000
  br i1 %5443, label %5992, label %5995, !dx.controlflow.hints !119

; <label>:5992                                    ; preds = %5986
  %5993 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5432, float %5436, float undef, float undef, i32 0, i32 0, i32 undef, float %5991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5994 = extractvalue %dx.types.ResRet.f32 %5993, 0
  br label %5998

; <label>:5995                                    ; preds = %5986
  %5996 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5432, float %5436, float undef, float undef, i32 0, i32 0, i32 undef, float %5991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5997 = extractvalue %dx.types.ResRet.f32 %5996, 0
  br label %5998

; <label>:5998                                    ; preds = %5995, %5992, %5983
  %5999 = phi float [ %5994, %5992 ], [ %5997, %5995 ], [ 1.000000e+00, %5983 ]
  %6000 = fsub fast float %5973, %5962
  %6001 = fmul fast float %6000, %5529
  %6002 = fadd fast float %6001, %5962
  %6003 = fsub fast float %5984, %6002
  %6004 = fmul fast float %6003, %5528
  %6005 = fadd fast float %6004, %6002
  %6006 = fsub fast float %5999, %6005
  %6007 = fmul fast float %6006, %5556
  %6008 = fadd fast float %6007, %6005
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 2
  %6011 = fcmp fast ogt float %6010, 0.000000e+00
  br i1 %6011, label %6012, label %6052, !dx.controlflow.hints !120

; <label>:6012                                    ; preds = %5998
  %6013 = fcmp fast ugt float %6010, 0.000000e+00
  br i1 %6013, label %6014, label %6049

; <label>:6014                                    ; preds = %6012
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6019 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.CBufRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.CBufRet.f32 %6020, 2
  %6024 = extractvalue %dx.types.CBufRet.f32 %6020, 3
  %6025 = extractvalue %dx.types.CBufRet.f32 %6009, 0
  %6026 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 0
  %6029 = extractvalue %dx.types.CBufRet.f32 %6027, 1
  %6030 = extractvalue %dx.types.CBufRet.f32 %6027, 2
  %6031 = fadd fast float %6028, %5409
  %6032 = fadd fast float %6029, %5410
  %6033 = fadd fast float %6030, %5411
  %6034 = fmul fast float %6031, %6016
  %6035 = call float @dx.op.tertiary.f32(i32 46, float %6017, float %6032, float %6034)  ; FMad(a,b,c)
  %6036 = call float @dx.op.tertiary.f32(i32 46, float %6018, float %6033, float %6035)  ; FMad(a,b,c)
  %6037 = fadd fast float %6036, %6019
  %6038 = fmul fast float %6031, %6021
  %6039 = call float @dx.op.tertiary.f32(i32 46, float %6022, float %6032, float %6038)  ; FMad(a,b,c)
  %6040 = call float @dx.op.tertiary.f32(i32 46, float %6023, float %6033, float %6039)  ; FMad(a,b,c)
  %6041 = fadd fast float %6040, %6024
  %6042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6037, float %6041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6043 = extractvalue %dx.types.ResRet.f32 %6042, 0
  %6044 = fmul fast float %6043, %6026
  %6045 = fadd fast float %6044, %6025
  %6046 = call float @dx.op.unary.f32(i32 7, float %6045)  ; Saturate(value)
  %6047 = fmul fast float %6046, %6010
  %6048 = fsub fast float 1.000000e+00, %6047
  br label %6049

; <label>:6049                                    ; preds = %6014, %6012
  %6050 = phi float [ %6048, %6014 ], [ 1.000000e+00, %6012 ]
  %6051 = fmul fast float %6050, %6008
  br label %6052

; <label>:6052                                    ; preds = %6049, %5998, %5389
  %6053 = phi float [ 1.000000e+00, %5389 ], [ %6051, %6049 ], [ %6008, %5998 ]
  %6054 = call float @dx.op.binary.f32(i32 36, float %6053, float %6053)  ; FMin(a,b)
  %6055 = call float @dx.op.binary.f32(i32 36, float %6053, float %6054)  ; FMin(a,b)
  %6056 = fcmp fast ogt float %6055, 0.000000e+00
  br i1 %6056, label %6057, label %6217, !dx.controlflow.hints !121

; <label>:6057                                    ; preds = %6052
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 0
  %6060 = extractvalue %dx.types.CBufRet.f32 %6058, 1
  %6061 = extractvalue %dx.types.CBufRet.f32 %6058, 2
  %6062 = extractvalue %dx.types.CBufRet.f32 %6058, 3
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.CBufRet.f32 %6063, 2
  %6067 = extractvalue %dx.types.CBufRet.f32 %6063, 3
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.CBufRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.CBufRet.f32 %6068, 2
  %6072 = extractvalue %dx.types.CBufRet.f32 %6068, 3
  %6073 = fmul fast float %6059, %5409
  %6074 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %6060, float %6073)  ; FMad(a,b,c)
  %6075 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %6061, float %6074)  ; FMad(a,b,c)
  %6076 = fadd fast float %6075, %6062
  %6077 = fmul fast float %6064, %5409
  %6078 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %6065, float %6077)  ; FMad(a,b,c)
  %6079 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %6066, float %6078)  ; FMad(a,b,c)
  %6080 = fadd fast float %6079, %6067
  %6081 = fmul fast float %6069, %5409
  %6082 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %6070, float %6081)  ; FMad(a,b,c)
  %6083 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %6071, float %6082)  ; FMad(a,b,c)
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.CBufRet.f32 %6084, 3
  %6088 = fmul fast float %6087, %6076
  %6089 = fmul fast float %6087, %6080
  %6090 = fadd fast float %6088, %6085
  %6091 = fadd fast float %6089, %6086
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6095 = fsub fast float %6090, %6093
  %6096 = fsub fast float %6091, %6094
  %6097 = fcmp fast olt float %6095, 0.000000e+00
  %6098 = fcmp fast olt float %6096, 0.000000e+00
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6104 = select i1 %6097, float %6100, float %6102
  %6105 = select i1 %6098, float %6101, float %6103
  %6106 = fmul fast float %6104, %6095
  %6107 = fmul fast float %6105, %6096
  %6108 = call float @dx.op.unary.f32(i32 6, float %6106)  ; FAbs(value)
  %6109 = call float @dx.op.unary.f32(i32 6, float %6107)  ; FAbs(value)
  %6110 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %6111 = call float @dx.op.binary.f32(i32 35, float %6108, float %6109)  ; FMax(a,b)
  %6112 = fsub fast float %6110, %6111
  %6113 = call float @dx.op.unary.f32(i32 7, float %6112)  ; Saturate(value)
  %6114 = fcmp fast ogt float %6113, 0.000000e+00
  br i1 %6114, label %6115, label %6156, !dx.controlflow.hints !122

; <label>:6115                                    ; preds = %6057
  %6116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6090, float %6091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 1
  %6118 = fcmp fast ogt float %6117, 0.000000e+00
  br i1 %6118, label %6119, label %6151

; <label>:6119                                    ; preds = %6115
  %6120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6090, float %6091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = extractvalue %dx.types.ResRet.f32 %6120, 3
  %6125 = fsub fast float 1.000000e+00, %6072
  %6126 = fsub fast float %6125, %6083
  %6127 = fmul fast float %6126, 0x400921FB60000000
  %6128 = fadd fast float %6127, 0x3FF921FB60000000
  %6129 = call float @dx.op.unary.f32(i32 13, float %6128)  ; Sin(value)
  %6130 = fadd fast float %6129, -1.000000e+00
  %6131 = fmul fast float %6130, 0x3FD45F3060000000
  %6132 = fmul fast float %6126, 0x401921FB60000000
  %6133 = fadd fast float %6132, 0x400921FB60000000
  %6134 = call float @dx.op.unary.f32(i32 13, float %6133)  ; Sin(value)
  %6135 = fadd fast float %6134, 0x3E7777A5C0000000
  %6136 = fmul fast float %6135, 0x3FC45F3060000000
  %6137 = fmul fast float %6126, 0x4022D97C80000000
  %6138 = fadd fast float %6137, 0x4012D97C80000000
  %6139 = call float @dx.op.unary.f32(i32 13, float %6138)  ; Sin(value)
  %6140 = fadd fast float %6139, 1.000000e+00
  %6141 = fmul fast float %6140, 0x3FBB2995E0000000
  %6142 = fmul fast float %6126, 0x402921FB60000000
  %6143 = fadd fast float %6142, 0x401921FB60000000
  %6144 = call float @dx.op.unary.f32(i32 13, float %6143)  ; Sin(value)
  %6145 = fadd fast float %6144, 0xBE8777A5C0000000
  %6146 = fmul fast float %6145, 0x3FB45F3060000000
  %6147 = call float @dx.op.dot4.f32(i32 56, float %6121, float %6122, float %6123, float %6124, float %6131, float %6136, float %6141, float %6146)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6148 = fmul fast float %6147, 0xBFF7154760000000
  %6149 = call float @dx.op.unary.f32(i32 21, float %6148)  ; Exp(value)
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  br label %6151

; <label>:6151                                    ; preds = %6119, %6115
  %6152 = phi float [ %6150, %6119 ], [ 1.000000e+00, %6115 ]
  %6153 = fadd fast float %6152, -1.000000e+00
  %6154 = fmul fast float %6153, %6113
  %6155 = fadd fast float %6154, 1.000000e+00
  br label %6156

; <label>:6156                                    ; preds = %6151, %6057
  %6157 = phi float [ %6155, %6151 ], [ 1.000000e+00, %6057 ]
  %6158 = fmul fast float %6157, %6053
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6163 = fadd fast float %6160, %194
  %6164 = fadd fast float %6161, %195
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6167 = fsub fast float -0.000000e+00, %6163
  %6168 = fsub fast float -0.000000e+00, %6164
  %6169 = fsub fast float %5038, %6162
  %6170 = fadd fast float %6169, %6166
  %6171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6167, float %6168, float %6170)  ; Dot3(ax,ay,az,bx,by,bz)
  %6172 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = fdiv fast float 1.000000e+00, %6172
  %6174 = fmul fast float %6173, %6171
  %6175 = fmul fast float %5390, %6174
  %6176 = fmul fast float %5391, %6174
  %6177 = fadd fast float %6175, %6163
  %6178 = fadd fast float %6176, %6164
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = fsub fast float %6177, %6180
  %6183 = fsub fast float %6178, %6181
  %6184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6185 = extractvalue %dx.types.CBufRet.f32 %6184, 2
  %6186 = extractvalue %dx.types.CBufRet.f32 %6184, 3
  %6187 = fmul fast float %6182, %6185
  %6188 = fmul fast float %6183, %6186
  %6189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.i32 %6189, 3
  %6191 = icmp eq i32 %6190, 0
  br i1 %6191, label %6197, label %6192

; <label>:6192                                    ; preds = %6156
  %6193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6187, float %6188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6194 = extractvalue %dx.types.ResRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.ResRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.ResRet.f32 %6193, 2
  br label %6202

; <label>:6197                                    ; preds = %6156
  %6198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6187, float %6188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = extractvalue %dx.types.ResRet.f32 %6198, 1
  %6201 = extractvalue %dx.types.ResRet.f32 %6198, 2
  br label %6202

; <label>:6202                                    ; preds = %6197, %6192
  %6203 = phi float [ %6194, %6192 ], [ %6199, %6197 ]
  %6204 = phi float [ %6195, %6192 ], [ %6200, %6197 ]
  %6205 = phi float [ %6196, %6192 ], [ %6201, %6197 ]
  %6206 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6207 = fmul fast float %6206, %6203
  %6208 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6209 = fsub fast float %6174, %6208
  %6210 = fsub fast float %6209, %6207
  %6211 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6210)  ; FMax(a,b)
  %6212 = fmul fast float %6211, %6204
  %6213 = call float @dx.op.binary.f32(i32 36, float %6205, float %6212)  ; FMin(a,b)
  %6214 = fmul fast float %6213, 0xBFF7154760000000
  %6215 = call float @dx.op.unary.f32(i32 21, float %6214)  ; Exp(value)
  %6216 = fmul fast float %6158, %6215
  br label %6217

; <label>:6217                                    ; preds = %6202, %6052
  %6218 = phi float [ %6216, %6202 ], [ %6053, %6052 ]
  %6219 = call float @dx.op.binary.f32(i32 36, float %6218, float %6218)  ; FMin(a,b)
  %6220 = call float @dx.op.binary.f32(i32 36, float %6218, float %6219)  ; FMin(a,b)
  %6221 = fcmp fast ogt float %6220, 0.000000e+00
  br i1 %6221, label %6222, label %6473, !dx.controlflow.hints !123

; <label>:6222                                    ; preds = %6217
  %6223 = fmul fast float %6218, %5401
  %6224 = fmul fast float %6218, %5402
  %6225 = fmul fast float %6218, %5403
  %6226 = fsub fast float %196, %4234
  %6227 = fcmp fast ogt float %6226, 0.000000e+00
  %6228 = fmul fast float %5390, 5.120000e+02
  %6229 = fmul fast float %5391, 5.120000e+02
  %6230 = fmul fast float %5392, 5.120000e+02
  %6231 = fadd fast float %6230, %196
  %6232 = fsub fast float %4234, %6231
  %6233 = fmul fast float %6232, 2.000000e+00
  %6234 = fadd fast float %6233, %6231
  %6235 = select i1 %6227, float %6234, float %6231
  %6236 = fsub fast float %6235, %196
  %6237 = call float @dx.op.dot3.f32(i32 55, float %6228, float %6229, float %6236, float %6228, float %6229, float %6236)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = call float @dx.op.unary.f32(i32 25, float %6237)  ; Rsqrt(value)
  %6239 = fmul fast float %6238, %6228
  %6240 = fmul fast float %6238, %6229
  %6241 = fmul fast float %6238, %6236
  %6242 = fsub fast float %4234, %196
  %6243 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6242)  ; Dot3(ax,ay,az,bx,by,bz)
  %6244 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6239, float %6240, float %6241)  ; Dot3(ax,ay,az,bx,by,bz)
  %6245 = fdiv fast float 1.000000e+00, %6244
  %6246 = fmul fast float %6245, %6243
  %6247 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6226, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6248 = fcmp fast ogt float %6247, 0.000000e+00
  %6249 = fcmp fast olt float %6247, 0.000000e+00
  %6250 = zext i1 %6248 to i32
  %6251 = zext i1 %6249 to i32
  %6252 = sub nsw i32 %6250, %6251
  %6253 = sitofp i32 %6252 to float
  %6254 = fsub fast float %6235, %4234
  %6255 = call float @dx.op.dot3.f32(i32 55, float %6228, float %6229, float %6254, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6256 = fcmp fast ogt float %6255, 0.000000e+00
  %6257 = fcmp fast olt float %6255, 0.000000e+00
  %6258 = zext i1 %6256 to i32
  %6259 = zext i1 %6257 to i32
  %6260 = sub nsw i32 %6258, %6259
  %6261 = sitofp i32 %6260 to float
  %6262 = fcmp fast une float %6253, %6261
  br i1 %6262, label %6263, label %6273

; <label>:6263                                    ; preds = %6222
  %6264 = fmul fast float %6246, %6241
  %6265 = fmul fast float %6246, %6240
  %6266 = fmul fast float %6246, %6239
  %6267 = fmul fast float %6266, %6266
  %6268 = fmul fast float %6265, %6265
  %6269 = fadd fast float %6267, %6268
  %6270 = fmul fast float %6264, %6264
  %6271 = fadd fast float %6269, %6270
  %6272 = call float @dx.op.unary.f32(i32 24, float %6271)  ; Sqrt(value)
  br label %6283

; <label>:6273                                    ; preds = %6222
  %6274 = icmp slt i32 %6252, 0
  br i1 %6274, label %6275, label %6283

; <label>:6275                                    ; preds = %6273
  %6276 = fsub fast float %196, %6235
  %6277 = fmul fast float %6228, %6228
  %6278 = fmul fast float %6229, %6229
  %6279 = fadd fast float %6277, %6278
  %6280 = fmul fast float %6276, %6276
  %6281 = fadd fast float %6279, %6280
  %6282 = call float @dx.op.unary.f32(i32 24, float %6281)  ; Sqrt(value)
  br label %6283

; <label>:6283                                    ; preds = %6275, %6273, %6263
  %6284 = phi float [ %6272, %6263 ], [ %6282, %6275 ], [ 0.000000e+00, %6273 ]
  %6285 = fsub fast float -0.000000e+00, %6284
  %6286 = select i1 %6227, float -0.000000e+00, float %6285
  %6287 = fmul fast float %4235, 0x3FF7154760000000
  %6288 = fmul fast float %6287, %6286
  %6289 = fmul fast float %4236, 0x3FF7154760000000
  %6290 = fmul fast float %6289, %6286
  %6291 = fmul fast float %4237, 0x3FF7154760000000
  %6292 = fmul fast float %6291, %6286
  %6293 = call float @dx.op.unary.f32(i32 21, float %6288)  ; Exp(value)
  %6294 = call float @dx.op.unary.f32(i32 21, float %6290)  ; Exp(value)
  %6295 = call float @dx.op.unary.f32(i32 21, float %6292)  ; Exp(value)
  %6296 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6297 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6298 = call float @dx.op.unary.f32(i32 7, float %6295)  ; Saturate(value)
  %6299 = fmul fast float %6223, %6296
  %6300 = fmul fast float %6224, %6297
  %6301 = fmul fast float %6225, %6298
  %6302 = fsub fast float %5390, %5026
  %6303 = fsub fast float %5391, %5025
  %6304 = fsub fast float %5392, %5024
  %6305 = call float @dx.op.dot3.f32(i32 55, float %6302, float %6303, float %6304, float %6302, float %6303, float %6304)  ; Dot3(ax,ay,az,bx,by,bz)
  %6306 = call float @dx.op.unary.f32(i32 25, float %6305)  ; Rsqrt(value)
  %6307 = fmul fast float %6306, %6302
  %6308 = fmul fast float %6306, %6303
  %6309 = fmul fast float %6306, %6304
  %6310 = call float @dx.op.dot3.f32(i32 55, float %5390, float %5391, float %5392, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6311 = call float @dx.op.dot3.f32(i32 55, float %5023, float %5022, float %5021, float %6307, float %6308, float %6309)  ; Dot3(ax,ay,az,bx,by,bz)
  %6312 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6313 = fmul fast float %6312, %6312
  %6314 = fmul fast float %6313, %5054
  %6315 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6316 = fmul fast float %6315, %6312
  %6317 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %6307, float %6308, float %6309)  ; Dot3(ax,ay,az,bx,by,bz)
  %6318 = fmul fast float %6317, %6317
  %6319 = call float @dx.op.unary.f32(i32 6, float %6310)  ; FAbs(value)
  %6320 = fsub fast float 1.000000e+00, %5036
  %6321 = call float @dx.op.binary.f32(i32 35, float %6320, float 0x3F847AE140000000)  ; FMax(a,b)
  %6322 = fmul fast float %6321, %6321
  %6323 = fmul fast float %6322, %6322
  %6324 = fsub fast float 1.000000e+00, %6323
  %6325 = fmul fast float %5041, %5041
  %6326 = fmul fast float %6325, %6324
  %6327 = fadd fast float %6326, %6323
  %6328 = bitcast float %6327 to i32
  %6329 = ashr i32 %6328, 1
  %6330 = add nsw i32 %6329, 532487669
  %6331 = bitcast i32 %6330 to float
  %6332 = fadd fast float %6331, %5041
  %6333 = fmul fast float %6323, %6318
  %6334 = fsub fast float 1.000000e+00, %6318
  %6335 = fadd fast float %6334, %6333
  %6336 = fmul fast float %6319, %6319
  %6337 = fmul fast float %6336, %6324
  %6338 = fadd fast float %6337, %6323
  %6339 = bitcast float %6338 to i32
  %6340 = ashr i32 %6339, 1
  %6341 = add nsw i32 %6340, 532487669
  %6342 = bitcast i32 %6341 to float
  %6343 = fadd fast float %6342, %6319
  %6344 = fmul fast float %6335, %6335
  %6345 = fmul fast float %6344, %6332
  %6346 = fmul fast float %6345, %6343
  %6347 = fdiv fast float 0x3FF0A00000000000, %6346
  %6348 = fmul fast float %6347, %6323
  %6349 = call float @dx.op.unary.f32(i32 6, float %6311)  ; FAbs(value)
  %6350 = fsub fast float 1.000000e+00, %6349
  %6351 = bitcast float %6350 to i32
  %6352 = sitofp i32 %6351 to float
  %6353 = fmul fast float %6352, 5.000000e+00
  %6354 = fadd fast float %6353, 0xC1EFBF8940000000
  %6355 = fptosi float %6354 to i32
  %6356 = bitcast i32 %6355 to float
  %6357 = fsub fast float 1.000000e+00, %5027
  %6358 = fsub fast float 1.000000e+00, %5028
  %6359 = fsub fast float 1.000000e+00, %5039
  %6360 = fmul fast float %6356, %6357
  %6361 = fmul fast float %6356, %6358
  %6362 = fmul fast float %6356, %6359
  %6363 = fadd fast float %6360, %5027
  %6364 = fadd fast float %6361, %5028
  %6365 = fadd fast float %6362, %5039
  br i1 %5301, label %6366, label %6389

; <label>:6366                                    ; preds = %6283
  %6367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3832, float %6349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6368 = extractvalue %dx.types.ResRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.ResRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.ResRet.f32 %6367, 2
  %6371 = fadd fast float %6368, -5.000000e-01
  %6372 = fadd fast float %6369, -5.000000e-01
  %6373 = fadd fast float %6370, -5.000000e-01
  %6374 = fmul fast float %5027, 4.000000e+00
  %6375 = fmul fast float %6374, %6357
  %6376 = fmul fast float %6375, %6371
  %6377 = fmul fast float %5028, 4.000000e+00
  %6378 = fmul fast float %6377, %6358
  %6379 = fmul fast float %6378, %6372
  %6380 = fmul fast float %5039, 4.000000e+00
  %6381 = fmul fast float %6380, %6359
  %6382 = fmul fast float %6381, %6373
  %6383 = fadd fast float %6376, %6363
  %6384 = fadd fast float %6379, %6364
  %6385 = fadd fast float %6382, %6365
  %6386 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  %6387 = call float @dx.op.unary.f32(i32 7, float %6384)  ; Saturate(value)
  %6388 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  br label %6389

; <label>:6389                                    ; preds = %6366, %6283
  %6390 = phi float [ %6386, %6366 ], [ %6363, %6283 ]
  %6391 = phi float [ %6387, %6366 ], [ %6364, %6283 ]
  %6392 = phi float [ %6388, %6366 ], [ %6365, %6283 ]
  %6393 = fmul fast float %6310, 9.843750e-01
  %6394 = fadd fast float %6393, 7.812500e-03
  %6395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6394, float %5291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6396 = extractvalue %dx.types.ResRet.f32 %6395, 2
  %6397 = extractvalue %dx.types.ResRet.f32 %6395, 3
  %6398 = fmul fast float %6396, %5027
  %6399 = fmul fast float %6396, %5028
  %6400 = fmul fast float %6396, %5039
  %6401 = fadd fast float %6398, %6397
  %6402 = fadd fast float %6399, %6397
  %6403 = fadd fast float %6400, %6397
  br i1 %5301, label %6404, label %6427

; <label>:6404                                    ; preds = %6389
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3832, float %6310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6405, 2
  %6409 = fadd fast float %6406, -5.000000e-01
  %6410 = fadd fast float %6407, -5.000000e-01
  %6411 = fadd fast float %6408, -5.000000e-01
  %6412 = fmul fast float %5027, 4.000000e+00
  %6413 = fmul fast float %6412, %6357
  %6414 = fmul fast float %6413, %6409
  %6415 = fmul fast float %5028, 4.000000e+00
  %6416 = fmul fast float %6415, %6358
  %6417 = fmul fast float %6416, %6410
  %6418 = fmul fast float %5039, 4.000000e+00
  %6419 = fmul fast float %6418, %6359
  %6420 = fmul fast float %6419, %6411
  %6421 = fadd fast float %6414, %6401
  %6422 = fadd fast float %6417, %6402
  %6423 = fadd fast float %6420, %6403
  %6424 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  %6425 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6426 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  br label %6427

; <label>:6427                                    ; preds = %6404, %6389
  %6428 = phi float [ %6424, %6404 ], [ %6401, %6389 ]
  %6429 = phi float [ %6425, %6404 ], [ %6402, %6389 ]
  %6430 = phi float [ %6426, %6404 ], [ %6403, %6389 ]
  %6431 = call float @dx.op.binary.f32(i32 35, float %6429, float %6430)  ; FMax(a,b)
  %6432 = call float @dx.op.binary.f32(i32 35, float %6428, float %6431)  ; FMax(a,b)
  %6433 = fsub fast float 1.000000e+00, %6432
  %6434 = fmul fast float %6390, %6348
  %6435 = fmul fast float %6391, %6348
  %6436 = fmul fast float %6392, %6348
  %6437 = fsub fast float 1.000000e+00, %6311
  %6438 = bitcast float %6437 to i32
  %6439 = sitofp i32 %6438 to float
  %6440 = fmul fast float %6439, 5.000000e+00
  %6441 = fadd fast float %6440, 0xC1EFBF8940000000
  %6442 = fptosi float %6441 to i32
  %6443 = bitcast i32 %6442 to float
  %6444 = fmul fast float %6443, %3833
  %6445 = fmul fast float %6433, %6444
  %6446 = fmul fast float %6445, %5351
  %6447 = fmul fast float %6445, %5352
  %6448 = fmul fast float %6445, %5353
  %6449 = fadd fast float %6446, %6434
  %6450 = fadd fast float %6447, %6435
  %6451 = fadd fast float %6448, %6436
  %6452 = fmul fast float %6316, %6299
  %6453 = fmul fast float %6452, %6433
  %6454 = fmul fast float %6316, %6300
  %6455 = fmul fast float %6454, %6433
  %6456 = fmul fast float %6316, %6301
  %6457 = fmul fast float %6456, %6433
  %6458 = fmul fast float %6452, %6449
  %6459 = fmul fast float %6454, %6450
  %6460 = fmul fast float %6456, %6451
  %6461 = fadd fast float %6453, %5335
  %6462 = fmul fast float %6461, %3829
  %6463 = fadd fast float %6455, %5336
  %6464 = fmul fast float %6463, %3829
  %6465 = fadd fast float %6457, %5337
  %6466 = fmul fast float %6465, %3829
  %6467 = fadd fast float %6458, %5378
  %6468 = fmul fast float %6467, %3829
  %6469 = fadd fast float %6459, %5381
  %6470 = fmul fast float %6469, %3829
  %6471 = fadd fast float %6460, %5384
  %6472 = fmul fast float %6471, %3829
  br label %6473

; <label>:6473                                    ; preds = %6427, %6217, %5328
  %6474 = phi float [ %5379, %5328 ], [ %5379, %6217 ], [ %6468, %6427 ]
  %6475 = phi float [ %5382, %5328 ], [ %5382, %6217 ], [ %6470, %6427 ]
  %6476 = phi float [ %5385, %5328 ], [ %5385, %6217 ], [ %6472, %6427 ]
  %6477 = phi float [ %5374, %5328 ], [ %5374, %6217 ], [ %6462, %6427 ]
  %6478 = phi float [ %5375, %5328 ], [ %5375, %6217 ], [ %6464, %6427 ]
  %6479 = phi float [ %5376, %5328 ], [ %5376, %6217 ], [ %6466, %6427 ]
  %6480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.i32 %6480, 0
  %6482 = icmp eq i32 %6481, 0
  br i1 %6482, label %7103, label %6483

; <label>:6483                                    ; preds = %6473
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6487 = fmul fast float %6485, %111
  %6488 = fmul fast float %6486, %112
  %6489 = fptoui float %6487 to i32
  %6490 = fptoui float %6488 to i32
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.CBufRet.f32 %6491, 2
  %6494 = extractvalue %dx.types.CBufRet.f32 %6491, 3
  %6495 = fadd fast float %102, -4.000000e+00
  %6496 = call float @dx.op.binary.f32(i32 35, float %6495, float 0.000000e+00)  ; FMax(a,b)
  %6497 = fadd fast float %6496, %6492
  %6498 = fmul fast float %6497, %6493
  %6499 = call float @dx.op.unary.f32(i32 23, float %6498)  ; Log(value)
  %6500 = fmul fast float %6499, %6494
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 2
  %6503 = fmul fast float %6500, %6502
  %6504 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.i32 %6505, 1
  %6507 = add i32 %6506, -1
  %6508 = uitofp i32 %6506 to float
  %6509 = fmul fast float %6508, %6504
  %6510 = fptoui float %6509 to i32
  %6511 = call i32 @dx.op.binary.i32(i32 40, i32 %6510, i32 %6507)  ; UMin(a,b)
  %6512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.i32 %6512, 2
  %6514 = extractvalue %dx.types.CBufRet.i32 %6512, 3
  %6515 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6490, i32 %6513, i32 %6489)  ; UMad(a,b,c)
  %6516 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6511, i32 %6514, i32 %6515)  ; UMad(a,b,c)
  %6517 = add nsw i32 %6481, -1
  %6518 = call i32 @dx.op.binary.i32(i32 37, i32 %6517, i32 0)  ; IMax(a,b)
  %6519 = call float @dx.op.binary.f32(i32 35, float %102, float 0.000000e+00)  ; FMax(a,b)
  %6520 = fptoui float %6519 to i32
  %6521 = lshr i32 %6520, 5
  %6522 = call i32 @dx.op.binary.i32(i32 40, i32 %6521, i32 8191)  ; UMin(a,b)
  %6523 = shl i32 %6522, 2
  %6524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6523, i32 undef)  ; BufferLoad(srv,index,wot)
  %6525 = extractvalue %dx.types.ResRet.i32 %6524, 0
  %6526 = lshr i32 %6525, 16
  %6527 = and i32 %6525, 65535
  %6528 = lshr i32 %6525, 21
  %6529 = lshr i32 %6527, 5
  %6530 = call i32 @dx.op.binary.i32(i32 40, i32 %6529, i32 %6518)  ; UMin(a,b)
  %6531 = icmp ugt i32 %6528, %6530
  br i1 %6531, label %7103, label %6532

; <label>:6532                                    ; preds = %6483
  br label %6533

; <label>:6533                                    ; preds = %7093, %6532
  %6534 = phi i32 [ %7100, %7093 ], [ %6528, %6532 ]
  %6535 = phi float [ %7094, %7093 ], [ %6474, %6532 ]
  %6536 = phi float [ %7095, %7093 ], [ %6475, %6532 ]
  %6537 = phi float [ %7096, %7093 ], [ %6476, %6532 ]
  %6538 = phi float [ %7097, %7093 ], [ %6477, %6532 ]
  %6539 = phi float [ %7098, %7093 ], [ %6478, %6532 ]
  %6540 = phi float [ %7099, %7093 ], [ %6479, %6532 ]
  %6541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.i32 %6541, 0
  %6543 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6516, i32 %6542, i32 %6534)  ; UMad(a,b,c)
  %6544 = shl i32 %6543, 2
  %6545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6544, i32 undef)  ; BufferLoad(srv,index,wot)
  %6546 = extractvalue %dx.types.ResRet.i32 %6545, 0
  %6547 = shl i32 %6534, 5
  %6548 = sub nsw i32 %6526, %6547
  %6549 = call i32 @dx.op.binary.i32(i32 37, i32 %6548, i32 0)  ; IMax(a,b)
  %6550 = call i32 @dx.op.binary.i32(i32 38, i32 %6549, i32 31)  ; IMin(a,b)
  %6551 = sub nsw i32 1, %6526
  %6552 = add nsw i32 %6551, %6527
  %6553 = call i32 @dx.op.binary.i32(i32 37, i32 %6552, i32 0)  ; IMax(a,b)
  %6554 = call i32 @dx.op.binary.i32(i32 38, i32 %6553, i32 32)  ; IMin(a,b)
  %6555 = and i32 %6554, 31
  %6556 = shl i32 -1, %6555
  %6557 = xor i32 %6556, -1
  %6558 = and i32 %6550, 31
  %6559 = shl i32 %6557, %6558
  %6560 = icmp eq i32 %6554, 32
  %6561 = select i1 %6560, i32 -1, i32 %6559
  %6562 = and i32 %6561, %6546
  %6563 = icmp eq i32 %6562, 0
  br i1 %6563, label %7093, label %6564

; <label>:6564                                    ; preds = %6533
  br label %6565

; <label>:6565                                    ; preds = %6699, %6564
  %6566 = phi i32 [ %6577, %6699 ], [ %6562, %6564 ]
  %6567 = phi float [ %6700, %6699 ], [ %6535, %6564 ]
  %6568 = phi float [ %6701, %6699 ], [ %6536, %6564 ]
  %6569 = phi float [ %6702, %6699 ], [ %6537, %6564 ]
  %6570 = phi float [ %6703, %6699 ], [ %6538, %6564 ]
  %6571 = phi float [ %6704, %6699 ], [ %6539, %6564 ]
  %6572 = phi float [ %6705, %6699 ], [ %6540, %6564 ]
  %6573 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6566)  ; FirstbitLo(value)
  %6574 = add i32 %6573, %6547
  %6575 = and i32 %6573, 31
  %6576 = shl i32 1, %6575
  %6577 = xor i32 %6576, %6566
  %6578 = mul i32 %6574, 112
  %6579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6578, i32 undef)  ; BufferLoad(srv,index,wot)
  %6580 = extractvalue %dx.types.ResRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.ResRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.ResRet.f32 %6579, 2
  %6583 = or i32 %6578, 12
  %6584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6583, i32 undef)  ; BufferLoad(srv,index,wot)
  %6585 = extractvalue %dx.types.ResRet.f32 %6584, 0
  %6586 = add i32 %6578, 16
  %6587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6586, i32 undef)  ; BufferLoad(srv,index,wot)
  %6588 = extractvalue %dx.types.ResRet.f32 %6587, 0
  %6589 = extractvalue %dx.types.ResRet.f32 %6587, 1
  %6590 = extractvalue %dx.types.ResRet.f32 %6587, 2
  %6591 = add i32 %6578, 28
  %6592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6591, i32 undef)  ; BufferLoad(srv,index,wot)
  %6593 = extractvalue %dx.types.ResRet.i32 %6592, 0
  %6594 = add i32 %6578, 44
  %6595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6594, i32 undef)  ; BufferLoad(srv,index,wot)
  %6596 = extractvalue %dx.types.ResRet.f32 %6595, 0
  %6597 = add i32 %6578, 48
  %6598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6597, i32 undef)  ; BufferLoad(srv,index,wot)
  %6599 = extractvalue %dx.types.ResRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.ResRet.f32 %6598, 1
  %6601 = extractvalue %dx.types.ResRet.f32 %6598, 2
  %6602 = extractvalue %dx.types.ResRet.f32 %6598, 3
  %6603 = add i32 %6578, 64
  %6604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6603, i32 undef)  ; BufferLoad(srv,index,wot)
  %6605 = extractvalue %dx.types.ResRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.ResRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.ResRet.f32 %6604, 2
  %6608 = extractvalue %dx.types.ResRet.f32 %6604, 3
  %6609 = add i32 %6578, 80
  %6610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6609, i32 undef)  ; BufferLoad(srv,index,wot)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 1
  %6612 = extractvalue %dx.types.ResRet.f32 %6610, 2
  %6613 = add i32 %6578, 92
  %6614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6613, i32 undef)  ; BufferLoad(srv,index,wot)
  %6615 = extractvalue %dx.types.ResRet.i32 %6614, 0
  %6616 = call float @dx.op.dot3.f32(i32 55, float %6580, float %6581, float %6582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6617 = select i1 %253, float %6611, float %6580
  %6618 = select i1 %253, float %6616, float %6581
  %6619 = select i1 %253, float %6612, float %6582
  %6620 = and i32 %6615, 65535
  %6621 = uitofp i32 %6620 to float
  %6622 = lshr i32 %6615, 16
  %6623 = uitofp i32 %6622 to float
  %6624 = and i32 %6593, 65535
  %6625 = and i32 %6593, 50331648
  %6626 = icmp eq i32 %6625, 33554432
  %6627 = fsub fast float %6599, %194
  %6628 = fsub fast float %6600, %195
  %6629 = fsub fast float %6601, %196
  %6630 = call float @dx.op.dot3.f32(i32 55, float %6627, float %6628, float %6629, float %6627, float %6628, float %6629)  ; Dot3(ax,ay,az,bx,by,bz)
  %6631 = call float @dx.op.unary.f32(i32 24, float %6630)  ; Sqrt(value)
  %6632 = fdiv fast float 1.000000e+00, %6631
  %6633 = fmul fast float %6632, %6627
  %6634 = fmul fast float %6632, %6628
  %6635 = fmul fast float %6632, %6629
  %6636 = fadd fast float %6631, %6585
  %6637 = fdiv fast float 1.000000e+00, %6636
  %6638 = fmul float %6596, %6637
  %6639 = fmul float %6638, %6638
  %6640 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  br i1 %6626, label %6641, label %6662

; <label>:6641                                    ; preds = %6565
  %6642 = fmul fast float %6607, %6588
  %6643 = fmul fast float %6607, %6589
  %6644 = fmul fast float %6607, %6590
  %6645 = fadd fast float %6627, %6642
  %6646 = fadd fast float %6628, %6643
  %6647 = fadd fast float %6629, %6644
  %6648 = call float @dx.op.dot3.f32(i32 55, float %6645, float %6646, float %6647, float %6645, float %6646, float %6647)  ; Dot3(ax,ay,az,bx,by,bz)
  %6649 = call float @dx.op.unary.f32(i32 25, float %6648)  ; Rsqrt(value)
  %6650 = fmul fast float %6649, %6645
  %6651 = fmul fast float %6649, %6646
  %6652 = fmul fast float %6649, %6647
  %6653 = fsub fast float %194, %6599
  %6654 = fsub fast float %195, %6600
  %6655 = fsub fast float %196, %6601
  %6656 = fsub fast float -0.000000e+00, %6653
  %6657 = fsub fast float -0.000000e+00, %6654
  %6658 = fsub fast float -0.000000e+00, %6655
  %6659 = call float @dx.op.dot3.f32(i32 55, float %6656, float %6657, float %6658, float %6588, float %6589, float %6590)  ; Dot3(ax,ay,az,bx,by,bz)
  %6660 = fcmp fast ogt float %6659, 0.000000e+00
  %6661 = uitofp i1 %6660 to float
  br label %6662

; <label>:6662                                    ; preds = %6641, %6565
  %6663 = phi float [ %6661, %6641 ], [ 1.000000e+00, %6565 ]
  %6664 = phi float [ %6650, %6641 ], [ %6633, %6565 ]
  %6665 = phi float [ %6651, %6641 ], [ %6634, %6565 ]
  %6666 = phi float [ %6652, %6641 ], [ %6635, %6565 ]
  %6667 = call float @dx.op.dot3.f32(i32 55, float %6588, float %6589, float %6590, float %6664, float %6665, float %6666)  ; Dot3(ax,ay,az,bx,by,bz)
  %6668 = fmul fast float %6667, %6667
  %6669 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6670 = fsub fast float 1.000000e+00, %6669
  %6671 = fmul fast float %6670, 5.000000e-01
  %6672 = fcmp fast ogt float %6667, 0.000000e+00
  %6673 = fsub fast float 1.000000e+00, %6671
  %6674 = select i1 %6672, float %6671, float %6673
  %6675 = fmul fast float %6674, %6623
  %6676 = fadd fast float %6675, %6621
  %6677 = fmul fast float %6676, 0x3EF0001000000000
  %6678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6677, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6679 = extractvalue %dx.types.ResRet.f32 %6678, 0
  %6680 = fmul fast float %6667, %6605
  %6681 = fadd fast float %6680, %6606
  %6682 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6683 = select i1 %6626, float 1.000000e+00, float %6682
  %6684 = select i1 %6626, float %6682, float 1.000000e+00
  %6685 = fmul fast float %6631, %6602
  %6686 = fsub fast float 1.000000e+00, %6685
  %6687 = fmul fast float %6686, %6608
  %6688 = call float @dx.op.unary.f32(i32 7, float %6687)  ; Saturate(value)
  %6689 = fmul fast float %6688, %6684
  %6690 = fmul fast float %6689, 2.000000e+00
  %6691 = fsub fast float 3.000000e+00, %6690
  %6692 = fmul fast float %6679, %6663
  %6693 = fmul fast float %6689, %6689
  %6694 = fmul fast float %6693, %6692
  %6695 = fmul fast float %6694, %6691
  %6696 = call float @dx.op.binary.f32(i32 36, float %6695, float %6695)  ; FMin(a,b)
  %6697 = call float @dx.op.binary.f32(i32 36, float %6695, float %6696)  ; FMin(a,b)
  %6698 = fcmp fast ogt float %6697, 0.000000e+00
  br i1 %6698, label %6707, label %6699, !dx.controlflow.hints !124

; <label>:6699                                    ; preds = %7049, %6807, %6662
  %6700 = phi float [ %6567, %6807 ], [ %6567, %6662 ], [ %7089, %7049 ]
  %6701 = phi float [ %6568, %6807 ], [ %6568, %6662 ], [ %7090, %7049 ]
  %6702 = phi float [ %6569, %6807 ], [ %6569, %6662 ], [ %7091, %7049 ]
  %6703 = phi float [ %6570, %6807 ], [ %6570, %6662 ], [ %7083, %7049 ]
  %6704 = phi float [ %6571, %6807 ], [ %6571, %6662 ], [ %7084, %7049 ]
  %6705 = phi float [ %6572, %6807 ], [ %6572, %6662 ], [ %7085, %7049 ]
  %6706 = icmp eq i32 %6566, %6576
  br i1 %6706, label %7092, label %6565

; <label>:6707                                    ; preds = %6662
  %6708 = icmp eq i32 %6624, 255
  br i1 %6708, label %6807, label %6709, !dx.controlflow.hints !125

; <label>:6709                                    ; preds = %6707
  %6710 = mul nuw nsw i32 %6624, 176
  %6711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6710, i32 undef)  ; BufferLoad(srv,index,wot)
  %6712 = extractvalue %dx.types.ResRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.ResRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.ResRet.f32 %6711, 2
  %6715 = extractvalue %dx.types.ResRet.f32 %6711, 3
  %6716 = add nuw nsw i32 %6710, 16
  %6717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6716, i32 undef)  ; BufferLoad(srv,index,wot)
  %6718 = extractvalue %dx.types.ResRet.f32 %6717, 0
  %6719 = extractvalue %dx.types.ResRet.f32 %6717, 1
  %6720 = add nuw nsw i32 %6710, 32
  %6721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6720, i32 undef)  ; BufferLoad(srv,index,wot)
  %6722 = extractvalue %dx.types.ResRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.ResRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.ResRet.f32 %6721, 2
  %6725 = add nuw nsw i32 %6710, 48
  %6726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6725, i32 undef)  ; BufferLoad(srv,index,wot)
  %6727 = extractvalue %dx.types.ResRet.f32 %6726, 0
  %6728 = extractvalue %dx.types.ResRet.f32 %6726, 1
  %6729 = extractvalue %dx.types.ResRet.f32 %6726, 2
  %6730 = extractvalue %dx.types.ResRet.f32 %6726, 3
  %6731 = add nuw nsw i32 %6710, 64
  %6732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6731, i32 undef)  ; BufferLoad(srv,index,wot)
  %6733 = extractvalue %dx.types.ResRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.ResRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.ResRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.ResRet.f32 %6732, 3
  %6737 = add nuw nsw i32 %6710, 80
  %6738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6737, i32 undef)  ; BufferLoad(srv,index,wot)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.ResRet.f32 %6738, 2
  %6742 = extractvalue %dx.types.ResRet.f32 %6738, 3
  %6743 = add nuw nsw i32 %6710, 96
  %6744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6743, i32 undef)  ; BufferLoad(srv,index,wot)
  %6745 = extractvalue %dx.types.ResRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.ResRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.ResRet.f32 %6744, 2
  %6748 = extractvalue %dx.types.ResRet.f32 %6744, 3
  %6749 = bitcast float %6719 to i32
  %6750 = fmul fast float %6724, %120
  %6751 = fmul fast float %6724, %122
  %6752 = fmul fast float %6724, %124
  %6753 = fadd fast float %6750, %194
  %6754 = fadd fast float %6751, %195
  %6755 = fadd fast float %6752, %196
  %6756 = fmul fast float %6753, %6727
  %6757 = call float @dx.op.tertiary.f32(i32 46, float %6754, float %6733, float %6756)  ; FMad(a,b,c)
  %6758 = call float @dx.op.tertiary.f32(i32 46, float %6755, float %6739, float %6757)  ; FMad(a,b,c)
  %6759 = fadd fast float %6758, %6745
  %6760 = fmul fast float %6753, %6728
  %6761 = call float @dx.op.tertiary.f32(i32 46, float %6754, float %6734, float %6760)  ; FMad(a,b,c)
  %6762 = call float @dx.op.tertiary.f32(i32 46, float %6755, float %6740, float %6761)  ; FMad(a,b,c)
  %6763 = fadd fast float %6762, %6746
  %6764 = fmul fast float %6753, %6729
  %6765 = call float @dx.op.tertiary.f32(i32 46, float %6754, float %6735, float %6764)  ; FMad(a,b,c)
  %6766 = call float @dx.op.tertiary.f32(i32 46, float %6755, float %6741, float %6765)  ; FMad(a,b,c)
  %6767 = fadd fast float %6766, %6747
  %6768 = fmul fast float %6753, %6730
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %6754, float %6736, float %6768)  ; FMad(a,b,c)
  %6770 = call float @dx.op.tertiary.f32(i32 46, float %6755, float %6742, float %6769)  ; FMad(a,b,c)
  %6771 = fadd fast float %6770, %6748
  %6772 = fdiv fast float %6759, %6771
  %6773 = fdiv fast float %6763, %6771
  %6774 = fdiv fast float %6767, %6771
  %6775 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6774)  ; FMax(a,b)
  %6776 = fmul fast float %264, 0x401921FB60000000
  %6777 = call float @dx.op.unary.f32(i32 13, float %6776)  ; Sin(value)
  %6778 = call float @dx.op.unary.f32(i32 12, float %6776)  ; Cos(value)
  %6779 = fsub fast float -0.000000e+00, %6777
  %6780 = fmul fast float %6714, 5.000000e-01
  %6781 = call float @dx.op.dot2.f32(i32 54, float %264, float %264, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6782 = call float @dx.op.unary.f32(i32 22, float %6781)  ; Frc(value)
  %6783 = fmul fast float %6782, 0x404A7DD040000000
  %6784 = call float @dx.op.unary.f32(i32 22, float %6783)  ; Frc(value)
  %6785 = fmul fast float %6784, %6723
  %6786 = fadd fast float %6785, %6780
  %6787 = call float @dx.op.tertiary.f32(i32 46, float %6786, float %6779, float 0.000000e+00)  ; FMad(a,b,c)
  %6788 = call float @dx.op.tertiary.f32(i32 46, float %6786, float %6778, float 0.000000e+00)  ; FMad(a,b,c)
  %6789 = fadd fast float %6787, %6772
  %6790 = fadd fast float %6788, %6773
  %6791 = fmul fast float %6789, %6718
  %6792 = fmul fast float %6790, %6718
  %6793 = call float @dx.op.binary.f32(i32 35, float %6791, float %6714)  ; FMax(a,b)
  %6794 = call float @dx.op.binary.f32(i32 35, float %6792, float %6714)  ; FMax(a,b)
  %6795 = call float @dx.op.binary.f32(i32 36, float %6793, float %6715)  ; FMin(a,b)
  %6796 = call float @dx.op.binary.f32(i32 36, float %6794, float %6715)  ; FMin(a,b)
  %6797 = fadd fast float %6795, %6712
  %6798 = fadd fast float %6796, %6713
  %6799 = uitofp i32 %6749 to float
  %6800 = fadd fast float %6775, %6722
  %6801 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6797, float %6798, float %6799, float undef, i32 0, i32 0, i32 undef, float %6800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6802 = extractvalue %dx.types.ResRet.f32 %6801, 0
  %6803 = fadd fast float %6802, -1.000000e+00
  %6804 = fmul fast float %6803, %6683
  %6805 = fadd fast float %6804, 1.000000e+00
  %6806 = fmul fast float %6805, %6695
  br label %6807

; <label>:6807                                    ; preds = %6709, %6707
  %6808 = phi float [ %6806, %6709 ], [ %6695, %6707 ]
  %6809 = call float @dx.op.binary.f32(i32 36, float %6808, float %6808)  ; FMin(a,b)
  %6810 = call float @dx.op.binary.f32(i32 36, float %6808, float %6809)  ; FMin(a,b)
  %6811 = fcmp fast ogt float %6810, 0.000000e+00
  br i1 %6811, label %6812, label %6699, !dx.controlflow.hints !126

; <label>:6812                                    ; preds = %6807
  %6813 = fmul fast float %6808, %6617
  %6814 = fmul fast float %6808, %6618
  %6815 = fmul fast float %6808, %6619
  %6816 = fsub fast float %6601, %4234
  %6817 = fcmp fast ogt float %6816, 0.000000e+00
  %6818 = fsub fast float %196, %4234
  %6819 = fcmp fast ogt float %6818, 0.000000e+00
  %6820 = xor i1 %6819, %6817
  %6821 = fsub fast float %4234, %6601
  %6822 = fmul fast float %6821, 2.000000e+00
  %6823 = fadd fast float %6822, %6601
  %6824 = select i1 %6820, float %6601, float %6823
  %6825 = fsub fast float %6824, %196
  %6826 = call float @dx.op.dot3.f32(i32 55, float %6627, float %6628, float %6825, float %6627, float %6628, float %6825)  ; Dot3(ax,ay,az,bx,by,bz)
  %6827 = call float @dx.op.unary.f32(i32 25, float %6826)  ; Rsqrt(value)
  %6828 = fmul fast float %6827, %6627
  %6829 = fmul fast float %6827, %6628
  %6830 = fmul fast float %6827, %6825
  %6831 = fsub fast float %4234, %196
  %6832 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6831)  ; Dot3(ax,ay,az,bx,by,bz)
  %6833 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6828, float %6829, float %6830)  ; Dot3(ax,ay,az,bx,by,bz)
  %6834 = fdiv fast float 1.000000e+00, %6833
  %6835 = fmul fast float %6834, %6832
  %6836 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6818, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6837 = fcmp fast ogt float %6836, 0.000000e+00
  %6838 = fcmp fast olt float %6836, 0.000000e+00
  %6839 = zext i1 %6837 to i32
  %6840 = zext i1 %6838 to i32
  %6841 = sub nsw i32 %6839, %6840
  %6842 = sitofp i32 %6841 to float
  %6843 = fsub fast float %6824, %4234
  %6844 = call float @dx.op.dot3.f32(i32 55, float %6627, float %6628, float %6843, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6845 = fcmp fast ogt float %6844, 0.000000e+00
  %6846 = fcmp fast olt float %6844, 0.000000e+00
  %6847 = zext i1 %6845 to i32
  %6848 = zext i1 %6846 to i32
  %6849 = sub nsw i32 %6847, %6848
  %6850 = sitofp i32 %6849 to float
  %6851 = fcmp fast une float %6842, %6850
  br i1 %6851, label %6852, label %6862

; <label>:6852                                    ; preds = %6812
  %6853 = fmul fast float %6835, %6830
  %6854 = fmul fast float %6835, %6829
  %6855 = fmul fast float %6835, %6828
  %6856 = fmul fast float %6855, %6855
  %6857 = fmul fast float %6854, %6854
  %6858 = fadd fast float %6856, %6857
  %6859 = fmul fast float %6853, %6853
  %6860 = fadd fast float %6858, %6859
  %6861 = call float @dx.op.unary.f32(i32 24, float %6860)  ; Sqrt(value)
  br label %6874

; <label>:6862                                    ; preds = %6812
  %6863 = icmp slt i32 %6841, 0
  br i1 %6863, label %6864, label %6874

; <label>:6864                                    ; preds = %6862
  %6865 = fsub fast float %194, %6599
  %6866 = fsub fast float %195, %6600
  %6867 = fsub fast float %196, %6824
  %6868 = fmul fast float %6865, %6865
  %6869 = fmul fast float %6866, %6866
  %6870 = fadd fast float %6868, %6869
  %6871 = fmul fast float %6867, %6867
  %6872 = fadd fast float %6870, %6871
  %6873 = call float @dx.op.unary.f32(i32 24, float %6872)  ; Sqrt(value)
  br label %6874

; <label>:6874                                    ; preds = %6864, %6862, %6852
  %6875 = phi float [ %6861, %6852 ], [ %6873, %6864 ], [ 0.000000e+00, %6862 ]
  %6876 = and i1 %6819, %6817
  %6877 = fsub fast float -0.000000e+00, %6875
  %6878 = select i1 %6876, float -0.000000e+00, float %6877
  %6879 = fmul fast float %4235, 0x3FF7154760000000
  %6880 = fmul fast float %6879, %6878
  %6881 = fmul fast float %4236, 0x3FF7154760000000
  %6882 = fmul fast float %6881, %6878
  %6883 = fmul fast float %4237, 0x3FF7154760000000
  %6884 = fmul fast float %6883, %6878
  %6885 = call float @dx.op.unary.f32(i32 21, float %6880)  ; Exp(value)
  %6886 = call float @dx.op.unary.f32(i32 21, float %6882)  ; Exp(value)
  %6887 = call float @dx.op.unary.f32(i32 21, float %6884)  ; Exp(value)
  %6888 = call float @dx.op.unary.f32(i32 7, float %6885)  ; Saturate(value)
  %6889 = call float @dx.op.unary.f32(i32 7, float %6886)  ; Saturate(value)
  %6890 = call float @dx.op.unary.f32(i32 7, float %6887)  ; Saturate(value)
  %6891 = fmul fast float %6813, %6888
  %6892 = fmul fast float %6814, %6889
  %6893 = fmul fast float %6815, %6890
  %6894 = fsub fast float %6633, %5026
  %6895 = fsub fast float %6634, %5025
  %6896 = fsub fast float %6635, %5024
  %6897 = call float @dx.op.dot3.f32(i32 55, float %6894, float %6895, float %6896, float %6894, float %6895, float %6896)  ; Dot3(ax,ay,az,bx,by,bz)
  %6898 = call float @dx.op.unary.f32(i32 25, float %6897)  ; Rsqrt(value)
  %6899 = fmul fast float %6898, %6894
  %6900 = fmul fast float %6898, %6895
  %6901 = fmul fast float %6898, %6896
  %6902 = call float @dx.op.dot3.f32(i32 55, float %6633, float %6634, float %6635, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6903 = call float @dx.op.dot3.f32(i32 55, float %5023, float %5022, float %5021, float %6899, float %6900, float %6901)  ; Dot3(ax,ay,az,bx,by,bz)
  %6904 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6905 = fmul fast float %6904, %6640
  %6906 = fmul fast float %6904, %6904
  %6907 = fmul fast float %6906, %5054
  %6908 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  %6909 = fmul fast float %6905, %6908
  %6910 = bitcast float %6630 to i32
  %6911 = ashr i32 %6910, 1
  %6912 = sub nsw i32 1597463007, %6911
  %6913 = bitcast i32 %6912 to float
  %6914 = fmul fast float %6913, %6627
  %6915 = fmul fast float %6913, %6628
  %6916 = fmul fast float %6913, %6629
  %6917 = fsub fast float %6914, %5026
  %6918 = fsub fast float %6915, %5025
  %6919 = fsub fast float %6916, %5024
  %6920 = call float @dx.op.dot3.f32(i32 55, float %6917, float %6918, float %6919, float %6917, float %6918, float %6919)  ; Dot3(ax,ay,az,bx,by,bz)
  %6921 = call float @dx.op.unary.f32(i32 25, float %6920)  ; Rsqrt(value)
  %6922 = fmul fast float %6917, %6921
  %6923 = fmul fast float %6918, %6921
  %6924 = fmul fast float %6919, %6921
  %6925 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %6922, float %6923, float %6924)  ; Dot3(ax,ay,az,bx,by,bz)
  %6926 = fmul fast float %6925, %6925
  %6927 = call float @dx.op.unary.f32(i32 6, float %6902)  ; FAbs(value)
  %6928 = fsub fast float 1.000000e+00, %5036
  %6929 = call float @dx.op.binary.f32(i32 35, float %6928, float 0x3F847AE140000000)  ; FMax(a,b)
  %6930 = fmul fast float %6929, %6929
  %6931 = fmul fast float %6930, %6930
  %6932 = fsub fast float 1.000000e+00, %6931
  %6933 = fmul fast float %5041, %5041
  %6934 = fmul fast float %6933, %6932
  %6935 = fadd fast float %6934, %6931
  %6936 = bitcast float %6935 to i32
  %6937 = ashr i32 %6936, 1
  %6938 = add nsw i32 %6937, 532487669
  %6939 = bitcast i32 %6938 to float
  %6940 = fadd fast float %6939, %5041
  %6941 = fmul fast float %6931, %6926
  %6942 = fsub fast float 1.000000e+00, %6926
  %6943 = fadd fast float %6942, %6941
  %6944 = fmul fast float %6927, %6927
  %6945 = fmul fast float %6944, %6932
  %6946 = fadd fast float %6945, %6931
  %6947 = bitcast float %6946 to i32
  %6948 = ashr i32 %6947, 1
  %6949 = add nsw i32 %6948, 532487669
  %6950 = bitcast i32 %6949 to float
  %6951 = fadd fast float %6950, %6927
  %6952 = fmul fast float %6943, %6943
  %6953 = fmul fast float %6952, %6940
  %6954 = fmul fast float %6953, %6951
  %6955 = fdiv fast float 1.000000e+00, %6954
  %6956 = bitcast float %6931 to i32
  %6957 = sitofp i32 %6956 to float
  %6958 = fmul fast float %6957, 0x3FE7F73180000000
  %6959 = fadd fast float %6958, 0x41AFE27C40000000
  %6960 = fptosi float %6959 to i32
  %6961 = bitcast i32 %6960 to float
  %6962 = fmul fast float %6596, 0x3FD80E9D60000000
  %6963 = fmul fast float %6962, %6913
  %6964 = fadd fast float %6961, %6963
  %6965 = bitcast float %6964 to i32
  %6966 = sub nsw i32 2129859010, %6965
  %6967 = bitcast i32 %6966 to float
  %6968 = fmul fast float %6931, %6955
  %6969 = fmul fast float %6968, %6961
  %6970 = fmul fast float %6969, %6967
  %6971 = call float @dx.op.unary.f32(i32 6, float %6903)  ; FAbs(value)
  %6972 = fsub fast float 1.000000e+00, %6971
  %6973 = bitcast float %6972 to i32
  %6974 = sitofp i32 %6973 to float
  %6975 = fmul fast float %6974, 5.000000e+00
  %6976 = fadd fast float %6975, 0xC1EFBF8940000000
  %6977 = fptosi float %6976 to i32
  %6978 = bitcast i32 %6977 to float
  %6979 = fsub fast float 1.000000e+00, %5027
  %6980 = fsub fast float 1.000000e+00, %5028
  %6981 = fsub fast float 1.000000e+00, %5039
  %6982 = fmul fast float %6978, %6979
  %6983 = fmul fast float %6978, %6980
  %6984 = fmul fast float %6978, %6981
  %6985 = fadd fast float %6982, %5027
  %6986 = fadd fast float %6983, %5028
  %6987 = fadd fast float %6984, %5039
  br i1 %5301, label %6988, label %7011

; <label>:6988                                    ; preds = %6874
  %6989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3832, float %6971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6990 = extractvalue %dx.types.ResRet.f32 %6989, 0
  %6991 = extractvalue %dx.types.ResRet.f32 %6989, 1
  %6992 = extractvalue %dx.types.ResRet.f32 %6989, 2
  %6993 = fadd fast float %6990, -5.000000e-01
  %6994 = fadd fast float %6991, -5.000000e-01
  %6995 = fadd fast float %6992, -5.000000e-01
  %6996 = fmul fast float %5027, 4.000000e+00
  %6997 = fmul fast float %6996, %6979
  %6998 = fmul fast float %6997, %6993
  %6999 = fmul fast float %5028, 4.000000e+00
  %7000 = fmul fast float %6999, %6980
  %7001 = fmul fast float %7000, %6994
  %7002 = fmul fast float %5039, 4.000000e+00
  %7003 = fmul fast float %7002, %6981
  %7004 = fmul fast float %7003, %6995
  %7005 = fadd fast float %6998, %6985
  %7006 = fadd fast float %7001, %6986
  %7007 = fadd fast float %7004, %6987
  %7008 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  %7009 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7010 = call float @dx.op.unary.f32(i32 7, float %7007)  ; Saturate(value)
  br label %7011

; <label>:7011                                    ; preds = %6988, %6874
  %7012 = phi float [ %7008, %6988 ], [ %6985, %6874 ]
  %7013 = phi float [ %7009, %6988 ], [ %6986, %6874 ]
  %7014 = phi float [ %7010, %6988 ], [ %6987, %6874 ]
  %7015 = fmul fast float %6902, 9.843750e-01
  %7016 = fadd fast float %7015, 7.812500e-03
  %7017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %7016, float %5291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7018 = extractvalue %dx.types.ResRet.f32 %7017, 2
  %7019 = extractvalue %dx.types.ResRet.f32 %7017, 3
  %7020 = fmul fast float %7018, %5027
  %7021 = fmul fast float %7018, %5028
  %7022 = fmul fast float %7018, %5039
  %7023 = fadd fast float %7020, %7019
  %7024 = fadd fast float %7021, %7019
  %7025 = fadd fast float %7022, %7019
  br i1 %5301, label %7026, label %7049

; <label>:7026                                    ; preds = %7011
  %7027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3832, float %6902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7028 = extractvalue %dx.types.ResRet.f32 %7027, 0
  %7029 = extractvalue %dx.types.ResRet.f32 %7027, 1
  %7030 = extractvalue %dx.types.ResRet.f32 %7027, 2
  %7031 = fadd fast float %7028, -5.000000e-01
  %7032 = fadd fast float %7029, -5.000000e-01
  %7033 = fadd fast float %7030, -5.000000e-01
  %7034 = fmul fast float %5027, 4.000000e+00
  %7035 = fmul fast float %7034, %6979
  %7036 = fmul fast float %7035, %7031
  %7037 = fmul fast float %5028, 4.000000e+00
  %7038 = fmul fast float %7037, %6980
  %7039 = fmul fast float %7038, %7032
  %7040 = fmul fast float %5039, 4.000000e+00
  %7041 = fmul fast float %7040, %6981
  %7042 = fmul fast float %7041, %7033
  %7043 = fadd fast float %7036, %7023
  %7044 = fadd fast float %7039, %7024
  %7045 = fadd fast float %7042, %7025
  %7046 = call float @dx.op.unary.f32(i32 7, float %7043)  ; Saturate(value)
  %7047 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7048 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  br label %7049

; <label>:7049                                    ; preds = %7026, %7011
  %7050 = phi float [ %7046, %7026 ], [ %7023, %7011 ]
  %7051 = phi float [ %7047, %7026 ], [ %7024, %7011 ]
  %7052 = phi float [ %7048, %7026 ], [ %7025, %7011 ]
  %7053 = call float @dx.op.binary.f32(i32 35, float %7051, float %7052)  ; FMax(a,b)
  %7054 = call float @dx.op.binary.f32(i32 35, float %7050, float %7053)  ; FMax(a,b)
  %7055 = fsub fast float 1.000000e+00, %7054
  %7056 = fmul fast float %7012, %6970
  %7057 = fmul fast float %7013, %6970
  %7058 = fmul fast float %7014, %6970
  %7059 = fsub fast float 1.000000e+00, %6903
  %7060 = bitcast float %7059 to i32
  %7061 = sitofp i32 %7060 to float
  %7062 = fmul fast float %7061, 5.000000e+00
  %7063 = fadd fast float %7062, 0xC1EFBF8940000000
  %7064 = fptosi float %7063 to i32
  %7065 = bitcast i32 %7064 to float
  %7066 = fmul fast float %7065, %3833
  %7067 = fmul fast float %7055, %7066
  %7068 = fmul fast float %7067, %5351
  %7069 = fmul fast float %7067, %5352
  %7070 = fmul fast float %7067, %5353
  %7071 = fadd fast float %7068, %7056
  %7072 = fadd fast float %7069, %7057
  %7073 = fadd fast float %7070, %7058
  %7074 = fmul fast float %6891, %3829
  %7075 = fmul fast float %7074, %6909
  %7076 = fmul fast float %7075, %7055
  %7077 = fmul fast float %6892, %3829
  %7078 = fmul fast float %7077, %6909
  %7079 = fmul fast float %7078, %7055
  %7080 = fmul fast float %6893, %3829
  %7081 = fmul fast float %7080, %6909
  %7082 = fmul fast float %7081, %7055
  %7083 = fadd fast float %7076, %6570
  %7084 = fadd fast float %7079, %6571
  %7085 = fadd fast float %7082, %6572
  %7086 = fmul fast float %7075, %7071
  %7087 = fmul fast float %7078, %7072
  %7088 = fmul fast float %7081, %7073
  %7089 = fadd fast float %7086, %6567
  %7090 = fadd fast float %7087, %6568
  %7091 = fadd fast float %7088, %6569
  br label %6699

; <label>:7092                                    ; preds = %6699
  br label %7093

; <label>:7093                                    ; preds = %7092, %6533
  %7094 = phi float [ %6535, %6533 ], [ %6700, %7092 ]
  %7095 = phi float [ %6536, %6533 ], [ %6701, %7092 ]
  %7096 = phi float [ %6537, %6533 ], [ %6702, %7092 ]
  %7097 = phi float [ %6538, %6533 ], [ %6703, %7092 ]
  %7098 = phi float [ %6539, %6533 ], [ %6704, %7092 ]
  %7099 = phi float [ %6540, %6533 ], [ %6705, %7092 ]
  %7100 = add i32 %6534, 1
  %7101 = icmp ugt i32 %7100, %6530
  br i1 %7101, label %7102, label %6533

; <label>:7102                                    ; preds = %7093
  br label %7103

; <label>:7103                                    ; preds = %7102, %6483, %6473
  %7104 = phi float [ %6474, %6473 ], [ %6474, %6483 ], [ %7094, %7102 ]
  %7105 = phi float [ %6475, %6473 ], [ %6475, %6483 ], [ %7095, %7102 ]
  %7106 = phi float [ %6476, %6473 ], [ %6476, %6483 ], [ %7096, %7102 ]
  %7107 = phi float [ %6477, %6473 ], [ %6477, %6483 ], [ %7097, %7102 ]
  %7108 = phi float [ %6478, %6473 ], [ %6478, %6483 ], [ %7098, %7102 ]
  %7109 = phi float [ %6479, %6473 ], [ %6479, %6483 ], [ %7099, %7102 ]
  %7110 = fmul fast float %3829, %3829
  %7111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7112 = extractvalue %dx.types.CBufRet.f32 %7111, 0
  %7113 = fmul fast float %7112, %5357
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 3
  %7116 = fsub fast float 1.000000e+00, %3837
  %7117 = call float @dx.op.unary.f32(i32 7, float %7116)  ; Saturate(value)
  %7118 = fadd fast float %7109, %3835
  %7119 = fmul fast float %7118, %3837
  %7120 = fmul fast float %7117, %7115
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 3
  %7123 = fmul fast float %7107, %5033
  %7124 = fmul fast float %7108, %5034
  %7125 = fmul fast float %7109, %5035
  %7126 = fcmp fast ogt float %102, %216
  %7127 = and i1 %7126, %4240
  %7128 = or i1 %4246, %7127
  %7129 = icmp eq i32 %4239, 2
  %7130 = fcmp fast ole float %102, %216
  %7131 = and i1 %7130, %7129
  %7132 = or i1 %7131, %7128
  br i1 %7127, label %7133, label %7390

; <label>:7133                                    ; preds = %7103
  %7134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.f32 %7134, 2
  %7136 = extractvalue %dx.types.CBufRet.f32 %7134, 3
  %7137 = fmul fast float %7135, %111
  %7138 = fmul fast float %7136, %112
  %7139 = call float @dx.op.unary.f32(i32 7, float %7137)  ; Saturate(value)
  %7140 = call float @dx.op.unary.f32(i32 7, float %7138)  ; Saturate(value)
  %7141 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7139, float %7140, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7142 = extractvalue %dx.types.ResRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.ResRet.f32 %7141, 1
  %7144 = extractvalue %dx.types.ResRet.f32 %7141, 2
  %7145 = extractvalue %dx.types.ResRet.f32 %7141, 3
  %7146 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7139, float %7140, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7147 = extractvalue %dx.types.ResRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.ResRet.f32 %7146, 1
  %7149 = extractvalue %dx.types.ResRet.f32 %7146, 2
  %7150 = extractvalue %dx.types.ResRet.f32 %7146, 3
  %7151 = call float @dx.op.binary.f32(i32 35, float %7143, float %7144)  ; FMax(a,b)
  %7152 = call float @dx.op.binary.f32(i32 35, float %7142, float %7151)  ; FMax(a,b)
  %7153 = call float @dx.op.binary.f32(i32 35, float %7152, float %7145)  ; FMax(a,b)
  %7154 = call float @dx.op.binary.f32(i32 36, float %7148, float %7149)  ; FMin(a,b)
  %7155 = call float @dx.op.binary.f32(i32 36, float %7147, float %7154)  ; FMin(a,b)
  %7156 = call float @dx.op.binary.f32(i32 36, float %7155, float %7150)  ; FMin(a,b)
  %7157 = fmul fast float %7153, 2.550000e+02
  %7158 = fadd fast float %7157, 0x3F70101020000000
  %7159 = fptoui float %7158 to i32
  %7160 = fmul fast float %7156, 2.550000e+02
  %7161 = fadd fast float %7160, 0x3F70101020000000
  %7162 = fptoui float %7161 to i32
  %7163 = icmp ult i32 %7159, %7162
  br i1 %7163, label %7164, label %7332

; <label>:7164                                    ; preds = %7133
  %7165 = fcmp fast ogt float %101, 9.843750e-01
  %7166 = fadd fast float %102, -4.000000e+00
  %7167 = select i1 %7165, float -4.000000e+00, float %7166
  %7168 = call float @dx.op.binary.f32(i32 35, float %7167, float 0.000000e+00)  ; FMax(a,b)
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 0
  %7171 = fadd fast float %7170, %7168
  %7172 = extractvalue %dx.types.CBufRet.f32 %7169, 2
  %7173 = fmul fast float %7171, %7172
  %7174 = call float @dx.op.unary.f32(i32 23, float %7173)  ; Log(value)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7169, 3
  %7176 = fmul fast float %7175, %7174
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 2
  %7179 = fmul fast float %7176, %7178
  %7180 = call float @dx.op.unary.f32(i32 7, float %7179)  ; Saturate(value)
  %7181 = uitofp i32 %7159 to float
  %7182 = uitofp i32 %7162 to float
  %7183 = fadd fast float %7181, 5.000000e-01
  %7184 = fadd fast float %7182, 5.000000e-01
  %7185 = fmul fast float %7178, %7183
  %7186 = fmul fast float %7178, %7184
  %7187 = fadd fast float %7185, 0x3F0FFB4800000000
  %7188 = fadd fast float %7186, 0xBF0FFB4800000000
  %7189 = call float @dx.op.binary.f32(i32 35, float %7180, float %7187)  ; FMax(a,b)
  %7190 = call float @dx.op.binary.f32(i32 36, float %7189, float %7188)  ; FMin(a,b)
  %7191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7192 = extractvalue %dx.types.CBufRet.f32 %7191, 1
  %7193 = extractvalue %dx.types.CBufRet.f32 %7191, 2
  %7194 = extractvalue %dx.types.CBufRet.f32 %7191, 0
  %7195 = fmul fast float %7192, %7190
  %7196 = fadd fast float %7194, %7195
  %7197 = fadd fast float %7194, %7193
  %7198 = fsub fast float %7192, %7193
  %7199 = fadd fast float %7198, %7194
  %7200 = call float @dx.op.binary.f32(i32 35, float %7196, float %7197)  ; FMax(a,b)
  %7201 = call float @dx.op.binary.f32(i32 36, float %7200, float %7199)  ; FMin(a,b)
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7139, float %7140, float %7201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = extractvalue %dx.types.ResRet.f32 %7202, 1
  %7205 = extractvalue %dx.types.ResRet.f32 %7202, 2
  %7206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.i32 %7206, 0
  %7208 = extractvalue %dx.types.CBufRet.i32 %7206, 1
  %7209 = uitofp i32 %7207 to float
  %7210 = uitofp i32 %7208 to float
  %7211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7212 = extractvalue %dx.types.CBufRet.f32 %7211, 0
  %7213 = extractvalue %dx.types.CBufRet.f32 %7211, 1
  %7214 = fmul fast float %7209, %7139
  %7215 = fmul fast float %7210, %7140
  %7216 = fadd fast float %7214, -5.000000e-01
  %7217 = fadd fast float %7215, -5.000000e-01
  %7218 = call float @dx.op.unary.f32(i32 22, float %7216)  ; Frc(value)
  %7219 = call float @dx.op.unary.f32(i32 22, float %7217)  ; Frc(value)
  %7220 = fmul fast float %7218, %7218
  %7221 = fmul fast float %7220, %7218
  %7222 = fsub fast float 3.000000e+00, %7218
  %7223 = fmul fast float %7220, %7222
  %7224 = fmul fast float %7218, 3.000000e+00
  %7225 = fmul fast float %7221, 3.000000e+00
  %7226 = fmul fast float %7220, 6.000000e+00
  %7227 = fsub fast float %7225, %7226
  %7228 = fadd fast float %7227, 4.000000e+00
  %7229 = fmul fast float %7228, 0x3FC5555560000000
  %7230 = fmul fast float %7221, -3.000000e+00
  %7231 = fadd fast float %7220, %7218
  %7232 = fmul fast float %7231, 3.000000e+00
  %7233 = fadd fast float %7230, 1.000000e+00
  %7234 = fadd fast float %7233, %7232
  %7235 = fmul fast float %7221, 0x3FC5555560000000
  %7236 = fmul fast float %7219, %7219
  %7237 = fmul fast float %7236, %7219
  %7238 = fsub fast float 3.000000e+00, %7219
  %7239 = fmul fast float %7236, %7238
  %7240 = fmul fast float %7219, 3.000000e+00
  %7241 = fmul fast float %7237, 3.000000e+00
  %7242 = fmul fast float %7236, 6.000000e+00
  %7243 = fsub fast float %7241, %7242
  %7244 = fadd fast float %7243, 4.000000e+00
  %7245 = fmul fast float %7244, 0x3FC5555560000000
  %7246 = fmul fast float %7237, -3.000000e+00
  %7247 = fadd fast float %7236, %7219
  %7248 = fmul fast float %7247, 3.000000e+00
  %7249 = fadd fast float %7246, 1.000000e+00
  %7250 = fadd fast float %7249, %7248
  %7251 = fmul fast float %7237, 0x3FC5555560000000
  %7252 = fadd fast float %7218, 1.000000e+00
  %7253 = fsub fast float 1.000000e+00, %7224
  %7254 = fadd fast float %7253, %7223
  %7255 = fadd fast float %7254, %7228
  %7256 = fmul fast float %7255, 0x3FC5555560000000
  %7257 = fdiv fast float %7229, %7256
  %7258 = fsub fast float %7252, %7257
  %7259 = fsub fast float 1.000000e+00, %7218
  %7260 = fadd fast float %7234, %7221
  %7261 = fmul fast float %7260, 0x3FC5555560000000
  %7262 = fdiv fast float %7235, %7261
  %7263 = fadd fast float %7259, %7262
  %7264 = fadd fast float %7219, 1.000000e+00
  %7265 = fsub fast float 1.000000e+00, %7240
  %7266 = fadd fast float %7265, %7239
  %7267 = fadd fast float %7266, %7244
  %7268 = fmul fast float %7267, 0x3FC5555560000000
  %7269 = fdiv fast float %7245, %7268
  %7270 = fsub fast float %7264, %7269
  %7271 = fsub fast float 1.000000e+00, %7219
  %7272 = fadd fast float %7250, %7237
  %7273 = fmul fast float %7272, 0x3FC5555560000000
  %7274 = fdiv fast float %7251, %7273
  %7275 = fadd fast float %7274, %7271
  %7276 = fmul fast float %7258, %7212
  %7277 = fsub fast float %7139, %7276
  %7278 = fmul fast float %7263, %7212
  %7279 = fadd fast float %7278, %7139
  %7280 = fmul fast float %7275, %7213
  %7281 = fadd fast float %7280, %7140
  %7282 = fmul fast float %7270, %7213
  %7283 = fsub fast float %7140, %7282
  %7284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7277, float %7283, float %7201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7285 = extractvalue %dx.types.ResRet.f32 %7284, 0
  %7286 = extractvalue %dx.types.ResRet.f32 %7284, 1
  %7287 = extractvalue %dx.types.ResRet.f32 %7284, 2
  %7288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7279, float %7283, float %7201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7289 = extractvalue %dx.types.ResRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.ResRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.ResRet.f32 %7288, 2
  %7292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7277, float %7281, float %7201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.ResRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.ResRet.f32 %7292, 2
  %7296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7279, float %7281, float %7201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7297 = extractvalue %dx.types.ResRet.f32 %7296, 0
  %7298 = extractvalue %dx.types.ResRet.f32 %7296, 1
  %7299 = extractvalue %dx.types.ResRet.f32 %7296, 2
  %7300 = fsub fast float %7293, %7285
  %7301 = fsub fast float %7294, %7286
  %7302 = fsub fast float %7295, %7287
  %7303 = fmul fast float %7300, %7273
  %7304 = fmul fast float %7301, %7273
  %7305 = fmul fast float %7302, %7273
  %7306 = fadd fast float %7303, %7285
  %7307 = fadd fast float %7304, %7286
  %7308 = fadd fast float %7305, %7287
  %7309 = fsub fast float %7297, %7289
  %7310 = fsub fast float %7298, %7290
  %7311 = fsub fast float %7299, %7291
  %7312 = fmul fast float %7309, %7273
  %7313 = fmul fast float %7310, %7273
  %7314 = fmul fast float %7311, %7273
  %7315 = fsub fast float %7289, %7306
  %7316 = fadd fast float %7315, %7312
  %7317 = fsub fast float %7290, %7307
  %7318 = fadd fast float %7317, %7313
  %7319 = fsub fast float %7291, %7308
  %7320 = fadd fast float %7319, %7314
  %7321 = fmul fast float %7316, %7261
  %7322 = fmul fast float %7318, %7261
  %7323 = fmul fast float %7320, %7261
  %7324 = fadd fast float %7321, %7306
  %7325 = fadd fast float %7322, %7307
  %7326 = fadd fast float %7323, %7308
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 1
  %7329 = fmul fast float %7324, %7328
  %7330 = fmul fast float %7325, %7328
  %7331 = fmul fast float %7326, %7328
  br label %7332

; <label>:7332                                    ; preds = %7164, %7133
  %7333 = phi float [ %7203, %7164 ], [ 1.000000e+00, %7133 ]
  %7334 = phi float [ %7204, %7164 ], [ 1.000000e+00, %7133 ]
  %7335 = phi float [ %7205, %7164 ], [ 1.000000e+00, %7133 ]
  %7336 = phi float [ %7329, %7164 ], [ 0.000000e+00, %7133 ]
  %7337 = phi float [ %7330, %7164 ], [ 0.000000e+00, %7133 ]
  %7338 = phi float [ %7331, %7164 ], [ 0.000000e+00, %7133 ]
  %7339 = fmul fast float %7336, %7110
  %7340 = fmul fast float %7337, %7110
  %7341 = fmul fast float %7338, %7110
  %7342 = call float @dx.op.dot3.f32(i32 55, float %7333, float %7334, float %7335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7343 = call float @dx.op.dot3.f32(i32 55, float %7339, float %7340, float %7341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7344 = select i1 %253, float %7342, float %7333
  %7345 = select i1 %253, float %7342, float %7334
  %7346 = select i1 %253, float 1.000000e+00, float %7335
  %7347 = select i1 %253, float %7343, float %7339
  %7348 = select i1 %253, float 0.000000e+00, float %7340
  %7349 = select i1 %253, float 0.000000e+00, float %7341
  %7350 = fmul fast float %7344, %7123
  %7351 = fmul fast float %7345, %7124
  %7352 = fmul fast float %7346, %7125
  %7353 = fadd fast float %7350, %7347
  %7354 = fadd fast float %7351, %7348
  %7355 = fadd fast float %7349, %7352
  %7356 = fmul fast float %7344, %7104
  %7357 = fmul fast float %7345, %7105
  %7358 = fmul fast float %7346, %7106
  %7359 = fmul fast float %143, %7135
  %7360 = fmul fast float %145, %7136
  %7361 = fsub fast float 1.000000e+00, %7359
  %7362 = fsub fast float 1.000000e+00, %7360
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7365 = extractvalue %dx.types.CBufRet.f32 %7363, 1
  %7366 = extractvalue %dx.types.CBufRet.f32 %7363, 2
  %7367 = fmul fast float %7361, %7364
  %7368 = fmul fast float %7361, %7365
  %7369 = fmul fast float %7361, %7366
  %7370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.f32 %7370, 0
  %7372 = extractvalue %dx.types.CBufRet.f32 %7370, 1
  %7373 = extractvalue %dx.types.CBufRet.f32 %7370, 2
  %7374 = fmul fast float %7362, %7371
  %7375 = fmul fast float %7362, %7372
  %7376 = fmul fast float %7362, %7373
  %7377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.CBufRet.f32 %7377, 1
  %7380 = extractvalue %dx.types.CBufRet.f32 %7377, 2
  %7381 = fadd fast float %7374, %7378
  %7382 = fadd fast float %7381, %7367
  %7383 = fadd fast float %7375, %7379
  %7384 = fadd fast float %7383, %7368
  %7385 = fadd fast float %7376, %7380
  %7386 = fadd fast float %7385, %7369
  %7387 = fmul fast float %7382, %216
  %7388 = fmul fast float %7384, %216
  %7389 = fmul fast float %7386, %216
  br label %7390

; <label>:7390                                    ; preds = %7332, %7103
  %7391 = phi float [ %7387, %7332 ], [ %194, %7103 ]
  %7392 = phi float [ %7388, %7332 ], [ %195, %7103 ]
  %7393 = phi float [ %7389, %7332 ], [ %196, %7103 ]
  %7394 = phi float [ %216, %7332 ], [ %102, %7103 ]
  %7395 = phi float [ %7353, %7332 ], [ %7123, %7103 ]
  %7396 = phi float [ %7354, %7332 ], [ %7124, %7103 ]
  %7397 = phi float [ %7355, %7332 ], [ %7125, %7103 ]
  %7398 = phi float [ %7356, %7332 ], [ %7104, %7103 ]
  %7399 = phi float [ %7357, %7332 ], [ %7105, %7103 ]
  %7400 = phi float [ %7358, %7332 ], [ %7106, %7103 ]
  %7401 = phi float [ %7333, %7332 ], [ 1.000000e+00, %7103 ]
  br i1 %7132, label %8556, label %7402

; <label>:7402                                    ; preds = %7390
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.CBufRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7407 = extractvalue %dx.types.CBufRet.f32 %7403, 3
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 0
  %7410 = extractvalue %dx.types.CBufRet.f32 %7408, 1
  %7411 = extractvalue %dx.types.CBufRet.f32 %7408, 2
  %7412 = extractvalue %dx.types.CBufRet.f32 %7408, 3
  %7413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7414 = extractvalue %dx.types.CBufRet.f32 %7413, 0
  %7415 = extractvalue %dx.types.CBufRet.f32 %7413, 1
  %7416 = extractvalue %dx.types.CBufRet.f32 %7413, 2
  %7417 = extractvalue %dx.types.CBufRet.f32 %7413, 3
  %7418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7418, 0
  %7420 = extractvalue %dx.types.CBufRet.f32 %7418, 1
  %7421 = extractvalue %dx.types.CBufRet.f32 %7418, 2
  %7422 = extractvalue %dx.types.CBufRet.f32 %7418, 3
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 3
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 3
  %7427 = extractvalue %dx.types.CBufRet.f32 %7425, 0
  %7428 = extractvalue %dx.types.CBufRet.f32 %7425, 1
  %7429 = extractvalue %dx.types.CBufRet.f32 %7425, 2
  %7430 = fcmp fast olt float %7429, -5.000000e-01
  %7431 = call float @dx.op.dot3.f32(i32 55, float %7391, float %7392, float %7393, float %7391, float %7392, float %7393)  ; Dot3(ax,ay,az,bx,by,bz)
  %7432 = call float @dx.op.unary.f32(i32 25, float %7431)  ; Rsqrt(value)
  %7433 = fmul fast float %7432, %7431
  %7434 = fmul fast float %7432, %7391
  %7435 = fmul fast float %7432, %7392
  %7436 = fmul fast float %7432, %7393
  %7437 = fadd fast float %7433, %7407
  %7438 = call float @dx.op.dot3.f32(i32 55, float %7434, float %7435, float %7436, float %7404, float %7405, float %7406)  ; Dot3(ax,ay,az,bx,by,bz)
  %7439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7440 = extractvalue %dx.types.CBufRet.i32 %7439, 1
  %7441 = and i32 %7440, 1
  %7442 = icmp ne i32 %7441, 0
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7445 = fcmp fast ogt float %7444, 0.000000e+00
  %7446 = and i1 %7442, %7445
  br i1 %7446, label %7447, label %7853, !dx.controlflow.hints !127

; <label>:7447                                    ; preds = %7402
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 3
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 2
  %7452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7453 = extractvalue %dx.types.CBufRet.f32 %7452, 2
  %7454 = fsub fast float %7451, %7453
  %7455 = and i32 %7440, 2
  %7456 = extractvalue %dx.types.CBufRet.i32 %7439, 0
  %7457 = call i32 @dx.op.binary.i32(i32 40, i32 %7456, i32 3)  ; UMin(a,b)
  %7458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.CBufRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.CBufRet.f32 %7452, 0
  %7462 = extractvalue %dx.types.CBufRet.f32 %7452, 1
  %7463 = fsub fast float %7459, %7461
  %7464 = fsub fast float %7460, %7462
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7465, 0
  %7467 = fcmp fast ogt float %7466, 0.000000e+00
  %7468 = fsub fast float -0.000000e+00, %7463
  %7469 = fsub fast float -0.000000e+00, %7464
  %7470 = call float @dx.op.dot2.f32(i32 54, float %7434, float %7435, float %7434, float %7435)  ; Dot2(ax,ay,bx,by)
  %7471 = call float @dx.op.dot2.f32(i32 54, float %7434, float %7435, float %7468, float %7469)  ; Dot2(ax,ay,bx,by)
  %7472 = fmul fast float %7471, 2.000000e+00
  %7473 = call float @dx.op.dot2.f32(i32 54, float %7468, float %7469, float %7468, float %7469)  ; Dot2(ax,ay,bx,by)
  %7474 = fmul fast float %7466, %7466
  %7475 = fsub fast float %7473, %7474
  %7476 = fmul fast float %7472, %7472
  %7477 = fmul fast float %7470, 4.000000e+00
  %7478 = fmul fast float %7477, %7475
  %7479 = fsub fast float %7476, %7478
  %7480 = fcmp fast ogt float %7479, 0.000000e+00
  br i1 %7480, label %7481, label %7496

; <label>:7481                                    ; preds = %7447
  %7482 = fcmp fast ogt float %7472, 0.000000e+00
  %7483 = call float @dx.op.unary.f32(i32 24, float %7479)  ; Sqrt(value)
  %7484 = fsub fast float -0.000000e+00, %7483
  %7485 = select i1 %7482, float %7483, float %7484
  %7486 = fadd fast float %7485, %7472
  %7487 = fmul float %7486, -5.000000e-01
  %7488 = fdiv fast float %7487, %7470
  %7489 = call float @dx.op.binary.f32(i32 35, float %7488, float 0.000000e+00)  ; FMax(a,b)
  %7490 = call float @dx.op.binary.f32(i32 36, float %7433, float %7489)  ; FMin(a,b)
  %7491 = fdiv fast float %7475, %7487
  %7492 = call float @dx.op.binary.f32(i32 35, float %7491, float 0.000000e+00)  ; FMax(a,b)
  %7493 = call float @dx.op.binary.f32(i32 36, float %7433, float %7492)  ; FMin(a,b)
  %7494 = call float @dx.op.binary.f32(i32 36, float %7490, float %7493)  ; FMin(a,b)
  %7495 = call float @dx.op.binary.f32(i32 35, float %7490, float %7493)  ; FMax(a,b)
  br label %7496

; <label>:7496                                    ; preds = %7481, %7447
  %7497 = phi float [ %7495, %7481 ], [ -1.000000e+00, %7447 ]
  %7498 = phi float [ %7494, %7481 ], [ -1.000000e+00, %7447 ]
  %7499 = phi i1 [ true, %7481 ], [ false, %7447 ]
  %7500 = and i1 %7467, %7499
  br i1 %7500, label %7501, label %7503

; <label>:7501                                    ; preds = %7496
  %7502 = fcmp fast oeq float %7498, %7497
  br i1 %7502, label %7806, label %7504

; <label>:7503                                    ; preds = %7496
  br i1 %7467, label %7806, label %7504

; <label>:7504                                    ; preds = %7503, %7501
  %7505 = phi float [ %7433, %7503 ], [ %7497, %7501 ]
  %7506 = phi float [ 0.000000e+00, %7503 ], [ %7498, %7501 ]
  %7507 = icmp ne i32 %7455, 0
  %7508 = fmul fast float %7505, %7436
  %7509 = fadd fast float %7508, %7449
  %7510 = fmul fast float %7509, %7505
  %7511 = select i1 %7507, float 0.000000e+00, float %7510
  %7512 = fcmp fast oeq float %7436, 0.000000e+00
  %7513 = fdiv fast float %7454, %7436
  %7514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7513)  ; FMax(a,b)
  %7515 = select i1 %7512, float %7505, float %7514
  %7516 = call float @dx.op.binary.f32(i32 36, float %7505, float %7515)  ; FMin(a,b)
  %7517 = fcmp fast ogt float %7436, 0.000000e+00
  %7518 = fcmp fast olt float %7454, 0.000000e+00
  br i1 %7517, label %7519, label %7576

; <label>:7519                                    ; preds = %7504
  %7520 = icmp eq i32 %7455, 0
  br i1 %7518, label %7521, label %7565

; <label>:7521                                    ; preds = %7519
  %7522 = select i1 %7520, float %7505, float 0.000000e+00
  %7523 = fsub fast float -0.000000e+00, %7522
  %7524 = call float @dx.op.unary.f32(i32 6, float %7523)  ; FAbs(value)
  %7525 = fmul fast float %7522, %7436
  %7526 = fadd fast float %7525, %7449
  %7527 = fmul fast float %7524, %7526
  %7528 = fsub fast float %7511, %7527
  %7529 = fsub fast float %7505, %7524
  %7530 = select i1 %7520, float %7529, float 0.000000e+00
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 0
  %7533 = extractvalue %dx.types.CBufRet.f32 %7531, 1
  %7534 = extractvalue %dx.types.CBufRet.f32 %7531, 2
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7538 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7539 = extractvalue %dx.types.CBufRet.f32 %7535, 3
  %7540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7541 = extractvalue %dx.types.CBufRet.f32 %7540, 3
  %7542 = call float @dx.op.binary.f32(i32 36, float %7528, float %7541)  ; FMin(a,b)
  %7543 = fmul fast float %7539, %7530
  %7544 = call float @dx.op.unary.f32(i32 7, float %7543)  ; Saturate(value)
  %7545 = fsub fast float %7536, %7532
  %7546 = fsub fast float %7537, %7533
  %7547 = fsub fast float %7538, %7534
  %7548 = fmul fast float %7544, %7545
  %7549 = fmul fast float %7544, %7546
  %7550 = fmul fast float %7544, %7547
  %7551 = fadd fast float %7548, %7532
  %7552 = fadd fast float %7549, %7533
  %7553 = fadd fast float %7550, %7534
  %7554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7555 = extractvalue %dx.types.CBufRet.f32 %7554, 0
  %7556 = extractvalue %dx.types.CBufRet.f32 %7554, 1
  %7557 = fadd fast float %7556, %7555
  %7558 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7559 = extractvalue %dx.types.CBufRet.f32 %7554, 2
  %7560 = extractvalue %dx.types.CBufRet.f32 %7554, 3
  %7561 = fadd fast float %7560, %7559
  %7562 = call float @dx.op.unary.f32(i32 7, float %7561)  ; Saturate(value)
  %7563 = fmul fast float %7558, %7542
  %7564 = fmul fast float %7563, %7562
  br label %7806

; <label>:7565                                    ; preds = %7519
  br i1 %7520, label %7566, label %7587

; <label>:7566                                    ; preds = %7565
  %7567 = call float @dx.op.binary.f32(i32 36, float %7516, float %7506)  ; FMin(a,b)
  %7568 = fsub fast float %7516, %7567
  %7569 = fsub fast float %7568, %7505
  %7570 = call float @dx.op.unary.f32(i32 6, float %7569)  ; FAbs(value)
  %7571 = fadd fast float %7568, %7505
  %7572 = fmul fast float %7571, %7436
  %7573 = fadd fast float %7572, %7449
  %7574 = fmul fast float %7573, %7570
  %7575 = fsub fast float %7511, %7574
  br label %7587

; <label>:7576                                    ; preds = %7504
  br i1 %7518, label %7577, label %7587

; <label>:7577                                    ; preds = %7576
  %7578 = call float @dx.op.binary.f32(i32 35, float %7506, float %7516)  ; FMax(a,b)
  %7579 = icmp eq i32 %7455, 0
  %7580 = select i1 %7579, float %7516, float 0.000000e+00
  %7581 = fsub fast float -0.000000e+00, %7580
  %7582 = call float @dx.op.unary.f32(i32 6, float %7581)  ; FAbs(value)
  %7583 = fmul fast float %7580, %7436
  %7584 = fadd fast float %7583, %7449
  %7585 = fmul fast float %7582, %7584
  %7586 = fsub fast float %7511, %7585
  br label %7587

; <label>:7587                                    ; preds = %7577, %7576, %7566, %7565
  %7588 = phi float [ %7506, %7565 ], [ %7506, %7566 ], [ %7578, %7577 ], [ %7506, %7576 ]
  %7589 = phi float [ 0.000000e+00, %7565 ], [ %7570, %7566 ], [ %7582, %7577 ], [ 0.000000e+00, %7576 ]
  %7590 = phi float [ %7511, %7565 ], [ %7575, %7566 ], [ %7586, %7577 ], [ %7511, %7576 ]
  %7591 = phi float [ %7516, %7565 ], [ %7516, %7566 ], [ %7505, %7577 ], [ %7505, %7576 ]
  %7592 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7592, align 4, !tbaa !128, !noalias !130
  %7593 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7593, align 4, !tbaa !128, !noalias !130
  %7594 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7594, align 4, !tbaa !128, !noalias !130
  %7595 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %7595, align 4, !tbaa !128, !noalias !130
  %7596 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %7596, align 4, !tbaa !128, !noalias !130
  %7597 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %7597, align 4, !tbaa !128, !noalias !130
  %7598 = icmp sgt i32 %7457, 0
  br i1 %7598, label %7599, label %7660

; <label>:7599                                    ; preds = %7587
  br label %7600

; <label>:7600                                    ; preds = %7649, %7599
  %7601 = phi i32 [ %7650, %7649 ], [ 0, %7599 ]
  %7602 = phi i32 [ %7651, %7649 ], [ 0, %7599 ]
  %7603 = add nuw i32 %7602, 171
  %7604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7603)  ; CBufferLoadLegacy(handle,regIndex)
  %7605 = extractvalue %dx.types.CBufRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.CBufRet.f32 %7604, 1
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 0
  %7609 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7610 = fsub fast float %7605, %7608
  %7611 = fsub fast float %7606, %7609
  %7612 = extractvalue %dx.types.CBufRet.f32 %7604, 2
  %7613 = fsub fast float -0.000000e+00, %7610
  %7614 = fsub fast float -0.000000e+00, %7611
  %7615 = call float @dx.op.dot2.f32(i32 54, float %7434, float %7435, float %7613, float %7614)  ; Dot2(ax,ay,bx,by)
  %7616 = fmul fast float %7615, 2.000000e+00
  %7617 = call float @dx.op.dot2.f32(i32 54, float %7613, float %7614, float %7613, float %7614)  ; Dot2(ax,ay,bx,by)
  %7618 = fmul fast float %7612, %7612
  %7619 = fsub fast float %7617, %7618
  %7620 = fmul fast float %7616, %7616
  %7621 = fmul fast float %7477, %7619
  %7622 = fsub fast float %7620, %7621
  %7623 = fcmp fast ogt float %7622, 0.000000e+00
  br i1 %7623, label %7624, label %7639

; <label>:7624                                    ; preds = %7600
  %7625 = fcmp fast ogt float %7616, 0.000000e+00
  %7626 = call float @dx.op.unary.f32(i32 24, float %7622)  ; Sqrt(value)
  %7627 = fsub fast float -0.000000e+00, %7626
  %7628 = select i1 %7625, float %7626, float %7627
  %7629 = fadd fast float %7628, %7616
  %7630 = fmul float %7629, -5.000000e-01
  %7631 = fdiv fast float %7630, %7470
  %7632 = call float @dx.op.binary.f32(i32 35, float %7631, float 0.000000e+00)  ; FMax(a,b)
  %7633 = call float @dx.op.binary.f32(i32 36, float %7505, float %7632)  ; FMin(a,b)
  %7634 = fdiv fast float %7619, %7630
  %7635 = call float @dx.op.binary.f32(i32 35, float %7634, float 0.000000e+00)  ; FMax(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7505, float %7635)  ; FMin(a,b)
  %7637 = call float @dx.op.binary.f32(i32 36, float %7633, float %7636)  ; FMin(a,b)
  %7638 = call float @dx.op.binary.f32(i32 35, float %7633, float %7636)  ; FMax(a,b)
  br label %7639

; <label>:7639                                    ; preds = %7624, %7600
  %7640 = phi float [ %7638, %7624 ], [ -1.000000e+00, %7600 ]
  %7641 = phi float [ %7637, %7624 ], [ -1.000000e+00, %7600 ]
  %7642 = phi i1 [ true, %7624 ], [ false, %7600 ]
  br i1 %7642, label %7643, label %7649

; <label>:7643                                    ; preds = %7639
  %7644 = call float @dx.op.binary.f32(i32 35, float %7588, float %7641)  ; FMax(a,b)
  %7645 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7602
  store float %7644, float* %7645, align 4, !tbaa !128, !noalias !130
  %7646 = call float @dx.op.binary.f32(i32 35, float %7588, float %7640)  ; FMax(a,b)
  %7647 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %7602
  store float %7646, float* %7647, align 4, !tbaa !128, !noalias !130
  %7648 = add nsw i32 %7601, 1
  br label %7649

; <label>:7649                                    ; preds = %7643, %7639
  %7650 = phi i32 [ %7648, %7643 ], [ %7601, %7639 ]
  %7651 = add nuw nsw i32 %7602, 1
  %7652 = icmp eq i32 %7651, %7457
  br i1 %7652, label %7653, label %7600

; <label>:7653                                    ; preds = %7649
  %7654 = load float, float* %7594, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7655 = load float, float* %7593, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %7656 = load float, float* %7592, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %7657 = load float, float* %7597, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7658 = load float, float* %7596, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %7659 = load float, float* %7595, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %7660

; <label>:7660                                    ; preds = %7653, %7587
  %7661 = phi float [ -1.000000e+00, %7587 ], [ %7659, %7653 ]
  %7662 = phi float [ -1.000000e+00, %7587 ], [ %7658, %7653 ]
  %7663 = phi float [ -1.000000e+00, %7587 ], [ %7657, %7653 ]
  %7664 = phi float [ -1.000000e+00, %7587 ], [ %7656, %7653 ]
  %7665 = phi float [ -1.000000e+00, %7587 ], [ %7655, %7653 ]
  %7666 = phi float [ -1.000000e+00, %7587 ], [ %7654, %7653 ]
  %7667 = phi i32 [ 0, %7587 ], [ %7650, %7653 ]
  %7668 = call float @dx.op.binary.f32(i32 36, float %7665, float %7666)  ; FMin(a,b)
  %7669 = call float @dx.op.binary.f32(i32 36, float %7664, float %7668)  ; FMin(a,b)
  %7670 = call float @dx.op.binary.f32(i32 35, float %7664, float %7665)  ; FMax(a,b)
  %7671 = call float @dx.op.binary.f32(i32 36, float %7670, float %7666)  ; FMin(a,b)
  %7672 = call float @dx.op.binary.f32(i32 36, float %7664, float %7665)  ; FMin(a,b)
  %7673 = call float @dx.op.binary.f32(i32 35, float %7672, float %7671)  ; FMax(a,b)
  %7674 = call float @dx.op.binary.f32(i32 35, float %7665, float %7666)  ; FMax(a,b)
  %7675 = call float @dx.op.binary.f32(i32 35, float %7664, float %7674)  ; FMax(a,b)
  store float %7669, float* %7592, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %7673, float* %7593, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %7675, float* %7594, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7676 = call float @dx.op.binary.f32(i32 36, float %7662, float %7663)  ; FMin(a,b)
  %7677 = call float @dx.op.binary.f32(i32 36, float %7661, float %7676)  ; FMin(a,b)
  %7678 = call float @dx.op.binary.f32(i32 35, float %7661, float %7662)  ; FMax(a,b)
  %7679 = call float @dx.op.binary.f32(i32 36, float %7678, float %7663)  ; FMin(a,b)
  %7680 = call float @dx.op.binary.f32(i32 36, float %7661, float %7662)  ; FMin(a,b)
  %7681 = call float @dx.op.binary.f32(i32 35, float %7680, float %7679)  ; FMax(a,b)
  %7682 = call float @dx.op.binary.f32(i32 35, float %7662, float %7663)  ; FMax(a,b)
  %7683 = call float @dx.op.binary.f32(i32 35, float %7661, float %7682)  ; FMax(a,b)
  store float %7677, float* %7595, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %7681, float* %7596, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %7683, float* %7597, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7684 = sub nsw i32 3, %7667
  %7685 = icmp sgt i32 %7684, 2
  br i1 %7685, label %7686, label %7724

; <label>:7686                                    ; preds = %7660
  %7687 = icmp eq i32 %7455, 0
  %7688 = fsub fast float %7505, %7589
  %7689 = select i1 %7687, float %7688, float %7589
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.CBufRet.f32 %7690, 1
  %7693 = extractvalue %dx.types.CBufRet.f32 %7690, 2
  %7694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7695 = extractvalue %dx.types.CBufRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.CBufRet.f32 %7694, 1
  %7697 = extractvalue %dx.types.CBufRet.f32 %7694, 2
  %7698 = extractvalue %dx.types.CBufRet.f32 %7694, 3
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 3
  %7701 = call float @dx.op.binary.f32(i32 36, float %7590, float %7700)  ; FMin(a,b)
  %7702 = fmul fast float %7698, %7689
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = fsub fast float %7695, %7691
  %7705 = fsub fast float %7696, %7692
  %7706 = fsub fast float %7697, %7693
  %7707 = fmul fast float %7703, %7704
  %7708 = fmul fast float %7703, %7705
  %7709 = fmul fast float %7703, %7706
  %7710 = fadd fast float %7707, %7691
  %7711 = fadd fast float %7708, %7692
  %7712 = fadd fast float %7709, %7693
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 0
  %7715 = extractvalue %dx.types.CBufRet.f32 %7713, 1
  %7716 = fadd fast float %7715, %7714
  %7717 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7713, 2
  %7719 = extractvalue %dx.types.CBufRet.f32 %7713, 3
  %7720 = fadd fast float %7719, %7718
  %7721 = call float @dx.op.unary.f32(i32 7, float %7720)  ; Saturate(value)
  %7722 = fmul fast float %7717, %7701
  %7723 = fmul fast float %7722, %7721
  br label %7806

; <label>:7724                                    ; preds = %7660
  %7725 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7684
  %7726 = load float, float* %7725, align 4, !tbaa !128, !noalias !130
  %7727 = fcmp fast olt float %7726, %7591
  %7728 = icmp sgt i32 %7667, 0
  %7729 = and i1 %7728, %7727
  br i1 %7729, label %7730, label %7767

; <label>:7730                                    ; preds = %7724
  br label %7731

; <label>:7731                                    ; preds = %7760, %7730
  %7732 = phi float [ %7761, %7760 ], [ %7589, %7730 ]
  %7733 = phi float [ %7762, %7760 ], [ %7590, %7730 ]
  %7734 = phi float [ %7742, %7760 ], [ %7726, %7730 ]
  %7735 = phi i32 [ %7739, %7760 ], [ %7684, %7730 ]
  %7736 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %7735
  %7737 = load float, float* %7736, align 4, !tbaa !128, !noalias !130
  %7738 = icmp slt i32 %7735, 2
  %7739 = add nsw i32 %7735, 1
  %7740 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7739
  %7741 = load float, float* %7740, align 4, !tbaa !128, !noalias !130
  %7742 = select i1 %7738, float %7741, float %7505
  %7743 = call float @dx.op.binary.f32(i32 36, float %7742, float %7737)  ; FMin(a,b)
  %7744 = call float @dx.op.binary.f32(i32 36, float %7591, float %7743)  ; FMin(a,b)
  %7745 = icmp eq i32 %7455, 0
  %7746 = fadd fast float %7744, %7734
  %7747 = fmul fast float %7746, %7436
  %7748 = fadd fast float %7747, %7449
  br i1 %7745, label %7754, label %7749

; <label>:7749                                    ; preds = %7731
  %7750 = fsub fast float %7744, %7734
  %7751 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7750)  ; FMax(a,b)
  %7752 = fmul fast float %7751, %7748
  %7753 = fadd fast float %7752, %7733
  br label %7760

; <label>:7754                                    ; preds = %7731
  %7755 = fsub fast float %7734, %7744
  %7756 = call float @dx.op.unary.f32(i32 6, float %7755)  ; FAbs(value)
  %7757 = fadd fast float %7756, %7732
  %7758 = fmul fast float %7756, %7748
  %7759 = fsub fast float %7733, %7758
  br label %7760

; <label>:7760                                    ; preds = %7754, %7749
  %7761 = phi float [ %7751, %7749 ], [ %7757, %7754 ]
  %7762 = phi float [ %7753, %7749 ], [ %7759, %7754 ]
  %7763 = fcmp fast olt float %7742, %7591
  %7764 = icmp slt i32 %7739, 3
  %7765 = and i1 %7764, %7763
  br i1 %7765, label %7731, label %7766

; <label>:7766                                    ; preds = %7760
  br label %7767

; <label>:7767                                    ; preds = %7766, %7724
  %7768 = phi float [ %7589, %7724 ], [ %7761, %7766 ]
  %7769 = phi float [ %7590, %7724 ], [ %7762, %7766 ]
  %7770 = fsub fast float %7505, %7768
  %7771 = select i1 %7507, float %7768, float %7770
  %7772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7773 = extractvalue %dx.types.CBufRet.f32 %7772, 0
  %7774 = extractvalue %dx.types.CBufRet.f32 %7772, 1
  %7775 = extractvalue %dx.types.CBufRet.f32 %7772, 2
  %7776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7777 = extractvalue %dx.types.CBufRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.CBufRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.CBufRet.f32 %7776, 2
  %7780 = extractvalue %dx.types.CBufRet.f32 %7776, 3
  %7781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7782 = extractvalue %dx.types.CBufRet.f32 %7781, 3
  %7783 = call float @dx.op.binary.f32(i32 36, float %7769, float %7782)  ; FMin(a,b)
  %7784 = fmul fast float %7780, %7771
  %7785 = call float @dx.op.unary.f32(i32 7, float %7784)  ; Saturate(value)
  %7786 = fsub fast float %7777, %7773
  %7787 = fsub fast float %7778, %7774
  %7788 = fsub fast float %7779, %7775
  %7789 = fmul fast float %7785, %7786
  %7790 = fmul fast float %7785, %7787
  %7791 = fmul fast float %7785, %7788
  %7792 = fadd fast float %7789, %7773
  %7793 = fadd fast float %7790, %7774
  %7794 = fadd fast float %7791, %7775
  %7795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7796 = extractvalue %dx.types.CBufRet.f32 %7795, 0
  %7797 = extractvalue %dx.types.CBufRet.f32 %7795, 1
  %7798 = fadd fast float %7797, %7796
  %7799 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7800 = extractvalue %dx.types.CBufRet.f32 %7795, 2
  %7801 = extractvalue %dx.types.CBufRet.f32 %7795, 3
  %7802 = fadd fast float %7801, %7800
  %7803 = call float @dx.op.unary.f32(i32 7, float %7802)  ; Saturate(value)
  %7804 = fmul fast float %7799, %7783
  %7805 = fmul fast float %7804, %7803
  br label %7806

; <label>:7806                                    ; preds = %7767, %7686, %7521, %7503, %7501
  %7807 = phi float [ %7530, %7521 ], [ %7689, %7686 ], [ %7771, %7767 ], [ 0.000000e+00, %7501 ], [ 0.000000e+00, %7503 ]
  %7808 = phi float [ %7564, %7521 ], [ %7723, %7686 ], [ %7805, %7767 ], [ 0.000000e+00, %7501 ], [ 0.000000e+00, %7503 ]
  %7809 = phi float [ %7551, %7521 ], [ %7710, %7686 ], [ %7792, %7767 ], [ 0.000000e+00, %7501 ], [ 0.000000e+00, %7503 ]
  %7810 = phi float [ %7552, %7521 ], [ %7711, %7686 ], [ %7793, %7767 ], [ 0.000000e+00, %7501 ], [ 0.000000e+00, %7503 ]
  %7811 = phi float [ %7553, %7521 ], [ %7712, %7686 ], [ %7794, %7767 ], [ 0.000000e+00, %7501 ], [ 0.000000e+00, %7503 ]
  %7812 = fmul fast float %7444, %7808
  %7813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.f32 %7813, 2
  %7815 = fsub fast float %7451, %7814
  %7816 = fcmp fast olt float %7812, -2.000000e+01
  %7817 = call float @dx.op.unary.f32(i32 21, float %7812)  ; Exp(value)
  %7818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.f32 %7818, 2
  %7820 = extractvalue %dx.types.CBufRet.f32 %7818, 3
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7823 = fmul fast float %7820, %7815
  %7824 = call float @dx.op.unary.f32(i32 7, float %7823)  ; Saturate(value)
  %7825 = fsub fast float 1.000000e+00, %7824
  %7826 = fmul fast float %7436, 5.000000e-01
  %7827 = fadd fast float %7826, 5.000000e-01
  %7828 = call float @dx.op.unary.f32(i32 7, float %7827)  ; Saturate(value)
  %7829 = fsub fast float 1.000000e+00, %7828
  %7830 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7825)  ; FMax(a,b)
  %7831 = fdiv fast float %7829, %7830
  %7832 = fsub fast float %7815, %7393
  %7833 = call float @dx.op.unary.f32(i32 6, float %7832)  ; FAbs(value)
  %7834 = fmul fast float %7833, %7819
  %7835 = call float @dx.op.unary.f32(i32 7, float %7831)  ; Saturate(value)
  %7836 = fsub fast float 1.000000e+00, %7834
  %7837 = fmul fast float %7836, %7835
  %7838 = fadd fast float %7837, %7834
  %7839 = fmul fast float %7822, %7815
  %7840 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7841 = fsub fast float 1.000000e+00, %7838
  %7842 = fmul fast float %7841, %7840
  %7843 = fadd fast float %7842, %7838
  %7844 = call float @dx.op.unary.f32(i32 7, float %7843)  ; Saturate(value)
  %7845 = fadd fast float %7817, -1.000000e+00
  %7846 = select i1 %7816, float -1.000000e+00, float %7845
  %7847 = fmul fast float %7844, %7846
  %7848 = fadd fast float %7847, 1.000000e+00
  %7849 = fsub fast float -0.000000e+00, %7847
  %7850 = fmul fast float %7809, %7849
  %7851 = fmul fast float %7810, %7849
  %7852 = fmul fast float %7811, %7849
  br label %7853

; <label>:7853                                    ; preds = %7806, %7402
  %7854 = phi float [ %7807, %7806 ], [ 0.000000e+00, %7402 ]
  %7855 = phi float [ %7848, %7806 ], [ 1.000000e+00, %7402 ]
  %7856 = phi float [ %7850, %7806 ], [ 0.000000e+00, %7402 ]
  %7857 = phi float [ %7851, %7806 ], [ 0.000000e+00, %7402 ]
  %7858 = phi float [ %7852, %7806 ], [ 0.000000e+00, %7402 ]
  %7859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7860 = extractvalue %dx.types.CBufRet.f32 %7859, 1
  %7861 = fsub fast float 1.000000e+00, %7855
  %7862 = fmul fast float %7861, %7437
  %7863 = fmul fast float %7862, %7860
  %7864 = fsub fast float %7437, %7863
  br i1 %7430, label %7865, label %7894, !dx.controlflow.hints !166

; <label>:7865                                    ; preds = %7853
  %7866 = fmul fast float %7438, %7427
  %7867 = fadd fast float %7866, %7428
  %7868 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7869 = fmul fast float %7409, %7864
  %7870 = fsub fast float -0.000000e+00, %7869
  %7871 = fmul fast float %7410, %7864
  %7872 = fsub fast float -0.000000e+00, %7871
  %7873 = call float @dx.op.unary.f32(i32 21, float %7870)  ; Exp(value)
  %7874 = call float @dx.op.unary.f32(i32 21, float %7872)  ; Exp(value)
  %7875 = call float @dx.op.binary.f32(i32 35, float %7417, float %7873)  ; FMax(a,b)
  %7876 = call float @dx.op.binary.f32(i32 35, float %7417, float %7874)  ; FMax(a,b)
  %7877 = fsub fast float %7876, %7875
  %7878 = fmul fast float %7877, %7868
  %7879 = fadd fast float %7878, %7875
  %7880 = call float @dx.op.unary.f32(i32 7, float %7879)  ; Saturate(value)
  %7881 = fsub fast float %7414, %7419
  %7882 = fsub fast float %7415, %7420
  %7883 = fsub fast float %7416, %7421
  %7884 = fmul fast float %7868, %7881
  %7885 = fmul fast float %7868, %7882
  %7886 = fmul fast float %7868, %7883
  %7887 = fadd fast float %7884, %7419
  %7888 = fadd fast float %7885, %7420
  %7889 = fadd fast float %7886, %7421
  %7890 = fsub fast float 1.000000e+00, %7880
  %7891 = fmul fast float %7890, %7887
  %7892 = fmul fast float %7890, %7888
  %7893 = fmul fast float %7890, %7889
  br label %7953

; <label>:7894                                    ; preds = %7853
  %7895 = fmul fast float %7864, %7426
  %7896 = call float @dx.op.unary.f32(i32 7, float %7895)  ; Saturate(value)
  %7897 = fsub fast float 2.000000e+00, %7896
  %7898 = fmul fast float %7896, 9.921875e-01
  %7899 = fmul fast float %7898, %7897
  %7900 = fadd fast float %7899, 3.906250e-03
  %7901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7900, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = fsub fast float %7896, %7902
  %7904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7903)  ; FMax(a,b)
  %7905 = fmul fast float %7412, %7393
  %7906 = call float @dx.op.unary.f32(i32 6, float %7905)  ; FAbs(value)
  %7907 = fcmp fast ogt float %7906, 0x3EB0C6F7A0000000
  br i1 %7907, label %7908, label %7914, !dx.controlflow.hints !167

; <label>:7908                                    ; preds = %7894
  %7909 = fmul fast float %7905, 0xBFF7154760000000
  %7910 = call float @dx.op.unary.f32(i32 21, float %7909)  ; Exp(value)
  %7911 = fsub fast float 1.000000e+00, %7910
  %7912 = fdiv fast float %7911, %7905
  %7913 = fmul fast float %7912, %7422
  br label %7914

; <label>:7914                                    ; preds = %7908, %7894
  %7915 = phi float [ %7913, %7908 ], [ %7422, %7894 ]
  %7916 = fadd fast float %7915, %7424
  %7917 = fmul fast float %7916, %7904
  %7918 = fmul fast float %7409, %7917
  %7919 = fsub fast float -0.000000e+00, %7918
  %7920 = fmul fast float %7410, %7917
  %7921 = fsub fast float -0.000000e+00, %7920
  %7922 = fmul fast float %7411, %7917
  %7923 = fsub fast float -0.000000e+00, %7922
  %7924 = call float @dx.op.unary.f32(i32 21, float %7919)  ; Exp(value)
  %7925 = call float @dx.op.unary.f32(i32 21, float %7921)  ; Exp(value)
  %7926 = call float @dx.op.unary.f32(i32 21, float %7923)  ; Exp(value)
  %7927 = fmul fast float %7438, %7438
  %7928 = fadd fast float %7927, 1.000000e+00
  %7929 = fmul fast float %7928, 0x3FAE8EC8A0000000
  %7930 = fmul fast float %7929, %7419
  %7931 = fmul fast float %7929, %7420
  %7932 = fmul fast float %7929, %7421
  %7933 = fmul fast float %7438, %7417
  %7934 = fsub fast float 1.000000e+00, %7933
  %7935 = fmul fast float %7417, %7417
  %7936 = fsub fast float 1.000000e+00, %7935
  %7937 = fmul fast float %7936, 0x3FB45F3060000000
  %7938 = fmul fast float %7934, %7934
  %7939 = fdiv fast float 1.000000e+00, %7938
  %7940 = fmul fast float %7937, %7939
  %7941 = fmul fast float %7940, %7414
  %7942 = fmul fast float %7940, %7415
  %7943 = fmul fast float %7940, %7416
  %7944 = fadd fast float %7941, %7930
  %7945 = fadd fast float %7942, %7931
  %7946 = fadd fast float %7943, %7932
  %7947 = fsub fast float 1.000000e+00, %7924
  %7948 = fsub fast float 1.000000e+00, %7925
  %7949 = fsub fast float 1.000000e+00, %7926
  %7950 = fmul fast float %7944, %7947
  %7951 = fmul fast float %7945, %7948
  %7952 = fmul fast float %7946, %7949
  br label %7953

; <label>:7953                                    ; preds = %7914, %7865
  %7954 = phi float [ %7891, %7865 ], [ %7950, %7914 ]
  %7955 = phi float [ %7892, %7865 ], [ %7951, %7914 ]
  %7956 = phi float [ %7893, %7865 ], [ %7952, %7914 ]
  %7957 = phi float [ %7880, %7865 ], [ %7924, %7914 ]
  %7958 = phi float [ %7880, %7865 ], [ %7925, %7914 ]
  %7959 = phi float [ %7880, %7865 ], [ %7926, %7914 ]
  br i1 %7446, label %7960, label %8158, !dx.controlflow.hints !168

; <label>:7960                                    ; preds = %7953
  %7961 = extractvalue %dx.types.CBufRet.f32 %7859, 0
  %7962 = fmul fast float %7961, %7861
  %7963 = fsub fast float %7856, %7954
  %7964 = fsub fast float %7857, %7955
  %7965 = fsub fast float %7858, %7956
  %7966 = fmul fast float %7962, %7963
  %7967 = fmul fast float %7962, %7964
  %7968 = fmul fast float %7962, %7965
  %7969 = fadd fast float %7966, %7954
  %7970 = fadd fast float %7967, %7955
  %7971 = fadd fast float %7968, %7956
  %7972 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7957)  ; FMax(a,b)
  %7973 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7958)  ; FMax(a,b)
  %7974 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7959)  ; FMax(a,b)
  %7975 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7855)  ; FMax(a,b)
  %7976 = call float @dx.op.binary.f32(i32 35, float %7854, float %7864)  ; FMax(a,b)
  %7977 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7976)  ; FMax(a,b)
  %7978 = fdiv fast float %7854, %7977
  %7979 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7980 = fdiv fast float %7864, %7977
  %7981 = call float @dx.op.unary.f32(i32 7, float %7980)  ; Saturate(value)
  %7982 = fcmp fast une float %7975, 1.000000e+00
  br i1 %7982, label %7983, label %7996, !dx.controlflow.hints !169

; <label>:7983                                    ; preds = %7960
  %7984 = call float @dx.op.unary.f32(i32 23, float %7975)  ; Log(value)
  %7985 = fmul fast float %7984, 0x3FE62E4300000000
  %7986 = fmul fast float %7856, %7985
  %7987 = fsub fast float -0.000000e+00, %7986
  %7988 = fmul fast float %7857, %7985
  %7989 = fsub fast float -0.000000e+00, %7988
  %7990 = fmul fast float %7858, %7985
  %7991 = fsub fast float -0.000000e+00, %7990
  %7992 = fsub fast float 1.000000e+00, %7975
  %7993 = fdiv fast float %7987, %7992
  %7994 = fdiv fast float %7989, %7992
  %7995 = fdiv fast float %7991, %7992
  br label %7996

; <label>:7996                                    ; preds = %7983, %7960
  %7997 = phi float [ %7993, %7983 ], [ %7856, %7960 ]
  %7998 = phi float [ %7994, %7983 ], [ %7857, %7960 ]
  %7999 = phi float [ %7995, %7983 ], [ %7858, %7960 ]
  %8000 = phi float [ %7985, %7983 ], [ 0.000000e+00, %7960 ]
  %8001 = fcmp fast une float %7972, 1.000000e+00
  br i1 %8001, label %8002, label %8009, !dx.controlflow.hints !170

; <label>:8002                                    ; preds = %7996
  %8003 = call float @dx.op.unary.f32(i32 23, float %7972)  ; Log(value)
  %8004 = fmul fast float %8003, 0x3FE62E4300000000
  %8005 = fmul fast float %7969, %8004
  %8006 = fsub fast float -0.000000e+00, %8005
  %8007 = fsub fast float 1.000000e+00, %7972
  %8008 = fdiv fast float %8006, %8007
  br label %8009

; <label>:8009                                    ; preds = %8002, %7996
  %8010 = phi float [ %8008, %8002 ], [ %7969, %7996 ]
  %8011 = phi float [ %8004, %8002 ], [ 0.000000e+00, %7996 ]
  %8012 = fcmp fast une float %7973, 1.000000e+00
  br i1 %8012, label %8013, label %8020, !dx.controlflow.hints !170

; <label>:8013                                    ; preds = %8009
  %8014 = call float @dx.op.unary.f32(i32 23, float %7973)  ; Log(value)
  %8015 = fmul fast float %8014, 0x3FE62E4300000000
  %8016 = fmul fast float %7970, %8015
  %8017 = fsub fast float -0.000000e+00, %8016
  %8018 = fsub fast float 1.000000e+00, %7973
  %8019 = fdiv fast float %8017, %8018
  br label %8020

; <label>:8020                                    ; preds = %8013, %8009
  %8021 = phi float [ %8019, %8013 ], [ %7970, %8009 ]
  %8022 = phi float [ %8015, %8013 ], [ 0.000000e+00, %8009 ]
  %8023 = fcmp fast une float %7974, 1.000000e+00
  br i1 %8023, label %8024, label %8031, !dx.controlflow.hints !170

; <label>:8024                                    ; preds = %8020
  %8025 = call float @dx.op.unary.f32(i32 23, float %7974)  ; Log(value)
  %8026 = fmul fast float %8025, 0x3FE62E4300000000
  %8027 = fmul fast float %7971, %8026
  %8028 = fsub fast float -0.000000e+00, %8027
  %8029 = fsub fast float 1.000000e+00, %7974
  %8030 = fdiv fast float %8028, %8029
  br label %8031

; <label>:8031                                    ; preds = %8024, %8020
  %8032 = phi float [ %8030, %8024 ], [ %7971, %8020 ]
  %8033 = phi float [ %8026, %8024 ], [ 0.000000e+00, %8020 ]
  %8034 = fmul fast float %7997, %7981
  %8035 = fmul fast float %7998, %7981
  %8036 = fmul fast float %7999, %7981
  %8037 = fmul fast float %8000, %7981
  %8038 = fmul fast float %8010, %7979
  %8039 = fmul fast float %8021, %7979
  %8040 = fmul fast float %8032, %7979
  %8041 = fmul fast float %8011, %7979
  %8042 = fmul fast float %8022, %7979
  %8043 = fmul fast float %8033, %7979
  %8044 = fadd fast float %8038, %8034
  %8045 = fadd fast float %8039, %8035
  %8046 = fadd fast float %8040, %8036
  %8047 = fadd fast float %8041, %8037
  %8048 = fadd fast float %8042, %8037
  %8049 = fadd fast float %8043, %8037
  %8050 = fcmp fast une float %8047, 0.000000e+00
  br i1 %8050, label %8051, label %8058, !dx.controlflow.hints !171

; <label>:8051                                    ; preds = %8031
  %8052 = fmul fast float %8047, 0x3FF7154760000000
  %8053 = call float @dx.op.unary.f32(i32 21, float %8052)  ; Exp(value)
  %8054 = fsub fast float 1.000000e+00, %8053
  %8055 = fmul fast float %8044, %8054
  %8056 = fsub fast float -0.000000e+00, %8055
  %8057 = fdiv fast float %8056, %8047
  br label %8058

; <label>:8058                                    ; preds = %8051, %8031
  %8059 = phi float [ %8053, %8051 ], [ 1.000000e+00, %8031 ]
  %8060 = phi float [ %8057, %8051 ], [ %8044, %8031 ]
  %8061 = fcmp fast une float %8048, 0.000000e+00
  br i1 %8061, label %8062, label %8069, !dx.controlflow.hints !171

; <label>:8062                                    ; preds = %8058
  %8063 = fmul fast float %8048, 0x3FF7154760000000
  %8064 = call float @dx.op.unary.f32(i32 21, float %8063)  ; Exp(value)
  %8065 = fsub fast float 1.000000e+00, %8064
  %8066 = fmul fast float %8045, %8065
  %8067 = fsub fast float -0.000000e+00, %8066
  %8068 = fdiv fast float %8067, %8048
  br label %8069

; <label>:8069                                    ; preds = %8062, %8058
  %8070 = phi float [ %8064, %8062 ], [ 1.000000e+00, %8058 ]
  %8071 = phi float [ %8068, %8062 ], [ %8045, %8058 ]
  %8072 = fcmp fast une float %8049, 0.000000e+00
  br i1 %8072, label %8073, label %8080, !dx.controlflow.hints !171

; <label>:8073                                    ; preds = %8069
  %8074 = fmul fast float %8049, 0x3FF7154760000000
  %8075 = call float @dx.op.unary.f32(i32 21, float %8074)  ; Exp(value)
  %8076 = fsub fast float 1.000000e+00, %8075
  %8077 = fmul fast float %8046, %8076
  %8078 = fsub fast float -0.000000e+00, %8077
  %8079 = fdiv fast float %8078, %8049
  br label %8080

; <label>:8080                                    ; preds = %8073, %8069
  %8081 = phi float [ %8075, %8073 ], [ 1.000000e+00, %8069 ]
  %8082 = phi float [ %8079, %8073 ], [ %8046, %8069 ]
  %8083 = fcmp fast ogt float %7979, %7981
  br i1 %8083, label %8084, label %8104

; <label>:8084                                    ; preds = %8080
  %8085 = fsub fast float 1.000000e+00, %7981
  %8086 = fmul fast float %7997, %8085
  %8087 = fmul fast float %7998, %8085
  %8088 = fmul fast float %7999, %8085
  %8089 = fmul fast float %8000, %8085
  %8090 = fcmp fast une float %8089, 0.000000e+00
  br i1 %8090, label %8091, label %8142, !dx.controlflow.hints !172

; <label>:8091                                    ; preds = %8084
  %8092 = fmul fast float %8089, 0x3FF7154760000000
  %8093 = call float @dx.op.unary.f32(i32 21, float %8092)  ; Exp(value)
  %8094 = fsub fast float 1.000000e+00, %8093
  %8095 = fmul fast float %8086, %8094
  %8096 = fsub fast float -0.000000e+00, %8095
  %8097 = fmul fast float %8087, %8094
  %8098 = fsub fast float -0.000000e+00, %8097
  %8099 = fmul fast float %8088, %8094
  %8100 = fsub fast float -0.000000e+00, %8099
  %8101 = fdiv fast float %8096, %8089
  %8102 = fdiv fast float %8098, %8089
  %8103 = fdiv fast float %8100, %8089
  br label %8142

; <label>:8104                                    ; preds = %8080
  %8105 = fsub fast float 1.000000e+00, %7979
  %8106 = fmul fast float %8010, %8105
  %8107 = fmul fast float %8021, %8105
  %8108 = fmul fast float %8032, %8105
  %8109 = fmul fast float %8011, %8105
  %8110 = fmul fast float %8022, %8105
  %8111 = fmul fast float %8033, %8105
  %8112 = fcmp fast une float %8109, 0.000000e+00
  br i1 %8112, label %8113, label %8120, !dx.controlflow.hints !171

; <label>:8113                                    ; preds = %8104
  %8114 = fmul fast float %8109, 0x3FF7154760000000
  %8115 = call float @dx.op.unary.f32(i32 21, float %8114)  ; Exp(value)
  %8116 = fsub fast float 1.000000e+00, %8115
  %8117 = fmul fast float %8106, %8116
  %8118 = fsub fast float -0.000000e+00, %8117
  %8119 = fdiv fast float %8118, %8109
  br label %8120

; <label>:8120                                    ; preds = %8113, %8104
  %8121 = phi float [ %8119, %8113 ], [ %8106, %8104 ]
  %8122 = phi float [ %8115, %8113 ], [ 1.000000e+00, %8104 ]
  %8123 = fcmp fast une float %8110, 0.000000e+00
  br i1 %8123, label %8124, label %8131, !dx.controlflow.hints !171

; <label>:8124                                    ; preds = %8120
  %8125 = fmul fast float %8110, 0x3FF7154760000000
  %8126 = call float @dx.op.unary.f32(i32 21, float %8125)  ; Exp(value)
  %8127 = fsub fast float 1.000000e+00, %8126
  %8128 = fmul fast float %8107, %8127
  %8129 = fsub fast float -0.000000e+00, %8128
  %8130 = fdiv fast float %8129, %8110
  br label %8131

; <label>:8131                                    ; preds = %8124, %8120
  %8132 = phi float [ %8130, %8124 ], [ %8107, %8120 ]
  %8133 = phi float [ %8126, %8124 ], [ 1.000000e+00, %8120 ]
  %8134 = fcmp fast une float %8111, 0.000000e+00
  br i1 %8134, label %8135, label %8142, !dx.controlflow.hints !171

; <label>:8135                                    ; preds = %8131
  %8136 = fmul fast float %8111, 0x3FF7154760000000
  %8137 = call float @dx.op.unary.f32(i32 21, float %8136)  ; Exp(value)
  %8138 = fsub fast float 1.000000e+00, %8137
  %8139 = fmul fast float %8108, %8138
  %8140 = fsub fast float -0.000000e+00, %8139
  %8141 = fdiv fast float %8140, %8111
  br label %8142

; <label>:8142                                    ; preds = %8135, %8131, %8091, %8084
  %8143 = phi float [ %8141, %8135 ], [ %8103, %8091 ], [ %8088, %8084 ], [ %8108, %8131 ]
  %8144 = phi float [ %8132, %8135 ], [ %8102, %8091 ], [ %8087, %8084 ], [ %8132, %8131 ]
  %8145 = phi float [ %8121, %8135 ], [ %8101, %8091 ], [ %8086, %8084 ], [ %8121, %8131 ]
  %8146 = phi float [ %8137, %8135 ], [ %8093, %8091 ], [ 1.000000e+00, %8084 ], [ 1.000000e+00, %8131 ]
  %8147 = phi float [ %8133, %8135 ], [ %8093, %8091 ], [ 1.000000e+00, %8084 ], [ %8133, %8131 ]
  %8148 = phi float [ %8122, %8135 ], [ %8093, %8091 ], [ 1.000000e+00, %8084 ], [ %8122, %8131 ]
  %8149 = fmul fast float %8148, %8060
  %8150 = fmul fast float %8147, %8071
  %8151 = fmul fast float %8146, %8082
  %8152 = fadd fast float %8149, %8145
  %8153 = fadd fast float %8150, %8144
  %8154 = fadd fast float %8151, %8143
  %8155 = fmul fast float %8148, %8059
  %8156 = fmul fast float %8147, %8070
  %8157 = fmul fast float %8146, %8081
  br label %8158

; <label>:8158                                    ; preds = %8142, %7953
  %8159 = phi float [ %8157, %8142 ], [ %7959, %7953 ]
  %8160 = phi float [ %8156, %8142 ], [ %7958, %7953 ]
  %8161 = phi float [ %8155, %8142 ], [ %7957, %7953 ]
  %8162 = phi float [ %8154, %8142 ], [ %7956, %7953 ]
  %8163 = phi float [ %8153, %8142 ], [ %7955, %7953 ]
  %8164 = phi float [ %8152, %8142 ], [ %7954, %7953 ]
  %8165 = fmul fast float %8164, %7110
  %8166 = fmul fast float %8163, %7110
  %8167 = fmul fast float %8162, %7110
  %8168 = fmul fast float %8161, %7401
  %8169 = call float @dx.op.dot3.f32(i32 55, float %8161, float %8160, float %8159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8170 = call float @dx.op.dot3.f32(i32 55, float %8165, float %8166, float %8167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8171 = select i1 %253, float %8169, float %8161
  %8172 = select i1 %253, float %8169, float %8160
  %8173 = select i1 %253, float 1.000000e+00, float %8159
  %8174 = select i1 %253, float %8170, float %8165
  %8175 = select i1 %253, float 0.000000e+00, float %8166
  %8176 = select i1 %253, float 0.000000e+00, float %8167
  %8177 = fmul fast float %8171, %7395
  %8178 = fmul fast float %8172, %7396
  %8179 = fmul fast float %8173, %7397
  %8180 = fadd fast float %8177, %8174
  %8181 = fadd fast float %8178, %8175
  %8182 = fadd fast float %8176, %8179
  %8183 = fmul fast float %8171, %7398
  %8184 = fmul fast float %8172, %7399
  %8185 = fmul fast float %8173, %7400
  %8186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.i32 %8186, 0
  %8188 = icmp eq i32 %8187, 0
  br i1 %8188, label %8556, label %8189, !dx.controlflow.hints !173

; <label>:8189                                    ; preds = %8158
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 3
  %8193 = fmul fast float %8191, %111
  %8194 = fmul fast float %8192, %112
  %8195 = fmul fast float %8193, 2.000000e+00
  %8196 = fmul fast float %8194, 2.000000e+00
  %8197 = fsub fast float 1.000000e+00, %8195
  %8198 = fsub fast float 1.000000e+00, %8196
  %8199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.CBufRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.CBufRet.f32 %8199, 2
  %8203 = fmul fast float %8197, %8200
  %8204 = fmul fast float %8197, %8201
  %8205 = fmul fast float %8197, %8202
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 0
  %8208 = extractvalue %dx.types.CBufRet.f32 %8206, 1
  %8209 = extractvalue %dx.types.CBufRet.f32 %8206, 2
  %8210 = fmul fast float %8198, %8207
  %8211 = fmul fast float %8198, %8208
  %8212 = fmul fast float %8198, %8209
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 0
  %8215 = extractvalue %dx.types.CBufRet.f32 %8213, 1
  %8216 = extractvalue %dx.types.CBufRet.f32 %8213, 2
  %8217 = fadd fast float %8210, %8214
  %8218 = fadd fast float %8217, %8203
  %8219 = fadd fast float %8211, %8215
  %8220 = fadd fast float %8219, %8204
  %8221 = fadd fast float %8212, %8216
  %8222 = fadd fast float %8221, %8205
  %8223 = fmul fast float %8218, %7394
  %8224 = fmul fast float %8220, %7394
  %8225 = fmul fast float %8222, %7394
  %8226 = fmul fast float %8223, %8223
  %8227 = fmul fast float %8224, %8224
  %8228 = fadd fast float %8226, %8227
  %8229 = fmul fast float %8225, %8225
  %8230 = fadd fast float %8228, %8229
  %8231 = call float @dx.op.unary.f32(i32 24, float %8230)  ; Sqrt(value)
  %8232 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %8233 = fsub fast float %8231, %8232
  %8234 = extractvalue %dx.types.CBufRet.f32 %7121, 2
  %8235 = fmul fast float %8233, %8234
  %8236 = call float @dx.op.unary.f32(i32 7, float %8235)  ; Saturate(value)
  %8237 = fadd fast float %8236, -5.000000e-01
  %8238 = fmul fast float %8237, 2.000000e+00
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 2
  %8241 = call float @dx.op.binary.f32(i32 36, float %8240, float %8238)  ; FMin(a,b)
  %8242 = fsub fast float -0.000000e+00, %8240
  %8243 = fcmp fast ogt float %8241, %8242
  br i1 %8243, label %8244, label %8556, !dx.controlflow.hints !174

; <label>:8244                                    ; preds = %8189
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 3
  %8247 = fcmp fast ogt float %8246, 0.000000e+00
  br i1 %8247, label %8248, label %8323, !dx.controlflow.hints !175

; <label>:8248                                    ; preds = %8244
  %8249 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8250 = extractvalue %dx.types.Dimensions %8249, 0
  %8251 = sitofp i32 %8250 to float
  %8252 = extractvalue %dx.types.Dimensions %8249, 1
  %8253 = sitofp i32 %8252 to float
  %8254 = fmul fast float %8193, %8251
  %8255 = fmul fast float %8194, %8253
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8258 = fsub fast float -0.000000e+00, %8257
  %8259 = fptoui float %8258 to i32
  %8260 = fptoui float %8254 to i32
  %8261 = fptoui float %8255 to i32
  %8262 = and i32 %8259, 31
  %8263 = lshr i32 %8260, %8262
  %8264 = lshr i32 %8261, %8262
  %8265 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8259, i32 %8263, i32 %8264, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8266 = extractvalue %dx.types.ResRet.f32 %8265, 0
  %8267 = fcmp fast olt float %8266, -1.000000e+00
  %8268 = fcmp fast ogt float %8266, -1.000000e+00
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 1
  %8271 = select i1 %8268, float %8270, float 1.000000e+00
  %8272 = fadd fast float %8266, 1.000000e+00
  %8273 = fmul fast float %8271, %8272
  %8274 = call float @dx.op.unary.f32(i32 6, float %8273)  ; FAbs(value)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8269, 3
  %8276 = fcmp fast oge float %8274, %8275
  %8277 = select i1 %8276, float 0x4197782600000000, float %8274
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.CBufRet.f32 %8278, 1
  %8281 = extractvalue %dx.types.CBufRet.f32 %8278, 2
  %8282 = select i1 %8267, float %8279, float %8200
  %8283 = select i1 %8267, float %8280, float %8201
  %8284 = select i1 %8267, float %8281, float %8202
  %8285 = fmul fast float %8282, %8197
  %8286 = fmul fast float %8283, %8197
  %8287 = fmul fast float %8284, %8197
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8288, 1
  %8291 = extractvalue %dx.types.CBufRet.f32 %8288, 2
  %8292 = select i1 %8267, float %8289, float %8207
  %8293 = select i1 %8267, float %8290, float %8208
  %8294 = select i1 %8267, float %8291, float %8209
  %8295 = fmul fast float %8292, %8198
  %8296 = fmul fast float %8293, %8198
  %8297 = fmul fast float %8294, %8198
  %8298 = fadd fast float %8295, %8285
  %8299 = fadd fast float %8296, %8286
  %8300 = fadd fast float %8297, %8287
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 0
  %8303 = extractvalue %dx.types.CBufRet.f32 %8301, 1
  %8304 = extractvalue %dx.types.CBufRet.f32 %8301, 2
  %8305 = select i1 %8267, float %8302, float %8214
  %8306 = select i1 %8267, float %8303, float %8215
  %8307 = select i1 %8267, float %8304, float %8216
  %8308 = fadd fast float %8298, %8305
  %8309 = fadd fast float %8299, %8306
  %8310 = fadd fast float %8300, %8307
  %8311 = fmul fast float %8308, %8277
  %8312 = fmul fast float %8309, %8277
  %8313 = fmul fast float %8310, %8277
  %8314 = fmul fast float %8311, %8311
  %8315 = fmul fast float %8312, %8312
  %8316 = fadd fast float %8314, %8315
  %8317 = fmul fast float %8313, %8313
  %8318 = fadd fast float %8316, %8317
  %8319 = call float @dx.op.unary.f32(i32 24, float %8318)  ; Sqrt(value)
  %8320 = fsub fast float %8319, %8232
  %8321 = fmul fast float %8320, %8234
  %8322 = call float @dx.op.unary.f32(i32 7, float %8321)  ; Saturate(value)
  br label %8323

; <label>:8323                                    ; preds = %8248, %8244
  %8324 = phi float [ %8322, %8248 ], [ 1.000000e+00, %8244 ]
  %8325 = fmul fast float %8241, 5.000000e-01
  %8326 = fadd fast float %8325, 5.000000e-01
  %8327 = call float @dx.op.unary.f32(i32 22, float %8326)  ; Frc(value)
  %8328 = call float @dx.op.unary.f32(i32 27, float %8327)  ; Round_ni(value)
  %8329 = call float @dx.op.unary.f32(i32 22, float %8327)  ; Frc(value)
  %8330 = fmul fast float %8329, 2.000000e+00
  %8331 = fadd fast float %8330, -1.000000e+00
  %8332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8193, float %8194, float %8328, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8333 = extractvalue %dx.types.ResRet.f32 %8332, 0
  %8334 = extractvalue %dx.types.ResRet.f32 %8332, 1
  %8335 = extractvalue %dx.types.ResRet.f32 %8332, 2
  %8336 = extractvalue %dx.types.ResRet.f32 %8332, 3
  %8337 = fadd fast float %8333, -5.000000e-01
  %8338 = fadd fast float %8335, -5.000000e-01
  %8339 = fmul fast float %8337, 0xBFD5555560000000
  %8340 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8338, float %8339)  ; FMad(a,b,c)
  %8341 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8334, float 0.000000e+00)  ; FMad(a,b,c)
  %8342 = fadd fast float %8341, %8336
  %8343 = fmul fast float %8337, -7.500000e-01
  %8344 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8338, float %8343)  ; FMad(a,b,c)
  %8345 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8334, float 0.000000e+00)  ; FMad(a,b,c)
  %8346 = fadd fast float %8345, %8336
  %8347 = call float @dx.op.binary.f32(i32 35, float %8340, float -1.000000e+00)  ; FMax(a,b)
  %8348 = call float @dx.op.binary.f32(i32 35, float %8342, float -1.000000e+00)  ; FMax(a,b)
  %8349 = call float @dx.op.binary.f32(i32 35, float %8344, float -1.000000e+00)  ; FMax(a,b)
  %8350 = call float @dx.op.binary.f32(i32 35, float %8346, float -1.000000e+00)  ; FMax(a,b)
  %8351 = call float @dx.op.binary.f32(i32 36, float %8347, float 1.000000e+00)  ; FMin(a,b)
  %8352 = call float @dx.op.binary.f32(i32 36, float %8348, float 1.000000e+00)  ; FMin(a,b)
  %8353 = call float @dx.op.binary.f32(i32 36, float %8349, float 1.000000e+00)  ; FMin(a,b)
  %8354 = call float @dx.op.binary.f32(i32 36, float %8350, float 1.000000e+00)  ; FMin(a,b)
  %8355 = fcmp fast olt float %8351, 0x3FEFFF8020000000
  br i1 %8355, label %8356, label %8471, !dx.controlflow.hints !176

; <label>:8356                                    ; preds = %8323
  %8357 = extractvalue %dx.types.CBufRet.f32 %8239, 3
  %8358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.CBufRet.f32 %8358, 1
  %8361 = extractvalue %dx.types.CBufRet.f32 %8358, 2
  %8362 = extractvalue %dx.types.CBufRet.f32 %8358, 3
  %8363 = fsub fast float %8359, %8351
  %8364 = fsub fast float %8360, %8352
  %8365 = fsub fast float %8361, %8353
  %8366 = fsub fast float %8362, %8354
  %8367 = fmul fast float %8363, %8357
  %8368 = fmul fast float %8364, %8357
  %8369 = fmul fast float %8365, %8357
  %8370 = fmul fast float %8366, %8357
  %8371 = fadd fast float %8367, %8351
  %8372 = fadd fast float %8368, %8352
  %8373 = fsub fast float -0.000000e+00, %8372
  %8374 = fadd fast float %8369, %8353
  %8375 = fadd fast float %8370, %8354
  %8376 = fmul fast float %8371, %8371
  %8377 = fsub fast float %8372, %8376
  %8378 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8377)  ; FMax(a,b)
  %8379 = fdiv fast float 1.000000e+00, %8378
  %8380 = fmul fast float %8372, %8371
  %8381 = fsub fast float %8374, %8380
  %8382 = fsub fast float %8331, %8371
  %8383 = fmul fast float %8331, %8331
  %8384 = fsub fast float %8383, %8372
  %8385 = fmul fast float %8382, %8379
  %8386 = fmul fast float %8385, %8381
  %8387 = fsub fast float %8384, %8386
  %8388 = fmul fast float %8372, %8372
  %8389 = fsub fast float %8375, %8388
  %8390 = fmul fast float %8381, %8381
  %8391 = fmul fast float %8390, %8379
  %8392 = fsub fast float %8389, %8391
  %8393 = fdiv fast float %8387, %8392
  %8394 = fmul fast float %8381, %8393
  %8395 = fsub fast float %8382, %8394
  %8396 = fmul fast float %8395, %8379
  %8397 = fmul fast float %8396, %8371
  %8398 = fsub fast float 1.000000e+00, %8397
  %8399 = fmul fast float %8372, %8393
  %8400 = fsub fast float %8398, %8399
  %8401 = fmul fast float %8396, %8396
  %8402 = fmul fast float %8393, 4.000000e+00
  %8403 = fmul fast float %8402, %8400
  %8404 = fsub fast float %8401, %8403
  %8405 = call float @dx.op.unary.f32(i32 24, float %8404)  ; Sqrt(value)
  %8406 = fcmp fast oge float %8396, 0.000000e+00
  %8407 = fsub fast float -0.000000e+00, %8405
  %8408 = select i1 %8406, float %8407, float %8405
  %8409 = fsub fast float %8408, %8396
  %8410 = fdiv fast float %8409, %8393
  %8411 = fdiv fast float %8400, %8409
  %8412 = fmul fast float %8410, 5.000000e-01
  %8413 = fmul fast float %8411, 2.000000e+00
  %8414 = select i1 %8406, float %8412, float %8413
  %8415 = select i1 %8406, float %8413, float %8412
  %8416 = call float @dx.op.binary.f32(i32 35, float %8414, float %8415)  ; FMax(a,b)
  %8417 = call float @dx.op.binary.f32(i32 36, float %8414, float %8415)  ; FMin(a,b)
  %8418 = fcmp fast ogt float %8331, %8417
  br i1 %8418, label %8419, label %8429

; <label>:8419                                    ; preds = %8356
  %8420 = fsub fast float %8331, %8417
  %8421 = fsub fast float %8416, %8417
  %8422 = fmul fast float %8420, %8421
  %8423 = fmul fast float %8416, %8331
  %8424 = fadd fast float %8416, %8331
  %8425 = fmul fast float %8424, %8371
  %8426 = fadd fast float %8423, %8372
  %8427 = fsub fast float %8426, %8425
  %8428 = fdiv fast float %8427, %8422
  br label %8429

; <label>:8429                                    ; preds = %8419, %8356
  %8430 = phi float [ %8428, %8419 ], [ 0.000000e+00, %8356 ]
  %8431 = fcmp fast ogt float %8331, %8416
  %8432 = fsub fast float %8331, %8416
  br i1 %8431, label %8433, label %8443

; <label>:8433                                    ; preds = %8429
  %8434 = fsub fast float %8416, %8417
  %8435 = fmul fast float %8434, %8432
  %8436 = fmul fast float %8417, %8331
  %8437 = fadd fast float %8417, %8331
  %8438 = fmul fast float %8437, %8371
  %8439 = fsub fast float %8373, %8436
  %8440 = fadd fast float %8439, %8438
  %8441 = fdiv fast float %8440, %8435
  %8442 = fadd fast float %8441, %8430
  br label %8443

; <label>:8443                                    ; preds = %8433, %8429
  %8444 = phi float [ %8442, %8433 ], [ %8430, %8429 ]
  %8445 = fsub fast float %8331, %8417
  %8446 = fmul fast float %8445, %8432
  %8447 = fmul fast float %8417, %8416
  %8448 = fadd fast float %8417, %8416
  %8449 = fmul fast float %8448, %8371
  %8450 = fadd fast float %8447, %8372
  %8451 = fsub fast float %8450, %8449
  %8452 = fdiv fast float %8451, %8446
  %8453 = call float @dx.op.unary.f32(i32 7, float %8444)  ; Saturate(value)
  %8454 = fcmp fast oeq float %7122, 0.000000e+00
  %8455 = extractvalue %dx.types.CBufRet.f32 %8239, 0
  %8456 = fcmp fast oeq float %8455, 0.000000e+00
  %8457 = or i1 %8454, %8456
  %8458 = fmul fast float %8455, 2.000000e+00
  %8459 = fadd fast float %8240, %8241
  %8460 = fdiv fast float %8459, %8458
  %8461 = call float @dx.op.unary.f32(i32 7, float %8460)  ; Saturate(value)
  %8462 = fmul fast float %8461, 2.000000e+00
  %8463 = fsub fast float 3.000000e+00, %8462
  %8464 = fmul fast float %8461, %8461
  %8465 = fmul fast float %8464, %8463
  %8466 = select i1 %8457, float 1.000000e+00, float %8465
  %8467 = fmul fast float %8452, %7122
  %8468 = fadd fast float %8453, %8467
  %8469 = call float @dx.op.unary.f32(i32 7, float %8468)  ; Saturate(value)
  %8470 = fmul fast float %8466, %8469
  br label %8471

; <label>:8471                                    ; preds = %8443, %8323
  %8472 = phi float [ %8470, %8443 ], [ 0.000000e+00, %8323 ]
  %8473 = fsub fast float 1.000000e+00, %8472
  %8474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8193, float %8194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8475 = extractvalue %dx.types.ResRet.f32 %8474, 0
  %8476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.i32 %8476, 2
  %8478 = icmp eq i32 %8477, 0
  br i1 %8478, label %8484, label %8479

; <label>:8479                                    ; preds = %8471
  %8480 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  %8481 = fadd fast float %8475, -1.000000e+00
  %8482 = fmul fast float %8480, %8481
  %8483 = fadd fast float %8482, 1.000000e+00
  br label %8484

; <label>:8484                                    ; preds = %8479, %8471
  %8485 = phi float [ %8483, %8479 ], [ %8473, %8471 ]
  br i1 %8247, label %8486, label %8504

; <label>:8486                                    ; preds = %8484
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 1
  %8489 = fsub fast float %8324, %8488
  %8490 = call float @dx.op.unary.f32(i32 7, float %8489)  ; Saturate(value)
  %8491 = fsub fast float %8324, %8246
  %8492 = call float @dx.op.unary.f32(i32 7, float %8491)  ; Saturate(value)
  %8493 = fsub fast float %8490, %8492
  %8494 = fsub fast float %8326, %8492
  %8495 = fdiv fast float %8494, %8493
  %8496 = call float @dx.op.unary.f32(i32 7, float %8495)  ; Saturate(value)
  %8497 = fmul fast float %8496, 2.000000e+00
  %8498 = fsub fast float 3.000000e+00, %8497
  %8499 = fsub fast float %8475, %8485
  %8500 = fmul fast float %8496, %8496
  %8501 = fmul fast float %8500, %8499
  %8502 = fmul fast float %8501, %8498
  %8503 = fadd fast float %8502, %8485
  br label %8504

; <label>:8504                                    ; preds = %8486, %8484
  %8505 = phi float [ %8503, %8486 ], [ %8485, %8484 ]
  %8506 = call float @dx.op.binary.f32(i32 35, float %8475, float %8505)  ; FMax(a,b)
  %8507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.i32 %8507, 2
  %8509 = and i32 %8508, 1
  %8510 = icmp eq i32 %8509, 0
  %8511 = fcmp fast une float %8506, 1.000000e+00
  %8512 = and i1 %8511, %8510
  br i1 %8512, label %8513, label %8532

; <label>:8513                                    ; preds = %8504
  %8514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8193, float %8194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8515 = extractvalue %dx.types.ResRet.f32 %8514, 0
  %8516 = extractvalue %dx.types.ResRet.f32 %8514, 1
  %8517 = extractvalue %dx.types.ResRet.f32 %8514, 2
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 1
  %8520 = fmul fast float %8519, %8515
  %8521 = fmul fast float %8519, %8516
  %8522 = fmul fast float %8519, %8517
  %8523 = fcmp fast ogt float %8475, 0x3FEFFF2E40000000
  %8524 = fsub fast float 1.000000e+00, %8506
  %8525 = fsub fast float 1.000000e+00, %8475
  %8526 = fdiv fast float %8524, %8525
  %8527 = call float @dx.op.unary.f32(i32 7, float %8526)  ; Saturate(value)
  %8528 = select i1 %8523, float 0.000000e+00, float %8527
  %8529 = fmul fast float %8520, %8528
  %8530 = fmul fast float %8521, %8528
  %8531 = fmul fast float %8522, %8528
  br label %8532

; <label>:8532                                    ; preds = %8513, %8504
  %8533 = phi float [ 0.000000e+00, %8504 ], [ %8529, %8513 ]
  %8534 = phi float [ 0.000000e+00, %8504 ], [ %8530, %8513 ]
  %8535 = phi float [ 0.000000e+00, %8504 ], [ %8531, %8513 ]
  %8536 = fmul fast float %8533, %7110
  %8537 = fmul fast float %8534, %7110
  %8538 = fmul fast float %8535, %7110
  %8539 = fmul fast float %8506, %8168
  %8540 = call float @dx.op.dot3.f32(i32 55, float %8506, float %8506, float %8506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8541 = call float @dx.op.dot3.f32(i32 55, float %8536, float %8537, float %8538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8542 = select i1 %253, float %8540, float %8506
  %8543 = select i1 %253, float 1.000000e+00, float %8506
  %8544 = select i1 %253, float %8541, float %8536
  %8545 = select i1 %253, float 0.000000e+00, float %8537
  %8546 = select i1 %253, float 0.000000e+00, float %8538
  %8547 = fmul fast float %8542, %8180
  %8548 = fmul fast float %8542, %8181
  %8549 = fmul fast float %8543, %8182
  %8550 = fadd fast float %8547, %8544
  %8551 = fadd fast float %8548, %8545
  %8552 = fadd fast float %8546, %8549
  %8553 = fmul fast float %8542, %8183
  %8554 = fmul fast float %8542, %8184
  %8555 = fmul fast float %8543, %8185
  br label %8556

; <label>:8556                                    ; preds = %8532, %8189, %8158, %7390
  %8557 = phi float [ %7395, %7390 ], [ %8180, %8158 ], [ %8550, %8532 ], [ %8180, %8189 ]
  %8558 = phi float [ %7396, %7390 ], [ %8181, %8158 ], [ %8551, %8532 ], [ %8181, %8189 ]
  %8559 = phi float [ %7397, %7390 ], [ %8182, %8158 ], [ %8552, %8532 ], [ %8182, %8189 ]
  %8560 = phi float [ %7398, %7390 ], [ %8183, %8158 ], [ %8553, %8532 ], [ %8183, %8189 ]
  %8561 = phi float [ %7399, %7390 ], [ %8184, %8158 ], [ %8554, %8532 ], [ %8184, %8189 ]
  %8562 = phi float [ %7400, %7390 ], [ %8185, %8158 ], [ %8555, %8532 ], [ %8185, %8189 ]
  %8563 = phi float [ %7401, %7390 ], [ %8168, %8158 ], [ %8539, %8532 ], [ %8168, %8189 ]
  %8564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8564, 2
  %8566 = extractvalue %dx.types.CBufRet.f32 %8564, 3
  %8567 = fmul fast float %8565, %111
  %8568 = fmul fast float %8566, %112
  %8569 = call float @dx.op.unary.f32(i32 7, float %8567)  ; Saturate(value)
  %8570 = call float @dx.op.unary.f32(i32 7, float %8568)  ; Saturate(value)
  %8571 = select i1 %7132, i32 2, i32 0
  %8572 = or i32 %8571, 1
  %8573 = uitofp i32 %8572 to float
  %8574 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8569, float %8570, float %8573, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8575 = extractvalue %dx.types.ResRet.f32 %8574, 0
  %8576 = extractvalue %dx.types.ResRet.f32 %8574, 1
  %8577 = extractvalue %dx.types.ResRet.f32 %8574, 2
  %8578 = extractvalue %dx.types.ResRet.f32 %8574, 3
  %8579 = add nuw nsw i32 %8571, 2
  %8580 = uitofp i32 %8579 to float
  %8581 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8569, float %8570, float %8580, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8582 = extractvalue %dx.types.ResRet.f32 %8581, 0
  %8583 = extractvalue %dx.types.ResRet.f32 %8581, 1
  %8584 = extractvalue %dx.types.ResRet.f32 %8581, 2
  %8585 = extractvalue %dx.types.ResRet.f32 %8581, 3
  %8586 = call float @dx.op.binary.f32(i32 35, float %8576, float %8577)  ; FMax(a,b)
  %8587 = call float @dx.op.binary.f32(i32 35, float %8575, float %8586)  ; FMax(a,b)
  %8588 = call float @dx.op.binary.f32(i32 35, float %8587, float %8578)  ; FMax(a,b)
  %8589 = call float @dx.op.binary.f32(i32 36, float %8583, float %8584)  ; FMin(a,b)
  %8590 = call float @dx.op.binary.f32(i32 36, float %8582, float %8589)  ; FMin(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8590, float %8585)  ; FMin(a,b)
  %8592 = fmul fast float %8588, 2.550000e+02
  %8593 = fadd fast float %8592, 0x3F70101020000000
  %8594 = fptoui float %8593 to i32
  %8595 = fmul fast float %8591, 2.550000e+02
  %8596 = fadd fast float %8595, 0x3F70101020000000
  %8597 = fptoui float %8596 to i32
  %8598 = icmp ult i32 %8594, %8597
  br i1 %8598, label %8599, label %8768

; <label>:8599                                    ; preds = %8556
  %8600 = fcmp fast ogt float %101, 9.843750e-01
  %8601 = fadd fast float %7394, -4.000000e+00
  %8602 = select i1 %8600, float -4.000000e+00, float %8601
  %8603 = call float @dx.op.binary.f32(i32 35, float %8602, float 0.000000e+00)  ; FMax(a,b)
  %8604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8605 = extractvalue %dx.types.CBufRet.f32 %8604, 0
  %8606 = fadd fast float %8605, %8603
  %8607 = extractvalue %dx.types.CBufRet.f32 %8604, 2
  %8608 = fmul fast float %8606, %8607
  %8609 = call float @dx.op.unary.f32(i32 23, float %8608)  ; Log(value)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8604, 3
  %8611 = fmul fast float %8610, %8609
  %8612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8613 = extractvalue %dx.types.CBufRet.f32 %8612, 2
  %8614 = fmul fast float %8611, %8613
  %8615 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8616 = uitofp i32 %8594 to float
  %8617 = uitofp i32 %8597 to float
  %8618 = fadd fast float %8616, 5.000000e-01
  %8619 = fadd fast float %8617, 5.000000e-01
  %8620 = fmul fast float %8613, %8618
  %8621 = fmul fast float %8613, %8619
  %8622 = fadd fast float %8620, 0x3F0FFB4800000000
  %8623 = fadd fast float %8621, 0xBF0FFB4800000000
  %8624 = call float @dx.op.binary.f32(i32 35, float %8615, float %8622)  ; FMax(a,b)
  %8625 = call float @dx.op.binary.f32(i32 36, float %8624, float %8623)  ; FMin(a,b)
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 1
  %8628 = extractvalue %dx.types.CBufRet.f32 %8626, 2
  %8629 = extractvalue %dx.types.CBufRet.f32 %8626, 0
  %8630 = select i1 %7132, float %8629, float 0.000000e+00
  %8631 = fmul fast float %8627, %8625
  %8632 = fadd fast float %8630, %8631
  %8633 = fadd fast float %8630, %8628
  %8634 = fsub fast float %8627, %8628
  %8635 = fadd fast float %8634, %8630
  %8636 = call float @dx.op.binary.f32(i32 35, float %8632, float %8633)  ; FMax(a,b)
  %8637 = call float @dx.op.binary.f32(i32 36, float %8636, float %8635)  ; FMin(a,b)
  %8638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8569, float %8570, float %8637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8639 = extractvalue %dx.types.ResRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.ResRet.f32 %8638, 1
  %8641 = extractvalue %dx.types.ResRet.f32 %8638, 2
  %8642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.i32 %8642, 0
  %8644 = extractvalue %dx.types.CBufRet.i32 %8642, 1
  %8645 = uitofp i32 %8643 to float
  %8646 = uitofp i32 %8644 to float
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 1
  %8650 = fmul fast float %8645, %8569
  %8651 = fmul fast float %8646, %8570
  %8652 = fadd fast float %8650, -5.000000e-01
  %8653 = fadd fast float %8651, -5.000000e-01
  %8654 = call float @dx.op.unary.f32(i32 22, float %8652)  ; Frc(value)
  %8655 = call float @dx.op.unary.f32(i32 22, float %8653)  ; Frc(value)
  %8656 = fmul fast float %8654, %8654
  %8657 = fmul fast float %8656, %8654
  %8658 = fsub fast float 3.000000e+00, %8654
  %8659 = fmul fast float %8656, %8658
  %8660 = fmul fast float %8654, 3.000000e+00
  %8661 = fmul fast float %8657, 3.000000e+00
  %8662 = fmul fast float %8656, 6.000000e+00
  %8663 = fsub fast float %8661, %8662
  %8664 = fadd fast float %8663, 4.000000e+00
  %8665 = fmul fast float %8664, 0x3FC5555560000000
  %8666 = fmul fast float %8657, -3.000000e+00
  %8667 = fadd fast float %8656, %8654
  %8668 = fmul fast float %8667, 3.000000e+00
  %8669 = fadd fast float %8666, 1.000000e+00
  %8670 = fadd fast float %8669, %8668
  %8671 = fmul fast float %8657, 0x3FC5555560000000
  %8672 = fmul fast float %8655, %8655
  %8673 = fmul fast float %8672, %8655
  %8674 = fsub fast float 3.000000e+00, %8655
  %8675 = fmul fast float %8672, %8674
  %8676 = fmul fast float %8655, 3.000000e+00
  %8677 = fmul fast float %8673, 3.000000e+00
  %8678 = fmul fast float %8672, 6.000000e+00
  %8679 = fsub fast float %8677, %8678
  %8680 = fadd fast float %8679, 4.000000e+00
  %8681 = fmul fast float %8680, 0x3FC5555560000000
  %8682 = fmul fast float %8673, -3.000000e+00
  %8683 = fadd fast float %8672, %8655
  %8684 = fmul fast float %8683, 3.000000e+00
  %8685 = fadd fast float %8682, 1.000000e+00
  %8686 = fadd fast float %8685, %8684
  %8687 = fmul fast float %8673, 0x3FC5555560000000
  %8688 = fadd fast float %8654, 1.000000e+00
  %8689 = fsub fast float 1.000000e+00, %8660
  %8690 = fadd fast float %8689, %8659
  %8691 = fadd fast float %8690, %8664
  %8692 = fmul fast float %8691, 0x3FC5555560000000
  %8693 = fdiv fast float %8665, %8692
  %8694 = fsub fast float %8688, %8693
  %8695 = fsub fast float 1.000000e+00, %8654
  %8696 = fadd fast float %8670, %8657
  %8697 = fmul fast float %8696, 0x3FC5555560000000
  %8698 = fdiv fast float %8671, %8697
  %8699 = fadd fast float %8695, %8698
  %8700 = fadd fast float %8655, 1.000000e+00
  %8701 = fsub fast float 1.000000e+00, %8676
  %8702 = fadd fast float %8701, %8675
  %8703 = fadd fast float %8702, %8680
  %8704 = fmul fast float %8703, 0x3FC5555560000000
  %8705 = fdiv fast float %8681, %8704
  %8706 = fsub fast float %8700, %8705
  %8707 = fsub fast float 1.000000e+00, %8655
  %8708 = fadd fast float %8686, %8673
  %8709 = fmul fast float %8708, 0x3FC5555560000000
  %8710 = fdiv fast float %8687, %8709
  %8711 = fadd fast float %8710, %8707
  %8712 = fmul fast float %8694, %8648
  %8713 = fsub fast float %8569, %8712
  %8714 = fmul fast float %8699, %8648
  %8715 = fadd fast float %8714, %8569
  %8716 = fmul fast float %8711, %8649
  %8717 = fadd fast float %8716, %8570
  %8718 = fmul fast float %8706, %8649
  %8719 = fsub fast float %8570, %8718
  %8720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8713, float %8719, float %8637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8721 = extractvalue %dx.types.ResRet.f32 %8720, 0
  %8722 = extractvalue %dx.types.ResRet.f32 %8720, 1
  %8723 = extractvalue %dx.types.ResRet.f32 %8720, 2
  %8724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8715, float %8719, float %8637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8725 = extractvalue %dx.types.ResRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.ResRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.ResRet.f32 %8724, 2
  %8728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8713, float %8717, float %8637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8729 = extractvalue %dx.types.ResRet.f32 %8728, 0
  %8730 = extractvalue %dx.types.ResRet.f32 %8728, 1
  %8731 = extractvalue %dx.types.ResRet.f32 %8728, 2
  %8732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8715, float %8717, float %8637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8733 = extractvalue %dx.types.ResRet.f32 %8732, 0
  %8734 = extractvalue %dx.types.ResRet.f32 %8732, 1
  %8735 = extractvalue %dx.types.ResRet.f32 %8732, 2
  %8736 = fsub fast float %8729, %8721
  %8737 = fsub fast float %8730, %8722
  %8738 = fsub fast float %8731, %8723
  %8739 = fmul fast float %8736, %8709
  %8740 = fmul fast float %8737, %8709
  %8741 = fmul fast float %8738, %8709
  %8742 = fadd fast float %8739, %8721
  %8743 = fadd fast float %8740, %8722
  %8744 = fadd fast float %8741, %8723
  %8745 = fsub fast float %8733, %8725
  %8746 = fsub fast float %8734, %8726
  %8747 = fsub fast float %8735, %8727
  %8748 = fmul fast float %8745, %8709
  %8749 = fmul fast float %8746, %8709
  %8750 = fmul fast float %8747, %8709
  %8751 = fsub fast float %8725, %8742
  %8752 = fadd fast float %8751, %8748
  %8753 = fsub fast float %8726, %8743
  %8754 = fadd fast float %8753, %8749
  %8755 = fsub fast float %8727, %8744
  %8756 = fadd fast float %8755, %8750
  %8757 = fmul fast float %8752, %8697
  %8758 = fmul fast float %8754, %8697
  %8759 = fmul fast float %8756, %8697
  %8760 = fadd fast float %8757, %8742
  %8761 = fadd fast float %8758, %8743
  %8762 = fadd fast float %8759, %8744
  %8763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8764 = extractvalue %dx.types.CBufRet.f32 %8763, 1
  %8765 = fmul fast float %8760, %8764
  %8766 = fmul fast float %8761, %8764
  %8767 = fmul fast float %8762, %8764
  br label %8768

; <label>:8768                                    ; preds = %8599, %8556
  %8769 = phi float [ %8639, %8599 ], [ 1.000000e+00, %8556 ]
  %8770 = phi float [ %8640, %8599 ], [ 1.000000e+00, %8556 ]
  %8771 = phi float [ %8641, %8599 ], [ 1.000000e+00, %8556 ]
  %8772 = phi float [ %8765, %8599 ], [ 0.000000e+00, %8556 ]
  %8773 = phi float [ %8766, %8599 ], [ 0.000000e+00, %8556 ]
  %8774 = phi float [ %8767, %8599 ], [ 0.000000e+00, %8556 ]
  %8775 = fmul fast float %8772, %7110
  %8776 = fmul fast float %8773, %7110
  %8777 = fmul fast float %8774, %7110
  %8778 = fmul fast float %8769, %8563
  %8779 = call float @dx.op.dot3.f32(i32 55, float %8769, float %8770, float %8771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8780 = call float @dx.op.dot3.f32(i32 55, float %8775, float %8776, float %8777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8781 = select i1 %253, float %8779, float %8769
  %8782 = select i1 %253, float %8779, float %8770
  %8783 = select i1 %253, float 1.000000e+00, float %8771
  %8784 = select i1 %253, float %8780, float %8775
  %8785 = select i1 %253, float 0.000000e+00, float %8776
  %8786 = select i1 %253, float 0.000000e+00, float %8777
  %8787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8788 = extractvalue %dx.types.CBufRet.i32 %8787, 3
  %8789 = and i32 %8788, 3
  %8790 = icmp ne i32 %8789, 0
  %8791 = and i32 %8788, 4
  %8792 = icmp ne i32 %8791, 0
  %8793 = and i1 %8790, %8792
  %8794 = and i1 %253, %8793
  br i1 %8794, label %8795, label %8801

; <label>:8795                                    ; preds = %8768
  %8796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8797 = extractvalue %dx.types.CBufRet.f32 %8796, 1
  %8798 = fadd fast float %8778, -1.000000e+00
  %8799 = fmul fast float %8797, %8798
  %8800 = fadd fast float %8799, 1.000000e+00
  br label %8801

; <label>:8801                                    ; preds = %8795, %8768
  %8802 = phi float [ %8800, %8795 ], [ %8778, %8768 ]
  %8803 = fadd fast float %8560, %8557
  %8804 = fmul fast float %8781, %8803
  %8805 = fadd fast float %8804, %8784
  %8806 = fadd fast float %8561, %8558
  %8807 = fmul fast float %8782, %8806
  %8808 = fadd fast float %8807, %8785
  %8809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8810 = extractvalue %dx.types.CBufRet.f32 %8809, 0
  br i1 %253, label %8811, label %8827

; <label>:8811                                    ; preds = %8801
  %8812 = fadd fast float %8805, %8808
  %8813 = fmul fast float %8810, %8812
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 3
  %8816 = extractvalue %dx.types.CBufRet.f32 %7114, 1
  %8817 = fsub fast float %7119, %7113
  %8818 = fadd fast float %8817, %7120
  %8819 = fsub fast float %8818, %8816
  %8820 = extractvalue %dx.types.CBufRet.f32 %7114, 2
  %8821 = fmul fast float %8819, %8820
  %8822 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8823 = fsub fast float %8822, %8815
  %8824 = fmul fast float %8823, %8802
  %8825 = fadd fast float %8824, %8815
  %8826 = fmul fast float %8825, %3836
  br label %8853

; <label>:8827                                    ; preds = %8801
  %8828 = fadd fast float %8562, %8559
  %8829 = fmul fast float %8783, %8828
  %8830 = fadd fast float %8829, %8786
  %8831 = fmul fast float %8810, %8805
  %8832 = fmul fast float %8810, %8808
  %8833 = fmul fast float %8810, %8830
  %8834 = call float @dx.op.binary.f32(i32 35, float %8832, float %8833)  ; FMax(a,b)
  %8835 = call float @dx.op.binary.f32(i32 35, float %8831, float %8834)  ; FMax(a,b)
  %8836 = call float @dx.op.binary.f32(i32 35, float %7110, float %7110)  ; FMax(a,b)
  %8837 = call float @dx.op.binary.f32(i32 35, float %7110, float %8836)  ; FMax(a,b)
  %8838 = call float @dx.op.binary.f32(i32 35, float %8835, float %8837)  ; FMax(a,b)
  %8839 = fcmp fast ugt float %8838, 0x3F10000000000000
  br i1 %8839, label %8841, label %8840

; <label>:8840                                    ; preds = %8827
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8841

; <label>:8841                                    ; preds = %8840, %8827
  %8842 = add i32 %56, 356
  %8843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8842, i32 undef)  ; BufferLoad(srv,index,wot)
  %8844 = extractvalue %dx.types.ResRet.i32 %8843, 0
  %8845 = and i32 %8844, 32
  %8846 = icmp eq i32 %8845, 0
  br i1 %8846, label %8853, label %8847

; <label>:8847                                    ; preds = %8841
  %8848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8849 = extractvalue %dx.types.CBufRet.f32 %8848, 0
  %8850 = fmul fast float %8849, 0x3FE99999A0000000
  %8851 = fadd fast float %8849, %8831
  %8852 = fadd fast float %8850, %8833
  br label %8853

; <label>:8853                                    ; preds = %8847, %8841, %8811
  %8854 = phi float [ %3836, %8811 ], [ %7110, %8847 ], [ %7110, %8841 ]
  %8855 = phi float [ %8813, %8811 ], [ %8851, %8847 ], [ %8831, %8841 ]
  %8856 = phi float [ %8826, %8811 ], [ %8832, %8847 ], [ %8832, %8841 ]
  %8857 = phi float [ %3836, %8811 ], [ %8852, %8847 ], [ %8833, %8841 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8858 = call float @dx.op.binary.f32(i32 36, float %8855, float 3.225500e+04)  ; FMin(a,b)
  %8859 = call float @dx.op.binary.f32(i32 36, float %8856, float 3.225500e+04)  ; FMin(a,b)
  %8860 = call float @dx.op.binary.f32(i32 36, float %8857, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8858)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8859)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8860)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8861 = call float @dx.op.binary.f32(i32 36, float %7110, float 3.225500e+04)  ; FMin(a,b)
  %8862 = call float @dx.op.binary.f32(i32 36, float %8854, float 3.225500e+04)  ; FMin(a,b)
  %8863 = call float @dx.op.binary.f32(i32 36, float %8854, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8861)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8862)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8863)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!67 = !{[62 x i32] [i32 60, i32 8, i32 7, i32 7, i32 7, i32 7, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!68 = !{void ()* @ps_main, !"ps_main", !69, !4, !97}
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
!93 = !{!94, !95}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !72, i8 0, i32 1, i8 4, i32 0, i8 0, !73}
!95 = !{i32 1, !"SV_Target", i8 9, i8 16, !96, i8 0, i32 1, i8 4, i32 1, i8 0, !73}
!96 = !{i32 1}
!97 = !{i32 0, i64 16}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !110, !112, !114}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = !{!129, !129, i64 0}
!129 = !{!"float", !105, i64 0}
!130 = !{!131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!131 = distinct !{!131, !132, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!132 = distinct !{!132, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!133 = distinct !{!133, !134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!134 = distinct !{!134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!135 = distinct !{!135, !134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!144 = distinct !{!144, !145, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!145 = distinct !{!145, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"\01?sort@@YAXAIAM00@Z: %c"}
!148 = distinct !{!148, !"\01?sort@@YAXAIAM00@Z"}
!149 = !{!150, !151, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!150 = distinct !{!150, !148, !"\01?sort@@YAXAIAM00@Z: %a"}
!151 = distinct !{!151, !148, !"\01?sort@@YAXAIAM00@Z: %b"}
!152 = !{!151}
!153 = !{!150, !147, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!154 = !{!150}
!155 = !{!151, !147, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!156 = !{!157}
!157 = distinct !{!157, !158, !"\01?sort@@YAXAIAM00@Z: %c"}
!158 = distinct !{!158, !"\01?sort@@YAXAIAM00@Z"}
!159 = !{!160, !161, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!160 = distinct !{!160, !158, !"\01?sort@@YAXAIAM00@Z: %a"}
!161 = distinct !{!161, !158, !"\01?sort@@YAXAIAM00@Z: %b"}
!162 = !{!161}
!163 = !{!160, !157, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!164 = !{!160}
!165 = !{!161, !157, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 2}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}

